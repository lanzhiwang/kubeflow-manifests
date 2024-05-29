############################# Cert-Manager
docker pull --platform linux/amd64 quay.io/jetstack/cert-manager-controller:v1.5.0
docker tag quay.io/jetstack/cert-manager-controller:v1.5.0 ghcr.io/lanzhiwang/jetstack/cert-manager-controller:v1.5.0
docker push ghcr.io/lanzhiwang/jetstack/cert-manager-controller:v1.5.0

docker pull --platform linux/amd64 quay.io/jetstack/cert-manager-cainjector:v1.5.0
docker tag quay.io/jetstack/cert-manager-cainjector:v1.5.0 ghcr.io/lanzhiwang/jetstack/cert-manager-cainjector:v1.5.0
docker push ghcr.io/lanzhiwang/jetstack/cert-manager-cainjector:v1.5.0

docker pull --platform linux/amd64 quay.io/jetstack/cert-manager-webhook:v1.5.0
docker tag quay.io/jetstack/cert-manager-webhook:v1.5.0 ghcr.io/lanzhiwang/jetstack/cert-manager-webhook:v1.5.0
docker push ghcr.io/lanzhiwang/jetstack/cert-manager-webhook:v1.5.0

############################# Istio
# docker.io/istio/proxyv2:1.14.1
docker pull --platform linux/amd64 gcr.io/arrikto/istio/pilot:1.14.1-1-g19df463bb
docker tag gcr.io/arrikto/istio/pilot:1.14.1-1-g19df463bb ghcr.io/lanzhiwang/arrikto/istio/pilot:1.14.1-1-g19df463bb
docker push ghcr.io/lanzhiwang/arrikto/istio/pilot:1.14.1-1-g19df463bb

############################# OIDC Authservice
# docker.io/kubeflowmanifestswg/oidc-authservice:28c59ef

############################# Dex
# ghcr.io/dexidp/dex:v2.31.2

############################# KNative
# docker.io/istio/proxyv2:1.14.1

docker pull --platform linux/amd64 gcr.io/knative-releases/knative.dev/eventing/cmd/apiserver_receive_adapter@sha256:5b672eedd343bcf9496c2070479f9d8f29231069148bf2aa7991bd5ca5a7562a
docker tag gcr.io/knative-releases/knative.dev/eventing/cmd/apiserver_receive_adapter@sha256:5b672eedd343bcf9496c2070479f9d8f29231069148bf2aa7991bd5ca5a7562a ghcr.io/lanzhiwang/knative-releases/knative.dev/eventing/cmd/apiserver_receive_adapter:5b672eedd343
docker push ghcr.io/lanzhiwang/knative-releases/knative.dev/eventing/cmd/apiserver_receive_adapter:5b672eedd343

docker pull --platform linux/amd64 gcr.io/knative-releases/knative.dev/eventing/cmd/controller@sha256:dc0ac2d8f235edb04ec1290721f389d2bc719ab8b6222ee86f17af8d7d2a160f
docker tag gcr.io/knative-releases/knative.dev/eventing/cmd/controller@sha256:dc0ac2d8f235edb04ec1290721f389d2bc719ab8b6222ee86f17af8d7d2a160f ghcr.io/lanzhiwang/knative-releases/knative.dev/eventing/cmd/controller:v1.2.4
docker push ghcr.io/lanzhiwang/knative-releases/knative.dev/eventing/cmd/controller:v1.2.4

docker pull --platform linux/amd64 gcr.io/knative-releases/knative.dev/eventing/cmd/webhook@sha256:b7faf7d253bd256dbe08f1cac084469128989cf39abbe256ecb4e1d4eb085a31
docker tag gcr.io/knative-releases/knative.dev/eventing/cmd/webhook@sha256:b7faf7d253bd256dbe08f1cac084469128989cf39abbe256ecb4e1d4eb085a31 ghcr.io/lanzhiwang/knative-releases/knative.dev/eventing/cmd/webhook:v1.2.4
docker push ghcr.io/lanzhiwang/knative-releases/knative.dev/eventing/cmd/webhook:v1.2.4

