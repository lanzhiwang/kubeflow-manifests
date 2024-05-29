# profile-controller

* https://github.com/kubeflow/kubeflow/tree/v1.6.1/components/profile-controller

```bash
customresourcedefinition.apiextensions.k8s.io/profiles.kubeflow.org

serviceaccount/profiles-controller-service-account

role.rbac.authorization.k8s.io/profiles-leader-election-role

rolebinding.rbac.authorization.k8s.io/profiles-leader-election-rolebinding

clusterrolebinding.rbac.authorization.k8s.io/profiles-cluster-rolebinding

configmap/namespace-labels-data-4df5t8mdgf
configmap/profiles-config-46c7tgh6fd

service/profiles-kfam

deployment.apps/profiles-deployment

virtualservice.networking.istio.io/profiles-kfam

authorizationpolicy.security.istio.io/profiles-kfam

$


```
