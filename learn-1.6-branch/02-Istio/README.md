# Istio

```bash
# 在 ACP 上安装
$ kubectl apply -f out.yaml
namespace/istio-system created
customresourcedefinition.apiextensions.k8s.io/authorizationpolicies.security.istio.io created
customresourcedefinition.apiextensions.k8s.io/destinationrules.networking.istio.io created
customresourcedefinition.apiextensions.k8s.io/envoyfilters.networking.istio.io created
customresourcedefinition.apiextensions.k8s.io/gateways.networking.istio.io created
customresourcedefinition.apiextensions.k8s.io/istiooperators.install.istio.io created
customresourcedefinition.apiextensions.k8s.io/peerauthentications.security.istio.io created
customresourcedefinition.apiextensions.k8s.io/proxyconfigs.networking.istio.io created
customresourcedefinition.apiextensions.k8s.io/requestauthentications.security.istio.io created
customresourcedefinition.apiextensions.k8s.io/serviceentries.networking.istio.io created
customresourcedefinition.apiextensions.k8s.io/sidecars.networking.istio.io created
customresourcedefinition.apiextensions.k8s.io/telemetries.telemetry.istio.io created
customresourcedefinition.apiextensions.k8s.io/virtualservices.networking.istio.io created
customresourcedefinition.apiextensions.k8s.io/wasmplugins.extensions.istio.io created
customresourcedefinition.apiextensions.k8s.io/workloadentries.networking.istio.io created
customresourcedefinition.apiextensions.k8s.io/workloadgroups.networking.istio.io created
serviceaccount/istio-ingressgateway-service-account created
serviceaccount/istio-reader-service-account created
serviceaccount/istiod created
serviceaccount/istiod-service-account created
role.rbac.authorization.k8s.io/istio-ingressgateway-sds created
role.rbac.authorization.k8s.io/istiod created
role.rbac.authorization.k8s.io/istiod-istio-system created
clusterrole.rbac.authorization.k8s.io/istio-reader-clusterrole-istio-system created
clusterrole.rbac.authorization.k8s.io/istio-reader-istio-system created
clusterrole.rbac.authorization.k8s.io/istiod-clusterrole-istio-system created
clusterrole.rbac.authorization.k8s.io/istiod-gateway-controller-istio-system created
clusterrole.rbac.authorization.k8s.io/istiod-istio-system created
rolebinding.rbac.authorization.k8s.io/istio-ingressgateway-sds created
rolebinding.rbac.authorization.k8s.io/istiod created
rolebinding.rbac.authorization.k8s.io/istiod-istio-system created
clusterrolebinding.rbac.authorization.k8s.io/istio-reader-clusterrole-istio-system created
clusterrolebinding.rbac.authorization.k8s.io/istio-reader-istio-system created
clusterrolebinding.rbac.authorization.k8s.io/istiod-clusterrole-istio-system created
clusterrolebinding.rbac.authorization.k8s.io/istiod-gateway-controller-istio-system created
clusterrolebinding.rbac.authorization.k8s.io/istiod-istio-system created
configmap/istio created
configmap/istio-sidecar-injector created
service/istio-ingressgateway created
service/istiod created
deployment.apps/istio-ingressgateway created
deployment.apps/istiod created
mutatingwebhookconfiguration.admissionregistration.k8s.io/istio-sidecar-injector created
validatingwebhookconfiguration.admissionregistration.k8s.io/istio-validator-istio-system created

resource mapping not found for name: "stats-filter-1.11" namespace: "istio-system" from "out.yaml": no matches for kind "EnvoyFilter" in version "networking.istio.io/v1alpha3"
ensure CRDs are installed first

resource mapping not found for name: "stats-filter-1.12" namespace: "istio-system" from "out.yaml": no matches for kind "EnvoyFilter" in version "networking.istio.io/v1alpha3"
ensure CRDs are installed first

resource mapping not found for name: "stats-filter-1.13" namespace: "istio-system" from "out.yaml": no matches for kind "EnvoyFilter" in version "networking.istio.io/v1alpha3"
ensure CRDs are installed first

resource mapping not found for name: "stats-filter-1.14" namespace: "istio-system" from "out.yaml": no matches for kind "EnvoyFilter" in version "networking.istio.io/v1alpha3"
ensure CRDs are installed first

resource mapping not found for name: "stats-filter-1.15" namespace: "istio-system" from "out.yaml": no matches for kind "EnvoyFilter" in version "networking.istio.io/v1alpha3"
ensure CRDs are installed first

resource mapping not found for name: "tcp-stats-filter-1.11" namespace: "istio-system" from "out.yaml": no matches for kind "EnvoyFilter" in version "networking.istio.io/v1alpha3"
ensure CRDs are installed first

resource mapping not found for name: "tcp-stats-filter-1.12" namespace: "istio-system" from "out.yaml": no matches for kind "EnvoyFilter" in version "networking.istio.io/v1alpha3"
ensure CRDs are installed first

resource mapping not found for name: "tcp-stats-filter-1.13" namespace: "istio-system" from "out.yaml": no matches for kind "EnvoyFilter" in version "networking.istio.io/v1alpha3"
ensure CRDs are installed first

resource mapping not found for name: "tcp-stats-filter-1.14" namespace: "istio-system" from "out.yaml": no matches for kind "EnvoyFilter" in version "networking.istio.io/v1alpha3"
ensure CRDs are installed first

resource mapping not found for name: "tcp-stats-filter-1.15" namespace: "istio-system" from "out.yaml": no matches for kind "EnvoyFilter" in version "networking.istio.io/v1alpha3"
ensure CRDs are installed first

resource mapping not found for name: "x-forwarded-host" namespace: "istio-system" from "out.yaml": no matches for kind "EnvoyFilter" in version "networking.istio.io/v1alpha3"
ensure CRDs are installed first

resource mapping not found for name: "istio-ingressgateway" namespace: "istio-system" from "out.yaml": no matches for kind "Gateway" in version "networking.istio.io/v1alpha3"
ensure CRDs are installed first

resource mapping not found for name: "global-deny-all" namespace: "istio-system" from "out.yaml": no matches for kind "AuthorizationPolicy" in version "security.istio.io/v1beta1"
ensure CRDs are installed first

resource mapping not found for name: "istio-ingressgateway" namespace: "istio-system" from "out.yaml": no matches for kind "AuthorizationPolicy" in version "security.istio.io/v1beta1"
ensure CRDs are installed first

$

$ kubectl apply -f out.yaml
namespace/istio-system unchanged
customresourcedefinition.apiextensions.k8s.io/authorizationpolicies.security.istio.io unchanged
customresourcedefinition.apiextensions.k8s.io/destinationrules.networking.istio.io unchanged
customresourcedefinition.apiextensions.k8s.io/envoyfilters.networking.istio.io unchanged
customresourcedefinition.apiextensions.k8s.io/gateways.networking.istio.io unchanged
customresourcedefinition.apiextensions.k8s.io/istiooperators.install.istio.io unchanged
customresourcedefinition.apiextensions.k8s.io/peerauthentications.security.istio.io unchanged
customresourcedefinition.apiextensions.k8s.io/proxyconfigs.networking.istio.io unchanged
customresourcedefinition.apiextensions.k8s.io/requestauthentications.security.istio.io unchanged
customresourcedefinition.apiextensions.k8s.io/serviceentries.networking.istio.io unchanged
customresourcedefinition.apiextensions.k8s.io/sidecars.networking.istio.io unchanged
customresourcedefinition.apiextensions.k8s.io/telemetries.telemetry.istio.io unchanged
customresourcedefinition.apiextensions.k8s.io/virtualservices.networking.istio.io unchanged
customresourcedefinition.apiextensions.k8s.io/wasmplugins.extensions.istio.io unchanged
customresourcedefinition.apiextensions.k8s.io/workloadentries.networking.istio.io unchanged
customresourcedefinition.apiextensions.k8s.io/workloadgroups.networking.istio.io unchanged
serviceaccount/istio-ingressgateway-service-account unchanged
serviceaccount/istio-reader-service-account unchanged
serviceaccount/istiod unchanged
serviceaccount/istiod-service-account unchanged
role.rbac.authorization.k8s.io/istio-ingressgateway-sds unchanged
role.rbac.authorization.k8s.io/istiod unchanged
role.rbac.authorization.k8s.io/istiod-istio-system unchanged
clusterrole.rbac.authorization.k8s.io/istio-reader-clusterrole-istio-system unchanged
clusterrole.rbac.authorization.k8s.io/istio-reader-istio-system unchanged
clusterrole.rbac.authorization.k8s.io/istiod-clusterrole-istio-system unchanged
clusterrole.rbac.authorization.k8s.io/istiod-gateway-controller-istio-system unchanged
clusterrole.rbac.authorization.k8s.io/istiod-istio-system unchanged
rolebinding.rbac.authorization.k8s.io/istio-ingressgateway-sds unchanged
rolebinding.rbac.authorization.k8s.io/istiod unchanged
rolebinding.rbac.authorization.k8s.io/istiod-istio-system unchanged
clusterrolebinding.rbac.authorization.k8s.io/istio-reader-clusterrole-istio-system unchanged
clusterrolebinding.rbac.authorization.k8s.io/istio-reader-istio-system unchanged
clusterrolebinding.rbac.authorization.k8s.io/istiod-clusterrole-istio-system unchanged
clusterrolebinding.rbac.authorization.k8s.io/istiod-gateway-controller-istio-system unchanged
clusterrolebinding.rbac.authorization.k8s.io/istiod-istio-system unchanged
configmap/istio unchanged
configmap/istio-sidecar-injector unchanged
service/istio-ingressgateway unchanged
service/istiod unchanged
deployment.apps/istio-ingressgateway configured
deployment.apps/istiod configured
envoyfilter.networking.istio.io/stats-filter-1.11 created
envoyfilter.networking.istio.io/stats-filter-1.12 created
envoyfilter.networking.istio.io/stats-filter-1.13 created
envoyfilter.networking.istio.io/stats-filter-1.14 created
envoyfilter.networking.istio.io/stats-filter-1.15 created
envoyfilter.networking.istio.io/tcp-stats-filter-1.11 created
envoyfilter.networking.istio.io/tcp-stats-filter-1.12 created
envoyfilter.networking.istio.io/tcp-stats-filter-1.13 created
envoyfilter.networking.istio.io/tcp-stats-filter-1.14 created
envoyfilter.networking.istio.io/tcp-stats-filter-1.15 created
envoyfilter.networking.istio.io/x-forwarded-host created
gateway.networking.istio.io/istio-ingressgateway created
authorizationpolicy.security.istio.io/global-deny-all created
authorizationpolicy.security.istio.io/istio-ingressgateway created
mutatingwebhookconfiguration.admissionregistration.k8s.io/istio-sidecar-injector configured
validatingwebhookconfiguration.admissionregistration.k8s.io/istio-validator-istio-system configured
$

#############################################################################

namespace
istio-system

customresourcedefinition
authorizationpolicies.security.istio.io
destinationrules.networking.istio.io
envoyfilters.networking.istio.io
gateways.networking.istio.io
istiooperators.install.istio.io
peerauthentications.security.istio.io
proxyconfigs.networking.istio.io
requestauthentications.security.istio.io
serviceentries.networking.istio.io
sidecars.networking.istio.io
telemetries.telemetry.istio.io
virtualservices.networking.istio.io
wasmplugins.extensions.istio.io
workloadentries.networking.istio.io
workloadgroups.networking.istio.io

serviceaccount
istio-ingressgateway-service-account
istio-reader-service-account
istiod
istiod-service-account

role
istio-ingressgateway-sds
istiod
istiod-istio-system

clusterrole
istio-reader-clusterrole-istio-system
istio-reader-istio-system
istiod-clusterrole-istio-system
istiod-gateway-controller-istio-system
istiod-istio-system

rolebinding
istio-ingressgateway-sds
istiod
istiod-istio-system

clusterrolebinding
istio-reader-clusterrole-istio-system
istio-reader-istio-system
istiod-clusterrole-istio-system
istiod-gateway-controller-istio-system
istiod-istio-system

configmap
istio
istio-sidecar-injector

service
istio-ingressgateway
istiod

deployment.apps
istio-ingressgateway
istiod

mutatingwebhookconfiguration
istio-sidecar-injector

validatingwebhookconfiguration
istio-validator-istio-system

#######################################################

envoyfilter
stats-filter-1.11
stats-filter-1.12
stats-filter-1.13
stats-filter-1.14
stats-filter-1.15
tcp-stats-filter-1.11
tcp-stats-filter-1.12
tcp-stats-filter-1.13
tcp-stats-filter-1.14
tcp-stats-filter-1.15
x-forwarded-host

gateway
istio-ingressgateway

authorizationpolicy
global-deny-all
istio-ingressgateway

```
