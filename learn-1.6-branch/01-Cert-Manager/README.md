# Cert-Manager

```bash
# 在 ACP 上安装的差异
$ kubectl apply -f out.yaml

role.rbac.authorization.k8s.io/cert-manager-cainjector:leaderelection created

role.rbac.authorization.k8s.io/cert-manager:leaderelection created

rolebinding.rbac.authorization.k8s.io/cert-manager-cainjector:leaderelection created

rolebinding.rbac.authorization.k8s.io/cert-manager:leaderelection created

service/cert-manager created

service/cert-manager-webhook created

clusterissuer.cert-manager.io/kubeflow-self-signing-issuer created

mutatingwebhookconfiguration.admissionregistration.k8s.io/cert-manager-webhook created

validatingwebhookconfiguration.admissionregistration.k8s.io/cert-manager-webhook created

$


customresourcedefinition

certificaterequests.cert-manager.io
certificates.cert-manager.io
challenges.acme.cert-manager.io
clusterissuers.cert-manager.io
issuers.cert-manager.io
orders.acme.cert-manager.io

$ kubectl -n cert-manager get ServiceAccount
NAME                      SECRETS   AGE
cert-manager              0         5m5s
cert-manager-cainjector   0         5m5s
cert-manager-webhook      0         5m5s
$

$ kubectl -n cert-manager get Role
NAME                                   CREATED AT
cert-manager-webhook:dynamic-serving   2023-12-15T03:23:04Z

$ kubectl -n kube-system get Role
NAME                                             CREATED AT
cert-manager-cainjector:leaderelection           2023-12-15T03:23:04Z
cert-manager:leaderelection                      2023-12-15T03:23:04Z
$

$ kubectl get ClusterRole
NAME                                                                   CREATED AT
cert-manager-cainjector                                                2023-12-15T03:23:04Z
cert-manager-controller-approve:cert-manager-io                        2023-12-15T03:23:04Z
cert-manager-controller-certificates                                   2023-12-15T03:23:04Z
cert-manager-controller-certificatesigningrequests                     2023-12-15T03:23:04Z
cert-manager-controller-challenges                                     2023-12-15T03:23:04Z
cert-manager-controller-clusterissuers                                 2023-12-15T03:23:04Z
cert-manager-controller-ingress-shim                                   2023-12-15T03:23:04Z
cert-manager-controller-issuers                                        2023-12-15T03:23:04Z
cert-manager-controller-orders                                         2023-12-15T03:23:04Z
cert-manager-edit                                                      2023-12-15T03:23:04Z
cert-manager-view                                                      2023-12-15T03:23:04Z
cert-manager-webhook:subjectaccessreviews                              2023-12-15T03:23:04Z
$

$ kubectl -n cert-manager get RoleBinding
NAME                                   ROLE                                        AGE
cert-manager-webhook:dynamic-serving   Role/cert-manager-webhook:dynamic-serving   10m

$ kubectl -n kube-system get RoleBinding
NAME                                                ROLE                                                  AGE
cert-manager-cainjector:leaderelection              Role/cert-manager-cainjector:leaderelection           10m
cert-manager:leaderelection                         Role/cert-manager:leaderelection                      10m
$

$ kubectl get ClusterRoleBinding
NAME                                                   ROLE                                                                               AGE
cert-manager-cainjector                                ClusterRole/cert-manager-cainjector                                                11m
cert-manager-controller-approve:cert-manager-io        ClusterRole/cert-manager-controller-approve:cert-manager-io                        11m
cert-manager-controller-certificates                   ClusterRole/cert-manager-controller-certificates                                   11m
cert-manager-controller-certificatesigningrequests     ClusterRole/cert-manager-controller-certificatesigningrequests                     11m
cert-manager-controller-challenges                     ClusterRole/cert-manager-controller-challenges                                     11m
cert-manager-controller-clusterissuers                 ClusterRole/cert-manager-controller-clusterissuers                                 11m
cert-manager-controller-ingress-shim                   ClusterRole/cert-manager-controller-ingress-shim                                   11m
cert-manager-controller-issuers                        ClusterRole/cert-manager-controller-issuers                                        11m
cert-manager-controller-orders                         ClusterRole/cert-manager-controller-orders                                         11m
cert-manager-webhook:subjectaccessreviews              ClusterRole/cert-manager-webhook:subjectaccessreviews                              11m
$

$ kubectl -n cert-manager get Service
NAME                   TYPE        CLUSTER-IP      EXTERNAL-IP   PORT(S)    AGE
cert-manager           ClusterIP   10.101.62.114   <none>        9402/TCP   13m
cert-manager-webhook   ClusterIP   10.110.241.98   <none>        443/TCP    13m
$

$ kubectl -n cert-manager get Deployment
NAME                      READY   UP-TO-DATE   AVAILABLE   AGE
cert-manager              1/1     1            1           14m
cert-manager-cainjector   1/1     1            1           14m
cert-manager-webhook      1/1     1            1           14m
$

$ kubectl get MutatingWebhookConfiguration -A
NAME                   WEBHOOKS   AGE
cert-manager-webhook   1          15m

$ kubectl get ValidatingWebhookConfiguration -A
NAME                   WEBHOOKS   AGE
cert-manager-webhook   1          15m
$

#######################################################

$ kubectl get clusterissuers.cert-manager.io -A
NAME                           READY   AGE
kubeflow-self-signing-issuer   True    46s
$

```
