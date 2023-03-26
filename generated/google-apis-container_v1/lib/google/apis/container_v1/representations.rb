# Copyright 2020 Google LLC
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

require 'date'
require 'google/apis/core/base_service'
require 'google/apis/core/json_representation'
require 'google/apis/core/hashable'
require 'google/apis/errors'

module Google
  module Apis
    module ContainerV1
      
      class AcceleratorConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AddonsConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AdvancedMachineFeatures
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AuthenticatorGroupsConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AutoUpgradeOptions
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Autopilot
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AutoprovisioningNodePoolDefaults
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class BigQueryDestination
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class BinaryAuthorization
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class BlueGreenInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class BlueGreenSettings
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CancelOperationRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CidrBlock
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ClientCertificateConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CloudRunConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Cluster
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ClusterAutoscaling
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ClusterUpdate
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CompleteIpRotationRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CompleteNodePoolUpgradeRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ConfidentialNodes
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ConfigConnectorConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ConsumptionMeteringConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CostManagementConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CreateClusterRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CreateNodePoolRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DnsConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DailyMaintenanceWindow
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DatabaseEncryption
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DefaultSnatStatus
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DnsCacheConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Empty
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class EphemeralStorageLocalSsdConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class FastSocket
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Filter
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Fleet
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GpuSharingConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GatewayApiConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GcePersistentDiskCsiDriverConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GcfsConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GcpFilestoreCsiDriverConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GetJsonWebKeysResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GetOpenIdConfigResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GkeBackupAgentConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class HorizontalPodAutoscaling
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class HttpCacheControlResponseHeader
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class HttpLoadBalancing
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class IlbSubsettingConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class IpAllocationPolicy
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class IdentityServiceConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class IntraNodeVisibilityConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Jwk
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class KubernetesDashboard
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class LegacyAbac
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class LinuxNodeConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListClustersResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListNodePoolsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListOperationsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListUsableSubnetworksResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class LocalNvmeSsdBlockConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class LoggingComponentConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class LoggingConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class LoggingVariantConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class MaintenanceExclusionOptions
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class MaintenancePolicy
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class MaintenanceWindow
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ManagedPrometheusConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class MasterAuth
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class MasterAuthorizedNetworksConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class MaxPodsConstraint
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class MeshCertificates
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Metric
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class MonitoringComponentConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class MonitoringConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class NetworkConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class NetworkPerformanceConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class NetworkPolicy
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class NetworkPolicyConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class NetworkTags
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class NodeConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class NodeConfigDefaults
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class NodeKubeletConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class NodeLabels
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class NodeManagement
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class NodeNetworkConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class NodePool
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class NodePoolAutoConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class NodePoolAutoscaling
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class NodePoolDefaults
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class NodePoolLoggingConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class NodeTaint
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class NodeTaints
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class NotificationConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Operation
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class OperationProgress
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class PlacementPolicy
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class PrivateClusterConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class PrivateClusterMasterGlobalAccessConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class PubSub
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class RecurringTimeWindow
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ReleaseChannel
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ReleaseChannelConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ReservationAffinity
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ResourceLabels
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ResourceLimit
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ResourceUsageExportConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class RollbackNodePoolUpgradeRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SandboxConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SecurityBulletinEvent
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ServerConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ServiceExternalIPsConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SetAddonsConfigRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SetLabelsRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SetLegacyAbacRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SetLocationsRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SetLoggingServiceRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SetMaintenancePolicyRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SetMasterAuthRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SetMonitoringServiceRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SetNetworkPolicyRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SetNodePoolAutoscalingRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SetNodePoolManagementRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SetNodePoolSizeRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ShieldedInstanceConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ShieldedNodes
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class StandardRolloutPolicy
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class StartIpRotationRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Status
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class StatusCondition
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class TimeWindow
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class UpdateClusterRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class UpdateInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class UpdateMasterRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class UpdateNodePoolRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class UpgradeAvailableEvent
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class UpgradeEvent
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class UpgradeSettings
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class UsableSubnetwork
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class UsableSubnetworkSecondaryRange
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class VerticalPodAutoscaling
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class VirtualNic
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class WindowsNodeConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class WorkloadIdentityConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class WorkloadMetadataConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AcceleratorConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :accelerator_count, :numeric_string => true, as: 'acceleratorCount'
          property :accelerator_type, as: 'acceleratorType'
          property :gpu_partition_size, as: 'gpuPartitionSize'
          property :gpu_sharing_config, as: 'gpuSharingConfig', class: Google::Apis::ContainerV1::GpuSharingConfig, decorator: Google::Apis::ContainerV1::GpuSharingConfig::Representation
      
        end
      end
      
      class AddonsConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :cloud_run_config, as: 'cloudRunConfig', class: Google::Apis::ContainerV1::CloudRunConfig, decorator: Google::Apis::ContainerV1::CloudRunConfig::Representation
      
          property :config_connector_config, as: 'configConnectorConfig', class: Google::Apis::ContainerV1::ConfigConnectorConfig, decorator: Google::Apis::ContainerV1::ConfigConnectorConfig::Representation
      
          property :dns_cache_config, as: 'dnsCacheConfig', class: Google::Apis::ContainerV1::DnsCacheConfig, decorator: Google::Apis::ContainerV1::DnsCacheConfig::Representation
      
          property :gce_persistent_disk_csi_driver_config, as: 'gcePersistentDiskCsiDriverConfig', class: Google::Apis::ContainerV1::GcePersistentDiskCsiDriverConfig, decorator: Google::Apis::ContainerV1::GcePersistentDiskCsiDriverConfig::Representation
      
          property :gcp_filestore_csi_driver_config, as: 'gcpFilestoreCsiDriverConfig', class: Google::Apis::ContainerV1::GcpFilestoreCsiDriverConfig, decorator: Google::Apis::ContainerV1::GcpFilestoreCsiDriverConfig::Representation
      
          property :gke_backup_agent_config, as: 'gkeBackupAgentConfig', class: Google::Apis::ContainerV1::GkeBackupAgentConfig, decorator: Google::Apis::ContainerV1::GkeBackupAgentConfig::Representation
      
          property :horizontal_pod_autoscaling, as: 'horizontalPodAutoscaling', class: Google::Apis::ContainerV1::HorizontalPodAutoscaling, decorator: Google::Apis::ContainerV1::HorizontalPodAutoscaling::Representation
      
          property :http_load_balancing, as: 'httpLoadBalancing', class: Google::Apis::ContainerV1::HttpLoadBalancing, decorator: Google::Apis::ContainerV1::HttpLoadBalancing::Representation
      
          property :kubernetes_dashboard, as: 'kubernetesDashboard', class: Google::Apis::ContainerV1::KubernetesDashboard, decorator: Google::Apis::ContainerV1::KubernetesDashboard::Representation
      
          property :network_policy_config, as: 'networkPolicyConfig', class: Google::Apis::ContainerV1::NetworkPolicyConfig, decorator: Google::Apis::ContainerV1::NetworkPolicyConfig::Representation
      
        end
      end
      
      class AdvancedMachineFeatures
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :threads_per_core, :numeric_string => true, as: 'threadsPerCore'
        end
      end
      
      class AuthenticatorGroupsConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :enabled, as: 'enabled'
          property :security_group, as: 'securityGroup'
        end
      end
      
      class AutoUpgradeOptions
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :auto_upgrade_start_time, as: 'autoUpgradeStartTime'
          property :description, as: 'description'
        end
      end
      
      class Autopilot
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :enabled, as: 'enabled'
        end
      end
      
      class AutoprovisioningNodePoolDefaults
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :boot_disk_kms_key, as: 'bootDiskKmsKey'
          property :disk_size_gb, as: 'diskSizeGb'
          property :disk_type, as: 'diskType'
          property :image_type, as: 'imageType'
          property :management, as: 'management', class: Google::Apis::ContainerV1::NodeManagement, decorator: Google::Apis::ContainerV1::NodeManagement::Representation
      
          property :min_cpu_platform, as: 'minCpuPlatform'
          collection :oauth_scopes, as: 'oauthScopes'
          property :service_account, as: 'serviceAccount'
          property :shielded_instance_config, as: 'shieldedInstanceConfig', class: Google::Apis::ContainerV1::ShieldedInstanceConfig, decorator: Google::Apis::ContainerV1::ShieldedInstanceConfig::Representation
      
          property :upgrade_settings, as: 'upgradeSettings', class: Google::Apis::ContainerV1::UpgradeSettings, decorator: Google::Apis::ContainerV1::UpgradeSettings::Representation
      
        end
      end
      
      class BigQueryDestination
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :dataset_id, as: 'datasetId'
        end
      end
      
      class BinaryAuthorization
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :enabled, as: 'enabled'
          property :evaluation_mode, as: 'evaluationMode'
        end
      end
      
      class BlueGreenInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :blue_instance_group_urls, as: 'blueInstanceGroupUrls'
          property :blue_pool_deletion_start_time, as: 'bluePoolDeletionStartTime'
          collection :green_instance_group_urls, as: 'greenInstanceGroupUrls'
          property :green_pool_version, as: 'greenPoolVersion'
          property :phase, as: 'phase'
        end
      end
      
      class BlueGreenSettings
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :node_pool_soak_duration, as: 'nodePoolSoakDuration'
          property :standard_rollout_policy, as: 'standardRolloutPolicy', class: Google::Apis::ContainerV1::StandardRolloutPolicy, decorator: Google::Apis::ContainerV1::StandardRolloutPolicy::Representation
      
        end
      end
      
      class CancelOperationRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :name, as: 'name'
          property :operation_id, as: 'operationId'
          property :project_id, as: 'projectId'
          property :zone, as: 'zone'
        end
      end
      
      class CidrBlock
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :cidr_block, as: 'cidrBlock'
          property :display_name, as: 'displayName'
        end
      end
      
      class ClientCertificateConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :issue_client_certificate, as: 'issueClientCertificate'
        end
      end
      
      class CloudRunConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :disabled, as: 'disabled'
          property :load_balancer_type, as: 'loadBalancerType'
        end
      end
      
      class Cluster
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :addons_config, as: 'addonsConfig', class: Google::Apis::ContainerV1::AddonsConfig, decorator: Google::Apis::ContainerV1::AddonsConfig::Representation
      
          property :authenticator_groups_config, as: 'authenticatorGroupsConfig', class: Google::Apis::ContainerV1::AuthenticatorGroupsConfig, decorator: Google::Apis::ContainerV1::AuthenticatorGroupsConfig::Representation
      
          property :autopilot, as: 'autopilot', class: Google::Apis::ContainerV1::Autopilot, decorator: Google::Apis::ContainerV1::Autopilot::Representation
      
          property :autoscaling, as: 'autoscaling', class: Google::Apis::ContainerV1::ClusterAutoscaling, decorator: Google::Apis::ContainerV1::ClusterAutoscaling::Representation
      
          property :binary_authorization, as: 'binaryAuthorization', class: Google::Apis::ContainerV1::BinaryAuthorization, decorator: Google::Apis::ContainerV1::BinaryAuthorization::Representation
      
          property :cluster_ipv4_cidr, as: 'clusterIpv4Cidr'
          collection :conditions, as: 'conditions', class: Google::Apis::ContainerV1::StatusCondition, decorator: Google::Apis::ContainerV1::StatusCondition::Representation
      
          property :confidential_nodes, as: 'confidentialNodes', class: Google::Apis::ContainerV1::ConfidentialNodes, decorator: Google::Apis::ContainerV1::ConfidentialNodes::Representation
      
          property :cost_management_config, as: 'costManagementConfig', class: Google::Apis::ContainerV1::CostManagementConfig, decorator: Google::Apis::ContainerV1::CostManagementConfig::Representation
      
          property :create_time, as: 'createTime'
          property :current_master_version, as: 'currentMasterVersion'
          property :current_node_count, as: 'currentNodeCount'
          property :current_node_version, as: 'currentNodeVersion'
          property :database_encryption, as: 'databaseEncryption', class: Google::Apis::ContainerV1::DatabaseEncryption, decorator: Google::Apis::ContainerV1::DatabaseEncryption::Representation
      
          property :default_max_pods_constraint, as: 'defaultMaxPodsConstraint', class: Google::Apis::ContainerV1::MaxPodsConstraint, decorator: Google::Apis::ContainerV1::MaxPodsConstraint::Representation
      
          property :description, as: 'description'
          property :enable_kubernetes_alpha, as: 'enableKubernetesAlpha'
          property :enable_tpu, as: 'enableTpu'
          property :endpoint, as: 'endpoint'
          property :etag, as: 'etag'
          property :expire_time, as: 'expireTime'
          property :fleet, as: 'fleet', class: Google::Apis::ContainerV1::Fleet, decorator: Google::Apis::ContainerV1::Fleet::Representation
      
          property :id, as: 'id'
          property :identity_service_config, as: 'identityServiceConfig', class: Google::Apis::ContainerV1::IdentityServiceConfig, decorator: Google::Apis::ContainerV1::IdentityServiceConfig::Representation
      
          property :initial_cluster_version, as: 'initialClusterVersion'
          property :initial_node_count, as: 'initialNodeCount'
          collection :instance_group_urls, as: 'instanceGroupUrls'
          property :ip_allocation_policy, as: 'ipAllocationPolicy', class: Google::Apis::ContainerV1::IpAllocationPolicy, decorator: Google::Apis::ContainerV1::IpAllocationPolicy::Representation
      
          property :label_fingerprint, as: 'labelFingerprint'
          property :legacy_abac, as: 'legacyAbac', class: Google::Apis::ContainerV1::LegacyAbac, decorator: Google::Apis::ContainerV1::LegacyAbac::Representation
      
          property :location, as: 'location'
          collection :locations, as: 'locations'
          property :logging_config, as: 'loggingConfig', class: Google::Apis::ContainerV1::LoggingConfig, decorator: Google::Apis::ContainerV1::LoggingConfig::Representation
      
          property :logging_service, as: 'loggingService'
          property :maintenance_policy, as: 'maintenancePolicy', class: Google::Apis::ContainerV1::MaintenancePolicy, decorator: Google::Apis::ContainerV1::MaintenancePolicy::Representation
      
          property :master_auth, as: 'masterAuth', class: Google::Apis::ContainerV1::MasterAuth, decorator: Google::Apis::ContainerV1::MasterAuth::Representation
      
          property :master_authorized_networks_config, as: 'masterAuthorizedNetworksConfig', class: Google::Apis::ContainerV1::MasterAuthorizedNetworksConfig, decorator: Google::Apis::ContainerV1::MasterAuthorizedNetworksConfig::Representation
      
          property :mesh_certificates, as: 'meshCertificates', class: Google::Apis::ContainerV1::MeshCertificates, decorator: Google::Apis::ContainerV1::MeshCertificates::Representation
      
          property :monitoring_config, as: 'monitoringConfig', class: Google::Apis::ContainerV1::MonitoringConfig, decorator: Google::Apis::ContainerV1::MonitoringConfig::Representation
      
          property :monitoring_service, as: 'monitoringService'
          property :name, as: 'name'
          property :network, as: 'network'
          property :network_config, as: 'networkConfig', class: Google::Apis::ContainerV1::NetworkConfig, decorator: Google::Apis::ContainerV1::NetworkConfig::Representation
      
          property :network_policy, as: 'networkPolicy', class: Google::Apis::ContainerV1::NetworkPolicy, decorator: Google::Apis::ContainerV1::NetworkPolicy::Representation
      
          property :node_config, as: 'nodeConfig', class: Google::Apis::ContainerV1::NodeConfig, decorator: Google::Apis::ContainerV1::NodeConfig::Representation
      
          property :node_ipv4_cidr_size, as: 'nodeIpv4CidrSize'
          property :node_pool_auto_config, as: 'nodePoolAutoConfig', class: Google::Apis::ContainerV1::NodePoolAutoConfig, decorator: Google::Apis::ContainerV1::NodePoolAutoConfig::Representation
      
          property :node_pool_defaults, as: 'nodePoolDefaults', class: Google::Apis::ContainerV1::NodePoolDefaults, decorator: Google::Apis::ContainerV1::NodePoolDefaults::Representation
      
          collection :node_pools, as: 'nodePools', class: Google::Apis::ContainerV1::NodePool, decorator: Google::Apis::ContainerV1::NodePool::Representation
      
          property :notification_config, as: 'notificationConfig', class: Google::Apis::ContainerV1::NotificationConfig, decorator: Google::Apis::ContainerV1::NotificationConfig::Representation
      
          property :private_cluster_config, as: 'privateClusterConfig', class: Google::Apis::ContainerV1::PrivateClusterConfig, decorator: Google::Apis::ContainerV1::PrivateClusterConfig::Representation
      
          property :release_channel, as: 'releaseChannel', class: Google::Apis::ContainerV1::ReleaseChannel, decorator: Google::Apis::ContainerV1::ReleaseChannel::Representation
      
          hash :resource_labels, as: 'resourceLabels'
          property :resource_usage_export_config, as: 'resourceUsageExportConfig', class: Google::Apis::ContainerV1::ResourceUsageExportConfig, decorator: Google::Apis::ContainerV1::ResourceUsageExportConfig::Representation
      
          property :self_link, as: 'selfLink'
          property :services_ipv4_cidr, as: 'servicesIpv4Cidr'
          property :shielded_nodes, as: 'shieldedNodes', class: Google::Apis::ContainerV1::ShieldedNodes, decorator: Google::Apis::ContainerV1::ShieldedNodes::Representation
      
          property :status, as: 'status'
          property :status_message, as: 'statusMessage'
          property :subnetwork, as: 'subnetwork'
          property :tpu_ipv4_cidr_block, as: 'tpuIpv4CidrBlock'
          property :vertical_pod_autoscaling, as: 'verticalPodAutoscaling', class: Google::Apis::ContainerV1::VerticalPodAutoscaling, decorator: Google::Apis::ContainerV1::VerticalPodAutoscaling::Representation
      
          property :workload_identity_config, as: 'workloadIdentityConfig', class: Google::Apis::ContainerV1::WorkloadIdentityConfig, decorator: Google::Apis::ContainerV1::WorkloadIdentityConfig::Representation
      
          property :zone, as: 'zone'
        end
      end
      
      class ClusterAutoscaling
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :autoprovisioning_locations, as: 'autoprovisioningLocations'
          property :autoprovisioning_node_pool_defaults, as: 'autoprovisioningNodePoolDefaults', class: Google::Apis::ContainerV1::AutoprovisioningNodePoolDefaults, decorator: Google::Apis::ContainerV1::AutoprovisioningNodePoolDefaults::Representation
      
          property :autoscaling_profile, as: 'autoscalingProfile'
          property :enable_node_autoprovisioning, as: 'enableNodeAutoprovisioning'
          collection :resource_limits, as: 'resourceLimits', class: Google::Apis::ContainerV1::ResourceLimit, decorator: Google::Apis::ContainerV1::ResourceLimit::Representation
      
        end
      end
      
      class ClusterUpdate
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :desired_addons_config, as: 'desiredAddonsConfig', class: Google::Apis::ContainerV1::AddonsConfig, decorator: Google::Apis::ContainerV1::AddonsConfig::Representation
      
          property :desired_authenticator_groups_config, as: 'desiredAuthenticatorGroupsConfig', class: Google::Apis::ContainerV1::AuthenticatorGroupsConfig, decorator: Google::Apis::ContainerV1::AuthenticatorGroupsConfig::Representation
      
          property :desired_binary_authorization, as: 'desiredBinaryAuthorization', class: Google::Apis::ContainerV1::BinaryAuthorization, decorator: Google::Apis::ContainerV1::BinaryAuthorization::Representation
      
          property :desired_cluster_autoscaling, as: 'desiredClusterAutoscaling', class: Google::Apis::ContainerV1::ClusterAutoscaling, decorator: Google::Apis::ContainerV1::ClusterAutoscaling::Representation
      
          property :desired_cost_management_config, as: 'desiredCostManagementConfig', class: Google::Apis::ContainerV1::CostManagementConfig, decorator: Google::Apis::ContainerV1::CostManagementConfig::Representation
      
          property :desired_database_encryption, as: 'desiredDatabaseEncryption', class: Google::Apis::ContainerV1::DatabaseEncryption, decorator: Google::Apis::ContainerV1::DatabaseEncryption::Representation
      
          property :desired_datapath_provider, as: 'desiredDatapathProvider'
          property :desired_default_snat_status, as: 'desiredDefaultSnatStatus', class: Google::Apis::ContainerV1::DefaultSnatStatus, decorator: Google::Apis::ContainerV1::DefaultSnatStatus::Representation
      
          property :desired_dns_config, as: 'desiredDnsConfig', class: Google::Apis::ContainerV1::DnsConfig, decorator: Google::Apis::ContainerV1::DnsConfig::Representation
      
          property :desired_enable_private_endpoint, as: 'desiredEnablePrivateEndpoint'
          property :desired_gateway_api_config, as: 'desiredGatewayApiConfig', class: Google::Apis::ContainerV1::GatewayApiConfig, decorator: Google::Apis::ContainerV1::GatewayApiConfig::Representation
      
          property :desired_gcfs_config, as: 'desiredGcfsConfig', class: Google::Apis::ContainerV1::GcfsConfig, decorator: Google::Apis::ContainerV1::GcfsConfig::Representation
      
          property :desired_identity_service_config, as: 'desiredIdentityServiceConfig', class: Google::Apis::ContainerV1::IdentityServiceConfig, decorator: Google::Apis::ContainerV1::IdentityServiceConfig::Representation
      
          property :desired_image_type, as: 'desiredImageType'
          property :desired_intra_node_visibility_config, as: 'desiredIntraNodeVisibilityConfig', class: Google::Apis::ContainerV1::IntraNodeVisibilityConfig, decorator: Google::Apis::ContainerV1::IntraNodeVisibilityConfig::Representation
      
          property :desired_l4ilb_subsetting_config, as: 'desiredL4ilbSubsettingConfig', class: Google::Apis::ContainerV1::IlbSubsettingConfig, decorator: Google::Apis::ContainerV1::IlbSubsettingConfig::Representation
      
          collection :desired_locations, as: 'desiredLocations'
          property :desired_logging_config, as: 'desiredLoggingConfig', class: Google::Apis::ContainerV1::LoggingConfig, decorator: Google::Apis::ContainerV1::LoggingConfig::Representation
      
          property :desired_logging_service, as: 'desiredLoggingService'
          property :desired_master_authorized_networks_config, as: 'desiredMasterAuthorizedNetworksConfig', class: Google::Apis::ContainerV1::MasterAuthorizedNetworksConfig, decorator: Google::Apis::ContainerV1::MasterAuthorizedNetworksConfig::Representation
      
          property :desired_master_version, as: 'desiredMasterVersion'
          property :desired_mesh_certificates, as: 'desiredMeshCertificates', class: Google::Apis::ContainerV1::MeshCertificates, decorator: Google::Apis::ContainerV1::MeshCertificates::Representation
      
          property :desired_monitoring_config, as: 'desiredMonitoringConfig', class: Google::Apis::ContainerV1::MonitoringConfig, decorator: Google::Apis::ContainerV1::MonitoringConfig::Representation
      
          property :desired_monitoring_service, as: 'desiredMonitoringService'
          property :desired_node_pool_auto_config_network_tags, as: 'desiredNodePoolAutoConfigNetworkTags', class: Google::Apis::ContainerV1::NetworkTags, decorator: Google::Apis::ContainerV1::NetworkTags::Representation
      
          property :desired_node_pool_autoscaling, as: 'desiredNodePoolAutoscaling', class: Google::Apis::ContainerV1::NodePoolAutoscaling, decorator: Google::Apis::ContainerV1::NodePoolAutoscaling::Representation
      
          property :desired_node_pool_id, as: 'desiredNodePoolId'
          property :desired_node_pool_logging_config, as: 'desiredNodePoolLoggingConfig', class: Google::Apis::ContainerV1::NodePoolLoggingConfig, decorator: Google::Apis::ContainerV1::NodePoolLoggingConfig::Representation
      
          property :desired_node_version, as: 'desiredNodeVersion'
          property :desired_notification_config, as: 'desiredNotificationConfig', class: Google::Apis::ContainerV1::NotificationConfig, decorator: Google::Apis::ContainerV1::NotificationConfig::Representation
      
          property :desired_private_cluster_config, as: 'desiredPrivateClusterConfig', class: Google::Apis::ContainerV1::PrivateClusterConfig, decorator: Google::Apis::ContainerV1::PrivateClusterConfig::Representation
      
          property :desired_private_ipv6_google_access, as: 'desiredPrivateIpv6GoogleAccess'
          property :desired_release_channel, as: 'desiredReleaseChannel', class: Google::Apis::ContainerV1::ReleaseChannel, decorator: Google::Apis::ContainerV1::ReleaseChannel::Representation
      
          property :desired_resource_usage_export_config, as: 'desiredResourceUsageExportConfig', class: Google::Apis::ContainerV1::ResourceUsageExportConfig, decorator: Google::Apis::ContainerV1::ResourceUsageExportConfig::Representation
      
          property :desired_service_external_ips_config, as: 'desiredServiceExternalIpsConfig', class: Google::Apis::ContainerV1::ServiceExternalIPsConfig, decorator: Google::Apis::ContainerV1::ServiceExternalIPsConfig::Representation
      
          property :desired_shielded_nodes, as: 'desiredShieldedNodes', class: Google::Apis::ContainerV1::ShieldedNodes, decorator: Google::Apis::ContainerV1::ShieldedNodes::Representation
      
          property :desired_stack_type, as: 'desiredStackType'
          property :desired_vertical_pod_autoscaling, as: 'desiredVerticalPodAutoscaling', class: Google::Apis::ContainerV1::VerticalPodAutoscaling, decorator: Google::Apis::ContainerV1::VerticalPodAutoscaling::Representation
      
          property :desired_workload_identity_config, as: 'desiredWorkloadIdentityConfig', class: Google::Apis::ContainerV1::WorkloadIdentityConfig, decorator: Google::Apis::ContainerV1::WorkloadIdentityConfig::Representation
      
          property :etag, as: 'etag'
        end
      end
      
      class CompleteIpRotationRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :cluster_id, as: 'clusterId'
          property :name, as: 'name'
          property :project_id, as: 'projectId'
          property :zone, as: 'zone'
        end
      end
      
      class CompleteNodePoolUpgradeRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class ConfidentialNodes
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :enabled, as: 'enabled'
        end
      end
      
      class ConfigConnectorConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :enabled, as: 'enabled'
        end
      end
      
      class ConsumptionMeteringConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :enabled, as: 'enabled'
        end
      end
      
      class CostManagementConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :enabled, as: 'enabled'
        end
      end
      
      class CreateClusterRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :cluster, as: 'cluster', class: Google::Apis::ContainerV1::Cluster, decorator: Google::Apis::ContainerV1::Cluster::Representation
      
          property :parent, as: 'parent'
          property :project_id, as: 'projectId'
          property :zone, as: 'zone'
        end
      end
      
      class CreateNodePoolRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :cluster_id, as: 'clusterId'
          property :node_pool, as: 'nodePool', class: Google::Apis::ContainerV1::NodePool, decorator: Google::Apis::ContainerV1::NodePool::Representation
      
          property :parent, as: 'parent'
          property :project_id, as: 'projectId'
          property :zone, as: 'zone'
        end
      end
      
      class DnsConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :cluster_dns, as: 'clusterDns'
          property :cluster_dns_domain, as: 'clusterDnsDomain'
          property :cluster_dns_scope, as: 'clusterDnsScope'
        end
      end
      
      class DailyMaintenanceWindow
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :duration, as: 'duration'
          property :start_time, as: 'startTime'
        end
      end
      
      class DatabaseEncryption
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :key_name, as: 'keyName'
          property :state, as: 'state'
        end
      end
      
      class DefaultSnatStatus
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :disabled, as: 'disabled'
        end
      end
      
      class DnsCacheConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :enabled, as: 'enabled'
        end
      end
      
      class Empty
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class EphemeralStorageLocalSsdConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :local_ssd_count, as: 'localSsdCount'
        end
      end
      
      class FastSocket
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :enabled, as: 'enabled'
        end
      end
      
      class Filter
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :event_type, as: 'eventType'
        end
      end
      
      class Fleet
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :membership, as: 'membership'
          property :pre_registered, as: 'preRegistered'
          property :project, as: 'project'
        end
      end
      
      class GpuSharingConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :gpu_sharing_strategy, as: 'gpuSharingStrategy'
          property :max_shared_clients_per_gpu, :numeric_string => true, as: 'maxSharedClientsPerGpu'
        end
      end
      
      class GatewayApiConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :channel, as: 'channel'
        end
      end
      
      class GcePersistentDiskCsiDriverConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :enabled, as: 'enabled'
        end
      end
      
      class GcfsConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :enabled, as: 'enabled'
        end
      end
      
      class GcpFilestoreCsiDriverConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :enabled, as: 'enabled'
        end
      end
      
      class GetJsonWebKeysResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :cache_header, as: 'cacheHeader', class: Google::Apis::ContainerV1::HttpCacheControlResponseHeader, decorator: Google::Apis::ContainerV1::HttpCacheControlResponseHeader::Representation
      
          collection :keys, as: 'keys', class: Google::Apis::ContainerV1::Jwk, decorator: Google::Apis::ContainerV1::Jwk::Representation
      
        end
      end
      
      class GetOpenIdConfigResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :cache_header, as: 'cacheHeader', class: Google::Apis::ContainerV1::HttpCacheControlResponseHeader, decorator: Google::Apis::ContainerV1::HttpCacheControlResponseHeader::Representation
      
          collection :claims_supported, as: 'claims_supported'
          collection :grant_types, as: 'grant_types'
          collection :id_token_signing_alg_values_supported, as: 'id_token_signing_alg_values_supported'
          property :issuer, as: 'issuer'
          property :jwks_uri, as: 'jwks_uri'
          collection :response_types_supported, as: 'response_types_supported'
          collection :subject_types_supported, as: 'subject_types_supported'
        end
      end
      
      class GkeBackupAgentConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :enabled, as: 'enabled'
        end
      end
      
      class HorizontalPodAutoscaling
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :disabled, as: 'disabled'
        end
      end
      
      class HttpCacheControlResponseHeader
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :age, :numeric_string => true, as: 'age'
          property :directive, as: 'directive'
          property :expires, as: 'expires'
        end
      end
      
      class HttpLoadBalancing
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :disabled, as: 'disabled'
        end
      end
      
      class IlbSubsettingConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :enabled, as: 'enabled'
        end
      end
      
      class IpAllocationPolicy
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :cluster_ipv4_cidr, as: 'clusterIpv4Cidr'
          property :cluster_ipv4_cidr_block, as: 'clusterIpv4CidrBlock'
          property :cluster_secondary_range_name, as: 'clusterSecondaryRangeName'
          property :create_subnetwork, as: 'createSubnetwork'
          property :ipv6_access_type, as: 'ipv6AccessType'
          property :node_ipv4_cidr, as: 'nodeIpv4Cidr'
          property :node_ipv4_cidr_block, as: 'nodeIpv4CidrBlock'
          property :services_ipv4_cidr, as: 'servicesIpv4Cidr'
          property :services_ipv4_cidr_block, as: 'servicesIpv4CidrBlock'
          property :services_ipv6_cidr_block, as: 'servicesIpv6CidrBlock'
          property :services_secondary_range_name, as: 'servicesSecondaryRangeName'
          property :stack_type, as: 'stackType'
          property :subnet_ipv6_cidr_block, as: 'subnetIpv6CidrBlock'
          property :subnetwork_name, as: 'subnetworkName'
          property :tpu_ipv4_cidr_block, as: 'tpuIpv4CidrBlock'
          property :use_ip_aliases, as: 'useIpAliases'
          property :use_routes, as: 'useRoutes'
        end
      end
      
      class IdentityServiceConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :enabled, as: 'enabled'
        end
      end
      
      class IntraNodeVisibilityConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :enabled, as: 'enabled'
        end
      end
      
      class Jwk
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :alg, as: 'alg'
          property :crv, as: 'crv'
          property :e, as: 'e'
          property :kid, as: 'kid'
          property :kty, as: 'kty'
          property :n, as: 'n'
          property :use, as: 'use'
          property :x, as: 'x'
          property :y, as: 'y'
        end
      end
      
      class KubernetesDashboard
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :disabled, as: 'disabled'
        end
      end
      
      class LegacyAbac
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :enabled, as: 'enabled'
        end
      end
      
      class LinuxNodeConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :cgroup_mode, as: 'cgroupMode'
          hash :sysctls, as: 'sysctls'
        end
      end
      
      class ListClustersResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :clusters, as: 'clusters', class: Google::Apis::ContainerV1::Cluster, decorator: Google::Apis::ContainerV1::Cluster::Representation
      
          collection :missing_zones, as: 'missingZones'
        end
      end
      
      class ListNodePoolsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :node_pools, as: 'nodePools', class: Google::Apis::ContainerV1::NodePool, decorator: Google::Apis::ContainerV1::NodePool::Representation
      
        end
      end
      
      class ListOperationsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :missing_zones, as: 'missingZones'
          collection :operations, as: 'operations', class: Google::Apis::ContainerV1::Operation, decorator: Google::Apis::ContainerV1::Operation::Representation
      
        end
      end
      
      class ListUsableSubnetworksResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :subnetworks, as: 'subnetworks', class: Google::Apis::ContainerV1::UsableSubnetwork, decorator: Google::Apis::ContainerV1::UsableSubnetwork::Representation
      
        end
      end
      
      class LocalNvmeSsdBlockConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :local_ssd_count, as: 'localSsdCount'
        end
      end
      
      class LoggingComponentConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :enable_components, as: 'enableComponents'
        end
      end
      
      class LoggingConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :component_config, as: 'componentConfig', class: Google::Apis::ContainerV1::LoggingComponentConfig, decorator: Google::Apis::ContainerV1::LoggingComponentConfig::Representation
      
        end
      end
      
      class LoggingVariantConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :variant, as: 'variant'
        end
      end
      
      class MaintenanceExclusionOptions
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :scope, as: 'scope'
        end
      end
      
      class MaintenancePolicy
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :resource_version, as: 'resourceVersion'
          property :window, as: 'window', class: Google::Apis::ContainerV1::MaintenanceWindow, decorator: Google::Apis::ContainerV1::MaintenanceWindow::Representation
      
        end
      end
      
      class MaintenanceWindow
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :daily_maintenance_window, as: 'dailyMaintenanceWindow', class: Google::Apis::ContainerV1::DailyMaintenanceWindow, decorator: Google::Apis::ContainerV1::DailyMaintenanceWindow::Representation
      
          hash :maintenance_exclusions, as: 'maintenanceExclusions', class: Google::Apis::ContainerV1::TimeWindow, decorator: Google::Apis::ContainerV1::TimeWindow::Representation
      
          property :recurring_window, as: 'recurringWindow', class: Google::Apis::ContainerV1::RecurringTimeWindow, decorator: Google::Apis::ContainerV1::RecurringTimeWindow::Representation
      
        end
      end
      
      class ManagedPrometheusConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :enabled, as: 'enabled'
        end
      end
      
      class MasterAuth
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :client_certificate, as: 'clientCertificate'
          property :client_certificate_config, as: 'clientCertificateConfig', class: Google::Apis::ContainerV1::ClientCertificateConfig, decorator: Google::Apis::ContainerV1::ClientCertificateConfig::Representation
      
          property :client_key, as: 'clientKey'
          property :cluster_ca_certificate, as: 'clusterCaCertificate'
          property :password, as: 'password'
          property :username, as: 'username'
        end
      end
      
      class MasterAuthorizedNetworksConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :cidr_blocks, as: 'cidrBlocks', class: Google::Apis::ContainerV1::CidrBlock, decorator: Google::Apis::ContainerV1::CidrBlock::Representation
      
          property :enabled, as: 'enabled'
          property :gcp_public_cidrs_access_enabled, as: 'gcpPublicCidrsAccessEnabled'
        end
      end
      
      class MaxPodsConstraint
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :max_pods_per_node, :numeric_string => true, as: 'maxPodsPerNode'
        end
      end
      
      class MeshCertificates
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :enable_certificates, as: 'enableCertificates'
        end
      end
      
      class Metric
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :double_value, as: 'doubleValue'
          property :int_value, :numeric_string => true, as: 'intValue'
          property :name, as: 'name'
          property :string_value, as: 'stringValue'
        end
      end
      
      class MonitoringComponentConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :enable_components, as: 'enableComponents'
        end
      end
      
      class MonitoringConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :component_config, as: 'componentConfig', class: Google::Apis::ContainerV1::MonitoringComponentConfig, decorator: Google::Apis::ContainerV1::MonitoringComponentConfig::Representation
      
          property :managed_prometheus_config, as: 'managedPrometheusConfig', class: Google::Apis::ContainerV1::ManagedPrometheusConfig, decorator: Google::Apis::ContainerV1::ManagedPrometheusConfig::Representation
      
        end
      end
      
      class NetworkConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :datapath_provider, as: 'datapathProvider'
          property :default_snat_status, as: 'defaultSnatStatus', class: Google::Apis::ContainerV1::DefaultSnatStatus, decorator: Google::Apis::ContainerV1::DefaultSnatStatus::Representation
      
          property :dns_config, as: 'dnsConfig', class: Google::Apis::ContainerV1::DnsConfig, decorator: Google::Apis::ContainerV1::DnsConfig::Representation
      
          property :enable_intra_node_visibility, as: 'enableIntraNodeVisibility'
          property :enable_l4ilb_subsetting, as: 'enableL4ilbSubsetting'
          property :gateway_api_config, as: 'gatewayApiConfig', class: Google::Apis::ContainerV1::GatewayApiConfig, decorator: Google::Apis::ContainerV1::GatewayApiConfig::Representation
      
          property :network, as: 'network'
          property :private_ipv6_google_access, as: 'privateIpv6GoogleAccess'
          property :service_external_ips_config, as: 'serviceExternalIpsConfig', class: Google::Apis::ContainerV1::ServiceExternalIPsConfig, decorator: Google::Apis::ContainerV1::ServiceExternalIPsConfig::Representation
      
          property :subnetwork, as: 'subnetwork'
        end
      end
      
      class NetworkPerformanceConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :total_egress_bandwidth_tier, as: 'totalEgressBandwidthTier'
        end
      end
      
      class NetworkPolicy
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :enabled, as: 'enabled'
          property :provider, as: 'provider'
        end
      end
      
      class NetworkPolicyConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :disabled, as: 'disabled'
        end
      end
      
      class NetworkTags
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :tags, as: 'tags'
        end
      end
      
      class NodeConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :accelerators, as: 'accelerators', class: Google::Apis::ContainerV1::AcceleratorConfig, decorator: Google::Apis::ContainerV1::AcceleratorConfig::Representation
      
          property :advanced_machine_features, as: 'advancedMachineFeatures', class: Google::Apis::ContainerV1::AdvancedMachineFeatures, decorator: Google::Apis::ContainerV1::AdvancedMachineFeatures::Representation
      
          property :boot_disk_kms_key, as: 'bootDiskKmsKey'
          property :confidential_nodes, as: 'confidentialNodes', class: Google::Apis::ContainerV1::ConfidentialNodes, decorator: Google::Apis::ContainerV1::ConfidentialNodes::Representation
      
          property :disk_size_gb, as: 'diskSizeGb'
          property :disk_type, as: 'diskType'
          property :ephemeral_storage_local_ssd_config, as: 'ephemeralStorageLocalSsdConfig', class: Google::Apis::ContainerV1::EphemeralStorageLocalSsdConfig, decorator: Google::Apis::ContainerV1::EphemeralStorageLocalSsdConfig::Representation
      
          property :fast_socket, as: 'fastSocket', class: Google::Apis::ContainerV1::FastSocket, decorator: Google::Apis::ContainerV1::FastSocket::Representation
      
          property :gcfs_config, as: 'gcfsConfig', class: Google::Apis::ContainerV1::GcfsConfig, decorator: Google::Apis::ContainerV1::GcfsConfig::Representation
      
          property :gvnic, as: 'gvnic', class: Google::Apis::ContainerV1::VirtualNic, decorator: Google::Apis::ContainerV1::VirtualNic::Representation
      
          property :image_type, as: 'imageType'
          property :kubelet_config, as: 'kubeletConfig', class: Google::Apis::ContainerV1::NodeKubeletConfig, decorator: Google::Apis::ContainerV1::NodeKubeletConfig::Representation
      
          hash :labels, as: 'labels'
          property :linux_node_config, as: 'linuxNodeConfig', class: Google::Apis::ContainerV1::LinuxNodeConfig, decorator: Google::Apis::ContainerV1::LinuxNodeConfig::Representation
      
          property :local_nvme_ssd_block_config, as: 'localNvmeSsdBlockConfig', class: Google::Apis::ContainerV1::LocalNvmeSsdBlockConfig, decorator: Google::Apis::ContainerV1::LocalNvmeSsdBlockConfig::Representation
      
          property :local_ssd_count, as: 'localSsdCount'
          property :logging_config, as: 'loggingConfig', class: Google::Apis::ContainerV1::NodePoolLoggingConfig, decorator: Google::Apis::ContainerV1::NodePoolLoggingConfig::Representation
      
          property :machine_type, as: 'machineType'
          hash :metadata, as: 'metadata'
          property :min_cpu_platform, as: 'minCpuPlatform'
          property :node_group, as: 'nodeGroup'
          collection :oauth_scopes, as: 'oauthScopes'
          property :preemptible, as: 'preemptible'
          property :reservation_affinity, as: 'reservationAffinity', class: Google::Apis::ContainerV1::ReservationAffinity, decorator: Google::Apis::ContainerV1::ReservationAffinity::Representation
      
          hash :resource_labels, as: 'resourceLabels'
          property :sandbox_config, as: 'sandboxConfig', class: Google::Apis::ContainerV1::SandboxConfig, decorator: Google::Apis::ContainerV1::SandboxConfig::Representation
      
          property :service_account, as: 'serviceAccount'
          property :shielded_instance_config, as: 'shieldedInstanceConfig', class: Google::Apis::ContainerV1::ShieldedInstanceConfig, decorator: Google::Apis::ContainerV1::ShieldedInstanceConfig::Representation
      
          property :spot, as: 'spot'
          collection :tags, as: 'tags'
          collection :taints, as: 'taints', class: Google::Apis::ContainerV1::NodeTaint, decorator: Google::Apis::ContainerV1::NodeTaint::Representation
      
          property :windows_node_config, as: 'windowsNodeConfig', class: Google::Apis::ContainerV1::WindowsNodeConfig, decorator: Google::Apis::ContainerV1::WindowsNodeConfig::Representation
      
          property :workload_metadata_config, as: 'workloadMetadataConfig', class: Google::Apis::ContainerV1::WorkloadMetadataConfig, decorator: Google::Apis::ContainerV1::WorkloadMetadataConfig::Representation
      
        end
      end
      
      class NodeConfigDefaults
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :gcfs_config, as: 'gcfsConfig', class: Google::Apis::ContainerV1::GcfsConfig, decorator: Google::Apis::ContainerV1::GcfsConfig::Representation
      
          property :logging_config, as: 'loggingConfig', class: Google::Apis::ContainerV1::NodePoolLoggingConfig, decorator: Google::Apis::ContainerV1::NodePoolLoggingConfig::Representation
      
        end
      end
      
      class NodeKubeletConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :cpu_cfs_quota, as: 'cpuCfsQuota'
          property :cpu_cfs_quota_period, as: 'cpuCfsQuotaPeriod'
          property :cpu_manager_policy, as: 'cpuManagerPolicy'
          property :pod_pids_limit, :numeric_string => true, as: 'podPidsLimit'
        end
      end
      
      class NodeLabels
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          hash :labels, as: 'labels'
        end
      end
      
      class NodeManagement
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :auto_repair, as: 'autoRepair'
          property :auto_upgrade, as: 'autoUpgrade'
          property :upgrade_options, as: 'upgradeOptions', class: Google::Apis::ContainerV1::AutoUpgradeOptions, decorator: Google::Apis::ContainerV1::AutoUpgradeOptions::Representation
      
        end
      end
      
      class NodeNetworkConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_pod_range, as: 'createPodRange'
          property :enable_private_nodes, as: 'enablePrivateNodes'
          property :network_performance_config, as: 'networkPerformanceConfig', class: Google::Apis::ContainerV1::NetworkPerformanceConfig, decorator: Google::Apis::ContainerV1::NetworkPerformanceConfig::Representation
      
          property :pod_ipv4_cidr_block, as: 'podIpv4CidrBlock'
          property :pod_range, as: 'podRange'
        end
      end
      
      class NodePool
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :autoscaling, as: 'autoscaling', class: Google::Apis::ContainerV1::NodePoolAutoscaling, decorator: Google::Apis::ContainerV1::NodePoolAutoscaling::Representation
      
          collection :conditions, as: 'conditions', class: Google::Apis::ContainerV1::StatusCondition, decorator: Google::Apis::ContainerV1::StatusCondition::Representation
      
          property :config, as: 'config', class: Google::Apis::ContainerV1::NodeConfig, decorator: Google::Apis::ContainerV1::NodeConfig::Representation
      
          property :etag, as: 'etag'
          property :initial_node_count, as: 'initialNodeCount'
          collection :instance_group_urls, as: 'instanceGroupUrls'
          collection :locations, as: 'locations'
          property :management, as: 'management', class: Google::Apis::ContainerV1::NodeManagement, decorator: Google::Apis::ContainerV1::NodeManagement::Representation
      
          property :max_pods_constraint, as: 'maxPodsConstraint', class: Google::Apis::ContainerV1::MaxPodsConstraint, decorator: Google::Apis::ContainerV1::MaxPodsConstraint::Representation
      
          property :name, as: 'name'
          property :network_config, as: 'networkConfig', class: Google::Apis::ContainerV1::NodeNetworkConfig, decorator: Google::Apis::ContainerV1::NodeNetworkConfig::Representation
      
          property :placement_policy, as: 'placementPolicy', class: Google::Apis::ContainerV1::PlacementPolicy, decorator: Google::Apis::ContainerV1::PlacementPolicy::Representation
      
          property :pod_ipv4_cidr_size, as: 'podIpv4CidrSize'
          property :self_link, as: 'selfLink'
          property :status, as: 'status'
          property :status_message, as: 'statusMessage'
          property :update_info, as: 'updateInfo', class: Google::Apis::ContainerV1::UpdateInfo, decorator: Google::Apis::ContainerV1::UpdateInfo::Representation
      
          property :upgrade_settings, as: 'upgradeSettings', class: Google::Apis::ContainerV1::UpgradeSettings, decorator: Google::Apis::ContainerV1::UpgradeSettings::Representation
      
          property :version, as: 'version'
        end
      end
      
      class NodePoolAutoConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :network_tags, as: 'networkTags', class: Google::Apis::ContainerV1::NetworkTags, decorator: Google::Apis::ContainerV1::NetworkTags::Representation
      
        end
      end
      
      class NodePoolAutoscaling
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :autoprovisioned, as: 'autoprovisioned'
          property :enabled, as: 'enabled'
          property :location_policy, as: 'locationPolicy'
          property :max_node_count, as: 'maxNodeCount'
          property :min_node_count, as: 'minNodeCount'
          property :total_max_node_count, as: 'totalMaxNodeCount'
          property :total_min_node_count, as: 'totalMinNodeCount'
        end
      end
      
      class NodePoolDefaults
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :node_config_defaults, as: 'nodeConfigDefaults', class: Google::Apis::ContainerV1::NodeConfigDefaults, decorator: Google::Apis::ContainerV1::NodeConfigDefaults::Representation
      
        end
      end
      
      class NodePoolLoggingConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :variant_config, as: 'variantConfig', class: Google::Apis::ContainerV1::LoggingVariantConfig, decorator: Google::Apis::ContainerV1::LoggingVariantConfig::Representation
      
        end
      end
      
      class NodeTaint
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :effect, as: 'effect'
          property :key, as: 'key'
          property :value, as: 'value'
        end
      end
      
      class NodeTaints
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :taints, as: 'taints', class: Google::Apis::ContainerV1::NodeTaint, decorator: Google::Apis::ContainerV1::NodeTaint::Representation
      
        end
      end
      
      class NotificationConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :pubsub, as: 'pubsub', class: Google::Apis::ContainerV1::PubSub, decorator: Google::Apis::ContainerV1::PubSub::Representation
      
        end
      end
      
      class Operation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :cluster_conditions, as: 'clusterConditions', class: Google::Apis::ContainerV1::StatusCondition, decorator: Google::Apis::ContainerV1::StatusCondition::Representation
      
          property :detail, as: 'detail'
          property :end_time, as: 'endTime'
          property :error, as: 'error', class: Google::Apis::ContainerV1::Status, decorator: Google::Apis::ContainerV1::Status::Representation
      
          property :location, as: 'location'
          property :name, as: 'name'
          collection :nodepool_conditions, as: 'nodepoolConditions', class: Google::Apis::ContainerV1::StatusCondition, decorator: Google::Apis::ContainerV1::StatusCondition::Representation
      
          property :operation_type, as: 'operationType'
          property :progress, as: 'progress', class: Google::Apis::ContainerV1::OperationProgress, decorator: Google::Apis::ContainerV1::OperationProgress::Representation
      
          property :self_link, as: 'selfLink'
          property :start_time, as: 'startTime'
          property :status, as: 'status'
          property :status_message, as: 'statusMessage'
          property :target_link, as: 'targetLink'
          property :zone, as: 'zone'
        end
      end
      
      class OperationProgress
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :metrics, as: 'metrics', class: Google::Apis::ContainerV1::Metric, decorator: Google::Apis::ContainerV1::Metric::Representation
      
          property :name, as: 'name'
          collection :stages, as: 'stages', class: Google::Apis::ContainerV1::OperationProgress, decorator: Google::Apis::ContainerV1::OperationProgress::Representation
      
          property :status, as: 'status'
        end
      end
      
      class PlacementPolicy
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :type, as: 'type'
        end
      end
      
      class PrivateClusterConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :enable_private_endpoint, as: 'enablePrivateEndpoint'
          property :enable_private_nodes, as: 'enablePrivateNodes'
          property :master_global_access_config, as: 'masterGlobalAccessConfig', class: Google::Apis::ContainerV1::PrivateClusterMasterGlobalAccessConfig, decorator: Google::Apis::ContainerV1::PrivateClusterMasterGlobalAccessConfig::Representation
      
          property :master_ipv4_cidr_block, as: 'masterIpv4CidrBlock'
          property :peering_name, as: 'peeringName'
          property :private_endpoint, as: 'privateEndpoint'
          property :private_endpoint_subnetwork, as: 'privateEndpointSubnetwork'
          property :public_endpoint, as: 'publicEndpoint'
        end
      end
      
      class PrivateClusterMasterGlobalAccessConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :enabled, as: 'enabled'
        end
      end
      
      class PubSub
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :enabled, as: 'enabled'
          property :filter, as: 'filter', class: Google::Apis::ContainerV1::Filter, decorator: Google::Apis::ContainerV1::Filter::Representation
      
          property :topic, as: 'topic'
        end
      end
      
      class RecurringTimeWindow
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :recurrence, as: 'recurrence'
          property :window, as: 'window', class: Google::Apis::ContainerV1::TimeWindow, decorator: Google::Apis::ContainerV1::TimeWindow::Representation
      
        end
      end
      
      class ReleaseChannel
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :channel, as: 'channel'
        end
      end
      
      class ReleaseChannelConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :channel, as: 'channel'
          property :default_version, as: 'defaultVersion'
          collection :valid_versions, as: 'validVersions'
        end
      end
      
      class ReservationAffinity
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :consume_reservation_type, as: 'consumeReservationType'
          property :key, as: 'key'
          collection :values, as: 'values'
        end
      end
      
      class ResourceLabels
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          hash :labels, as: 'labels'
        end
      end
      
      class ResourceLimit
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :maximum, :numeric_string => true, as: 'maximum'
          property :minimum, :numeric_string => true, as: 'minimum'
          property :resource_type, as: 'resourceType'
        end
      end
      
      class ResourceUsageExportConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :bigquery_destination, as: 'bigqueryDestination', class: Google::Apis::ContainerV1::BigQueryDestination, decorator: Google::Apis::ContainerV1::BigQueryDestination::Representation
      
          property :consumption_metering_config, as: 'consumptionMeteringConfig', class: Google::Apis::ContainerV1::ConsumptionMeteringConfig, decorator: Google::Apis::ContainerV1::ConsumptionMeteringConfig::Representation
      
          property :enable_network_egress_metering, as: 'enableNetworkEgressMetering'
        end
      end
      
      class RollbackNodePoolUpgradeRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :cluster_id, as: 'clusterId'
          property :name, as: 'name'
          property :node_pool_id, as: 'nodePoolId'
          property :project_id, as: 'projectId'
          property :respect_pdb, as: 'respectPdb'
          property :zone, as: 'zone'
        end
      end
      
      class SandboxConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :type, as: 'type'
        end
      end
      
      class SecurityBulletinEvent
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :affected_supported_minors, as: 'affectedSupportedMinors'
          property :brief_description, as: 'briefDescription'
          property :bulletin_id, as: 'bulletinId'
          property :bulletin_uri, as: 'bulletinUri'
          collection :cve_ids, as: 'cveIds'
          property :manual_steps_required, as: 'manualStepsRequired'
          collection :patched_versions, as: 'patchedVersions'
          property :resource_type_affected, as: 'resourceTypeAffected'
          property :severity, as: 'severity'
          property :suggested_upgrade_target, as: 'suggestedUpgradeTarget'
        end
      end
      
      class ServerConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :channels, as: 'channels', class: Google::Apis::ContainerV1::ReleaseChannelConfig, decorator: Google::Apis::ContainerV1::ReleaseChannelConfig::Representation
      
          property :default_cluster_version, as: 'defaultClusterVersion'
          property :default_image_type, as: 'defaultImageType'
          collection :valid_image_types, as: 'validImageTypes'
          collection :valid_master_versions, as: 'validMasterVersions'
          collection :valid_node_versions, as: 'validNodeVersions'
        end
      end
      
      class ServiceExternalIPsConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :enabled, as: 'enabled'
        end
      end
      
      class SetAddonsConfigRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :addons_config, as: 'addonsConfig', class: Google::Apis::ContainerV1::AddonsConfig, decorator: Google::Apis::ContainerV1::AddonsConfig::Representation
      
          property :cluster_id, as: 'clusterId'
          property :name, as: 'name'
          property :project_id, as: 'projectId'
          property :zone, as: 'zone'
        end
      end
      
      class SetLabelsRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :cluster_id, as: 'clusterId'
          property :label_fingerprint, as: 'labelFingerprint'
          property :name, as: 'name'
          property :project_id, as: 'projectId'
          hash :resource_labels, as: 'resourceLabels'
          property :zone, as: 'zone'
        end
      end
      
      class SetLegacyAbacRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :cluster_id, as: 'clusterId'
          property :enabled, as: 'enabled'
          property :name, as: 'name'
          property :project_id, as: 'projectId'
          property :zone, as: 'zone'
        end
      end
      
      class SetLocationsRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :cluster_id, as: 'clusterId'
          collection :locations, as: 'locations'
          property :name, as: 'name'
          property :project_id, as: 'projectId'
          property :zone, as: 'zone'
        end
      end
      
      class SetLoggingServiceRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :cluster_id, as: 'clusterId'
          property :logging_service, as: 'loggingService'
          property :name, as: 'name'
          property :project_id, as: 'projectId'
          property :zone, as: 'zone'
        end
      end
      
      class SetMaintenancePolicyRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :cluster_id, as: 'clusterId'
          property :maintenance_policy, as: 'maintenancePolicy', class: Google::Apis::ContainerV1::MaintenancePolicy, decorator: Google::Apis::ContainerV1::MaintenancePolicy::Representation
      
          property :name, as: 'name'
          property :project_id, as: 'projectId'
          property :zone, as: 'zone'
        end
      end
      
      class SetMasterAuthRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :action, as: 'action'
          property :cluster_id, as: 'clusterId'
          property :name, as: 'name'
          property :project_id, as: 'projectId'
          property :update, as: 'update', class: Google::Apis::ContainerV1::MasterAuth, decorator: Google::Apis::ContainerV1::MasterAuth::Representation
      
          property :zone, as: 'zone'
        end
      end
      
      class SetMonitoringServiceRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :cluster_id, as: 'clusterId'
          property :monitoring_service, as: 'monitoringService'
          property :name, as: 'name'
          property :project_id, as: 'projectId'
          property :zone, as: 'zone'
        end
      end
      
      class SetNetworkPolicyRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :cluster_id, as: 'clusterId'
          property :name, as: 'name'
          property :network_policy, as: 'networkPolicy', class: Google::Apis::ContainerV1::NetworkPolicy, decorator: Google::Apis::ContainerV1::NetworkPolicy::Representation
      
          property :project_id, as: 'projectId'
          property :zone, as: 'zone'
        end
      end
      
      class SetNodePoolAutoscalingRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :autoscaling, as: 'autoscaling', class: Google::Apis::ContainerV1::NodePoolAutoscaling, decorator: Google::Apis::ContainerV1::NodePoolAutoscaling::Representation
      
          property :cluster_id, as: 'clusterId'
          property :name, as: 'name'
          property :node_pool_id, as: 'nodePoolId'
          property :project_id, as: 'projectId'
          property :zone, as: 'zone'
        end
      end
      
      class SetNodePoolManagementRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :cluster_id, as: 'clusterId'
          property :management, as: 'management', class: Google::Apis::ContainerV1::NodeManagement, decorator: Google::Apis::ContainerV1::NodeManagement::Representation
      
          property :name, as: 'name'
          property :node_pool_id, as: 'nodePoolId'
          property :project_id, as: 'projectId'
          property :zone, as: 'zone'
        end
      end
      
      class SetNodePoolSizeRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :cluster_id, as: 'clusterId'
          property :name, as: 'name'
          property :node_count, as: 'nodeCount'
          property :node_pool_id, as: 'nodePoolId'
          property :project_id, as: 'projectId'
          property :zone, as: 'zone'
        end
      end
      
      class ShieldedInstanceConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :enable_integrity_monitoring, as: 'enableIntegrityMonitoring'
          property :enable_secure_boot, as: 'enableSecureBoot'
        end
      end
      
      class ShieldedNodes
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :enabled, as: 'enabled'
        end
      end
      
      class StandardRolloutPolicy
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :batch_node_count, as: 'batchNodeCount'
          property :batch_percentage, as: 'batchPercentage'
          property :batch_soak_duration, as: 'batchSoakDuration'
        end
      end
      
      class StartIpRotationRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :cluster_id, as: 'clusterId'
          property :name, as: 'name'
          property :project_id, as: 'projectId'
          property :rotate_credentials, as: 'rotateCredentials'
          property :zone, as: 'zone'
        end
      end
      
      class Status
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :code, as: 'code'
          collection :details, as: 'details'
          property :message, as: 'message'
        end
      end
      
      class StatusCondition
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :canonical_code, as: 'canonicalCode'
          property :code, as: 'code'
          property :message, as: 'message'
        end
      end
      
      class TimeWindow
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :end_time, as: 'endTime'
          property :maintenance_exclusion_options, as: 'maintenanceExclusionOptions', class: Google::Apis::ContainerV1::MaintenanceExclusionOptions, decorator: Google::Apis::ContainerV1::MaintenanceExclusionOptions::Representation
      
          property :start_time, as: 'startTime'
        end
      end
      
      class UpdateClusterRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :cluster_id, as: 'clusterId'
          property :name, as: 'name'
          property :project_id, as: 'projectId'
          property :update, as: 'update', class: Google::Apis::ContainerV1::ClusterUpdate, decorator: Google::Apis::ContainerV1::ClusterUpdate::Representation
      
          property :zone, as: 'zone'
        end
      end
      
      class UpdateInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :blue_green_info, as: 'blueGreenInfo', class: Google::Apis::ContainerV1::BlueGreenInfo, decorator: Google::Apis::ContainerV1::BlueGreenInfo::Representation
      
        end
      end
      
      class UpdateMasterRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :cluster_id, as: 'clusterId'
          property :master_version, as: 'masterVersion'
          property :name, as: 'name'
          property :project_id, as: 'projectId'
          property :zone, as: 'zone'
        end
      end
      
      class UpdateNodePoolRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :cluster_id, as: 'clusterId'
          property :confidential_nodes, as: 'confidentialNodes', class: Google::Apis::ContainerV1::ConfidentialNodes, decorator: Google::Apis::ContainerV1::ConfidentialNodes::Representation
      
          property :etag, as: 'etag'
          property :fast_socket, as: 'fastSocket', class: Google::Apis::ContainerV1::FastSocket, decorator: Google::Apis::ContainerV1::FastSocket::Representation
      
          property :gcfs_config, as: 'gcfsConfig', class: Google::Apis::ContainerV1::GcfsConfig, decorator: Google::Apis::ContainerV1::GcfsConfig::Representation
      
          property :gvnic, as: 'gvnic', class: Google::Apis::ContainerV1::VirtualNic, decorator: Google::Apis::ContainerV1::VirtualNic::Representation
      
          property :image_type, as: 'imageType'
          property :kubelet_config, as: 'kubeletConfig', class: Google::Apis::ContainerV1::NodeKubeletConfig, decorator: Google::Apis::ContainerV1::NodeKubeletConfig::Representation
      
          property :labels, as: 'labels', class: Google::Apis::ContainerV1::NodeLabels, decorator: Google::Apis::ContainerV1::NodeLabels::Representation
      
          property :linux_node_config, as: 'linuxNodeConfig', class: Google::Apis::ContainerV1::LinuxNodeConfig, decorator: Google::Apis::ContainerV1::LinuxNodeConfig::Representation
      
          collection :locations, as: 'locations'
          property :logging_config, as: 'loggingConfig', class: Google::Apis::ContainerV1::NodePoolLoggingConfig, decorator: Google::Apis::ContainerV1::NodePoolLoggingConfig::Representation
      
          property :name, as: 'name'
          property :node_network_config, as: 'nodeNetworkConfig', class: Google::Apis::ContainerV1::NodeNetworkConfig, decorator: Google::Apis::ContainerV1::NodeNetworkConfig::Representation
      
          property :node_pool_id, as: 'nodePoolId'
          property :node_version, as: 'nodeVersion'
          property :project_id, as: 'projectId'
          property :resource_labels, as: 'resourceLabels', class: Google::Apis::ContainerV1::ResourceLabels, decorator: Google::Apis::ContainerV1::ResourceLabels::Representation
      
          property :tags, as: 'tags', class: Google::Apis::ContainerV1::NetworkTags, decorator: Google::Apis::ContainerV1::NetworkTags::Representation
      
          property :taints, as: 'taints', class: Google::Apis::ContainerV1::NodeTaints, decorator: Google::Apis::ContainerV1::NodeTaints::Representation
      
          property :upgrade_settings, as: 'upgradeSettings', class: Google::Apis::ContainerV1::UpgradeSettings, decorator: Google::Apis::ContainerV1::UpgradeSettings::Representation
      
          property :windows_node_config, as: 'windowsNodeConfig', class: Google::Apis::ContainerV1::WindowsNodeConfig, decorator: Google::Apis::ContainerV1::WindowsNodeConfig::Representation
      
          property :workload_metadata_config, as: 'workloadMetadataConfig', class: Google::Apis::ContainerV1::WorkloadMetadataConfig, decorator: Google::Apis::ContainerV1::WorkloadMetadataConfig::Representation
      
          property :zone, as: 'zone'
        end
      end
      
      class UpgradeAvailableEvent
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :release_channel, as: 'releaseChannel', class: Google::Apis::ContainerV1::ReleaseChannel, decorator: Google::Apis::ContainerV1::ReleaseChannel::Representation
      
          property :resource, as: 'resource'
          property :resource_type, as: 'resourceType'
          property :version, as: 'version'
        end
      end
      
      class UpgradeEvent
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :current_version, as: 'currentVersion'
          property :operation, as: 'operation'
          property :operation_start_time, as: 'operationStartTime'
          property :resource, as: 'resource'
          property :resource_type, as: 'resourceType'
          property :target_version, as: 'targetVersion'
        end
      end
      
      class UpgradeSettings
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :blue_green_settings, as: 'blueGreenSettings', class: Google::Apis::ContainerV1::BlueGreenSettings, decorator: Google::Apis::ContainerV1::BlueGreenSettings::Representation
      
          property :max_surge, as: 'maxSurge'
          property :max_unavailable, as: 'maxUnavailable'
          property :strategy, as: 'strategy'
        end
      end
      
      class UsableSubnetwork
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :ip_cidr_range, as: 'ipCidrRange'
          property :network, as: 'network'
          collection :secondary_ip_ranges, as: 'secondaryIpRanges', class: Google::Apis::ContainerV1::UsableSubnetworkSecondaryRange, decorator: Google::Apis::ContainerV1::UsableSubnetworkSecondaryRange::Representation
      
          property :status_message, as: 'statusMessage'
          property :subnetwork, as: 'subnetwork'
        end
      end
      
      class UsableSubnetworkSecondaryRange
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :ip_cidr_range, as: 'ipCidrRange'
          property :range_name, as: 'rangeName'
          property :status, as: 'status'
        end
      end
      
      class VerticalPodAutoscaling
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :enabled, as: 'enabled'
        end
      end
      
      class VirtualNic
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :enabled, as: 'enabled'
        end
      end
      
      class WindowsNodeConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :os_version, as: 'osVersion'
        end
      end
      
      class WorkloadIdentityConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :workload_pool, as: 'workloadPool'
        end
      end
      
      class WorkloadMetadataConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :mode, as: 'mode'
        end
      end
    end
  end
end