docker pull --platform linux/amd64 gcr.io/knative-releases/knative.dev/eventing/cmd/mtping@sha256:632d9d710d070efed2563f6125a87993e825e8e36562ec3da0366e2a897406c0
docker tag gcr.io/knative-releases/knative.dev/eventing/cmd/mtping@sha256:632d9d710d070efed2563f6125a87993e825e8e36562ec3da0366e2a897406c0 ghcr.io/lanzhiwang/knative-releases/knative.dev/eventing/cmd/mtping:v1.2.4
docker push ghcr.io/lanzhiwang/knative-releases/knative.dev/eventing/cmd/mtping:v1.2.4

docker pull --platform linux/amd64 gcr.io/knative-releases/knative.dev/serving/cmd/activator@sha256:93ff6e69357785ff97806945b284cbd1d37e50402b876a320645be8877c0d7b7
docker tag gcr.io/knative-releases/knative.dev/serving/cmd/activator@sha256:93ff6e69357785ff97806945b284cbd1d37e50402b876a320645be8877c0d7b7 ghcr.io/lanzhiwang/knative-releases/knative.dev/serving/cmd/activator:v1.2.5
docker push ghcr.io/lanzhiwang/knative-releases/knative.dev/serving/cmd/activator:v1.2.5

docker pull --platform linux/amd64 gcr.io/knative-releases/knative.dev/serving/cmd/autoscaler@sha256:007820fdb75b60e6fd5a25e65fd6ad9744082a6bf195d72795561c91b425d016
docker tag gcr.io/knative-releases/knative.dev/serving/cmd/autoscaler@sha256:007820fdb75b60e6fd5a25e65fd6ad9744082a6bf195d72795561c91b425d016 ghcr.io/lanzhiwang/knative-releases/knative.dev/serving/cmd/autoscaler:v1.2.5
docker push ghcr.io/lanzhiwang/knative-releases/knative.dev/serving/cmd/autoscaler:v1.2.5

docker pull --platform linux/amd64 gcr.io/knative-releases/knative.dev/serving/cmd/controller@sha256:75cfdcfa050af9522e798e820ba5483b9093de1ce520207a3fedf112d73a4686
docker tag gcr.io/knative-releases/knative.dev/serving/cmd/controller@sha256:75cfdcfa050af9522e798e820ba5483b9093de1ce520207a3fedf112d73a4686 ghcr.io/lanzhiwang/knative-releases/knative.dev/serving/cmd/controller:v1.2.5
docker push ghcr.io/lanzhiwang/knative-releases/knative.dev/serving/cmd/controller:v1.2.5

docker pull --platform linux/amd64 gcr.io/knative-releases/knative.dev/serving/cmd/domain-mapping@sha256:23baa19322320f25a462568eded1276601ef67194883db9211e1ea24f21a0beb
docker tag gcr.io/knative-releases/knative.dev/serving/cmd/domain-mapping@sha256:23baa19322320f25a462568eded1276601ef67194883db9211e1ea24f21a0beb ghcr.io/lanzhiwang/knative-releases/knative.dev/serving/cmd/domain-mapping:v1.2.5
docker push ghcr.io/lanzhiwang/knative-releases/knative.dev/serving/cmd/domain-mapping:v1.2.5

docker pull --platform linux/amd64 gcr.io/knative-releases/knative.dev/serving/cmd/domain-mapping-webhook@sha256:847bb97e38440c71cb4bcc3e430743e18b328ad1e168b6fca35b10353b9a2c22
docker tag gcr.io/knative-releases/knative.dev/serving/cmd/domain-mapping-webhook@sha256:847bb97e38440c71cb4bcc3e430743e18b328ad1e168b6fca35b10353b9a2c22 ghcr.io/lanzhiwang/knative-releases/knative.dev/serving/cmd/domain-mapping-webhook:v1.2.5
docker push ghcr.io/lanzhiwang/knative-releases/knative.dev/serving/cmd/domain-mapping-webhook:v1.2.5

docker pull --platform linux/amd64 gcr.io/knative-releases/knative.dev/net-istio/cmd/controller@sha256:f253b82941c2220181cee80d7488fe1cefce9d49ab30bdb54bcb8c76515f7a26
docker tag gcr.io/knative-releases/knative.dev/net-istio/cmd/controller@sha256:f253b82941c2220181cee80d7488fe1cefce9d49ab30bdb54bcb8c76515f7a26 ghcr.io/lanzhiwang/knative-releases/knative.dev/net-istio/cmd/controller:v1.2.0
docker push ghcr.io/lanzhiwang/knative-releases/knative.dev/net-istio/cmd/controller:v1.2.0

