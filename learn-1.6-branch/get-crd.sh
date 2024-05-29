#!/usr/bin/env bash

############################# Cert-Manager
echo "############################# Cert-Manager"
echo "********************************* certificaterequests.cert-manager.io *********************************"
kubectl get certificaterequests.cert-manager.io -A
echo ""

echo "********************************* certificates.cert-manager.io *********************************"
kubectl get certificates.cert-manager.io -A
echo ""

echo "********************************* challenges.acme.cert-manager.io *********************************"
kubectl get challenges.acme.cert-manager.io -A
echo ""

echo "********************************* clusterissuers.cert-manager.io *********************************"
kubectl get clusterissuers.cert-manager.io -A
echo ""

echo "********************************* issuers.cert-manager.io *********************************"
kubectl get issuers.cert-manager.io -A
echo ""

echo "********************************* orders.acme.cert-manager.io *********************************"
kubectl get orders.acme.cert-manager.io -A
echo ""

############################# Istio
echo "############################# Istio"
echo "********************************* gateways.networking.istio.io *********************************"
kubectl get gateways.networking.istio.io -A
echo ""

echo "********************************* virtualservices.networking.istio.io *********************************"
kubectl get virtualservices.networking.istio.io -A
echo ""

echo "********************************* destinationrules.networking.istio.io *********************************"
kubectl get destinationrules.networking.istio.io -A
echo ""

echo "********************************* envoyfilters.networking.istio.io *********************************"
kubectl get envoyfilters.networking.istio.io -A
echo ""

echo "********************************* proxyconfigs.networking.istio.io *********************************"
kubectl get proxyconfigs.networking.istio.io -A
echo ""

echo "********************************* serviceentries.networking.istio.io *********************************"
kubectl get serviceentries.networking.istio.io -A
echo ""

echo "********************************* sidecars.networking.istio.io *********************************"
kubectl get sidecars.networking.istio.io -A
echo ""

echo "********************************* workloadgroups.networking.istio.io *********************************"
kubectl get workloadgroups.networking.istio.io -A
echo ""

echo "********************************* workloadentries.networking.istio.io *********************************"
kubectl get workloadentries.networking.istio.io -A
echo ""

echo "********************************* authorizationpolicies.security.istio.io *********************************"
kubectl get authorizationpolicies.security.istio.io -A
echo ""

echo "********************************* peerauthentications.security.istio.io *********************************"
kubectl get peerauthentications.security.istio.io -A
echo ""

echo "********************************* requestauthentications.security.istio.io *********************************"
kubectl get requestauthentications.security.istio.io -A
echo ""

echo "********************************* telemetries.telemetry.istio.io *********************************"
kubectl get telemetries.telemetry.istio.io -A
echo ""

echo "********************************* wasmplugins.extensions.istio.io *********************************"
kubectl get wasmplugins.extensions.istio.io -A
echo ""

echo "********************************* istiooperators.install.istio.io *********************************"
kubectl get istiooperators.install.istio.io -A
echo ""

############################# OIDC Authservice

############################# Dex
echo "############################# Dex"
echo "********************************* authcodes.dex.coreos.com *********************************"
kubectl get authcodes.dex.coreos.com -A
echo ""

echo "********************************* authrequests.dex.coreos.com *********************************"
kubectl get authrequests.dex.coreos.com -A
echo ""

echo "********************************* connectors.dex.coreos.com *********************************"
kubectl get connectors.dex.coreos.com -A
echo ""

echo "********************************* devicerequests.dex.coreos.com *********************************"
kubectl get devicerequests.dex.coreos.com -A
echo ""

echo "********************************* devicetokens.dex.coreos.com *********************************"
kubectl get devicetokens.dex.coreos.com -A
echo ""

echo "********************************* oauth2clients.dex.coreos.com *********************************"
kubectl get oauth2clients.dex.coreos.com -A
echo ""

echo "********************************* offlinesessionses.dex.coreos.com *********************************"
kubectl get offlinesessionses.dex.coreos.com -A
echo ""

echo "********************************* passwords.dex.coreos.com *********************************"
kubectl get passwords.dex.coreos.com -A
echo ""

