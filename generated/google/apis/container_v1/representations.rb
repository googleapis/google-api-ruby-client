# Copyright 2015 Google Inc.
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
      
      class Cluster
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListOperationsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CreateNodePoolRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ServerConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class NodeConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class MasterAuth
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AutoUpgradeOptions
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListClustersResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class HttpLoadBalancing
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class NodePoolAutoscaling
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SetMasterAuthRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ClusterUpdate
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class HorizontalPodAutoscaling
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Empty
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SetNodePoolManagementRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CreateClusterRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListNodePoolsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CompleteIpRotationRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class StartIpRotationRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class LegacyAbac
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SetLabelsRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class NodePool
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class NodeManagement
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CancelOperationRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SetLegacyAbacRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Operation
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AddonsConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class RollbackNodePoolUpgradeRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class UpdateClusterRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Cluster
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :label_fingerprint, as: 'labelFingerprint'
          property :zone, as: 'zone'
          property :logging_service, as: 'loggingService'
          property :node_ipv4_cidr_size, as: 'nodeIpv4CidrSize'
          property :expire_time, as: 'expireTime'
          property :status_message, as: 'statusMessage'
          property :master_auth, as: 'masterAuth', class: Google::Apis::ContainerV1::MasterAuth, decorator: Google::Apis::ContainerV1::MasterAuth::Representation
      
          property :current_master_version, as: 'currentMasterVersion'
          property :node_config, as: 'nodeConfig', class: Google::Apis::ContainerV1::NodeConfig, decorator: Google::Apis::ContainerV1::NodeConfig::Representation
      
          property :addons_config, as: 'addonsConfig', class: Google::Apis::ContainerV1::AddonsConfig, decorator: Google::Apis::ContainerV1::AddonsConfig::Representation
      
          property :status, as: 'status'
          property :current_node_version, as: 'currentNodeVersion'
          property :subnetwork, as: 'subnetwork'
          hash :resource_labels, as: 'resourceLabels'
          property :name, as: 'name'
          property :initial_cluster_version, as: 'initialClusterVersion'
          property :endpoint, as: 'endpoint'
          property :legacy_abac, as: 'legacyAbac', class: Google::Apis::ContainerV1::LegacyAbac, decorator: Google::Apis::ContainerV1::LegacyAbac::Representation
      
          property :create_time, as: 'createTime'
          property :cluster_ipv4_cidr, as: 'clusterIpv4Cidr'
          property :initial_node_count, as: 'initialNodeCount'
          property :self_link, as: 'selfLink'
          collection :locations, as: 'locations'
          collection :node_pools, as: 'nodePools', class: Google::Apis::ContainerV1::NodePool, decorator: Google::Apis::ContainerV1::NodePool::Representation
      
          collection :instance_group_urls, as: 'instanceGroupUrls'
          property :services_ipv4_cidr, as: 'servicesIpv4Cidr'
          property :enable_kubernetes_alpha, as: 'enableKubernetesAlpha'
          property :description, as: 'description'
          property :current_node_count, as: 'currentNodeCount'
          property :monitoring_service, as: 'monitoringService'
          property :network, as: 'network'
        end
      end
      
      class ListOperationsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :operations, as: 'operations', class: Google::Apis::ContainerV1::Operation, decorator: Google::Apis::ContainerV1::Operation::Representation
      
          collection :missing_zones, as: 'missingZones'
        end
      end
      
      class CreateNodePoolRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :node_pool, as: 'nodePool', class: Google::Apis::ContainerV1::NodePool, decorator: Google::Apis::ContainerV1::NodePool::Representation
      
        end
      end
      
      class ServerConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :valid_master_versions, as: 'validMasterVersions'
          property :default_cluster_version, as: 'defaultClusterVersion'
          property :default_image_type, as: 'defaultImageType'
          collection :valid_node_versions, as: 'validNodeVersions'
          collection :valid_image_types, as: 'validImageTypes'
        end
      end
      
      class NodeConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :image_type, as: 'imageType'
          collection :oauth_scopes, as: 'oauthScopes'
          property :preemptible, as: 'preemptible'
          hash :labels, as: 'labels'
          property :local_ssd_count, as: 'localSsdCount'
          hash :metadata, as: 'metadata'
          property :disk_size_gb, as: 'diskSizeGb'
          collection :tags, as: 'tags'
          property :service_account, as: 'serviceAccount'
          property :machine_type, as: 'machineType'
        end
      end
      
      class MasterAuth
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :password, as: 'password'
          property :client_certificate, as: 'clientCertificate'
          property :username, as: 'username'
          property :client_key, as: 'clientKey'
          property :cluster_ca_certificate, as: 'clusterCaCertificate'
        end
      end
      
      class AutoUpgradeOptions
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :description, as: 'description'
          property :auto_upgrade_start_time, as: 'autoUpgradeStartTime'
        end
      end
      
      class ListClustersResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :clusters, as: 'clusters', class: Google::Apis::ContainerV1::Cluster, decorator: Google::Apis::ContainerV1::Cluster::Representation
      
          collection :missing_zones, as: 'missingZones'
        end
      end
      
      class HttpLoadBalancing
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :disabled, as: 'disabled'
        end
      end
      
      class NodePoolAutoscaling
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :max_node_count, as: 'maxNodeCount'
          property :min_node_count, as: 'minNodeCount'
          property :enabled, as: 'enabled'
        end
      end
      
      class SetMasterAuthRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :update, as: 'update', class: Google::Apis::ContainerV1::MasterAuth, decorator: Google::Apis::ContainerV1::MasterAuth::Representation
      
          property :action, as: 'action'
        end
      end
      
      class ClusterUpdate
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :desired_master_version, as: 'desiredMasterVersion'
          property :desired_node_pool_autoscaling, as: 'desiredNodePoolAutoscaling', class: Google::Apis::ContainerV1::NodePoolAutoscaling, decorator: Google::Apis::ContainerV1::NodePoolAutoscaling::Representation
      
          collection :desired_locations, as: 'desiredLocations'
          property :desired_monitoring_service, as: 'desiredMonitoringService'
          property :desired_image_type, as: 'desiredImageType'
          property :desired_addons_config, as: 'desiredAddonsConfig', class: Google::Apis::ContainerV1::AddonsConfig, decorator: Google::Apis::ContainerV1::AddonsConfig::Representation
      
          property :desired_node_pool_id, as: 'desiredNodePoolId'
          property :desired_node_version, as: 'desiredNodeVersion'
        end
      end
      
      class HorizontalPodAutoscaling
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :disabled, as: 'disabled'
        end
      end
      
      class Empty
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class SetNodePoolManagementRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :management, as: 'management', class: Google::Apis::ContainerV1::NodeManagement, decorator: Google::Apis::ContainerV1::NodeManagement::Representation
      
        end
      end
      
      class CreateClusterRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :cluster, as: 'cluster', class: Google::Apis::ContainerV1::Cluster, decorator: Google::Apis::ContainerV1::Cluster::Representation
      
        end
      end
      
      class ListNodePoolsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :node_pools, as: 'nodePools', class: Google::Apis::ContainerV1::NodePool, decorator: Google::Apis::ContainerV1::NodePool::Representation
      
        end
      end
      
      class CompleteIpRotationRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class StartIpRotationRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class LegacyAbac
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :enabled, as: 'enabled'
        end
      end
      
      class SetLabelsRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          hash :resource_labels, as: 'resourceLabels'
          property :label_fingerprint, as: 'labelFingerprint'
        end
      end
      
      class NodePool
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :autoscaling, as: 'autoscaling', class: Google::Apis::ContainerV1::NodePoolAutoscaling, decorator: Google::Apis::ContainerV1::NodePoolAutoscaling::Representation
      
          property :initial_node_count, as: 'initialNodeCount'
          property :management, as: 'management', class: Google::Apis::ContainerV1::NodeManagement, decorator: Google::Apis::ContainerV1::NodeManagement::Representation
      
          property :self_link, as: 'selfLink'
          collection :instance_group_urls, as: 'instanceGroupUrls'
          property :version, as: 'version'
          property :status, as: 'status'
          property :config, as: 'config', class: Google::Apis::ContainerV1::NodeConfig, decorator: Google::Apis::ContainerV1::NodeConfig::Representation
      
          property :status_message, as: 'statusMessage'
          property :name, as: 'name'
        end
      end
      
      class NodeManagement
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :auto_upgrade, as: 'autoUpgrade'
          property :auto_repair, as: 'autoRepair'
          property :upgrade_options, as: 'upgradeOptions', class: Google::Apis::ContainerV1::AutoUpgradeOptions, decorator: Google::Apis::ContainerV1::AutoUpgradeOptions::Representation
      
        end
      end
      
      class CancelOperationRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class SetLegacyAbacRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :enabled, as: 'enabled'
        end
      end
      
      class Operation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :zone, as: 'zone'
          property :status, as: 'status'
          property :name, as: 'name'
          property :status_message, as: 'statusMessage'
          property :self_link, as: 'selfLink'
          property :target_link, as: 'targetLink'
          property :detail, as: 'detail'
          property :operation_type, as: 'operationType'
        end
      end
      
      class AddonsConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :horizontal_pod_autoscaling, as: 'horizontalPodAutoscaling', class: Google::Apis::ContainerV1::HorizontalPodAutoscaling, decorator: Google::Apis::ContainerV1::HorizontalPodAutoscaling::Representation
      
          property :http_load_balancing, as: 'httpLoadBalancing', class: Google::Apis::ContainerV1::HttpLoadBalancing, decorator: Google::Apis::ContainerV1::HttpLoadBalancing::Representation
      
        end
      end
      
      class RollbackNodePoolUpgradeRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class UpdateClusterRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :update, as: 'update', class: Google::Apis::ContainerV1::ClusterUpdate, decorator: Google::Apis::ContainerV1::ClusterUpdate::Representation
      
        end
      end
    end
  end
end
