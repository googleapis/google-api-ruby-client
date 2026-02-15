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
    module ContainerV1beta1
      
      class AcceleratorConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AdditionalIpRangesConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AdditionalNodeNetworkConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AdditionalPodNetworkConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AdditionalPodRangesConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AddonsConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AdvancedDatapathObservabilityConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AdvancedMachineFeatures
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AnonymousAuthenticationConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AuthenticatorGroupsConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AutoIpamConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AutoMonitoringConfig
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
      
      class AutopilotCompatibilityIssue
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AutopilotConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AutopilotConversionStatus
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AutoprovisioningNodePoolDefaults
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AutoscaledRolloutPolicy
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AvailableVersion
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class BestEffortProvisioning
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
      
      class BootDisk
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class BootDiskProfile
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CancelOperationRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CertificateAuthorityDomainConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CertificateConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CertificateConfigPair
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CheckAutopilotCompatibilityResponse
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
      
      class ClusterNetworkPerformanceConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ClusterTelemetry
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ClusterUpdate
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ClusterUpgradeInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CompatibilityStatus
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CompleteControlPlaneUpgradeRequest
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
      
      class CompliancePostureConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ComplianceStandard
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
      
      class ContainerdConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ControlPlaneEndpointsConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CostManagementConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CrashLoopBackOffConfig
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
      
      class DnsEndpointConfig
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
      
      class Date
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DedicatedLocalSsdProfile
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DefaultComputeClassConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DefaultSnatStatus
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DesiredAdditionalIpRangesConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DesiredEnterpriseConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DisruptionBudget
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DisruptionEvent
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
      
      class EncryptionConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class EnterpriseConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class EphemeralLocalSsdProfile
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class EphemeralStorageConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class EphemeralStorageLocalSsdConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class EvictionGracePeriod
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class EvictionMinimumReclaim
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class EvictionSignals
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
      
      class GcpSecretManagerCertificateConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GpuDirectConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GpuDriverInstallationConfig
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
      
      class GcsFuseCsiDriverConfig
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
      
      class GkeAutoUpgradeConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GkeBackupAgentConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class HighScaleCheckpointingConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class HorizontalPodAutoscaling
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class HostConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class HostMaintenancePolicy
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
      
      class HugepagesConfig
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
      
      class IpEndpointsConfig
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
      
      class IstioConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Jwk
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class K8sBetaApiConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class KalmConfig
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
      
      class ListLocationsResponse
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
      
      class Location
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
      
      class LustreCsiDriverConfig
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
      
      class ManagedOpenTelemetryConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ManagedPrometheusConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Master
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
      
      class MemoryManager
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
      
      class NetworkTierConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class NodeAffinity
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
      
      class NodeDrainConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class NodeKernelModuleLoading
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
      
      class NodePoolUpgradeInfo
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
      
      class OperationError
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class OperationProgress
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class OpportunisticMaintenanceStrategy
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ParallelstoreCsiDriverConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ParentProductConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class PdbBlockedPod
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class PlacementPolicy
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class PodAutoscaling
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class PodCidrOverprovisionConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class PodSecurityPolicyConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class PodSnapshotConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class PolicyBinding
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
      
      class PrivateRegistryAccessConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class PrivilegedAdmissionConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ProtectConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class PubSub
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class QueuedProvisioning
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class RbacBindingConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class RangeInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class RayClusterLoggingConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class RayClusterMonitoringConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class RayOperatorConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class RecurringTimeWindow
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class RegistryHeader
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class RegistryHostConfig
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
      
      class ResourceManagerTags
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
      
      class RollbackSafeUpgrade
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class RollbackSafeUpgradeStatus
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class RotationConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SandboxConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SecondaryBootDisk
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SecondaryBootDiskUpdateStrategy
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SecretManagerConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SecretSyncConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SecurityBulletinEvent
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SecurityPostureConfig
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
      
      class SliceControllerConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SoleTenantConfig
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
      
      class StatefulHaConfig
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
      
      class SwapConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SyncRotationConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class TimeWindow
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class TopologyManager
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class TpuConfig
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
      
      class UpgradeDetails
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class UpgradeEvent
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class UpgradeInfoEvent
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
      
      class UserManagedKeysConfig
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
      
      class WindowsVersion
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class WindowsVersions
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class WorkloadAltsConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class WorkloadCertificates
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class WorkloadConfig
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
      
      class WorkloadPolicyConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class WritableCgroups
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AcceleratorConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :accelerator_count, :numeric_string => true, as: 'acceleratorCount'
          property :accelerator_type, as: 'acceleratorType'
          property :gpu_driver_installation_config, as: 'gpuDriverInstallationConfig', class: Google::Apis::ContainerV1beta1::GpuDriverInstallationConfig, decorator: Google::Apis::ContainerV1beta1::GpuDriverInstallationConfig::Representation
      
          property :gpu_partition_size, as: 'gpuPartitionSize'
          property :gpu_sharing_config, as: 'gpuSharingConfig', class: Google::Apis::ContainerV1beta1::GpuSharingConfig, decorator: Google::Apis::ContainerV1beta1::GpuSharingConfig::Representation
      
          property :max_time_shared_clients_per_gpu, :numeric_string => true, as: 'maxTimeSharedClientsPerGpu'
        end
      end
      
      class AdditionalIpRangesConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :pod_ipv4_range_names, as: 'podIpv4RangeNames'
          property :status, as: 'status'
          property :subnetwork, as: 'subnetwork'
        end
      end
      
      class AdditionalNodeNetworkConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :network, as: 'network'
          property :subnetwork, as: 'subnetwork'
        end
      end
      
      class AdditionalPodNetworkConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :max_pods_per_node, as: 'maxPodsPerNode', class: Google::Apis::ContainerV1beta1::MaxPodsConstraint, decorator: Google::Apis::ContainerV1beta1::MaxPodsConstraint::Representation
      
          property :network_attachment, as: 'networkAttachment'
          property :secondary_pod_range, as: 'secondaryPodRange'
          property :subnetwork, as: 'subnetwork'
        end
      end
      
      class AdditionalPodRangesConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :pod_range_info, as: 'podRangeInfo', class: Google::Apis::ContainerV1beta1::RangeInfo, decorator: Google::Apis::ContainerV1beta1::RangeInfo::Representation
      
          collection :pod_range_names, as: 'podRangeNames'
        end
      end
      
      class AddonsConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :cloud_run_config, as: 'cloudRunConfig', class: Google::Apis::ContainerV1beta1::CloudRunConfig, decorator: Google::Apis::ContainerV1beta1::CloudRunConfig::Representation
      
          property :config_connector_config, as: 'configConnectorConfig', class: Google::Apis::ContainerV1beta1::ConfigConnectorConfig, decorator: Google::Apis::ContainerV1beta1::ConfigConnectorConfig::Representation
      
          property :dns_cache_config, as: 'dnsCacheConfig', class: Google::Apis::ContainerV1beta1::DnsCacheConfig, decorator: Google::Apis::ContainerV1beta1::DnsCacheConfig::Representation
      
          property :gce_persistent_disk_csi_driver_config, as: 'gcePersistentDiskCsiDriverConfig', class: Google::Apis::ContainerV1beta1::GcePersistentDiskCsiDriverConfig, decorator: Google::Apis::ContainerV1beta1::GcePersistentDiskCsiDriverConfig::Representation
      
          property :gcp_filestore_csi_driver_config, as: 'gcpFilestoreCsiDriverConfig', class: Google::Apis::ContainerV1beta1::GcpFilestoreCsiDriverConfig, decorator: Google::Apis::ContainerV1beta1::GcpFilestoreCsiDriverConfig::Representation
      
          property :gcs_fuse_csi_driver_config, as: 'gcsFuseCsiDriverConfig', class: Google::Apis::ContainerV1beta1::GcsFuseCsiDriverConfig, decorator: Google::Apis::ContainerV1beta1::GcsFuseCsiDriverConfig::Representation
      
          property :gke_backup_agent_config, as: 'gkeBackupAgentConfig', class: Google::Apis::ContainerV1beta1::GkeBackupAgentConfig, decorator: Google::Apis::ContainerV1beta1::GkeBackupAgentConfig::Representation
      
          property :high_scale_checkpointing_config, as: 'highScaleCheckpointingConfig', class: Google::Apis::ContainerV1beta1::HighScaleCheckpointingConfig, decorator: Google::Apis::ContainerV1beta1::HighScaleCheckpointingConfig::Representation
      
          property :horizontal_pod_autoscaling, as: 'horizontalPodAutoscaling', class: Google::Apis::ContainerV1beta1::HorizontalPodAutoscaling, decorator: Google::Apis::ContainerV1beta1::HorizontalPodAutoscaling::Representation
      
          property :http_load_balancing, as: 'httpLoadBalancing', class: Google::Apis::ContainerV1beta1::HttpLoadBalancing, decorator: Google::Apis::ContainerV1beta1::HttpLoadBalancing::Representation
      
          property :istio_config, as: 'istioConfig', class: Google::Apis::ContainerV1beta1::IstioConfig, decorator: Google::Apis::ContainerV1beta1::IstioConfig::Representation
      
          property :kalm_config, as: 'kalmConfig', class: Google::Apis::ContainerV1beta1::KalmConfig, decorator: Google::Apis::ContainerV1beta1::KalmConfig::Representation
      
          property :kubernetes_dashboard, as: 'kubernetesDashboard', class: Google::Apis::ContainerV1beta1::KubernetesDashboard, decorator: Google::Apis::ContainerV1beta1::KubernetesDashboard::Representation
      
          property :lustre_csi_driver_config, as: 'lustreCsiDriverConfig', class: Google::Apis::ContainerV1beta1::LustreCsiDriverConfig, decorator: Google::Apis::ContainerV1beta1::LustreCsiDriverConfig::Representation
      
          property :network_policy_config, as: 'networkPolicyConfig', class: Google::Apis::ContainerV1beta1::NetworkPolicyConfig, decorator: Google::Apis::ContainerV1beta1::NetworkPolicyConfig::Representation
      
          property :parallelstore_csi_driver_config, as: 'parallelstoreCsiDriverConfig', class: Google::Apis::ContainerV1beta1::ParallelstoreCsiDriverConfig, decorator: Google::Apis::ContainerV1beta1::ParallelstoreCsiDriverConfig::Representation
      
          property :pod_snapshot_config, as: 'podSnapshotConfig', class: Google::Apis::ContainerV1beta1::PodSnapshotConfig, decorator: Google::Apis::ContainerV1beta1::PodSnapshotConfig::Representation
      
          property :ray_operator_config, as: 'rayOperatorConfig', class: Google::Apis::ContainerV1beta1::RayOperatorConfig, decorator: Google::Apis::ContainerV1beta1::RayOperatorConfig::Representation
      
          property :slice_controller_config, as: 'sliceControllerConfig', class: Google::Apis::ContainerV1beta1::SliceControllerConfig, decorator: Google::Apis::ContainerV1beta1::SliceControllerConfig::Representation
      
          property :stateful_ha_config, as: 'statefulHaConfig', class: Google::Apis::ContainerV1beta1::StatefulHaConfig, decorator: Google::Apis::ContainerV1beta1::StatefulHaConfig::Representation
      
        end
      end
      
      class AdvancedDatapathObservabilityConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :enable_metrics, as: 'enableMetrics'
          property :enable_relay, as: 'enableRelay'
          property :relay_mode, as: 'relayMode'
        end
      end
      
      class AdvancedMachineFeatures
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :enable_nested_virtualization, as: 'enableNestedVirtualization'
          property :performance_monitoring_unit, as: 'performanceMonitoringUnit'
          property :threads_per_core, :numeric_string => true, as: 'threadsPerCore'
        end
      end
      
      class AnonymousAuthenticationConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :mode, as: 'mode'
        end
      end
      
      class AuthenticatorGroupsConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :enabled, as: 'enabled'
          property :security_group, as: 'securityGroup'
        end
      end
      
      class AutoIpamConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :enabled, as: 'enabled'
        end
      end
      
      class AutoMonitoringConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :scope, as: 'scope'
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
          property :conversion_status, as: 'conversionStatus', class: Google::Apis::ContainerV1beta1::AutopilotConversionStatus, decorator: Google::Apis::ContainerV1beta1::AutopilotConversionStatus::Representation
      
          property :enabled, as: 'enabled'
          property :privileged_admission_config, as: 'privilegedAdmissionConfig', class: Google::Apis::ContainerV1beta1::PrivilegedAdmissionConfig, decorator: Google::Apis::ContainerV1beta1::PrivilegedAdmissionConfig::Representation
      
          property :workload_policy_config, as: 'workloadPolicyConfig', class: Google::Apis::ContainerV1beta1::WorkloadPolicyConfig, decorator: Google::Apis::ContainerV1beta1::WorkloadPolicyConfig::Representation
      
        end
      end
      
      class AutopilotCompatibilityIssue
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :constraint_type, as: 'constraintType'
          property :description, as: 'description'
          property :documentation_url, as: 'documentationUrl'
          property :incompatibility_type, as: 'incompatibilityType'
          property :last_observation, as: 'lastObservation'
          collection :subjects, as: 'subjects'
        end
      end
      
      class AutopilotConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :enabled, as: 'enabled'
        end
      end
      
      class AutopilotConversionStatus
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :state, as: 'state'
        end
      end
      
      class AutoprovisioningNodePoolDefaults
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :boot_disk_kms_key, as: 'bootDiskKmsKey'
          property :disk_size_gb, as: 'diskSizeGb'
          property :disk_type, as: 'diskType'
          property :image_type, as: 'imageType'
          property :insecure_kubelet_readonly_port_enabled, as: 'insecureKubeletReadonlyPortEnabled'
          property :management, as: 'management', class: Google::Apis::ContainerV1beta1::NodeManagement, decorator: Google::Apis::ContainerV1beta1::NodeManagement::Representation
      
          property :min_cpu_platform, as: 'minCpuPlatform'
          collection :oauth_scopes, as: 'oauthScopes'
          property :service_account, as: 'serviceAccount'
          property :shielded_instance_config, as: 'shieldedInstanceConfig', class: Google::Apis::ContainerV1beta1::ShieldedInstanceConfig, decorator: Google::Apis::ContainerV1beta1::ShieldedInstanceConfig::Representation
      
          property :upgrade_settings, as: 'upgradeSettings', class: Google::Apis::ContainerV1beta1::UpgradeSettings, decorator: Google::Apis::ContainerV1beta1::UpgradeSettings::Representation
      
        end
      end
      
      class AutoscaledRolloutPolicy
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :wait_for_drain_duration, as: 'waitForDrainDuration'
        end
      end
      
      class AvailableVersion
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :reason, as: 'reason'
          property :version, as: 'version'
        end
      end
      
      class BestEffortProvisioning
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :enabled, as: 'enabled'
          property :min_provision_nodes, as: 'minProvisionNodes'
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
          collection :policy_bindings, as: 'policyBindings', class: Google::Apis::ContainerV1beta1::PolicyBinding, decorator: Google::Apis::ContainerV1beta1::PolicyBinding::Representation
      
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
          property :autoscaled_rollout_policy, as: 'autoscaledRolloutPolicy', class: Google::Apis::ContainerV1beta1::AutoscaledRolloutPolicy, decorator: Google::Apis::ContainerV1beta1::AutoscaledRolloutPolicy::Representation
      
          property :node_pool_soak_duration, as: 'nodePoolSoakDuration'
          property :standard_rollout_policy, as: 'standardRolloutPolicy', class: Google::Apis::ContainerV1beta1::StandardRolloutPolicy, decorator: Google::Apis::ContainerV1beta1::StandardRolloutPolicy::Representation
      
        end
      end
      
      class BootDisk
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :disk_type, as: 'diskType'
          property :provisioned_iops, :numeric_string => true, as: 'provisionedIops'
          property :provisioned_throughput, :numeric_string => true, as: 'provisionedThroughput'
          property :size_gb, :numeric_string => true, as: 'sizeGb'
        end
      end
      
      class BootDiskProfile
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :swap_size_gib, :numeric_string => true, as: 'swapSizeGib'
          property :swap_size_percent, as: 'swapSizePercent'
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
      
      class CertificateAuthorityDomainConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :fqdns, as: 'fqdns'
          property :gcp_secret_manager_certificate_config, as: 'gcpSecretManagerCertificateConfig', class: Google::Apis::ContainerV1beta1::GcpSecretManagerCertificateConfig, decorator: Google::Apis::ContainerV1beta1::GcpSecretManagerCertificateConfig::Representation
      
        end
      end
      
      class CertificateConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :gcp_secret_manager_secret_uri, as: 'gcpSecretManagerSecretUri'
        end
      end
      
      class CertificateConfigPair
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :cert, as: 'cert', class: Google::Apis::ContainerV1beta1::CertificateConfig, decorator: Google::Apis::ContainerV1beta1::CertificateConfig::Representation
      
          property :key, as: 'key', class: Google::Apis::ContainerV1beta1::CertificateConfig, decorator: Google::Apis::ContainerV1beta1::CertificateConfig::Representation
      
        end
      end
      
      class CheckAutopilotCompatibilityResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :issues, as: 'issues', class: Google::Apis::ContainerV1beta1::AutopilotCompatibilityIssue, decorator: Google::Apis::ContainerV1beta1::AutopilotCompatibilityIssue::Representation
      
          property :summary, as: 'summary'
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
          property :addons_config, as: 'addonsConfig', class: Google::Apis::ContainerV1beta1::AddonsConfig, decorator: Google::Apis::ContainerV1beta1::AddonsConfig::Representation
      
          collection :alpha_cluster_feature_gates, as: 'alphaClusterFeatureGates'
          property :anonymous_authentication_config, as: 'anonymousAuthenticationConfig', class: Google::Apis::ContainerV1beta1::AnonymousAuthenticationConfig, decorator: Google::Apis::ContainerV1beta1::AnonymousAuthenticationConfig::Representation
      
          property :authenticator_groups_config, as: 'authenticatorGroupsConfig', class: Google::Apis::ContainerV1beta1::AuthenticatorGroupsConfig, decorator: Google::Apis::ContainerV1beta1::AuthenticatorGroupsConfig::Representation
      
          property :autopilot, as: 'autopilot', class: Google::Apis::ContainerV1beta1::Autopilot, decorator: Google::Apis::ContainerV1beta1::Autopilot::Representation
      
          property :autoscaling, as: 'autoscaling', class: Google::Apis::ContainerV1beta1::ClusterAutoscaling, decorator: Google::Apis::ContainerV1beta1::ClusterAutoscaling::Representation
      
          property :binary_authorization, as: 'binaryAuthorization', class: Google::Apis::ContainerV1beta1::BinaryAuthorization, decorator: Google::Apis::ContainerV1beta1::BinaryAuthorization::Representation
      
          property :cluster_ipv4_cidr, as: 'clusterIpv4Cidr'
          property :cluster_telemetry, as: 'clusterTelemetry', class: Google::Apis::ContainerV1beta1::ClusterTelemetry, decorator: Google::Apis::ContainerV1beta1::ClusterTelemetry::Representation
      
          property :compliance_posture_config, as: 'compliancePostureConfig', class: Google::Apis::ContainerV1beta1::CompliancePostureConfig, decorator: Google::Apis::ContainerV1beta1::CompliancePostureConfig::Representation
      
          collection :conditions, as: 'conditions', class: Google::Apis::ContainerV1beta1::StatusCondition, decorator: Google::Apis::ContainerV1beta1::StatusCondition::Representation
      
          property :confidential_nodes, as: 'confidentialNodes', class: Google::Apis::ContainerV1beta1::ConfidentialNodes, decorator: Google::Apis::ContainerV1beta1::ConfidentialNodes::Representation
      
          property :control_plane_endpoints_config, as: 'controlPlaneEndpointsConfig', class: Google::Apis::ContainerV1beta1::ControlPlaneEndpointsConfig, decorator: Google::Apis::ContainerV1beta1::ControlPlaneEndpointsConfig::Representation
      
          property :cost_management_config, as: 'costManagementConfig', class: Google::Apis::ContainerV1beta1::CostManagementConfig, decorator: Google::Apis::ContainerV1beta1::CostManagementConfig::Representation
      
          property :create_time, as: 'createTime'
          property :current_emulated_version, as: 'currentEmulatedVersion'
          property :current_master_version, as: 'currentMasterVersion'
          property :current_node_count, as: 'currentNodeCount'
          property :current_node_version, as: 'currentNodeVersion'
          property :database_encryption, as: 'databaseEncryption', class: Google::Apis::ContainerV1beta1::DatabaseEncryption, decorator: Google::Apis::ContainerV1beta1::DatabaseEncryption::Representation
      
          property :default_max_pods_constraint, as: 'defaultMaxPodsConstraint', class: Google::Apis::ContainerV1beta1::MaxPodsConstraint, decorator: Google::Apis::ContainerV1beta1::MaxPodsConstraint::Representation
      
          property :description, as: 'description'
          property :enable_k8s_beta_apis, as: 'enableK8sBetaApis', class: Google::Apis::ContainerV1beta1::K8sBetaApiConfig, decorator: Google::Apis::ContainerV1beta1::K8sBetaApiConfig::Representation
      
          property :enable_kubernetes_alpha, as: 'enableKubernetesAlpha'
          property :enable_tpu, as: 'enableTpu'
          property :endpoint, as: 'endpoint'
          property :enterprise_config, as: 'enterpriseConfig', class: Google::Apis::ContainerV1beta1::EnterpriseConfig, decorator: Google::Apis::ContainerV1beta1::EnterpriseConfig::Representation
      
          property :etag, as: 'etag'
          property :expire_time, as: 'expireTime'
          property :fleet, as: 'fleet', class: Google::Apis::ContainerV1beta1::Fleet, decorator: Google::Apis::ContainerV1beta1::Fleet::Representation
      
          property :gke_auto_upgrade_config, as: 'gkeAutoUpgradeConfig', class: Google::Apis::ContainerV1beta1::GkeAutoUpgradeConfig, decorator: Google::Apis::ContainerV1beta1::GkeAutoUpgradeConfig::Representation
      
          property :id, as: 'id'
          property :identity_service_config, as: 'identityServiceConfig', class: Google::Apis::ContainerV1beta1::IdentityServiceConfig, decorator: Google::Apis::ContainerV1beta1::IdentityServiceConfig::Representation
      
          property :initial_cluster_version, as: 'initialClusterVersion'
          property :initial_node_count, as: 'initialNodeCount'
          collection :instance_group_urls, as: 'instanceGroupUrls'
          property :ip_allocation_policy, as: 'ipAllocationPolicy', class: Google::Apis::ContainerV1beta1::IpAllocationPolicy, decorator: Google::Apis::ContainerV1beta1::IpAllocationPolicy::Representation
      
          property :label_fingerprint, as: 'labelFingerprint'
          property :legacy_abac, as: 'legacyAbac', class: Google::Apis::ContainerV1beta1::LegacyAbac, decorator: Google::Apis::ContainerV1beta1::LegacyAbac::Representation
      
          property :location, as: 'location'
          collection :locations, as: 'locations'
          property :logging_config, as: 'loggingConfig', class: Google::Apis::ContainerV1beta1::LoggingConfig, decorator: Google::Apis::ContainerV1beta1::LoggingConfig::Representation
      
          property :logging_service, as: 'loggingService'
          property :maintenance_policy, as: 'maintenancePolicy', class: Google::Apis::ContainerV1beta1::MaintenancePolicy, decorator: Google::Apis::ContainerV1beta1::MaintenancePolicy::Representation
      
          property :managed_opentelemetry_config, as: 'managedOpentelemetryConfig', class: Google::Apis::ContainerV1beta1::ManagedOpenTelemetryConfig, decorator: Google::Apis::ContainerV1beta1::ManagedOpenTelemetryConfig::Representation
      
          property :master, as: 'master', class: Google::Apis::ContainerV1beta1::Master, decorator: Google::Apis::ContainerV1beta1::Master::Representation
      
          property :master_auth, as: 'masterAuth', class: Google::Apis::ContainerV1beta1::MasterAuth, decorator: Google::Apis::ContainerV1beta1::MasterAuth::Representation
      
          property :master_authorized_networks_config, as: 'masterAuthorizedNetworksConfig', class: Google::Apis::ContainerV1beta1::MasterAuthorizedNetworksConfig, decorator: Google::Apis::ContainerV1beta1::MasterAuthorizedNetworksConfig::Representation
      
          property :master_ipv4_cidr_block, as: 'masterIpv4CidrBlock'
          property :mesh_certificates, as: 'meshCertificates', class: Google::Apis::ContainerV1beta1::MeshCertificates, decorator: Google::Apis::ContainerV1beta1::MeshCertificates::Representation
      
          property :monitoring_config, as: 'monitoringConfig', class: Google::Apis::ContainerV1beta1::MonitoringConfig, decorator: Google::Apis::ContainerV1beta1::MonitoringConfig::Representation
      
          property :monitoring_service, as: 'monitoringService'
          property :name, as: 'name'
          property :network, as: 'network'
          property :network_config, as: 'networkConfig', class: Google::Apis::ContainerV1beta1::NetworkConfig, decorator: Google::Apis::ContainerV1beta1::NetworkConfig::Representation
      
          property :network_policy, as: 'networkPolicy', class: Google::Apis::ContainerV1beta1::NetworkPolicy, decorator: Google::Apis::ContainerV1beta1::NetworkPolicy::Representation
      
          property :node_config, as: 'nodeConfig', class: Google::Apis::ContainerV1beta1::NodeConfig, decorator: Google::Apis::ContainerV1beta1::NodeConfig::Representation
      
          property :node_ipv4_cidr_size, as: 'nodeIpv4CidrSize'
          property :node_pool_auto_config, as: 'nodePoolAutoConfig', class: Google::Apis::ContainerV1beta1::NodePoolAutoConfig, decorator: Google::Apis::ContainerV1beta1::NodePoolAutoConfig::Representation
      
          property :node_pool_defaults, as: 'nodePoolDefaults', class: Google::Apis::ContainerV1beta1::NodePoolDefaults, decorator: Google::Apis::ContainerV1beta1::NodePoolDefaults::Representation
      
          collection :node_pools, as: 'nodePools', class: Google::Apis::ContainerV1beta1::NodePool, decorator: Google::Apis::ContainerV1beta1::NodePool::Representation
      
          property :notification_config, as: 'notificationConfig', class: Google::Apis::ContainerV1beta1::NotificationConfig, decorator: Google::Apis::ContainerV1beta1::NotificationConfig::Representation
      
          property :parent_product_config, as: 'parentProductConfig', class: Google::Apis::ContainerV1beta1::ParentProductConfig, decorator: Google::Apis::ContainerV1beta1::ParentProductConfig::Representation
      
          property :pod_autoscaling, as: 'podAutoscaling', class: Google::Apis::ContainerV1beta1::PodAutoscaling, decorator: Google::Apis::ContainerV1beta1::PodAutoscaling::Representation
      
          property :pod_security_policy_config, as: 'podSecurityPolicyConfig', class: Google::Apis::ContainerV1beta1::PodSecurityPolicyConfig, decorator: Google::Apis::ContainerV1beta1::PodSecurityPolicyConfig::Representation
      
          property :private_cluster, as: 'privateCluster'
          property :private_cluster_config, as: 'privateClusterConfig', class: Google::Apis::ContainerV1beta1::PrivateClusterConfig, decorator: Google::Apis::ContainerV1beta1::PrivateClusterConfig::Representation
      
          property :protect_config, as: 'protectConfig', class: Google::Apis::ContainerV1beta1::ProtectConfig, decorator: Google::Apis::ContainerV1beta1::ProtectConfig::Representation
      
          property :rbac_binding_config, as: 'rbacBindingConfig', class: Google::Apis::ContainerV1beta1::RbacBindingConfig, decorator: Google::Apis::ContainerV1beta1::RbacBindingConfig::Representation
      
          property :release_channel, as: 'releaseChannel', class: Google::Apis::ContainerV1beta1::ReleaseChannel, decorator: Google::Apis::ContainerV1beta1::ReleaseChannel::Representation
      
          hash :resource_labels, as: 'resourceLabels'
          property :resource_usage_export_config, as: 'resourceUsageExportConfig', class: Google::Apis::ContainerV1beta1::ResourceUsageExportConfig, decorator: Google::Apis::ContainerV1beta1::ResourceUsageExportConfig::Representation
      
          property :rollback_safe_upgrade, as: 'rollbackSafeUpgrade', class: Google::Apis::ContainerV1beta1::RollbackSafeUpgrade, decorator: Google::Apis::ContainerV1beta1::RollbackSafeUpgrade::Representation
      
          property :satisfies_pzi, as: 'satisfiesPzi'
          property :satisfies_pzs, as: 'satisfiesPzs'
          property :secret_manager_config, as: 'secretManagerConfig', class: Google::Apis::ContainerV1beta1::SecretManagerConfig, decorator: Google::Apis::ContainerV1beta1::SecretManagerConfig::Representation
      
          property :secret_sync_config, as: 'secretSyncConfig', class: Google::Apis::ContainerV1beta1::SecretSyncConfig, decorator: Google::Apis::ContainerV1beta1::SecretSyncConfig::Representation
      
          property :security_posture_config, as: 'securityPostureConfig', class: Google::Apis::ContainerV1beta1::SecurityPostureConfig, decorator: Google::Apis::ContainerV1beta1::SecurityPostureConfig::Representation
      
          property :self_link, as: 'selfLink'
          property :services_ipv4_cidr, as: 'servicesIpv4Cidr'
          property :shielded_nodes, as: 'shieldedNodes', class: Google::Apis::ContainerV1beta1::ShieldedNodes, decorator: Google::Apis::ContainerV1beta1::ShieldedNodes::Representation
      
          property :status, as: 'status'
          property :status_message, as: 'statusMessage'
          property :subnetwork, as: 'subnetwork'
          property :tpu_config, as: 'tpuConfig', class: Google::Apis::ContainerV1beta1::TpuConfig, decorator: Google::Apis::ContainerV1beta1::TpuConfig::Representation
      
          property :tpu_ipv4_cidr_block, as: 'tpuIpv4CidrBlock'
          property :user_managed_keys_config, as: 'userManagedKeysConfig', class: Google::Apis::ContainerV1beta1::UserManagedKeysConfig, decorator: Google::Apis::ContainerV1beta1::UserManagedKeysConfig::Representation
      
          property :vertical_pod_autoscaling, as: 'verticalPodAutoscaling', class: Google::Apis::ContainerV1beta1::VerticalPodAutoscaling, decorator: Google::Apis::ContainerV1beta1::VerticalPodAutoscaling::Representation
      
          property :workload_alts_config, as: 'workloadAltsConfig', class: Google::Apis::ContainerV1beta1::WorkloadAltsConfig, decorator: Google::Apis::ContainerV1beta1::WorkloadAltsConfig::Representation
      
          property :workload_certificates, as: 'workloadCertificates', class: Google::Apis::ContainerV1beta1::WorkloadCertificates, decorator: Google::Apis::ContainerV1beta1::WorkloadCertificates::Representation
      
          property :workload_identity_config, as: 'workloadIdentityConfig', class: Google::Apis::ContainerV1beta1::WorkloadIdentityConfig, decorator: Google::Apis::ContainerV1beta1::WorkloadIdentityConfig::Representation
      
          property :zone, as: 'zone'
        end
      end
      
      class ClusterAutoscaling
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :autopilot_general_profile, as: 'autopilotGeneralProfile'
          collection :autoprovisioning_locations, as: 'autoprovisioningLocations'
          property :autoprovisioning_node_pool_defaults, as: 'autoprovisioningNodePoolDefaults', class: Google::Apis::ContainerV1beta1::AutoprovisioningNodePoolDefaults, decorator: Google::Apis::ContainerV1beta1::AutoprovisioningNodePoolDefaults::Representation
      
          property :autoscaling_profile, as: 'autoscalingProfile'
          property :default_compute_class_config, as: 'defaultComputeClassConfig', class: Google::Apis::ContainerV1beta1::DefaultComputeClassConfig, decorator: Google::Apis::ContainerV1beta1::DefaultComputeClassConfig::Representation
      
          property :enable_node_autoprovisioning, as: 'enableNodeAutoprovisioning'
          collection :resource_limits, as: 'resourceLimits', class: Google::Apis::ContainerV1beta1::ResourceLimit, decorator: Google::Apis::ContainerV1beta1::ResourceLimit::Representation
      
        end
      end
      
      class ClusterNetworkPerformanceConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :total_egress_bandwidth_tier, as: 'totalEgressBandwidthTier'
        end
      end
      
      class ClusterTelemetry
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :type, as: 'type'
        end
      end
      
      class ClusterUpdate
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :additional_pod_ranges_config, as: 'additionalPodRangesConfig', class: Google::Apis::ContainerV1beta1::AdditionalPodRangesConfig, decorator: Google::Apis::ContainerV1beta1::AdditionalPodRangesConfig::Representation
      
          property :desired_additional_ip_ranges_config, as: 'desiredAdditionalIpRangesConfig', class: Google::Apis::ContainerV1beta1::DesiredAdditionalIpRangesConfig, decorator: Google::Apis::ContainerV1beta1::DesiredAdditionalIpRangesConfig::Representation
      
          property :desired_addons_config, as: 'desiredAddonsConfig', class: Google::Apis::ContainerV1beta1::AddonsConfig, decorator: Google::Apis::ContainerV1beta1::AddonsConfig::Representation
      
          property :desired_anonymous_authentication_config, as: 'desiredAnonymousAuthenticationConfig', class: Google::Apis::ContainerV1beta1::AnonymousAuthenticationConfig, decorator: Google::Apis::ContainerV1beta1::AnonymousAuthenticationConfig::Representation
      
          property :desired_authenticator_groups_config, as: 'desiredAuthenticatorGroupsConfig', class: Google::Apis::ContainerV1beta1::AuthenticatorGroupsConfig, decorator: Google::Apis::ContainerV1beta1::AuthenticatorGroupsConfig::Representation
      
          property :desired_auto_ipam_config, as: 'desiredAutoIpamConfig', class: Google::Apis::ContainerV1beta1::AutoIpamConfig, decorator: Google::Apis::ContainerV1beta1::AutoIpamConfig::Representation
      
          property :desired_autopilot_workload_policy_config, as: 'desiredAutopilotWorkloadPolicyConfig', class: Google::Apis::ContainerV1beta1::WorkloadPolicyConfig, decorator: Google::Apis::ContainerV1beta1::WorkloadPolicyConfig::Representation
      
          property :desired_binary_authorization, as: 'desiredBinaryAuthorization', class: Google::Apis::ContainerV1beta1::BinaryAuthorization, decorator: Google::Apis::ContainerV1beta1::BinaryAuthorization::Representation
      
          property :desired_cluster_autoscaling, as: 'desiredClusterAutoscaling', class: Google::Apis::ContainerV1beta1::ClusterAutoscaling, decorator: Google::Apis::ContainerV1beta1::ClusterAutoscaling::Representation
      
          property :desired_cluster_telemetry, as: 'desiredClusterTelemetry', class: Google::Apis::ContainerV1beta1::ClusterTelemetry, decorator: Google::Apis::ContainerV1beta1::ClusterTelemetry::Representation
      
          property :desired_compliance_posture_config, as: 'desiredCompliancePostureConfig', class: Google::Apis::ContainerV1beta1::CompliancePostureConfig, decorator: Google::Apis::ContainerV1beta1::CompliancePostureConfig::Representation
      
          property :desired_containerd_config, as: 'desiredContainerdConfig', class: Google::Apis::ContainerV1beta1::ContainerdConfig, decorator: Google::Apis::ContainerV1beta1::ContainerdConfig::Representation
      
          property :desired_control_plane_endpoints_config, as: 'desiredControlPlaneEndpointsConfig', class: Google::Apis::ContainerV1beta1::ControlPlaneEndpointsConfig, decorator: Google::Apis::ContainerV1beta1::ControlPlaneEndpointsConfig::Representation
      
          property :desired_cost_management_config, as: 'desiredCostManagementConfig', class: Google::Apis::ContainerV1beta1::CostManagementConfig, decorator: Google::Apis::ContainerV1beta1::CostManagementConfig::Representation
      
          property :desired_database_encryption, as: 'desiredDatabaseEncryption', class: Google::Apis::ContainerV1beta1::DatabaseEncryption, decorator: Google::Apis::ContainerV1beta1::DatabaseEncryption::Representation
      
          property :desired_datapath_provider, as: 'desiredDatapathProvider'
          property :desired_default_enable_private_nodes, as: 'desiredDefaultEnablePrivateNodes'
          property :desired_default_snat_status, as: 'desiredDefaultSnatStatus', class: Google::Apis::ContainerV1beta1::DefaultSnatStatus, decorator: Google::Apis::ContainerV1beta1::DefaultSnatStatus::Representation
      
          property :desired_disable_l4_lb_firewall_reconciliation, as: 'desiredDisableL4LbFirewallReconciliation'
          property :desired_dns_config, as: 'desiredDnsConfig', class: Google::Apis::ContainerV1beta1::DnsConfig, decorator: Google::Apis::ContainerV1beta1::DnsConfig::Representation
      
          property :desired_enable_cilium_clusterwide_network_policy, as: 'desiredEnableCiliumClusterwideNetworkPolicy'
          property :desired_enable_fqdn_network_policy, as: 'desiredEnableFqdnNetworkPolicy'
          property :desired_enable_multi_networking, as: 'desiredEnableMultiNetworking'
          property :desired_enable_private_endpoint, as: 'desiredEnablePrivateEndpoint'
          property :desired_enterprise_config, as: 'desiredEnterpriseConfig', class: Google::Apis::ContainerV1beta1::DesiredEnterpriseConfig, decorator: Google::Apis::ContainerV1beta1::DesiredEnterpriseConfig::Representation
      
          property :desired_fleet, as: 'desiredFleet', class: Google::Apis::ContainerV1beta1::Fleet, decorator: Google::Apis::ContainerV1beta1::Fleet::Representation
      
          property :desired_gateway_api_config, as: 'desiredGatewayApiConfig', class: Google::Apis::ContainerV1beta1::GatewayApiConfig, decorator: Google::Apis::ContainerV1beta1::GatewayApiConfig::Representation
      
          property :desired_gcfs_config, as: 'desiredGcfsConfig', class: Google::Apis::ContainerV1beta1::GcfsConfig, decorator: Google::Apis::ContainerV1beta1::GcfsConfig::Representation
      
          property :desired_host_maintenance_policy, as: 'desiredHostMaintenancePolicy', class: Google::Apis::ContainerV1beta1::HostMaintenancePolicy, decorator: Google::Apis::ContainerV1beta1::HostMaintenancePolicy::Representation
      
          property :desired_identity_service_config, as: 'desiredIdentityServiceConfig', class: Google::Apis::ContainerV1beta1::IdentityServiceConfig, decorator: Google::Apis::ContainerV1beta1::IdentityServiceConfig::Representation
      
          property :desired_image_type, as: 'desiredImageType'
          property :desired_in_transit_encryption_config, as: 'desiredInTransitEncryptionConfig'
          property :desired_intra_node_visibility_config, as: 'desiredIntraNodeVisibilityConfig', class: Google::Apis::ContainerV1beta1::IntraNodeVisibilityConfig, decorator: Google::Apis::ContainerV1beta1::IntraNodeVisibilityConfig::Representation
      
          property :desired_k8s_beta_apis, as: 'desiredK8sBetaApis', class: Google::Apis::ContainerV1beta1::K8sBetaApiConfig, decorator: Google::Apis::ContainerV1beta1::K8sBetaApiConfig::Representation
      
          property :desired_l4ilb_subsetting_config, as: 'desiredL4ilbSubsettingConfig', class: Google::Apis::ContainerV1beta1::IlbSubsettingConfig, decorator: Google::Apis::ContainerV1beta1::IlbSubsettingConfig::Representation
      
          collection :desired_locations, as: 'desiredLocations'
          property :desired_logging_config, as: 'desiredLoggingConfig', class: Google::Apis::ContainerV1beta1::LoggingConfig, decorator: Google::Apis::ContainerV1beta1::LoggingConfig::Representation
      
          property :desired_logging_service, as: 'desiredLoggingService'
          property :desired_managed_opentelemetry_config, as: 'desiredManagedOpentelemetryConfig', class: Google::Apis::ContainerV1beta1::ManagedOpenTelemetryConfig, decorator: Google::Apis::ContainerV1beta1::ManagedOpenTelemetryConfig::Representation
      
          property :desired_master, as: 'desiredMaster', class: Google::Apis::ContainerV1beta1::Master, decorator: Google::Apis::ContainerV1beta1::Master::Representation
      
          property :desired_master_authorized_networks_config, as: 'desiredMasterAuthorizedNetworksConfig', class: Google::Apis::ContainerV1beta1::MasterAuthorizedNetworksConfig, decorator: Google::Apis::ContainerV1beta1::MasterAuthorizedNetworksConfig::Representation
      
          property :desired_master_version, as: 'desiredMasterVersion'
          property :desired_mesh_certificates, as: 'desiredMeshCertificates', class: Google::Apis::ContainerV1beta1::MeshCertificates, decorator: Google::Apis::ContainerV1beta1::MeshCertificates::Representation
      
          property :desired_monitoring_config, as: 'desiredMonitoringConfig', class: Google::Apis::ContainerV1beta1::MonitoringConfig, decorator: Google::Apis::ContainerV1beta1::MonitoringConfig::Representation
      
          property :desired_monitoring_service, as: 'desiredMonitoringService'
          property :desired_network_performance_config, as: 'desiredNetworkPerformanceConfig', class: Google::Apis::ContainerV1beta1::ClusterNetworkPerformanceConfig, decorator: Google::Apis::ContainerV1beta1::ClusterNetworkPerformanceConfig::Representation
      
          property :desired_network_tier_config, as: 'desiredNetworkTierConfig', class: Google::Apis::ContainerV1beta1::NetworkTierConfig, decorator: Google::Apis::ContainerV1beta1::NetworkTierConfig::Representation
      
          property :desired_node_kubelet_config, as: 'desiredNodeKubeletConfig', class: Google::Apis::ContainerV1beta1::NodeKubeletConfig, decorator: Google::Apis::ContainerV1beta1::NodeKubeletConfig::Representation
      
          property :desired_node_pool_auto_config_kubelet_config, as: 'desiredNodePoolAutoConfigKubeletConfig', class: Google::Apis::ContainerV1beta1::NodeKubeletConfig, decorator: Google::Apis::ContainerV1beta1::NodeKubeletConfig::Representation
      
          property :desired_node_pool_auto_config_linux_node_config, as: 'desiredNodePoolAutoConfigLinuxNodeConfig', class: Google::Apis::ContainerV1beta1::LinuxNodeConfig, decorator: Google::Apis::ContainerV1beta1::LinuxNodeConfig::Representation
      
          property :desired_node_pool_auto_config_network_tags, as: 'desiredNodePoolAutoConfigNetworkTags', class: Google::Apis::ContainerV1beta1::NetworkTags, decorator: Google::Apis::ContainerV1beta1::NetworkTags::Representation
      
          property :desired_node_pool_auto_config_resource_manager_tags, as: 'desiredNodePoolAutoConfigResourceManagerTags', class: Google::Apis::ContainerV1beta1::ResourceManagerTags, decorator: Google::Apis::ContainerV1beta1::ResourceManagerTags::Representation
      
          property :desired_node_pool_autoscaling, as: 'desiredNodePoolAutoscaling', class: Google::Apis::ContainerV1beta1::NodePoolAutoscaling, decorator: Google::Apis::ContainerV1beta1::NodePoolAutoscaling::Representation
      
          property :desired_node_pool_id, as: 'desiredNodePoolId'
          property :desired_node_pool_logging_config, as: 'desiredNodePoolLoggingConfig', class: Google::Apis::ContainerV1beta1::NodePoolLoggingConfig, decorator: Google::Apis::ContainerV1beta1::NodePoolLoggingConfig::Representation
      
          property :desired_node_version, as: 'desiredNodeVersion'
          property :desired_notification_config, as: 'desiredNotificationConfig', class: Google::Apis::ContainerV1beta1::NotificationConfig, decorator: Google::Apis::ContainerV1beta1::NotificationConfig::Representation
      
          property :desired_parent_product_config, as: 'desiredParentProductConfig', class: Google::Apis::ContainerV1beta1::ParentProductConfig, decorator: Google::Apis::ContainerV1beta1::ParentProductConfig::Representation
      
          property :desired_pod_autoscaling, as: 'desiredPodAutoscaling', class: Google::Apis::ContainerV1beta1::PodAutoscaling, decorator: Google::Apis::ContainerV1beta1::PodAutoscaling::Representation
      
          property :desired_pod_security_policy_config, as: 'desiredPodSecurityPolicyConfig', class: Google::Apis::ContainerV1beta1::PodSecurityPolicyConfig, decorator: Google::Apis::ContainerV1beta1::PodSecurityPolicyConfig::Representation
      
          property :desired_private_cluster_config, as: 'desiredPrivateClusterConfig', class: Google::Apis::ContainerV1beta1::PrivateClusterConfig, decorator: Google::Apis::ContainerV1beta1::PrivateClusterConfig::Representation
      
          property :desired_private_ipv6_google_access, as: 'desiredPrivateIpv6GoogleAccess'
          property :desired_privileged_admission_config, as: 'desiredPrivilegedAdmissionConfig', class: Google::Apis::ContainerV1beta1::PrivilegedAdmissionConfig, decorator: Google::Apis::ContainerV1beta1::PrivilegedAdmissionConfig::Representation
      
          property :desired_protect_config, as: 'desiredProtectConfig', class: Google::Apis::ContainerV1beta1::ProtectConfig, decorator: Google::Apis::ContainerV1beta1::ProtectConfig::Representation
      
          property :desired_rbac_binding_config, as: 'desiredRbacBindingConfig', class: Google::Apis::ContainerV1beta1::RbacBindingConfig, decorator: Google::Apis::ContainerV1beta1::RbacBindingConfig::Representation
      
          property :desired_release_channel, as: 'desiredReleaseChannel', class: Google::Apis::ContainerV1beta1::ReleaseChannel, decorator: Google::Apis::ContainerV1beta1::ReleaseChannel::Representation
      
          property :desired_resource_usage_export_config, as: 'desiredResourceUsageExportConfig', class: Google::Apis::ContainerV1beta1::ResourceUsageExportConfig, decorator: Google::Apis::ContainerV1beta1::ResourceUsageExportConfig::Representation
      
          property :desired_rollback_safe_upgrade, as: 'desiredRollbackSafeUpgrade', class: Google::Apis::ContainerV1beta1::RollbackSafeUpgrade, decorator: Google::Apis::ContainerV1beta1::RollbackSafeUpgrade::Representation
      
          property :desired_secret_manager_config, as: 'desiredSecretManagerConfig', class: Google::Apis::ContainerV1beta1::SecretManagerConfig, decorator: Google::Apis::ContainerV1beta1::SecretManagerConfig::Representation
      
          property :desired_secret_sync_config, as: 'desiredSecretSyncConfig', class: Google::Apis::ContainerV1beta1::SecretSyncConfig, decorator: Google::Apis::ContainerV1beta1::SecretSyncConfig::Representation
      
          property :desired_security_posture_config, as: 'desiredSecurityPostureConfig', class: Google::Apis::ContainerV1beta1::SecurityPostureConfig, decorator: Google::Apis::ContainerV1beta1::SecurityPostureConfig::Representation
      
          property :desired_service_external_ips_config, as: 'desiredServiceExternalIpsConfig', class: Google::Apis::ContainerV1beta1::ServiceExternalIPsConfig, decorator: Google::Apis::ContainerV1beta1::ServiceExternalIPsConfig::Representation
      
          property :desired_shielded_nodes, as: 'desiredShieldedNodes', class: Google::Apis::ContainerV1beta1::ShieldedNodes, decorator: Google::Apis::ContainerV1beta1::ShieldedNodes::Representation
      
          property :desired_stack_type, as: 'desiredStackType'
          property :desired_tpu_config, as: 'desiredTpuConfig', class: Google::Apis::ContainerV1beta1::TpuConfig, decorator: Google::Apis::ContainerV1beta1::TpuConfig::Representation
      
          property :desired_user_managed_keys_config, as: 'desiredUserManagedKeysConfig', class: Google::Apis::ContainerV1beta1::UserManagedKeysConfig, decorator: Google::Apis::ContainerV1beta1::UserManagedKeysConfig::Representation
      
          property :desired_vertical_pod_autoscaling, as: 'desiredVerticalPodAutoscaling', class: Google::Apis::ContainerV1beta1::VerticalPodAutoscaling, decorator: Google::Apis::ContainerV1beta1::VerticalPodAutoscaling::Representation
      
          property :desired_workload_alts_config, as: 'desiredWorkloadAltsConfig', class: Google::Apis::ContainerV1beta1::WorkloadAltsConfig, decorator: Google::Apis::ContainerV1beta1::WorkloadAltsConfig::Representation
      
          property :desired_workload_certificates, as: 'desiredWorkloadCertificates', class: Google::Apis::ContainerV1beta1::WorkloadCertificates, decorator: Google::Apis::ContainerV1beta1::WorkloadCertificates::Representation
      
          property :desired_workload_identity_config, as: 'desiredWorkloadIdentityConfig', class: Google::Apis::ContainerV1beta1::WorkloadIdentityConfig, decorator: Google::Apis::ContainerV1beta1::WorkloadIdentityConfig::Representation
      
          property :enable_k8s_beta_apis, as: 'enableK8sBetaApis', class: Google::Apis::ContainerV1beta1::K8sBetaApiConfig, decorator: Google::Apis::ContainerV1beta1::K8sBetaApiConfig::Representation
      
          property :etag, as: 'etag'
          property :gke_auto_upgrade_config, as: 'gkeAutoUpgradeConfig', class: Google::Apis::ContainerV1beta1::GkeAutoUpgradeConfig, decorator: Google::Apis::ContainerV1beta1::GkeAutoUpgradeConfig::Representation
      
          property :private_cluster_config, as: 'privateClusterConfig', class: Google::Apis::ContainerV1beta1::PrivateClusterConfig, decorator: Google::Apis::ContainerV1beta1::PrivateClusterConfig::Representation
      
          property :removed_additional_pod_ranges_config, as: 'removedAdditionalPodRangesConfig', class: Google::Apis::ContainerV1beta1::AdditionalPodRangesConfig, decorator: Google::Apis::ContainerV1beta1::AdditionalPodRangesConfig::Representation
      
          property :user_managed_keys_config, as: 'userManagedKeysConfig', class: Google::Apis::ContainerV1beta1::UserManagedKeysConfig, decorator: Google::Apis::ContainerV1beta1::UserManagedKeysConfig::Representation
      
        end
      end
      
      class ClusterUpgradeInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :auto_upgrade_status, as: 'autoUpgradeStatus'
          property :end_of_extended_support_timestamp, as: 'endOfExtendedSupportTimestamp'
          property :end_of_standard_support_timestamp, as: 'endOfStandardSupportTimestamp'
          property :minor_target_version, as: 'minorTargetVersion'
          property :patch_target_version, as: 'patchTargetVersion'
          collection :paused_reason, as: 'pausedReason'
          property :rollback_safe_upgrade_status, as: 'rollbackSafeUpgradeStatus', class: Google::Apis::ContainerV1beta1::RollbackSafeUpgradeStatus, decorator: Google::Apis::ContainerV1beta1::RollbackSafeUpgradeStatus::Representation
      
          collection :upgrade_details, as: 'upgradeDetails', class: Google::Apis::ContainerV1beta1::UpgradeDetails, decorator: Google::Apis::ContainerV1beta1::UpgradeDetails::Representation
      
        end
      end
      
      class CompatibilityStatus
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :downgradable_version, as: 'downgradableVersion'
          property :emulated_version_time, as: 'emulatedVersionTime'
        end
      end
      
      class CompleteControlPlaneUpgradeRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :version, as: 'version'
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
      
      class CompliancePostureConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :compliance_standards, as: 'complianceStandards', class: Google::Apis::ContainerV1beta1::ComplianceStandard, decorator: Google::Apis::ContainerV1beta1::ComplianceStandard::Representation
      
          property :mode, as: 'mode'
        end
      end
      
      class ComplianceStandard
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :standard, as: 'standard'
        end
      end
      
      class ConfidentialNodes
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :confidential_instance_type, as: 'confidentialInstanceType'
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
      
      class ContainerdConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :private_registry_access_config, as: 'privateRegistryAccessConfig', class: Google::Apis::ContainerV1beta1::PrivateRegistryAccessConfig, decorator: Google::Apis::ContainerV1beta1::PrivateRegistryAccessConfig::Representation
      
          collection :registry_hosts, as: 'registryHosts', class: Google::Apis::ContainerV1beta1::RegistryHostConfig, decorator: Google::Apis::ContainerV1beta1::RegistryHostConfig::Representation
      
          property :writable_cgroups, as: 'writableCgroups', class: Google::Apis::ContainerV1beta1::WritableCgroups, decorator: Google::Apis::ContainerV1beta1::WritableCgroups::Representation
      
        end
      end
      
      class ControlPlaneEndpointsConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :dns_endpoint_config, as: 'dnsEndpointConfig', class: Google::Apis::ContainerV1beta1::DnsEndpointConfig, decorator: Google::Apis::ContainerV1beta1::DnsEndpointConfig::Representation
      
          property :ip_endpoints_config, as: 'ipEndpointsConfig', class: Google::Apis::ContainerV1beta1::IpEndpointsConfig, decorator: Google::Apis::ContainerV1beta1::IpEndpointsConfig::Representation
      
        end
      end
      
      class CostManagementConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :enabled, as: 'enabled'
        end
      end
      
      class CrashLoopBackOffConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :max_container_restart_period, as: 'maxContainerRestartPeriod'
        end
      end
      
      class CreateClusterRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :cluster, as: 'cluster', class: Google::Apis::ContainerV1beta1::Cluster, decorator: Google::Apis::ContainerV1beta1::Cluster::Representation
      
          property :parent, as: 'parent'
          property :project_id, as: 'projectId'
          property :zone, as: 'zone'
        end
      end
      
      class CreateNodePoolRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :cluster_id, as: 'clusterId'
          property :node_pool, as: 'nodePool', class: Google::Apis::ContainerV1beta1::NodePool, decorator: Google::Apis::ContainerV1beta1::NodePool::Representation
      
          property :parent, as: 'parent'
          property :project_id, as: 'projectId'
          property :zone, as: 'zone'
        end
      end
      
      class DnsConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :additive_vpc_scope_dns_domain, as: 'additiveVpcScopeDnsDomain'
          property :cluster_dns, as: 'clusterDns'
          property :cluster_dns_domain, as: 'clusterDnsDomain'
          property :cluster_dns_scope, as: 'clusterDnsScope'
        end
      end
      
      class DnsEndpointConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :allow_external_traffic, as: 'allowExternalTraffic'
          property :enable_k8s_certs_via_dns, as: 'enableK8sCertsViaDns'
          property :enable_k8s_tokens_via_dns, as: 'enableK8sTokensViaDns'
          property :endpoint, as: 'endpoint'
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
          property :current_state, as: 'currentState'
          collection :decryption_keys, as: 'decryptionKeys'
          property :key_name, as: 'keyName'
          collection :last_operation_errors, as: 'lastOperationErrors', class: Google::Apis::ContainerV1beta1::OperationError, decorator: Google::Apis::ContainerV1beta1::OperationError::Representation
      
          property :state, as: 'state'
        end
      end
      
      class Date
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :day, as: 'day'
          property :month, as: 'month'
          property :year, as: 'year'
        end
      end
      
      class DedicatedLocalSsdProfile
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :disk_count, :numeric_string => true, as: 'diskCount'
        end
      end
      
      class DefaultComputeClassConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :enabled, as: 'enabled'
        end
      end
      
      class DefaultSnatStatus
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :disabled, as: 'disabled'
        end
      end
      
      class DesiredAdditionalIpRangesConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :additional_ip_ranges_configs, as: 'additionalIpRangesConfigs', class: Google::Apis::ContainerV1beta1::AdditionalIpRangesConfig, decorator: Google::Apis::ContainerV1beta1::AdditionalIpRangesConfig::Representation
      
        end
      end
      
      class DesiredEnterpriseConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :desired_tier, as: 'desiredTier'
        end
      end
      
      class DisruptionBudget
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :last_disruption_time, as: 'lastDisruptionTime'
          property :last_minor_version_disruption_time, as: 'lastMinorVersionDisruptionTime'
          property :minor_version_disruption_interval, as: 'minorVersionDisruptionInterval'
          property :patch_version_disruption_interval, as: 'patchVersionDisruptionInterval'
        end
      end
      
      class DisruptionEvent
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :disruption_type, as: 'disruptionType'
          property :pdb_blocked_node, as: 'pdbBlockedNode'
          collection :pdb_blocked_pod, as: 'pdbBlockedPod', class: Google::Apis::ContainerV1beta1::PdbBlockedPod, decorator: Google::Apis::ContainerV1beta1::PdbBlockedPod::Representation
      
          property :pdb_violation_timeout, as: 'pdbViolationTimeout'
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
      
      class EncryptionConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :disabled, as: 'disabled'
        end
      end
      
      class EnterpriseConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :cluster_tier, as: 'clusterTier'
          property :desired_tier, as: 'desiredTier'
        end
      end
      
      class EphemeralLocalSsdProfile
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :swap_size_gib, :numeric_string => true, as: 'swapSizeGib'
          property :swap_size_percent, as: 'swapSizePercent'
        end
      end
      
      class EphemeralStorageConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :local_ssd_count, as: 'localSsdCount'
        end
      end
      
      class EphemeralStorageLocalSsdConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :data_cache_count, as: 'dataCacheCount'
          property :local_ssd_count, as: 'localSsdCount'
        end
      end
      
      class EvictionGracePeriod
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :imagefs_available, as: 'imagefsAvailable'
          property :imagefs_inodes_free, as: 'imagefsInodesFree'
          property :memory_available, as: 'memoryAvailable'
          property :nodefs_available, as: 'nodefsAvailable'
          property :nodefs_inodes_free, as: 'nodefsInodesFree'
          property :pid_available, as: 'pidAvailable'
        end
      end
      
      class EvictionMinimumReclaim
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :imagefs_available, as: 'imagefsAvailable'
          property :imagefs_inodes_free, as: 'imagefsInodesFree'
          property :memory_available, as: 'memoryAvailable'
          property :nodefs_available, as: 'nodefsAvailable'
          property :nodefs_inodes_free, as: 'nodefsInodesFree'
          property :pid_available, as: 'pidAvailable'
        end
      end
      
      class EvictionSignals
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :imagefs_available, as: 'imagefsAvailable'
          property :imagefs_inodes_free, as: 'imagefsInodesFree'
          property :memory_available, as: 'memoryAvailable'
          property :nodefs_available, as: 'nodefsAvailable'
          property :nodefs_inodes_free, as: 'nodefsInodesFree'
          property :pid_available, as: 'pidAvailable'
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
          property :membership_type, as: 'membershipType'
          property :pre_registered, as: 'preRegistered'
          property :project, as: 'project'
        end
      end
      
      class GcpSecretManagerCertificateConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :secret_uri, as: 'secretUri'
        end
      end
      
      class GpuDirectConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :gpu_direct_strategy, as: 'gpuDirectStrategy'
        end
      end
      
      class GpuDriverInstallationConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :gpu_driver_version, as: 'gpuDriverVersion'
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
      
      class GcsFuseCsiDriverConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :enabled, as: 'enabled'
        end
      end
      
      class GetJsonWebKeysResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :cache_header, as: 'cacheHeader', class: Google::Apis::ContainerV1beta1::HttpCacheControlResponseHeader, decorator: Google::Apis::ContainerV1beta1::HttpCacheControlResponseHeader::Representation
      
          collection :keys, as: 'keys', class: Google::Apis::ContainerV1beta1::Jwk, decorator: Google::Apis::ContainerV1beta1::Jwk::Representation
      
        end
      end
      
      class GetOpenIdConfigResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :cache_header, as: 'cacheHeader', class: Google::Apis::ContainerV1beta1::HttpCacheControlResponseHeader, decorator: Google::Apis::ContainerV1beta1::HttpCacheControlResponseHeader::Representation
      
          collection :claims_supported, as: 'claims_supported'
          collection :grant_types, as: 'grant_types'
          collection :id_token_signing_alg_values_supported, as: 'id_token_signing_alg_values_supported'
          property :issuer, as: 'issuer'
          property :jwks_uri, as: 'jwks_uri'
          collection :response_types_supported, as: 'response_types_supported'
          collection :subject_types_supported, as: 'subject_types_supported'
        end
      end
      
      class GkeAutoUpgradeConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :patch_mode, as: 'patchMode'
        end
      end
      
      class GkeBackupAgentConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :enabled, as: 'enabled'
        end
      end
      
      class HighScaleCheckpointingConfig
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
      
      class HostConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :ca, as: 'ca', class: Google::Apis::ContainerV1beta1::CertificateConfig, decorator: Google::Apis::ContainerV1beta1::CertificateConfig::Representation
      
          collection :capabilities, as: 'capabilities'
          collection :client, as: 'client', class: Google::Apis::ContainerV1beta1::CertificateConfigPair, decorator: Google::Apis::ContainerV1beta1::CertificateConfigPair::Representation
      
          property :dial_timeout, as: 'dialTimeout'
          collection :header, as: 'header', class: Google::Apis::ContainerV1beta1::RegistryHeader, decorator: Google::Apis::ContainerV1beta1::RegistryHeader::Representation
      
          property :host, as: 'host'
          property :override_path, as: 'overridePath'
        end
      end
      
      class HostMaintenancePolicy
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :maintenance_interval, as: 'maintenanceInterval'
          property :opportunistic_maintenance_strategy, as: 'opportunisticMaintenanceStrategy', class: Google::Apis::ContainerV1beta1::OpportunisticMaintenanceStrategy, decorator: Google::Apis::ContainerV1beta1::OpportunisticMaintenanceStrategy::Representation
      
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
      
      class HugepagesConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :hugepage_size1g, as: 'hugepageSize1g'
          property :hugepage_size2m, as: 'hugepageSize2m'
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
          collection :additional_ip_ranges_configs, as: 'additionalIpRangesConfigs', class: Google::Apis::ContainerV1beta1::AdditionalIpRangesConfig, decorator: Google::Apis::ContainerV1beta1::AdditionalIpRangesConfig::Representation
      
          property :additional_pod_ranges_config, as: 'additionalPodRangesConfig', class: Google::Apis::ContainerV1beta1::AdditionalPodRangesConfig, decorator: Google::Apis::ContainerV1beta1::AdditionalPodRangesConfig::Representation
      
          property :allow_route_overlap, as: 'allowRouteOverlap'
          property :auto_ipam_config, as: 'autoIpamConfig', class: Google::Apis::ContainerV1beta1::AutoIpamConfig, decorator: Google::Apis::ContainerV1beta1::AutoIpamConfig::Representation
      
          property :cluster_ipv4_cidr, as: 'clusterIpv4Cidr'
          property :cluster_ipv4_cidr_block, as: 'clusterIpv4CidrBlock'
          property :cluster_secondary_range_name, as: 'clusterSecondaryRangeName'
          property :create_subnetwork, as: 'createSubnetwork'
          property :default_pod_ipv4_range_utilization, as: 'defaultPodIpv4RangeUtilization'
          property :ipv6_access_type, as: 'ipv6AccessType'
          property :network_tier_config, as: 'networkTierConfig', class: Google::Apis::ContainerV1beta1::NetworkTierConfig, decorator: Google::Apis::ContainerV1beta1::NetworkTierConfig::Representation
      
          property :node_ipv4_cidr, as: 'nodeIpv4Cidr'
          property :node_ipv4_cidr_block, as: 'nodeIpv4CidrBlock'
          property :pod_cidr_overprovision_config, as: 'podCidrOverprovisionConfig', class: Google::Apis::ContainerV1beta1::PodCidrOverprovisionConfig, decorator: Google::Apis::ContainerV1beta1::PodCidrOverprovisionConfig::Representation
      
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
      
      class IpEndpointsConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :authorized_networks_config, as: 'authorizedNetworksConfig', class: Google::Apis::ContainerV1beta1::MasterAuthorizedNetworksConfig, decorator: Google::Apis::ContainerV1beta1::MasterAuthorizedNetworksConfig::Representation
      
          property :enable_public_endpoint, as: 'enablePublicEndpoint'
          property :enabled, as: 'enabled'
          property :global_access, as: 'globalAccess'
          property :private_endpoint, as: 'privateEndpoint'
          property :private_endpoint_subnetwork, as: 'privateEndpointSubnetwork'
          property :public_endpoint, as: 'publicEndpoint'
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
      
      class IstioConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :auth, as: 'auth'
          property :disabled, as: 'disabled'
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
      
      class K8sBetaApiConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :enabled_apis, as: 'enabledApis'
        end
      end
      
      class KalmConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :enabled, as: 'enabled'
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
          property :hugepages, as: 'hugepages', class: Google::Apis::ContainerV1beta1::HugepagesConfig, decorator: Google::Apis::ContainerV1beta1::HugepagesConfig::Representation
      
          property :node_kernel_module_loading, as: 'nodeKernelModuleLoading', class: Google::Apis::ContainerV1beta1::NodeKernelModuleLoading, decorator: Google::Apis::ContainerV1beta1::NodeKernelModuleLoading::Representation
      
          property :swap_config, as: 'swapConfig', class: Google::Apis::ContainerV1beta1::SwapConfig, decorator: Google::Apis::ContainerV1beta1::SwapConfig::Representation
      
          hash :sysctls, as: 'sysctls'
          property :transparent_hugepage_defrag, as: 'transparentHugepageDefrag'
          property :transparent_hugepage_enabled, as: 'transparentHugepageEnabled'
        end
      end
      
      class ListClustersResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :clusters, as: 'clusters', class: Google::Apis::ContainerV1beta1::Cluster, decorator: Google::Apis::ContainerV1beta1::Cluster::Representation
      
          collection :missing_zones, as: 'missingZones'
        end
      end
      
      class ListLocationsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :locations, as: 'locations', class: Google::Apis::ContainerV1beta1::Location, decorator: Google::Apis::ContainerV1beta1::Location::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class ListNodePoolsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :node_pools, as: 'nodePools', class: Google::Apis::ContainerV1beta1::NodePool, decorator: Google::Apis::ContainerV1beta1::NodePool::Representation
      
        end
      end
      
      class ListOperationsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :missing_zones, as: 'missingZones'
          collection :operations, as: 'operations', class: Google::Apis::ContainerV1beta1::Operation, decorator: Google::Apis::ContainerV1beta1::Operation::Representation
      
        end
      end
      
      class ListUsableSubnetworksResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :subnetworks, as: 'subnetworks', class: Google::Apis::ContainerV1beta1::UsableSubnetwork, decorator: Google::Apis::ContainerV1beta1::UsableSubnetwork::Representation
      
        end
      end
      
      class LocalNvmeSsdBlockConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :local_ssd_count, as: 'localSsdCount'
        end
      end
      
      class Location
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :name, as: 'name'
          property :recommended, as: 'recommended'
          property :type, as: 'type'
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
          property :component_config, as: 'componentConfig', class: Google::Apis::ContainerV1beta1::LoggingComponentConfig, decorator: Google::Apis::ContainerV1beta1::LoggingComponentConfig::Representation
      
        end
      end
      
      class LoggingVariantConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :variant, as: 'variant'
        end
      end
      
      class LustreCsiDriverConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :enable_legacy_lustre_port, as: 'enableLegacyLustrePort'
          property :enabled, as: 'enabled'
        end
      end
      
      class MaintenanceExclusionOptions
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :end_time_behavior, as: 'endTimeBehavior'
          property :scope, as: 'scope'
        end
      end
      
      class MaintenancePolicy
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :disruption_budget, as: 'disruptionBudget', class: Google::Apis::ContainerV1beta1::DisruptionBudget, decorator: Google::Apis::ContainerV1beta1::DisruptionBudget::Representation
      
          property :resource_version, as: 'resourceVersion'
          property :window, as: 'window', class: Google::Apis::ContainerV1beta1::MaintenanceWindow, decorator: Google::Apis::ContainerV1beta1::MaintenanceWindow::Representation
      
        end
      end
      
      class MaintenanceWindow
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :daily_maintenance_window, as: 'dailyMaintenanceWindow', class: Google::Apis::ContainerV1beta1::DailyMaintenanceWindow, decorator: Google::Apis::ContainerV1beta1::DailyMaintenanceWindow::Representation
      
          hash :maintenance_exclusions, as: 'maintenanceExclusions', class: Google::Apis::ContainerV1beta1::TimeWindow, decorator: Google::Apis::ContainerV1beta1::TimeWindow::Representation
      
          property :recurring_window, as: 'recurringWindow', class: Google::Apis::ContainerV1beta1::RecurringTimeWindow, decorator: Google::Apis::ContainerV1beta1::RecurringTimeWindow::Representation
      
        end
      end
      
      class ManagedOpenTelemetryConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :scope, as: 'scope'
        end
      end
      
      class ManagedPrometheusConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :auto_monitoring_config, as: 'autoMonitoringConfig', class: Google::Apis::ContainerV1beta1::AutoMonitoringConfig, decorator: Google::Apis::ContainerV1beta1::AutoMonitoringConfig::Representation
      
          property :enabled, as: 'enabled'
        end
      end
      
      class Master
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :compatibility_status, as: 'compatibilityStatus', class: Google::Apis::ContainerV1beta1::CompatibilityStatus, decorator: Google::Apis::ContainerV1beta1::CompatibilityStatus::Representation
      
        end
      end
      
      class MasterAuth
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :client_certificate, as: 'clientCertificate'
          property :client_certificate_config, as: 'clientCertificateConfig', class: Google::Apis::ContainerV1beta1::ClientCertificateConfig, decorator: Google::Apis::ContainerV1beta1::ClientCertificateConfig::Representation
      
          property :client_key, as: 'clientKey'
          property :cluster_ca_certificate, as: 'clusterCaCertificate'
          property :password, as: 'password'
          property :username, as: 'username'
        end
      end
      
      class MasterAuthorizedNetworksConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :cidr_blocks, as: 'cidrBlocks', class: Google::Apis::ContainerV1beta1::CidrBlock, decorator: Google::Apis::ContainerV1beta1::CidrBlock::Representation
      
          property :enabled, as: 'enabled'
          property :gcp_public_cidrs_access_enabled, as: 'gcpPublicCidrsAccessEnabled'
          property :private_endpoint_enforcement_enabled, as: 'privateEndpointEnforcementEnabled'
        end
      end
      
      class MaxPodsConstraint
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :max_pods_per_node, :numeric_string => true, as: 'maxPodsPerNode'
        end
      end
      
      class MemoryManager
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :policy, as: 'policy'
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
          property :advanced_datapath_observability_config, as: 'advancedDatapathObservabilityConfig', class: Google::Apis::ContainerV1beta1::AdvancedDatapathObservabilityConfig, decorator: Google::Apis::ContainerV1beta1::AdvancedDatapathObservabilityConfig::Representation
      
          property :component_config, as: 'componentConfig', class: Google::Apis::ContainerV1beta1::MonitoringComponentConfig, decorator: Google::Apis::ContainerV1beta1::MonitoringComponentConfig::Representation
      
          property :managed_prometheus_config, as: 'managedPrometheusConfig', class: Google::Apis::ContainerV1beta1::ManagedPrometheusConfig, decorator: Google::Apis::ContainerV1beta1::ManagedPrometheusConfig::Representation
      
        end
      end
      
      class NetworkConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :datapath_provider, as: 'datapathProvider'
          property :default_enable_private_nodes, as: 'defaultEnablePrivateNodes'
          property :default_snat_status, as: 'defaultSnatStatus', class: Google::Apis::ContainerV1beta1::DefaultSnatStatus, decorator: Google::Apis::ContainerV1beta1::DefaultSnatStatus::Representation
      
          property :disable_l4_lb_firewall_reconciliation, as: 'disableL4LbFirewallReconciliation'
          property :dns_config, as: 'dnsConfig', class: Google::Apis::ContainerV1beta1::DnsConfig, decorator: Google::Apis::ContainerV1beta1::DnsConfig::Representation
      
          property :enable_cilium_clusterwide_network_policy, as: 'enableCiliumClusterwideNetworkPolicy'
          property :enable_fqdn_network_policy, as: 'enableFqdnNetworkPolicy'
          property :enable_intra_node_visibility, as: 'enableIntraNodeVisibility'
          property :enable_l4ilb_subsetting, as: 'enableL4ilbSubsetting'
          property :enable_multi_networking, as: 'enableMultiNetworking'
          property :gateway_api_config, as: 'gatewayApiConfig', class: Google::Apis::ContainerV1beta1::GatewayApiConfig, decorator: Google::Apis::ContainerV1beta1::GatewayApiConfig::Representation
      
          property :in_transit_encryption_config, as: 'inTransitEncryptionConfig'
          property :network, as: 'network'
          property :network_performance_config, as: 'networkPerformanceConfig', class: Google::Apis::ContainerV1beta1::ClusterNetworkPerformanceConfig, decorator: Google::Apis::ContainerV1beta1::ClusterNetworkPerformanceConfig::Representation
      
          property :private_ipv6_google_access, as: 'privateIpv6GoogleAccess'
          property :service_external_ips_config, as: 'serviceExternalIpsConfig', class: Google::Apis::ContainerV1beta1::ServiceExternalIPsConfig, decorator: Google::Apis::ContainerV1beta1::ServiceExternalIPsConfig::Representation
      
          property :subnetwork, as: 'subnetwork'
        end
      end
      
      class NetworkPerformanceConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :external_ip_egress_bandwidth_tier, as: 'externalIpEgressBandwidthTier'
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
      
      class NetworkTierConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :network_tier, as: 'networkTier'
        end
      end
      
      class NodeAffinity
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :key, as: 'key'
          property :operator, as: 'operator'
          collection :values, as: 'values'
        end
      end
      
      class NodeConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :accelerators, as: 'accelerators', class: Google::Apis::ContainerV1beta1::AcceleratorConfig, decorator: Google::Apis::ContainerV1beta1::AcceleratorConfig::Representation
      
          property :advanced_machine_features, as: 'advancedMachineFeatures', class: Google::Apis::ContainerV1beta1::AdvancedMachineFeatures, decorator: Google::Apis::ContainerV1beta1::AdvancedMachineFeatures::Representation
      
          property :boot_disk, as: 'bootDisk', class: Google::Apis::ContainerV1beta1::BootDisk, decorator: Google::Apis::ContainerV1beta1::BootDisk::Representation
      
          property :boot_disk_kms_key, as: 'bootDiskKmsKey'
          property :confidential_nodes, as: 'confidentialNodes', class: Google::Apis::ContainerV1beta1::ConfidentialNodes, decorator: Google::Apis::ContainerV1beta1::ConfidentialNodes::Representation
      
          property :consolidation_delay, as: 'consolidationDelay'
          property :containerd_config, as: 'containerdConfig', class: Google::Apis::ContainerV1beta1::ContainerdConfig, decorator: Google::Apis::ContainerV1beta1::ContainerdConfig::Representation
      
          property :disk_size_gb, as: 'diskSizeGb'
          property :disk_type, as: 'diskType'
          property :effective_cgroup_mode, as: 'effectiveCgroupMode'
          property :enable_confidential_storage, as: 'enableConfidentialStorage'
          property :ephemeral_storage_config, as: 'ephemeralStorageConfig', class: Google::Apis::ContainerV1beta1::EphemeralStorageConfig, decorator: Google::Apis::ContainerV1beta1::EphemeralStorageConfig::Representation
      
          property :ephemeral_storage_local_ssd_config, as: 'ephemeralStorageLocalSsdConfig', class: Google::Apis::ContainerV1beta1::EphemeralStorageLocalSsdConfig, decorator: Google::Apis::ContainerV1beta1::EphemeralStorageLocalSsdConfig::Representation
      
          property :fast_socket, as: 'fastSocket', class: Google::Apis::ContainerV1beta1::FastSocket, decorator: Google::Apis::ContainerV1beta1::FastSocket::Representation
      
          property :flex_start, as: 'flexStart'
          property :gcfs_config, as: 'gcfsConfig', class: Google::Apis::ContainerV1beta1::GcfsConfig, decorator: Google::Apis::ContainerV1beta1::GcfsConfig::Representation
      
          property :gpu_direct_config, as: 'gpuDirectConfig', class: Google::Apis::ContainerV1beta1::GpuDirectConfig, decorator: Google::Apis::ContainerV1beta1::GpuDirectConfig::Representation
      
          property :gvnic, as: 'gvnic', class: Google::Apis::ContainerV1beta1::VirtualNic, decorator: Google::Apis::ContainerV1beta1::VirtualNic::Representation
      
          property :host_maintenance_policy, as: 'hostMaintenancePolicy', class: Google::Apis::ContainerV1beta1::HostMaintenancePolicy, decorator: Google::Apis::ContainerV1beta1::HostMaintenancePolicy::Representation
      
          property :image_type, as: 'imageType'
          property :kubelet_config, as: 'kubeletConfig', class: Google::Apis::ContainerV1beta1::NodeKubeletConfig, decorator: Google::Apis::ContainerV1beta1::NodeKubeletConfig::Representation
      
          hash :labels, as: 'labels'
          property :linux_node_config, as: 'linuxNodeConfig', class: Google::Apis::ContainerV1beta1::LinuxNodeConfig, decorator: Google::Apis::ContainerV1beta1::LinuxNodeConfig::Representation
      
          property :local_nvme_ssd_block_config, as: 'localNvmeSsdBlockConfig', class: Google::Apis::ContainerV1beta1::LocalNvmeSsdBlockConfig, decorator: Google::Apis::ContainerV1beta1::LocalNvmeSsdBlockConfig::Representation
      
          property :local_ssd_count, as: 'localSsdCount'
          property :local_ssd_encryption_mode, as: 'localSsdEncryptionMode'
          property :logging_config, as: 'loggingConfig', class: Google::Apis::ContainerV1beta1::NodePoolLoggingConfig, decorator: Google::Apis::ContainerV1beta1::NodePoolLoggingConfig::Representation
      
          property :machine_type, as: 'machineType'
          property :max_run_duration, as: 'maxRunDuration'
          hash :metadata, as: 'metadata'
          property :min_cpu_platform, as: 'minCpuPlatform'
          property :node_group, as: 'nodeGroup'
          collection :oauth_scopes, as: 'oauthScopes'
          property :preemptible, as: 'preemptible'
          property :reservation_affinity, as: 'reservationAffinity', class: Google::Apis::ContainerV1beta1::ReservationAffinity, decorator: Google::Apis::ContainerV1beta1::ReservationAffinity::Representation
      
          hash :resource_labels, as: 'resourceLabels'
          property :resource_manager_tags, as: 'resourceManagerTags', class: Google::Apis::ContainerV1beta1::ResourceManagerTags, decorator: Google::Apis::ContainerV1beta1::ResourceManagerTags::Representation
      
          property :sandbox_config, as: 'sandboxConfig', class: Google::Apis::ContainerV1beta1::SandboxConfig, decorator: Google::Apis::ContainerV1beta1::SandboxConfig::Representation
      
          property :secondary_boot_disk_update_strategy, as: 'secondaryBootDiskUpdateStrategy', class: Google::Apis::ContainerV1beta1::SecondaryBootDiskUpdateStrategy, decorator: Google::Apis::ContainerV1beta1::SecondaryBootDiskUpdateStrategy::Representation
      
          collection :secondary_boot_disks, as: 'secondaryBootDisks', class: Google::Apis::ContainerV1beta1::SecondaryBootDisk, decorator: Google::Apis::ContainerV1beta1::SecondaryBootDisk::Representation
      
          property :service_account, as: 'serviceAccount'
          property :shielded_instance_config, as: 'shieldedInstanceConfig', class: Google::Apis::ContainerV1beta1::ShieldedInstanceConfig, decorator: Google::Apis::ContainerV1beta1::ShieldedInstanceConfig::Representation
      
          property :sole_tenant_config, as: 'soleTenantConfig', class: Google::Apis::ContainerV1beta1::SoleTenantConfig, decorator: Google::Apis::ContainerV1beta1::SoleTenantConfig::Representation
      
          property :spot, as: 'spot'
          collection :storage_pools, as: 'storagePools'
          collection :tags, as: 'tags'
          collection :taints, as: 'taints', class: Google::Apis::ContainerV1beta1::NodeTaint, decorator: Google::Apis::ContainerV1beta1::NodeTaint::Representation
      
          property :windows_node_config, as: 'windowsNodeConfig', class: Google::Apis::ContainerV1beta1::WindowsNodeConfig, decorator: Google::Apis::ContainerV1beta1::WindowsNodeConfig::Representation
      
          property :workload_metadata_config, as: 'workloadMetadataConfig', class: Google::Apis::ContainerV1beta1::WorkloadMetadataConfig, decorator: Google::Apis::ContainerV1beta1::WorkloadMetadataConfig::Representation
      
        end
      end
      
      class NodeConfigDefaults
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :containerd_config, as: 'containerdConfig', class: Google::Apis::ContainerV1beta1::ContainerdConfig, decorator: Google::Apis::ContainerV1beta1::ContainerdConfig::Representation
      
          property :gcfs_config, as: 'gcfsConfig', class: Google::Apis::ContainerV1beta1::GcfsConfig, decorator: Google::Apis::ContainerV1beta1::GcfsConfig::Representation
      
          property :host_maintenance_policy, as: 'hostMaintenancePolicy', class: Google::Apis::ContainerV1beta1::HostMaintenancePolicy, decorator: Google::Apis::ContainerV1beta1::HostMaintenancePolicy::Representation
      
          property :logging_config, as: 'loggingConfig', class: Google::Apis::ContainerV1beta1::NodePoolLoggingConfig, decorator: Google::Apis::ContainerV1beta1::NodePoolLoggingConfig::Representation
      
          property :node_kubelet_config, as: 'nodeKubeletConfig', class: Google::Apis::ContainerV1beta1::NodeKubeletConfig, decorator: Google::Apis::ContainerV1beta1::NodeKubeletConfig::Representation
      
        end
      end
      
      class NodeDrainConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :respect_pdb_during_node_pool_deletion, as: 'respectPdbDuringNodePoolDeletion'
        end
      end
      
      class NodeKernelModuleLoading
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :policy, as: 'policy'
        end
      end
      
      class NodeKubeletConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :allowed_unsafe_sysctls, as: 'allowedUnsafeSysctls'
          property :container_log_max_files, as: 'containerLogMaxFiles'
          property :container_log_max_size, as: 'containerLogMaxSize'
          property :cpu_cfs_quota, as: 'cpuCfsQuota'
          property :cpu_cfs_quota_period, as: 'cpuCfsQuotaPeriod'
          property :cpu_manager_policy, as: 'cpuManagerPolicy'
          property :crash_loop_back_off, as: 'crashLoopBackOff', class: Google::Apis::ContainerV1beta1::CrashLoopBackOffConfig, decorator: Google::Apis::ContainerV1beta1::CrashLoopBackOffConfig::Representation
      
          property :eviction_max_pod_grace_period_seconds, as: 'evictionMaxPodGracePeriodSeconds'
          property :eviction_minimum_reclaim, as: 'evictionMinimumReclaim', class: Google::Apis::ContainerV1beta1::EvictionMinimumReclaim, decorator: Google::Apis::ContainerV1beta1::EvictionMinimumReclaim::Representation
      
          property :eviction_soft, as: 'evictionSoft', class: Google::Apis::ContainerV1beta1::EvictionSignals, decorator: Google::Apis::ContainerV1beta1::EvictionSignals::Representation
      
          property :eviction_soft_grace_period, as: 'evictionSoftGracePeriod', class: Google::Apis::ContainerV1beta1::EvictionGracePeriod, decorator: Google::Apis::ContainerV1beta1::EvictionGracePeriod::Representation
      
          property :image_gc_high_threshold_percent, as: 'imageGcHighThresholdPercent'
          property :image_gc_low_threshold_percent, as: 'imageGcLowThresholdPercent'
          property :image_maximum_gc_age, as: 'imageMaximumGcAge'
          property :image_minimum_gc_age, as: 'imageMinimumGcAge'
          property :insecure_kubelet_readonly_port_enabled, as: 'insecureKubeletReadonlyPortEnabled'
          property :max_parallel_image_pulls, as: 'maxParallelImagePulls'
          property :memory_manager, as: 'memoryManager', class: Google::Apis::ContainerV1beta1::MemoryManager, decorator: Google::Apis::ContainerV1beta1::MemoryManager::Representation
      
          property :pod_pids_limit, :numeric_string => true, as: 'podPidsLimit'
          property :shutdown_grace_period_critical_pods_seconds, as: 'shutdownGracePeriodCriticalPodsSeconds'
          property :shutdown_grace_period_seconds, as: 'shutdownGracePeriodSeconds'
          property :single_process_oom_kill, as: 'singleProcessOomKill'
          property :topology_manager, as: 'topologyManager', class: Google::Apis::ContainerV1beta1::TopologyManager, decorator: Google::Apis::ContainerV1beta1::TopologyManager::Representation
      
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
          property :upgrade_options, as: 'upgradeOptions', class: Google::Apis::ContainerV1beta1::AutoUpgradeOptions, decorator: Google::Apis::ContainerV1beta1::AutoUpgradeOptions::Representation
      
        end
      end
      
      class NodeNetworkConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :accelerator_network_profile, as: 'acceleratorNetworkProfile'
          collection :additional_node_network_configs, as: 'additionalNodeNetworkConfigs', class: Google::Apis::ContainerV1beta1::AdditionalNodeNetworkConfig, decorator: Google::Apis::ContainerV1beta1::AdditionalNodeNetworkConfig::Representation
      
          collection :additional_pod_network_configs, as: 'additionalPodNetworkConfigs', class: Google::Apis::ContainerV1beta1::AdditionalPodNetworkConfig, decorator: Google::Apis::ContainerV1beta1::AdditionalPodNetworkConfig::Representation
      
          property :create_pod_range, as: 'createPodRange'
          property :enable_private_nodes, as: 'enablePrivateNodes'
          property :network_performance_config, as: 'networkPerformanceConfig', class: Google::Apis::ContainerV1beta1::NetworkPerformanceConfig, decorator: Google::Apis::ContainerV1beta1::NetworkPerformanceConfig::Representation
      
          property :network_tier_config, as: 'networkTierConfig', class: Google::Apis::ContainerV1beta1::NetworkTierConfig, decorator: Google::Apis::ContainerV1beta1::NetworkTierConfig::Representation
      
          property :pod_cidr_overprovision_config, as: 'podCidrOverprovisionConfig', class: Google::Apis::ContainerV1beta1::PodCidrOverprovisionConfig, decorator: Google::Apis::ContainerV1beta1::PodCidrOverprovisionConfig::Representation
      
          property :pod_ipv4_cidr_block, as: 'podIpv4CidrBlock'
          property :pod_ipv4_range_utilization, as: 'podIpv4RangeUtilization'
          property :pod_range, as: 'podRange'
          property :subnetwork, as: 'subnetwork'
        end
      end
      
      class NodePool
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :autopilot_config, as: 'autopilotConfig', class: Google::Apis::ContainerV1beta1::AutopilotConfig, decorator: Google::Apis::ContainerV1beta1::AutopilotConfig::Representation
      
          property :autoscaling, as: 'autoscaling', class: Google::Apis::ContainerV1beta1::NodePoolAutoscaling, decorator: Google::Apis::ContainerV1beta1::NodePoolAutoscaling::Representation
      
          property :best_effort_provisioning, as: 'bestEffortProvisioning', class: Google::Apis::ContainerV1beta1::BestEffortProvisioning, decorator: Google::Apis::ContainerV1beta1::BestEffortProvisioning::Representation
      
          collection :conditions, as: 'conditions', class: Google::Apis::ContainerV1beta1::StatusCondition, decorator: Google::Apis::ContainerV1beta1::StatusCondition::Representation
      
          property :config, as: 'config', class: Google::Apis::ContainerV1beta1::NodeConfig, decorator: Google::Apis::ContainerV1beta1::NodeConfig::Representation
      
          property :etag, as: 'etag'
          property :initial_node_count, as: 'initialNodeCount'
          collection :instance_group_urls, as: 'instanceGroupUrls'
          collection :locations, as: 'locations'
          property :management, as: 'management', class: Google::Apis::ContainerV1beta1::NodeManagement, decorator: Google::Apis::ContainerV1beta1::NodeManagement::Representation
      
          property :max_pods_constraint, as: 'maxPodsConstraint', class: Google::Apis::ContainerV1beta1::MaxPodsConstraint, decorator: Google::Apis::ContainerV1beta1::MaxPodsConstraint::Representation
      
          property :name, as: 'name'
          property :network_config, as: 'networkConfig', class: Google::Apis::ContainerV1beta1::NodeNetworkConfig, decorator: Google::Apis::ContainerV1beta1::NodeNetworkConfig::Representation
      
          property :node_drain_config, as: 'nodeDrainConfig', class: Google::Apis::ContainerV1beta1::NodeDrainConfig, decorator: Google::Apis::ContainerV1beta1::NodeDrainConfig::Representation
      
          property :placement_policy, as: 'placementPolicy', class: Google::Apis::ContainerV1beta1::PlacementPolicy, decorator: Google::Apis::ContainerV1beta1::PlacementPolicy::Representation
      
          property :pod_ipv4_cidr_size, as: 'podIpv4CidrSize'
          property :queued_provisioning, as: 'queuedProvisioning', class: Google::Apis::ContainerV1beta1::QueuedProvisioning, decorator: Google::Apis::ContainerV1beta1::QueuedProvisioning::Representation
      
          property :self_link, as: 'selfLink'
          property :status, as: 'status'
          property :status_message, as: 'statusMessage'
          property :update_info, as: 'updateInfo', class: Google::Apis::ContainerV1beta1::UpdateInfo, decorator: Google::Apis::ContainerV1beta1::UpdateInfo::Representation
      
          property :upgrade_settings, as: 'upgradeSettings', class: Google::Apis::ContainerV1beta1::UpgradeSettings, decorator: Google::Apis::ContainerV1beta1::UpgradeSettings::Representation
      
          property :version, as: 'version'
        end
      end
      
      class NodePoolAutoConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :linux_node_config, as: 'linuxNodeConfig', class: Google::Apis::ContainerV1beta1::LinuxNodeConfig, decorator: Google::Apis::ContainerV1beta1::LinuxNodeConfig::Representation
      
          property :network_tags, as: 'networkTags', class: Google::Apis::ContainerV1beta1::NetworkTags, decorator: Google::Apis::ContainerV1beta1::NetworkTags::Representation
      
          property :node_kubelet_config, as: 'nodeKubeletConfig', class: Google::Apis::ContainerV1beta1::NodeKubeletConfig, decorator: Google::Apis::ContainerV1beta1::NodeKubeletConfig::Representation
      
          property :resource_manager_tags, as: 'resourceManagerTags', class: Google::Apis::ContainerV1beta1::ResourceManagerTags, decorator: Google::Apis::ContainerV1beta1::ResourceManagerTags::Representation
      
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
          property :node_config_defaults, as: 'nodeConfigDefaults', class: Google::Apis::ContainerV1beta1::NodeConfigDefaults, decorator: Google::Apis::ContainerV1beta1::NodeConfigDefaults::Representation
      
        end
      end
      
      class NodePoolLoggingConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :variant_config, as: 'variantConfig', class: Google::Apis::ContainerV1beta1::LoggingVariantConfig, decorator: Google::Apis::ContainerV1beta1::LoggingVariantConfig::Representation
      
        end
      end
      
      class NodePoolUpgradeInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :auto_upgrade_status, as: 'autoUpgradeStatus'
          property :end_of_extended_support_timestamp, as: 'endOfExtendedSupportTimestamp'
          property :end_of_standard_support_timestamp, as: 'endOfStandardSupportTimestamp'
          property :minor_target_version, as: 'minorTargetVersion'
          property :patch_target_version, as: 'patchTargetVersion'
          collection :paused_reason, as: 'pausedReason'
          collection :upgrade_details, as: 'upgradeDetails', class: Google::Apis::ContainerV1beta1::UpgradeDetails, decorator: Google::Apis::ContainerV1beta1::UpgradeDetails::Representation
      
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
          collection :taints, as: 'taints', class: Google::Apis::ContainerV1beta1::NodeTaint, decorator: Google::Apis::ContainerV1beta1::NodeTaint::Representation
      
        end
      end
      
      class NotificationConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :pubsub, as: 'pubsub', class: Google::Apis::ContainerV1beta1::PubSub, decorator: Google::Apis::ContainerV1beta1::PubSub::Representation
      
        end
      end
      
      class Operation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :cluster_conditions, as: 'clusterConditions', class: Google::Apis::ContainerV1beta1::StatusCondition, decorator: Google::Apis::ContainerV1beta1::StatusCondition::Representation
      
          property :detail, as: 'detail'
          property :end_time, as: 'endTime'
          property :error, as: 'error', class: Google::Apis::ContainerV1beta1::Status, decorator: Google::Apis::ContainerV1beta1::Status::Representation
      
          property :location, as: 'location'
          property :name, as: 'name'
          collection :nodepool_conditions, as: 'nodepoolConditions', class: Google::Apis::ContainerV1beta1::StatusCondition, decorator: Google::Apis::ContainerV1beta1::StatusCondition::Representation
      
          property :operation_type, as: 'operationType'
          property :progress, as: 'progress', class: Google::Apis::ContainerV1beta1::OperationProgress, decorator: Google::Apis::ContainerV1beta1::OperationProgress::Representation
      
          property :self_link, as: 'selfLink'
          property :start_time, as: 'startTime'
          property :status, as: 'status'
          property :status_message, as: 'statusMessage'
          property :target_link, as: 'targetLink'
          property :zone, as: 'zone'
        end
      end
      
      class OperationError
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :error_message, as: 'errorMessage'
          property :key_name, as: 'keyName'
          property :timestamp, as: 'timestamp'
        end
      end
      
      class OperationProgress
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :metrics, as: 'metrics', class: Google::Apis::ContainerV1beta1::Metric, decorator: Google::Apis::ContainerV1beta1::Metric::Representation
      
          property :name, as: 'name'
          collection :stages, as: 'stages', class: Google::Apis::ContainerV1beta1::OperationProgress, decorator: Google::Apis::ContainerV1beta1::OperationProgress::Representation
      
          property :status, as: 'status'
        end
      end
      
      class OpportunisticMaintenanceStrategy
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :maintenance_availability_window, as: 'maintenanceAvailabilityWindow'
          property :min_nodes_per_pool, :numeric_string => true, as: 'minNodesPerPool'
          property :node_idle_time_window, as: 'nodeIdleTimeWindow'
        end
      end
      
      class ParallelstoreCsiDriverConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :enabled, as: 'enabled'
        end
      end
      
      class ParentProductConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          hash :labels, as: 'labels'
          property :product_name, as: 'productName'
        end
      end
      
      class PdbBlockedPod
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :name, as: 'name'
          property :namespace, as: 'namespace'
        end
      end
      
      class PlacementPolicy
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :policy_name, as: 'policyName'
          property :tpu_topology, as: 'tpuTopology'
          property :type, as: 'type'
        end
      end
      
      class PodAutoscaling
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :hpa_profile, as: 'hpaProfile'
        end
      end
      
      class PodCidrOverprovisionConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :disable, as: 'disable'
        end
      end
      
      class PodSecurityPolicyConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :enabled, as: 'enabled'
        end
      end
      
      class PodSnapshotConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :enabled, as: 'enabled'
        end
      end
      
      class PolicyBinding
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :name, as: 'name'
        end
      end
      
      class PrivateClusterConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :enable_private_endpoint, as: 'enablePrivateEndpoint'
          property :enable_private_nodes, as: 'enablePrivateNodes'
          property :master_global_access_config, as: 'masterGlobalAccessConfig', class: Google::Apis::ContainerV1beta1::PrivateClusterMasterGlobalAccessConfig, decorator: Google::Apis::ContainerV1beta1::PrivateClusterMasterGlobalAccessConfig::Representation
      
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
      
      class PrivateRegistryAccessConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :certificate_authority_domain_config, as: 'certificateAuthorityDomainConfig', class: Google::Apis::ContainerV1beta1::CertificateAuthorityDomainConfig, decorator: Google::Apis::ContainerV1beta1::CertificateAuthorityDomainConfig::Representation
      
          property :enabled, as: 'enabled'
        end
      end
      
      class PrivilegedAdmissionConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :allowlist_paths, as: 'allowlistPaths'
        end
      end
      
      class ProtectConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :workload_config, as: 'workloadConfig', class: Google::Apis::ContainerV1beta1::WorkloadConfig, decorator: Google::Apis::ContainerV1beta1::WorkloadConfig::Representation
      
          property :workload_vulnerability_mode, as: 'workloadVulnerabilityMode'
        end
      end
      
      class PubSub
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :enabled, as: 'enabled'
          property :filter, as: 'filter', class: Google::Apis::ContainerV1beta1::Filter, decorator: Google::Apis::ContainerV1beta1::Filter::Representation
      
          property :topic, as: 'topic'
        end
      end
      
      class QueuedProvisioning
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :enabled, as: 'enabled'
        end
      end
      
      class RbacBindingConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :enable_insecure_binding_system_authenticated, as: 'enableInsecureBindingSystemAuthenticated'
          property :enable_insecure_binding_system_unauthenticated, as: 'enableInsecureBindingSystemUnauthenticated'
        end
      end
      
      class RangeInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :range_name, as: 'rangeName'
          property :utilization, as: 'utilization'
        end
      end
      
      class RayClusterLoggingConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :enabled, as: 'enabled'
        end
      end
      
      class RayClusterMonitoringConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :enabled, as: 'enabled'
        end
      end
      
      class RayOperatorConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :enabled, as: 'enabled'
          property :ray_cluster_logging_config, as: 'rayClusterLoggingConfig', class: Google::Apis::ContainerV1beta1::RayClusterLoggingConfig, decorator: Google::Apis::ContainerV1beta1::RayClusterLoggingConfig::Representation
      
          property :ray_cluster_monitoring_config, as: 'rayClusterMonitoringConfig', class: Google::Apis::ContainerV1beta1::RayClusterMonitoringConfig, decorator: Google::Apis::ContainerV1beta1::RayClusterMonitoringConfig::Representation
      
        end
      end
      
      class RecurringTimeWindow
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :recurrence, as: 'recurrence'
          property :window, as: 'window', class: Google::Apis::ContainerV1beta1::TimeWindow, decorator: Google::Apis::ContainerV1beta1::TimeWindow::Representation
      
        end
      end
      
      class RegistryHeader
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :key, as: 'key'
          collection :value, as: 'value'
        end
      end
      
      class RegistryHostConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :hosts, as: 'hosts', class: Google::Apis::ContainerV1beta1::HostConfig, decorator: Google::Apis::ContainerV1beta1::HostConfig::Representation
      
          property :server, as: 'server'
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
          collection :available_versions, as: 'availableVersions', class: Google::Apis::ContainerV1beta1::AvailableVersion, decorator: Google::Apis::ContainerV1beta1::AvailableVersion::Representation
      
          property :channel, as: 'channel'
          property :default_version, as: 'defaultVersion'
          property :upgrade_target_version, as: 'upgradeTargetVersion'
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
      
      class ResourceManagerTags
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          hash :tags, as: 'tags'
        end
      end
      
      class ResourceUsageExportConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :bigquery_destination, as: 'bigqueryDestination', class: Google::Apis::ContainerV1beta1::BigQueryDestination, decorator: Google::Apis::ContainerV1beta1::BigQueryDestination::Representation
      
          property :consumption_metering_config, as: 'consumptionMeteringConfig', class: Google::Apis::ContainerV1beta1::ConsumptionMeteringConfig, decorator: Google::Apis::ContainerV1beta1::ConsumptionMeteringConfig::Representation
      
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
      
      class RollbackSafeUpgrade
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :control_plane_soak_duration, as: 'controlPlaneSoakDuration'
        end
      end
      
      class RollbackSafeUpgradeStatus
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :control_plane_upgrade_rollback_end_time, as: 'controlPlaneUpgradeRollbackEndTime'
          property :mode, as: 'mode'
          property :previous_version, as: 'previousVersion'
        end
      end
      
      class RotationConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :enabled, as: 'enabled'
          property :rotation_interval, as: 'rotationInterval'
        end
      end
      
      class SandboxConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :sandbox_type, as: 'sandboxType'
          property :type, as: 'type'
        end
      end
      
      class SecondaryBootDisk
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :disk_image, as: 'diskImage'
          property :mode, as: 'mode'
        end
      end
      
      class SecondaryBootDiskUpdateStrategy
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class SecretManagerConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :enabled, as: 'enabled'
          property :rotation_config, as: 'rotationConfig', class: Google::Apis::ContainerV1beta1::RotationConfig, decorator: Google::Apis::ContainerV1beta1::RotationConfig::Representation
      
        end
      end
      
      class SecretSyncConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :enabled, as: 'enabled'
          property :rotation_config, as: 'rotationConfig', class: Google::Apis::ContainerV1beta1::SyncRotationConfig, decorator: Google::Apis::ContainerV1beta1::SyncRotationConfig::Representation
      
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
          collection :mitigated_versions, as: 'mitigatedVersions'
          collection :patched_versions, as: 'patchedVersions'
          property :resource_type_affected, as: 'resourceTypeAffected'
          property :severity, as: 'severity'
          property :suggested_upgrade_target, as: 'suggestedUpgradeTarget'
        end
      end
      
      class SecurityPostureConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :mode, as: 'mode'
          property :vulnerability_mode, as: 'vulnerabilityMode'
        end
      end
      
      class ServerConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :channels, as: 'channels', class: Google::Apis::ContainerV1beta1::ReleaseChannelConfig, decorator: Google::Apis::ContainerV1beta1::ReleaseChannelConfig::Representation
      
          property :default_cluster_version, as: 'defaultClusterVersion'
          property :default_image_type, as: 'defaultImageType'
          collection :valid_image_types, as: 'validImageTypes'
          collection :valid_master_versions, as: 'validMasterVersions'
          collection :valid_node_versions, as: 'validNodeVersions'
          hash :windows_version_maps, as: 'windowsVersionMaps', class: Google::Apis::ContainerV1beta1::WindowsVersions, decorator: Google::Apis::ContainerV1beta1::WindowsVersions::Representation
      
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
          property :addons_config, as: 'addonsConfig', class: Google::Apis::ContainerV1beta1::AddonsConfig, decorator: Google::Apis::ContainerV1beta1::AddonsConfig::Representation
      
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
          property :maintenance_policy, as: 'maintenancePolicy', class: Google::Apis::ContainerV1beta1::MaintenancePolicy, decorator: Google::Apis::ContainerV1beta1::MaintenancePolicy::Representation
      
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
          property :update, as: 'update', class: Google::Apis::ContainerV1beta1::MasterAuth, decorator: Google::Apis::ContainerV1beta1::MasterAuth::Representation
      
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
          property :network_policy, as: 'networkPolicy', class: Google::Apis::ContainerV1beta1::NetworkPolicy, decorator: Google::Apis::ContainerV1beta1::NetworkPolicy::Representation
      
          property :project_id, as: 'projectId'
          property :zone, as: 'zone'
        end
      end
      
      class SetNodePoolAutoscalingRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :autoscaling, as: 'autoscaling', class: Google::Apis::ContainerV1beta1::NodePoolAutoscaling, decorator: Google::Apis::ContainerV1beta1::NodePoolAutoscaling::Representation
      
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
          property :management, as: 'management', class: Google::Apis::ContainerV1beta1::NodeManagement, decorator: Google::Apis::ContainerV1beta1::NodeManagement::Representation
      
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
      
      class SliceControllerConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :enabled, as: 'enabled'
        end
      end
      
      class SoleTenantConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :min_node_cpus, as: 'minNodeCpus'
          collection :node_affinities, as: 'nodeAffinities', class: Google::Apis::ContainerV1beta1::NodeAffinity, decorator: Google::Apis::ContainerV1beta1::NodeAffinity::Representation
      
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
      
      class StatefulHaConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :enabled, as: 'enabled'
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
      
      class SwapConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :boot_disk_profile, as: 'bootDiskProfile', class: Google::Apis::ContainerV1beta1::BootDiskProfile, decorator: Google::Apis::ContainerV1beta1::BootDiskProfile::Representation
      
          property :dedicated_local_ssd_profile, as: 'dedicatedLocalSsdProfile', class: Google::Apis::ContainerV1beta1::DedicatedLocalSsdProfile, decorator: Google::Apis::ContainerV1beta1::DedicatedLocalSsdProfile::Representation
      
          property :enabled, as: 'enabled'
          property :encryption_config, as: 'encryptionConfig', class: Google::Apis::ContainerV1beta1::EncryptionConfig, decorator: Google::Apis::ContainerV1beta1::EncryptionConfig::Representation
      
          property :ephemeral_local_ssd_profile, as: 'ephemeralLocalSsdProfile', class: Google::Apis::ContainerV1beta1::EphemeralLocalSsdProfile, decorator: Google::Apis::ContainerV1beta1::EphemeralLocalSsdProfile::Representation
      
        end
      end
      
      class SyncRotationConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :enabled, as: 'enabled'
          property :rotation_interval, as: 'rotationInterval'
        end
      end
      
      class TimeWindow
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :end_time, as: 'endTime'
          property :maintenance_exclusion_options, as: 'maintenanceExclusionOptions', class: Google::Apis::ContainerV1beta1::MaintenanceExclusionOptions, decorator: Google::Apis::ContainerV1beta1::MaintenanceExclusionOptions::Representation
      
          property :start_time, as: 'startTime'
        end
      end
      
      class TopologyManager
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :policy, as: 'policy'
          property :scope, as: 'scope'
        end
      end
      
      class TpuConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :enabled, as: 'enabled'
          property :ipv4_cidr_block, as: 'ipv4CidrBlock'
          property :use_service_networking, as: 'useServiceNetworking'
        end
      end
      
      class UpdateClusterRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :cluster_id, as: 'clusterId'
          property :name, as: 'name'
          property :project_id, as: 'projectId'
          property :update, as: 'update', class: Google::Apis::ContainerV1beta1::ClusterUpdate, decorator: Google::Apis::ContainerV1beta1::ClusterUpdate::Representation
      
          property :zone, as: 'zone'
        end
      end
      
      class UpdateInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :blue_green_info, as: 'blueGreenInfo', class: Google::Apis::ContainerV1beta1::BlueGreenInfo, decorator: Google::Apis::ContainerV1beta1::BlueGreenInfo::Representation
      
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
          collection :accelerators, as: 'accelerators', class: Google::Apis::ContainerV1beta1::AcceleratorConfig, decorator: Google::Apis::ContainerV1beta1::AcceleratorConfig::Representation
      
          property :boot_disk, as: 'bootDisk', class: Google::Apis::ContainerV1beta1::BootDisk, decorator: Google::Apis::ContainerV1beta1::BootDisk::Representation
      
          property :cluster_id, as: 'clusterId'
          property :confidential_nodes, as: 'confidentialNodes', class: Google::Apis::ContainerV1beta1::ConfidentialNodes, decorator: Google::Apis::ContainerV1beta1::ConfidentialNodes::Representation
      
          property :consolidation_delay, as: 'consolidationDelay'
          property :containerd_config, as: 'containerdConfig', class: Google::Apis::ContainerV1beta1::ContainerdConfig, decorator: Google::Apis::ContainerV1beta1::ContainerdConfig::Representation
      
          property :disk_size_gb, :numeric_string => true, as: 'diskSizeGb'
          property :disk_type, as: 'diskType'
          property :etag, as: 'etag'
          property :fast_socket, as: 'fastSocket', class: Google::Apis::ContainerV1beta1::FastSocket, decorator: Google::Apis::ContainerV1beta1::FastSocket::Representation
      
          property :flex_start, as: 'flexStart'
          property :gcfs_config, as: 'gcfsConfig', class: Google::Apis::ContainerV1beta1::GcfsConfig, decorator: Google::Apis::ContainerV1beta1::GcfsConfig::Representation
      
          property :gvnic, as: 'gvnic', class: Google::Apis::ContainerV1beta1::VirtualNic, decorator: Google::Apis::ContainerV1beta1::VirtualNic::Representation
      
          property :image_type, as: 'imageType'
          property :kubelet_config, as: 'kubeletConfig', class: Google::Apis::ContainerV1beta1::NodeKubeletConfig, decorator: Google::Apis::ContainerV1beta1::NodeKubeletConfig::Representation
      
          property :labels, as: 'labels', class: Google::Apis::ContainerV1beta1::NodeLabels, decorator: Google::Apis::ContainerV1beta1::NodeLabels::Representation
      
          property :linux_node_config, as: 'linuxNodeConfig', class: Google::Apis::ContainerV1beta1::LinuxNodeConfig, decorator: Google::Apis::ContainerV1beta1::LinuxNodeConfig::Representation
      
          collection :locations, as: 'locations'
          property :logging_config, as: 'loggingConfig', class: Google::Apis::ContainerV1beta1::NodePoolLoggingConfig, decorator: Google::Apis::ContainerV1beta1::NodePoolLoggingConfig::Representation
      
          property :machine_type, as: 'machineType'
          property :max_run_duration, as: 'maxRunDuration'
          property :name, as: 'name'
          property :node_drain_config, as: 'nodeDrainConfig', class: Google::Apis::ContainerV1beta1::NodeDrainConfig, decorator: Google::Apis::ContainerV1beta1::NodeDrainConfig::Representation
      
          property :node_network_config, as: 'nodeNetworkConfig', class: Google::Apis::ContainerV1beta1::NodeNetworkConfig, decorator: Google::Apis::ContainerV1beta1::NodeNetworkConfig::Representation
      
          property :node_pool_id, as: 'nodePoolId'
          property :node_version, as: 'nodeVersion'
          property :project_id, as: 'projectId'
          property :queued_provisioning, as: 'queuedProvisioning', class: Google::Apis::ContainerV1beta1::QueuedProvisioning, decorator: Google::Apis::ContainerV1beta1::QueuedProvisioning::Representation
      
          property :resource_labels, as: 'resourceLabels', class: Google::Apis::ContainerV1beta1::ResourceLabels, decorator: Google::Apis::ContainerV1beta1::ResourceLabels::Representation
      
          property :resource_manager_tags, as: 'resourceManagerTags', class: Google::Apis::ContainerV1beta1::ResourceManagerTags, decorator: Google::Apis::ContainerV1beta1::ResourceManagerTags::Representation
      
          collection :storage_pools, as: 'storagePools'
          property :tags, as: 'tags', class: Google::Apis::ContainerV1beta1::NetworkTags, decorator: Google::Apis::ContainerV1beta1::NetworkTags::Representation
      
          property :taints, as: 'taints', class: Google::Apis::ContainerV1beta1::NodeTaints, decorator: Google::Apis::ContainerV1beta1::NodeTaints::Representation
      
          property :upgrade_settings, as: 'upgradeSettings', class: Google::Apis::ContainerV1beta1::UpgradeSettings, decorator: Google::Apis::ContainerV1beta1::UpgradeSettings::Representation
      
          property :windows_node_config, as: 'windowsNodeConfig', class: Google::Apis::ContainerV1beta1::WindowsNodeConfig, decorator: Google::Apis::ContainerV1beta1::WindowsNodeConfig::Representation
      
          property :workload_metadata_config, as: 'workloadMetadataConfig', class: Google::Apis::ContainerV1beta1::WorkloadMetadataConfig, decorator: Google::Apis::ContainerV1beta1::WorkloadMetadataConfig::Representation
      
          property :zone, as: 'zone'
        end
      end
      
      class UpgradeAvailableEvent
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :release_channel, as: 'releaseChannel', class: Google::Apis::ContainerV1beta1::ReleaseChannel, decorator: Google::Apis::ContainerV1beta1::ReleaseChannel::Representation
      
          property :resource, as: 'resource'
          property :resource_type, as: 'resourceType'
          property :version, as: 'version'
          property :windows_versions, as: 'windowsVersions', class: Google::Apis::ContainerV1beta1::WindowsVersions, decorator: Google::Apis::ContainerV1beta1::WindowsVersions::Representation
      
        end
      end
      
      class UpgradeDetails
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :end_time, as: 'endTime'
          property :initial_emulated_version, as: 'initialEmulatedVersion'
          property :initial_version, as: 'initialVersion'
          property :start_time, as: 'startTime'
          property :start_type, as: 'startType'
          property :state, as: 'state'
          property :target_emulated_version, as: 'targetEmulatedVersion'
          property :target_version, as: 'targetVersion'
        end
      end
      
      class UpgradeEvent
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :current_emulated_version, as: 'currentEmulatedVersion'
          property :current_version, as: 'currentVersion'
          property :operation, as: 'operation'
          property :operation_start_time, as: 'operationStartTime'
          property :resource, as: 'resource'
          property :resource_type, as: 'resourceType'
          property :target_emulated_version, as: 'targetEmulatedVersion'
          property :target_version, as: 'targetVersion'
        end
      end
      
      class UpgradeInfoEvent
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :current_emulated_version, as: 'currentEmulatedVersion'
          property :current_version, as: 'currentVersion'
          property :description, as: 'description'
          property :disruption_event, as: 'disruptionEvent', class: Google::Apis::ContainerV1beta1::DisruptionEvent, decorator: Google::Apis::ContainerV1beta1::DisruptionEvent::Representation
      
          property :end_time, as: 'endTime'
          property :event_type, as: 'eventType'
          property :extended_support_end_time, as: 'extendedSupportEndTime'
          property :operation, as: 'operation'
          property :resource, as: 'resource'
          property :resource_type, as: 'resourceType'
          property :standard_support_end_time, as: 'standardSupportEndTime'
          property :start_time, as: 'startTime'
          property :state, as: 'state'
          property :target_emulated_version, as: 'targetEmulatedVersion'
          property :target_version, as: 'targetVersion'
        end
      end
      
      class UpgradeSettings
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :blue_green_settings, as: 'blueGreenSettings', class: Google::Apis::ContainerV1beta1::BlueGreenSettings, decorator: Google::Apis::ContainerV1beta1::BlueGreenSettings::Representation
      
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
          collection :secondary_ip_ranges, as: 'secondaryIpRanges', class: Google::Apis::ContainerV1beta1::UsableSubnetworkSecondaryRange, decorator: Google::Apis::ContainerV1beta1::UsableSubnetworkSecondaryRange::Representation
      
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
      
      class UserManagedKeysConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :aggregation_ca, as: 'aggregationCa'
          property :cluster_ca, as: 'clusterCa'
          property :control_plane_disk_encryption_key, as: 'controlPlaneDiskEncryptionKey'
          collection :control_plane_disk_encryption_key_versions, as: 'controlPlaneDiskEncryptionKeyVersions'
          property :etcd_api_ca, as: 'etcdApiCa'
          property :etcd_peer_ca, as: 'etcdPeerCa'
          property :gkeops_etcd_backup_encryption_key, as: 'gkeopsEtcdBackupEncryptionKey'
          collection :service_account_signing_keys, as: 'serviceAccountSigningKeys'
          collection :service_account_verification_keys, as: 'serviceAccountVerificationKeys'
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
      
      class WindowsVersion
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :image_type, as: 'imageType'
          property :os_version, as: 'osVersion'
          property :support_end_date, as: 'supportEndDate', class: Google::Apis::ContainerV1beta1::Date, decorator: Google::Apis::ContainerV1beta1::Date::Representation
      
        end
      end
      
      class WindowsVersions
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :windows_versions, as: 'windowsVersions', class: Google::Apis::ContainerV1beta1::WindowsVersion, decorator: Google::Apis::ContainerV1beta1::WindowsVersion::Representation
      
        end
      end
      
      class WorkloadAltsConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :enable_alts, as: 'enableAlts'
        end
      end
      
      class WorkloadCertificates
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :enable_certificates, as: 'enableCertificates'
        end
      end
      
      class WorkloadConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :audit_mode, as: 'auditMode'
        end
      end
      
      class WorkloadIdentityConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :identity_namespace, as: 'identityNamespace'
          property :identity_provider, as: 'identityProvider'
          property :workload_pool, as: 'workloadPool'
        end
      end
      
      class WorkloadMetadataConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :mode, as: 'mode'
          property :node_metadata, as: 'nodeMetadata'
        end
      end
      
      class WorkloadPolicyConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :allow_net_admin, as: 'allowNetAdmin'
          property :autopilot_compatibility_auditing_enabled, as: 'autopilotCompatibilityAuditingEnabled'
        end
      end
      
      class WritableCgroups
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :enabled, as: 'enabled'
        end
      end
    end
  end
end
