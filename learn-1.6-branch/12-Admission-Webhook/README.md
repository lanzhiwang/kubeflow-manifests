# admission-webhook

* https://github.com/kubeflow/kubeflow/tree/v1.6.1/components/admission-webhook

```bash

customresourcedefinition.apiextensions.k8s.io/poddefaults.kubeflow.org

serviceaccount/admission-webhook-service-account

clusterrole.rbac.authorization.k8s.io/admission-webhook-cluster-role
clusterrole.rbac.authorization.k8s.io/admission-webhook-kubeflow-poddefaults-admin
clusterrole.rbac.authorization.k8s.io/admission-webhook-kubeflow-poddefaults-edit
clusterrole.rbac.authorization.k8s.io/admission-webhook-kubeflow-poddefaults-view
clusterrolebinding.rbac.authorization.k8s.io/admission-webhook-cluster-role-binding

service/admission-webhook-service

deployment.apps/admission-webhook-deployment

certificate.cert-manager.io/admission-webhook-cert

issuer.cert-manager.io/admission-webhook-selfsigned-issuer

mutatingwebhookconfiguration.admissionregistration.k8s.io/admission-webhook-mutating-webhook-configuration

$

```
