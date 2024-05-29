## 项目地址

https://github.com/arrikto/oidc-authservice

## 使用的提交

https://github.com/arrikto/oidc-authservice/tree/28c59ef296d2bc1e472e7d8472edbd9b53f4f124

--------------------------------------------------------------------------------------------

```bash
configmap
oidc-authservice-parameters

secret
oidc-authservice-client

service
authservice

persistentvolumeclaim
authservice-pvc

statefulset.apps
authservice

envoyfilter.networking.istio.io
authn-filter

```

# 登录过程

```
http://192.168.73.185:32069/ ->

http://192.168.73.185:32000/dex/auth?
  client_id=kubeflow-oidc-authservice
  &redirect_uri=http%3A%2F%2F192.168.73.185%3A32069%2Flogin%2Foidc
  &response_type=code
  &scope=profile+email+groups+openid
  &state=MTcxNjM1NDYxN3xFd3dBRUVGWFdETTVTVlpWVjFOUU1rNWpTR009fOKd2ANHu_1M3sVkJuQ6s7M28ZP62vlJWqZks6ftXCvE

-----------------------------------------------------------------------------------------

http://192.168.73.185:32000/dex/auth?client_id=kubeflow-oidc-authservice&redirect_uri=http%3A%2F%2F192.168.73.185%3A32069%2Flogin%2Foidc&response_type=code&scope=profile+email+groups+openid&state=MTcxNjM1NDYxN3xFd3dBRUVGWFdETTVTVlpWVjFOUU1rNWpTR009fOKd2ANHu_1M3sVkJuQ6s7M28ZP62vlJWqZks6ftXCvE ->

http://192.168.73.185:32000/dex/auth/local?
  client_id=kubeflow-oidc-authservice
  &redirect_uri=http%3A%2F%2F192.168.73.185%3A32069%2Flogin%2Foidc
  &response_type=code
  &scope=profile+email+groups+openid
  &state=MTcxNjM1NDYxN3xFd3dBRUVGWFdETTVTVlpWVjFOUU1rNWpTR009fOKd2ANHu_1M3sVkJuQ6s7M28ZP62vlJWqZks6ftXCvE

-----------------------------------------------------------------------------------------

http://192.168.73.185:32000/dex/auth/local?
  client_id=kubeflow-oidc-authservice
  &redirect_uri=http%3A%2F%2F192.168.73.185%3A32069%2Flogin%2Foidc
  &response_type=code
  &scope=profile+email+groups+openid
  &state=MTcxNjM1NDYxN3xFd3dBRUVGWFdETTVTVlpWVjFOUU1rNWpTR009fOKd2ANHu_1M3sVkJuQ6s7M28ZP62vlJWqZks6ftXCvE ->

http://192.168.73.185:32000/dex/auth/local/login?back=&state=jz7ozw35obhkrql4lcknc2cdb

-----------------------------------------------------------------------------------------

http://192.168.73.185:32000/dex/auth/local/login?back=&state=jz7ozw35obhkrql4lcknc2cdb

-----------------------------------------------------------------------------------------

http://192.168.73.185:32000/dex/auth/local/login?back=&state=jz7ozw35obhkrql4lcknc2cdb

POST /dex/auth/local/login?back=&state=jz7ozw35obhkrql4lcknc2cdb HTTP/1.1
Accept: text/html,application/xhtml+xml,application/xml;q=0.9,image/avif,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.7
Accept-Encoding: gzip, deflate
Accept-Language: zh-CN,zh;q=0.9,en;q=0.8
Cache-Control: max-age=0
Connection: keep-alive
Content-Length: 42
Content-Type: application/x-www-form-urlencoded
Host: 192.168.73.185:32000
Origin: http://192.168.73.185:32000
Referer: http://192.168.73.185:32000/dex/auth/local/login?back=&state=jz7ozw35obhkrql4lcknc2cdb
Upgrade-Insecure-Requests: 1
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36

back: 
state: jz7ozw35obhkrql4lcknc2cdb
login: user@example.com
password: 12341234

HTTP/1.1 303 See Other
Location: /dex/approval?req=jz7ozw35obhkrql4lcknc2cdb
Date: Wed, 22 May 2024 05:16:28 GMT
Content-Length: 0

-----------------------------------------------------------------------------------------

http://192.168.73.185:32000/dex/approval?req=jz7ozw35obhkrql4lcknc2cdb

GET /dex/approval?req=jz7ozw35obhkrql4lcknc2cdb HTTP/1.1
Accept: text/html,application/xhtml+xml,application/xml;q=0.9,image/avif,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.7
Accept-Encoding: gzip, deflate
Accept-Language: zh-CN,zh;q=0.9,en;q=0.8
Cache-Control: max-age=0
Connection: keep-alive
Host: 192.168.73.185:32000
Referer: http://192.168.73.185:32000/dex/auth/local/login?back=&state=jz7ozw35obhkrql4lcknc2cdb
Upgrade-Insecure-Requests: 1
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36

HTTP/1.1 303 See Other
Content-Type: text/html; charset=utf-8
Location: http://192.168.73.185:32069/login/oidc?code=nzqpueo63cpwwxxnap3sa5j6f&state=MTcxNjM1NDYxN3xFd3dBRUVGWFdETTVTVlpWVjFOUU1rNWpTR009fOKd2ANHu_1M3sVkJuQ6s7M28ZP62vlJWqZks6ftXCvE
Date: Wed, 22 May 2024 05:16:28 GMT
Content-Length: 203

-----------------------------------------------------------------------------------------

http://192.168.73.185:32069/login/oidc?code=nzqpueo63cpwwxxnap3sa5j6f&state=MTcxNjM1NDYxN3xFd3dBRUVGWFdETTVTVlpWVjFOUU1rNWpTR009fOKd2ANHu_1M3sVkJuQ6s7M28ZP62vlJWqZks6ftXCvE

GET /login/oidc?code=nzqpueo63cpwwxxnap3sa5j6f&state=MTcxNjM1NDYxN3xFd3dBRUVGWFdETTVTVlpWVjFOUU1rNWpTR009fOKd2ANHu_1M3sVkJuQ6s7M28ZP62vlJWqZks6ftXCvE HTTP/1.1
Accept: text/html,application/xhtml+xml,application/xml;q=0.9,image/avif,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.7
Accept-Encoding: gzip, deflate
Accept-Language: zh-CN,zh;q=0.9,en;q=0.8
Cache-Control: max-age=0
Connection: keep-alive
Host: 192.168.73.185:32069
Referer: http://192.168.73.185:32000/
Upgrade-Insecure-Requests: 1
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36

HTTP/1.1 302 Found
Content-Type: text/html; charset=utf-8
Location: /
Set-Cookie: authservice_session=MTcxNjM1NDk4OHxOd3dBTkZOTVNsbzFSMDlHTkVaYVZGTllVRTFLUlRKR1IxZFhUbFZIVERWQldWbFdSVk5RTlZSUVFsSmFRa2hXVUVaS1NsTkZUa0U9fKMMCM6NeeMNOJyxjrNVU8YAZ7YEOKJcEm-W-T81W94I; Path=/; Expires=Thu, 23 May 2024 05:16:28 GMT; Max-Age=86400
Date: Wed, 22 May 2024 05:16:28 GMT
Content-Length: 24

-----------------------------------------------------------------------------------------

http://192.168.73.185:32069/

GET / HTTP/1.1
Accept: text/html,application/xhtml+xml,application/xml;q=0.9,image/avif,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.7
Accept-Encoding: gzip, deflate
Accept-Language: zh-CN,zh;q=0.9,en;q=0.8
Cache-Control: max-age=0
Connection: keep-alive
Cookie: authservice_session=MTcxNjM1NDk4OHxOd3dBTkZOTVNsbzFSMDlHTkVaYVZGTllVRTFLUlRKR1IxZFhUbFZIVERWQldWbFdSVk5RTlZSUVFsSmFRa2hXVUVaS1NsTkZUa0U9fKMMCM6NeeMNOJyxjrNVU8YAZ7YEOKJcEm-W-T81W94I
Host: 192.168.73.185:32069
Referer: http://192.168.73.185:32000/
Upgrade-Insecure-Requests: 1
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36

HTTP/1.1 200 OK
Kubeflow-Userid: user@example.com
Kubeflow-Userid-Token: eyJhbGciOiJSUzI1NiIsImtpZCI6ImVmM2UzMTI5ODA0NWY2NmJiMWQxN2Y1ZjQ0NGQwYTlkZTE2Y2FkMDIifQ.eyJpc3MiOiJodHRwOi8vZGV4LmF1dGguc3ZjLmNsdXN0ZXIubG9jYWw6NTU1Ni9kZXgiLCJzdWIiOiJDZzR4TlRnME1URTROVFkwTVRjNE5CSUZiRzlqWVd3IiwiYXVkIjoia3ViZWZsb3ctb2lkYy1hdXRoc2VydmljZSIsImV4cCI6MTcxNjQ0MTM4OCwiaWF0IjoxNzE2MzU0OTg4LCJhdF9oYXNoIjoiUTRvMDl5ZWhmS2F3R1dVN0swUDBNdyIsImNfaGFzaCI6IlVzTlhJTzVLMWhBSmJaNUx6ZjVLN1EiLCJlbWFpbCI6InVzZXJAZXhhbXBsZS5jb20iLCJlbWFpbF92ZXJpZmllZCI6dHJ1ZSwibmFtZSI6InVzZXIifQ.ln6-ZconLkJaJopzZlqvNgcMFCkNIb8VBMYmkdrAEebTthceJHkKqTBqKA6syD0TPl0jQMAFMEI2mgTNeWFD2ufXSNu6U-hxkZkL2sAttDnC_Gx5hj5rLokQxOM91mFJCdfQnKrYpMTzrtPtcBVQ_m9M73YDfdkyya6wyVDTm6IgiNJuUv_8_3U2FJ8MZhb-JtDdWyxuHGpQC12DgsoCEa6wpsv8cxvN4igwWypw8ppsEwupSj_h4enR2APZ8jVAehvv4Wg1walGlE0S0DWAInJd2Xc_iaQE-ID1Sx-ALL3GHOGAgrCnu8_vEqkFpkGBtqTUErBbFkB45Kq07jWi2w
Date: Wed, 22 May 2024 05:16:28 GMT
Content-Length: 2
Content-Type: text/plain; charset=utf-8

```