echo "********************************* refreshtokens.dex.coreos.com *********************************"
kubectl get refreshtokens.dex.coreos.com -A
echo ""

echo "********************************* signingkeies.dex.coreos.com *********************************"
kubectl get signingkeies.dex.coreos.com -A
echo ""

############################# KNative
echo "############################# KNative"
echo "********************************* services.serving.knative.dev *********************************"
kubectl get services.serving.knative.dev -A
echo ""

echo "********************************* routes.serving.knative.dev *********************************"
kubectl get routes.serving.knative.dev -A
echo ""

echo "********************************* revisions.serving.knative.dev *********************************"
kubectl get revisions.serving.knative.dev -A
echo ""

echo "********************************* domainmappings.serving.knative.dev *********************************"
kubectl get domainmappings.serving.knative.dev -A
echo ""

echo "********************************* configurations.serving.knative.dev *********************************"
kubectl get configurations.serving.knative.dev -A
echo ""

echo "********************************* brokers.eventing.knative.dev *********************************"
kubectl get brokers.eventing.knative.dev -A
echo ""

echo "********************************* eventtypes.eventing.knative.dev *********************************"
kubectl get eventtypes.eventing.knative.dev -A
echo ""

echo "********************************* triggers.eventing.knative.dev *********************************"
kubectl get triggers.eventing.knative.dev -A
echo ""

echo "********************************* certificates.networking.internal.knative.dev *********************************"
kubectl get certificates.networking.internal.knative.dev -A
echo ""

echo "********************************* clusterdomainclaims.networking.internal.knative.dev *********************************"
kubectl get clusterdomainclaims.networking.internal.knative.dev -A
echo ""

echo "********************************* ingresses.networking.internal.knative.dev *********************************"
kubectl get ingresses.networking.internal.knative.dev -A
echo ""

echo "********************************* serverlessservices.networking.internal.knative.dev *********************************"
kubectl get serverlessservices.networking.internal.knative.dev -A
echo ""

echo "********************************* apiserversources.sources.knative.dev *********************************"
kubectl get apiserversources.sources.knative.dev -A
echo ""

echo "********************************* containersources.sources.knative.dev *********************************"
kubectl get containersources.sources.knative.dev -A
echo ""

echo "********************************* pingsources.sources.knative.dev *********************************"
kubectl get pingsources.sources.knative.dev -A
echo ""

echo "********************************* authcsinkbindings.sources.knative.devodes *********************************"
kubectl get sinkbindings.sources.knative.dev -A
echo ""

echo "********************************* images.caching.internal.knative.dev *********************************"
kubectl get images.caching.internal.knative.dev -A
echo ""

echo "********************************* channels.messaging.knative.dev *********************************"
kubectl get channels.messaging.knative.dev -A
echo ""

echo "********************************* subscriptions.messaging.knative.dev *********************************"
kubectl get subscriptions.messaging.knative.dev -A
echo ""

echo "********************************* metrics.autoscaling.internal.knative.dev *********************************"
kubectl get metrics.autoscaling.internal.knative.dev -A
echo ""

echo "********************************* podautoscalers.autoscaling.internal.knative.dev *********************************"
kubectl get podautoscalers.autoscaling.internal.knative.dev -A
echo ""

echo "********************************* sequences.flows.knative.dev *********************************"
kubectl get sequences.flows.knative.dev -A
echo ""

echo "********************************* parallels.flows.knative.dev *********************************"
kubectl get parallels.flows.knative.dev -A
echo ""

############################# Kubeflow namespace

############################# Kubeflow Roles

############################# Kubeflow Istio Resources

############################# Kubeflow Pipelines
echo "############################# Kubeflow Pipelines"
echo "********************************* workflows.argoproj.io *********************************"
kubectl get workflows.argoproj.io -A
echo ""

echo "********************************* workflowtaskresults.argoproj.io *********************************"
kubectl get workflowtaskresults.argoproj.io -A
echo ""

echo "********************************* workflowtasksets.argoproj.io *********************************"
kubectl get workflowtasksets.argoproj.io -A
echo ""

