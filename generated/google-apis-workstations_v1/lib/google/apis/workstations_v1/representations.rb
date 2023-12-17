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
    module WorkstationsV1
      
      class AuditConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AuditLogConfig
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
      
      class Container
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CustomerEncryptionKey
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DomainConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Expr
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GceConfidentialInstanceConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GceInstance
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GceRegionalPersistentDisk
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GceShieldedInstanceConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GenerateAccessTokenRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GenerateAccessTokenResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleProtobufEmpty
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Host
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
      
      class ListUsableWorkstationConfigsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListUsableWorkstationsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListWorkstationClustersResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListWorkstationConfigsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListWorkstationsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Location
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
      
      class PersistentDirectory
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Policy
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class PrivateClusterConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ReadinessCheck
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SetIamPolicyRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class StartWorkstationRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Status
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class StopWorkstationRequest
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
      
      class Workstation
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class WorkstationCluster
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class WorkstationConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AuditConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :audit_log_configs, as: 'auditLogConfigs', class: Google::Apis::WorkstationsV1::AuditLogConfig, decorator: Google::Apis::WorkstationsV1::AuditLogConfig::Representation
      
          property :service, as: 'service'
        end
      end
      
      class AuditLogConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :exempted_members, as: 'exemptedMembers'
          property :log_type, as: 'logType'
        end
      end
      
      class Binding
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :condition, as: 'condition', class: Google::Apis::WorkstationsV1::Expr, decorator: Google::Apis::WorkstationsV1::Expr::Representation
      
          collection :members, as: 'members'
          property :role, as: 'role'
        end
      end
      
      class CancelOperationRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class Container
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :args, as: 'args'
          collection :command, as: 'command'
          hash :env, as: 'env'
          property :image, as: 'image'
          property :run_as_user, as: 'runAsUser'
          property :working_dir, as: 'workingDir'
        end
      end
      
      class CustomerEncryptionKey
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :kms_key, as: 'kmsKey'
          property :kms_key_service_account, as: 'kmsKeyServiceAccount'
        end
      end
      
      class DomainConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :domain, as: 'domain'
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
      
      class GceConfidentialInstanceConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :enable_confidential_compute, as: 'enableConfidentialCompute'
        end
      end
      
      class GceInstance
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :boot_disk_size_gb, as: 'bootDiskSizeGb'
          property :confidential_instance_config, as: 'confidentialInstanceConfig', class: Google::Apis::WorkstationsV1::GceConfidentialInstanceConfig, decorator: Google::Apis::WorkstationsV1::GceConfidentialInstanceConfig::Representation
      
          property :disable_public_ip_addresses, as: 'disablePublicIpAddresses'
          property :enable_nested_virtualization, as: 'enableNestedVirtualization'
          property :machine_type, as: 'machineType'
          property :pool_size, as: 'poolSize'
          property :pooled_instances, as: 'pooledInstances'
          property :service_account, as: 'serviceAccount'
          collection :service_account_scopes, as: 'serviceAccountScopes'
          property :shielded_instance_config, as: 'shieldedInstanceConfig', class: Google::Apis::WorkstationsV1::GceShieldedInstanceConfig, decorator: Google::Apis::WorkstationsV1::GceShieldedInstanceConfig::Representation
      
          collection :tags, as: 'tags'
        end
      end
      
      class GceRegionalPersistentDisk
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :disk_type, as: 'diskType'
          property :fs_type, as: 'fsType'
          property :reclaim_policy, as: 'reclaimPolicy'
          property :size_gb, as: 'sizeGb'
          property :source_snapshot, as: 'sourceSnapshot'
        end
      end
      
      class GceShieldedInstanceConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :enable_integrity_monitoring, as: 'enableIntegrityMonitoring'
          property :enable_secure_boot, as: 'enableSecureBoot'
          property :enable_vtpm, as: 'enableVtpm'
        end
      end
      
      class GenerateAccessTokenRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :expire_time, as: 'expireTime'
          property :ttl, as: 'ttl'
        end
      end
      
      class GenerateAccessTokenResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :access_token, as: 'accessToken'
          property :expire_time, as: 'expireTime'
        end
      end
      
      class GoogleProtobufEmpty
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class Host
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :gce_instance, as: 'gceInstance', class: Google::Apis::WorkstationsV1::GceInstance, decorator: Google::Apis::WorkstationsV1::GceInstance::Representation
      
        end
      end
      
      class ListLocationsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :locations, as: 'locations', class: Google::Apis::WorkstationsV1::Location, decorator: Google::Apis::WorkstationsV1::Location::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class ListOperationsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :operations, as: 'operations', class: Google::Apis::WorkstationsV1::Operation, decorator: Google::Apis::WorkstationsV1::Operation::Representation
      
        end
      end
      
      class ListUsableWorkstationConfigsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :unreachable, as: 'unreachable'
          collection :workstation_configs, as: 'workstationConfigs', class: Google::Apis::WorkstationsV1::WorkstationConfig, decorator: Google::Apis::WorkstationsV1::WorkstationConfig::Representation
      
        end
      end
      
      class ListUsableWorkstationsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :unreachable, as: 'unreachable'
          collection :workstations, as: 'workstations', class: Google::Apis::WorkstationsV1::Workstation, decorator: Google::Apis::WorkstationsV1::Workstation::Representation
      
        end
      end
      
      class ListWorkstationClustersResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :unreachable, as: 'unreachable'
          collection :workstation_clusters, as: 'workstationClusters', class: Google::Apis::WorkstationsV1::WorkstationCluster, decorator: Google::Apis::WorkstationsV1::WorkstationCluster::Representation
      
        end
      end
      
      class ListWorkstationConfigsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :unreachable, as: 'unreachable'
          collection :workstation_configs, as: 'workstationConfigs', class: Google::Apis::WorkstationsV1::WorkstationConfig, decorator: Google::Apis::WorkstationsV1::WorkstationConfig::Representation
      
        end
      end
      
      class ListWorkstationsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :unreachable, as: 'unreachable'
          collection :workstations, as: 'workstations', class: Google::Apis::WorkstationsV1::Workstation, decorator: Google::Apis::WorkstationsV1::Workstation::Representation
      
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
      
      class Operation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :done, as: 'done'
          property :error, as: 'error', class: Google::Apis::WorkstationsV1::Status, decorator: Google::Apis::WorkstationsV1::Status::Representation
      
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
          property :verb, as: 'verb'
        end
      end
      
      class PersistentDirectory
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :gce_pd, as: 'gcePd', class: Google::Apis::WorkstationsV1::GceRegionalPersistentDisk, decorator: Google::Apis::WorkstationsV1::GceRegionalPersistentDisk::Representation
      
          property :mount_path, as: 'mountPath'
        end
      end
      
      class Policy
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :audit_configs, as: 'auditConfigs', class: Google::Apis::WorkstationsV1::AuditConfig, decorator: Google::Apis::WorkstationsV1::AuditConfig::Representation
      
          collection :bindings, as: 'bindings', class: Google::Apis::WorkstationsV1::Binding, decorator: Google::Apis::WorkstationsV1::Binding::Representation
      
          property :etag, :base64 => true, as: 'etag'
          property :version, as: 'version'
        end
      end
      
      class PrivateClusterConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :allowed_projects, as: 'allowedProjects'
          property :cluster_hostname, as: 'clusterHostname'
          property :enable_private_endpoint, as: 'enablePrivateEndpoint'
          property :service_attachment_uri, as: 'serviceAttachmentUri'
        end
      end
      
      class ReadinessCheck
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :path, as: 'path'
          property :port, as: 'port'
        end
      end
      
      class SetIamPolicyRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :policy, as: 'policy', class: Google::Apis::WorkstationsV1::Policy, decorator: Google::Apis::WorkstationsV1::Policy::Representation
      
          property :update_mask, as: 'updateMask'
        end
      end
      
      class StartWorkstationRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :etag, as: 'etag'
          property :validate_only, as: 'validateOnly'
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
      
      class StopWorkstationRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :etag, as: 'etag'
          property :validate_only, as: 'validateOnly'
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
      
      class Workstation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          hash :annotations, as: 'annotations'
          property :create_time, as: 'createTime'
          property :delete_time, as: 'deleteTime'
          property :display_name, as: 'displayName'
          hash :env, as: 'env'
          property :etag, as: 'etag'
          property :host, as: 'host'
          property :kms_key, as: 'kmsKey'
          hash :labels, as: 'labels'
          property :name, as: 'name'
          property :reconciling, as: 'reconciling'
          property :start_time, as: 'startTime'
          property :state, as: 'state'
          property :uid, as: 'uid'
          property :update_time, as: 'updateTime'
        end
      end
      
      class WorkstationCluster
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          hash :annotations, as: 'annotations'
          collection :conditions, as: 'conditions', class: Google::Apis::WorkstationsV1::Status, decorator: Google::Apis::WorkstationsV1::Status::Representation
      
          property :control_plane_ip, as: 'controlPlaneIp'
          property :create_time, as: 'createTime'
          property :degraded, as: 'degraded'
          property :delete_time, as: 'deleteTime'
          property :display_name, as: 'displayName'
          property :domain_config, as: 'domainConfig', class: Google::Apis::WorkstationsV1::DomainConfig, decorator: Google::Apis::WorkstationsV1::DomainConfig::Representation
      
          property :etag, as: 'etag'
          hash :labels, as: 'labels'
          property :name, as: 'name'
          property :network, as: 'network'
          property :private_cluster_config, as: 'privateClusterConfig', class: Google::Apis::WorkstationsV1::PrivateClusterConfig, decorator: Google::Apis::WorkstationsV1::PrivateClusterConfig::Representation
      
          property :reconciling, as: 'reconciling'
          property :subnetwork, as: 'subnetwork'
          property :uid, as: 'uid'
          property :update_time, as: 'updateTime'
        end
      end
      
      class WorkstationConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          hash :annotations, as: 'annotations'
          collection :conditions, as: 'conditions', class: Google::Apis::WorkstationsV1::Status, decorator: Google::Apis::WorkstationsV1::Status::Representation
      
          property :container, as: 'container', class: Google::Apis::WorkstationsV1::Container, decorator: Google::Apis::WorkstationsV1::Container::Representation
      
          property :create_time, as: 'createTime'
          property :degraded, as: 'degraded'
          property :delete_time, as: 'deleteTime'
          property :display_name, as: 'displayName'
          property :encryption_key, as: 'encryptionKey', class: Google::Apis::WorkstationsV1::CustomerEncryptionKey, decorator: Google::Apis::WorkstationsV1::CustomerEncryptionKey::Representation
      
          property :etag, as: 'etag'
          property :host, as: 'host', class: Google::Apis::WorkstationsV1::Host, decorator: Google::Apis::WorkstationsV1::Host::Representation
      
          property :idle_timeout, as: 'idleTimeout'
          hash :labels, as: 'labels'
          property :name, as: 'name'
          collection :persistent_directories, as: 'persistentDirectories', class: Google::Apis::WorkstationsV1::PersistentDirectory, decorator: Google::Apis::WorkstationsV1::PersistentDirectory::Representation
      
          collection :readiness_checks, as: 'readinessChecks', class: Google::Apis::WorkstationsV1::ReadinessCheck, decorator: Google::Apis::WorkstationsV1::ReadinessCheck::Representation
      
          property :reconciling, as: 'reconciling'
          collection :replica_zones, as: 'replicaZones'
          property :running_timeout, as: 'runningTimeout'
          property :uid, as: 'uid'
          property :update_time, as: 'updateTime'
        end
      end
    end
  end
end