docker pull --platform linux/amd64 gcr.io/knative-releases/knative.dev/net-istio/cmd/webhook@sha256:a705c1ea8e9e556f860314fe055082fbe3cde6a924c29291955f98d979f8185e
docker tag gcr.io/knative-releases/knative.dev/net-istio/cmd/webhook@sha256:a705c1ea8e9e556f860314fe055082fbe3cde6a924c29291955f98d979f8185e ghcr.io/lanzhiwang/knative-releases/knative.dev/net-istio/cmd/webhook:v1.2.0
docker push ghcr.io/lanzhiwang/knative-releases/knative.dev/net-istio/cmd/webhook:v1.2.0

docker pull --platform linux/amd64 gcr.io/knative-releases/knative.dev/serving/cmd/webhook@sha256:9084ea8498eae3c6c4364a397d66516a25e48488f4a9871ef765fa554ba483f0
docker tag gcr.io/knative-releases/knative.dev/serving/cmd/webhook@sha256:9084ea8498eae3c6c4364a397d66516a25e48488f4a9871ef765fa554ba483f0 ghcr.io/lanzhiwang/knative-releases/knative.dev/serving/cmd/webhook:v1.2.5
docker push ghcr.io/lanzhiwang/knative-releases/knative.dev/serving/cmd/webhook:v1.2.5

docker pull --platform linux/amd64 gcr.io/knative-releases/knative.dev/serving/cmd/queue@sha256:14415b204ea8d0567235143a6c3377f49cbd35f18dc84dfa4baa7695c2a9b53d
docker tag gcr.io/knative-releases/knative.dev/serving/cmd/queue@sha256:14415b204ea8d0567235143a6c3377f49cbd35f18dc84dfa4baa7695c2a9b53d ghcr.io/lanzhiwang/knative-releases/knative.dev/serving/cmd/queue:v1.2.5
docker push ghcr.io/lanzhiwang/knative-releases/knative.dev/serving/cmd/queue:v1.2.5

############################# Kubeflow namespace

############################# Kubeflow Roles

############################# Kubeflow Istio Resources

############################# Kubeflow Pipelines
# python:3.7
# docker.io/metacontrollerio/metacontroller:v2.0.4

docker pull --platform linux/amd64 gcr.io/google-containers/busybox
docker tag gcr.io/google-containers/busybox ghcr.io/lanzhiwang/google-containers/busybox
docker push ghcr.io/lanzhiwang/google-containers/busybox

docker pull --platform linux/amd64 gcr.io/ml-pipeline/cache-server:2.0.0-alpha.5
docker tag gcr.io/ml-pipeline/cache-server:2.0.0-alpha.5 ghcr.io/lanzhiwang/ml-pipeline/cache-server:2.0.0-alpha.5
docker push ghcr.io/lanzhiwang/ml-pipeline/cache-server:2.0.0-alpha.5

docker pull --platform linux/amd64 gcr.io/ml-pipeline/metadata-envoy:2.0.0-alpha.5
docker tag gcr.io/ml-pipeline/metadata-envoy:2.0.0-alpha.5 ghcr.io/lanzhiwang/ml-pipeline/metadata-envoy:2.0.0-alpha.5
docker push ghcr.io/lanzhiwang/ml-pipeline/metadata-envoy:2.0.0-alpha.5

docker pull --platform linux/amd64 gcr.io/tfx-oss-public/ml_metadata_store_server:1.5.0
docker tag gcr.io/tfx-oss-public/ml_metadata_store_server:1.5.0 ghcr.io/lanzhiwang/tfx-oss-public/ml_metadata_store_server:1.5.0
docker push ghcr.io/lanzhiwang/tfx-oss-public/ml_metadata_store_server:1.5.0

docker pull --platform linux/amd64 gcr.io/ml-pipeline/metadata-writer:2.0.0-alpha.5
docker tag gcr.io/ml-pipeline/metadata-writer:2.0.0-alpha.5 ghcr.io/lanzhiwang/ml-pipeline/metadata-writer:2.0.0-alpha.5
docker push ghcr.io/lanzhiwang/ml-pipeline/metadata-writer:2.0.0-alpha.5

docker pull --platform linux/amd64 gcr.io/ml-pipeline/minio:RELEASE.2019-08-14T20-37-41Z-license-compliance
docker tag gcr.io/ml-pipeline/minio:RELEASE.2019-08-14T20-37-41Z-license-compliance ghcr.io/lanzhiwang/ml-pipeline/minio:RELEASE.2019-08-14T20-37-41Z-license-compliance
docker push ghcr.io/lanzhiwang/ml-pipeline/minio:RELEASE.2019-08-14T20-37-41Z-license-compliance