echo "********************************* workflowtemplates.argoproj.io *********************************"
kubectl get workflowtemplates.argoproj.io -A
echo ""

echo "********************************* workfloweventbindings.argoproj.io *********************************"
kubectl get workfloweventbindings.argoproj.io -A
echo ""

echo "********************************* clusterworkflowtemplates.argoproj.io *********************************"
kubectl get clusterworkflowtemplates.argoproj.io -A
echo ""

echo "********************************* cronworkflows.argoproj.io *********************************"
kubectl get cronworkflows.argoproj.io -A
echo ""

echo "********************************* compositecontrollers.metacontroller.k8s.io *********************************"
kubectl get compositecontrollers.metacontroller.k8s.io -A
echo ""

echo "********************************* controllerrevisions.metacontroller.k8s.io *********************************"
kubectl get controllerrevisions.metacontroller.k8s.io -A
echo ""

echo "********************************* decoratorcontrollers.metacontroller.k8s.io *********************************"
kubectl get decoratorcontrollers.metacontroller.k8s.io -A
echo ""

echo "********************************* scheduledworkflows.kubeflow.org *********************************"
kubectl get scheduledworkflows.kubeflow.org -A
echo ""

echo "********************************* viewers.kubeflow.org *********************************"
kubectl get viewers.kubeflow.org -A
echo ""

############################# Katib
echo "############################# Katib"
echo "********************************* experiments.kubeflow.org *********************************"
kubectl get experiments.kubeflow.org -A
echo ""

echo "********************************* suggestions.kubeflow.org *********************************"
kubectl get suggestions.kubeflow.org -A
echo ""

echo "********************************* trials.kubeflow.org *********************************"
kubectl get trials.kubeflow.org -A
echo ""

############################# Central Dashboard

############################# Admission Webhook
echo "############################# Admission Webhook"
echo "********************************* poddefaults.kubeflow.org *********************************"
kubectl get poddefaults.kubeflow.org -A
echo ""

############################# Jupyter Web App

############################# Notebook Controller
echo "############################# Notebook Controller"
echo "********************************* notebooks.kubeflow.org *********************************"
kubectl get notebooks.kubeflow.org -A
echo ""

############################# Profiles + KFAM
echo "############################# Profiles + KFAM"
echo "********************************* profiles.kubeflow.org *********************************"
kubectl get profiles.kubeflow.org -A
echo ""

############################# Volumes Web App

############################# Tensorboards Controller
echo "############################# Tensorboards Controller"
echo "********************************* tensorboards.tensorboard.kubeflow.org *********************************"
kubectl get tensorboards.tensorboard.kubeflow.org -A
echo ""

############################# Tensorboard Web App

############################# Training Operator
echo "############################# Training Operator"
echo "********************************* mpijobs.kubeflow.org *********************************"
kubectl get mpijobs.kubeflow.org -A
echo ""

echo "********************************* mxjobs.kubeflow.org *********************************"
kubectl get mxjobs.kubeflow.org -A
echo ""

echo "********************************* pytorchjobs.kubeflow.org *********************************"
kubectl get pytorchjobs.kubeflow.org -A
echo ""

echo "********************************* tfjobs.kubeflow.org *********************************"
kubectl get tfjobs.kubeflow.org -A
echo ""

echo "********************************* xgboostjobs.kubeflow.org *********************************"
kubectl get xgboostjobs.kubeflow.org -A
echo ""

############################# User namespace

############################# KServe
echo "############################# KServe"
echo "********************************* clusterservingruntimes.serving.kserve.io *********************************"
kubectl get clusterservingruntimes.serving.kserve.io -A
echo ""

echo "********************************* inferenceservices.serving.kserve.io *********************************"
kubectl get inferenceservices.serving.kserve.io -A
echo ""

echo "********************************* servingruntimes.serving.kserve.io *********************************"
kubectl get servingruntimes.serving.kserve.io -A
echo ""

echo "********************************* trainedmodels.serving.kserve.io *********************************"
kubectl get trainedmodels.serving.kserve.io -A
echo ""

##########################################################################

