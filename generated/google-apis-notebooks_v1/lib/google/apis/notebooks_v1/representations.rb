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
    module NotebooksV1
      
      class AcceleratorConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Binding
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class BootImage
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CancelOperationRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ContainerImage
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DataprocParameters
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DiagnoseInstanceRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DiagnoseRuntimeRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DiagnosticConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Disk
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
      
      class Environment
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Event
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Execution
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ExecutionTemplate
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Expr
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GetInstanceHealthResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GuestOsFeature
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Instance
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class InstanceConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class IsInstanceUpgradeableResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListEnvironmentsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListExecutionsResponse
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
      
      class ListRuntimesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListSchedulesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class LocalDisk
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class LocalDiskInitializeParams
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
      
      class Policy
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class RefreshRuntimeTokenInternalRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class RefreshRuntimeTokenInternalResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class RegisterInstanceRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ReportInstanceEventRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ReportInstanceInfoRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ReportRuntimeEventRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ReservationAffinity
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ResetInstanceRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ResetRuntimeRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class RollbackInstanceRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Runtime
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class RuntimeAcceleratorConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class RuntimeAccessConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class RuntimeGuestOsFeature
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class RuntimeMetrics
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class RuntimeShieldedInstanceConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class RuntimeSoftwareConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Schedule
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SchedulerAcceleratorConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SetIamPolicyRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SetInstanceAcceleratorRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SetInstanceLabelsRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SetInstanceMachineTypeRequest
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
      
      class StartRuntimeRequest
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
      
      class StopRuntimeRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SwitchRuntimeRequest
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
      
      class TriggerScheduleRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class UpdateInstanceConfigRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class UpdateInstanceMetadataItemsRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class UpdateInstanceMetadataItemsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class UpdateShieldedInstanceConfigRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class UpgradeHistoryEntry
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class UpgradeInstanceInternalRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class UpgradeInstanceRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class UpgradeRuntimeRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class VertexAiParameters
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class VirtualMachine
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class VirtualMachineConfig
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
          property :condition, as: 'condition', class: Google::Apis::NotebooksV1::Expr, decorator: Google::Apis::NotebooksV1::Expr::Representation
      
          collection :members, as: 'members'
          property :role, as: 'role'
        end
      end
      
      class BootImage
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class CancelOperationRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class ContainerImage
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :repository, as: 'repository'
          property :tag, as: 'tag'
        end
      end
      
      class DataprocParameters
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :cluster, as: 'cluster'
        end
      end
      
      class DiagnoseInstanceRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :diagnostic_config, as: 'diagnosticConfig', class: Google::Apis::NotebooksV1::DiagnosticConfig, decorator: Google::Apis::NotebooksV1::DiagnosticConfig::Representation
      
        end
      end
      
      class DiagnoseRuntimeRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :diagnostic_config, as: 'diagnosticConfig', class: Google::Apis::NotebooksV1::DiagnosticConfig, decorator: Google::Apis::NotebooksV1::DiagnosticConfig::Representation
      
        end
      end
      
      class DiagnosticConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :copy_home_files_flag_enabled, as: 'copyHomeFilesFlagEnabled'
          property :gcs_bucket, as: 'gcsBucket'
          property :packet_capture_flag_enabled, as: 'packetCaptureFlagEnabled'
          property :relative_path, as: 'relativePath'
          property :repair_flag_enabled, as: 'repairFlagEnabled'
        end
      end
      
      class Disk
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :auto_delete, as: 'autoDelete'
          property :boot, as: 'boot'
          property :device_name, as: 'deviceName'
          property :disk_size_gb, :numeric_string => true, as: 'diskSizeGb'
          collection :guest_os_features, as: 'guestOsFeatures', class: Google::Apis::NotebooksV1::GuestOsFeature, decorator: Google::Apis::NotebooksV1::GuestOsFeature::Representation
      
          property :index, :numeric_string => true, as: 'index'
          property :interface, as: 'interface'
          property :kind, as: 'kind'
          collection :licenses, as: 'licenses'
          property :mode, as: 'mode'
          property :source, as: 'source'
          property :type, as: 'type'
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
          property :kms_key, as: 'kmsKey'
        end
      end
      
      class Environment
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :container_image, as: 'containerImage', class: Google::Apis::NotebooksV1::ContainerImage, decorator: Google::Apis::NotebooksV1::ContainerImage::Representation
      
          property :create_time, as: 'createTime'
          property :description, as: 'description'
          property :display_name, as: 'displayName'
          property :name, as: 'name'
          property :post_startup_script, as: 'postStartupScript'
          property :vm_image, as: 'vmImage', class: Google::Apis::NotebooksV1::VmImage, decorator: Google::Apis::NotebooksV1::VmImage::Representation
      
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
      
      class Execution
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :description, as: 'description'
          property :display_name, as: 'displayName'
          property :execution_template, as: 'executionTemplate', class: Google::Apis::NotebooksV1::ExecutionTemplate, decorator: Google::Apis::NotebooksV1::ExecutionTemplate::Representation
      
          property :job_uri, as: 'jobUri'
          property :name, as: 'name'
          property :output_notebook_file, as: 'outputNotebookFile'
          property :state, as: 'state'
          property :update_time, as: 'updateTime'
        end
      end
      
      class ExecutionTemplate
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :accelerator_config, as: 'acceleratorConfig', class: Google::Apis::NotebooksV1::SchedulerAcceleratorConfig, decorator: Google::Apis::NotebooksV1::SchedulerAcceleratorConfig::Representation
      
          property :container_image_uri, as: 'containerImageUri'
          property :dataproc_parameters, as: 'dataprocParameters', class: Google::Apis::NotebooksV1::DataprocParameters, decorator: Google::Apis::NotebooksV1::DataprocParameters::Representation
      
          property :input_notebook_file, as: 'inputNotebookFile'
          property :job_type, as: 'jobType'
          property :kernel_spec, as: 'kernelSpec'
          hash :labels, as: 'labels'
          property :master_type, as: 'masterType'
          property :output_notebook_folder, as: 'outputNotebookFolder'
          property :parameters, as: 'parameters'
          property :params_yaml_file, as: 'paramsYamlFile'
          property :scale_tier, as: 'scaleTier'
          property :service_account, as: 'serviceAccount'
          property :tensorboard, as: 'tensorboard'
          property :vertex_ai_parameters, as: 'vertexAiParameters', class: Google::Apis::NotebooksV1::VertexAiParameters, decorator: Google::Apis::NotebooksV1::VertexAiParameters::Representation
      
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
      
      class GetInstanceHealthResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          hash :health_info, as: 'healthInfo'
          property :health_state, as: 'healthState'
        end
      end
      
      class GuestOsFeature
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :type, as: 'type'
        end
      end
      
      class Instance
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :accelerator_config, as: 'acceleratorConfig', class: Google::Apis::NotebooksV1::AcceleratorConfig, decorator: Google::Apis::NotebooksV1::AcceleratorConfig::Representation
      
          property :boot_disk_size_gb, :numeric_string => true, as: 'bootDiskSizeGb'
          property :boot_disk_type, as: 'bootDiskType'
          property :can_ip_forward, as: 'canIpForward'
          property :container_image, as: 'containerImage', class: Google::Apis::NotebooksV1::ContainerImage, decorator: Google::Apis::NotebooksV1::ContainerImage::Representation
      
          property :create_time, as: 'createTime'
          property :creator, as: 'creator'
          property :custom_gpu_driver_path, as: 'customGpuDriverPath'
          property :data_disk_size_gb, :numeric_string => true, as: 'dataDiskSizeGb'
          property :data_disk_type, as: 'dataDiskType'
          property :disk_encryption, as: 'diskEncryption'
          collection :disks, as: 'disks', class: Google::Apis::NotebooksV1::Disk, decorator: Google::Apis::NotebooksV1::Disk::Representation
      
          property :install_gpu_driver, as: 'installGpuDriver'
          collection :instance_owners, as: 'instanceOwners'
          property :kms_key, as: 'kmsKey'
          hash :labels, as: 'labels'
          property :machine_type, as: 'machineType'
          hash :metadata, as: 'metadata'
          property :name, as: 'name'
          property :network, as: 'network'
          property :nic_type, as: 'nicType'
          property :no_proxy_access, as: 'noProxyAccess'
          property :no_public_ip, as: 'noPublicIp'
          property :no_remove_data_disk, as: 'noRemoveDataDisk'
          property :post_startup_script, as: 'postStartupScript'
          property :proxy_uri, as: 'proxyUri'
          property :reservation_affinity, as: 'reservationAffinity', class: Google::Apis::NotebooksV1::ReservationAffinity, decorator: Google::Apis::NotebooksV1::ReservationAffinity::Representation
      
          property :service_account, as: 'serviceAccount'
          collection :service_account_scopes, as: 'serviceAccountScopes'
          property :shielded_instance_config, as: 'shieldedInstanceConfig', class: Google::Apis::NotebooksV1::ShieldedInstanceConfig, decorator: Google::Apis::NotebooksV1::ShieldedInstanceConfig::Representation
      
          property :state, as: 'state'
          property :subnet, as: 'subnet'
          collection :tags, as: 'tags'
          property :update_time, as: 'updateTime'
          collection :upgrade_history, as: 'upgradeHistory', class: Google::Apis::NotebooksV1::UpgradeHistoryEntry, decorator: Google::Apis::NotebooksV1::UpgradeHistoryEntry::Representation
      
          property :vm_image, as: 'vmImage', class: Google::Apis::NotebooksV1::VmImage, decorator: Google::Apis::NotebooksV1::VmImage::Representation
      
        end
      end
      
      class InstanceConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :enable_health_monitoring, as: 'enableHealthMonitoring'
          property :notebook_upgrade_schedule, as: 'notebookUpgradeSchedule'
        end
      end
      
      class IsInstanceUpgradeableResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :upgrade_image, as: 'upgradeImage'
          property :upgrade_info, as: 'upgradeInfo'
          property :upgrade_version, as: 'upgradeVersion'
          property :upgradeable, as: 'upgradeable'
        end
      end
      
      class ListEnvironmentsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :environments, as: 'environments', class: Google::Apis::NotebooksV1::Environment, decorator: Google::Apis::NotebooksV1::Environment::Representation
      
          property :next_page_token, as: 'nextPageToken'
          collection :unreachable, as: 'unreachable'
        end
      end
      
      class ListExecutionsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :executions, as: 'executions', class: Google::Apis::NotebooksV1::Execution, decorator: Google::Apis::NotebooksV1::Execution::Representation
      
          property :next_page_token, as: 'nextPageToken'
          collection :unreachable, as: 'unreachable'
        end
      end
      
      class ListInstancesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :instances, as: 'instances', class: Google::Apis::NotebooksV1::Instance, decorator: Google::Apis::NotebooksV1::Instance::Representation
      
          property :next_page_token, as: 'nextPageToken'
          collection :unreachable, as: 'unreachable'
        end
      end
      
      class ListLocationsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :locations, as: 'locations', class: Google::Apis::NotebooksV1::Location, decorator: Google::Apis::NotebooksV1::Location::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class ListOperationsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :operations, as: 'operations', class: Google::Apis::NotebooksV1::Operation, decorator: Google::Apis::NotebooksV1::Operation::Representation
      
        end
      end
      
      class ListRuntimesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :runtimes, as: 'runtimes', class: Google::Apis::NotebooksV1::Runtime, decorator: Google::Apis::NotebooksV1::Runtime::Representation
      
          collection :unreachable, as: 'unreachable'
        end
      end
      
      class ListSchedulesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :schedules, as: 'schedules', class: Google::Apis::NotebooksV1::Schedule, decorator: Google::Apis::NotebooksV1::Schedule::Representation
      
          collection :unreachable, as: 'unreachable'
        end
      end
      
      class LocalDisk
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :auto_delete, as: 'autoDelete'
          property :boot, as: 'boot'
          property :device_name, as: 'deviceName'
          collection :guest_os_features, as: 'guestOsFeatures', class: Google::Apis::NotebooksV1::RuntimeGuestOsFeature, decorator: Google::Apis::NotebooksV1::RuntimeGuestOsFeature::Representation
      
          property :index, as: 'index'
          property :initialize_params, as: 'initializeParams', class: Google::Apis::NotebooksV1::LocalDiskInitializeParams, decorator: Google::Apis::NotebooksV1::LocalDiskInitializeParams::Representation
      
          property :interface, as: 'interface'
          property :kind, as: 'kind'
          collection :licenses, as: 'licenses'
          property :mode, as: 'mode'
          property :source, as: 'source'
          property :type, as: 'type'
        end
      end
      
      class LocalDiskInitializeParams
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :description, as: 'description'
          property :disk_name, as: 'diskName'
          property :disk_size_gb, :numeric_string => true, as: 'diskSizeGb'
          property :disk_type, as: 'diskType'
          hash :labels, as: 'labels'
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
          property :error, as: 'error', class: Google::Apis::NotebooksV1::Status, decorator: Google::Apis::NotebooksV1::Status::Representation
      
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
          collection :bindings, as: 'bindings', class: Google::Apis::NotebooksV1::Binding, decorator: Google::Apis::NotebooksV1::Binding::Representation
      
          property :etag, :base64 => true, as: 'etag'
          property :version, as: 'version'
        end
      end
      
      class RefreshRuntimeTokenInternalRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :vm_id, as: 'vmId'
        end
      end
      
      class RefreshRuntimeTokenInternalResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :access_token, as: 'accessToken'
          property :expire_time, as: 'expireTime'
        end
      end
      
      class RegisterInstanceRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :instance_id, as: 'instanceId'
        end
      end
      
      class ReportInstanceEventRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :event, as: 'event', class: Google::Apis::NotebooksV1::Event, decorator: Google::Apis::NotebooksV1::Event::Representation
      
          property :vm_id, as: 'vmId'
        end
      end
      
      class ReportInstanceInfoRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          hash :metadata, as: 'metadata'
          property :vm_id, as: 'vmId'
        end
      end
      
      class ReportRuntimeEventRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :event, as: 'event', class: Google::Apis::NotebooksV1::Event, decorator: Google::Apis::NotebooksV1::Event::Representation
      
          property :vm_id, as: 'vmId'
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
      
      class ResetInstanceRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class ResetRuntimeRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :request_id, as: 'requestId'
        end
      end
      
      class RollbackInstanceRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :target_snapshot, as: 'targetSnapshot'
        end
      end
      
      class Runtime
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :access_config, as: 'accessConfig', class: Google::Apis::NotebooksV1::RuntimeAccessConfig, decorator: Google::Apis::NotebooksV1::RuntimeAccessConfig::Representation
      
          property :create_time, as: 'createTime'
          property :health_state, as: 'healthState'
          hash :labels, as: 'labels'
          property :metrics, as: 'metrics', class: Google::Apis::NotebooksV1::RuntimeMetrics, decorator: Google::Apis::NotebooksV1::RuntimeMetrics::Representation
      
          property :name, as: 'name'
          property :software_config, as: 'softwareConfig', class: Google::Apis::NotebooksV1::RuntimeSoftwareConfig, decorator: Google::Apis::NotebooksV1::RuntimeSoftwareConfig::Representation
      
          property :state, as: 'state'
          property :update_time, as: 'updateTime'
          property :virtual_machine, as: 'virtualMachine', class: Google::Apis::NotebooksV1::VirtualMachine, decorator: Google::Apis::NotebooksV1::VirtualMachine::Representation
      
        end
      end
      
      class RuntimeAcceleratorConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :core_count, :numeric_string => true, as: 'coreCount'
          property :type, as: 'type'
        end
      end
      
      class RuntimeAccessConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :access_type, as: 'accessType'
          property :proxy_uri, as: 'proxyUri'
          property :runtime_owner, as: 'runtimeOwner'
        end
      end
      
      class RuntimeGuestOsFeature
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :type, as: 'type'
        end
      end
      
      class RuntimeMetrics
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          hash :system_metrics, as: 'systemMetrics'
        end
      end
      
      class RuntimeShieldedInstanceConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :enable_integrity_monitoring, as: 'enableIntegrityMonitoring'
          property :enable_secure_boot, as: 'enableSecureBoot'
          property :enable_vtpm, as: 'enableVtpm'
        end
      end
      
      class RuntimeSoftwareConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :custom_gpu_driver_path, as: 'customGpuDriverPath'
          property :disable_terminal, as: 'disableTerminal'
          property :enable_health_monitoring, as: 'enableHealthMonitoring'
          property :idle_shutdown, as: 'idleShutdown'
          property :idle_shutdown_timeout, as: 'idleShutdownTimeout'
          property :install_gpu_driver, as: 'installGpuDriver'
          collection :kernels, as: 'kernels', class: Google::Apis::NotebooksV1::ContainerImage, decorator: Google::Apis::NotebooksV1::ContainerImage::Representation
      
          property :mixer_disabled, as: 'mixerDisabled'
          property :notebook_upgrade_schedule, as: 'notebookUpgradeSchedule'
          property :post_startup_script, as: 'postStartupScript'
          property :post_startup_script_behavior, as: 'postStartupScriptBehavior'
          property :upgradeable, as: 'upgradeable'
          property :version, as: 'version'
        end
      end
      
      class Schedule
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :cron_schedule, as: 'cronSchedule'
          property :description, as: 'description'
          property :display_name, as: 'displayName'
          property :execution_template, as: 'executionTemplate', class: Google::Apis::NotebooksV1::ExecutionTemplate, decorator: Google::Apis::NotebooksV1::ExecutionTemplate::Representation
      
          property :name, as: 'name'
          collection :recent_executions, as: 'recentExecutions', class: Google::Apis::NotebooksV1::Execution, decorator: Google::Apis::NotebooksV1::Execution::Representation
      
          property :state, as: 'state'
          property :time_zone, as: 'timeZone'
          property :update_time, as: 'updateTime'
        end
      end
      
      class SchedulerAcceleratorConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :core_count, :numeric_string => true, as: 'coreCount'
          property :type, as: 'type'
        end
      end
      
      class SetIamPolicyRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :policy, as: 'policy', class: Google::Apis::NotebooksV1::Policy, decorator: Google::Apis::NotebooksV1::Policy::Representation
      
        end
      end
      
      class SetInstanceAcceleratorRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :core_count, :numeric_string => true, as: 'coreCount'
          property :type, as: 'type'
        end
      end
      
      class SetInstanceLabelsRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          hash :labels, as: 'labels'
        end
      end
      
      class SetInstanceMachineTypeRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :machine_type, as: 'machineType'
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
      
      class StartRuntimeRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :request_id, as: 'requestId'
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
      
      class StopRuntimeRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :request_id, as: 'requestId'
        end
      end
      
      class SwitchRuntimeRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :accelerator_config, as: 'acceleratorConfig', class: Google::Apis::NotebooksV1::RuntimeAcceleratorConfig, decorator: Google::Apis::NotebooksV1::RuntimeAcceleratorConfig::Representation
      
          property :machine_type, as: 'machineType'
          property :request_id, as: 'requestId'
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
      
      class TriggerScheduleRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class UpdateInstanceConfigRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :config, as: 'config', class: Google::Apis::NotebooksV1::InstanceConfig, decorator: Google::Apis::NotebooksV1::InstanceConfig::Representation
      
        end
      end
      
      class UpdateInstanceMetadataItemsRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          hash :items, as: 'items'
        end
      end
      
      class UpdateInstanceMetadataItemsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          hash :items, as: 'items'
        end
      end
      
      class UpdateShieldedInstanceConfigRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :shielded_instance_config, as: 'shieldedInstanceConfig', class: Google::Apis::NotebooksV1::ShieldedInstanceConfig, decorator: Google::Apis::NotebooksV1::ShieldedInstanceConfig::Representation
      
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
          property :target_image, as: 'targetImage'
          property :target_version, as: 'targetVersion'
          property :version, as: 'version'
          property :vm_image, as: 'vmImage'
        end
      end
      
      class UpgradeInstanceInternalRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :type, as: 'type'
          property :vm_id, as: 'vmId'
        end
      end
      
      class UpgradeInstanceRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :type, as: 'type'
        end
      end
      
      class UpgradeRuntimeRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :request_id, as: 'requestId'
        end
      end
      
      class VertexAiParameters
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          hash :env, as: 'env'
          property :network, as: 'network'
        end
      end
      
      class VirtualMachine
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :instance_id, as: 'instanceId'
          property :instance_name, as: 'instanceName'
          property :virtual_machine_config, as: 'virtualMachineConfig', class: Google::Apis::NotebooksV1::VirtualMachineConfig, decorator: Google::Apis::NotebooksV1::VirtualMachineConfig::Representation
      
        end
      end
      
      class VirtualMachineConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :accelerator_config, as: 'acceleratorConfig', class: Google::Apis::NotebooksV1::RuntimeAcceleratorConfig, decorator: Google::Apis::NotebooksV1::RuntimeAcceleratorConfig::Representation
      
          property :boot_image, as: 'bootImage', class: Google::Apis::NotebooksV1::BootImage, decorator: Google::Apis::NotebooksV1::BootImage::Representation
      
          collection :container_images, as: 'containerImages', class: Google::Apis::NotebooksV1::ContainerImage, decorator: Google::Apis::NotebooksV1::ContainerImage::Representation
      
          property :data_disk, as: 'dataDisk', class: Google::Apis::NotebooksV1::LocalDisk, decorator: Google::Apis::NotebooksV1::LocalDisk::Representation
      
          property :encryption_config, as: 'encryptionConfig', class: Google::Apis::NotebooksV1::EncryptionConfig, decorator: Google::Apis::NotebooksV1::EncryptionConfig::Representation
      
          hash :guest_attributes, as: 'guestAttributes'
          property :internal_ip_only, as: 'internalIpOnly'
          hash :labels, as: 'labels'
          property :machine_type, as: 'machineType'
          hash :metadata, as: 'metadata'
          property :network, as: 'network'
          property :nic_type, as: 'nicType'
          property :reserved_ip_range, as: 'reservedIpRange'
          property :shielded_instance_config, as: 'shieldedInstanceConfig', class: Google::Apis::NotebooksV1::RuntimeShieldedInstanceConfig, decorator: Google::Apis::NotebooksV1::RuntimeShieldedInstanceConfig::Representation
      
          property :subnet, as: 'subnet'
          collection :tags, as: 'tags'
          property :zone, as: 'zone'
        end
      end
      
      class VmImage
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :image_family, as: 'imageFamily'
          property :image_name, as: 'imageName'
          property :project, as: 'project'
        end
      end
    end
  end
end