docker pull --platform linux/amd64 gcr.io/ml-pipeline/api-server:2.0.0-alpha.5
docker tag gcr.io/ml-pipeline/api-server:2.0.0-alpha.5 ghcr.io/lanzhiwang/ml-pipeline/api-server:2.0.0-alpha.5
docker push ghcr.io/lanzhiwang/ml-pipeline/api-server:2.0.0-alpha.5

docker pull --platform linux/amd64 gcr.io/ml-pipeline/persistenceagent:2.0.0-alpha.5
docker tag gcr.io/ml-pipeline/persistenceagent:2.0.0-alpha.5 ghcr.io/lanzhiwang/ml-pipeline/persistenceagent:2.0.0-alpha.5
docker push ghcr.io/lanzhiwang/ml-pipeline/persistenceagent:2.0.0-alpha.5

docker pull --platform linux/amd64 gcr.io/ml-pipeline/scheduledworkflow:2.0.0-alpha.5
docker tag gcr.io/ml-pipeline/scheduledworkflow:2.0.0-alpha.5 ghcr.io/lanzhiwang/ml-pipeline/scheduledworkflow:2.0.0-alpha.5
docker push ghcr.io/lanzhiwang/ml-pipeline/scheduledworkflow:2.0.0-alpha.5

docker pull --platform linux/amd64 gcr.io/ml-pipeline/frontend:2.0.0-alpha.5
docker tag gcr.io/ml-pipeline/frontend:2.0.0-alpha.5 ghcr.io/lanzhiwang/ml-pipeline/frontend:2.0.0-alpha.5
docker push ghcr.io/lanzhiwang/ml-pipeline/frontend:2.0.0-alpha.5

docker pull --platform linux/amd64 gcr.io/ml-pipeline/viewer-crd-controller:2.0.0-alpha.5
docker tag gcr.io/ml-pipeline/viewer-crd-controller:2.0.0-alpha.5 ghcr.io/lanzhiwang/ml-pipeline/viewer-crd-controller:2.0.0-alpha.5
docker push ghcr.io/lanzhiwang/ml-pipeline/viewer-crd-controller:2.0.0-alpha.5

docker pull --platform linux/amd64 gcr.io/ml-pipeline/visualization-server:2.0.0-alpha.5
docker tag gcr.io/ml-pipeline/visualization-server:2.0.0-alpha.5 ghcr.io/lanzhiwang/ml-pipeline/visualization-server:2.0.0-alpha.5
docker push ghcr.io/lanzhiwang/ml-pipeline/visualization-server:2.0.0-alpha.5

docker pull --platform linux/amd64 gcr.io/ml-pipeline/mysql:5.7-debian
docker tag gcr.io/ml-pipeline/mysql:5.7-debian ghcr.io/lanzhiwang/ml-pipeline/mysql:5.7-debian
docker push ghcr.io/lanzhiwang/ml-pipeline/mysql:5.7-debian

docker pull --platform linux/amd64 gcr.io/ml-pipeline/argoexec:v3.3.8-license-compliance
docker tag gcr.io/ml-pipeline/argoexec:v3.3.8-license-compliance ghcr.io/lanzhiwang/ml-pipeline/argoexec:v3.3.8-license-compliance
docker push ghcr.io/lanzhiwang/ml-pipeline/argoexec:v3.3.8-license-compliance

docker pull --platform linux/amd64 gcr.io/ml-pipeline/workflow-controller:v3.3.8-license-compliance
docker tag gcr.io/ml-pipeline/workflow-controller:v3.3.8-license-compliance ghcr.io/lanzhiwang/ml-pipeline/workflow-controller:v3.3.8-license-compliance
docker push ghcr.io/lanzhiwang/ml-pipeline/workflow-controller:v3.3.8-license-compliance

