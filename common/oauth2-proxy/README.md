# Kubeflow Authentication using Oauth2 Proxy
使用 OAuth2 Proxy 进行 Kubeflow 身份验证

## Istio envoyExtAuthzHttp

This is Istio's recommended approach for External Authorization[^2]. It is not limited to the use
of `oauth2-proxy`[^3] alone. This method is an industry standard, meeting all of Kubeflow's
current and foreseeable authentication needs.
这是 Istio 推荐的外部授权方法. 它并不局限于单独使用 oauth2-proxy. 这种方法是行业标准, 能够满足 Kubeflow 当前及未来所有可预见的身份验证需求.

## Kubeflow Pipelines User and M2M Authentication and Authorization

The Kubeflow Pipelines component relies on the built-in kubernetes functionalities to authenticate and authorize
user requests, specifically the TokenReviews[^4] and SubjectAccessReview[^5].
Kubeflow Pipelines 组件依赖于 Kubernetes 内置功能来验证和授权用户请求, 特别是 TokenReviews 和 SubjectAccessReview.

The best way to describe how it works is to explain with an example. Lets analyze the flow
when a client calls the API to list the KF Pipeline runs:
解释其工作原理的最佳方法是举个例子. 让我们分析一下客户端调用 API 列出 KF Pipeline 运行情况时的流程:

1. api-server starts endpoints in:

    https://github.com/kubeflow/pipelines/blob/2.0.5/backend/src/apiserver/main.go#L95

    Focusing on the pipelines run service:

    1. Register Run Service:

        * https://github.com/kubeflow/pipelines/blob/2.0.5/backend/src/apiserver/main.go#L116

    2. proto RPC definition of ListRunsV1

        * https://github.com/kubeflow/pipelines/blob/2.0.5/backend/api/v1beta1/run.proto#L80

    3. code definition of ListRunsV1

        * https://github.com/kubeflow/pipelines/blob/2.0.5/backend/src/apiserver/server/run_server.go#L226

    4. ListRunsV1 calls internal method `listRuns`

        * https://github.com/kubeflow/pipelines/blob/2.0.5/backend/src/apiserver/server/run_server.go#L188

    5. `listRuns` calls internal method `canAccessRun` which itself calls `s.resourceManager.IsAuthorized`

        * https://github.com/kubeflow/pipelines/blob/2.0.5/backend/src/apiserver/server/run_server.go#L637

    6. `ResourceManager.IsAuthorized` first tries to authenticate over every available authenticator, which are the `TokenReviewAuthenticator` and `HTTPHeaderAuthenticator`

        * here the user identity is either the user email provided directly in the `kubeflow-userid` header or the user identity obtained from provided token

        * https://github.com/kubeflow/pipelines/blob/master/backend/src/apiserver/resource/resource_manager.go#L1667

    7. `TokenReviewAuthenticator.GetUserIdentity` gets the token from `Authorization` header and calls the K8s Auth `authv1.TokenReview` with given token which in return provides `userInfo := review.Status.User`. `GetUserIdentity` return `userInfo.Username` which at this point is the `system:serviceaccount:default:default`.

        * https://github.com/kubeflow/pipelines/blob/2.0.5/backend/src/apiserver/auth/authenticator_token_review.go#L53

    8. Next in `ResourceManager.IsAuthorized` a SubjectAccessReview is created with `r.subjectAccessReviewClient.Create` with arguments specifying RBAC verbs provided in code definition of `RunServer.listRuns`. If the user (sa) is not authorized, an error is thrown

        * https://github.com/kubeflow/pipelines/blob/master/backend/src/apiserver/resource/resource_manager.go#L1703

        * if the identity was obtained from token (service account), the `rolebinding.rbac.authorization.k8s.io/default-editor` provides the RBAC permission

        * if the identity was obtained from header (user), the `rolebinding.rbac.authorization.k8s.io/user-example-com` or similar provides the RBAC permission