# $ ./get-crd.sh
# ############################# Cert-Manager
# ********************************* certificaterequests.cert-manager.io *********************************
# NAMESPACE      NAME                                                         APPROVED   DENIED   READY   ISSUER                                REQUESTOR                                         AGE
# cpaas-system   certmanager.192.168.130.247-etc-kubernetes-kubelet.c-6t5m4                               cpaas-ca                              system:serviceaccount:cert-manager:cert-manager   24h
# cpaas-system   certmanager.192.168.131.37-etc-kubernetes-kubelet.co-grqkr                               cpaas-ca                              system:serviceaccount:cert-manager:cert-manager   24h
# cpaas-system   certmanager.192.168.132.13-etc-kubernetes-kubelet.co-prrk7                               cpaas-ca                              system:serviceaccount:cert-manager:cert-manager   24h
# cpaas-system   certmanager.192.168.140.30-etc-kubernetes-kubelet.co-jtwcm                               cpaas-ca                              system:serviceaccount:cert-manager:cert-manager   24h
# cpaas-system   certmanager.192.168.140.30-etc-kubernetes-pki-apiser-cdq7b                               cpaas-ca                              system:serviceaccount:cert-manager:cert-manager   24h
# cpaas-system   certmanager.192.168.140.30-etc-kubernetes-pki-front-x4p9j                                cpaas-ca                              system:serviceaccount:cert-manager:cert-manager   24h
# cpaas-system   cpaas-system-zzjq8                                           True                True    cpaas-ca                              system:serviceaccount:cert-manager:cert-manager   24h
# cpaas-system   dex.tls-nxkht                                                                            cpaas-ca                              system:serviceaccount:cert-manager:cert-manager   24h
# cpaas-system   kube-prometheus-exporter-node-ca-n9tg6                       True                True    cpaas-ca                              system:serviceaccount:cert-manager:cert-manager   24h
# cpaas-system   metis-serving-cert-spv95                                     True                True    cpaas-ca                              system:serviceaccount:cert-manager:cert-manager   24h
# cpaas-system   prometheus-operator-admission-br5fp                          True                True    cpaas-ca                              system:serviceaccount:cert-manager:cert-manager   24h
# cpaas-system   vela-core-admission-9582h                                    True                True    cpaas-ca                              system:serviceaccount:cert-manager:cert-manager   24h
# cpaas-system   warlock-serving-cert-8nvbw                                   True                True    cpaas-ca                              system:serviceaccount:cert-manager:cert-manager   24h
# kubeflow       admission-webhook-cert-hkt6t                                 True                True    admission-webhook-selfsigned-issuer   system:serviceaccount:cert-manager:cert-manager   18h
# kubeflow       katib-webhook-cert-6gbdm                                     True                True    katib-selfsigned-issuer               system:serviceaccount:cert-manager:cert-manager   18h
# kubeflow       kfp-cache-cert-c2w4q                                         True                True    kfp-cache-selfsigned-issuer           system:serviceaccount:cert-manager:cert-manager   18h
# kubeflow       serving-cert-rbbzx                                           True                True    selfsigned-issuer                     system:serviceaccount:cert-manager:cert-manager   18h

