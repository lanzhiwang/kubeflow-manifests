# tensorboard-controller

* https://github.com/kubeflow/kubeflow/tree/v1.6.1/components/tensorboard-controller

```bash

customresourcedefinition.apiextensions.k8s.io/tensorboards.tensorboard.kubeflow.org

serviceaccount/tensorboard-controller-controller-manager

role.rbac.authorization.k8s.io/tensorboard-controller-leader-election-role

clusterrole.rbac.authorization.k8s.io/tensorboard-controller-manager-role
clusterrole.rbac.authorization.k8s.io/tensorboard-controller-metrics-reader
clusterrole.rbac.authorization.k8s.io/tensorboard-controller-proxy-role

rolebinding.rbac.authorization.k8s.io/tensorboard-controller-leader-election-rolebinding

clusterrolebinding.rbac.authorization.k8s.io/tensorboard-controller-manager-rolebinding
clusterrolebinding.rbac.authorization.k8s.io/tensorboard-controller-proxy-rolebinding

configmap/tensorboard-controller-config-dg89gdkk47

service/tensorboard-controller-controller-manager-metrics-service

deployment.apps/tensorboard-controller-deployment

$

```