2. User calls api to list pipeline runs as unauthorized service account.
用户以未经授权的服务帐户调用 API 来列出管道运行情况.

    * This can be done by running Pod with curl in `default` namespace:
      这可以通过在 default 命名空间中使用 curl 运行 Pod 来实现:

        ```bash
        $ kubectl -n default run -ti --rm curl --image curlimages/curl --command -- sh

        # v1beta1
        ~ $ curl "istio-ingressgateway.istio-system/pipeline/apis/v1beta1/runs?resource_reference_key.type=NAMESPACE&resource_reference_key.id=kubeflow-user-example-com" -H "Authorization: Bearer $(cat /run/secrets/kubernetes.io/serviceaccount/token)"
        {
            "error": "Failed to list v1beta1 runs: Failed to list runs due to authorization error. Check if you have permission to access namespace kubeflow-user-example-com: Failed to access run . Check if you have access to namespace kubeflow-user-example-com: PermissionDenied: User 'system:serviceaccount:default:default' is not authorized with reason:  (request: \u0026ResourceAttributes{Namespace:kubeflow-user-example-com,Verb:list,Group:pipelines.kubeflow.org,Version:v1beta1,Resource:runs,Subresource:,Name:,}): Unauthorized access",
            "code": 7,
            "message": "Failed to list v1beta1 runs: Failed to list runs due to authorization error. Check if you have permission to access namespace kubeflow-user-example-com: Failed to access run . Check if you have access to namespace kubeflow-user-example-com: PermissionDenied: User 'system:serviceaccount:default:default' is not authorized with reason:  (request: \u0026ResourceAttributes{Namespace:kubeflow-user-example-com,Verb:list,Group:pipelines.kubeflow.org,Version:v1beta1,Resource:runs,Subresource:,Name:,}): Unauthorized access",
            "details": [
                {
                    "@type": "type.googleapis.com/google.rpc.Status",
                    "code": 7,
                    "message": "User 'system:serviceaccount:default:default' is not authorized with reason:  (request: \u0026ResourceAttributes{Namespace:kubeflow-user-example-com,Verb:list,Group:pipelines.kubeflow.org,Version:v1beta1,Resource:runs,Subresource:,Name:,})"
                }
            ]
        }

        # v2beta1
        ~ $ curl istio-ingressgateway.istio-system/pipeline/apis/v2beta1/runs?namespace=kubeflow-user-example-com -H "Authorization: Bearer $(cat /run/secrets/kubernetes.io/serviceaccount/token)"
        {
            "error": "Failed to list runs: Failed to list runs due to authorization error. Check if you have permission to access namespace kubeflow-user-example-com: Failed to access run . Check if you have access to namespace kubeflow-user-example-com: PermissionDenied: User 'system:serviceaccount:default:default' is not authorized with reason:  (request: \u0026ResourceAttributes{Namespace:kubeflow-user-example-com,Verb:list,Group:pipelines.kubeflow.org,Version:v1beta1,Resource:runs,Subresource:,Name:,}): Unauthorized access",
            "code": 7,
            "message": "Failed to list runs: Failed to list runs due to authorization error. Check if you have permission to access namespace kubeflow-user-example-com: Failed to access run . Check if you have access to namespace kubeflow-user-example-com: PermissionDenied: User 'system:serviceaccount:default:default' is not authorized with reason:  (request: \u0026ResourceAttributes{Namespace:kubeflow-user-example-com,Verb:list,Group:pipelines.kubeflow.org,Version:v1beta1,Resource:runs,Subresource:,Name:,}): Unauthorized access",
            "details": [
                {
                    "@type": "type.googleapis.com/google.rpc.Status",
                    "code": 7,
                    "message": "User 'system:serviceaccount:default:default' is not authorized with reason:  (request: \u0026ResourceAttributes{Namespace:kubeflow-user-example-com,Verb:list,Group:pipelines.kubeflow.org,Version:v1beta1,Resource:runs,Subresource:,Name:,})"
                }
            ]
        }

        ```