# ********************************* certificates.cert-manager.io *********************************
# NAMESPACE      NAME                                                                         READY   SECRET                                                                       AGE
# cpaas-system   certmanager.192.168.130.247-etc-kubernetes-kubelet.conf                      False   certmanager.192.168.130.247-etc-kubernetes-kubelet.conf                      24h
# cpaas-system   certmanager.192.168.131.37-etc-kubernetes-kubelet.conf                       False   certmanager.192.168.131.37-etc-kubernetes-kubelet.conf                       24h
# cpaas-system   certmanager.192.168.132.13-etc-kubernetes-kubelet.conf                       False   certmanager.192.168.132.13-etc-kubernetes-kubelet.conf                       24h
# cpaas-system   certmanager.192.168.140.30-etc-kubernetes-admin.conf                         True    certmanager.192.168.140.30-etc-kubernetes-admin.conf                         24h
# cpaas-system   certmanager.192.168.140.30-etc-kubernetes-controller-manager.conf            True    certmanager.192.168.140.30-etc-kubernetes-controller-manager.conf            24h
# cpaas-system   certmanager.192.168.140.30-etc-kubernetes-kubelet.conf                       False   certmanager.192.168.140.30-etc-kubernetes-kubelet.conf                       24h
# cpaas-system   certmanager.192.168.140.30-etc-kubernetes-pki-apiserver-etcd-client.crt      True    certmanager.192.168.140.30-etc-kubernetes-pki-apiserver-etcd-client.crt      24h
# cpaas-system   certmanager.192.168.140.30-etc-kubernetes-pki-apiserver-kubelet-client.crt   True    certmanager.192.168.140.30-etc-kubernetes-pki-apiserver-kubelet-client.crt   24h
# cpaas-system   certmanager.192.168.140.30-etc-kubernetes-pki-apiserver.crt                  True    certmanager.192.168.140.30-etc-kubernetes-pki-apiserver.crt                  24h
# cpaas-system   certmanager.192.168.140.30-etc-kubernetes-pki-ca.crt                         True    certmanager.192.168.140.30-etc-kubernetes-pki-ca.crt                         24h
# cpaas-system   certmanager.192.168.140.30-etc-kubernetes-pki-etcd-ca.crt                    True    certmanager.192.168.140.30-etc-kubernetes-pki-etcd-ca.crt                    24h
# cpaas-system   certmanager.192.168.140.30-etc-kubernetes-pki-etcd-healthcheck-client.crt    True    certmanager.192.168.140.30-etc-kubernetes-pki-etcd-healthcheck-client.crt    24h
# cpaas-system   certmanager.192.168.140.30-etc-kubernetes-pki-etcd-peer.crt                  True    certmanager.192.168.140.30-etc-kubernetes-pki-etcd-peer.crt                  24h
# cpaas-system   certmanager.192.168.140.30-etc-kubernetes-pki-etcd-server.crt                True    certmanager.192.168.140.30-etc-kubernetes-pki-etcd-server.crt                24h
# cpaas-system   certmanager.192.168.140.30-etc-kubernetes-pki-front-proxy-ca.crt             True    certmanager.192.168.140.30-etc-kubernetes-pki-front-proxy-ca.crt             24h
# cpaas-system   certmanager.192.168.140.30-etc-kubernetes-pki-front-proxy-client.crt         True    certmanager.192.168.140.30-etc-kubernetes-pki-front-proxy-client.crt         24h
# cpaas-system   certmanager.192.168.140.30-etc-kubernetes-scheduler.conf                     True    certmanager.192.168.140.30-etc-kubernetes-scheduler.conf                     24h
# cpaas-system   cpaas-system                                                                 True    cpaas-system                                                                 24h
# cpaas-system   dex.tls                                                                      False   dex.tls                                                                      24h
# cpaas-system   etcd-ca                                                                      True    etcd-ca                                                                      24h
# cpaas-system   kube-prometheus-exporter-node-ca                                             True    kube-prometheus-exporter-node-ca                                             24h
# cpaas-system   metis-serving-cert                                                           True    metis-serving-cert                                                           24h
# cpaas-system   packageserver-service-cert                                                   True    packageserver-service-cert                                                   24h
# cpaas-system   prometheus-operator-admission                                                True    prometheus-operator-admission                                                24h
# cpaas-system   sentry.tls                                                                   True    sentry.tls                                                                   24h
# cpaas-system   vela-core-admission                                                          True    vela-core-admission                                                          24h
# cpaas-system   warlock-serving-cert                                                         True    warlock-serving-cert                                                         24h
# kubeflow       admission-webhook-cert                                                       True    webhook-certs                                                                18h
# kubeflow       katib-webhook-cert                                                           True    katib-webhook-cert                                                           18h
# kubeflow       kfp-cache-cert                                                               True    webhook-server-tls                                                           18h
# kubeflow       serving-cert                                                                 True    kserve-webhook-server-cert                                                   18h

# ********************************* challenges.acme.cert-manager.io *********************************
# No resources found

