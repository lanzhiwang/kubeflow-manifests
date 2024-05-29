# kserve 推理

* https://github.com/kserve/kserve

```bash

customresourcedefinition.apiextensions.k8s.io/clusterservingruntimes.serving.kserve.io
customresourcedefinition.apiextensions.k8s.io/inferenceservices.serving.kserve.io
customresourcedefinition.apiextensions.k8s.io/servingruntimes.serving.kserve.io
customresourcedefinition.apiextensions.k8s.io/trainedmodels.serving.kserve.io

serviceaccount/kserve-controller-manager
serviceaccount/kserve-models-web-app

role.rbac.authorization.k8s.io/kserve-leader-election-role

clusterrole.rbac.authorization.k8s.io/kserve-manager-role
clusterrole.rbac.authorization.k8s.io/kserve-models-web-app-cluster-role
clusterrole.rbac.authorization.k8s.io/kserve-proxy-role
clusterrole.rbac.authorization.k8s.io/kubeflow-kserve-admin
clusterrole.rbac.authorization.k8s.io/kubeflow-kserve-edit
clusterrole.rbac.authorization.k8s.io/kubeflow-kserve-view

rolebinding.rbac.authorization.k8s.io/kserve-leader-election-rolebinding

clusterrolebinding.rbac.authorization.k8s.io/kserve-manager-rolebinding
clusterrolebinding.rbac.authorization.k8s.io/kserve-models-web-app-binding
clusterrolebinding.rbac.authorization.k8s.io/kserve-proxy-rolebinding

configmap/inferenceservice-config
configmap/kserve-config
configmap/kserve-models-web-app-config

secret/kserve-webhook-server-secret

service/kserve-controller-manager-metrics-service
service/kserve-controller-manager-service
service/kserve-models-web-app
service/kserve-webhook-server-service

deployment.apps/kserve-models-web-app

statefulset.apps/kserve-controller-manager

certificate.cert-manager.io/serving-cert

issuer.cert-manager.io/selfsigned-issuer

virtualservice.networking.istio.io/kserve-models-web-app

authorizationpolicy.security.istio.io/kserve-models-web-app

clusterservingruntime.serving.kserve.io/kserve-lgbserver
clusterservingruntime.serving.kserve.io/kserve-mlserver
clusterservingruntime.serving.kserve.io/kserve-paddleserver
clusterservingruntime.serving.kserve.io/kserve-pmmlserver
clusterservingruntime.serving.kserve.io/kserve-sklearnserver
clusterservingruntime.serving.kserve.io/kserve-tensorflow-serving
clusterservingruntime.serving.kserve.io/kserve-torchserve
clusterservingruntime.serving.kserve.io/kserve-tritonserver
clusterservingruntime.serving.kserve.io/kserve-xgbserver

mutatingwebhookconfiguration.admissionregistration.k8s.io/inferenceservice.serving.kserve.io

validatingwebhookconfiguration.admissionregistration.k8s.io/inferenceservice.serving.kserve.io
validatingwebhookconfiguration.admissionregistration.k8s.io/trainedmodel.serving.kserve.io

$

```
