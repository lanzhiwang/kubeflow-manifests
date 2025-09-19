# minikube and kubernetes

```bash
$ minikube version
minikube version: v1.37.0
commit: 65318f4cfff9c12cc87ec9eb8f4cdd57b25047f3
$

$ minikube start --help

$ minikube delete --all=true --purge=true -o text

# 安装方法一
$ https_proxy=http://127.0.0.1:7890 http_proxy=http://127.0.0.1:7890 all_proxy=socks5://127.0.0.1:7890 \
minikube start \
--image-mirror-country='' \
--image-repository='auto' \
--driver='docker' \
--memory='4g' \
--logtostderr \
--iso-url=https://github.com/kubernetes/minikube/releases/download/v1.37.0/minikube-v1.37.0-amd64.iso \
--kubernetes-version='v1.34.0'

# 安装方法二
# 选择的驱动不同
$ https_proxy=http://127.0.0.1:7890 http_proxy=http://127.0.0.1:7890 all_proxy=socks5://127.0.0.1:7890 \
minikube start \
--image-mirror-country='' \
--image-repository='auto' \
--driver='' \
--memory='4g' \
--logtostderr \
--iso-url=https://github.com/kubernetes/minikube/releases/download/v1.37.0/minikube-v1.37.0-amd64.iso \
--kubernetes-version='v1.34.0'

# linux
$ gg /root/minikube-linux-amd64 start \
--image-mirror-country='' \
--image-repository='auto' \
--driver='docker' \
--cpus='16' \
--memory='32g' \
--disk-size='30g' \
--logtostderr \
--iso-url=https://github.com/kubernetes/minikube/releases/download/v1.37.0/minikube-v1.37.0-amd64.iso \
--kubernetes-version='v1.34.0' \
--force=true

# 需要的镜像
registry.k8s.io/kube-apiserver            v1.34.0   90550c43ad2b   3 weeks ago    88MB
registry.k8s.io/kube-scheduler            v1.34.0   46169d968e92   3 weeks ago    52.8MB
registry.k8s.io/kube-controller-manager   v1.34.0   a0af72f2ec6d   3 weeks ago    74.9MB
registry.k8s.io/kube-proxy                v1.34.0   df0860106674   3 weeks ago    71.9MB
registry.k8s.io/etcd                      3.6.4-0   5f1f5298c888   8 weeks ago    195MB
registry.k8s.io/pause                     3.10.1    cd073f4c5f6a   3 months ago   736kB
registry.k8s.io/coredns/coredns           v1.12.1   52546a367cc9   5 months ago   75MB
gcr.io/k8s-minikube/storage-provisioner   v5        6e38f40d628d   4 years ago    31.5MB


```

# kubeflow

```bash
$ ./kustomize version
v5.4.3
```

## 修改 imagePullPolicy

```yaml
imagePullPolicy: IfNotPresent
```

## 部署 StorageClass

[local-path-provisioner](https://github.com/rancher/local-path-provisioner)

```yaml
apiVersion: storage.k8s.io/v1
kind: StorageClass
metadata:
  annotations:
    kubectl.kubernetes.io/last-applied-configuration: |
      {"apiVersion":"storage.k8s.io/v1","kind":"StorageClass","metadata":{"annotations":{"storageclass.kubernetes.io/is-default-class":"true"},"labels":{"addonmanager.kubernetes.io/mode":"EnsureExists"},"name":"standard"},"provisioner":"k8s.io/minikube-hostpath"}
    storageclass.kubernetes.io/is-default-class: "true"
  creationTimestamp: "2025-09-20T12:02:21Z"
  labels:
    addonmanager.kubernetes.io/mode: EnsureExists
  name: standard
  resourceVersion: "275"
  uid: f8680056-da79-46eb-8b6f-c249f909ba2e
provisioner: k8s.io/minikube-hostpath
reclaimPolicy: Delete
volumeBindingMode: Immediate

```

## 部署

```bash
./kustomize build example | kubectl apply --server-side --force-conflicts -f -
```

```
