# kubeflow/pipelines(kfp)

* https://github.com/kubeflow/pipelines
* https://github.com/kubeflow/kfp-tekton

```bash
customresourcedefinition
clusterworkflowtemplates.argoproj.io
compositecontrollers.metacontroller.k8s.io
controllerrevisions.metacontroller.k8s.io
cronworkflows.argoproj.io
decoratorcontrollers.metacontroller.k8s.io
scheduledworkflows.kubeflow.org
viewers.kubeflow.org
workfloweventbindings.argoproj.io
workflows.argoproj.io
workflowtaskresults.argoproj.io
workflowtasksets.argoproj.io
workflowtemplates.argoproj.io

serviceaccount/argo
serviceaccount/kubeflow-pipelines-cache
serviceaccount/kubeflow-pipelines-container-builder
serviceaccount/kubeflow-pipelines-metadata-writer
serviceaccount/kubeflow-pipelines-viewer
serviceaccount/meta-controller-service
serviceaccount/metadata-grpc-server
serviceaccount/ml-pipeline
serviceaccount/ml-pipeline-persistenceagent
serviceaccount/ml-pipeline-scheduledworkflow
serviceaccount/ml-pipeline-ui
serviceaccount/ml-pipeline-viewer-crd-service-account
serviceaccount/ml-pipeline-visualizationserver
serviceaccount/mysql
serviceaccount/pipeline-runner

role.rbac.authorization.k8s.io/argo-role
role.rbac.authorization.k8s.io/kubeflow-pipelines-cache-role
role.rbac.authorization.k8s.io/kubeflow-pipelines-metadata-writer-role
role.rbac.authorization.k8s.io/ml-pipeline
role.rbac.authorization.k8s.io/ml-pipeline-persistenceagent-role
role.rbac.authorization.k8s.io/ml-pipeline-scheduledworkflow-role
role.rbac.authorization.k8s.io/ml-pipeline-ui
role.rbac.authorization.k8s.io/ml-pipeline-viewer-controller-role
role.rbac.authorization.k8s.io/pipeline-runner

clusterrole.rbac.authorization.k8s.io/aggregate-to-kubeflow-pipelines-edit
clusterrole.rbac.authorization.k8s.io/aggregate-to-kubeflow-pipelines-view
clusterrole.rbac.authorization.k8s.io/argo-aggregate-to-admin
clusterrole.rbac.authorization.k8s.io/argo-aggregate-to-edit
clusterrole.rbac.authorization.k8s.io/argo-aggregate-to-view
clusterrole.rbac.authorization.k8s.io/argo-cluster-role
clusterrole.rbac.authorization.k8s.io/kubeflow-pipelines-cache-role
clusterrole.rbac.authorization.k8s.io/kubeflow-pipelines-edit
clusterrole.rbac.authorization.k8s.io/kubeflow-pipelines-metadata-writer-role
clusterrole.rbac.authorization.k8s.io/kubeflow-pipelines-view
clusterrole.rbac.authorization.k8s.io/ml-pipeline
clusterrole.rbac.authorization.k8s.io/ml-pipeline-persistenceagent-role
clusterrole.rbac.authorization.k8s.io/ml-pipeline-scheduledworkflow-role
clusterrole.rbac.authorization.k8s.io/ml-pipeline-ui
clusterrole.rbac.authorization.k8s.io/ml-pipeline-viewer-controller-role

rolebinding.rbac.authorization.k8s.io/argo-binding
rolebinding.rbac.authorization.k8s.io/kubeflow-pipelines-cache-binding
rolebinding.rbac.authorization.k8s.io/kubeflow-pipelines-metadata-writer-binding
rolebinding.rbac.authorization.k8s.io/ml-pipeline
rolebinding.rbac.authorization.k8s.io/ml-pipeline-persistenceagent-binding
rolebinding.rbac.authorization.k8s.io/ml-pipeline-scheduledworkflow-binding
rolebinding.rbac.authorization.k8s.io/ml-pipeline-ui
rolebinding.rbac.authorization.k8s.io/ml-pipeline-viewer-crd-binding
rolebinding.rbac.authorization.k8s.io/pipeline-runner-binding

clusterrolebinding.rbac.authorization.k8s.io/argo-binding
clusterrolebinding.rbac.authorization.k8s.io/kubeflow-pipelines-cache-binding
clusterrolebinding.rbac.authorization.k8s.io/kubeflow-pipelines-metadata-writer-binding
clusterrolebinding.rbac.authorization.k8s.io/meta-controller-cluster-role-binding
clusterrolebinding.rbac.authorization.k8s.io/ml-pipeline
clusterrolebinding.rbac.authorization.k8s.io/ml-pipeline-persistenceagent-binding
clusterrolebinding.rbac.authorization.k8s.io/ml-pipeline-scheduledworkflow-binding
clusterrolebinding.rbac.authorization.k8s.io/ml-pipeline-ui
clusterrolebinding.rbac.authorization.k8s.io/ml-pipeline-viewer-crd-binding

configmap/kfp-launcher
configmap/kubeflow-pipelines-profile-controller-code-hdk828hd6c
configmap/kubeflow-pipelines-profile-controller-env-5252m69c4c
configmap/metadata-grpc-configmap
configmap/ml-pipeline-ui-configmap
configmap/persistenceagent-config-hkgkmd64bh
configmap/pipeline-api-server-config-dc9hkg52h6
configmap/pipeline-install-config
configmap/workflow-controller-configmap

secret/mlpipeline-minio-artifact
secret/mysql-secret

service/cache-server
service/kubeflow-pipelines-profile-controller
service/metadata-envoy-service
service/metadata-grpc-service
service/minio-service
service/ml-pipeline
service/ml-pipeline-ui
service/ml-pipeline-visualizationserver
service/mysql
service/workflow-controller-metrics

priorityclass.scheduling.k8s.io/workflow-controller

persistentvolumeclaim/minio-pvc
persistentvolumeclaim/mysql-pv-claim

deployment.apps/cache-server
deployment.apps/kubeflow-pipelines-profile-controller
deployment.apps/metadata-envoy-deployment
deployment.apps/metadata-grpc-deployment
deployment.apps/metadata-writer
deployment.apps/minio
deployment.apps/ml-pipeline
deployment.apps/ml-pipeline-persistenceagent
deployment.apps/ml-pipeline-scheduledworkflow
deployment.apps/ml-pipeline-ui
deployment.apps/ml-pipeline-viewer-crd
deployment.apps/ml-pipeline-visualizationserver
deployment.apps/mysql
deployment.apps/workflow-controller

statefulset.apps/metacontroller

mutatingwebhookconfiguration.admissionregistration.k8s.io/cache-webhook-kubeflow

######################################################################################

compositecontroller.metacontroller.k8s.io/kubeflow-pipelines-profile-controller

certificate.cert-manager.io/kfp-cache-cert

issuer.cert-manager.io/kfp-cache-selfsigned-issuer

destinationrule.networking.istio.io/metadata-grpc-service
destinationrule.networking.istio.io/ml-pipeline
destinationrule.networking.istio.io/ml-pipeline-minio
destinationrule.networking.istio.io/ml-pipeline-mysql
destinationrule.networking.istio.io/ml-pipeline-ui
destinationrule.networking.istio.io/ml-pipeline-visualizationserver

virtualservice.networking.istio.io/metadata-grpc
virtualservice.networking.istio.io/ml-pipeline-ui

authorizationpolicy.security.istio.io/metadata-grpc-service
authorizationpolicy.security.istio.io/minio-service
authorizationpolicy.security.istio.io/ml-pipeline
authorizationpolicy.security.istio.io/ml-pipeline-ui
authorizationpolicy.security.istio.io/ml-pipeline-visualizationserver
authorizationpolicy.security.istio.io/mysql
authorizationpolicy.security.istio.io/service-cache-server

$

```