3. User calls api to list pipeline runs as authorized service account.
用户以授权服务帐户身份调用 API 列出管道运行情况.

    * This can be done by running Pod with curl in `kubeflow-user-example-com` namespace specifying correct service account:
      这可以通过在 kubeflow-user-example-com 命名空间中使用 curl 命令运行 Pod 并指定正确的服务帐户来实现:

        ```bash
        $ kubectl -n kubeflow-user-example-com run -ti --rm curl --image curlimages/curl --command --overrides='{"spec": {"serviceAccountName": "default-editor"}}' -- sh

        # v1beta1
        ~ $ curl "istio-ingressgateway.istio-system/pipeline/apis/v1beta1/runs?resource_reference_key.type=NAMESPACE&resource_reference_key.id=kubeflow-user-example-com" -H "Authorization: Bearer $(cat /run/secrets/kubernetes.io/serviceaccount/token)"
        {}  # empty response which is fine because no pipeline runs exist

        # v2beta1
        ~ $ curl istio-ingressgateway.istio-system/pipeline/apis/v2beta1/runs?namespace=kubeflow-user-example-com -H "Authorization: Bearer $(cat /run/secrets/kubernetes.io/serviceaccount/token)"
        {}  # empty response which is fine because no pipeline runs exist

        ```

### Authentication and Authorization analysis diagram for Kubeflow Pipelines
Kubeflow Pipelines 的身份验证和授权分析图

![Kubeflow Auth Diagram](./components/kubeflow_auth_diagram.svg)

### Change the default authentication from "Dex + Oauth2-proxy" to "Oauth2-proxy" only
将默认身份验证方式从"Dex + Oauth2-proxy"更改为"仅 Oauth2-proxy"

The authentication in Kubeflow evolved over time and we dropped envoyfilters and oidc-authservice in favor of RequestAuthentication and Oauth2-proxy in Kubeflow 1.9.
Kubeflow 的身份认证机制历经演进, 在 Kubeflow 1.9 版本中, 我们弃用了 EnvoyFilter 和 oidc-authservice, 转而采用了 RequestAuthentication 和 OAuth2-Proxy.

![auth-flow](components/oauth2-flow.svg)

