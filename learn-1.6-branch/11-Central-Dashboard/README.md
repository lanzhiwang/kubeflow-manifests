```bash
$ kubectl apply -f learn/11-Central-Dashboard/out.yaml

serviceaccount/centraldashboard created

role.rbac.authorization.k8s.io/centraldashboard created

clusterrole.rbac.authorization.k8s.io/centraldashboard unchanged

rolebinding.rbac.authorization.k8s.io/centraldashboard created

clusterrolebinding.rbac.authorization.k8s.io/centraldashboard unchanged

configmap/centraldashboard-config created
configmap/centraldashboard-parameters created

service/centraldashboard created

deployment.apps/centraldashboard created

virtualservice.networking.istio.io/centraldashboard created

authorizationpolicy.security.istio.io/central-dashboard created
$
```