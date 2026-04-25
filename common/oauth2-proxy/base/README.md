# oauth2-proxy

## `oauth2-proxy` Deployment

This deployment of `oauth2-proxy` has been configured to align closely with the official
`oauth2-proxy` Helm installation. This approach facilitates easier integration with any
existing `oauth2-proxy` deployments that may already be present on the cluster.
此次 oauth2-proxy 的部署配置与官方配置紧密一致. 使用 Helm 安装 oauth2-proxy. 这种方法可以更轻松地与集群上可能已存在的任何 oauth2-proxy 部署集成.

### Upgrading `oauth2-proxy`

The `oauth2-proxy` component is designed for easy upgrading, thanks to its foundation on the
official `oauth2-proxy` Helm chart. The use of the standard Helm chart simplifies the upgrade
process, closely following the upgrades of the official `oauth2-proxy` releases.
由于 oauth2-proxy 组件基于官方的 oauth2-proxy Helm Chart, 因此其设计便于升级. 使用标准的 Helm Chart 简化了升级过程, 使其与官方 oauth2-proxy 版本的升级紧密同步.

### Stateless Nature of `oauth2-proxy`

`oauth2-proxy` operates as a stateless application. This statelessness simplifies many
aspects of its operation, particularly upgrades, as there are no concerns about complex state
management or data migration. Additionally, while `oauth2-proxy` is integrated into the
Kubernetes environment, this integration is limited to running the application, thereby
minimizing the impact on Kubernetes infrastructure during upgrades.
oauth2-proxy 以无状态应用程序的形式运行. 这种无状态特性简化了其运行的许多方面, 尤其是在升级方面, 因为无需考虑复杂的状态管理或数据迁移. 此外, 虽然 oauth2-proxy 集成到 Kubernetes 环境中, 但这种集成仅限于应用程序的运行, 从而最大限度地减少了升级期间对 Kubernetes 基础设施的影响.

These characteristics make the upgrade process for `oauth2-proxy` more predictable and
manageable in Kubernetes environments.
这些特性使得 oauth2-proxy 在 Kubernetes 环境中的升级过程更加可预测和可管理.
