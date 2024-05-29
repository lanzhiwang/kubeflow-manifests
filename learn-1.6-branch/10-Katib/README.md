# katib

* https://github.com/kubeflow/katib

```bash
customresourcedefinition.apiextensions.k8s.io/experiments.kubeflow.org
customresourcedefinition.apiextensions.k8s.io/suggestions.kubeflow.org
customresourcedefinition.apiextensions.k8s.io/trials.kubeflow.org

serviceaccount/katib-controller
serviceaccount/katib-ui

clusterrole.rbac.authorization.k8s.io/katib-controller
clusterrole.rbac.authorization.k8s.io/katib-ui
clusterrole.rbac.authorization.k8s.io/kubeflow-katib-admin
clusterrole.rbac.authorization.k8s.io/kubeflow-katib-edit
clusterrole.rbac.authorization.k8s.io/kubeflow-katib-view

clusterrolebinding.rbac.authorization.k8s.io/katib-controller
clusterrolebinding.rbac.authorization.k8s.io/katib-ui

configmap/katib-config
configmap/trial-templates

secret/katib-mysql-secrets

service/katib-controller
service/katib-db-manager
service/katib-mysql
service/katib-ui

persistentvolumeclaim/katib-mysql

deployment.apps/katib-controller
deployment.apps/katib-db-manager
deployment.apps/katib-mysql
deployment.apps/katib-ui

certificate.cert-manager.io/katib-webhook-cert

issuer.cert-manager.io/katib-selfsigned-issuer

virtualservice.networking.istio.io/katib-ui

mutatingwebhookconfiguration.admissionregistration.k8s.io/katib.kubeflow.org

validatingwebhookconfiguration.admissionregistration.k8s.io/katib.kubeflow.org

$

```
