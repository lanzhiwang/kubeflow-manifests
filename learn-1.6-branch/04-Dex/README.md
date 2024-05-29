## 项目地址

https://github.com/dexidp/dex

```bash
namespace
auth

customresourcedefinition
authcodes.dex.coreos.com

```bash
$ kubectl get crd
NAME                               CREATED AT
authcodes.dex.coreos.com           2024-05-22T02:52:52Z
authrequests.dex.coreos.com        2024-05-22T02:53:25Z
connectors.dex.coreos.com          2024-05-22T02:53:25Z
devicerequests.dex.coreos.com      2024-05-22T02:53:26Z
devicetokens.dex.coreos.com        2024-05-22T02:53:26Z
oauth2clients.dex.coreos.com       2024-05-22T02:53:25Z
offlinesessionses.dex.coreos.com   2024-05-22T02:53:25Z
passwords.dex.coreos.com           2024-05-22T02:53:25Z
refreshtokens.dex.coreos.com       2024-05-22T02:53:25Z
signingkeies.dex.coreos.com        2024-05-22T02:53:25Z
$

$ kubectl -n auth logs -f pod/dex-69b8795859-df75l
time="2024-05-22T02:53:25Z" level=info msg="Dex Version: v2.31.2-dirty, Go Version: go1.17.10, Go OS/ARCH: linux amd64"
time="2024-05-22T02:53:25Z" level=info msg="config using log level: debug"
time="2024-05-22T02:53:25Z" level=info msg="config issuer: http://dex.auth.svc.cluster.local:5556/dex"
time="2024-05-22T02:53:25Z" level=info msg="kubernetes client apiVersion = dex.coreos.com/v1"

time="2024-05-22T02:53:25Z" level=info msg="creating custom Kubernetes resources"

time="2024-05-22T02:53:25Z" level=info msg="checking if custom resource authcodes.dex.coreos.com has already been created..."
time="2024-05-22T02:53:25Z" level=info msg="The custom resource authcodes.dex.coreos.com already available, skipping create"

time="2024-05-22T02:53:25Z" level=info msg="checking if custom resource authrequests.dex.coreos.com has already been created..."
time="2024-05-22T02:53:25Z" level=info msg="failed to list custom resource authrequests.dex.coreos.com, attempting to create: not found"
time="2024-05-22T02:53:25Z" level=error msg="create custom resource authrequests.dex.coreos.com"

time="2024-05-22T02:53:25Z" level=info msg="checking if custom resource oauth2clients.dex.coreos.com has already been created..."
time="2024-05-22T02:53:25Z" level=info msg="failed to list custom resource oauth2clients.dex.coreos.com, attempting to create: not found"
time="2024-05-22T02:53:25Z" level=error msg="create custom resource oauth2clients.dex.coreos.com"

time="2024-05-22T02:53:25Z" level=info msg="checking if custom resource signingkeies.dex.coreos.com has already been created..."
time="2024-05-22T02:53:25Z" level=info msg="failed to list custom resource signingkeies.dex.coreos.com, attempting to create: not found"
time="2024-05-22T02:53:25Z" level=error msg="create custom resource signingkeies.dex.coreos.com"

time="2024-05-22T02:53:25Z" level=info msg="checking if custom resource refreshtokens.dex.coreos.com has already been created..."
time="2024-05-22T02:53:25Z" level=info msg="failed to list custom resource refreshtokens.dex.coreos.com, attempting to create: not found"
time="2024-05-22T02:53:25Z" level=error msg="create custom resource refreshtokens.dex.coreos.com"

time="2024-05-22T02:53:25Z" level=info msg="checking if custom resource passwords.dex.coreos.com has already been created..."
time="2024-05-22T02:53:25Z" level=info msg="failed to list custom resource passwords.dex.coreos.com, attempting to create: not found"
time="2024-05-22T02:53:25Z" level=error msg="create custom resource passwords.dex.coreos.com"

time="2024-05-22T02:53:25Z" level=info msg="checking if custom resource offlinesessionses.dex.coreos.com has already been created..."
time="2024-05-22T02:53:25Z" level=info msg="failed to list custom resource offlinesessionses.dex.coreos.com, attempting to create: not found"
time="2024-05-22T02:53:25Z" level=error msg="create custom resource offlinesessionses.dex.coreos.com"

time="2024-05-22T02:53:25Z" level=info msg="checking if custom resource connectors.dex.coreos.com has already been created..."
time="2024-05-22T02:53:25Z" level=info msg="failed to list custom resource connectors.dex.coreos.com, attempting to create: not found"
time="2024-05-22T02:53:25Z" level=error msg="create custom resource connectors.dex.coreos.com"

time="2024-05-22T02:53:25Z" level=info msg="checking if custom resource devicerequests.dex.coreos.com has already been created..."
time="2024-05-22T02:53:25Z" level=info msg="failed to list custom resource devicerequests.dex.coreos.com, attempting to create: not found"
time="2024-05-22T02:53:26Z" level=error msg="create custom resource devicerequests.dex.coreos.com"

time="2024-05-22T02:53:26Z" level=info msg="checking if custom resource devicetokens.dex.coreos.com has already been created..."
time="2024-05-22T02:53:26Z" level=info msg="failed to list custom resource devicetokens.dex.coreos.com, attempting to create: not found"
time="2024-05-22T02:53:26Z" level=error msg="create custom resource devicetokens.dex.coreos.com"