############################# Katib
# docker.io/kubeflowkatib/earlystopping-medianstop:v0.14.0
# docker.io/kubeflowkatib/file-metrics-collector:v0.14.0
# docker.io/kubeflowkatib/tfevent-metrics-collector:v0.14.0
# docker.io/kubeflowkatib/suggestion-hyperopt:v0.14.0
# docker.io/kubeflowkatib/suggestion-chocolate:v0.14.0
# docker.io/kubeflowkatib/suggestion-hyperband:v0.14.0
# docker.io/kubeflowkatib/suggestion-skopt:v0.14.0
# docker.io/kubeflowkatib/suggestion-goptuna:v0.14.0
# docker.io/kubeflowkatib/suggestion-optuna:v0.14.0
# docker.io/kubeflowkatib/suggestion-enas:v0.14.0
# docker.io/kubeflowkatib/suggestion-darts:v0.14.0
# docker.io/kubeflowkatib/suggestion-pbt:v0.14.0
# docker.io/kubeflowkatib/mxnet-mnist:v0.14.0
# docker.io/kubeflowkatib/enas-cnn-cifar10-cpu:v0.14.0
# docker.io/kubeflowkatib/pytorch-mnist-cpu:v0.14.0
# docker.io/kubeflowkatib/katib-controller:v0.14.0
# docker.io/kubeflowkatib/katib-db-manager:v0.14.0
# mysql:8.0.29
# docker.io/kubeflowkatib/katib-ui:v0.14.0

############################# Central Dashboard
# docker.io/kubeflownotebookswg/centraldashboard:v1.6.1

############################# Admission Webhook
# docker.io/kubeflownotebookswg/poddefaults-webhook:v1.6.1

############################# Jupyter Web App
# kubeflownotebookswg/jupyter-scipy:v1.6.1
# kubeflownotebookswg/jupyter-pytorch-full:v1.6.1
# kubeflownotebookswg/jupyter-pytorch-cuda-full:v1.6.1
# kubeflownotebookswg/jupyter-tensorflow-full:v1.6.1
# kubeflownotebookswg/jupyter-tensorflow-cuda-full:v1.6.1
# kubeflownotebookswg/codeserver-python:v1.6.1
# kubeflownotebookswg/rstudio-tidyverse:v1.6.1
# docker.io/kubeflownotebookswg/jupyter-web-app:v1.6.1

############################# Notebook Controller
# docker.io/kubeflownotebookswg/notebook-controller:v1.6.1

############################# Profiles + KFAM
# docker.io/kubeflownotebookswg/kfam:v1.6.1
# docker.io/kubeflownotebookswg/profile-controller:v1.6.1

############################# Volumes Web App
# docker.io/kubeflownotebookswg/volumes-web-app:v1.6.1

############################# Tensorboards Controller
# tensorflow/tensorflow:2.1.0
# docker.io/kubeflownotebookswg/tensorboard-controller:v1.6.1

docker pull --platform linux/amd64 gcr.io/kubebuilder/kube-rbac-proxy:v0.8.0
docker tag gcr.io/kubebuilder/kube-rbac-proxy:v0.8.0 ghcr.io/lanzhiwang/kubebuilder/kube-rbac-proxy:v0.8.0
docker push ghcr.io/lanzhiwang/kubebuilder/kube-rbac-proxy:v0.8.0

############################# Tensorboard Web App
# docker.io/kubeflownotebookswg/tensorboards-web-app:v1.6.1

############################# Training Operator
# kubeflow/training-operator:v1-e1434f6

############################# User namespace

############################# KServe
# kserve/agent:v0.8.0
# kserve/alibi-explainer:latest
# kserve/aix-explainer:latest
# kserve/art-explainer:latest
# kserve/agent:v0.8.0
# tensorflow/serving:2.6.2
# tensorflow/serving:2.6.2-gpu
# kserve/sklearnserver:v0.8.0
# kserve/xgbserver:v0.8.0
# docker.io/seldonio/mlserver:0.5.3
# kserve/torchserve-kfs:0.5.3
# kserve/torchserve-kfs:0.5.3-gpu
# nvcr.io/nvidia/tritonserver:21.09-py3
# kserve/pmmlserver:v0.8.0
# kserve/lgbserver:v0.8.0
# kserve/paddleserver:v0.8.0
# kserve/storage-initializer:v0.8.0
# kserve/models-web-app:v0.8.0
# kserve/kserve-controller:v0.8.0

docker pull --platform linux/amd64 gcr.io/kubebuilder/kube-rbac-proxy:v0.8.0
docker tag gcr.io/kubebuilder/kube-rbac-proxy:v0.8.0 ghcr.io/lanzhiwang/kubebuilder/kube-rbac-proxy:v0.8.0
docker push ghcr.io/lanzhiwang/kubebuilder/kube-rbac-proxy:v0.8.0
