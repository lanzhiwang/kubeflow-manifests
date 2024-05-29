# training-operator

* https://github.com/kubeflow/training-operator

```bash

customresourcedefinition.apiextensions.k8s.io/mpijobs.kubeflow.org
customresourcedefinition.apiextensions.k8s.io/mxjobs.kubeflow.org
customresourcedefinition.apiextensions.k8s.io/pytorchjobs.kubeflow.org
customresourcedefinition.apiextensions.k8s.io/tfjobs.kubeflow.org
customresourcedefinition.apiextensions.k8s.io/xgboostjobs.kubeflow.org

serviceaccount/training-operator

clusterrole.rbac.authorization.k8s.io/kubeflow-training-admin
clusterrole.rbac.authorization.k8s.io/kubeflow-training-edit
clusterrole.rbac.authorization.k8s.io/kubeflow-training-view
clusterrole.rbac.authorization.k8s.io/training-operator

clusterrolebinding.rbac.authorization.k8s.io/training-operator

service/training-operator

deployment.apps/training-operator

$

```
