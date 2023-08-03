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
    module NotebooksV2
      
      class AcceleratorConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Binding
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class BootDisk
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CancelOperationRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CheckInstanceUpgradabilityResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ContainerImage
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DataDisk
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DiagnoseInstanceRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DiagnosticConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Empty
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Event
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Expr
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GpuDriverConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GceSetup
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Instance
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListInstancesResponse
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
      
      class Location
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class NetworkInterface
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
      
      class ReportInstanceInfoSystemRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ResetInstanceRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class RollbackInstanceRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ServiceAccount
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SetIamPolicyRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ShieldedInstanceConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class StartInstanceRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Status
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class StopInstanceRequest
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
      
      class UpgradeHistoryEntry
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class UpgradeInstanceRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class UpgradeInstanceSystemRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class VmImage
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AcceleratorConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :core_count, :numeric_string => true, as: 'coreCount'
          property :type, as: 'type'
        end
      end
      
      class Binding
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :condition, as: 'condition', class: Google::Apis::NotebooksV2::Expr, decorator: Google::Apis::NotebooksV2::Expr::Representation
      
          collection :members, as: 'members'
          property :role, as: 'role'
        end
      end
      
      class BootDisk
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :disk_encryption, as: 'diskEncryption'
          property :disk_size_gb, :numeric_string => true, as: 'diskSizeGb'
          property :disk_type, as: 'diskType'
          property :kms_key, as: 'kmsKey'
        end
      end
      
      class CancelOperationRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class CheckInstanceUpgradabilityResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :upgrade_image, as: 'upgradeImage'
          property :upgrade_info, as: 'upgradeInfo'
          property :upgrade_version, as: 'upgradeVersion'
          property :upgradeable, as: 'upgradeable'
        end
      end
      
      class ContainerImage
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :repository, as: 'repository'
          property :tag, as: 'tag'
        end
      end
      
      class DataDisk
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :disk_encryption, as: 'diskEncryption'
          property :disk_size_gb, :numeric_string => true, as: 'diskSizeGb'
          property :disk_type, as: 'diskType'
          property :kms_key, as: 'kmsKey'
        end
      end
      
      class DiagnoseInstanceRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :diagnostic_config, as: 'diagnosticConfig', class: Google::Apis::NotebooksV2::DiagnosticConfig, decorator: Google::Apis::NotebooksV2::DiagnosticConfig::Representation
      
          property :timeout_minutes, as: 'timeoutMinutes'
        end
      end
      
      class DiagnosticConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :enable_copy_home_files_flag, as: 'enableCopyHomeFilesFlag'
          property :enable_packet_capture_flag, as: 'enablePacketCaptureFlag'
          property :enable_repair_flag, as: 'enableRepairFlag'
          property :gcs_bucket, as: 'gcsBucket'
          property :relative_path, as: 'relativePath'
        end
      end
      
      class Empty
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class Event
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          hash :details, as: 'details'
          property :report_time, as: 'reportTime'
          property :type, as: 'type'
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
      
      class GpuDriverConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :custom_gpu_driver_path, as: 'customGpuDriverPath'
          property :enable_gpu_driver, as: 'enableGpuDriver'
        end
      end
      
      class GceSetup
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :accelerator_configs, as: 'acceleratorConfigs', class: Google::Apis::NotebooksV2::AcceleratorConfig, decorator: Google::Apis::NotebooksV2::AcceleratorConfig::Representation
      
          property :boot_disk, as: 'bootDisk', class: Google::Apis::NotebooksV2::BootDisk, decorator: Google::Apis::NotebooksV2::BootDisk::Representation
      
          property :container_image, as: 'containerImage', class: Google::Apis::NotebooksV2::ContainerImage, decorator: Google::Apis::NotebooksV2::ContainerImage::Representation
      
          collection :data_disks, as: 'dataDisks', class: Google::Apis::NotebooksV2::DataDisk, decorator: Google::Apis::NotebooksV2::DataDisk::Representation
      
          property :disable_public_ip, as: 'disablePublicIp'
          property :enable_ip_forwarding, as: 'enableIpForwarding'
          property :gpu_driver_config, as: 'gpuDriverConfig', class: Google::Apis::NotebooksV2::GpuDriverConfig, decorator: Google::Apis::NotebooksV2::GpuDriverConfig::Representation
      
          property :machine_type, as: 'machineType'
          hash :metadata, as: 'metadata'
          collection :network_interfaces, as: 'networkInterfaces', class: Google::Apis::NotebooksV2::NetworkInterface, decorator: Google::Apis::NotebooksV2::NetworkInterface::Representation
      
          collection :service_accounts, as: 'serviceAccounts', class: Google::Apis::NotebooksV2::ServiceAccount, decorator: Google::Apis::NotebooksV2::ServiceAccount::Representation
      
          property :shielded_instance_config, as: 'shieldedInstanceConfig', class: Google::Apis::NotebooksV2::ShieldedInstanceConfig, decorator: Google::Apis::NotebooksV2::ShieldedInstanceConfig::Representation
      
          collection :tags, as: 'tags'
          property :vm_image, as: 'vmImage', class: Google::Apis::NotebooksV2::VmImage, decorator: Google::Apis::NotebooksV2::VmImage::Representation
      
        end
      end
      
      class Instance
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :creator, as: 'creator'
          property :disable_proxy_access, as: 'disableProxyAccess'
          property :gce_setup, as: 'gceSetup', class: Google::Apis::NotebooksV2::GceSetup, decorator: Google::Apis::NotebooksV2::GceSetup::Representation
      
          hash :health_info, as: 'healthInfo'
          property :health_state, as: 'healthState'
          property :id, as: 'id'
          collection :instance_owners, as: 'instanceOwners'
          hash :labels, as: 'labels'
          property :name, as: 'name'
          property :proxy_uri, as: 'proxyUri'
          property :state, as: 'state'
          property :update_time, as: 'updateTime'
          collection :upgrade_history, as: 'upgradeHistory', class: Google::Apis::NotebooksV2::UpgradeHistoryEntry, decorator: Google::Apis::NotebooksV2::UpgradeHistoryEntry::Representation
      
        end
      end
      
      class ListInstancesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :instances, as: 'instances', class: Google::Apis::NotebooksV2::Instance, decorator: Google::Apis::NotebooksV2::Instance::Representation
      
          property :next_page_token, as: 'nextPageToken'
          collection :unreachable, as: 'unreachable'
        end
      end
      
      class ListLocationsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :locations, as: 'locations', class: Google::Apis::NotebooksV2::Location, decorator: Google::Apis::NotebooksV2::Location::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class ListOperationsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :operations, as: 'operations', class: Google::Apis::NotebooksV2::Operation, decorator: Google::Apis::NotebooksV2::Operation::Representation
      
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
      
      class NetworkInterface
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :network, as: 'network'
          property :nic_type, as: 'nicType'
          property :subnet, as: 'subnet'
        end
      end
      
      class Operation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :done, as: 'done'
          property :error, as: 'error', class: Google::Apis::NotebooksV2::Status, decorator: Google::Apis::NotebooksV2::Status::Representation
      
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
          property :endpoint, as: 'endpoint'
          property :requested_cancellation, as: 'requestedCancellation'
          property :status_message, as: 'statusMessage'
          property :target, as: 'target'
          property :verb, as: 'verb'
        end
      end
      
      class Policy
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :bindings, as: 'bindings', class: Google::Apis::NotebooksV2::Binding, decorator: Google::Apis::NotebooksV2::Binding::Representation
      
          property :etag, :base64 => true, as: 'etag'
          property :version, as: 'version'
        end
      end
      
      class ReportInstanceInfoSystemRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :event, as: 'event', class: Google::Apis::NotebooksV2::Event, decorator: Google::Apis::NotebooksV2::Event::Representation
      
          property :vm_id, as: 'vmId'
        end
      end
      
      class ResetInstanceRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class RollbackInstanceRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :revision_id, as: 'revisionId'
          property :target_snapshot, as: 'targetSnapshot'
        end
      end
      
      class ServiceAccount
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :email, as: 'email'
          collection :scopes, as: 'scopes'
        end
      end
      
      class SetIamPolicyRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :policy, as: 'policy', class: Google::Apis::NotebooksV2::Policy, decorator: Google::Apis::NotebooksV2::Policy::Representation
      
        end
      end
      
      class ShieldedInstanceConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :enable_integrity_monitoring, as: 'enableIntegrityMonitoring'
          property :enable_secure_boot, as: 'enableSecureBoot'
          property :enable_vtpm, as: 'enableVtpm'
        end
      end
      
      class StartInstanceRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
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
      
      class StopInstanceRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
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
      
      class UpgradeHistoryEntry
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :action, as: 'action'
          property :container_image, as: 'containerImage'
          property :create_time, as: 'createTime'
          property :framework, as: 'framework'
          property :snapshot, as: 'snapshot'
          property :state, as: 'state'
          property :target_version, as: 'targetVersion'
          property :version, as: 'version'
          property :vm_image, as: 'vmImage'
        end
      end
      
      class UpgradeInstanceRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class UpgradeInstanceSystemRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :vm_id, as: 'vmId'
        end
      end
      
      class VmImage
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :family, as: 'family'
          property :name, as: 'name'
          property :project, as: 'project'
        end
      end
    end
  end
end
