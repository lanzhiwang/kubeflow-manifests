# KNative

```bash
namespace
knative-eventing
knative-serving

customresourcedefinition
apiserversources.sources.knative.dev
brokers.eventing.knative.dev
certificates.networking.internal.knative.dev
channels.messaging.knative.dev
clusterdomainclaims.networking.internal.knative.dev
configurations.serving.knative.dev
containersources.sources.knative.dev
domainmappings.serving.knative.dev
eventtypes.eventing.knative.dev
images.caching.internal.knative.dev
ingresses.networking.internal.knative.dev
metrics.autoscaling.internal.knative.dev
parallels.flows.knative.dev
pingsources.sources.knative.dev
podautoscalers.autoscaling.internal.knative.dev
revisions.serving.knative.dev
routes.serving.knative.dev
sequences.flows.knative.dev
serverlessservices.networking.internal.knative.dev
services.serving.knative.dev
sinkbindings.sources.knative.dev
subscriptions.messaging.knative.dev
triggers.eventing.knative.dev

serviceaccount
cluster-local-gateway-service-account
eventing-controller
eventing-webhook
pingsource-mt-adapter
controller

role
cluster-local-gateway-sds
knative-eventing-webhook

clusterrole
addressable-resolver
broker-addressable-resolver
builtin-podspecable-binding
channel-addressable-resolver
channelable-manipulator
eventing-broker-filter
eventing-broker-ingress
eventing-config-reader
eventing-sources-source-observer
flows-addressable-resolver
knative-bindings-namespaced-admin
knative-eventing-controller
knative-eventing-namespaced-admin
knative-eventing-namespaced-edit
knative-eventing-namespaced-view
knative-eventing-pingsource-mt-adapter
knative-eventing-sources-controller
knative-eventing-webhook
knative-flows-namespaced-admin
knative-messaging-namespaced-admin
knative-serving-addressable-resolver
knative-serving-admin
knative-serving-aggregated-addressable-resolver
knative-serving-core
knative-serving-istio
knative-serving-namespaced-admin
knative-serving-namespaced-edit
knative-serving-namespaced-view
knative-serving-podspecable-binding
knative-sources-namespaced-admin
meta-channelable-manipulator
podspecable-binding
service-addressable-resolver
serving-addressable-resolver
source-observer

rolebinding
cluster-local-gateway-sds
eventing-webhook

clusterrolebinding
eventing-controller
eventing-controller-manipulator
eventing-controller-resolver
eventing-controller-source-observer
eventing-controller-sources-controller
eventing-webhook
eventing-webhook-podspecable-binding
eventing-webhook-resolver
knative-eventing-pingsource-mt-adapter
knative-serving-controller-addressable-resolver
knative-serving-controller-admin

configmap
config-br-default-channel
config-br-defaults
config-features
config-kreference-mapping
config-leader-election
config-logging
config-observability
config-ping-defaults
config-tracing
default-ch-webhook
config-autoscaler
config-defaults
config-deployment
config-domain
config-features
config-gc
config-istio
config-leader-election
config-logging
config-network
config-observability
config-tracing

secret
eventing-webhook-certs
domainmapping-webhook-certs
net-istio-webhook-certs
webhook-certs

service
cluster-local-gateway
knative-local-gateway
eventing-webhook
activator-service
autoscaler
controller
domainmapping-webhook
net-istio-webhook
webhook

deployment
cluster-local-gateway
eventing-controller
eventing-webhook
pingsource-mt-adapter
activator
autoscaler
controller
domain-mapping
domainmapping-webhook
net-istio-controller
net-istio-webhook
webhook

poddisruptionbudget
activator-pdb
webhook-pdb
eventing-webhook

horizontalpodautoscaler
eventing-webhook
activator
webhook

mutatingwebhookconfiguration
sinkbindings.webhook.sources.knative.dev
webhook.domainmapping.serving.knative.dev
webhook.eventing.knative.dev
webhook.istio.networking.internal.knative.dev
webhook.serving.knative.dev

validatingwebhookconfiguration
config.webhook.eventing.knative.dev
config.webhook.istio.networking.internal.knative.dev
config.webhook.serving.knative.dev
validation.webhook.domainmapping.serving.knative.dev
validation.webhook.eventing.knative.dev
validation.webhook.serving.knative.dev

#################################################################################

image.caching.internal.knative.dev
queue-proxy

destinationrule.networking.istio.io
knative

gateway.networking.istio.io
cluster-local-gateway
knative-local-gateway

authorizationpolicy.security.istio.io
cluster-local-gateway
activator-service
autoscaler
controller
istio-webhook
webhook

peerauthentication.security.istio.io
domainmapping-webhook
net-istio-webhook
webhook

$

```