You can adjust OAuth2 Proxy to directly connect to your own IDP(Identity Provider) suchg as GCP, [AWS](https://docs.aws.amazon.com/cognito/latest/developerguide/federation-endpoints-oauth-grants.html), Azure etc:
您可以调整 OAuth2 代理, 使其直接连接到您自己的身份提供商 (IDP), 例如 GCP、AWS、Azure 等:

1. Create an application on your IdP (purple line)
   在您的身份提供商 (IdP) 上创建应用程序(紫色线)

2. Change your [OAuth2 Proxy issuer](https://github.com/kubeflow/manifests/blob/35539f162ea7fafc8c5035d8df0d8d8cf5a9d327/common/oauth2-proxy/base/oauth2-proxy-config.yaml#L10) to your IdP. Of course never ever directly, but with kustomize overlays and components.
   将您的 OAuth2 代理颁发者更改为您的身份提供商 (IdP). 当然, 绝对不能直接更改, 而是通过 kustomize 覆盖层和组件来实现.

Here is an example of patching oauth2-proxy to connect directly to Azure IDP and skip Dex.
This is enterprise integration so feel free to hire consultants or pay for commercial distributions if you need more help.
For example Azure returns rather large headers compared to other IDPs, so maybe you need to annotate the nginx-ingress to support that.
这里提供一个修改 oauth2-proxy 以直接连接到 Azure IDP 并绕过 Dex 的示例. 这是企业级集成, 如果您需要更多帮助, 请随时聘请顾问或购买商业发行版. 例如, 与其他 IDP 相比, Azure 返回的标头相当大, 因此您可能需要对 nginx-ingress 进行注解以支持这一点.


```yaml
# based on https://github.com/kubeflow/manifests/blob/master/common/oauth2-proxy/base/oauth2_proxy.cfg
# and https://oauth2-proxy.github.io/oauth2-proxy/configuration/providers/azure/
apiVersion: v1
kind: ConfigMap
metadata:
  name: oauth2-proxy
  namespace: oauth2-proxy
data:
  oauth2_proxy.cfg: |
    provider = "oidc"
    oidc_issuer_url = "https://login.microsoftonline.com/$MY_TENANT/v2.0"
    scope = "openid email offline_access"  # removed groups and profile to decrease the size and added offline_access to enable refresh tokens
    email_domains = [ "*" ]

    # serve a static HTTP 200 upstream on for authentication success
    # we are using oauth2-proxy as an ExtAuthz to "check" each request, not pass it on
    upstreams = [ "static://200" ]

    # skip authentication for these paths
    skip_auth_routes = [
      "^/dex/",
    ]

    # requests to paths matching these regex patterns will receive a 401 Unauthorized response
    # when not authenticated, instead of being redirected to the login page with a 302,
    # this prevents background requests being redirected to the login page,
    # and the accumulation of CSRF cookies
    api_routes = [
      # Generic
      # NOTE: included because most background requests contain these paths
      "/api/",
      "/apis/",

      # Kubeflow Pipelines
      # NOTE: included because KFP UI makes MANY background requests to these paths but because they are
      #       not `application/json` requests, oauth2-proxy will redirect them to the login page
      "^/ml_metadata",
    ]

    skip_provider_button = true
    set_authorization_header = true
    set_xauthrequest = true
    cookie_name = "oauth2_proxy_kubeflow"
    cookie_expire = "24h"
    cookie_refresh = "59m" # This improves the user experience a lot
    redirect_url = "https://$MY_PUBLIC_KUBEFLOW_DOMAIN/oauth2/callback"
    relative_redirect_url = false
```

3. In the istio-system namespace is a RequestAuthentication resource. You need to change its issuer to your own IdP, or even better create an additional one.
在 istio-system 命名空间中有一个 RequestAuthentication 资源. 您需要将其颁发者更改为您自己的身份提供商 (IdP), 或者最好创建一个额外的身份提供商.

```yaml
apiVersion: security.istio.io/v1beta1
kind: RequestAuthentication
metadata:
  name: azure-aad-requestauthentication
  namespace: istio-system
spec:
  # we only apply to the ingress-gateway because:
  #  - there is no need to verify the same tokens at each sidecar
  #  - having no selector will apply to the RequestAuthentication to ALL
  #    Pods in the mesh, even ones which are not part of Kubeflow
  # 我们仅将此配置应用于 Ingress Gateway, 原因如下:
  #  - 无需在每个 Sidecar 上重复验证相同的令牌
  #  - 若不指定选择器(selector), 该 RequestAuthentication 规则将应用于服务网格内的所有 Pod,
  #    甚至包括那些不属于 Kubeflow 的 Pod
  selector:
    matchLabels:
      app: istio-ingressgateway

  jwtRules:
  - issuer: https://login.microsoftonline.com/$MY_TENANT/v2.0

    # `forwardOriginalToken` is not strictly required to be true.
    # there are pros and cons to each value:
    #  - true: the original token is forwarded to the destination service
    #          which raises the risk of the token leaking
    #  - false: the original token is stripped from the request
    #           which will prevent the destination service from
    #           verifying the token (possibly with its own RequestAuthentication)
    # `forwardOriginalToken` 并非严格要求必须设置为 `true`.
    # 每种取值各有利弊:
    #  - `true`: 原始令牌会被转发至目标服务, 但这会增加令牌泄露的风险.
    #  - `false`: 原始令牌会被从请求中移除, 这将导致目标服务无法对该令牌进行验证(例如通过其自身的 `RequestAuthentication` 规则).
    forwardOriginalToken: true

    # This will unpack the JWTs issued by Dex or other IDPs into the expected headers.
    # It is applied to BOTH the m2m tokens from outside the cluster (which skip
    # oauth2-proxy because they already have a dex JWT), AND user requests which were
    # authenticated by oauth2-proxy (which injected a dex JWT).
    # 此配置会将由 Dex 或其他身份提供商(IDP)签发的 JWT 解包, 并将其注入到预期的 HTTP 标头中.
    # 该规则同时适用于两类流量: 一是来自集群外部的 M2M(机器对机器)令牌流量(此类流量因已包含 Dex JWT 而绕过了 oauth2-proxy);
    # 二是经由 oauth2-proxy 认证过的用户请求(此类请求已被 oauth2-proxy 注入了 Dex JWT).
    outputClaimToHeaders:
    - header: kubeflow-userid
      claim: email
    - header: kubeflow-groups
      claim: groups

    # We explicitly set `fromHeaders` to ensure that the JWT is only extracted from the `Authorization` header.
    # This is because we exclude requests that have an `Authorization` header from oauth2-proxy.
    # 我们显式设置 `fromHeaders`, 以确保 JWT 仅从 `Authorization` 标头中提取.
    # 这是因为我们已将包含 `Authorization` 标头的请求排除在 oauth2-proxy 的处理范围之外.
    fromHeaders:
    - name: Authorization
      prefix: "Bearer "
```

You can also add more RequestAuthentication to support other issuers as for example for M2M access from github actions as explained in the root level Readme.md.
This feature is useful when you need to integrate Kubeflow with your current CI/CD platform (GitHub Actions, Jenkins) via machine-to-machine authentication.
The following is an example for obtaining and using a JWT token From your IDP with Python, but you can also just take a look at our CI/CD test that uses simple Kubernetes serviceaccount tokens to access KFP, Jupyterlabs etc. from GitHub Actions.
您还可以添加更多 RequestAuthentication 以支持其他颁发者, 例如, 如根目录 Readme.md 中所述, 用于从 GitHub Actions 进行 M2M 访问. 当您需要通过机器对机器身份验证将 Kubeflow 与当前的 CI/CD 平台(GitHub Actions、Jenkins)集成时, 此功能非常有用. 以下示例展示了如何使用 Python 从身份提供商 (IDP) 获取和使用 JWT 令牌, 您也可以查看我们的 CI/CD 测试, 该测试使用简单的 Kubernetes 服务帐户令牌从 GitHub Actions 访问 KFP、JupyterLabs 等.

```python
import requests
token_url = "https://your-idp.com/oauth/token"
client_id = "YOUR_CLIENT_ID"
client_secret = "YOUR_CLIENT_SECRET"
username = "YOUR_USERNAME"
password = "YOUR_PASSWORD"
# request header
headers = {
    "Content-Type": "application/x-www-form-urlencoded"
}
data = {
    "grant_type": "password",
    "client_id": client_id,
    "client_secret": client_secret,
    "username": username,
    "password": password,
    "scope": "openid profile email"  #change your scope
}
response = requests.post(token_url, headers=headers, data=data)
TOKEN = response.json()['access_token']
```

```python
import kfp
kubeflow_host="https://your_host"
pipeline_host = kubeflow_host + "/pipeline"
client = kfp.Client(host=pipeline_host, existing_token=TOKEN)
print(client.list_runs(namespace="your-profile-name"))
```

## Known Issues:

Some openidc providers such as Azure provide too large JWTs / Cookies that exceed the limit of most GRPC and gunicorn web application deployments in Kubeflow.
If removing the groups claim in oauth2-proxy is not enough then you can add an envrionment variable to all web applications
某些 OpenIDC 提供商(例如 Azure)提供的 JWT/Cookie 过大, 超过了 Kubeflow 中大多数 gRPC 和 Gunicorn Web 应用程序部署的限制. 如果移除 oauth2-proxy 中的 groups 声明还不够, 您可以向所有 Web 应用程序添加一个环境变量.

```yaml
apiVersion: apps/v1
kind: Deployment
metadata:
  name: kserve-models-web-app
  namespace: kubeflow
spec:
  template:
    spec:
      containers:
        - name: kserve-models-web-app   # repeat for all other *-web-app-(deployment)
          env:
            - name: GUNICORN_CMD_ARGS
              value: --limit-request-field_size 32000
```

and modify the KFP GRPC server via
并通过以下方式修改 KFP GRPC 服务器

```yaml
- path: patches/metadata-grpc-virtualservice-patch.yaml
  target:
    kind: VirtualService
    name: metadata-grpc
    namespace: kubeflow

# patches/metadata-grpc-virtualservice-patch.yaml
# Remove the oauth2-proxy cookie that violates the maximum metadata size for a GRPC request
- op: add
  path: /spec/http/0/route/0/headers
  value:
    request:
      remove:
        - Cookie
```

to fix `received initial metadata size exceeds limit`.

## Kubeflow Notebooks User and M2M Authentication and Authorization

The underlying mechanism is the same as in Kubeflow Pipelines.
其底层机制与 Kubeflow Pipelines 相同.

Similarly, to explain how it works, let's analyze the code step by step, starting from the api route definition
for listing notebooks:
同样地, 为了解释它的工作原理, 让我们从列出笔记本的 API 路由定义开始, 逐步分析代码:

* list notebooks api route definition

    * https://github.com/kubeflow/kubeflow/blob/v1.8.0/components/crud-web-apps/jupyter/backend/apps/common/routes/get.py#L53

    * this calls `crud_backend/api/notebook.py::list_notebooks`

* `crud_backend/api/notebook.py::list_notebooks` calls `authz.ensure_authorized`

    * https://github.com/kubeflow/kubeflow/blob/v1.8.0/components/crud-web-apps/common/backend/kubeflow/kubeflow/crud_backend/api/notebook.py#L24

* `crud_backend/authz.py::ensure_authorized` calls `crud_backend/authn.py::get_username`

    * https://github.com/kubeflow/kubeflow/blob/v1.8.0/components/crud-web-apps/common/backend/kubeflow/kubeflow/crud_backend/authz.py#L101

    * https://github.com/kubeflow/kubeflow/blob/v1.8.0/components/crud-web-apps/common/backend/kubeflow/kubeflow/crud_backend/authn.py#L12

    * `crud_backend/authn.py::get_username` gets the user id from userid header (email or sa in format `system:serviceaccount:kubeflowusernamespace:default-editor`)

* `crud_backend/authz.py::ensure_authorized` calls `crud_backend/authz.py::is_authorized`

    * https://github.com/kubeflow/kubeflow/blob/v1.8.0/components/crud-web-apps/common/backend/kubeflow/kubeflow/crud_backend/authz.py#L46

    * this calls `create_subject_access_review` which uses the same mechanism as pipelines with `r.subjectAccessReviewClient.Create`

## KServe Authentication

The analysis of KServe auth capabilities suggests that while it's possible to limit access to only authenticated agents,
there might be some improvements required to enable access only to authorized agents.
对 KServe 身份验证功能的分析表明, 虽然可以限制只有经过身份验证的代理才能访问, 但要实现只有授权代理才能访问, 可能还需要进行一些改进.

This is based on the following:

1. KServe Controller Manager patch integrating kube-rbac-proxy[^6].

    This suggests the kserve **might** use the same mechanism based on `SubjectAccessReviews`. Having a look at the kubeflow/manifests I see it's not enabled.

2. Search through the docs and code:

    * https://github.com/kserve/kserve/tree/v0.12.0/docs/samples/istio-dex

    * https://github.com/kserve/kserve/tree/v0.12.0/docs/samples/gcp-iap

    The docs above mention that while it's possible to enable authentication, authorization is more complicated and probably we need to add `AuthorizationPolicy`

    > create an [Istio AuthorizationPolicy](https://istio.io/latest/docs/reference/config/security/authorization-policy/) to grant access to the pods or disable it

    Most probably some work is needed to enable authorized access to kserve models.

## Links

[^1]: [Envoy Filter](https://istio.io/latest/docs/reference/config/networking/envoy-filter/)
[^2]: [External Authorization](https://istio.io/latest/docs/tasks/security/authorization/authz-custom/)
[^3]: [oauth2-proxy](https://github.com/oauth2-proxy/oauth2-proxy)
[^4]: [Kubernetes TokenReview](https://kubernetes.io/docs/reference/kubernetes-api/authentication-resources/token-review-v1/)
[^5]: [Kubernetes SubjectAccessReview](https://kubernetes.io/docs/reference/kubernetes-api/authorization-resources/subject-access-review-v3/)
[^6]: [Kube RBAC Proxy](https://github.com/brancz/kube-rbac-proxy)
