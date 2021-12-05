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
    module VmmigrationV1
      
      # Request message for 'AddGroupMigration' request.
      class AddGroupMigrationRequest
        include Google::Apis::Core::Hashable
      
        # The full path name of the MigratingVm to add.
        # Corresponds to the JSON property `migratingVm`
        # @return [String]
        attr_accessor :migrating_vm
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @migrating_vm = args[:migrating_vm] if args.key?(:migrating_vm)
        end
      end
      
      # Response message for 'AddGroupMigration' request.
      class AddGroupMigrationResponse
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # AppliedLicense holds the license data returned by adaptation module report.
      class AppliedLicense
        include Google::Apis::Core::Hashable
      
        # The OS license returned from the adaptation module's report.
        # Corresponds to the JSON property `osLicense`
        # @return [String]
        attr_accessor :os_license
      
        # The license type that was used in OS adaptation.
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @os_license = args[:os_license] if args.key?(:os_license)
          @type = args[:type] if args.key?(:type)
        end
      end
      
      # Request message for 'CancelCloneJob' request.
      class CancelCloneJobRequest
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # Response message for 'CancelCloneJob' request.
      class CancelCloneJobResponse
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # Request message for 'CancelCutoverJob' request.
      class CancelCutoverJobRequest
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # Response message for 'CancelCutoverJob' request.
      class CancelCutoverJobResponse
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # The request message for Operations.CancelOperation.
      class CancelOperationRequest
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # CloneJob describes the process of creating a clone of a MigratingVM to the
      # requested target based on the latest successful uploaded snapshots. While the
      # migration cycles of a MigratingVm take place, it is possible to verify the
      # uploaded VM can be started in the cloud, by creating a clone. The clone can be
      # created without any downtime, and it is created using the latest snapshots
      # which are already in the cloud. The cloneJob is only responsible for its work,
      # not its products, which means once it is finished, it will never touch the
      # instance it created. It will only delete it in case of the CloneJob being
      # cancelled or upon failure to clone.
      class CloneJob
        include Google::Apis::Core::Hashable
      
        # ComputeEngineTargetDetails is a collection of details for creating a VM in a
        # target Compute Engine project.
        # Corresponds to the JSON property `computeEngineTargetDetails`
        # @return [Google::Apis::VmmigrationV1::ComputeEngineTargetDetails]
        attr_accessor :compute_engine_target_details
      
        # Output only. The time the clone job was created (as an API call, not when it
        # was actually created in the target).
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # The `Status` type defines a logical error model that is suitable for different
        # programming environments, including REST APIs and RPC APIs. It is used by [
        # gRPC](https://github.com/grpc). Each `Status` message contains three pieces of
        # data: error code, error message, and error details. You can find out more
        # about this error model and how to work with it in the [API Design Guide](https:
        # //cloud.google.com/apis/design/errors).
        # Corresponds to the JSON property `error`
        # @return [Google::Apis::VmmigrationV1::Status]
        attr_accessor :error
      
        # The name of the clone.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Output only. State of the clone job.
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        # Output only. The time the state was last updated.
        # Corresponds to the JSON property `stateTime`
        # @return [String]
        attr_accessor :state_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @compute_engine_target_details = args[:compute_engine_target_details] if args.key?(:compute_engine_target_details)
          @create_time = args[:create_time] if args.key?(:create_time)
          @error = args[:error] if args.key?(:error)
          @name = args[:name] if args.key?(:name)
          @state = args[:state] if args.key?(:state)
          @state_time = args[:state_time] if args.key?(:state_time)
        end
      end
      
      # ComputeEngineTargetDefaults is a collection of details for creating a VM in a
      # target Compute Engine project.
      class ComputeEngineTargetDefaults
        include Google::Apis::Core::Hashable
      
        # AppliedLicense holds the license data returned by adaptation module report.
        # Corresponds to the JSON property `appliedLicense`
        # @return [Google::Apis::VmmigrationV1::AppliedLicense]
        attr_accessor :applied_license
      
        # Output only. The VM Boot Option, as set in the source vm.
        # Corresponds to the JSON property `bootOption`
        # @return [String]
        attr_accessor :boot_option
      
        # Scheduling information for VM on maintenance/restart behaviour and node
        # allocation in sole tenant nodes.
        # Corresponds to the JSON property `computeScheduling`
        # @return [Google::Apis::VmmigrationV1::ComputeScheduling]
        attr_accessor :compute_scheduling
      
        # The disk type to use in the VM.
        # Corresponds to the JSON property `diskType`
        # @return [String]
        attr_accessor :disk_type
      
        # A map of labels to associate with the VM.
        # Corresponds to the JSON property `labels`
        # @return [Hash<String,String>]
        attr_accessor :labels
      
        # The license type to use in OS adaptation.
        # Corresponds to the JSON property `licenseType`
        # @return [String]
        attr_accessor :license_type
      
        # The machine type to create the VM with.
        # Corresponds to the JSON property `machineType`
        # @return [String]
        attr_accessor :machine_type
      
        # The machine type series to create the VM with.
        # Corresponds to the JSON property `machineTypeSeries`
        # @return [String]
        attr_accessor :machine_type_series
      
        # The metadata key/value pairs to assign to the VM.
        # Corresponds to the JSON property `metadata`
        # @return [Hash<String,String>]
        attr_accessor :metadata
      
        # List of NICs connected to this VM.
        # Corresponds to the JSON property `networkInterfaces`
        # @return [Array<Google::Apis::VmmigrationV1::NetworkInterface>]
        attr_accessor :network_interfaces
      
        # A map of network tags to associate with the VM.
        # Corresponds to the JSON property `networkTags`
        # @return [Array<String>]
        attr_accessor :network_tags
      
        # Defines whether the instance has Secure Boot enabled. This can be set to true
        # only if the vm boot option is EFI.
        # Corresponds to the JSON property `secureBoot`
        # @return [Boolean]
        attr_accessor :secure_boot
        alias_method :secure_boot?, :secure_boot
      
        # The service account to associate the VM with.
        # Corresponds to the JSON property `serviceAccount`
        # @return [String]
        attr_accessor :service_account
      
        # The full path of the resource of type TargetProject which represents the
        # Compute Engine project in which to create this VM.
        # Corresponds to the JSON property `targetProject`
        # @return [String]
        attr_accessor :target_project
      
        # The name of the VM to create.
        # Corresponds to the JSON property `vmName`
        # @return [String]
        attr_accessor :vm_name
      
        # The zone in which to create the VM.
        # Corresponds to the JSON property `zone`
        # @return [String]
        attr_accessor :zone
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @applied_license = args[:applied_license] if args.key?(:applied_license)
          @boot_option = args[:boot_option] if args.key?(:boot_option)
          @compute_scheduling = args[:compute_scheduling] if args.key?(:compute_scheduling)
          @disk_type = args[:disk_type] if args.key?(:disk_type)
          @labels = args[:labels] if args.key?(:labels)
          @license_type = args[:license_type] if args.key?(:license_type)
          @machine_type = args[:machine_type] if args.key?(:machine_type)
          @machine_type_series = args[:machine_type_series] if args.key?(:machine_type_series)
          @metadata = args[:metadata] if args.key?(:metadata)
          @network_interfaces = args[:network_interfaces] if args.key?(:network_interfaces)
          @network_tags = args[:network_tags] if args.key?(:network_tags)
          @secure_boot = args[:secure_boot] if args.key?(:secure_boot)
          @service_account = args[:service_account] if args.key?(:service_account)
          @target_project = args[:target_project] if args.key?(:target_project)
          @vm_name = args[:vm_name] if args.key?(:vm_name)
          @zone = args[:zone] if args.key?(:zone)
        end
      end
      
      # ComputeEngineTargetDetails is a collection of details for creating a VM in a
      # target Compute Engine project.
      class ComputeEngineTargetDetails
        include Google::Apis::Core::Hashable
      
        # AppliedLicense holds the license data returned by adaptation module report.
        # Corresponds to the JSON property `appliedLicense`
        # @return [Google::Apis::VmmigrationV1::AppliedLicense]
        attr_accessor :applied_license
      
        # The VM Boot Option, as set in the source vm.
        # Corresponds to the JSON property `bootOption`
        # @return [String]
        attr_accessor :boot_option
      
        # Scheduling information for VM on maintenance/restart behaviour and node
        # allocation in sole tenant nodes.
        # Corresponds to the JSON property `computeScheduling`
        # @return [Google::Apis::VmmigrationV1::ComputeScheduling]
        attr_accessor :compute_scheduling
      
        # The disk type to use in the VM.
        # Corresponds to the JSON property `diskType`
        # @return [String]
        attr_accessor :disk_type
      
        # A map of labels to associate with the VM.
        # Corresponds to the JSON property `labels`
        # @return [Hash<String,String>]
        attr_accessor :labels
      
        # The license type to use in OS adaptation.
        # Corresponds to the JSON property `licenseType`
        # @return [String]
        attr_accessor :license_type
      
        # The machine type to create the VM with.
        # Corresponds to the JSON property `machineType`
        # @return [String]
        attr_accessor :machine_type
      
        # The machine type series to create the VM with.
        # Corresponds to the JSON property `machineTypeSeries`
        # @return [String]
        attr_accessor :machine_type_series
      
        # The metadata key/value pairs to assign to the VM.
        # Corresponds to the JSON property `metadata`
        # @return [Hash<String,String>]
        attr_accessor :metadata
      
        # List of NICs connected to this VM.
        # Corresponds to the JSON property `networkInterfaces`
        # @return [Array<Google::Apis::VmmigrationV1::NetworkInterface>]
        attr_accessor :network_interfaces
      
        # A map of network tags to associate with the VM.
        # Corresponds to the JSON property `networkTags`
        # @return [Array<String>]
        attr_accessor :network_tags
      
        # The GCP target project ID or project name.
        # Corresponds to the JSON property `project`
        # @return [String]
        attr_accessor :project
      
        # Defines whether the instance has Secure Boot enabled. This can be set to true
        # only if the vm boot option is EFI.
        # Corresponds to the JSON property `secureBoot`
        # @return [Boolean]
        attr_accessor :secure_boot
        alias_method :secure_boot?, :secure_boot
      
        # The service account to associate the VM with.
        # Corresponds to the JSON property `serviceAccount`
        # @return [String]
        attr_accessor :service_account
      
        # The name of the VM to create.
        # Corresponds to the JSON property `vmName`
        # @return [String]
        attr_accessor :vm_name
      
        # The zone in which to create the VM.
        # Corresponds to the JSON property `zone`
        # @return [String]
        attr_accessor :zone
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @applied_license = args[:applied_license] if args.key?(:applied_license)
          @boot_option = args[:boot_option] if args.key?(:boot_option)
          @compute_scheduling = args[:compute_scheduling] if args.key?(:compute_scheduling)
          @disk_type = args[:disk_type] if args.key?(:disk_type)
          @labels = args[:labels] if args.key?(:labels)
          @license_type = args[:license_type] if args.key?(:license_type)
          @machine_type = args[:machine_type] if args.key?(:machine_type)
          @machine_type_series = args[:machine_type_series] if args.key?(:machine_type_series)
          @metadata = args[:metadata] if args.key?(:metadata)
          @network_interfaces = args[:network_interfaces] if args.key?(:network_interfaces)
          @network_tags = args[:network_tags] if args.key?(:network_tags)
          @project = args[:project] if args.key?(:project)
          @secure_boot = args[:secure_boot] if args.key?(:secure_boot)
          @service_account = args[:service_account] if args.key?(:service_account)
          @vm_name = args[:vm_name] if args.key?(:vm_name)
          @zone = args[:zone] if args.key?(:zone)
        end
      end
      
      # Scheduling information for VM on maintenance/restart behaviour and node
      # allocation in sole tenant nodes.
      class ComputeScheduling
        include Google::Apis::Core::Hashable
      
        # The minimum number of virtual CPUs this instance will consume when running on
        # a sole-tenant node. Ignored if no node_affinites are configured.
        # Corresponds to the JSON property `minNodeCpus`
        # @return [Fixnum]
        attr_accessor :min_node_cpus
      
        # A set of node affinity and anti-affinity configurations for sole tenant nodes.
        # Corresponds to the JSON property `nodeAffinities`
        # @return [Array<Google::Apis::VmmigrationV1::SchedulingNodeAffinity>]
        attr_accessor :node_affinities
      
        # How the instance should behave when the host machine undergoes maintenance
        # that may temporarily impact instance performance.
        # Corresponds to the JSON property `onHostMaintenance`
        # @return [String]
        attr_accessor :on_host_maintenance
      
        # Whether the Instance should be automatically restarted whenever it is
        # terminated by Compute Engine (not terminated by user). This configuration is
        # identical to `automaticRestart` field in Compute Engine create instance under
        # scheduling. It was changed to an enum (instead of a boolean) to match the
        # default value in Compute Engine which is automatic restart.
        # Corresponds to the JSON property `restartType`
        # @return [String]
        attr_accessor :restart_type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @min_node_cpus = args[:min_node_cpus] if args.key?(:min_node_cpus)
          @node_affinities = args[:node_affinities] if args.key?(:node_affinities)
          @on_host_maintenance = args[:on_host_maintenance] if args.key?(:on_host_maintenance)
          @restart_type = args[:restart_type] if args.key?(:restart_type)
        end
      end
      
      # CutoverJob message describes a cutover of a migrating VM. The CutoverJob is
      # the operation of shutting down the VM, creating a snapshot and clonning the VM
      # using the replicated snapshot.
      class CutoverJob
        include Google::Apis::Core::Hashable
      
        # ComputeEngineTargetDetails is a collection of details for creating a VM in a
        # target Compute Engine project.
        # Corresponds to the JSON property `computeEngineTargetDetails`
        # @return [Google::Apis::VmmigrationV1::ComputeEngineTargetDetails]
        attr_accessor :compute_engine_target_details
      
        # Output only. The time the cutover job was created (as an API call, not when it
        # was actually created in the target).
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # The `Status` type defines a logical error model that is suitable for different
        # programming environments, including REST APIs and RPC APIs. It is used by [
        # gRPC](https://github.com/grpc). Each `Status` message contains three pieces of
        # data: error code, error message, and error details. You can find out more
        # about this error model and how to work with it in the [API Design Guide](https:
        # //cloud.google.com/apis/design/errors).
        # Corresponds to the JSON property `error`
        # @return [Google::Apis::VmmigrationV1::Status]
        attr_accessor :error
      
        # Output only. The name of the cutover job.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Output only. The current progress in percentage of the cutover job.
        # Corresponds to the JSON property `progressPercent`
        # @return [Fixnum]
        attr_accessor :progress_percent
      
        # Output only. State of the cutover job.
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        # Output only. A message providing possible extra details about the current
        # state.
        # Corresponds to the JSON property `stateMessage`
        # @return [String]
        attr_accessor :state_message
      
        # Output only. The time the state was last updated.
        # Corresponds to the JSON property `stateTime`
        # @return [String]
        attr_accessor :state_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @compute_engine_target_details = args[:compute_engine_target_details] if args.key?(:compute_engine_target_details)
          @create_time = args[:create_time] if args.key?(:create_time)
          @error = args[:error] if args.key?(:error)
          @name = args[:name] if args.key?(:name)
          @progress_percent = args[:progress_percent] if args.key?(:progress_percent)
          @state = args[:state] if args.key?(:state)
          @state_message = args[:state_message] if args.key?(:state_message)
          @state_time = args[:state_time] if args.key?(:state_time)
        end
      end
      
      # DatacenterConnector message describes a connector between the Source and GCP,
      # which is installed on a vmware datacenter (an OVA vm installed by the user) to
      # connect the Datacenter to GCP and support vm migration data transfer.
      class DatacenterConnector
        include Google::Apis::Core::Hashable
      
        # Output only. The communication channel between the datacenter connector and
        # GCP.
        # Corresponds to the JSON property `bucket`
        # @return [String]
        attr_accessor :bucket
      
        # Output only. The time the connector was created (as an API call, not when it
        # was actually installed).
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # The `Status` type defines a logical error model that is suitable for different
        # programming environments, including REST APIs and RPC APIs. It is used by [
        # gRPC](https://github.com/grpc). Each `Status` message contains three pieces of
        # data: error code, error message, and error details. You can find out more
        # about this error model and how to work with it in the [API Design Guide](https:
        # //cloud.google.com/apis/design/errors).
        # Corresponds to the JSON property `error`
        # @return [Google::Apis::VmmigrationV1::Status]
        attr_accessor :error
      
        # Output only. The connector's name.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Immutable. A unique key for this connector. This key is internal to the OVA
        # connector and is supplied with its creation during the registration process
        # and can not be modified.
        # Corresponds to the JSON property `registrationId`
        # @return [String]
        attr_accessor :registration_id
      
        # The service account to use in the connector when communicating with the cloud.
        # Corresponds to the JSON property `serviceAccount`
        # @return [String]
        attr_accessor :service_account
      
        # Output only. State of the DatacenterConnector, as determined by the health
        # checks.
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        # Output only. The time the state was last set.
        # Corresponds to the JSON property `stateTime`
        # @return [String]
        attr_accessor :state_time
      
        # Output only. The last time the connector was updated with an API call.
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        # The version running in the DatacenterConnector. This is supplied by the OVA
        # connector during the registration process and can not be modified.
        # Corresponds to the JSON property `version`
        # @return [String]
        attr_accessor :version
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @bucket = args[:bucket] if args.key?(:bucket)
          @create_time = args[:create_time] if args.key?(:create_time)
          @error = args[:error] if args.key?(:error)
          @name = args[:name] if args.key?(:name)
          @registration_id = args[:registration_id] if args.key?(:registration_id)
          @service_account = args[:service_account] if args.key?(:service_account)
          @state = args[:state] if args.key?(:state)
          @state_time = args[:state_time] if args.key?(:state_time)
          @update_time = args[:update_time] if args.key?(:update_time)
          @version = args[:version] if args.key?(:version)
        end
      end
      
      # A generic empty message that you can re-use to avoid defining duplicated empty
      # messages in your APIs. A typical example is to use it as the request or the
      # response type of an API method. For instance: service Foo ` rpc Bar(google.
      # protobuf.Empty) returns (google.protobuf.Empty); ` The JSON representation for
      # `Empty` is empty JSON object ````.
      class Empty
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # Response message for fetchInventory.
      class FetchInventoryResponse
        include Google::Apis::Core::Hashable
      
        # Output only. The timestamp when the source was last queried (if the result is
        # from the cache).
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        # VmwareVmsDetails describes VMs in vCenter.
        # Corresponds to the JSON property `vmwareVms`
        # @return [Google::Apis::VmmigrationV1::VmwareVmsDetails]
        attr_accessor :vmware_vms
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @update_time = args[:update_time] if args.key?(:update_time)
          @vmware_vms = args[:vmware_vms] if args.key?(:vmware_vms)
        end
      end
      
      # Request message for 'FinalizeMigration' request.
      class FinalizeMigrationRequest
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # Response message for 'FinalizeMigration' request.
      class FinalizeMigrationResponse
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # Describes message for 'Group' resource. The Group is a collections of several
      # MigratingVms.
      class Group
        include Google::Apis::Core::Hashable
      
        # Output only. The create time timestamp.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # User-provided description of the group.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # Display name is a user defined name for this group which can be updated.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # The Group name.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Output only. The update time timestamp.
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @create_time = args[:create_time] if args.key?(:create_time)
          @description = args[:description] if args.key?(:description)
          @display_name = args[:display_name] if args.key?(:display_name)
          @name = args[:name] if args.key?(:name)
          @update_time = args[:update_time] if args.key?(:update_time)
        end
      end
      
      # Describes a URL link.
      class Link
        include Google::Apis::Core::Hashable
      
        # Describes what the link offers.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # The URL of the link.
        # Corresponds to the JSON property `url`
        # @return [String]
        attr_accessor :url
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @description = args[:description] if args.key?(:description)
          @url = args[:url] if args.key?(:url)
        end
      end
      
      # Response message for 'ListCloneJobs' request.
      class ListCloneJobsResponse
        include Google::Apis::Core::Hashable
      
        # Output only. The list of clone jobs response.
        # Corresponds to the JSON property `cloneJobs`
        # @return [Array<Google::Apis::VmmigrationV1::CloneJob>]
        attr_accessor :clone_jobs
      
        # Output only. A token, which can be sent as `page_token` to retrieve the next
        # page. If this field is omitted, there are no subsequent pages.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # Output only. Locations that could not be reached.
        # Corresponds to the JSON property `unreachable`
        # @return [Array<String>]
        attr_accessor :unreachable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @clone_jobs = args[:clone_jobs] if args.key?(:clone_jobs)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @unreachable = args[:unreachable] if args.key?(:unreachable)
        end
      end
      
      # Response message for 'ListCutoverJobs' request.
      class ListCutoverJobsResponse
        include Google::Apis::Core::Hashable
      
        # Output only. The list of cutover jobs response.
        # Corresponds to the JSON property `cutoverJobs`
        # @return [Array<Google::Apis::VmmigrationV1::CutoverJob>]
        attr_accessor :cutover_jobs
      
        # Output only. A token, which can be sent as `page_token` to retrieve the next
        # page. If this field is omitted, there are no subsequent pages.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # Output only. Locations that could not be reached.
        # Corresponds to the JSON property `unreachable`
        # @return [Array<String>]
        attr_accessor :unreachable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @cutover_jobs = args[:cutover_jobs] if args.key?(:cutover_jobs)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @unreachable = args[:unreachable] if args.key?(:unreachable)
        end
      end
      
      # Response message for 'ListDatacenterConnectors' request.
      class ListDatacenterConnectorsResponse
        include Google::Apis::Core::Hashable
      
        # Output only. The list of sources response.
        # Corresponds to the JSON property `datacenterConnectors`
        # @return [Array<Google::Apis::VmmigrationV1::DatacenterConnector>]
        attr_accessor :datacenter_connectors
      
        # Output only. A token, which can be sent as `page_token` to retrieve the next
        # page. If this field is omitted, there are no subsequent pages.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # Output only. Locations that could not be reached.
        # Corresponds to the JSON property `unreachable`
        # @return [Array<String>]
        attr_accessor :unreachable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @datacenter_connectors = args[:datacenter_connectors] if args.key?(:datacenter_connectors)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @unreachable = args[:unreachable] if args.key?(:unreachable)
        end
      end
      
      # Response message for 'ListGroups' request.
      class ListGroupsResponse
        include Google::Apis::Core::Hashable
      
        # Output only. The list of groups response.
        # Corresponds to the JSON property `groups`
        # @return [Array<Google::Apis::VmmigrationV1::Group>]
        attr_accessor :groups
      
        # Output only. A token, which can be sent as `page_token` to retrieve the next
        # page. If this field is omitted, there are no subsequent pages.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # Output only. Locations that could not be reached.
        # Corresponds to the JSON property `unreachable`
        # @return [Array<String>]
        attr_accessor :unreachable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @groups = args[:groups] if args.key?(:groups)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @unreachable = args[:unreachable] if args.key?(:unreachable)
        end
      end
      
      # The response message for Locations.ListLocations.
      class ListLocationsResponse
        include Google::Apis::Core::Hashable
      
        # A list of locations that matches the specified filter in the request.
        # Corresponds to the JSON property `locations`
        # @return [Array<Google::Apis::VmmigrationV1::Location>]
        attr_accessor :locations
      
        # The standard List next-page token.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @locations = args[:locations] if args.key?(:locations)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # Response message for 'ListMigratingVms' request.
      class ListMigratingVmsResponse
        include Google::Apis::Core::Hashable
      
        # Output only. The list of Migrating VMs response.
        # Corresponds to the JSON property `migratingVms`
        # @return [Array<Google::Apis::VmmigrationV1::MigratingVm>]
        attr_accessor :migrating_vms
      
        # Output only. A token, which can be sent as `page_token` to retrieve the next
        # page. If this field is omitted, there are no subsequent pages.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # Output only. Locations that could not be reached.
        # Corresponds to the JSON property `unreachable`
        # @return [Array<String>]
        attr_accessor :unreachable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @migrating_vms = args[:migrating_vms] if args.key?(:migrating_vms)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @unreachable = args[:unreachable] if args.key?(:unreachable)
        end
      end
      
      # The response message for Operations.ListOperations.
      class ListOperationsResponse
        include Google::Apis::Core::Hashable
      
        # The standard List next-page token.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # A list of operations that matches the specified filter in the request.
        # Corresponds to the JSON property `operations`
        # @return [Array<Google::Apis::VmmigrationV1::Operation>]
        attr_accessor :operations
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @operations = args[:operations] if args.key?(:operations)
        end
      end
      
      # Response message for 'ListSources' request.
      class ListSourcesResponse
        include Google::Apis::Core::Hashable
      
        # Output only. A token, which can be sent as `page_token` to retrieve the next
        # page. If this field is omitted, there are no subsequent pages.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # Output only. The list of sources response.
        # Corresponds to the JSON property `sources`
        # @return [Array<Google::Apis::VmmigrationV1::Source>]
        attr_accessor :sources
      
        # Output only. Locations that could not be reached.
        # Corresponds to the JSON property `unreachable`
        # @return [Array<String>]
        attr_accessor :unreachable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @sources = args[:sources] if args.key?(:sources)
          @unreachable = args[:unreachable] if args.key?(:unreachable)
        end
      end
      
      # Response message for 'ListTargetProjects' call.
      class ListTargetProjectsResponse
        include Google::Apis::Core::Hashable
      
        # Output only. A token, which can be sent as `page_token` to retrieve the next
        # page. If this field is omitted, there are no subsequent pages.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # Output only. The list of target response.
        # Corresponds to the JSON property `targetProjects`
        # @return [Array<Google::Apis::VmmigrationV1::TargetProject>]
        attr_accessor :target_projects
      
        # Output only. Locations that could not be reached.
        # Corresponds to the JSON property `unreachable`
        # @return [Array<String>]
        attr_accessor :unreachable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @target_projects = args[:target_projects] if args.key?(:target_projects)
          @unreachable = args[:unreachable] if args.key?(:unreachable)
        end
      end
      
      # Response message for 'ListUtilizationReports' request.
      class ListUtilizationReportsResponse
        include Google::Apis::Core::Hashable
      
        # Output only. A token, which can be sent as `page_token` to retrieve the next
        # page. If this field is omitted, there are no subsequent pages.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # Output only. Locations that could not be reached.
        # Corresponds to the JSON property `unreachable`
        # @return [Array<String>]
        attr_accessor :unreachable
      
        # Output only. The list of reports.
        # Corresponds to the JSON property `utilizationReports`
        # @return [Array<Google::Apis::VmmigrationV1::UtilizationReport>]
        attr_accessor :utilization_reports
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @unreachable = args[:unreachable] if args.key?(:unreachable)
          @utilization_reports = args[:utilization_reports] if args.key?(:utilization_reports)
        end
      end
      
      # Provides a localized error message that is safe to return to the user which
      # can be attached to an RPC error.
      class LocalizedMessage
        include Google::Apis::Core::Hashable
      
        # The locale used following the specification defined at http://www.rfc-editor.
        # org/rfc/bcp/bcp47.txt. Examples are: "en-US", "fr-CH", "es-MX"
        # Corresponds to the JSON property `locale`
        # @return [String]
        attr_accessor :locale
      
        # The localized error message in the above locale.
        # Corresponds to the JSON property `message`
        # @return [String]
        attr_accessor :message
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @locale = args[:locale] if args.key?(:locale)
          @message = args[:message] if args.key?(:message)
        end
      end
      
      # A resource that represents Google Cloud Platform location.
      class Location
        include Google::Apis::Core::Hashable
      
        # The friendly name for this location, typically a nearby city name. For example,
        # "Tokyo".
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # Cross-service attributes for the location. For example `"cloud.googleapis.com/
        # region": "us-east1"`
        # Corresponds to the JSON property `labels`
        # @return [Hash<String,String>]
        attr_accessor :labels
      
        # The canonical id for this location. For example: `"us-east1"`.
        # Corresponds to the JSON property `locationId`
        # @return [String]
        attr_accessor :location_id
      
        # Service-specific metadata. For example the available capacity at the given
        # location.
        # Corresponds to the JSON property `metadata`
        # @return [Hash<String,Object>]
        attr_accessor :metadata
      
        # Resource name for the location, which may vary between implementations. For
        # example: `"projects/example-project/locations/us-east1"`
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @display_name = args[:display_name] if args.key?(:display_name)
          @labels = args[:labels] if args.key?(:labels)
          @location_id = args[:location_id] if args.key?(:location_id)
          @metadata = args[:metadata] if args.key?(:metadata)
          @name = args[:name] if args.key?(:name)
        end
      end
      
      # MigratingVm describes the VM that will be migrated from a Source environment
      # and its replication state.
      class MigratingVm
        include Google::Apis::Core::Hashable
      
        # ComputeEngineTargetDefaults is a collection of details for creating a VM in a
        # target Compute Engine project.
        # Corresponds to the JSON property `computeEngineTargetDefaults`
        # @return [Google::Apis::VmmigrationV1::ComputeEngineTargetDefaults]
        attr_accessor :compute_engine_target_defaults
      
        # Output only. The time the migrating VM was created (this refers to this
        # resource and not to the time it was installed in the source).
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # ReplicationCycle contains information about the current replication cycle
        # status.
        # Corresponds to the JSON property `currentSyncInfo`
        # @return [Google::Apis::VmmigrationV1::ReplicationCycle]
        attr_accessor :current_sync_info
      
        # The description attached to the migrating VM by the user.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # The display name attached to the MigratingVm by the user.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # The `Status` type defines a logical error model that is suitable for different
        # programming environments, including REST APIs and RPC APIs. It is used by [
        # gRPC](https://github.com/grpc). Each `Status` message contains three pieces of
        # data: error code, error message, and error details. You can find out more
        # about this error model and how to work with it in the [API Design Guide](https:
        # //cloud.google.com/apis/design/errors).
        # Corresponds to the JSON property `error`
        # @return [Google::Apis::VmmigrationV1::Status]
        attr_accessor :error
      
        # Output only. The group this migrating vm is included in, if any. The group is
        # represented by the full path of the appropriate Group resource.
        # Corresponds to the JSON property `group`
        # @return [String]
        attr_accessor :group
      
        # The labels of the migrating VM.
        # Corresponds to the JSON property `labels`
        # @return [Hash<String,String>]
        attr_accessor :labels
      
        # ReplicationSync contain information about the last replica sync to the cloud.
        # Corresponds to the JSON property `lastSync`
        # @return [Google::Apis::VmmigrationV1::ReplicationSync]
        attr_accessor :last_sync
      
        # Output only. The identifier of the MigratingVm.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # A policy for scheduling replications.
        # Corresponds to the JSON property `policy`
        # @return [Google::Apis::VmmigrationV1::SchedulePolicy]
        attr_accessor :policy
      
        # Output only. The recent clone jobs performed on the migrating VM. This field
        # holds the vm's last completed clone job and the vm's running clone job, if one
        # exists. Note: To have this field populated you need to explicitly request it
        # via the "view" parameter of the Get/List request.
        # Corresponds to the JSON property `recentCloneJobs`
        # @return [Array<Google::Apis::VmmigrationV1::CloneJob>]
        attr_accessor :recent_clone_jobs
      
        # Output only. The recent cutover jobs performed on the migrating VM. This field
        # holds the vm's last completed cutover job and the vm's running cutover job, if
        # one exists. Note: To have this field populated you need to explicitly request
        # it via the "view" parameter of the Get/List request.
        # Corresponds to the JSON property `recentCutoverJobs`
        # @return [Array<Google::Apis::VmmigrationV1::CutoverJob>]
        attr_accessor :recent_cutover_jobs
      
        # The unique ID of the VM in the source. The VM's name in vSphere can be changed,
        # so this is not the VM's name but rather its moRef id. This id is of the form
        # vm-.
        # Corresponds to the JSON property `sourceVmId`
        # @return [String]
        attr_accessor :source_vm_id
      
        # Output only. State of the MigratingVm.
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        # Output only. The last time the migrating VM state was updated.
        # Corresponds to the JSON property `stateTime`
        # @return [String]
        attr_accessor :state_time
      
        # Output only. The last time the migrating VM resource was updated.
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @compute_engine_target_defaults = args[:compute_engine_target_defaults] if args.key?(:compute_engine_target_defaults)
          @create_time = args[:create_time] if args.key?(:create_time)
          @current_sync_info = args[:current_sync_info] if args.key?(:current_sync_info)
          @description = args[:description] if args.key?(:description)
          @display_name = args[:display_name] if args.key?(:display_name)
          @error = args[:error] if args.key?(:error)
          @group = args[:group] if args.key?(:group)
          @labels = args[:labels] if args.key?(:labels)
          @last_sync = args[:last_sync] if args.key?(:last_sync)
          @name = args[:name] if args.key?(:name)
          @policy = args[:policy] if args.key?(:policy)
          @recent_clone_jobs = args[:recent_clone_jobs] if args.key?(:recent_clone_jobs)
          @recent_cutover_jobs = args[:recent_cutover_jobs] if args.key?(:recent_cutover_jobs)
          @source_vm_id = args[:source_vm_id] if args.key?(:source_vm_id)
          @state = args[:state] if args.key?(:state)
          @state_time = args[:state_time] if args.key?(:state_time)
          @update_time = args[:update_time] if args.key?(:update_time)
        end
      end
      
      # Represents migration resource error information that can be used with google.
      # rpc.Status message. MigrationError is used to present the user with error
      # information in migration operations.
      class MigrationError
        include Google::Apis::Core::Hashable
      
        # Provides a localized error message that is safe to return to the user which
        # can be attached to an RPC error.
        # Corresponds to the JSON property `actionItem`
        # @return [Google::Apis::VmmigrationV1::LocalizedMessage]
        attr_accessor :action_item
      
        # Output only. The error code.
        # Corresponds to the JSON property `code`
        # @return [String]
        attr_accessor :code
      
        # Provides a localized error message that is safe to return to the user which
        # can be attached to an RPC error.
        # Corresponds to the JSON property `errorMessage`
        # @return [Google::Apis::VmmigrationV1::LocalizedMessage]
        attr_accessor :error_message
      
        # Output only. The time the error occurred.
        # Corresponds to the JSON property `errorTime`
        # @return [String]
        attr_accessor :error_time
      
        # Output only. URL(s) pointing to additional information on handling the current
        # error.
        # Corresponds to the JSON property `helpLinks`
        # @return [Array<Google::Apis::VmmigrationV1::Link>]
        attr_accessor :help_links
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @action_item = args[:action_item] if args.key?(:action_item)
          @code = args[:code] if args.key?(:code)
          @error_message = args[:error_message] if args.key?(:error_message)
          @error_time = args[:error_time] if args.key?(:error_time)
          @help_links = args[:help_links] if args.key?(:help_links)
        end
      end
      
      # NetworkInterface represents a NIC of a VM.
      class NetworkInterface
        include Google::Apis::Core::Hashable
      
        # The external IP to define in the NIC.
        # Corresponds to the JSON property `externalIp`
        # @return [String]
        attr_accessor :external_ip
      
        # The internal IP to define in the NIC. The formats accepted are: `ephemeral` \
        # ipv4 address \ a named address resource full path.
        # Corresponds to the JSON property `internalIp`
        # @return [String]
        attr_accessor :internal_ip
      
        # The network to connect the NIC to.
        # Corresponds to the JSON property `network`
        # @return [String]
        attr_accessor :network
      
        # The subnetwork to connect the NIC to.
        # Corresponds to the JSON property `subnetwork`
        # @return [String]
        attr_accessor :subnetwork
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @external_ip = args[:external_ip] if args.key?(:external_ip)
          @internal_ip = args[:internal_ip] if args.key?(:internal_ip)
          @network = args[:network] if args.key?(:network)
          @subnetwork = args[:subnetwork] if args.key?(:subnetwork)
        end
      end
      
      # This resource represents a long-running operation that is the result of a
      # network API call.
      class Operation
        include Google::Apis::Core::Hashable
      
        # If the value is `false`, it means the operation is still in progress. If `true`
        # , the operation is completed, and either `error` or `response` is available.
        # Corresponds to the JSON property `done`
        # @return [Boolean]
        attr_accessor :done
        alias_method :done?, :done
      
        # The `Status` type defines a logical error model that is suitable for different
        # programming environments, including REST APIs and RPC APIs. It is used by [
        # gRPC](https://github.com/grpc). Each `Status` message contains three pieces of
        # data: error code, error message, and error details. You can find out more
        # about this error model and how to work with it in the [API Design Guide](https:
        # //cloud.google.com/apis/design/errors).
        # Corresponds to the JSON property `error`
        # @return [Google::Apis::VmmigrationV1::Status]
        attr_accessor :error
      
        # Service-specific metadata associated with the operation. It typically contains
        # progress information and common metadata such as create time. Some services
        # might not provide such metadata. Any method that returns a long-running
        # operation should document the metadata type, if any.
        # Corresponds to the JSON property `metadata`
        # @return [Hash<String,Object>]
        attr_accessor :metadata
      
        # The server-assigned name, which is only unique within the same service that
        # originally returns it. If you use the default HTTP mapping, the `name` should
        # be a resource name ending with `operations/`unique_id``.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # The normal response of the operation in case of success. If the original
        # method returns no data on success, such as `Delete`, the response is `google.
        # protobuf.Empty`. If the original method is standard `Get`/`Create`/`Update`,
        # the response should be the resource. For other methods, the response should
        # have the type `XxxResponse`, where `Xxx` is the original method name. For
        # example, if the original method name is `TakeSnapshot()`, the inferred
        # response type is `TakeSnapshotResponse`.
        # Corresponds to the JSON property `response`
        # @return [Hash<String,Object>]
        attr_accessor :response
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @done = args[:done] if args.key?(:done)
          @error = args[:error] if args.key?(:error)
          @metadata = args[:metadata] if args.key?(:metadata)
          @name = args[:name] if args.key?(:name)
          @response = args[:response] if args.key?(:response)
        end
      end
      
      # Represents the metadata of the long-running operation.
      class OperationMetadata
        include Google::Apis::Core::Hashable
      
        # Output only. API version used to start the operation.
        # Corresponds to the JSON property `apiVersion`
        # @return [String]
        attr_accessor :api_version
      
        # Output only. The time the operation was created.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Output only. The time the operation finished running.
        # Corresponds to the JSON property `endTime`
        # @return [String]
        attr_accessor :end_time
      
        # Output only. Identifies whether the user has requested cancellation of the
        # operation. Operations that have successfully been cancelled have Operation.
        # error value with a google.rpc.Status.code of 1, corresponding to `Code.
        # CANCELLED`.
        # Corresponds to the JSON property `requestedCancellation`
        # @return [Boolean]
        attr_accessor :requested_cancellation
        alias_method :requested_cancellation?, :requested_cancellation
      
        # Output only. Human-readable status of the operation, if any.
        # Corresponds to the JSON property `statusMessage`
        # @return [String]
        attr_accessor :status_message
      
        # Output only. Server-defined resource path for the target of the operation.
        # Corresponds to the JSON property `target`
        # @return [String]
        attr_accessor :target
      
        # Output only. Name of the verb executed by the operation.
        # Corresponds to the JSON property `verb`
        # @return [String]
        attr_accessor :verb
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @api_version = args[:api_version] if args.key?(:api_version)
          @create_time = args[:create_time] if args.key?(:create_time)
          @end_time = args[:end_time] if args.key?(:end_time)
          @requested_cancellation = args[:requested_cancellation] if args.key?(:requested_cancellation)
          @status_message = args[:status_message] if args.key?(:status_message)
          @target = args[:target] if args.key?(:target)
          @verb = args[:verb] if args.key?(:verb)
        end
      end
      
      # Request message for 'PauseMigration' request.
      class PauseMigrationRequest
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # Response message for 'PauseMigration' request.
      class PauseMigrationResponse
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # Request message for 'RemoveMigration' request.
      class RemoveGroupMigrationRequest
        include Google::Apis::Core::Hashable
      
        # The MigratingVm to remove.
        # Corresponds to the JSON property `migratingVm`
        # @return [String]
        attr_accessor :migrating_vm
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @migrating_vm = args[:migrating_vm] if args.key?(:migrating_vm)
        end
      end
      
      # Response message for 'RemoveMigration' request.
      class RemoveGroupMigrationResponse
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # ReplicationCycle contains information about the current replication cycle
      # status.
      class ReplicationCycle
        include Google::Apis::Core::Hashable
      
        # The current progress in percentage of this cycle.
        # Corresponds to the JSON property `progressPercent`
        # @return [Fixnum]
        attr_accessor :progress_percent
      
        # The time the replication cycle has started.
        # Corresponds to the JSON property `startTime`
        # @return [String]
        attr_accessor :start_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @progress_percent = args[:progress_percent] if args.key?(:progress_percent)
          @start_time = args[:start_time] if args.key?(:start_time)
        end
      end
      
      # ReplicationSync contain information about the last replica sync to the cloud.
      class ReplicationSync
        include Google::Apis::Core::Hashable
      
        # The most updated snapshot created time in the source that finished replication.
        # Corresponds to the JSON property `lastSyncTime`
        # @return [String]
        attr_accessor :last_sync_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @last_sync_time = args[:last_sync_time] if args.key?(:last_sync_time)
        end
      end
      
      # Request message for 'ResumeMigration' request.
      class ResumeMigrationRequest
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # Response message for 'ResumeMigration' request.
      class ResumeMigrationResponse
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # A policy for scheduling replications.
      class SchedulePolicy
        include Google::Apis::Core::Hashable
      
        # The idle duration between replication stages.
        # Corresponds to the JSON property `idleDuration`
        # @return [String]
        attr_accessor :idle_duration
      
        # A flag to indicate whether to skip OS adaptation during the replication sync.
        # OS adaptation is a process where the VM's operating system undergoes changes
        # and adaptations to fully function on Compute Engine.
        # Corresponds to the JSON property `skipOsAdaptation`
        # @return [Boolean]
        attr_accessor :skip_os_adaptation
        alias_method :skip_os_adaptation?, :skip_os_adaptation
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @idle_duration = args[:idle_duration] if args.key?(:idle_duration)
          @skip_os_adaptation = args[:skip_os_adaptation] if args.key?(:skip_os_adaptation)
        end
      end
      
      # Node Affinity: the configuration of desired nodes onto which this Instance
      # could be scheduled. Based on https://cloud.google.com/compute/docs/reference/
      # rest/v1/instances/setScheduling
      class SchedulingNodeAffinity
        include Google::Apis::Core::Hashable
      
        # The label key of Node resource to reference.
        # Corresponds to the JSON property `key`
        # @return [String]
        attr_accessor :key
      
        # The operator to use for the node resources specified in the `values` parameter.
        # Corresponds to the JSON property `operator`
        # @return [String]
        attr_accessor :operator
      
        # Corresponds to the label values of Node resource.
        # Corresponds to the JSON property `values`
        # @return [Array<String>]
        attr_accessor :values
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @key = args[:key] if args.key?(:key)
          @operator = args[:operator] if args.key?(:operator)
          @values = args[:values] if args.key?(:values)
        end
      end
      
      # Source message describes a specific vm migration Source resource. It contains
      # the source environment information.
      class Source
        include Google::Apis::Core::Hashable
      
        # Output only. The create time timestamp.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # User-provided description of the source.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # The labels of the source.
        # Corresponds to the JSON property `labels`
        # @return [Hash<String,String>]
        attr_accessor :labels
      
        # Output only. The Source name.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Output only. The update time timestamp.
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        # VmwareSourceDetails message describes a specific source details for the vmware
        # source type.
        # Corresponds to the JSON property `vmware`
        # @return [Google::Apis::VmmigrationV1::VmwareSourceDetails]
        attr_accessor :vmware
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @create_time = args[:create_time] if args.key?(:create_time)
          @description = args[:description] if args.key?(:description)
          @labels = args[:labels] if args.key?(:labels)
          @name = args[:name] if args.key?(:name)
          @update_time = args[:update_time] if args.key?(:update_time)
          @vmware = args[:vmware] if args.key?(:vmware)
        end
      end
      
      # Request message for 'StartMigrationRequest' request.
      class StartMigrationRequest
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # Response message for 'StartMigration' request.
      class StartMigrationResponse
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # The `Status` type defines a logical error model that is suitable for different
      # programming environments, including REST APIs and RPC APIs. It is used by [
      # gRPC](https://github.com/grpc). Each `Status` message contains three pieces of
      # data: error code, error message, and error details. You can find out more
      # about this error model and how to work with it in the [API Design Guide](https:
      # //cloud.google.com/apis/design/errors).
      class Status
        include Google::Apis::Core::Hashable
      
        # The status code, which should be an enum value of google.rpc.Code.
        # Corresponds to the JSON property `code`
        # @return [Fixnum]
        attr_accessor :code
      
        # A list of messages that carry the error details. There is a common set of
        # message types for APIs to use.
        # Corresponds to the JSON property `details`
        # @return [Array<Hash<String,Object>>]
        attr_accessor :details
      
        # A developer-facing error message, which should be in English. Any user-facing
        # error message should be localized and sent in the google.rpc.Status.details
        # field, or localized by the client.
        # Corresponds to the JSON property `message`
        # @return [String]
        attr_accessor :message
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @code = args[:code] if args.key?(:code)
          @details = args[:details] if args.key?(:details)
          @message = args[:message] if args.key?(:message)
        end
      end
      
      # TargetProject message represents a target Compute Engine project for a
      # migration or a clone.
      class TargetProject
        include Google::Apis::Core::Hashable
      
        # Output only. The time this target project resource was created (not related to
        # when the Compute Engine project it points to was created).
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # The target project's description.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # The name of the target project.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # The target project ID (number) or project name.
        # Corresponds to the JSON property `project`
        # @return [String]
        attr_accessor :project
      
        # Output only. The last time the target project resource was updated.
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @create_time = args[:create_time] if args.key?(:create_time)
          @description = args[:description] if args.key?(:description)
          @name = args[:name] if args.key?(:name)
          @project = args[:project] if args.key?(:project)
          @update_time = args[:update_time] if args.key?(:update_time)
        end
      end
      
      # Utilization report details the utilization (CPU, memory, etc.) of selected
      # source VMs.
      class UtilizationReport
        include Google::Apis::Core::Hashable
      
        # Output only. The time the report was created (this refers to the time of the
        # request, not the time the report creation completed).
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # The report display name, as assigned by the user.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # The `Status` type defines a logical error model that is suitable for different
        # programming environments, including REST APIs and RPC APIs. It is used by [
        # gRPC](https://github.com/grpc). Each `Status` message contains three pieces of
        # data: error code, error message, and error details. You can find out more
        # about this error model and how to work with it in the [API Design Guide](https:
        # //cloud.google.com/apis/design/errors).
        # Corresponds to the JSON property `error`
        # @return [Google::Apis::VmmigrationV1::Status]
        attr_accessor :error
      
        # Output only. The point in time when the time frame ends. Notice that the time
        # frame is counted backwards. For instance if the "frame_end_time" value is 2021/
        # 01/20 and the time frame is WEEK then the report covers the week between 2021/
        # 01/20 and 2021/01/14.
        # Corresponds to the JSON property `frameEndTime`
        # @return [String]
        attr_accessor :frame_end_time
      
        # Output only. The report unique name.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Output only. Current state of the report.
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        # Output only. The time the state was last set.
        # Corresponds to the JSON property `stateTime`
        # @return [String]
        attr_accessor :state_time
      
        # Time frame of the report.
        # Corresponds to the JSON property `timeFrame`
        # @return [String]
        attr_accessor :time_frame
      
        # Output only. Total number of VMs included in the report.
        # Corresponds to the JSON property `vmCount`
        # @return [Fixnum]
        attr_accessor :vm_count
      
        # List of utilization information per VM. When sent as part of the request, the "
        # vm_id" field is used in order to specify which VMs to include in the report.
        # In that case all other fields are ignored.
        # Corresponds to the JSON property `vms`
        # @return [Array<Google::Apis::VmmigrationV1::VmUtilizationInfo>]
        attr_accessor :vms
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @create_time = args[:create_time] if args.key?(:create_time)
          @display_name = args[:display_name] if args.key?(:display_name)
          @error = args[:error] if args.key?(:error)
          @frame_end_time = args[:frame_end_time] if args.key?(:frame_end_time)
          @name = args[:name] if args.key?(:name)
          @state = args[:state] if args.key?(:state)
          @state_time = args[:state_time] if args.key?(:state_time)
          @time_frame = args[:time_frame] if args.key?(:time_frame)
          @vm_count = args[:vm_count] if args.key?(:vm_count)
          @vms = args[:vms] if args.key?(:vms)
        end
      end
      
      # Utilization information of a single VM.
      class VmUtilizationInfo
        include Google::Apis::Core::Hashable
      
        # Utilization metrics values for a single VM.
        # Corresponds to the JSON property `utilization`
        # @return [Google::Apis::VmmigrationV1::VmUtilizationMetrics]
        attr_accessor :utilization
      
        # The VM's ID in the source.
        # Corresponds to the JSON property `vmId`
        # @return [String]
        attr_accessor :vm_id
      
        # VmwareVmDetails describes a VM in vCenter.
        # Corresponds to the JSON property `vmwareVmDetails`
        # @return [Google::Apis::VmmigrationV1::VmwareVmDetails]
        attr_accessor :vmware_vm_details
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @utilization = args[:utilization] if args.key?(:utilization)
          @vm_id = args[:vm_id] if args.key?(:vm_id)
          @vmware_vm_details = args[:vmware_vm_details] if args.key?(:vmware_vm_details)
        end
      end
      
      # Utilization metrics values for a single VM.
      class VmUtilizationMetrics
        include Google::Apis::Core::Hashable
      
        # Average CPU usage, percent.
        # Corresponds to the JSON property `cpuAveragePercent`
        # @return [Fixnum]
        attr_accessor :cpu_average_percent
      
        # Max CPU usage, percent.
        # Corresponds to the JSON property `cpuMaxPercent`
        # @return [Fixnum]
        attr_accessor :cpu_max_percent
      
        # Average disk IO rate, in kilobytes per second.
        # Corresponds to the JSON property `diskIoRateAverageKbps`
        # @return [Fixnum]
        attr_accessor :disk_io_rate_average_kbps
      
        # Max disk IO rate, in kilobytes per second.
        # Corresponds to the JSON property `diskIoRateMaxKbps`
        # @return [Fixnum]
        attr_accessor :disk_io_rate_max_kbps
      
        # Average memory usage, percent.
        # Corresponds to the JSON property `memoryAveragePercent`
        # @return [Fixnum]
        attr_accessor :memory_average_percent
      
        # Max memory usage, percent.
        # Corresponds to the JSON property `memoryMaxPercent`
        # @return [Fixnum]
        attr_accessor :memory_max_percent
      
        # Average network throughput (combined transmit-rates and receive-rates), in
        # kilobytes per second.
        # Corresponds to the JSON property `networkThroughputAverageKbps`
        # @return [Fixnum]
        attr_accessor :network_throughput_average_kbps
      
        # Max network throughput (combined transmit-rates and receive-rates), in
        # kilobytes per second.
        # Corresponds to the JSON property `networkThroughputMaxKbps`
        # @return [Fixnum]
        attr_accessor :network_throughput_max_kbps
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @cpu_average_percent = args[:cpu_average_percent] if args.key?(:cpu_average_percent)
          @cpu_max_percent = args[:cpu_max_percent] if args.key?(:cpu_max_percent)
          @disk_io_rate_average_kbps = args[:disk_io_rate_average_kbps] if args.key?(:disk_io_rate_average_kbps)
          @disk_io_rate_max_kbps = args[:disk_io_rate_max_kbps] if args.key?(:disk_io_rate_max_kbps)
          @memory_average_percent = args[:memory_average_percent] if args.key?(:memory_average_percent)
          @memory_max_percent = args[:memory_max_percent] if args.key?(:memory_max_percent)
          @network_throughput_average_kbps = args[:network_throughput_average_kbps] if args.key?(:network_throughput_average_kbps)
          @network_throughput_max_kbps = args[:network_throughput_max_kbps] if args.key?(:network_throughput_max_kbps)
        end
      end
      
      # VmwareSourceDetails message describes a specific source details for the vmware
      # source type.
      class VmwareSourceDetails
        include Google::Apis::Core::Hashable
      
        # Input only. The credentials password. This is write only and can not be read
        # in a GET operation.
        # Corresponds to the JSON property `password`
        # @return [String]
        attr_accessor :password
      
        # The thumbprint representing the certificate for the vcenter.
        # Corresponds to the JSON property `thumbprint`
        # @return [String]
        attr_accessor :thumbprint
      
        # The credentials username.
        # Corresponds to the JSON property `username`
        # @return [String]
        attr_accessor :username
      
        # The ip address of the vcenter this Source represents.
        # Corresponds to the JSON property `vcenterIp`
        # @return [String]
        attr_accessor :vcenter_ip
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @password = args[:password] if args.key?(:password)
          @thumbprint = args[:thumbprint] if args.key?(:thumbprint)
          @username = args[:username] if args.key?(:username)
          @vcenter_ip = args[:vcenter_ip] if args.key?(:vcenter_ip)
        end
      end
      
      # VmwareVmDetails describes a VM in vCenter.
      class VmwareVmDetails
        include Google::Apis::Core::Hashable
      
        # Output only. The VM Boot Option.
        # Corresponds to the JSON property `bootOption`
        # @return [String]
        attr_accessor :boot_option
      
        # The total size of the storage allocated to the VM in MB.
        # Corresponds to the JSON property `committedStorageMb`
        # @return [Fixnum]
        attr_accessor :committed_storage_mb
      
        # The number of cpus in the VM.
        # Corresponds to the JSON property `cpuCount`
        # @return [Fixnum]
        attr_accessor :cpu_count
      
        # The descriptive name of the vCenter's datacenter this VM is contained in.
        # Corresponds to the JSON property `datacenterDescription`
        # @return [String]
        attr_accessor :datacenter_description
      
        # The id of the vCenter's datacenter this VM is contained in.
        # Corresponds to the JSON property `datacenterId`
        # @return [String]
        attr_accessor :datacenter_id
      
        # The number of disks the VM has.
        # Corresponds to the JSON property `diskCount`
        # @return [Fixnum]
        attr_accessor :disk_count
      
        # The display name of the VM. Note that this is not necessarily unique.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # The VM's OS. See for example https://pubs.vmware.com/vi-sdk/visdk250/
        # ReferenceGuide/vim.vm.GuestOsDescriptor.GuestOsIdentifier.html for types of
        # strings this might hold.
        # Corresponds to the JSON property `guestDescription`
        # @return [String]
        attr_accessor :guest_description
      
        # The size of the memory of the VM in MB.
        # Corresponds to the JSON property `memoryMb`
        # @return [Fixnum]
        attr_accessor :memory_mb
      
        # The power state of the VM at the moment list was taken.
        # Corresponds to the JSON property `powerState`
        # @return [String]
        attr_accessor :power_state
      
        # The unique identifier of the VM in vCenter.
        # Corresponds to the JSON property `uuid`
        # @return [String]
        attr_accessor :uuid
      
        # The VM's id in the source (note that this is not the MigratingVm's id). This
        # is the moref id of the VM.
        # Corresponds to the JSON property `vmId`
        # @return [String]
        attr_accessor :vm_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @boot_option = args[:boot_option] if args.key?(:boot_option)
          @committed_storage_mb = args[:committed_storage_mb] if args.key?(:committed_storage_mb)
          @cpu_count = args[:cpu_count] if args.key?(:cpu_count)
          @datacenter_description = args[:datacenter_description] if args.key?(:datacenter_description)
          @datacenter_id = args[:datacenter_id] if args.key?(:datacenter_id)
          @disk_count = args[:disk_count] if args.key?(:disk_count)
          @display_name = args[:display_name] if args.key?(:display_name)
          @guest_description = args[:guest_description] if args.key?(:guest_description)
          @memory_mb = args[:memory_mb] if args.key?(:memory_mb)
          @power_state = args[:power_state] if args.key?(:power_state)
          @uuid = args[:uuid] if args.key?(:uuid)
          @vm_id = args[:vm_id] if args.key?(:vm_id)
        end
      end
      
      # VmwareVmsDetails describes VMs in vCenter.
      class VmwareVmsDetails
        include Google::Apis::Core::Hashable
      
        # The details of the vmware VMs.
        # Corresponds to the JSON property `details`
        # @return [Array<Google::Apis::VmmigrationV1::VmwareVmDetails>]
        attr_accessor :details
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @details = args[:details] if args.key?(:details)
        end
      end
    end
  end
end
