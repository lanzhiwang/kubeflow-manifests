# notebook-controller

* https://github.com/kubeflow/kubeflow/tree/v1.6.1/components/notebook-controller

```bash

customresourcedefinition.apiextensions.k8s.io/notebooks.kubeflow.org

serviceaccount/notebook-controller-service-account

role.rbac.authorization.k8s.io/notebook-controller-leader-election-role

clusterrole.rbac.authorization.k8s.io/notebook-controller-kubeflow-notebooks-admin
clusterrole.rbac.authorization.k8s.io/notebook-controller-kubeflow-notebooks-edit
clusterrole.rbac.authorization.k8s.io/notebook-controller-kubeflow-notebooks-view
clusterrole.rbac.authorization.k8s.io/notebook-controller-role

rolebinding.rbac.authorization.k8s.io/notebook-controller-leader-election-rolebinding

clusterrolebinding.rbac.authorization.k8s.io/notebook-controller-role-binding

configmap/notebook-controller-config-m44cmb547t

service/notebook-controller-service

deployment.apps/notebook-controller-deployment

$

```
