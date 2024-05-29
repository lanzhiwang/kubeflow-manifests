```bash

serviceaccount/jupyter-web-app-service-account

role.rbac.authorization.k8s.io/jupyter-web-app-jupyter-notebook-role

clusterrole.rbac.authorization.k8s.io/jupyter-web-app-cluster-role
clusterrole.rbac.authorization.k8s.io/jupyter-web-app-kubeflow-notebook-ui-admin
clusterrole.rbac.authorization.k8s.io/jupyter-web-app-kubeflow-notebook-ui-edit
clusterrole.rbac.authorization.k8s.io/jupyter-web-app-kubeflow-notebook-ui-view

rolebinding.rbac.authorization.k8s.io/jupyter-web-app-jupyter-notebook-role-binding

clusterrolebinding.rbac.authorization.k8s.io/jupyter-web-app-cluster-role-binding

configmap/jupyter-web-app-config-c765bftc87
configmap/jupyter-web-app-logos
configmap/jupyter-web-app-parameters-42k97gcbmb

service/jupyter-web-app-service

deployment.apps/jupyter-web-app-deployment

virtualservice.networking.istio.io/jupyter-web-app-jupyter-web-app

$

```