# ********************************* clusterissuers.cert-manager.io *********************************
# NAME                           READY   AGE
# cpaas-ca                       True    24h
# kubeflow-self-signing-issuer   True    18h

# ********************************* issuers.cert-manager.io *********************************
# NAMESPACE      NAME                                  READY   AGE
# cpaas-system   cpaas-ca                              True    24h
# kubeflow       admission-webhook-selfsigned-issuer   True    18h
# kubeflow       katib-selfsigned-issuer               True    18h
# kubeflow       kfp-cache-selfsigned-issuer           True    18h
# kubeflow       selfsigned-issuer                     True    18h

# ********************************* orders.acme.cert-manager.io *********************************
# No resources found

# ############################# Istio
# ********************************* gateways.networking.istio.io *********************************
# NAMESPACE         NAME                    AGE
# istio-system      cluster-local-gateway   18h
# istio-system      istio-ingressgateway    18h
# knative-serving   knative-local-gateway   18h
# kubeflow          kubeflow-gateway        18h

# ********************************* virtualservices.networking.istio.io *********************************
# NAMESPACE   NAME                                        GATEWAYS                        HOSTS   AGE
# auth        dex                                         ["kubeflow/kubeflow-gateway"]   ["*"]   18h
# kubeflow    centraldashboard                            ["kubeflow-gateway"]            ["*"]   18h
# kubeflow    jupyter-web-app-jupyter-web-app             ["kubeflow-gateway"]            ["*"]   18h
# kubeflow    katib-ui                                    ["kubeflow-gateway"]            ["*"]   18h
# kubeflow    kserve-models-web-app                       ["kubeflow/kubeflow-gateway"]   ["*"]   18h
# kubeflow    metadata-grpc                               ["kubeflow-gateway"]            ["*"]   18h
# kubeflow    ml-pipeline-ui                              ["kubeflow-gateway"]            ["*"]   18h
# kubeflow    profiles-kfam                               ["kubeflow-gateway"]            ["*"]   18h
# kubeflow    tensorboards-web-app-tensorboards-web-app   ["kubeflow-gateway"]            ["*"]   18h
# kubeflow    volumes-web-app-volumes-web-app             ["kubeflow-gateway"]            ["*"]   18h

# ********************************* destinationrules.networking.istio.io *********************************
# NAMESPACE                   NAME                              HOST                                                         AGE
# knative-serving             knative                           *.knative-serving.svc.cluster.local                          18h
# kubeflow-user-example-com   ml-pipeline-visualizationserver   ml-pipeline-visualizationserver                              93m
# kubeflow                    metadata-grpc-service             metadata-grpc-service.kubeflow.svc.cluster.local             18h
# kubeflow                    ml-pipeline                       ml-pipeline.kubeflow.svc.cluster.local                       18h
# kubeflow                    ml-pipeline-minio                 minio-service.kubeflow.svc.cluster.local                     18h
# kubeflow                    ml-pipeline-mysql                 mysql.kubeflow.svc.cluster.local                             18h
# kubeflow                    ml-pipeline-ui                    ml-pipeline-ui.kubeflow.svc.cluster.local                    18h
# kubeflow                    ml-pipeline-visualizationserver   ml-pipeline-visualizationserver.kubeflow.svc.cluster.local   18h

# ********************************* envoyfilters.networking.istio.io *********************************
# NAMESPACE      NAME                    AGE
# istio-system   authn-filter            18h
# istio-system   stats-filter-1.11       18h
# istio-system   stats-filter-1.12       18h
# istio-system   stats-filter-1.13       18h
# istio-system   stats-filter-1.14       18h
# istio-system   stats-filter-1.15       18h
# istio-system   tcp-stats-filter-1.11   18h
# istio-system   tcp-stats-filter-1.12   18h
# istio-system   tcp-stats-filter-1.13   18h
# istio-system   tcp-stats-filter-1.14   18h
# istio-system   tcp-stats-filter-1.15   18h
# istio-system   x-forwarded-host        18h

# ********************************* proxyconfigs.networking.istio.io *********************************
# No resources found