time="2024-05-22T02:53:26Z" level=info msg="config storage: kubernetes"
time="2024-05-22T02:53:26Z" level=info msg="config static client: Dex Login Application"
time="2024-05-22T02:53:26Z" level=info msg="config connector: local passwords enabled"
time="2024-05-22T02:53:26Z" level=info msg="config skipping approval screen"
time="2024-05-22T02:53:26Z" level=info msg="config refresh tokens rotation enabled: true"
time="2024-05-22T02:53:26Z" level=info msg="keys expired, rotating"
time="2024-05-22T02:53:28Z" level=info msg="keys rotated, next rotation: 2024-05-22 08:53:26.141411431 +0000 UTC"
time="2024-05-22T02:53:28Z" level=info msg="listening (http) on 0.0.0.0:5556"

```

serviceaccount
dex

clusterrole
dex

clusterrolebinding
dex

configmap
dex

secret
dex-oidc-client

service
dex

deployment.apps
dex

virtualservice.networking.istio.io
dex

```

## mlops 示例

```bash
[root@middleware-global ~]# kubectl get authcodes.dex.coreos.com -A
No resources found
[root@middleware-global ~]#

[root@gitee-ai-global-master-1 ~]# kubectl get deploy -n cpaas-system dex -o yaml
apiVersion: apps/v1
kind: Deployment
metadata:
  annotations:
    configmap.reloader.stakater.com/reload: dex-configmap
    deployment.kubernetes.io/revision: "9"
    helm.sh/chart-version: v3.12.9
    helm.sh/original-name: dex
  creationTimestamp: "2023-09-05T08:00:58Z"
  generation: 9
  labels:
    app: dex
    chart: dex-v3.12.9
    helm.sh/chart-name: dex
    helm.sh/release-name: dex
    helm.sh/release-namespace: cpaas-system
    heritage: Helm
    release: dex
    service_name: dex
  name: dex
  namespace: cpaas-system
  resourceVersion: "20374791"
  uid: a44a7c84-33c9-429f-8393-3b3ba0147170
spec:
  progressDeadlineSeconds: 600
  replicas: 2
  revisionHistoryLimit: 10
  selector:
    matchLabels:
      app: dex
      release: dex
  strategy:
    rollingUpdate:
      maxSurge: 1
      maxUnavailable: 1
    type: RollingUpdate
  template:
    metadata:
      annotations:
        sidecar.istio.io/inject: "false"
      creationTimestamp: null
      labels:
        app: dex
        cpaas.io/product: Platform-Center
        release: dex
        service_name: dex
    spec:
      affinity:
        podAntiAffinity:
          requiredDuringSchedulingIgnoredDuringExecution:
          - labelSelector:
              matchExpressions:
              - key: service_name
                operator: In
                values:
                - dex
            topologyKey: kubernetes.io/hostname
      containers:
      - args:
        - --system-namespace=cpaas-system
        - --label-base-domain=cpaas.io
        - --log-level=info
        - --audit-policy-file=/etc/audit/policy.yaml
        - --audit-log-path=/var/audit/cpaas-dex-audit.log
        env:
        - name: PORTAL_NAMESPACE
          value: cpaas-system
        - name: REFRESH_TOKEN_GC
          value: "72"
        - name: STAKATER_DEX_CONFIGMAP_CONFIGMAP
          value: c9510996b6bf028c1e143a3005ef7bd21c633954
        image: 10.0.200.210:11443/ait/dex2:v3.12.8
        imagePullPolicy: IfNotPresent
        livenessProbe:
          failureThreshold: 3
          httpGet:
            path: /dex/healthz
            port: 5556
            scheme: HTTPS
          initialDelaySeconds: 30
          periodSeconds: 30
          successThreshold: 1
          timeoutSeconds: 20
        name: dex
        ports:
        - containerPort: 5556
          name: https
          protocol: TCP
        - containerPort: 8080
          name: http
          protocol: TCP
        readinessProbe:
          failureThreshold: 3
          httpGet:
            path: /dex/healthz
            port: 5556
            scheme: HTTPS
          initialDelaySeconds: 5
          periodSeconds: 30
          successThreshold: 1
          timeoutSeconds: 20
        resources:
          limits:
            cpu: "2"
            memory: 4Gi
          requests:
            cpu: 100m
            memory: 64Mi
        securityContext:
          runAsGroup: 697
          runAsUser: 697
        terminationMessagePath: /dev/termination-log
        terminationMessagePolicy: File
        volumeMounts:
        - mountPath: /etc/dex/cfg
          name: config
        - mountPath: /etc/dex/tls
          name: tls
        - mountPath: /var/audit
          name: audit-log
      dnsPolicy: ClusterFirst
      initContainers:
      - args:
        - -ec
        - |
          chown -R 697:697 /var/audit
        command:
        - /bin/sh
        image: 10.0.200.210:11443/ops/alpine:3.16
        imagePullPolicy: IfNotPresent
        name: volume-permissions
        resources:
          limits:
            cpu: "2"
            memory: 4Gi
          requests:
            cpu: 100m
            memory: 64Mi
        securityContext:
          runAsUser: 0
        terminationMessagePath: /dev/termination-log
        terminationMessagePolicy: File
        volumeMounts:
        - mountPath: /etc/dex/cfg
          name: config
        - mountPath: /etc/dex/tls
          name: tls
        - mountPath: /var/audit
          name: audit-log
      nodeSelector:
        kubernetes.io/os: linux
      restartPolicy: Always
      schedulerName: default-scheduler
      securityContext:
        fsGroup: 697
      serviceAccount: dex
      serviceAccountName: dex
      terminationGracePeriodSeconds: 30
      tolerations:
      - effect: NoSchedule
        key: node-role.kubernetes.io/master
        operator: Exists
      - effect: NoSchedule
        key: node-role.kubernetes.io/control-plane
        operator: Exists
      - effect: NoSchedule
        key: node-role.kubernetes.io/cpaas-system
        operator: Exists
      volumes:
      - configMap:
          defaultMode: 420
          items:
          - key: config.yaml
            path: config.yaml
          name: dex-configmap
        name: config
      - name: tls
        secret:
          defaultMode: 420
          secretName: dex.tls
      - hostPath:
          path: /cpaas/audit
          type: DirectoryOrCreate
        name: audit-log
status:
  availableReplicas: 2
  conditions:
  - lastTransitionTime: "2023-09-05T08:01:29Z"
    lastUpdateTime: "2023-09-05T08:01:29Z"
    message: Deployment has minimum availability.
    reason: MinimumReplicasAvailable
    status: "True"
    type: Available
  - lastTransitionTime: "2023-09-05T08:00:58Z"
    lastUpdateTime: "2023-09-07T06:07:51Z"
    message: ReplicaSet "dex-64d45f49b" has successfully progressed.
    reason: NewReplicaSetAvailable
    status: "True"
    type: Progressing
  observedGeneration: 9
  readyReplicas: 2
  replicas: 2
  updatedReplicas: 2
[root@gitee-ai-global-master-1 ~]#

[root@gitee-ai-global-master-1 ~]# kubectl -n cpaas-system get cm dex-configmap -o yaml
apiVersion: v1
data:
  config.yaml: |
    logger:
      level: info
    issuer: https://10.0.200.210/dex
    storage:
      type: kubernetes
      config:
        inCluster: true
    web:
      https: 0.0.0.0:5556
      tlsCert: /etc/dex/tls/tls.crt
      tlsKey: /etc/dex/tls/tls.key
    grpc:
      addr: 0.0.0.0:5557
    telemetry:
      http: 0.0.0.0:8080
    expiry:
      signingKeys: 6h
      idTokens: 24h
      authRequests: 15m
    oauth2:
      grantSigner: "admin@cpaas.io"
      passwordConnector: local
      responseTypes:
      - code
      - token
      - id_token
      skipApprovalScreen: true
    staticClients:
    - id: alauda-auth
      name: 'Alauda auth'
      secret: ZXhhbXBsZS1hcHAtc2VjcmV0
      redirectURIs:
      - http://10.0.200.210/*
      - https://10.0.200.210/*
      - http://10.0.200.210/*
      - https://10.0.200.210/*
      - http://10.0.200.210:0/*
      - https://10.0.200.210:0/*
      - http://106.13.250.198/*
      - https://106.13.250.198/*
      - http://106.13.250.198:30665/*
      - https://106.13.250.198:30665/*


    authConfig:
      name: auth-config
      client_id: alauda-auth
      enabled: true
      custom_redirect_uri: "{\"console-acp\":\"https://10.0.200.210/console-acp\",\"console-devops\":\"https://10.0.200.210/console-devops\",\"console-asm\":\"https://10.0.200.210/console-asm\",\"console-platform\":\"https://10.0.200.210/console-platform\",\"amp\":\"https://10.0.200.210/console-amp\"}"
      response_type: code
      scopes: "openid,profile,email,groups,ext"
      auth_namespace: cpaas-system

    enablePasswordDB: true
kind: ConfigMap
metadata:
  annotations:
    helm.sh/chart-version: v3.12.9
    helm.sh/original-name: dex-configmap
  creationTimestamp: "2023-09-05T08:00:58Z"
  labels:
    app: dex
    chart: dex-v3.12.9
    helm.sh/chart-name: dex
    helm.sh/release-name: dex
    helm.sh/release-namespace: cpaas-system
    heritage: Helm
    release: dex
  name: dex-configmap
  namespace: cpaas-system
  resourceVersion: "1654824"
  uid: 56254685-8117-45ea-b16a-432d2d6ed040
[root@gitee-ai-global-master-1 ~]#

[root@gitee-ai-global-master-1 ~]# kubectl -n cpaas-system get secret dex.tls -o yaml
apiVersion: v1
data:
  ca.crt: LS0tLS1CRUdJTiBDRVJUSUZJQ0FURS0tLS0tCk1JSURCVENDQWUyZ0F3SUJBZ0lJUWkxdUg4UENpMWd3RFFZSktvWklodmNOQVFFTEJRQXdFREVPTUF3R0ExVUUKQ2hNRlkzQmhZWE13SUJjTk1qTXdPVEExTURjeU5ERTRXaGdQTWpFeU16QTRNVEl3TnpJME1UaGFNQkF4RGpBTQpCZ05WQkFvVEJXTndZV0Z6TUlJQklqQU5CZ2txaGtpRzl3MEJBUUVGQUFPQ0FROEFNSUlCQ2dLQ0FRRUF0V1F3ClJzN0FWTm4rUzAyZU9nK2NNeWFOMWUwMjdTeVhtQ3hVOTJWS1dWMGVBUjBwVG1wakNZQmNZbjdIMHdSTEIyeVMKMDk0andyNWJxMGZCeHFUSHQ5cDJuWFd5Ylkyb1ZvMzFVZzhpZXAzUjdlREtxQ3JOVGJ1ejVkYUZ4Y0dqMGxMcQpwaGhpYjcyK3lNRFltRHhid2ZtUGNKd09zVTBENklHMnpaR2tKUDZQNlhkcXQ0NStvUEJSa3dLMkx3NkgwOTR4ClJ3MElzUks3eWg5S0hpOUt3d0dQa2lXeGhwVEhId1VLZ1ExWExTeit5a3VnaFBYSlg2SFE5aTNUdVNTYTRoVTIKZ0loaTBFWmZjMlVjNGFLYitqb3dheWdPKzBhYWZ5UVJEL1EySjdhdlRnOEd3NVZBWkNlTGJmZ2I4eGZkdExwdwowR2kycENVTU5Od1dQZHl5dFFJREFRQUJvMkV3WHpBT0JnTlZIUThCQWY4RUJBTUNBb1F3SFFZRFZSMGxCQll3CkZBWUlLd1lCQlFVSEF3SUdDQ3NHQVFVRkJ3TUJNQThHQTFVZEV3RUIvd1FGTUFNQkFmOHdIUVlEVlIwT0JCWUUKRk1IeWh4ZFk4T0hud3hybCs3YVUzRmZQd3FVK01BMEdDU3FHU0liM0RRRUJDd1VBQTRJQkFRQ0h5anlIRmI2Swp5L0ZWK3NjV0lJN0FwckN6VGJESVM2c1l0ZUUrZ2tQMzVJYlBYVStNbzE3UFgzTWVheDhaTVZUdUdOL2pyNDA0CkFvbnNTOVVwVXhFUm5qMFFFZWs2SnhrWm5BUFBqdmN4ZTN2bVRiRWd2aVI1cU14Uno2a3VGdVJvOU1qOUFYL3kKNWVQNFVETzdWRDNRd2VpODJDU2tZYUF2ZVFDSzRrbkxnb3FzNCtyZkdSeGI2VnAyOVl0ckZJbzd6aGJpazBuKwpLMTBMZzMxMmZJM1MrWDF3OHpETFJxK1hjb01ESDVpOHU1a3NTSlY4b1NMWlVXSG9nUFdZQVpYNHdESyt5bDZrCk1yZ2xrTUlnQ2JXMFlRcDhqZENpRjVLemt2YS8yRmpXSWZUd3F0d0tVSFNXMVBDNTB5UmxZNm45SUw0Um10bC8KMmFkUldLQ1VVWWVmCi0tLS0tRU5EIENFUlRJRklDQVRFLS0tLS0K
  tls.crt: LS0tLS1CRUdJTiBDRVJUSUZJQ0FURS0tLS0tCk1JSURJekNDQWd1Z0F3SUJBZ0lRUFdtN1I0SzdqWXhvd2ZCTUlKNldPREFOQmdrcWhraUc5dzBCQVFzRkFEQVEKTVE0d0RBWURWUVFLRXdWamNHRmhjekFlRncweU16QTVNRGN3TmpBM01UbGFGdzB6TXpBNU1EUXdOakEzTVRsYQpNQkl4RURBT0JnTlZCQW9UQjJ0MVltVXRZMkV3Z2dFaU1BMEdDU3FHU0liM0RRRUJBUVVBQTRJQkR3QXdnZ0VLCkFvSUJBUURHSXA3NkFabjJDZkt1dUhNSjdzNTVqZjhWZ3dMTDBDdmI3RXAvdXpjWGxuSFFsajFnQjZxZDZxTDQKbGZjVkdKYzdjWmdwVDNKdThMenhoa3BHcEl4T3FubUdxenhuTDZyeTROdlVrRThCNUJaR0t3Vi9jTDFnQVRrbgpiazNWQXc0MmxRMzJ4cnVMSEZKeldPZ0V5RjJCVzVzU2VrTklkaWdKWTF0SnVGK3RpajhIVFhxZXdxTmMvbGJZCjFrcm5tZEk1UFNHdDlnSTFXZ0JJTHQ0MHFVRWw1NXV3NnZjNjlBRURYbkhPTEVPMnNPeTduK2kra21Rd3JpbUYKQkdBN1pqcGFDNmFkc2FrSjVCRWs2OTZ2bHlwN2cxcmE3dEs0YnY3RWtyczJJSzFtSHBpdDZpdlJRRFg2UmRvRgpMSEdPNXd0YnZ2cXc5TUJCcndrcDc1U1d1a0MzQWdNQkFBR2pkekIxTUE0R0ExVWREd0VCL3dRRUF3SUZvREFNCkJnTlZIUk1CQWY4RUFqQUFNQjhHQTFVZEl3UVlNQmFBRk1IeWh4ZFk4T0hud3hybCs3YVUzRmZQd3FVK01EUUcKQTFVZEVRUXRNQ3VDQldOd1lXRnpod1IvQUFBQmh3UUtBTWpTaHdRS0FNalNod1FLQU1qU2h3UnFEZnJHaHdScQpEZnJHTUEwR0NTcUdTSWIzRFFFQkN3VUFBNElCQVFBVFcxenYvSVlxanFnWDg5Qk9DNHdsTG1pNFRkYVZhb25pCmVGRTZMdW5jc1hyVjdSUXN4MTd6Y2JGbUpUTWlQL05Wa0VwUXVaSTdiUlVBZjVRYWRJNXBpUXJwU3R2bWs5ZFQKcU1iaE1ucXFPRCtidUlzSEEwb0VpMEVFZ1lWODFGV0FsNTdHT2IrcUlnZjI0ZklNSExyWDA5L200Rmd6VzJBVgp3eUswRGpUYW04ckNyWFhMZ2M5T3g3QnZISmFtS2N0ZDhlQTNMWXFDc2FwZ3RvdkNxVWpCNVAxbWxDNm0zWDBvCmNlTVlySW9iUjFaQVNQOUFmV3ZNWk9BblBjRlRKMkpmZEdSS090dFVxcTRBNXQ2R2ZBQkdMci9MRDBIYk5HWEkKWk1XM2VENjFORXVFR2tLU1pEbG5pQmh4WXRaSGovZUYxVVQxeFJjRy9PUVowM0JrR0dMZgotLS0tLUVORCBDRVJUSUZJQ0FURS0tLS0tCg==
  tls.key: LS0tLS1CRUdJTiBSU0EgUFJJVkFURSBLRVktLS0tLQpNSUlFcEFJQkFBS0NBUUVBeGlLZStnR1o5Z255cnJoekNlN09lWTMvRllNQ3k5QXIyK3hLZjdzM0Y1WngwSlk5CllBZXFuZXFpK0pYM0ZSaVhPM0dZS1U5eWJ2Qzg4WVpLUnFTTVRxcDVocXM4WnkrcTh1RGIxSkJQQWVRV1Jpc0YKZjNDOVlBRTVKMjVOMVFNT05wVU45c2E3aXh4U2Mxam9CTWhkZ1Z1YkVucERTSFlvQ1dOYlNiaGZyWW8vQjAxNgpuc0tqWFA1VzJOWks1NW5TT1QwaHJmWUNOVm9BU0M3ZU5LbEJKZWVic09yM092UUJBMTV4eml4RHRyRHN1NS9vCnZwSmtNSzRwaFFSZ08yWTZXZ3VtbmJHcENlUVJKT3ZlcjVjcWU0TmEydTdTdUc3K3hKSzdOaUN0Wmg2WXJlb3IKMFVBMStrWGFCU3h4anVjTFc3NzZzUFRBUWE4SktlK1VscnBBdHdJREFRQUJBb0lCQVFDUWNHeTBsTFpJUnJoRAo1dkwyS3NFYW5BbDVCU2prcTcxTmRkUlppWUdBRUl5b0l0NWJRenQrSTY3cXlXaDJXSmJuSHNodVZSeDNBOGk1Cnljd2I4NWpWUURHWG12MU51OUpEZk9qRTdPNnIwanJxckRJMTFWbzR3cXVIczBIS0o1QVUrbFJUc2t6Ri9MK2UKbHhHTmF3Ty9hYWlDcjk2YzFJWWJVZk1hcXU0VTg0clZ2ZkxOTmc0ZlJ0RmM4b0JWbTBXUFlRZm1pOVNRUnBSbApwRU5CbERLdng5eXAvZ0ZQcm5zUWU0UjVseUd5bTE4OTlzN2dwN3ZuME5nSUFpQVhlcFpoSU9FOC9Eck1oTHp4CkV6d3RMV096TGtKdkpwR2EwVnhuWklwN1J3ZHVVVEdKYWJFVC9YbjkrRFhUV3JvejVwUjR6RDJ3M3NkYnpYd0kKQytIRERpWUJBb0dCQU9UdHdaRXI0Q054bExORW5TZkRlVjAxYjNzNVlSQW96dFplNkUvR2JTM0FEaXZKVHFJSQpTVkF5QWh6R0lFMURQbXpFNytuRnhLOE9ZY21ZcHdLSDNiTHFMaTFYQ2xvaUlZZGF6WDVPODJWbGVOc0Y2MnkvCmJ0dmdCWThKVXk2ZDhtbHBQaUsxZUxlcHZ2eG5qVFFJY0ZJbUZBU0NMZ1lud0Y0Slc3emsyWEIvQW9HQkFOMlEKcXo2YnBYdUV3MllBa2N6WmorKzZZVlIwSWhiRGhsWnRXQ3QyZ3NoeURYOFIwZkQ4NmJ1Z016MUJndnhtYm5YaAova21iRDcyZnZtYW1HRGl5NEQ3dDhLcFRzdGNzc1N0ZHFqandHekViYm9VcFU2UUpSaVJOcDlOYkxTakRQVlVGCkZWaUNsTlgxWVdFOWd3d1FmWW1Ma2FLeG45aDYzdS94Q2U0L21KUEpBb0dBTFdPK2wwdjl1c2xRVkdMc1RmQUIKNWlzc0dXQjlFRGtuR1hYajFiMWY5RXc2QXhCODJMK1AyYWl3cG9mWjY3ZkRic2wxVUFKNFJzVXhPa2xjQTdKdwprSUxCK1JkaTVCQVVXY1AxTG0vMDdrdTZOS0x0MUxmNEFQeGYzY1paaWNxalA2Y3dQSzJDYTlmcUdCMW43OE1rCmtnVWV2dTRZdGZ1M3RtMWdsUWxDMjMwQ2dZRUFpMTEvU1k5UHhPVWFuMk9HVWtzYkxaaVh0aTZpYnAwb045N3AKa2RVbXFIeU5IcnVQeWJ6Y0xJZTFFemZNODRSZXdNbVpVS1UzZm5nbnBKdWZLckxoT05Ra0NJOURNL1BKc1ZSbQpTUkJHbWxuOTU4YTU5TGxjcEdNd1NGTFdrZ2hVNE5Da3Y1ckxrZFdhSGpjNTRmSFJkUjRVU2pqZUthWUg2dmM3CjN0K2owbmtDZ1lBZzZ6SkZxdHUzTDZEci9XYk95NlYxVDB6dWpCVnhFUGxOVE1ER1VrWElXUU1Tdkd4RHJqcnkKUTJKeGtJNE9LUEo0N2tiSDJQcndTUWE5WWp4KzJ6L3N3dVB2MG1INUVVTVRUb2RaWllseHdmK003dUVyaU5QbwpicCs4M3liTVE5MHJPNXViUEhZZUV6ZTBIL0NhbHdLZExDSzU2QlZ2dXVZak9iRXRtL2NWOWc9PQotLS0tLUVORCBSU0EgUFJJVkFURSBLRVktLS0tLQo=
kind: Secret
metadata:
  annotations:
    cert-manager.io/alt-names: cpaas
    cert-manager.io/certificate-name: dex-serving-cert
    cert-manager.io/common-name: ""
    cert-manager.io/ip-sans: 127.0.0.1,10.0.200.210,10.0.200.210,10.0.200.210,106.13.250.198,106.13.250.198
    cert-manager.io/issuer-group: ""
    cert-manager.io/issuer-kind: Issuer
    cert-manager.io/issuer-name: cpaas-ca
    cert-manager.io/uri-sans: ""
  creationTimestamp: "2023-09-05T08:00:58Z"
  name: dex.tls
  namespace: cpaas-system
  resourceVersion: "1654882"
  uid: 3ab52560-cae8-487e-8714-f9bd72e30ead
type: kubernetes.io/tls
[root@gitee-ai-global-master-1 ~]#

[root@gitee-ai-global-master-1 ~]# kubectl -n cpaas-system get secret dex.tls -o jsonpath='{.data.ca\.crt}' | base64 -d > ca.crt
[root@gitee-ai-global-master-1 ~]# kubectl -n cpaas-system get secret dex.tls -o jsonpath='{.data.tls\.crt}' | base64 -d > tls.crt
[root@gitee-ai-global-master-1 ~]# kubectl -n cpaas-system get secret dex.tls -o jsonpath='{.data.tls\.key}' | base64 -d > tls.key
[root@gitee-ai-global-master-1 ~]# openssl x509 -noout -text -in ca.crt
Certificate:
    Data:
        Version: 3 (0x2)
        Serial Number: 4768588663162571608 (0x422d6e1fc3c28b58)
    Signature Algorithm: sha256WithRSAEncryption
        Issuer: O=cpaas
        Validity
            Not Before: Sep  5 07:24:18 2023 GMT
            Not After : Aug 12 07:24:18 2123 GMT
        Subject: O=cpaas
        Subject Public Key Info:
            Public Key Algorithm: rsaEncryption
                Public-Key: (2048 bit)
                Modulus:
                    00:b5:64:30:46:ce:c0:54:d9:fe:4b:4d:9e:3a:0f:
                    9c:33:26:8d:d5:ed:36:ed:2c:97:98:2c:54:f7:65:
                    4a:59:5d:1e:01:1d:29:4e:6a:63:09:80:5c:62:7e:
                    c7:d3:04:4b:07:6c:92:d3:de:23:c2:be:5b:ab:47:
                    c1:c6:a4:c7:b7:da:76:9d:75:b2:6d:8d:a8:56:8d:
                    f5:52:0f:22:7a:9d:d1:ed:e0:ca:a8:2a:cd:4d:bb:
                    b3:e5:d6:85:c5:c1:a3:d2:52:ea:a6:18:62:6f:bd:
                    be:c8:c0:d8:98:3c:5b:c1:f9:8f:70:9c:0e:b1:4d:
                    03:e8:81:b6:cd:91:a4:24:fe:8f:e9:77:6a:b7:8e:
                    7e:a0:f0:51:93:02:b6:2f:0e:87:d3:de:31:47:0d:
                    08:b1:12:bb:ca:1f:4a:1e:2f:4a:c3:01:8f:92:25:
                    b1:86:94:c7:1f:05:0a:81:0d:57:2d:2c:fe:ca:4b:
                    a0:84:f5:c9:5f:a1:d0:f6:2d:d3:b9:24:9a:e2:15:
                    36:80:88:62:d0:46:5f:73:65:1c:e1:a2:9b:fa:3a:
                    30:6b:28:0e:fb:46:9a:7f:24:11:0f:f4:36:27:b6:
                    af:4e:0f:06:c3:95:40:64:27:8b:6d:f8:1b:f3:17:
                    dd:b4:ba:70:d0:68:b6:a4:25:0c:34:dc:16:3d:dc:
                    b2:b5
                Exponent: 65537 (0x10001)
        X509v3 extensions:
            X509v3 Key Usage: critical
                Digital Signature, Certificate Sign
            X509v3 Extended Key Usage: 
                TLS Web Client Authentication, TLS Web Server Authentication
            X509v3 Basic Constraints: critical
                CA:TRUE
            X509v3 Subject Key Identifier: 
                C1:F2:87:17:58:F0:E1:E7:C3:1A:E5:FB:B6:94:DC:57:CF:C2:A5:3E
    Signature Algorithm: sha256WithRSAEncryption
         87:ca:3c:87:15:be:8a:cb:f1:55:fa:c7:16:20:8e:c0:a6:b0:
         b3:4d:b0:c8:4b:ab:18:b5:e1:3e:82:43:f7:e4:86:cf:5d:4f:
         8c:a3:5e:cf:5f:73:1e:6b:1f:19:31:54:ee:18:df:e3:af:8d:
         38:02:89:ec:4b:d5:29:53:11:11:9e:3d:10:11:e9:3a:27:19:
         19:9c:03:cf:8e:f7:31:7b:7b:e6:4d:b1:20:be:24:79:a8:cc:
         51:cf:a9:2e:16:e4:68:f4:c8:fd:01:7f:f2:e5:e3:f8:50:33:
         bb:54:3d:d0:c1:e8:bc:d8:24:a4:61:a0:2f:79:00:8a:e2:49:
         cb:82:8a:ac:e3:ea:df:19:1c:5b:e9:5a:76:f5:8b:6b:14:8a:
         3b:ce:16:e2:93:49:fe:2b:5d:0b:83:7d:76:7c:8d:d2:f9:7d:
         70:f3:30:cb:46:af:97:72:83:03:1f:98:bc:bb:99:2c:48:95:
         7c:a1:22:d9:51:61:e8:80:f5:98:01:95:f8:c0:32:be:ca:5e:
         a4:32:b8:25:90:c2:20:09:b5:b4:61:0a:7c:8d:d0:a2:17:92:
         b3:92:f6:bf:d8:58:d6:21:f4:f0:aa:dc:0a:50:74:96:d4:f0:
         b9:d3:24:65:63:a9:fd:20:be:11:9a:d9:7f:d9:a7:51:58:a0:
         94:51:87:9f
[root@gitee-ai-global-master-1 ~]# openssl x509 -noout -text -in tls.crt
Certificate:
    Data:
        Version: 3 (0x2)
        Serial Number:
            3d:69:bb:47:82:bb:8d:8c:68:c1:f0:4c:20:9e:96:38
    Signature Algorithm: sha256WithRSAEncryption
        Issuer: O=cpaas
        Validity
            Not Before: Sep  7 06:07:19 2023 GMT
            Not After : Sep  4 06:07:19 2033 GMT
        Subject: O=kube-ca
        Subject Public Key Info:
            Public Key Algorithm: rsaEncryption
                Public-Key: (2048 bit)
                Modulus:
                    00:c6:22:9e:fa:01:99:f6:09:f2:ae:b8:73:09:ee:
                    ce:79:8d:ff:15:83:02:cb:d0:2b:db:ec:4a:7f:bb:
                    37:17:96:71:d0:96:3d:60:07:aa:9d:ea:a2:f8:95:
                    f7:15:18:97:3b:71:98:29:4f:72:6e:f0:bc:f1:86:
                    4a:46:a4:8c:4e:aa:79:86:ab:3c:67:2f:aa:f2:e0:
                    db:d4:90:4f:01:e4:16:46:2b:05:7f:70:bd:60:01:
                    39:27:6e:4d:d5:03:0e:36:95:0d:f6:c6:bb:8b:1c:
                    52:73:58:e8:04:c8:5d:81:5b:9b:12:7a:43:48:76:
                    28:09:63:5b:49:b8:5f:ad:8a:3f:07:4d:7a:9e:c2:
                    a3:5c:fe:56:d8:d6:4a:e7:99:d2:39:3d:21:ad:f6:
                    02:35:5a:00:48:2e:de:34:a9:41:25:e7:9b:b0:ea:
                    f7:3a:f4:01:03:5e:71:ce:2c:43:b6:b0:ec:bb:9f:
                    e8:be:92:64:30:ae:29:85:04:60:3b:66:3a:5a:0b:
                    a6:9d:b1:a9:09:e4:11:24:eb:de:af:97:2a:7b:83:
                    5a:da:ee:d2:b8:6e:fe:c4:92:bb:36:20:ad:66:1e:
                    98:ad:ea:2b:d1:40:35:fa:45:da:05:2c:71:8e:e7:
                    0b:5b:be:fa:b0:f4:c0:41:af:09:29:ef:94:96:ba:
                    40:b7
                Exponent: 65537 (0x10001)
        X509v3 extensions:
            X509v3 Key Usage: critical
                Digital Signature, Key Encipherment
            X509v3 Basic Constraints: critical
                CA:FALSE
            X509v3 Authority Key Identifier: 
                keyid:C1:F2:87:17:58:F0:E1:E7:C3:1A:E5:FB:B6:94:DC:57:CF:C2:A5:3E

            X509v3 Subject Alternative Name: 
                DNS:cpaas, IP Address:127.0.0.1, IP Address:10.0.200.210, IP Address:10.0.200.210, IP Address:10.0.200.210, IP Address:106.13.250.198, IP Address:106.13.250.198
    Signature Algorithm: sha256WithRSAEncryption
         13:5b:5c:ef:fc:86:2a:8e:a8:17:f3:d0:4e:0b:8c:25:2e:68:
         b8:4d:d6:95:6a:89:e2:78:51:3a:2e:e9:dc:b1:7a:d5:ed:14:
         2c:c7:5e:f3:71:b1:66:25:33:22:3f:f3:55:90:4a:50:b9:92:
         3b:6d:15:00:7f:94:1a:74:8e:69:89:0a:e9:4a:db:e6:93:d7:
         53:a8:c6:e1:32:7a:aa:38:3f:9b:b8:8b:07:03:4a:04:8b:41:
         04:81:85:7c:d4:55:80:97:9e:c6:39:bf:aa:22:07:f6:e1:f2:
         0c:1c:ba:d7:d3:df:e6:e0:58:33:5b:60:15:c3:22:b4:0e:34:
         da:9b:ca:c2:ad:75:cb:81:cf:4e:c7:b0:6f:1c:96:a6:29:cb:
         5d:f1:e0:37:2d:8a:82:b1:aa:60:b6:8b:c2:a9:48:c1:e4:fd:
         66:94:2e:a6:dd:7d:28:71:e3:18:ac:8a:1b:47:56:40:48:ff:
         40:7d:6b:cc:64:e0:27:3d:c1:53:27:62:5f:74:64:4a:3a:db:
         54:aa:ae:00:e6:de:86:7c:00:46:2e:bf:cb:0f:41:db:34:65:
         c8:64:c5:b7:78:3e:b5:34:4b:84:1a:42:92:64:39:67:88:18:
         71:62:d6:47:8f:f7:85:d5:44:f5:c5:17:06:fc:e4:19:d3:70:
         64:18:62:df
[root@gitee-ai-global-master-1 ~]#
[root@gitee-ai-global-master-1 ~]# openssl rsa -noout -text -in tls.key
[root@gitee-ai-global-master-1 ~]# cat tls.key
-----BEGIN RSA PRIVATE KEY-----
MIIEpAIBAAKCAQEAxiKe+gGZ9gnyrrhzCe7OeY3/FYMCy9Ar2+xKf7s3F5Zx0JY9
YAeqneqi+JX3FRiXO3GYKU9ybvC88YZKRqSMTqp5hqs8Zy+q8uDb1JBPAeQWRisF
f3C9YAE5J25N1QMONpUN9sa7ixxSc1joBMhdgVubEnpDSHYoCWNbSbhfrYo/B016
nsKjXP5W2NZK55nSOT0hrfYCNVoASC7eNKlBJeebsOr3OvQBA15xzixDtrDsu5/o
vpJkMK4phQRgO2Y6WgumnbGpCeQRJOver5cqe4Na2u7SuG7+xJK7NiCtZh6Yreor
0UA1+kXaBSxxjucLW776sPTAQa8JKe+UlrpAtwIDAQABAoIBAQCQcGy0lLZIRrhD
5vL2KsEanAl5BSjkq71NddRZiYGAEIyoIt5bQzt+I67qyWh2WJbnHshuVRx3A8i5
ycwb85jVQDGXmv1Nu9JDfOjE7O6r0jrqrDI11Vo4wquHs0HKJ5AU+lRTskzF/L+e
lxGNawO/aaiCr96c1IYbUfMaqu4U84rVvfLNNg4fRtFc8oBVm0WPYQfmi9SQRpRl
pENBlDKvx9yp/gFPrnsQe4R5lyGym1899s7gp7vn0NgIAiAXepZhIOE8/DrMhLzx
EzwtLWOzLkJvJpGa0VxnZIp7RwduUTGJabET/Xn9+DXTWroz5pR4zD2w3sdbzXwI
C+HDDiYBAoGBAOTtwZEr4CNxlLNEnSfDeV01b3s5YRAoztZe6E/GbS3ADivJTqII
SVAyAhzGIE1DPmzE7+nFxK8OYcmYpwKH3bLqLi1XCloiIYdazX5O82VleNsF62y/
btvgBY8JUy6d8mlpPiK1eLepvvxnjTQIcFImFASCLgYnwF4JW7zk2XB/AoGBAN2Q
qz6bpXuEw2YAkczZj++6YVR0IhbDhlZtWCt2gshyDX8R0fD86bugMz1BgvxmbnXh
/kmbD72fvmamGDiy4D7t8KpTstcssStdqjjwGzEbboUpU6QJRiRNp9NbLSjDPVUF
FViClNX1YWE9gwwQfYmLkaKxn9h63u/xCe4/mJPJAoGALWO+l0v9uslQVGLsTfAB
5issGWB9EDknGXXj1b1f9Ew6AxB82L+P2aiwpofZ67fDbsl1UAJ4RsUxOklcA7Jw
kILB+Rdi5BAUWcP1Lm/07ku6NKLt1Lf4APxf3cZZicqjP6cwPK2Ca9fqGB1n78Mk
kgUevu4Ytfu3tm1glQlC230CgYEAi11/SY9PxOUan2OGUksbLZiXti6ibp0oN97p
kdUmqHyNHruPybzcLIe1EzfM84RewMmZUKU3fngnpJufKrLhONQkCI9DM/PJsVRm
SRBGmln958a59LlcpGMwSFLWkghU4NCkv5rLkdWaHjc54fHRdR4USjjeKaYH6vc7
3t+j0nkCgYAg6zJFqtu3L6Dr/WbOy6V1T0zujBVxEPlNTMDGUkXIWQMSvGxDrjry
Q2JxkI4OKPJ47kbH2PrwSQa9Yjx+2z/swuPv0mH5EUMTTodZZYlxwf+M7uEriNPo
bp+83ybMQ90rO5ubPHYeEze0H/CalwKdLCK56BVvuuYjObEtm/cV9g==
-----END RSA PRIVATE KEY-----
[root@gitee-ai-global-master-1 ~]#


```

