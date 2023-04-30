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
    module GkeonpremV1
      
      class Authorization
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class BareMetalAdminApiServerArgument
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class BareMetalAdminCluster
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class BareMetalAdminClusterOperationsConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class BareMetalAdminControlPlaneConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class BareMetalAdminControlPlaneNodePoolConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class BareMetalAdminDrainedMachine
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class BareMetalAdminDrainingMachine
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class BareMetalAdminIslandModeCidrConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class BareMetalAdminLoadBalancerConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class BareMetalAdminMachineDrainStatus
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class BareMetalAdminMaintenanceConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class BareMetalAdminMaintenanceStatus
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class BareMetalAdminManualLbConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class BareMetalAdminNetworkConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class BareMetalAdminNodeAccessConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class BareMetalAdminOsEnvironmentConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class BareMetalAdminPortConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class BareMetalAdminProxyConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class BareMetalAdminSecurityConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class BareMetalAdminStorageConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class BareMetalAdminVipConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class BareMetalAdminWorkloadNodeConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class BareMetalApiServerArgument
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class BareMetalBgpLbConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class BareMetalBgpPeerConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class BareMetalCluster
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class BareMetalClusterOperationsConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class BareMetalControlPlaneConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class BareMetalControlPlaneNodePoolConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class BareMetalDrainedMachine
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class BareMetalDrainingMachine
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class BareMetalIslandModeCidrConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class BareMetalKubeletConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class BareMetalLoadBalancerAddressPool
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class BareMetalLoadBalancerConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class BareMetalLoadBalancerNodePoolConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class BareMetalLvpConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class BareMetalLvpShareConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class BareMetalMachineDrainStatus
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class BareMetalMaintenanceConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class BareMetalMaintenanceStatus
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class BareMetalManualLbConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class BareMetalMetalLbConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class BareMetalMultipleNetworkInterfacesConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class BareMetalNetworkConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class BareMetalNodeAccessConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class BareMetalNodeConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class BareMetalNodePool
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class BareMetalNodePoolConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class BareMetalOsEnvironmentConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class BareMetalPortConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class BareMetalProxyConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class BareMetalSecurityConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class BareMetalSrIovConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class BareMetalStorageConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class BareMetalVersionInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class BareMetalVipConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class BareMetalWorkloadNodeConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Binding
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CancelOperationRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ClusterUser
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Empty
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class EnrollBareMetalAdminClusterRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class EnrollBareMetalClusterRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class EnrollBareMetalNodePoolRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class EnrollVmwareAdminClusterRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class EnrollVmwareClusterRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class EnrollVmwareNodePoolRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Expr
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Fleet
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListBareMetalAdminClustersResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListBareMetalClustersResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListBareMetalNodePoolsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListLocationsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListOperationsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListVmwareAdminClustersResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListVmwareClustersResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListVmwareNodePoolsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Location
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class NodeTaint
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Operation
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class OperationMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Policy
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class QueryBareMetalAdminVersionConfigResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class QueryBareMetalVersionConfigResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class QueryVmwareVersionConfigResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ResourceCondition
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ResourceStatus
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SetIamPolicyRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Status
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class TestIamPermissionsRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class TestIamPermissionsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ValidationCheck
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ValidationCheckResult
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ValidationCheckStatus
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class VmwareAagConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class VmwareAddressPool
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class VmwareAdminAddonNodeConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class VmwareAdminCluster
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class VmwareAdminControlPlaneNodeConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class VmwareAdminF5BigIpConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class VmwareAdminLoadBalancerConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class VmwareAdminManualLbConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class VmwareAdminMetalLbConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class VmwareAdminNetworkConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class VmwareAdminVCenterConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class VmwareAdminVipConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class VmwareAutoRepairConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class VmwareAutoResizeConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class VmwareBundleConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class VmwareCluster
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class VmwareControlPlaneNodeConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class VmwareControlPlaneV2Config
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class VmwareControlPlaneVsphereConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class VmwareDataplaneV2Config
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class VmwareDhcpIpConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class VmwareF5BigIpConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class VmwareHostConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class VmwareHostIp
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class VmwareIpBlock
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class VmwareLoadBalancerConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class VmwareManualLbConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class VmwareMetalLbConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class VmwareNetworkConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class VmwareNodeConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class VmwareNodePool
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class VmwareNodePoolAutoscalingConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class VmwarePlatformConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class VmwareStaticIpConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class VmwareStorageConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class VmwareVCenterConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class VmwareVersionInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class VmwareVipConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class VmwareVsphereConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class VmwareVsphereTag
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Authorization
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :admin_users, as: 'adminUsers', class: Google::Apis::GkeonpremV1::ClusterUser, decorator: Google::Apis::GkeonpremV1::ClusterUser::Representation
      
        end
      end
      
      class BareMetalAdminApiServerArgument
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :argument, as: 'argument'
          property :value, as: 'value'
        end
      end
      
      class BareMetalAdminCluster
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          hash :annotations, as: 'annotations'
          property :bare_metal_version, as: 'bareMetalVersion'
          property :cluster_operations, as: 'clusterOperations', class: Google::Apis::GkeonpremV1::BareMetalAdminClusterOperationsConfig, decorator: Google::Apis::GkeonpremV1::BareMetalAdminClusterOperationsConfig::Representation
      
          property :control_plane, as: 'controlPlane', class: Google::Apis::GkeonpremV1::BareMetalAdminControlPlaneConfig, decorator: Google::Apis::GkeonpremV1::BareMetalAdminControlPlaneConfig::Representation
      
          property :create_time, as: 'createTime'
          property :delete_time, as: 'deleteTime'
          property :description, as: 'description'
          property :endpoint, as: 'endpoint'
          property :etag, as: 'etag'
          property :fleet, as: 'fleet', class: Google::Apis::GkeonpremV1::Fleet, decorator: Google::Apis::GkeonpremV1::Fleet::Representation
      
          property :load_balancer, as: 'loadBalancer', class: Google::Apis::GkeonpremV1::BareMetalAdminLoadBalancerConfig, decorator: Google::Apis::GkeonpremV1::BareMetalAdminLoadBalancerConfig::Representation
      
          property :local_name, as: 'localName'
          property :maintenance_config, as: 'maintenanceConfig', class: Google::Apis::GkeonpremV1::BareMetalAdminMaintenanceConfig, decorator: Google::Apis::GkeonpremV1::BareMetalAdminMaintenanceConfig::Representation
      
          property :maintenance_status, as: 'maintenanceStatus', class: Google::Apis::GkeonpremV1::BareMetalAdminMaintenanceStatus, decorator: Google::Apis::GkeonpremV1::BareMetalAdminMaintenanceStatus::Representation
      
          property :name, as: 'name'
          property :network_config, as: 'networkConfig', class: Google::Apis::GkeonpremV1::BareMetalAdminNetworkConfig, decorator: Google::Apis::GkeonpremV1::BareMetalAdminNetworkConfig::Representation
      
          property :node_access_config, as: 'nodeAccessConfig', class: Google::Apis::GkeonpremV1::BareMetalAdminNodeAccessConfig, decorator: Google::Apis::GkeonpremV1::BareMetalAdminNodeAccessConfig::Representation
      
          property :node_config, as: 'nodeConfig', class: Google::Apis::GkeonpremV1::BareMetalAdminWorkloadNodeConfig, decorator: Google::Apis::GkeonpremV1::BareMetalAdminWorkloadNodeConfig::Representation
      
          property :os_environment_config, as: 'osEnvironmentConfig', class: Google::Apis::GkeonpremV1::BareMetalAdminOsEnvironmentConfig, decorator: Google::Apis::GkeonpremV1::BareMetalAdminOsEnvironmentConfig::Representation
      
          property :proxy, as: 'proxy', class: Google::Apis::GkeonpremV1::BareMetalAdminProxyConfig, decorator: Google::Apis::GkeonpremV1::BareMetalAdminProxyConfig::Representation
      
          property :reconciling, as: 'reconciling'
          property :security_config, as: 'securityConfig', class: Google::Apis::GkeonpremV1::BareMetalAdminSecurityConfig, decorator: Google::Apis::GkeonpremV1::BareMetalAdminSecurityConfig::Representation
      
          property :state, as: 'state'
          property :status, as: 'status', class: Google::Apis::GkeonpremV1::ResourceStatus, decorator: Google::Apis::GkeonpremV1::ResourceStatus::Representation
      
          property :storage, as: 'storage', class: Google::Apis::GkeonpremV1::BareMetalAdminStorageConfig, decorator: Google::Apis::GkeonpremV1::BareMetalAdminStorageConfig::Representation
      
          property :uid, as: 'uid'
          property :update_time, as: 'updateTime'
          property :validation_check, as: 'validationCheck', class: Google::Apis::GkeonpremV1::ValidationCheck, decorator: Google::Apis::GkeonpremV1::ValidationCheck::Representation
      
        end
      end
      
      class BareMetalAdminClusterOperationsConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :enable_application_logs, as: 'enableApplicationLogs'
        end
      end
      
      class BareMetalAdminControlPlaneConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :api_server_args, as: 'apiServerArgs', class: Google::Apis::GkeonpremV1::BareMetalAdminApiServerArgument, decorator: Google::Apis::GkeonpremV1::BareMetalAdminApiServerArgument::Representation
      
          property :control_plane_node_pool_config, as: 'controlPlaneNodePoolConfig', class: Google::Apis::GkeonpremV1::BareMetalAdminControlPlaneNodePoolConfig, decorator: Google::Apis::GkeonpremV1::BareMetalAdminControlPlaneNodePoolConfig::Representation
      
        end
      end
      
      class BareMetalAdminControlPlaneNodePoolConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :node_pool_config, as: 'nodePoolConfig', class: Google::Apis::GkeonpremV1::BareMetalNodePoolConfig, decorator: Google::Apis::GkeonpremV1::BareMetalNodePoolConfig::Representation
      
        end
      end
      
      class BareMetalAdminDrainedMachine
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :node_ip, as: 'nodeIp'
        end
      end
      
      class BareMetalAdminDrainingMachine
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :node_ip, as: 'nodeIp'
          property :pod_count, as: 'podCount'
        end
      end
      
      class BareMetalAdminIslandModeCidrConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :pod_address_cidr_blocks, as: 'podAddressCidrBlocks'
          collection :service_address_cidr_blocks, as: 'serviceAddressCidrBlocks'
        end
      end
      
      class BareMetalAdminLoadBalancerConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :manual_lb_config, as: 'manualLbConfig', class: Google::Apis::GkeonpremV1::BareMetalAdminManualLbConfig, decorator: Google::Apis::GkeonpremV1::BareMetalAdminManualLbConfig::Representation
      
          property :port_config, as: 'portConfig', class: Google::Apis::GkeonpremV1::BareMetalAdminPortConfig, decorator: Google::Apis::GkeonpremV1::BareMetalAdminPortConfig::Representation
      
          property :vip_config, as: 'vipConfig', class: Google::Apis::GkeonpremV1::BareMetalAdminVipConfig, decorator: Google::Apis::GkeonpremV1::BareMetalAdminVipConfig::Representation
      
        end
      end
      
      class BareMetalAdminMachineDrainStatus
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :drained_machines, as: 'drainedMachines', class: Google::Apis::GkeonpremV1::BareMetalAdminDrainedMachine, decorator: Google::Apis::GkeonpremV1::BareMetalAdminDrainedMachine::Representation
      
          collection :draining_machines, as: 'drainingMachines', class: Google::Apis::GkeonpremV1::BareMetalAdminDrainingMachine, decorator: Google::Apis::GkeonpremV1::BareMetalAdminDrainingMachine::Representation
      
        end
      end
      
      class BareMetalAdminMaintenanceConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :maintenance_address_cidr_blocks, as: 'maintenanceAddressCidrBlocks'
        end
      end
      
      class BareMetalAdminMaintenanceStatus
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :machine_drain_status, as: 'machineDrainStatus', class: Google::Apis::GkeonpremV1::BareMetalAdminMachineDrainStatus, decorator: Google::Apis::GkeonpremV1::BareMetalAdminMachineDrainStatus::Representation
      
        end
      end
      
      class BareMetalAdminManualLbConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :enabled, as: 'enabled'
        end
      end
      
      class BareMetalAdminNetworkConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :island_mode_cidr, as: 'islandModeCidr', class: Google::Apis::GkeonpremV1::BareMetalAdminIslandModeCidrConfig, decorator: Google::Apis::GkeonpremV1::BareMetalAdminIslandModeCidrConfig::Representation
      
        end
      end
      
      class BareMetalAdminNodeAccessConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :login_user, as: 'loginUser'
        end
      end
      
      class BareMetalAdminOsEnvironmentConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :package_repo_excluded, as: 'packageRepoExcluded'
        end
      end
      
      class BareMetalAdminPortConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :control_plane_load_balancer_port, as: 'controlPlaneLoadBalancerPort'
        end
      end
      
      class BareMetalAdminProxyConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :no_proxy, as: 'noProxy'
          property :uri, as: 'uri'
        end
      end
      
      class BareMetalAdminSecurityConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :authorization, as: 'authorization', class: Google::Apis::GkeonpremV1::Authorization, decorator: Google::Apis::GkeonpremV1::Authorization::Representation
      
        end
      end
      
      class BareMetalAdminStorageConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :lvp_node_mounts_config, as: 'lvpNodeMountsConfig', class: Google::Apis::GkeonpremV1::BareMetalLvpConfig, decorator: Google::Apis::GkeonpremV1::BareMetalLvpConfig::Representation
      
          property :lvp_share_config, as: 'lvpShareConfig', class: Google::Apis::GkeonpremV1::BareMetalLvpShareConfig, decorator: Google::Apis::GkeonpremV1::BareMetalLvpShareConfig::Representation
      
        end
      end
      
      class BareMetalAdminVipConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :control_plane_vip, as: 'controlPlaneVip'
        end
      end
      
      class BareMetalAdminWorkloadNodeConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :max_pods_per_node, :numeric_string => true, as: 'maxPodsPerNode'
        end
      end
      
      class BareMetalApiServerArgument
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :argument, as: 'argument'
          property :value, as: 'value'
        end
      end
      
      class BareMetalBgpLbConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :address_pools, as: 'addressPools', class: Google::Apis::GkeonpremV1::BareMetalLoadBalancerAddressPool, decorator: Google::Apis::GkeonpremV1::BareMetalLoadBalancerAddressPool::Representation
      
          property :asn, :numeric_string => true, as: 'asn'
          collection :bgp_peer_configs, as: 'bgpPeerConfigs', class: Google::Apis::GkeonpremV1::BareMetalBgpPeerConfig, decorator: Google::Apis::GkeonpremV1::BareMetalBgpPeerConfig::Representation
      
          property :load_balancer_node_pool_config, as: 'loadBalancerNodePoolConfig', class: Google::Apis::GkeonpremV1::BareMetalLoadBalancerNodePoolConfig, decorator: Google::Apis::GkeonpremV1::BareMetalLoadBalancerNodePoolConfig::Representation
      
        end
      end
      
      class BareMetalBgpPeerConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :asn, :numeric_string => true, as: 'asn'
          collection :control_plane_nodes, as: 'controlPlaneNodes'
          property :ip_address, as: 'ipAddress'
        end
      end
      
      class BareMetalCluster
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :admin_cluster_membership, as: 'adminClusterMembership'
          property :admin_cluster_name, as: 'adminClusterName'
          hash :annotations, as: 'annotations'
          property :bare_metal_version, as: 'bareMetalVersion'
          property :cluster_operations, as: 'clusterOperations', class: Google::Apis::GkeonpremV1::BareMetalClusterOperationsConfig, decorator: Google::Apis::GkeonpremV1::BareMetalClusterOperationsConfig::Representation
      
          property :control_plane, as: 'controlPlane', class: Google::Apis::GkeonpremV1::BareMetalControlPlaneConfig, decorator: Google::Apis::GkeonpremV1::BareMetalControlPlaneConfig::Representation
      
          property :create_time, as: 'createTime'
          property :delete_time, as: 'deleteTime'
          property :description, as: 'description'
          property :endpoint, as: 'endpoint'
          property :etag, as: 'etag'
          property :fleet, as: 'fleet', class: Google::Apis::GkeonpremV1::Fleet, decorator: Google::Apis::GkeonpremV1::Fleet::Representation
      
          property :load_balancer, as: 'loadBalancer', class: Google::Apis::GkeonpremV1::BareMetalLoadBalancerConfig, decorator: Google::Apis::GkeonpremV1::BareMetalLoadBalancerConfig::Representation
      
          property :local_name, as: 'localName'
          property :maintenance_config, as: 'maintenanceConfig', class: Google::Apis::GkeonpremV1::BareMetalMaintenanceConfig, decorator: Google::Apis::GkeonpremV1::BareMetalMaintenanceConfig::Representation
      
          property :maintenance_status, as: 'maintenanceStatus', class: Google::Apis::GkeonpremV1::BareMetalMaintenanceStatus, decorator: Google::Apis::GkeonpremV1::BareMetalMaintenanceStatus::Representation
      
          property :name, as: 'name'
          property :network_config, as: 'networkConfig', class: Google::Apis::GkeonpremV1::BareMetalNetworkConfig, decorator: Google::Apis::GkeonpremV1::BareMetalNetworkConfig::Representation
      
          property :node_access_config, as: 'nodeAccessConfig', class: Google::Apis::GkeonpremV1::BareMetalNodeAccessConfig, decorator: Google::Apis::GkeonpremV1::BareMetalNodeAccessConfig::Representation
      
          property :node_config, as: 'nodeConfig', class: Google::Apis::GkeonpremV1::BareMetalWorkloadNodeConfig, decorator: Google::Apis::GkeonpremV1::BareMetalWorkloadNodeConfig::Representation
      
          property :os_environment_config, as: 'osEnvironmentConfig', class: Google::Apis::GkeonpremV1::BareMetalOsEnvironmentConfig, decorator: Google::Apis::GkeonpremV1::BareMetalOsEnvironmentConfig::Representation
      
          property :proxy, as: 'proxy', class: Google::Apis::GkeonpremV1::BareMetalProxyConfig, decorator: Google::Apis::GkeonpremV1::BareMetalProxyConfig::Representation
      
          property :reconciling, as: 'reconciling'
          property :security_config, as: 'securityConfig', class: Google::Apis::GkeonpremV1::BareMetalSecurityConfig, decorator: Google::Apis::GkeonpremV1::BareMetalSecurityConfig::Representation
      
          property :state, as: 'state'
          property :status, as: 'status', class: Google::Apis::GkeonpremV1::ResourceStatus, decorator: Google::Apis::GkeonpremV1::ResourceStatus::Representation
      
          property :storage, as: 'storage', class: Google::Apis::GkeonpremV1::BareMetalStorageConfig, decorator: Google::Apis::GkeonpremV1::BareMetalStorageConfig::Representation
      
          property :uid, as: 'uid'
          property :update_time, as: 'updateTime'
          property :validation_check, as: 'validationCheck', class: Google::Apis::GkeonpremV1::ValidationCheck, decorator: Google::Apis::GkeonpremV1::ValidationCheck::Representation
      
        end
      end
      
      class BareMetalClusterOperationsConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :enable_application_logs, as: 'enableApplicationLogs'
        end
      end
      
      class BareMetalControlPlaneConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :api_server_args, as: 'apiServerArgs', class: Google::Apis::GkeonpremV1::BareMetalApiServerArgument, decorator: Google::Apis::GkeonpremV1::BareMetalApiServerArgument::Representation
      
          property :control_plane_node_pool_config, as: 'controlPlaneNodePoolConfig', class: Google::Apis::GkeonpremV1::BareMetalControlPlaneNodePoolConfig, decorator: Google::Apis::GkeonpremV1::BareMetalControlPlaneNodePoolConfig::Representation
      
        end
      end
      
      class BareMetalControlPlaneNodePoolConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :node_pool_config, as: 'nodePoolConfig', class: Google::Apis::GkeonpremV1::BareMetalNodePoolConfig, decorator: Google::Apis::GkeonpremV1::BareMetalNodePoolConfig::Representation
      
        end
      end
      
      class BareMetalDrainedMachine
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :node_ip, as: 'nodeIp'
        end
      end
      
      class BareMetalDrainingMachine
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :node_ip, as: 'nodeIp'
          property :pod_count, as: 'podCount'
        end
      end
      
      class BareMetalIslandModeCidrConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :pod_address_cidr_blocks, as: 'podAddressCidrBlocks'
          collection :service_address_cidr_blocks, as: 'serviceAddressCidrBlocks'
        end
      end
      
      class BareMetalKubeletConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :registry_burst, as: 'registryBurst'
          property :registry_pull_qps, as: 'registryPullQps'
          property :serialize_image_pulls_disabled, as: 'serializeImagePullsDisabled'
        end
      end
      
      class BareMetalLoadBalancerAddressPool
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :addresses, as: 'addresses'
          property :avoid_buggy_ips, as: 'avoidBuggyIps'
          property :manual_assign, as: 'manualAssign'
          property :pool, as: 'pool'
        end
      end
      
      class BareMetalLoadBalancerConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :bgp_lb_config, as: 'bgpLbConfig', class: Google::Apis::GkeonpremV1::BareMetalBgpLbConfig, decorator: Google::Apis::GkeonpremV1::BareMetalBgpLbConfig::Representation
      
          property :manual_lb_config, as: 'manualLbConfig', class: Google::Apis::GkeonpremV1::BareMetalManualLbConfig, decorator: Google::Apis::GkeonpremV1::BareMetalManualLbConfig::Representation
      
          property :metal_lb_config, as: 'metalLbConfig', class: Google::Apis::GkeonpremV1::BareMetalMetalLbConfig, decorator: Google::Apis::GkeonpremV1::BareMetalMetalLbConfig::Representation
      
          property :port_config, as: 'portConfig', class: Google::Apis::GkeonpremV1::BareMetalPortConfig, decorator: Google::Apis::GkeonpremV1::BareMetalPortConfig::Representation
      
          property :vip_config, as: 'vipConfig', class: Google::Apis::GkeonpremV1::BareMetalVipConfig, decorator: Google::Apis::GkeonpremV1::BareMetalVipConfig::Representation
      
        end
      end
      
      class BareMetalLoadBalancerNodePoolConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :node_pool_config, as: 'nodePoolConfig', class: Google::Apis::GkeonpremV1::BareMetalNodePoolConfig, decorator: Google::Apis::GkeonpremV1::BareMetalNodePoolConfig::Representation
      
        end
      end
      
      class BareMetalLvpConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :path, as: 'path'
          property :storage_class, as: 'storageClass'
        end
      end
      
      class BareMetalLvpShareConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :lvp_config, as: 'lvpConfig', class: Google::Apis::GkeonpremV1::BareMetalLvpConfig, decorator: Google::Apis::GkeonpremV1::BareMetalLvpConfig::Representation
      
          property :shared_path_pv_count, as: 'sharedPathPvCount'
        end
      end
      
      class BareMetalMachineDrainStatus
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :drained_machines, as: 'drainedMachines', class: Google::Apis::GkeonpremV1::BareMetalDrainedMachine, decorator: Google::Apis::GkeonpremV1::BareMetalDrainedMachine::Representation
      
          collection :draining_machines, as: 'drainingMachines', class: Google::Apis::GkeonpremV1::BareMetalDrainingMachine, decorator: Google::Apis::GkeonpremV1::BareMetalDrainingMachine::Representation
      
        end
      end
      
      class BareMetalMaintenanceConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :maintenance_address_cidr_blocks, as: 'maintenanceAddressCidrBlocks'
        end
      end
      
      class BareMetalMaintenanceStatus
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :machine_drain_status, as: 'machineDrainStatus', class: Google::Apis::GkeonpremV1::BareMetalMachineDrainStatus, decorator: Google::Apis::GkeonpremV1::BareMetalMachineDrainStatus::Representation
      
        end
      end
      
      class BareMetalManualLbConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :enabled, as: 'enabled'
        end
      end
      
      class BareMetalMetalLbConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :address_pools, as: 'addressPools', class: Google::Apis::GkeonpremV1::BareMetalLoadBalancerAddressPool, decorator: Google::Apis::GkeonpremV1::BareMetalLoadBalancerAddressPool::Representation
      
          property :load_balancer_node_pool_config, as: 'loadBalancerNodePoolConfig', class: Google::Apis::GkeonpremV1::BareMetalLoadBalancerNodePoolConfig, decorator: Google::Apis::GkeonpremV1::BareMetalLoadBalancerNodePoolConfig::Representation
      
        end
      end
      
      class BareMetalMultipleNetworkInterfacesConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :enabled, as: 'enabled'
        end
      end
      
      class BareMetalNetworkConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :advanced_networking, as: 'advancedNetworking'
          property :island_mode_cidr, as: 'islandModeCidr', class: Google::Apis::GkeonpremV1::BareMetalIslandModeCidrConfig, decorator: Google::Apis::GkeonpremV1::BareMetalIslandModeCidrConfig::Representation
      
          property :multiple_network_interfaces_config, as: 'multipleNetworkInterfacesConfig', class: Google::Apis::GkeonpremV1::BareMetalMultipleNetworkInterfacesConfig, decorator: Google::Apis::GkeonpremV1::BareMetalMultipleNetworkInterfacesConfig::Representation
      
          property :sr_iov_config, as: 'srIovConfig', class: Google::Apis::GkeonpremV1::BareMetalSrIovConfig, decorator: Google::Apis::GkeonpremV1::BareMetalSrIovConfig::Representation
      
        end
      end
      
      class BareMetalNodeAccessConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :login_user, as: 'loginUser'
        end
      end
      
      class BareMetalNodeConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          hash :labels, as: 'labels'
          property :node_ip, as: 'nodeIp'
        end
      end
      
      class BareMetalNodePool
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          hash :annotations, as: 'annotations'
          property :create_time, as: 'createTime'
          property :delete_time, as: 'deleteTime'
          property :display_name, as: 'displayName'
          property :etag, as: 'etag'
          property :name, as: 'name'
          property :node_pool_config, as: 'nodePoolConfig', class: Google::Apis::GkeonpremV1::BareMetalNodePoolConfig, decorator: Google::Apis::GkeonpremV1::BareMetalNodePoolConfig::Representation
      
          property :reconciling, as: 'reconciling'
          property :state, as: 'state'
          property :status, as: 'status', class: Google::Apis::GkeonpremV1::ResourceStatus, decorator: Google::Apis::GkeonpremV1::ResourceStatus::Representation
      
          property :uid, as: 'uid'
          property :update_time, as: 'updateTime'
        end
      end
      
      class BareMetalNodePoolConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :kubelet_config, as: 'kubeletConfig', class: Google::Apis::GkeonpremV1::BareMetalKubeletConfig, decorator: Google::Apis::GkeonpremV1::BareMetalKubeletConfig::Representation
      
          hash :labels, as: 'labels'
          collection :node_configs, as: 'nodeConfigs', class: Google::Apis::GkeonpremV1::BareMetalNodeConfig, decorator: Google::Apis::GkeonpremV1::BareMetalNodeConfig::Representation
      
          property :operating_system, as: 'operatingSystem'
          collection :taints, as: 'taints', class: Google::Apis::GkeonpremV1::NodeTaint, decorator: Google::Apis::GkeonpremV1::NodeTaint::Representation
      
        end
      end
      
      class BareMetalOsEnvironmentConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :package_repo_excluded, as: 'packageRepoExcluded'
        end
      end
      
      class BareMetalPortConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :control_plane_load_balancer_port, as: 'controlPlaneLoadBalancerPort'
        end
      end
      
      class BareMetalProxyConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :no_proxy, as: 'noProxy'
          property :uri, as: 'uri'
        end
      end
      
      class BareMetalSecurityConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :authorization, as: 'authorization', class: Google::Apis::GkeonpremV1::Authorization, decorator: Google::Apis::GkeonpremV1::Authorization::Representation
      
        end
      end
      
      class BareMetalSrIovConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :enabled, as: 'enabled'
        end
      end
      
      class BareMetalStorageConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :lvp_node_mounts_config, as: 'lvpNodeMountsConfig', class: Google::Apis::GkeonpremV1::BareMetalLvpConfig, decorator: Google::Apis::GkeonpremV1::BareMetalLvpConfig::Representation
      
          property :lvp_share_config, as: 'lvpShareConfig', class: Google::Apis::GkeonpremV1::BareMetalLvpShareConfig, decorator: Google::Apis::GkeonpremV1::BareMetalLvpShareConfig::Representation
      
        end
      end
      
      class BareMetalVersionInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :has_dependencies, as: 'hasDependencies'
          property :version, as: 'version'
        end
      end
      
      class BareMetalVipConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :control_plane_vip, as: 'controlPlaneVip'
          property :ingress_vip, as: 'ingressVip'
        end
      end
      
      class BareMetalWorkloadNodeConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :container_runtime, as: 'containerRuntime'
          property :max_pods_per_node, :numeric_string => true, as: 'maxPodsPerNode'
        end
      end
      
      class Binding
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :condition, as: 'condition', class: Google::Apis::GkeonpremV1::Expr, decorator: Google::Apis::GkeonpremV1::Expr::Representation
      
          collection :members, as: 'members'
          property :role, as: 'role'
        end
      end
      
      class CancelOperationRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class ClusterUser
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :username, as: 'username'
        end
      end
      
      class Empty
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class EnrollBareMetalAdminClusterRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :bare_metal_admin_cluster_id, as: 'bareMetalAdminClusterId'
          property :local_name, as: 'localName'
          property :membership, as: 'membership'
        end
      end
      
      class EnrollBareMetalClusterRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :admin_cluster_membership, as: 'adminClusterMembership'
          property :bare_metal_cluster_id, as: 'bareMetalClusterId'
          property :local_name, as: 'localName'
        end
      end
      
      class EnrollBareMetalNodePoolRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :bare_metal_node_pool_id, as: 'bareMetalNodePoolId'
          property :validate_only, as: 'validateOnly'
        end
      end
      
      class EnrollVmwareAdminClusterRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :local_name, as: 'localName'
          property :membership, as: 'membership'
          property :vmware_admin_cluster_id, as: 'vmwareAdminClusterId'
        end
      end
      
      class EnrollVmwareClusterRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :admin_cluster_membership, as: 'adminClusterMembership'
          property :local_name, as: 'localName'
          property :validate_only, as: 'validateOnly'
          property :vmware_cluster_id, as: 'vmwareClusterId'
        end
      end
      
      class EnrollVmwareNodePoolRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :vmware_node_pool_id, as: 'vmwareNodePoolId'
        end
      end
      
      class Expr
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :description, as: 'description'
          property :expression, as: 'expression'
          property :location, as: 'location'
          property :title, as: 'title'
        end
      end
      
      class Fleet
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :membership, as: 'membership'
        end
      end
      
      class ListBareMetalAdminClustersResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :bare_metal_admin_clusters, as: 'bareMetalAdminClusters', class: Google::Apis::GkeonpremV1::BareMetalAdminCluster, decorator: Google::Apis::GkeonpremV1::BareMetalAdminCluster::Representation
      
          property :next_page_token, as: 'nextPageToken'
          collection :unreachable, as: 'unreachable'
        end
      end
      
      class ListBareMetalClustersResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :bare_metal_clusters, as: 'bareMetalClusters', class: Google::Apis::GkeonpremV1::BareMetalCluster, decorator: Google::Apis::GkeonpremV1::BareMetalCluster::Representation
      
          property :next_page_token, as: 'nextPageToken'
          collection :unreachable, as: 'unreachable'
        end
      end
      
      class ListBareMetalNodePoolsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :bare_metal_node_pools, as: 'bareMetalNodePools', class: Google::Apis::GkeonpremV1::BareMetalNodePool, decorator: Google::Apis::GkeonpremV1::BareMetalNodePool::Representation
      
          property :next_page_token, as: 'nextPageToken'
          collection :unreachable, as: 'unreachable'
        end
      end
      
      class ListLocationsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :locations, as: 'locations', class: Google::Apis::GkeonpremV1::Location, decorator: Google::Apis::GkeonpremV1::Location::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class ListOperationsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :operations, as: 'operations', class: Google::Apis::GkeonpremV1::Operation, decorator: Google::Apis::GkeonpremV1::Operation::Representation
      
        end
      end
      
      class ListVmwareAdminClustersResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :unreachable, as: 'unreachable'
          collection :vmware_admin_clusters, as: 'vmwareAdminClusters', class: Google::Apis::GkeonpremV1::VmwareAdminCluster, decorator: Google::Apis::GkeonpremV1::VmwareAdminCluster::Representation
      
        end
      end
      
      class ListVmwareClustersResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :unreachable, as: 'unreachable'
          collection :vmware_clusters, as: 'vmwareClusters', class: Google::Apis::GkeonpremV1::VmwareCluster, decorator: Google::Apis::GkeonpremV1::VmwareCluster::Representation
      
        end
      end
      
      class ListVmwareNodePoolsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :unreachable, as: 'unreachable'
          collection :vmware_node_pools, as: 'vmwareNodePools', class: Google::Apis::GkeonpremV1::VmwareNodePool, decorator: Google::Apis::GkeonpremV1::VmwareNodePool::Representation
      
        end
      end
      
      class Location
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :display_name, as: 'displayName'
          hash :labels, as: 'labels'
          property :location_id, as: 'locationId'
          hash :metadata, as: 'metadata'
          property :name, as: 'name'
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
      
      class Operation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :done, as: 'done'
          property :error, as: 'error', class: Google::Apis::GkeonpremV1::Status, decorator: Google::Apis::GkeonpremV1::Status::Representation
      
          hash :metadata, as: 'metadata'
          property :name, as: 'name'
          hash :response, as: 'response'
        end
      end
      
      class OperationMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :api_version, as: 'apiVersion'
          property :create_time, as: 'createTime'
          property :end_time, as: 'endTime'
          property :requested_cancellation, as: 'requestedCancellation'
          property :status_message, as: 'statusMessage'
          property :target, as: 'target'
          property :type, as: 'type'
          property :verb, as: 'verb'
        end
      end
      
      class Policy
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :bindings, as: 'bindings', class: Google::Apis::GkeonpremV1::Binding, decorator: Google::Apis::GkeonpremV1::Binding::Representation
      
          property :etag, :base64 => true, as: 'etag'
          property :version, as: 'version'
        end
      end
      
      class QueryBareMetalAdminVersionConfigResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :versions, as: 'versions', class: Google::Apis::GkeonpremV1::BareMetalVersionInfo, decorator: Google::Apis::GkeonpremV1::BareMetalVersionInfo::Representation
      
        end
      end
      
      class QueryBareMetalVersionConfigResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :versions, as: 'versions', class: Google::Apis::GkeonpremV1::BareMetalVersionInfo, decorator: Google::Apis::GkeonpremV1::BareMetalVersionInfo::Representation
      
        end
      end
      
      class QueryVmwareVersionConfigResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :versions, as: 'versions', class: Google::Apis::GkeonpremV1::VmwareVersionInfo, decorator: Google::Apis::GkeonpremV1::VmwareVersionInfo::Representation
      
        end
      end
      
      class ResourceCondition
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :last_transition_time, as: 'lastTransitionTime'
          property :message, as: 'message'
          property :reason, as: 'reason'
          property :state, as: 'state'
          property :type, as: 'type'
        end
      end
      
      class ResourceStatus
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :conditions, as: 'conditions', class: Google::Apis::GkeonpremV1::ResourceCondition, decorator: Google::Apis::GkeonpremV1::ResourceCondition::Representation
      
          property :error_message, as: 'errorMessage'
        end
      end
      
      class SetIamPolicyRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :policy, as: 'policy', class: Google::Apis::GkeonpremV1::Policy, decorator: Google::Apis::GkeonpremV1::Policy::Representation
      
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
      
      class TestIamPermissionsRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :permissions, as: 'permissions'
        end
      end
      
      class TestIamPermissionsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :permissions, as: 'permissions'
        end
      end
      
      class ValidationCheck
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :option, as: 'option'
          property :scenario, as: 'scenario'
          property :status, as: 'status', class: Google::Apis::GkeonpremV1::ValidationCheckStatus, decorator: Google::Apis::GkeonpremV1::ValidationCheckStatus::Representation
      
        end
      end
      
      class ValidationCheckResult
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :category, as: 'category'
          property :description, as: 'description'
          property :details, as: 'details'
          property :reason, as: 'reason'
          property :state, as: 'state'
        end
      end
      
      class ValidationCheckStatus
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :result, as: 'result', class: Google::Apis::GkeonpremV1::ValidationCheckResult, decorator: Google::Apis::GkeonpremV1::ValidationCheckResult::Representation
      
        end
      end
      
      class VmwareAagConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :aag_config_disabled, as: 'aagConfigDisabled'
        end
      end
      
      class VmwareAddressPool
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :addresses, as: 'addresses'
          property :avoid_buggy_ips, as: 'avoidBuggyIps'
          property :manual_assign, as: 'manualAssign'
          property :pool, as: 'pool'
        end
      end
      
      class VmwareAdminAddonNodeConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :auto_resize_config, as: 'autoResizeConfig', class: Google::Apis::GkeonpremV1::VmwareAutoResizeConfig, decorator: Google::Apis::GkeonpremV1::VmwareAutoResizeConfig::Representation
      
        end
      end
      
      class VmwareAdminCluster
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :addon_node, as: 'addonNode', class: Google::Apis::GkeonpremV1::VmwareAdminAddonNodeConfig, decorator: Google::Apis::GkeonpremV1::VmwareAdminAddonNodeConfig::Representation
      
          hash :annotations, as: 'annotations'
          property :anti_affinity_groups, as: 'antiAffinityGroups', class: Google::Apis::GkeonpremV1::VmwareAagConfig, decorator: Google::Apis::GkeonpremV1::VmwareAagConfig::Representation
      
          property :auto_repair_config, as: 'autoRepairConfig', class: Google::Apis::GkeonpremV1::VmwareAutoRepairConfig, decorator: Google::Apis::GkeonpremV1::VmwareAutoRepairConfig::Representation
      
          property :bootstrap_cluster_membership, as: 'bootstrapClusterMembership'
          property :control_plane_node, as: 'controlPlaneNode', class: Google::Apis::GkeonpremV1::VmwareAdminControlPlaneNodeConfig, decorator: Google::Apis::GkeonpremV1::VmwareAdminControlPlaneNodeConfig::Representation
      
          property :create_time, as: 'createTime'
          property :description, as: 'description'
          property :endpoint, as: 'endpoint'
          property :etag, as: 'etag'
          property :fleet, as: 'fleet', class: Google::Apis::GkeonpremV1::Fleet, decorator: Google::Apis::GkeonpremV1::Fleet::Representation
      
          property :image_type, as: 'imageType'
          property :load_balancer, as: 'loadBalancer', class: Google::Apis::GkeonpremV1::VmwareAdminLoadBalancerConfig, decorator: Google::Apis::GkeonpremV1::VmwareAdminLoadBalancerConfig::Representation
      
          property :local_name, as: 'localName'
          property :name, as: 'name'
          property :network_config, as: 'networkConfig', class: Google::Apis::GkeonpremV1::VmwareAdminNetworkConfig, decorator: Google::Apis::GkeonpremV1::VmwareAdminNetworkConfig::Representation
      
          property :on_prem_version, as: 'onPremVersion'
          property :platform_config, as: 'platformConfig', class: Google::Apis::GkeonpremV1::VmwarePlatformConfig, decorator: Google::Apis::GkeonpremV1::VmwarePlatformConfig::Representation
      
          property :reconciling, as: 'reconciling'
          property :state, as: 'state'
          property :status, as: 'status', class: Google::Apis::GkeonpremV1::ResourceStatus, decorator: Google::Apis::GkeonpremV1::ResourceStatus::Representation
      
          property :uid, as: 'uid'
          property :update_time, as: 'updateTime'
          property :vcenter, as: 'vcenter', class: Google::Apis::GkeonpremV1::VmwareAdminVCenterConfig, decorator: Google::Apis::GkeonpremV1::VmwareAdminVCenterConfig::Representation
      
        end
      end
      
      class VmwareAdminControlPlaneNodeConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :cpus, :numeric_string => true, as: 'cpus'
          property :memory, :numeric_string => true, as: 'memory'
        end
      end
      
      class VmwareAdminF5BigIpConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :address, as: 'address'
          property :partition, as: 'partition'
          property :snat_pool, as: 'snatPool'
        end
      end
      
      class VmwareAdminLoadBalancerConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :f5_config, as: 'f5Config', class: Google::Apis::GkeonpremV1::VmwareAdminF5BigIpConfig, decorator: Google::Apis::GkeonpremV1::VmwareAdminF5BigIpConfig::Representation
      
          property :manual_lb_config, as: 'manualLbConfig', class: Google::Apis::GkeonpremV1::VmwareAdminManualLbConfig, decorator: Google::Apis::GkeonpremV1::VmwareAdminManualLbConfig::Representation
      
          property :metal_lb_config, as: 'metalLbConfig', class: Google::Apis::GkeonpremV1::VmwareAdminMetalLbConfig, decorator: Google::Apis::GkeonpremV1::VmwareAdminMetalLbConfig::Representation
      
          property :vip_config, as: 'vipConfig', class: Google::Apis::GkeonpremV1::VmwareAdminVipConfig, decorator: Google::Apis::GkeonpremV1::VmwareAdminVipConfig::Representation
      
        end
      end
      
      class VmwareAdminManualLbConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :addons_node_port, as: 'addonsNodePort'
          property :control_plane_node_port, as: 'controlPlaneNodePort'
          property :ingress_http_node_port, as: 'ingressHttpNodePort'
          property :ingress_https_node_port, as: 'ingressHttpsNodePort'
          property :konnectivity_server_node_port, as: 'konnectivityServerNodePort'
        end
      end
      
      class VmwareAdminMetalLbConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class VmwareAdminNetworkConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :dhcp_ip_config, as: 'dhcpIpConfig', class: Google::Apis::GkeonpremV1::VmwareDhcpIpConfig, decorator: Google::Apis::GkeonpremV1::VmwareDhcpIpConfig::Representation
      
          property :host_config, as: 'hostConfig', class: Google::Apis::GkeonpremV1::VmwareHostConfig, decorator: Google::Apis::GkeonpremV1::VmwareHostConfig::Representation
      
          collection :pod_address_cidr_blocks, as: 'podAddressCidrBlocks'
          collection :service_address_cidr_blocks, as: 'serviceAddressCidrBlocks'
          property :static_ip_config, as: 'staticIpConfig', class: Google::Apis::GkeonpremV1::VmwareStaticIpConfig, decorator: Google::Apis::GkeonpremV1::VmwareStaticIpConfig::Representation
      
          property :vcenter_network, as: 'vcenterNetwork'
        end
      end
      
      class VmwareAdminVCenterConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :address, as: 'address'
          property :ca_cert_data, as: 'caCertData'
          property :cluster, as: 'cluster'
          property :data_disk, as: 'dataDisk'
          property :datacenter, as: 'datacenter'
          property :datastore, as: 'datastore'
          property :folder, as: 'folder'
          property :resource_pool, as: 'resourcePool'
        end
      end
      
      class VmwareAdminVipConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :addons_vip, as: 'addonsVip'
          property :control_plane_vip, as: 'controlPlaneVip'
        end
      end
      
      class VmwareAutoRepairConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :enabled, as: 'enabled'
        end
      end
      
      class VmwareAutoResizeConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :enabled, as: 'enabled'
        end
      end
      
      class VmwareBundleConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :status, as: 'status', class: Google::Apis::GkeonpremV1::ResourceStatus, decorator: Google::Apis::GkeonpremV1::ResourceStatus::Representation
      
          property :version, as: 'version'
        end
      end
      
      class VmwareCluster
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :admin_cluster_membership, as: 'adminClusterMembership'
          property :admin_cluster_name, as: 'adminClusterName'
          hash :annotations, as: 'annotations'
          property :anti_affinity_groups, as: 'antiAffinityGroups', class: Google::Apis::GkeonpremV1::VmwareAagConfig, decorator: Google::Apis::GkeonpremV1::VmwareAagConfig::Representation
      
          property :authorization, as: 'authorization', class: Google::Apis::GkeonpremV1::Authorization, decorator: Google::Apis::GkeonpremV1::Authorization::Representation
      
          property :auto_repair_config, as: 'autoRepairConfig', class: Google::Apis::GkeonpremV1::VmwareAutoRepairConfig, decorator: Google::Apis::GkeonpremV1::VmwareAutoRepairConfig::Representation
      
          property :control_plane_node, as: 'controlPlaneNode', class: Google::Apis::GkeonpremV1::VmwareControlPlaneNodeConfig, decorator: Google::Apis::GkeonpremV1::VmwareControlPlaneNodeConfig::Representation
      
          property :create_time, as: 'createTime'
          property :dataplane_v2, as: 'dataplaneV2', class: Google::Apis::GkeonpremV1::VmwareDataplaneV2Config, decorator: Google::Apis::GkeonpremV1::VmwareDataplaneV2Config::Representation
      
          property :delete_time, as: 'deleteTime'
          property :description, as: 'description'
          property :enable_control_plane_v2, as: 'enableControlPlaneV2'
          property :endpoint, as: 'endpoint'
          property :etag, as: 'etag'
          property :fleet, as: 'fleet', class: Google::Apis::GkeonpremV1::Fleet, decorator: Google::Apis::GkeonpremV1::Fleet::Representation
      
          property :load_balancer, as: 'loadBalancer', class: Google::Apis::GkeonpremV1::VmwareLoadBalancerConfig, decorator: Google::Apis::GkeonpremV1::VmwareLoadBalancerConfig::Representation
      
          property :local_name, as: 'localName'
          property :name, as: 'name'
          property :network_config, as: 'networkConfig', class: Google::Apis::GkeonpremV1::VmwareNetworkConfig, decorator: Google::Apis::GkeonpremV1::VmwareNetworkConfig::Representation
      
          property :on_prem_version, as: 'onPremVersion'
          property :reconciling, as: 'reconciling'
          property :state, as: 'state'
          property :status, as: 'status', class: Google::Apis::GkeonpremV1::ResourceStatus, decorator: Google::Apis::GkeonpremV1::ResourceStatus::Representation
      
          property :storage, as: 'storage', class: Google::Apis::GkeonpremV1::VmwareStorageConfig, decorator: Google::Apis::GkeonpremV1::VmwareStorageConfig::Representation
      
          property :uid, as: 'uid'
          property :update_time, as: 'updateTime'
          property :validation_check, as: 'validationCheck', class: Google::Apis::GkeonpremV1::ValidationCheck, decorator: Google::Apis::GkeonpremV1::ValidationCheck::Representation
      
          property :vcenter, as: 'vcenter', class: Google::Apis::GkeonpremV1::VmwareVCenterConfig, decorator: Google::Apis::GkeonpremV1::VmwareVCenterConfig::Representation
      
          property :vm_tracking_enabled, as: 'vmTrackingEnabled'
        end
      end
      
      class VmwareControlPlaneNodeConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :auto_resize_config, as: 'autoResizeConfig', class: Google::Apis::GkeonpremV1::VmwareAutoResizeConfig, decorator: Google::Apis::GkeonpremV1::VmwareAutoResizeConfig::Representation
      
          property :cpus, :numeric_string => true, as: 'cpus'
          property :memory, :numeric_string => true, as: 'memory'
          property :replicas, :numeric_string => true, as: 'replicas'
          property :vsphere_config, as: 'vsphereConfig', class: Google::Apis::GkeonpremV1::VmwareControlPlaneVsphereConfig, decorator: Google::Apis::GkeonpremV1::VmwareControlPlaneVsphereConfig::Representation
      
        end
      end
      
      class VmwareControlPlaneV2Config
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :control_plane_ip_block, as: 'controlPlaneIpBlock', class: Google::Apis::GkeonpremV1::VmwareIpBlock, decorator: Google::Apis::GkeonpremV1::VmwareIpBlock::Representation
      
        end
      end
      
      class VmwareControlPlaneVsphereConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :datastore, as: 'datastore'
        end
      end
      
      class VmwareDataplaneV2Config
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :advanced_networking, as: 'advancedNetworking'
          property :dataplane_v2_enabled, as: 'dataplaneV2Enabled'
          property :windows_dataplane_v2_enabled, as: 'windowsDataplaneV2Enabled'
        end
      end
      
      class VmwareDhcpIpConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :enabled, as: 'enabled'
        end
      end
      
      class VmwareF5BigIpConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :address, as: 'address'
          property :partition, as: 'partition'
          property :snat_pool, as: 'snatPool'
        end
      end
      
      class VmwareHostConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :dns_search_domains, as: 'dnsSearchDomains'
          collection :dns_servers, as: 'dnsServers'
          collection :ntp_servers, as: 'ntpServers'
        end
      end
      
      class VmwareHostIp
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :hostname, as: 'hostname'
          property :ip, as: 'ip'
        end
      end
      
      class VmwareIpBlock
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :gateway, as: 'gateway'
          collection :ips, as: 'ips', class: Google::Apis::GkeonpremV1::VmwareHostIp, decorator: Google::Apis::GkeonpremV1::VmwareHostIp::Representation
      
          property :netmask, as: 'netmask'
        end
      end
      
      class VmwareLoadBalancerConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :f5_config, as: 'f5Config', class: Google::Apis::GkeonpremV1::VmwareF5BigIpConfig, decorator: Google::Apis::GkeonpremV1::VmwareF5BigIpConfig::Representation
      
          property :manual_lb_config, as: 'manualLbConfig', class: Google::Apis::GkeonpremV1::VmwareManualLbConfig, decorator: Google::Apis::GkeonpremV1::VmwareManualLbConfig::Representation
      
          property :metal_lb_config, as: 'metalLbConfig', class: Google::Apis::GkeonpremV1::VmwareMetalLbConfig, decorator: Google::Apis::GkeonpremV1::VmwareMetalLbConfig::Representation
      
          property :vip_config, as: 'vipConfig', class: Google::Apis::GkeonpremV1::VmwareVipConfig, decorator: Google::Apis::GkeonpremV1::VmwareVipConfig::Representation
      
        end
      end
      
      class VmwareManualLbConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :control_plane_node_port, as: 'controlPlaneNodePort'
          property :ingress_http_node_port, as: 'ingressHttpNodePort'
          property :ingress_https_node_port, as: 'ingressHttpsNodePort'
          property :konnectivity_server_node_port, as: 'konnectivityServerNodePort'
        end
      end
      
      class VmwareMetalLbConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :address_pools, as: 'addressPools', class: Google::Apis::GkeonpremV1::VmwareAddressPool, decorator: Google::Apis::GkeonpremV1::VmwareAddressPool::Representation
      
        end
      end
      
      class VmwareNetworkConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :control_plane_v2_config, as: 'controlPlaneV2Config', class: Google::Apis::GkeonpremV1::VmwareControlPlaneV2Config, decorator: Google::Apis::GkeonpremV1::VmwareControlPlaneV2Config::Representation
      
          property :dhcp_ip_config, as: 'dhcpIpConfig', class: Google::Apis::GkeonpremV1::VmwareDhcpIpConfig, decorator: Google::Apis::GkeonpremV1::VmwareDhcpIpConfig::Representation
      
          property :host_config, as: 'hostConfig', class: Google::Apis::GkeonpremV1::VmwareHostConfig, decorator: Google::Apis::GkeonpremV1::VmwareHostConfig::Representation
      
          collection :pod_address_cidr_blocks, as: 'podAddressCidrBlocks'
          collection :service_address_cidr_blocks, as: 'serviceAddressCidrBlocks'
          property :static_ip_config, as: 'staticIpConfig', class: Google::Apis::GkeonpremV1::VmwareStaticIpConfig, decorator: Google::Apis::GkeonpremV1::VmwareStaticIpConfig::Representation
      
          property :vcenter_network, as: 'vcenterNetwork'
        end
      end
      
      class VmwareNodeConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :boot_disk_size_gb, :numeric_string => true, as: 'bootDiskSizeGb'
          property :cpus, :numeric_string => true, as: 'cpus'
          property :enable_load_balancer, as: 'enableLoadBalancer'
          property :image, as: 'image'
          property :image_type, as: 'imageType'
          hash :labels, as: 'labels'
          property :memory_mb, :numeric_string => true, as: 'memoryMb'
          property :replicas, :numeric_string => true, as: 'replicas'
          collection :taints, as: 'taints', class: Google::Apis::GkeonpremV1::NodeTaint, decorator: Google::Apis::GkeonpremV1::NodeTaint::Representation
      
          property :vsphere_config, as: 'vsphereConfig', class: Google::Apis::GkeonpremV1::VmwareVsphereConfig, decorator: Google::Apis::GkeonpremV1::VmwareVsphereConfig::Representation
      
        end
      end
      
      class VmwareNodePool
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          hash :annotations, as: 'annotations'
          property :config, as: 'config', class: Google::Apis::GkeonpremV1::VmwareNodeConfig, decorator: Google::Apis::GkeonpremV1::VmwareNodeConfig::Representation
      
          property :create_time, as: 'createTime'
          property :delete_time, as: 'deleteTime'
          property :display_name, as: 'displayName'
          property :etag, as: 'etag'
          property :name, as: 'name'
          property :node_pool_autoscaling, as: 'nodePoolAutoscaling', class: Google::Apis::GkeonpremV1::VmwareNodePoolAutoscalingConfig, decorator: Google::Apis::GkeonpremV1::VmwareNodePoolAutoscalingConfig::Representation
      
          property :on_prem_version, as: 'onPremVersion'
          property :reconciling, as: 'reconciling'
          property :state, as: 'state'
          property :status, as: 'status', class: Google::Apis::GkeonpremV1::ResourceStatus, decorator: Google::Apis::GkeonpremV1::ResourceStatus::Representation
      
          property :uid, as: 'uid'
          property :update_time, as: 'updateTime'
        end
      end
      
      class VmwareNodePoolAutoscalingConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :max_replicas, as: 'maxReplicas'
          property :min_replicas, as: 'minReplicas'
        end
      end
      
      class VmwarePlatformConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :bundles, as: 'bundles', class: Google::Apis::GkeonpremV1::VmwareBundleConfig, decorator: Google::Apis::GkeonpremV1::VmwareBundleConfig::Representation
      
          property :platform_version, as: 'platformVersion'
          property :required_platform_version, as: 'requiredPlatformVersion'
          property :status, as: 'status', class: Google::Apis::GkeonpremV1::ResourceStatus, decorator: Google::Apis::GkeonpremV1::ResourceStatus::Representation
      
        end
      end
      
      class VmwareStaticIpConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :ip_blocks, as: 'ipBlocks', class: Google::Apis::GkeonpremV1::VmwareIpBlock, decorator: Google::Apis::GkeonpremV1::VmwareIpBlock::Representation
      
        end
      end
      
      class VmwareStorageConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :vsphere_csi_disabled, as: 'vsphereCsiDisabled'
        end
      end
      
      class VmwareVCenterConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :address, as: 'address'
          property :ca_cert_data, as: 'caCertData'
          property :cluster, as: 'cluster'
          property :datacenter, as: 'datacenter'
          property :datastore, as: 'datastore'
          property :folder, as: 'folder'
          property :resource_pool, as: 'resourcePool'
        end
      end
      
      class VmwareVersionInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :has_dependencies, as: 'hasDependencies'
          property :is_installed, as: 'isInstalled'
          property :version, as: 'version'
        end
      end
      
      class VmwareVipConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :control_plane_vip, as: 'controlPlaneVip'
          property :ingress_vip, as: 'ingressVip'
        end
      end
      
      class VmwareVsphereConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :datastore, as: 'datastore'
          collection :tags, as: 'tags', class: Google::Apis::GkeonpremV1::VmwareVsphereTag, decorator: Google::Apis::GkeonpremV1::VmwareVsphereTag::Representation
      
        end
      end
      
      class VmwareVsphereTag
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :category, as: 'category'
          property :tag, as: 'tag'
        end
      end
    end
  end
end