# ********************************* serviceentries.networking.istio.io *********************************
# No resources found

# ********************************* sidecars.networking.istio.io *********************************
# No resources found

# ********************************* workloadgroups.networking.istio.io *********************************
# No resources found

# ********************************* workloadentries.networking.istio.io *********************************
# No resources found

# ********************************* authorizationpolicies.security.istio.io *********************************
# NAMESPACE                   NAME                              AGE
# istio-system                cluster-local-gateway             18h
# istio-system                global-deny-all                   18h
# istio-system                istio-ingressgateway              18h
# knative-serving             activator-service                 18h
# knative-serving             autoscaler                        18h
# knative-serving             controller                        18h
# knative-serving             istio-webhook                     18h
# knative-serving             webhook                           18h
# kubeflow-user-example-com   ml-pipeline-visualizationserver   93m
# kubeflow-user-example-com   ns-owner-access-istio             93m
# kubeflow                    central-dashboard                 18h
# kubeflow                    kserve-models-web-app             18h
# kubeflow                    metadata-grpc-service             18h
# kubeflow                    minio-service                     18h
# kubeflow                    ml-pipeline                       18h
# kubeflow                    ml-pipeline-ui                    18h
# kubeflow                    ml-pipeline-visualizationserver   18h
# kubeflow                    mysql                             18h
# kubeflow                    profiles-kfam                     18h
# kubeflow                    service-cache-server              18h

# ********************************* peerauthentications.security.istio.io *********************************
# NAMESPACE         NAME                    MODE   AGE
# knative-serving   domainmapping-webhook          18h
# knative-serving   net-istio-webhook              18h
# knative-serving   webhook                        18h

# ********************************* requestauthentications.security.istio.io *********************************
# No resources found

# ********************************* telemetries.telemetry.istio.io *********************************
# No resources found

# ********************************* wasmplugins.extensions.istio.io *********************************
# No resources found

# ********************************* istiooperators.install.istio.io *********************************
# No resources found

# ############################# Dex
# ********************************* authcodes.dex.coreos.com *********************************
# No resources found

# ********************************* authrequests.dex.coreos.com *********************************
# No resources found

# ********************************* connectors.dex.coreos.com *********************************
# No resources found

# ********************************* devicerequests.dex.coreos.com *********************************
# No resources found

# ********************************* devicetokens.dex.coreos.com *********************************
# No resources found

# ********************************* oauth2clients.dex.coreos.com *********************************
# No resources found

# ********************************* offlinesessionses.dex.coreos.com *********************************
# NAMESPACE   NAME            AGE
# auth        upbbfvaeruzog   5h15m

# ********************************* passwords.dex.coreos.com *********************************
# No resources found

# ********************************* refreshtokens.dex.coreos.com *********************************
# No resources found

# ********************************* signingkeies.dex.coreos.com *********************************
# NAMESPACE   NAME                  AGE
# auth        openid-connect-keys   18h

# ############################# KNative
# ********************************* services.serving.knative.dev *********************************
# No resources found

# ********************************* routes.serving.knative.dev *********************************
# No resources found

# ********************************* revisions.serving.knative.dev *********************************
# No resources found

# ********************************* domainmappings.serving.knative.dev *********************************
# No resources found

# ********************************* configurations.serving.knative.dev *********************************
# No resources found

# ********************************* brokers.eventing.knative.dev *********************************
# No resources found

# ********************************* eventtypes.eventing.knative.dev *********************************
# No resources found

# ********************************* triggers.eventing.knative.dev *********************************
# No resources found

# ********************************* certificates.networking.internal.knative.dev *********************************
# No resources found

# ********************************* clusterdomainclaims.networking.internal.knative.dev *********************************
# No resources found

# ********************************* ingresses.networking.internal.knative.dev *********************************
# No resources found

# ********************************* serverlessservices.networking.internal.knative.dev *********************************
# No resources found

# ********************************* apiserversources.sources.knative.dev *********************************
# No resources found

# ********************************* containersources.sources.knative.dev *********************************
# No resources found

# ********************************* pingsources.sources.knative.dev *********************************
# No resources found