--------------------------------------------------------------------------------------------

# OIDC AuthService
OIDC 验证服务

This is a rewrite of the [ajmyyra/ambassador-auth-oidc](https://github.com/ajmyyra/ambassador-auth-oidc) project.
这是 ajmyyra/ambassador-auth-oidc 项目的重写。

An AuthService is an HTTP Server that an API Gateway (eg Ambassador, Envoy) asks if an incoming request is authorized.
AuthService 是一个HTTP 服务器，API 网关（例如Ambassador、Envoy）会询问传入的请求是否经过授权。

For more information, see [this article](https://journal.arrikto.com/kubeflow-authentication-with-istio-dex-5eafdfac4782).
有关更多信息，请参阅本文。

## OpenID Connect

[OpenID Connect (OIDC)](http://openid.net/connect/) is an authentication layer on top of the OAuth 2.0 protocol. As OAuth 2.0 is fully supported by OpenID Connect, existing OAuth 2.0 implementations work with it out of the box.
OpenID Connect (OIDC) 是 OAuth 2.0 协议之上的身份验证层。 由于 OpenID Connect 完全支持 OAuth 2.0，因此现有的 OAuth 2.0 实现可以开箱即用。

Currently it only supports OIDC's [Authorization Code Flow](http://openid.net/specs/openid-connect-basic-1_0.html#CodeFlow), similar to OAuth 2.0 Authorization Code Grant.
目前仅支持OIDC的Authorization Code Flow，类似于OAuth 2.0 Authorization Code Grant。

## Example auth flow

![](https://raw.githubusercontent.com/ajmyyra/ambassador-auth-oidc/3c5fb7b6913f0e7f0b024f52f7503afa4c460636/misc/OIDC-flow.png)

## Options

Following environment variables are used by the software.
软件使用以下环境变量。

**Compulsary**
必修课

* **OIDC_PROVIDER** URL to your OIDC provider, for example: https://you.eu.auth0.com/
  OIDC_PROVIDER 您的 OIDC 提供商的 URL，例如：https://you.eu.auth0.com/

* **REDIRECT_URL** The URL that the OIDC provider will send the auth_code to. Also called callback URL. This should be in the form of: `<client_url>/login/oidc`.
  REDIRECT_URL OIDC 提供商将 auth_code 发送到的 URL。 也称为回调 URL。 其格式应为：`<client_url>/login/oidc`。

* **OIDC_SCOPES** OIDC scopes wanted for userinfo, for example: "profile email".
  OIDC_SCOPES 用户信息所需的 OIDC 范围，例如：“个人资料电子邮件”。

* **CLIENT_ID** Client id for your application (given by your OIDC provider).
  CLIENT_ID 您的应用程序的客户端 ID（由您的 OIDC 提供商提供）。

* **CLIENT_SECRET** Client secret for your application.
  CLIENT_SECRET 您的应用程序的客户端密钥。

**Optional**
选修的

* **SERVER_HOSTNAME** Hostname to listen for requests. Defaults to all IPv4/6 interfaces (0.0.0.0, ::).
  SERVER_HOSTNAME 用于侦听请求的主机名。 默认为所有 IPv4/6 接口（0.0.0.0，::）。

* **SERVER_PORT** Port to listen for requests. Default is 8080.
  SERVER_PORT 侦听请求的端口。 默认值为 8080。

* **SKIP_AUTH_URI** Space separated whitelist of URIs like "/info /health" to bypass authorization. Contains nothing by default.
  SKIP_AUTH_URI 以空格分隔的 URI 白名单，例如“/info /health”，以绕过授权。 默认情况下不包含任何内容。

OIDC-AuthService stores sessions and other state in a local file using BoltDB.
Other stores will be added soon.
OIDC-AuthService 使用 BoltDB 将会话和其他状态存储在本地文件中。 其他商店将很快添加。

OIDC AuthService can add extra headers based on the userid that was detected.
Applications can then use those headers to identify the user.
OIDC AuthService 可以根据检测到的用户 ID 添加额外的标头。 然后，应用程序可以使用这些标头来识别用户。

* **USERID_CLAIM** The claim whose value will be used as the userid (default `email`).
  USERID_CLAIM 其值将用作用户 ID（默认电子邮件）的声明。

* **USERID_HEADER** The name of the header containing the userid (default `kubeflow-userid`).
  USERID_HEADER 包含用户 ID 的标头名称（默认 kubeflow-userid）。

* **USERID_TOKEN_HEADER** The name of the header containing the id_token. (default `kubeflow-userid-token`).
  USERID_TOKEN_HEADER 包含 id_token 的标头的名称。 （默认 kubeflow-userid-token）。

* **USERID_PREFIX** The prefix added to the userid, which will be the value of the header.
  USERID_PREFIX 添加到用户 ID 的前缀，这将是标头的值。

```
time="2024-05-22T02:45:48Z" level=info msg="Starting readiness probe at 8081"
time="2024-05-22T02:45:48Z" level=info msg="No  USERID_TOKEN_HEADER  specified, using 'kubeflow-userid-token' as default."
time="2024-05-22T02:45:48Z" level=info msg="No  SERVER_HOSTNAME  specified, using '' as default."
time="2024-05-22T02:45:48Z" level=info msg="No  SERVER_PORT  specified, using '8080' as default."
time="2024-05-22T02:45:48Z" level=info msg="No  SESSION_MAX_AGE  specified, using '86400' as default."
time="2024-05-22T02:45:48Z" level=info msg="Starting web server at :8080"
```

## Usage

OIDC-Authservice is an OIDC Client, which authenticates users with an OIDC Provider and assigns them a session.
Can be used with:
OIDC-Authservice 是一个 OIDC 客户端，它使用 OIDC 提供商对用户进行身份验证并为其分配会话。 可与以下产品一起使用：

* Ambassador with AuthService

* Envoy with the ext_authz Filter

* Istio with EnvoyFilter, specifying ext_authz

### Build

* Local: `make build`
* Docker: `make docker-build`

# E2E Tests

For the E2E tests, we setup build the AuthService and run it along with an OIDC Provider (Dex) as Docker containers.
Then, we issue requests to confirm we get the functionality we expect.
对于 E2E 测试，我们设置构建 AuthService 并将其与 OIDC 提供程序 (Dex) 作为 Docker 容器一起运行。 然后，我们发出请求以确认我们获得了预期的功能。

## mlops 示例

```bash
[root@gitee-ai-region1-master-1 ~]# kubectl -n istio-system get sts authservice -o yaml
apiVersion: apps/v1
kind: StatefulSet
metadata:
  annotations:
    cpaas.io/creator: admin
    cpaas.io/updated-at: "2023-09-07T09:57:06Z"
    meta.helm.sh/release-name: mlops
    meta.helm.sh/release-namespace: default
  creationTimestamp: "2023-09-07T09:57:06Z"
  generation: 1
  labels:
    app.kubernetes.io/managed-by: Helm
  name: authservice
  namespace: istio-system
  resourceVersion: "93736201"
  uid: d90862a0-f919-4a8a-9c82-2fb2d2b3139b
spec:
  podManagementPolicy: OrderedReady
  replicas: 1
  revisionHistoryLimit: 10
  selector:
    matchLabels:
      app: authservice
  serviceName: authservice
  template:
    metadata:
      annotations:
        cpaas.io/creator: admin
        sidecar.istio.io/inject: "false"
      creationTimestamp: null
      labels:
        app: authservice
    spec:
      containers:
      - envFrom:
        - secretRef:
            name: oidc-authservice-client
        - configMapRef:
            name: oidc-authservice-parameters
        image: 10.0.200.210:11443/mlops/oidc-authservice:28c59ef-acp
        imagePullPolicy: Always
        name: authservice
        ports:
        - containerPort: 8080
          name: http-api
          protocol: TCP
        readinessProbe:
          failureThreshold: 3
          httpGet:
            path: /
            port: 8081
            scheme: HTTP
          periodSeconds: 10
          successThreshold: 1
          timeoutSeconds: 1
        resources: {}
        terminationMessagePath: /dev/termination-log
        terminationMessagePolicy: File
        volumeMounts:
        - mountPath: /var/lib/authservice
          name: data
        - mountPath: /etc/ssl/certs/rapidssl.pem
          name: ca-pemstore
          subPath: rapidssl.pem
      dnsPolicy: ClusterFirst
      restartPolicy: Always
      schedulerName: default-scheduler
      securityContext:
        fsGroup: 111
      terminationGracePeriodSeconds: 30
      volumes:
      - name: data
        persistentVolumeClaim:
          claimName: authservice-pvc
      - configMap:
          defaultMode: 420
          name: rapidssl-ca-pemstore
        name: ca-pemstore
  updateStrategy:
    rollingUpdate:
      partition: 0
    type: RollingUpdate
status:
  availableReplicas: 0
  collisionCount: 0
  currentRevision: authservice-6d8d766dbc
  observedGeneration: 1
  replicas: 1
  updateRevision: authservice-6d8d766dbc
[root@gitee-ai-region1-master-1 ~]#

[root@gitee-ai-region1-master-1 ~]# kubectl -n istio-system get cm oidc-authservice-parameters -o yaml
apiVersion: v1
data:
  # kubectl -n cpaas-system get cm dex-configmap -o yaml | grep issuer
  OIDC_PROVIDER: https://10.0.200.210/dex

  # acp 登陆地址: https://106.13.250.198
  # MLOps访问地址: https://106.13.250.198:30665/
  REDIRECT_URL: https://106.13.250.198:30665/login/oidc

  OIDC_SCOPES: profile email groups
  SKIP_AUTH_URI: /dex
  USERID_CLAIM: email
  USERID_HEADER: kubeflow-userid
  USERID_PREFIX: ""

  ############################################################

  # dex 实际访问地址
  OIDC_AUTH_URL: https://106.13.250.198/dex/auth

  PORT: '"8080"'
  STORE_PATH: /var/lib/authservice/data.db
kind: ConfigMap
metadata:
  annotations:
    cpaas.io/creator: admin
    cpaas.io/updated-at: "2023-09-07T09:57:06Z"
    meta.helm.sh/release-name: mlops
    meta.helm.sh/release-namespace: default
  creationTimestamp: "2023-09-07T09:57:06Z"
  labels:
    app.kubernetes.io/managed-by: Helm
  name: oidc-authservice-parameters
  namespace: istio-system
  resourceVersion: "3181324"
  uid: 3b4041bf-3121-45b6-a985-12c428958ecf
[root@gitee-ai-region1-master-1 ~]#

[root@gitee-ai-region1-master-1 ~]# kubectl -n istio-system get secret oidc-authservice-client -o yaml
apiVersion: v1
data:
  # kubectl -n cpaas-system get cm dex-configmap -o yaml | grep " id: "
  CLIENT_ID: YWxhdWRhLWF1dGg=

  # kubectl -n cpaas-system get cm dex-configmap -o yaml | grep "secret"
  CLIENT_SECRET: WlhoaGJYQnNaUzFoY0hBdGMyVmpjbVYw
kind: Secret
metadata:
  annotations:
    cpaas.io/creator: admin
    cpaas.io/updated-at: "2023-09-07T09:57:06Z"
    meta.helm.sh/release-name: mlops
    meta.helm.sh/release-namespace: default
  creationTimestamp: "2023-09-07T09:57:06Z"
  labels:
    app.kubernetes.io/managed-by: Helm
  name: oidc-authservice-client
  namespace: istio-system
  resourceVersion: "3181295"
  uid: 25ab7894-b381-465a-a4a3-ebf1a37713b8
type: Opaque
[root@gitee-ai-region1-master-1 ~]#

[root@gitee-ai-region1-master-1 ~]# kubectl -n istio-system get cm rapidssl-ca-pemstore -o yaml
apiVersion: v1
data:
  # kubectl -n cpaas-system get secret dex.tls -o jsonpath='{.data.tls\.crt}' | base64 -d
  rapidssl.pem: |
    -----BEGIN CERTIFICATE-----
    MIIDIzCCAgugAwIBAgIQPWm7R4K7jYxowfBMIJ6WODANBgkqhkiG9w0BAQsFADAQ
    MQ4wDAYDVQQKEwVjcGFhczAeFw0yMzA5MDcwNjA3MTlaFw0zMzA5MDQwNjA3MTla
    MBIxEDAOBgNVBAoTB2t1YmUtY2EwggEiMA0GCSqGSIb3DQEBAQUAA4IBDwAwggEK
    AoIBAQDGIp76AZn2CfKuuHMJ7s55jf8VgwLL0Cvb7Ep/uzcXlnHQlj1gB6qd6qL4
    lfcVGJc7cZgpT3Ju8LzxhkpGpIxOqnmGqzxnL6ry4NvUkE8B5BZGKwV/cL1gATkn
    bk3VAw42lQ32xruLHFJzWOgEyF2BW5sSekNIdigJY1tJuF+tij8HTXqewqNc/lbY
    1krnmdI5PSGt9gI1WgBILt40qUEl55uw6vc69AEDXnHOLEO2sOy7n+i+kmQwrimF
    BGA7ZjpaC6adsakJ5BEk696vlyp7g1ra7tK4bv7Ekrs2IK1mHpit6ivRQDX6RdoF
    LHGO5wtbvvqw9MBBrwkp75SWukC3AgMBAAGjdzB1MA4GA1UdDwEB/wQEAwIFoDAM
    BgNVHRMBAf8EAjAAMB8GA1UdIwQYMBaAFMHyhxdY8OHnwxrl+7aU3FfPwqU+MDQG
    A1UdEQQtMCuCBWNwYWFzhwR/AAABhwQKAMjShwQKAMjShwQKAMjShwRqDfrGhwRq
    DfrGMA0GCSqGSIb3DQEBCwUAA4IBAQATW1zv/IYqjqgX89BOC4wlLmi4TdaVaoni
    eFE6LuncsXrV7RQsx17zcbFmJTMiP/NVkEpQuZI7bRUAf5QadI5piQrpStvmk9dT
    qMbhMnqqOD+buIsHA0oEi0EEgYV81FWAl57GOb+qIgf24fIMHLrX09/m4FgzW2AV
    wyK0DjTam8rCrXXLgc9Ox7BvHJamKctd8eA3LYqCsapgtovCqUjB5P1mlC6m3X0o
    ceMYrIobR1ZASP9AfWvMZOAnPcFTJ2JfdGRKOttUqq4A5t6GfABGLr/LD0HbNGXI
    ZMW3eD61NEuEGkKSZDlniBhxYtZHj/eF1UT1xRcG/OQZ03BkGGLf
    -----END CERTIFICATE-----
kind: ConfigMap
metadata:
  annotations:
    cpaas.io/creator: admin
    cpaas.io/updated-at: "2023-09-07T09:57:06Z"
    meta.helm.sh/release-name: mlops
    meta.helm.sh/release-namespace: default
  creationTimestamp: "2023-09-07T09:57:06Z"
  labels:
    app.kubernetes.io/managed-by: Helm
  name: rapidssl-ca-pemstore
  namespace: istio-system
  resourceVersion: "3181339"
  uid: 2099ffba-6fbb-4afd-9e94-f183e71aabfc
[root@gitee-ai-region1-master-1 ~]#

```