# ********************************* authcsinkbindings.sources.knative.devodes *********************************
# No resources found

# ********************************* images.caching.internal.knative.dev *********************************
# NAMESPACE         NAME          IMAGE
# knative-serving   queue-proxy   ghcr.io/lanzhiwang/knative-releases/knative.dev/serving/cmd/queue:v1.2.5

# ********************************* channels.messaging.knative.dev *********************************
# No resources found

# ********************************* subscriptions.messaging.knative.dev *********************************
# No resources found

# ********************************* metrics.autoscaling.internal.knative.dev *********************************
# No resources found

# ********************************* podautoscalers.autoscaling.internal.knative.dev *********************************
# No resources found

# ********************************* sequences.flows.knative.dev *********************************
# No resources found

# ********************************* parallels.flows.knative.dev *********************************
# No resources found

# ############################# Kubeflow Pipelines
# ********************************* workflows.argoproj.io *********************************
# No resources found

# ********************************* workflowtaskresults.argoproj.io *********************************
# No resources found

# ********************************* workflowtasksets.argoproj.io *********************************
# No resources found

# ********************************* workflowtemplates.argoproj.io *********************************
# No resources found

# ********************************* workfloweventbindings.argoproj.io *********************************
# No resources found

# ********************************* clusterworkflowtemplates.argoproj.io *********************************
# No resources found

# ********************************* cronworkflows.argoproj.io *********************************
# No resources found

# ********************************* compositecontrollers.metacontroller.k8s.io *********************************
# NAME                                    AGE
# kubeflow-pipelines-profile-controller   18h

# ********************************* controllerrevisions.metacontroller.k8s.io *********************************
# No resources found

# ********************************* decoratorcontrollers.metacontroller.k8s.io *********************************
# No resources found

# ********************************* scheduledworkflows.kubeflow.org *********************************
# No resources found

# ********************************* viewers.kubeflow.org *********************************
# No resources found

# ############################# Katib
# ********************************* experiments.kubeflow.org *********************************
# No resources found

# ********************************* suggestions.kubeflow.org *********************************
# No resources found

# ********************************* trials.kubeflow.org *********************************
# No resources found

# ############################# Admission Webhook
# ********************************* poddefaults.kubeflow.org *********************************
# No resources found

# ############################# Notebook Controller
# ********************************* notebooks.kubeflow.org *********************************
# No resources found

# ############################# Profiles + KFAM
# ********************************* profiles.kubeflow.org *********************************
# NAME                        AGE
# kubeflow-user-example-com   93m

# ############################# Tensorboards Controller
# ********************************* tensorboards.tensorboard.kubeflow.org *********************************
# No resources found

# ############################# Training Operator
# ********************************* mpijobs.kubeflow.org *********************************
# No resources found

# ********************************* mxjobs.kubeflow.org *********************************
# No resources found

# ********************************* pytorchjobs.kubeflow.org *********************************
# No resources found

# ********************************* tfjobs.kubeflow.org *********************************
# No resources found

# ********************************* xgboostjobs.kubeflow.org *********************************
# No resources found

# ############################# KServe
# ********************************* clusterservingruntimes.serving.kserve.io *********************************
# NAME                        DISABLED   MODELTYPE    CONTAINERS         AGE
# kserve-lgbserver                       lightgbm     kserve-container   18h
# kserve-mlserver                        sklearn      kserve-container   18h
# kserve-paddleserver                    paddle       kserve-container   18h
# kserve-pmmlserver                      pmml         kserve-container   18h
# kserve-sklearnserver                   sklearn      kserve-container   18h
# kserve-tensorflow-serving              tensorflow   kserve-container   18h
# kserve-torchserve                      pytorch      kserve-container   18h
# kserve-tritonserver                    tensorrt     kserve-container   18h
# kserve-xgbserver                       xgboost      kserve-container   18h

# ********************************* inferenceservices.serving.kserve.io *********************************
# No resources found

# ********************************* servingruntimes.serving.kserve.io *********************************
# No resources found

# ********************************* trainedmodels.serving.kserve.io *********************************
# No resources found

# $
