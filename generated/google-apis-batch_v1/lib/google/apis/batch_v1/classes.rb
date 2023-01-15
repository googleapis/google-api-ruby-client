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
    module BatchV1
      
      # Accelerator describes Compute Engine accelerators to be attached to the VM.
      class Accelerator
        include Google::Apis::Core::Hashable
      
        # The number of accelerators of this type.
        # Corresponds to the JSON property `count`
        # @return [Fixnum]
        attr_accessor :count
      
        # Deprecated: please use instances[0].install_gpu_drivers instead.
        # Corresponds to the JSON property `installGpuDrivers`
        # @return [Boolean]
        attr_accessor :install_gpu_drivers
        alias_method :install_gpu_drivers?, :install_gpu_drivers
      
        # The accelerator type. For example, "nvidia-tesla-t4". See `gcloud compute
        # accelerator-types list`.
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @count = args[:count] if args.key?(:count)
          @install_gpu_drivers = args[:install_gpu_drivers] if args.key?(:install_gpu_drivers)
          @type = args[:type] if args.key?(:type)
        end
      end
      
      # Conditions for actions to deal with task failures.
      class ActionCondition
        include Google::Apis::Core::Hashable
      
        # Exit codes of a task execution. If there are more than 1 exit codes, when task
        # executes with any of the exit code in the list, the condition is met and the
        # action will be executed.
        # Corresponds to the JSON property `exitCodes`
        # @return [Array<Fixnum>]
        attr_accessor :exit_codes
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @exit_codes = args[:exit_codes] if args.key?(:exit_codes)
        end
      end
      
      # VM Agent Info.
      class AgentInfo
        include Google::Apis::Core::Hashable
      
        # The assigned Job ID
        # Corresponds to the JSON property `jobId`
        # @return [String]
        attr_accessor :job_id
      
        # When the AgentInfo is generated.
        # Corresponds to the JSON property `reportTime`
        # @return [String]
        attr_accessor :report_time
      
        # Agent state.
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        # The assigned task group ID.
        # Corresponds to the JSON property `taskGroupId`
        # @return [String]
        attr_accessor :task_group_id
      
        # Task Info.
        # Corresponds to the JSON property `tasks`
        # @return [Array<Google::Apis::BatchV1::AgentTaskInfo>]
        attr_accessor :tasks
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @job_id = args[:job_id] if args.key?(:job_id)
          @report_time = args[:report_time] if args.key?(:report_time)
          @state = args[:state] if args.key?(:state)
          @task_group_id = args[:task_group_id] if args.key?(:task_group_id)
          @tasks = args[:tasks] if args.key?(:tasks)
        end
      end
      
      # VM Agent Metadata.
      class AgentMetadata
        include Google::Apis::Core::Hashable
      
        # When the VM agent started. Use agent_startup_time instead.
        # Corresponds to the JSON property `creationTime`
        # @return [String]
        attr_accessor :creation_time
      
        # Full name of the entity that created this vm. For MIG, this path is: projects/`
        # project`/regions/`region`/InstanceGroupManagers/`igm` The value is retrieved
        # from the vm metadata key of "created-by".
        # Corresponds to the JSON property `creator`
        # @return [String]
        attr_accessor :creator
      
        # image version for the VM that this agent is installed on.
        # Corresponds to the JSON property `imageVersion`
        # @return [String]
        attr_accessor :image_version
      
        # GCP instance name (go/instance-name).
        # Corresponds to the JSON property `instance`
        # @return [String]
        attr_accessor :instance
      
        # GCP instance ID (go/instance-id).
        # Corresponds to the JSON property `instanceId`
        # @return [Fixnum]
        attr_accessor :instance_id
      
        # If the GCP instance has received preemption notice.
        # Corresponds to the JSON property `instancePreemptionNoticeReceived`
        # @return [Boolean]
        attr_accessor :instance_preemption_notice_received
        alias_method :instance_preemption_notice_received?, :instance_preemption_notice_received
      
        # parsed contents of /etc/os-release
        # Corresponds to the JSON property `osRelease`
        # @return [Hash<String,String>]
        attr_accessor :os_release
      
        # agent binary version running on VM
        # Corresponds to the JSON property `version`
        # @return [String]
        attr_accessor :version
      
        # Agent zone.
        # Corresponds to the JSON property `zone`
        # @return [String]
        attr_accessor :zone
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @creation_time = args[:creation_time] if args.key?(:creation_time)
          @creator = args[:creator] if args.key?(:creator)
          @image_version = args[:image_version] if args.key?(:image_version)
          @instance = args[:instance] if args.key?(:instance)
          @instance_id = args[:instance_id] if args.key?(:instance_id)
          @instance_preemption_notice_received = args[:instance_preemption_notice_received] if args.key?(:instance_preemption_notice_received)
          @os_release = args[:os_release] if args.key?(:os_release)
          @version = args[:version] if args.key?(:version)
          @zone = args[:zone] if args.key?(:zone)
        end
      end
      
      # TODO(b/182501497) The message needs to be redefined when the Agent API server
      # updates data in storage per the backend design.
      class AgentTask
        include Google::Apis::Core::Hashable
      
        # The intended state of the task.
        # Corresponds to the JSON property `intendedState`
        # @return [String]
        attr_accessor :intended_state
      
        # The highest barrier reached by all tasks in the task's TaskGroup.
        # Corresponds to the JSON property `reachedBarrier`
        # @return [Fixnum]
        attr_accessor :reached_barrier
      
        # Spec of a task
        # Corresponds to the JSON property `spec`
        # @return [Google::Apis::BatchV1::TaskSpec]
        attr_accessor :spec
      
        # Status of a task
        # Corresponds to the JSON property `status`
        # @return [Google::Apis::BatchV1::TaskStatus]
        attr_accessor :status
      
        # Task name.
        # Corresponds to the JSON property `task`
        # @return [String]
        attr_accessor :task
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @intended_state = args[:intended_state] if args.key?(:intended_state)
          @reached_barrier = args[:reached_barrier] if args.key?(:reached_barrier)
          @spec = args[:spec] if args.key?(:spec)
          @status = args[:status] if args.key?(:status)
          @task = args[:task] if args.key?(:task)
        end
      end
      
      # Task Info
      class AgentTaskInfo
        include Google::Apis::Core::Hashable
      
        # The highest index of a runnable started by the agent for this task. The
        # runnables are indexed from 1. Value 0 is undefined.
        # Corresponds to the JSON property `runnable`
        # @return [Fixnum]
        attr_accessor :runnable
      
        # ID of the Task
        # Corresponds to the JSON property `taskId`
        # @return [String]
        attr_accessor :task_id
      
        # Status of a task
        # Corresponds to the JSON property `taskStatus`
        # @return [Google::Apis::BatchV1::TaskStatus]
        attr_accessor :task_status
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @runnable = args[:runnable] if args.key?(:runnable)
          @task_id = args[:task_id] if args.key?(:task_id)
          @task_status = args[:task_status] if args.key?(:task_status)
        end
      end
      
      # VM timing information
      class AgentTimingInfo
        include Google::Apis::Core::Hashable
      
        # Agent startup time
        # Corresponds to the JSON property `agentStartupTime`
        # @return [String]
        attr_accessor :agent_startup_time
      
        # Boot timestamp of the VM OS
        # Corresponds to the JSON property `bootTime`
        # @return [String]
        attr_accessor :boot_time
      
        # Startup time of the Batch VM script.
        # Corresponds to the JSON property `scriptStartupTime`
        # @return [String]
        attr_accessor :script_startup_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @agent_startup_time = args[:agent_startup_time] if args.key?(:agent_startup_time)
          @boot_time = args[:boot_time] if args.key?(:boot_time)
          @script_startup_time = args[:script_startup_time] if args.key?(:script_startup_time)
        end
      end
      
      # A Job's resource allocation policy describes when, where, and how compute
      # resources should be allocated for the Job.
      class AllocationPolicy
        include Google::Apis::Core::Hashable
      
        # Describe instances that can be created by this AllocationPolicy. Only
        # instances[0] is supported now.
        # Corresponds to the JSON property `instances`
        # @return [Array<Google::Apis::BatchV1::InstancePolicyOrTemplate>]
        attr_accessor :instances
      
        # Labels applied to all VM instances and other resources created by
        # AllocationPolicy. Labels could be user provided or system generated. You can
        # assign up to 64 labels. [Google Compute Engine label restrictions](https://
        # cloud.google.com/compute/docs/labeling-resources#restrictions) apply. Label
        # names that start with "goog-" or "google-" are reserved.
        # Corresponds to the JSON property `labels`
        # @return [Hash<String,String>]
        attr_accessor :labels
      
        # Location where compute resources should be allocated for the Job.
        # Corresponds to the JSON property `location`
        # @return [Google::Apis::BatchV1::LocationPolicy]
        attr_accessor :location
      
        # NetworkPolicy describes VM instance network configurations.
        # Corresponds to the JSON property `network`
        # @return [Google::Apis::BatchV1::NetworkPolicy]
        attr_accessor :network
      
        # Carries information about a Google Cloud service account.
        # Corresponds to the JSON property `serviceAccount`
        # @return [Google::Apis::BatchV1::ServiceAccount]
        attr_accessor :service_account
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @instances = args[:instances] if args.key?(:instances)
          @labels = args[:labels] if args.key?(:labels)
          @location = args[:location] if args.key?(:location)
          @network = args[:network] if args.key?(:network)
          @service_account = args[:service_account] if args.key?(:service_account)
        end
      end
      
      # A new or an existing persistent disk (PD) or a local ssd attached to a VM
      # instance.
      class AttachedDisk
        include Google::Apis::Core::Hashable
      
        # Device name that the guest operating system will see. It is used by Runnable.
        # volumes field to mount disks. So please specify the device_name if you want
        # Batch to help mount the disk, and it should match the device_name field in
        # volumes.
        # Corresponds to the JSON property `deviceName`
        # @return [String]
        attr_accessor :device_name
      
        # Name of an existing PD.
        # Corresponds to the JSON property `existingDisk`
        # @return [String]
        attr_accessor :existing_disk
      
        # A new persistent disk or a local ssd. A VM can only have one local SSD setting
        # but multiple local SSD partitions. https://cloud.google.com/compute/docs/disks#
        # pdspecs. https://cloud.google.com/compute/docs/disks#localssds.
        # Corresponds to the JSON property `newDisk`
        # @return [Google::Apis::BatchV1::Disk]
        attr_accessor :new_disk
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @device_name = args[:device_name] if args.key?(:device_name)
          @existing_disk = args[:existing_disk] if args.key?(:existing_disk)
          @new_disk = args[:new_disk] if args.key?(:new_disk)
        end
      end
      
      # Specifies the audit configuration for a service. The configuration determines
      # which permission types are logged, and what identities, if any, are exempted
      # from logging. An AuditConfig must have one or more AuditLogConfigs. If there
      # are AuditConfigs for both `allServices` and a specific service, the union of
      # the two AuditConfigs is used for that service: the log_types specified in each
      # AuditConfig are enabled, and the exempted_members in each AuditLogConfig are
      # exempted. Example Policy with multiple AuditConfigs: ` "audit_configs": [ ` "
      # service": "allServices", "audit_log_configs": [ ` "log_type": "DATA_READ", "
      # exempted_members": [ "user:jose@example.com" ] `, ` "log_type": "DATA_WRITE" `,
      # ` "log_type": "ADMIN_READ" ` ] `, ` "service": "sampleservice.googleapis.com",
      # "audit_log_configs": [ ` "log_type": "DATA_READ" `, ` "log_type": "DATA_WRITE"
      # , "exempted_members": [ "user:aliya@example.com" ] ` ] ` ] ` For sampleservice,
      # this policy enables DATA_READ, DATA_WRITE and ADMIN_READ logging. It also
      # exempts `jose@example.com` from DATA_READ logging, and `aliya@example.com`
      # from DATA_WRITE logging.
      class AuditConfig
        include Google::Apis::Core::Hashable
      
        # The configuration for logging of each type of permission.
        # Corresponds to the JSON property `auditLogConfigs`
        # @return [Array<Google::Apis::BatchV1::AuditLogConfig>]
        attr_accessor :audit_log_configs
      
        # Specifies a service that will be enabled for audit logging. For example, `
        # storage.googleapis.com`, `cloudsql.googleapis.com`. `allServices` is a special
        # value that covers all services.
        # Corresponds to the JSON property `service`
        # @return [String]
        attr_accessor :service
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @audit_log_configs = args[:audit_log_configs] if args.key?(:audit_log_configs)
          @service = args[:service] if args.key?(:service)
        end
      end
      
      # Provides the configuration for logging a type of permissions. Example: ` "
      # audit_log_configs": [ ` "log_type": "DATA_READ", "exempted_members": [ "user:
      # jose@example.com" ] `, ` "log_type": "DATA_WRITE" ` ] ` This enables '
      # DATA_READ' and 'DATA_WRITE' logging, while exempting jose@example.com from
      # DATA_READ logging.
      class AuditLogConfig
        include Google::Apis::Core::Hashable
      
        # Specifies the identities that do not cause logging for this type of permission.
        # Follows the same format of Binding.members.
        # Corresponds to the JSON property `exemptedMembers`
        # @return [Array<String>]
        attr_accessor :exempted_members
      
        # The log type that this config enables.
        # Corresponds to the JSON property `logType`
        # @return [String]
        attr_accessor :log_type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @exempted_members = args[:exempted_members] if args.key?(:exempted_members)
          @log_type = args[:log_type] if args.key?(:log_type)
        end
      end
      
      # Barrier runnable blocks until all tasks in a taskgroup reach it.
      class Barrier
        include Google::Apis::Core::Hashable
      
        # Barriers are identified by their index in runnable list. Names are not
        # required, but if present should be an identifier.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @name = args[:name] if args.key?(:name)
        end
      end
      
      # Associates `members`, or principals, with a `role`.
      class Binding
        include Google::Apis::Core::Hashable
      
        # Represents a textual expression in the Common Expression Language (CEL) syntax.
        # CEL is a C-like expression language. The syntax and semantics of CEL are
        # documented at https://github.com/google/cel-spec. Example (Comparison): title:
        # "Summary size limit" description: "Determines if a summary is less than 100
        # chars" expression: "document.summary.size() < 100" Example (Equality): title: "
        # Requestor is owner" description: "Determines if requestor is the document
        # owner" expression: "document.owner == request.auth.claims.email" Example (
        # Logic): title: "Public documents" description: "Determine whether the document
        # should be publicly visible" expression: "document.type != 'private' &&
        # document.type != 'internal'" Example (Data Manipulation): title: "Notification
        # string" description: "Create a notification string with a timestamp."
        # expression: "'New message received at ' + string(document.create_time)" The
        # exact variables and functions that may be referenced within an expression are
        # determined by the service that evaluates it. See the service documentation for
        # additional information.
        # Corresponds to the JSON property `condition`
        # @return [Google::Apis::BatchV1::Expr]
        attr_accessor :condition
      
        # Specifies the principals requesting access for a Google Cloud resource. `
        # members` can have the following values: * `allUsers`: A special identifier
        # that represents anyone who is on the internet; with or without a Google
        # account. * `allAuthenticatedUsers`: A special identifier that represents
        # anyone who is authenticated with a Google account or a service account. Does
        # not include identities that come from external identity providers (IdPs)
        # through identity federation. * `user:`emailid``: An email address that
        # represents a specific Google account. For example, `alice@example.com` . * `
        # serviceAccount:`emailid``: An email address that represents a Google service
        # account. For example, `my-other-app@appspot.gserviceaccount.com`. * `
        # serviceAccount:`projectid`.svc.id.goog[`namespace`/`kubernetes-sa`]`: An
        # identifier for a [Kubernetes service account](https://cloud.google.com/
        # kubernetes-engine/docs/how-to/kubernetes-service-accounts). For example, `my-
        # project.svc.id.goog[my-namespace/my-kubernetes-sa]`. * `group:`emailid``: An
        # email address that represents a Google group. For example, `admins@example.com`
        # . * `deleted:user:`emailid`?uid=`uniqueid``: An email address (plus unique
        # identifier) representing a user that has been recently deleted. For example, `
        # alice@example.com?uid=123456789012345678901`. If the user is recovered, this
        # value reverts to `user:`emailid`` and the recovered user retains the role in
        # the binding. * `deleted:serviceAccount:`emailid`?uid=`uniqueid``: An email
        # address (plus unique identifier) representing a service account that has been
        # recently deleted. For example, `my-other-app@appspot.gserviceaccount.com?uid=
        # 123456789012345678901`. If the service account is undeleted, this value
        # reverts to `serviceAccount:`emailid`` and the undeleted service account
        # retains the role in the binding. * `deleted:group:`emailid`?uid=`uniqueid``:
        # An email address (plus unique identifier) representing a Google group that has
        # been recently deleted. For example, `admins@example.com?uid=
        # 123456789012345678901`. If the group is recovered, this value reverts to `
        # group:`emailid`` and the recovered group retains the role in the binding. * `
        # domain:`domain``: The G Suite domain (primary) that represents all the users
        # of that domain. For example, `google.com` or `example.com`.
        # Corresponds to the JSON property `members`
        # @return [Array<String>]
        attr_accessor :members
      
        # Role that is assigned to the list of `members`, or principals. For example, `
        # roles/viewer`, `roles/editor`, or `roles/owner`.
        # Corresponds to the JSON property `role`
        # @return [String]
        attr_accessor :role
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @condition = args[:condition] if args.key?(:condition)
          @members = args[:members] if args.key?(:members)
          @role = args[:role] if args.key?(:role)
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
      
      # Compute resource requirements
      class ComputeResource
        include Google::Apis::Core::Hashable
      
        # Extra boot disk size in MiB for each task.
        # Corresponds to the JSON property `bootDiskMib`
        # @return [Fixnum]
        attr_accessor :boot_disk_mib
      
        # The milliCPU count.
        # Corresponds to the JSON property `cpuMilli`
        # @return [Fixnum]
        attr_accessor :cpu_milli
      
        # Memory in MiB.
        # Corresponds to the JSON property `memoryMib`
        # @return [Fixnum]
        attr_accessor :memory_mib
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @boot_disk_mib = args[:boot_disk_mib] if args.key?(:boot_disk_mib)
          @cpu_milli = args[:cpu_milli] if args.key?(:cpu_milli)
          @memory_mib = args[:memory_mib] if args.key?(:memory_mib)
        end
      end
      
      # Container runnable.
      class Container
        include Google::Apis::Core::Hashable
      
        # If set to true, external network access to and from container will be blocked.
        # The container will use the default internal network 'goog-internal'.
        # Corresponds to the JSON property `blockExternalNetwork`
        # @return [Boolean]
        attr_accessor :block_external_network
        alias_method :block_external_network?, :block_external_network
      
        # Overrides the `CMD` specified in the container. If there is an ENTRYPOINT (
        # either in the container image or with the entrypoint field below) then
        # commands are appended as arguments to the ENTRYPOINT.
        # Corresponds to the JSON property `commands`
        # @return [Array<String>]
        attr_accessor :commands
      
        # Overrides the `ENTRYPOINT` specified in the container.
        # Corresponds to the JSON property `entrypoint`
        # @return [String]
        attr_accessor :entrypoint
      
        # The URI to pull the container image from.
        # Corresponds to the JSON property `imageUri`
        # @return [String]
        attr_accessor :image_uri
      
        # Arbitrary additional options to include in the "docker run" command when
        # running this container, e.g. "--network host".
        # Corresponds to the JSON property `options`
        # @return [String]
        attr_accessor :options
      
        # Optional password for logging in to a docker registry. If password matches `
        # projects/*/secrets/*/versions/*` then Batch will read the password from the
        # Secret Manager;
        # Corresponds to the JSON property `password`
        # @return [String]
        attr_accessor :password
      
        # Optional username for logging in to a docker registry. If username matches `
        # projects/*/secrets/*/versions/*` then Batch will read the username from the
        # Secret Manager.
        # Corresponds to the JSON property `username`
        # @return [String]
        attr_accessor :username
      
        # Volumes to mount (bind mount) from the host machine files or directories into
        # the container, formatted to match docker run's --volume option, e.g. /foo:/bar,
        # or /foo:/bar:ro
        # Corresponds to the JSON property `volumes`
        # @return [Array<String>]
        attr_accessor :volumes
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @block_external_network = args[:block_external_network] if args.key?(:block_external_network)
          @commands = args[:commands] if args.key?(:commands)
          @entrypoint = args[:entrypoint] if args.key?(:entrypoint)
          @image_uri = args[:image_uri] if args.key?(:image_uri)
          @options = args[:options] if args.key?(:options)
          @password = args[:password] if args.key?(:password)
          @username = args[:username] if args.key?(:username)
          @volumes = args[:volumes] if args.key?(:volumes)
        end
      end
      
      # A new persistent disk or a local ssd. A VM can only have one local SSD setting
      # but multiple local SSD partitions. https://cloud.google.com/compute/docs/disks#
      # pdspecs. https://cloud.google.com/compute/docs/disks#localssds.
      class Disk
        include Google::Apis::Core::Hashable
      
        # Local SSDs are available through both "SCSI" and "NVMe" interfaces. If not
        # indicated, "NVMe" will be the default one for local ssds. We only support "
        # SCSI" for persistent disks now.
        # Corresponds to the JSON property `diskInterface`
        # @return [String]
        attr_accessor :disk_interface
      
        # Name of a public or custom image used as the data source. For example, the
        # following are all valid URLs: (1) Specify the image by its family name:
        # projects/`project`/global/images/family/`image_family` (2) Specify the image
        # version: projects/`project`/global/images/`image_version` You can also use
        # Batch customized image in short names. The following image values are
        # supported for a boot disk: "batch-debian": use Batch Debian images. "batch-
        # centos": use Batch CentOS images. "batch-cos": use Batch Container-Optimized
        # images.
        # Corresponds to the JSON property `image`
        # @return [String]
        attr_accessor :image
      
        # Disk size in GB. For persistent disk, this field is ignored if `data_source`
        # is `image` or `snapshot`. For local SSD, size_gb should be a multiple of 375GB,
        # otherwise, the final size will be the next greater multiple of 375 GB. For
        # boot disk, Batch will calculate the boot disk size based on source image and
        # task requirements if you do not speicify the size. If both this field and the
        # boot_disk_mib field in task spec's compute_resource are defined, Batch will
        # only honor this field.
        # Corresponds to the JSON property `sizeGb`
        # @return [Fixnum]
        attr_accessor :size_gb
      
        # Name of a snapshot used as the data source.
        # Corresponds to the JSON property `snapshot`
        # @return [String]
        attr_accessor :snapshot
      
        # Disk type as shown in `gcloud compute disk-types list`. For example, local SSD
        # uses type "local-ssd". Persistent disks and boot disks use "pd-balanced", "pd-
        # extreme", "pd-ssd" or "pd-standard".
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @disk_interface = args[:disk_interface] if args.key?(:disk_interface)
          @image = args[:image] if args.key?(:image)
          @size_gb = args[:size_gb] if args.key?(:size_gb)
          @snapshot = args[:snapshot] if args.key?(:snapshot)
          @type = args[:type] if args.key?(:type)
        end
      end
      
      # A generic empty message that you can re-use to avoid defining duplicated empty
      # messages in your APIs. A typical example is to use it as the request or the
      # response type of an API method. For instance: service Foo ` rpc Bar(google.
      # protobuf.Empty) returns (google.protobuf.Empty); `
      class Empty
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # An Environment describes a collection of environment variables to set when
      # executing Tasks.
      class Environment
        include Google::Apis::Core::Hashable
      
        # An encrypted JSON dictionary where the key/value pairs correspond to
        # environment variable names and their values.
        # Corresponds to the JSON property `encryptedVariables`
        # @return [Google::Apis::BatchV1::KmsEnvMap]
        attr_accessor :encrypted_variables
      
        # A map of environment variable names to Secret Manager secret names. The VM
        # will access the named secrets to set the value of each environment variable.
        # Corresponds to the JSON property `secretVariables`
        # @return [Hash<String,String>]
        attr_accessor :secret_variables
      
        # A map of environment variable names to values.
        # Corresponds to the JSON property `variables`
        # @return [Hash<String,String>]
        attr_accessor :variables
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @encrypted_variables = args[:encrypted_variables] if args.key?(:encrypted_variables)
          @secret_variables = args[:secret_variables] if args.key?(:secret_variables)
          @variables = args[:variables] if args.key?(:variables)
        end
      end
      
      # Represents a textual expression in the Common Expression Language (CEL) syntax.
      # CEL is a C-like expression language. The syntax and semantics of CEL are
      # documented at https://github.com/google/cel-spec. Example (Comparison): title:
      # "Summary size limit" description: "Determines if a summary is less than 100
      # chars" expression: "document.summary.size() < 100" Example (Equality): title: "
      # Requestor is owner" description: "Determines if requestor is the document
      # owner" expression: "document.owner == request.auth.claims.email" Example (
      # Logic): title: "Public documents" description: "Determine whether the document
      # should be publicly visible" expression: "document.type != 'private' &&
      # document.type != 'internal'" Example (Data Manipulation): title: "Notification
      # string" description: "Create a notification string with a timestamp."
      # expression: "'New message received at ' + string(document.create_time)" The
      # exact variables and functions that may be referenced within an expression are
      # determined by the service that evaluates it. See the service documentation for
      # additional information.
      class Expr
        include Google::Apis::Core::Hashable
      
        # Optional. Description of the expression. This is a longer text which describes
        # the expression, e.g. when hovered over it in a UI.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # Textual representation of an expression in Common Expression Language syntax.
        # Corresponds to the JSON property `expression`
        # @return [String]
        attr_accessor :expression
      
        # Optional. String indicating the location of the expression for error reporting,
        # e.g. a file name and a position in the file.
        # Corresponds to the JSON property `location`
        # @return [String]
        attr_accessor :location
      
        # Optional. Title for the expression, i.e. a short string describing its purpose.
        # This can be used e.g. in UIs which allow to enter the expression.
        # Corresponds to the JSON property `title`
        # @return [String]
        attr_accessor :title
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @description = args[:description] if args.key?(:description)
          @expression = args[:expression] if args.key?(:expression)
          @location = args[:location] if args.key?(:location)
          @title = args[:title] if args.key?(:title)
        end
      end
      
      # Represents a Google Cloud Storage volume.
      class Gcs
        include Google::Apis::Core::Hashable
      
        # Remote path, either a bucket name or a subdirectory of a bucket, e.g.:
        # bucket_name, bucket_name/subdirectory/
        # Corresponds to the JSON property `remotePath`
        # @return [String]
        attr_accessor :remote_path
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @remote_path = args[:remote_path] if args.key?(:remote_path)
        end
      end
      
      # InstancePolicy describes an instance type and resources attached to each VM
      # created by this InstancePolicy.
      class InstancePolicy
        include Google::Apis::Core::Hashable
      
        # The accelerators attached to each VM instance.
        # Corresponds to the JSON property `accelerators`
        # @return [Array<Google::Apis::BatchV1::Accelerator>]
        attr_accessor :accelerators
      
        # A new persistent disk or a local ssd. A VM can only have one local SSD setting
        # but multiple local SSD partitions. https://cloud.google.com/compute/docs/disks#
        # pdspecs. https://cloud.google.com/compute/docs/disks#localssds.
        # Corresponds to the JSON property `bootDisk`
        # @return [Google::Apis::BatchV1::Disk]
        attr_accessor :boot_disk
      
        # Non-boot disks to be attached for each VM created by this InstancePolicy. New
        # disks will be deleted when the VM is deleted.
        # Corresponds to the JSON property `disks`
        # @return [Array<Google::Apis::BatchV1::AttachedDisk>]
        attr_accessor :disks
      
        # The Compute Engine machine type.
        # Corresponds to the JSON property `machineType`
        # @return [String]
        attr_accessor :machine_type
      
        # The minimum CPU platform. See `https://cloud.google.com/compute/docs/instances/
        # specify-min-cpu-platform`. Not yet implemented.
        # Corresponds to the JSON property `minCpuPlatform`
        # @return [String]
        attr_accessor :min_cpu_platform
      
        # The provisioning model.
        # Corresponds to the JSON property `provisioningModel`
        # @return [String]
        attr_accessor :provisioning_model
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @accelerators = args[:accelerators] if args.key?(:accelerators)
          @boot_disk = args[:boot_disk] if args.key?(:boot_disk)
          @disks = args[:disks] if args.key?(:disks)
          @machine_type = args[:machine_type] if args.key?(:machine_type)
          @min_cpu_platform = args[:min_cpu_platform] if args.key?(:min_cpu_platform)
          @provisioning_model = args[:provisioning_model] if args.key?(:provisioning_model)
        end
      end
      
      # Either an InstancePolicy or an instance template.
      class InstancePolicyOrTemplate
        include Google::Apis::Core::Hashable
      
        # Set this field true if users want Batch to help fetch drivers from a third
        # party location and install them for GPUs specified in policy.accelerators or
        # instance_template on their behalf. Default is false.
        # Corresponds to the JSON property `installGpuDrivers`
        # @return [Boolean]
        attr_accessor :install_gpu_drivers
        alias_method :install_gpu_drivers?, :install_gpu_drivers
      
        # Name of an instance template used to create VMs. Named the field as '
        # instance_template' instead of 'template' to avoid c++ keyword conflict.
        # Corresponds to the JSON property `instanceTemplate`
        # @return [String]
        attr_accessor :instance_template
      
        # InstancePolicy describes an instance type and resources attached to each VM
        # created by this InstancePolicy.
        # Corresponds to the JSON property `policy`
        # @return [Google::Apis::BatchV1::InstancePolicy]
        attr_accessor :policy
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @install_gpu_drivers = args[:install_gpu_drivers] if args.key?(:install_gpu_drivers)
          @instance_template = args[:instance_template] if args.key?(:instance_template)
          @policy = args[:policy] if args.key?(:policy)
        end
      end
      
      # VM instance status.
      class InstanceStatus
        include Google::Apis::Core::Hashable
      
        # The Compute Engine machine type.
        # Corresponds to the JSON property `machineType`
        # @return [String]
        attr_accessor :machine_type
      
        # The VM instance provisioning model.
        # Corresponds to the JSON property `provisioningModel`
        # @return [String]
        attr_accessor :provisioning_model
      
        # The max number of tasks can be assigned to this instance type.
        # Corresponds to the JSON property `taskPack`
        # @return [Fixnum]
        attr_accessor :task_pack
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @machine_type = args[:machine_type] if args.key?(:machine_type)
          @provisioning_model = args[:provisioning_model] if args.key?(:provisioning_model)
          @task_pack = args[:task_pack] if args.key?(:task_pack)
        end
      end
      
      # The Cloud Batch Job description.
      class Job
        include Google::Apis::Core::Hashable
      
        # A Job's resource allocation policy describes when, where, and how compute
        # resources should be allocated for the Job.
        # Corresponds to the JSON property `allocationPolicy`
        # @return [Google::Apis::BatchV1::AllocationPolicy]
        attr_accessor :allocation_policy
      
        # Output only. When the Job was created.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Labels for the Job. Labels could be user provided or system generated. For
        # example, "labels": ` "department": "finance", "environment": "test" ` You can
        # assign up to 64 labels. [Google Compute Engine label restrictions](https://
        # cloud.google.com/compute/docs/labeling-resources#restrictions) apply. Label
        # names that start with "goog-" or "google-" are reserved.
        # Corresponds to the JSON property `labels`
        # @return [Hash<String,String>]
        attr_accessor :labels
      
        # LogsPolicy describes how outputs from a Job's Tasks (stdout/stderr) will be
        # preserved.
        # Corresponds to the JSON property `logsPolicy`
        # @return [Google::Apis::BatchV1::LogsPolicy]
        attr_accessor :logs_policy
      
        # Output only. Job name. For example: "projects/123456/locations/us-central1/
        # jobs/job01".
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Notification configurations.
        # Corresponds to the JSON property `notifications`
        # @return [Array<Google::Apis::BatchV1::JobNotification>]
        attr_accessor :notifications
      
        # Priority of the Job. The valid value range is [0, 100). A job with higher
        # priority value is more likely to run earlier if all other requirements are
        # satisfied.
        # Corresponds to the JSON property `priority`
        # @return [Fixnum]
        attr_accessor :priority
      
        # Job status.
        # Corresponds to the JSON property `status`
        # @return [Google::Apis::BatchV1::JobStatus]
        attr_accessor :status
      
        # Required. TaskGroups in the Job. Only one TaskGroup is supported now.
        # Corresponds to the JSON property `taskGroups`
        # @return [Array<Google::Apis::BatchV1::TaskGroup>]
        attr_accessor :task_groups
      
        # Output only. A system generated unique ID (in UUID4 format) for the Job.
        # Corresponds to the JSON property `uid`
        # @return [String]
        attr_accessor :uid
      
        # Output only. The last time the Job was updated.
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @allocation_policy = args[:allocation_policy] if args.key?(:allocation_policy)
          @create_time = args[:create_time] if args.key?(:create_time)
          @labels = args[:labels] if args.key?(:labels)
          @logs_policy = args[:logs_policy] if args.key?(:logs_policy)
          @name = args[:name] if args.key?(:name)
          @notifications = args[:notifications] if args.key?(:notifications)
          @priority = args[:priority] if args.key?(:priority)
          @status = args[:status] if args.key?(:status)
          @task_groups = args[:task_groups] if args.key?(:task_groups)
          @uid = args[:uid] if args.key?(:uid)
          @update_time = args[:update_time] if args.key?(:update_time)
        end
      end
      
      # Notification configurations.
      class JobNotification
        include Google::Apis::Core::Hashable
      
        # Message details. Describe the attribute that a message should have. Without
        # specified message attributes, no message will be sent by default.
        # Corresponds to the JSON property `message`
        # @return [Google::Apis::BatchV1::Message]
        attr_accessor :message
      
        # The Pub/Sub topic where notifications like the job state changes will be
        # published. This topic exist in the same project as the job and billings will
        # be charged to this project. If not specified, no Pub/Sub messages will be sent.
        # Topic format: `projects/`project`/topics/`topic``.
        # Corresponds to the JSON property `pubsubTopic`
        # @return [String]
        attr_accessor :pubsub_topic
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @message = args[:message] if args.key?(:message)
          @pubsub_topic = args[:pubsub_topic] if args.key?(:pubsub_topic)
        end
      end
      
      # Job status.
      class JobStatus
        include Google::Apis::Core::Hashable
      
        # The duration of time that the Job spent in status RUNNING.
        # Corresponds to the JSON property `runDuration`
        # @return [String]
        attr_accessor :run_duration
      
        # Job state
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        # Job status events
        # Corresponds to the JSON property `statusEvents`
        # @return [Array<Google::Apis::BatchV1::StatusEvent>]
        attr_accessor :status_events
      
        # Aggregated task status for each TaskGroup in the Job. The map key is TaskGroup
        # ID.
        # Corresponds to the JSON property `taskGroups`
        # @return [Hash<String,Google::Apis::BatchV1::TaskGroupStatus>]
        attr_accessor :task_groups
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @run_duration = args[:run_duration] if args.key?(:run_duration)
          @state = args[:state] if args.key?(:state)
          @status_events = args[:status_events] if args.key?(:status_events)
          @task_groups = args[:task_groups] if args.key?(:task_groups)
        end
      end
      
      # 
      class KmsEnvMap
        include Google::Apis::Core::Hashable
      
        # The value of the cipherText response from the `encrypt` method.
        # Corresponds to the JSON property `cipherText`
        # @return [String]
        attr_accessor :cipher_text
      
        # The name of the KMS key that will be used to decrypt the cipher text.
        # Corresponds to the JSON property `keyName`
        # @return [String]
        attr_accessor :key_name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @cipher_text = args[:cipher_text] if args.key?(:cipher_text)
          @key_name = args[:key_name] if args.key?(:key_name)
        end
      end
      
      # LifecyclePolicy describes how to deal with task failures based on different
      # conditions.
      class LifecyclePolicy
        include Google::Apis::Core::Hashable
      
        # Action to execute when ActionCondition is true.
        # Corresponds to the JSON property `action`
        # @return [String]
        attr_accessor :action
      
        # Conditions for actions to deal with task failures.
        # Corresponds to the JSON property `actionCondition`
        # @return [Google::Apis::BatchV1::ActionCondition]
        attr_accessor :action_condition
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @action = args[:action] if args.key?(:action)
          @action_condition = args[:action_condition] if args.key?(:action_condition)
        end
      end
      
      # ListJob Response.
      class ListJobsResponse
        include Google::Apis::Core::Hashable
      
        # Jobs.
        # Corresponds to the JSON property `jobs`
        # @return [Array<Google::Apis::BatchV1::Job>]
        attr_accessor :jobs
      
        # Next page token.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # Locations that could not be reached.
        # Corresponds to the JSON property `unreachable`
        # @return [Array<String>]
        attr_accessor :unreachable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @jobs = args[:jobs] if args.key?(:jobs)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @unreachable = args[:unreachable] if args.key?(:unreachable)
        end
      end
      
      # The response message for Locations.ListLocations.
      class ListLocationsResponse
        include Google::Apis::Core::Hashable
      
        # A list of locations that matches the specified filter in the request.
        # Corresponds to the JSON property `locations`
        # @return [Array<Google::Apis::BatchV1::Location>]
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
      
      # The response message for Operations.ListOperations.
      class ListOperationsResponse
        include Google::Apis::Core::Hashable
      
        # The standard List next-page token.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # A list of operations that matches the specified filter in the request.
        # Corresponds to the JSON property `operations`
        # @return [Array<Google::Apis::BatchV1::Operation>]
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
      
      # ListTasks Response.
      class ListTasksResponse
        include Google::Apis::Core::Hashable
      
        # Next page token.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # Tasks.
        # Corresponds to the JSON property `tasks`
        # @return [Array<Google::Apis::BatchV1::Task>]
        attr_accessor :tasks
      
        # Locations that could not be reached.
        # Corresponds to the JSON property `unreachable`
        # @return [Array<String>]
        attr_accessor :unreachable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @tasks = args[:tasks] if args.key?(:tasks)
          @unreachable = args[:unreachable] if args.key?(:unreachable)
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
      
      # 
      class LocationPolicy
        include Google::Apis::Core::Hashable
      
        # A list of allowed location names represented by internal URLs. Each location
        # can be a region or a zone. Only one region or multiple zones in one region is
        # supported now. For example, ["regions/us-central1"] allow VMs in any zones in
        # region us-central1. ["zones/us-central1-a", "zones/us-central1-c"] only allow
        # VMs in zones us-central1-a and us-central1-c. All locations end up in
        # different regions would cause errors. For example, ["regions/us-central1", "
        # zones/us-central1-a", "zones/us-central1-b", "zones/us-west1-a"] contains 2
        # regions "us-central1" and "us-west1". An error is expected in this case.
        # Corresponds to the JSON property `allowedLocations`
        # @return [Array<String>]
        attr_accessor :allowed_locations
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @allowed_locations = args[:allowed_locations] if args.key?(:allowed_locations)
        end
      end
      
      # LogsPolicy describes how outputs from a Job's Tasks (stdout/stderr) will be
      # preserved.
      class LogsPolicy
        include Google::Apis::Core::Hashable
      
        # Where logs should be saved.
        # Corresponds to the JSON property `destination`
        # @return [String]
        attr_accessor :destination
      
        # The path to which logs are saved when the destination = PATH. This can be a
        # local file path on the VM, or under the mount point of a Persistent Disk or
        # Filestore, or a Cloud Storage path.
        # Corresponds to the JSON property `logsPath`
        # @return [String]
        attr_accessor :logs_path
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @destination = args[:destination] if args.key?(:destination)
          @logs_path = args[:logs_path] if args.key?(:logs_path)
        end
      end
      
      # Message details. Describe the attribute that a message should have. Without
      # specified message attributes, no message will be sent by default.
      class Message
        include Google::Apis::Core::Hashable
      
        # The new job state.
        # Corresponds to the JSON property `newJobState`
        # @return [String]
        attr_accessor :new_job_state
      
        # The new task state.
        # Corresponds to the JSON property `newTaskState`
        # @return [String]
        attr_accessor :new_task_state
      
        # The message type.
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @new_job_state = args[:new_job_state] if args.key?(:new_job_state)
          @new_task_state = args[:new_task_state] if args.key?(:new_task_state)
          @type = args[:type] if args.key?(:type)
        end
      end
      
      # Represents an NFS volume.
      class Nfs
        include Google::Apis::Core::Hashable
      
        # Remote source path exported from the NFS, e.g., "/share".
        # Corresponds to the JSON property `remotePath`
        # @return [String]
        attr_accessor :remote_path
      
        # The IP address of the NFS.
        # Corresponds to the JSON property `server`
        # @return [String]
        attr_accessor :server
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @remote_path = args[:remote_path] if args.key?(:remote_path)
          @server = args[:server] if args.key?(:server)
        end
      end
      
      # A network interface.
      class NetworkInterface
        include Google::Apis::Core::Hashable
      
        # The URL of an existing network resource. You can specify the network as a full
        # or partial URL. For example, the following are all valid URLs: https://www.
        # googleapis.com/compute/v1/projects/`project`/global/networks/`network`
        # projects/`project`/global/networks/`network` global/networks/`network`
        # Corresponds to the JSON property `network`
        # @return [String]
        attr_accessor :network
      
        # Default is false (with an external IP address). Required if no external public
        # IP address is attached to the VM. If no external public IP address, additional
        # configuration is required to allow the VM to access Google Services. See https:
        # //cloud.google.com/vpc/docs/configure-private-google-access and https://cloud.
        # google.com/nat/docs/gce-example#create-nat for more information.
        # Corresponds to the JSON property `noExternalIpAddress`
        # @return [Boolean]
        attr_accessor :no_external_ip_address
        alias_method :no_external_ip_address?, :no_external_ip_address
      
        # The URL of an existing subnetwork resource in the network. You can specify the
        # subnetwork as a full or partial URL. For example, the following are all valid
        # URLs: https://www.googleapis.com/compute/v1/projects/`project`/regions/`region`
        # /subnetworks/`subnetwork` projects/`project`/regions/`region`/subnetworks/`
        # subnetwork` regions/`region`/subnetworks/`subnetwork`
        # Corresponds to the JSON property `subnetwork`
        # @return [String]
        attr_accessor :subnetwork
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @network = args[:network] if args.key?(:network)
          @no_external_ip_address = args[:no_external_ip_address] if args.key?(:no_external_ip_address)
          @subnetwork = args[:subnetwork] if args.key?(:subnetwork)
        end
      end
      
      # NetworkPolicy describes VM instance network configurations.
      class NetworkPolicy
        include Google::Apis::Core::Hashable
      
        # Network configurations.
        # Corresponds to the JSON property `networkInterfaces`
        # @return [Array<Google::Apis::BatchV1::NetworkInterface>]
        attr_accessor :network_interfaces
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @network_interfaces = args[:network_interfaces] if args.key?(:network_interfaces)
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
        # @return [Google::Apis::BatchV1::Status]
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
      
      # An Identity and Access Management (IAM) policy, which specifies access
      # controls for Google Cloud resources. A `Policy` is a collection of `bindings`.
      # A `binding` binds one or more `members`, or principals, to a single `role`.
      # Principals can be user accounts, service accounts, Google groups, and domains (
      # such as G Suite). A `role` is a named list of permissions; each `role` can be
      # an IAM predefined role or a user-created custom role. For some types of Google
      # Cloud resources, a `binding` can also specify a `condition`, which is a
      # logical expression that allows access to a resource only if the expression
      # evaluates to `true`. A condition can add constraints based on attributes of
      # the request, the resource, or both. To learn which resources support
      # conditions in their IAM policies, see the [IAM documentation](https://cloud.
      # google.com/iam/help/conditions/resource-policies). **JSON example:** ` "
      # bindings": [ ` "role": "roles/resourcemanager.organizationAdmin", "members": [
      # "user:mike@example.com", "group:admins@example.com", "domain:google.com", "
      # serviceAccount:my-project-id@appspot.gserviceaccount.com" ] `, ` "role": "
      # roles/resourcemanager.organizationViewer", "members": [ "user:eve@example.com"
      # ], "condition": ` "title": "expirable access", "description": "Does not grant
      # access after Sep 2020", "expression": "request.time < timestamp('2020-10-01T00:
      # 00:00.000Z')", ` ` ], "etag": "BwWWja0YfJA=", "version": 3 ` **YAML example:**
      # bindings: - members: - user:mike@example.com - group:admins@example.com -
      # domain:google.com - serviceAccount:my-project-id@appspot.gserviceaccount.com
      # role: roles/resourcemanager.organizationAdmin - members: - user:eve@example.
      # com role: roles/resourcemanager.organizationViewer condition: title: expirable
      # access description: Does not grant access after Sep 2020 expression: request.
      # time < timestamp('2020-10-01T00:00:00.000Z') etag: BwWWja0YfJA= version: 3 For
      # a description of IAM and its features, see the [IAM documentation](https://
      # cloud.google.com/iam/docs/).
      class Policy
        include Google::Apis::Core::Hashable
      
        # Specifies cloud audit logging configuration for this policy.
        # Corresponds to the JSON property `auditConfigs`
        # @return [Array<Google::Apis::BatchV1::AuditConfig>]
        attr_accessor :audit_configs
      
        # Associates a list of `members`, or principals, with a `role`. Optionally, may
        # specify a `condition` that determines how and when the `bindings` are applied.
        # Each of the `bindings` must contain at least one principal. The `bindings` in
        # a `Policy` can refer to up to 1,500 principals; up to 250 of these principals
        # can be Google groups. Each occurrence of a principal counts towards these
        # limits. For example, if the `bindings` grant 50 different roles to `user:alice@
        # example.com`, and not to any other principal, then you can add another 1,450
        # principals to the `bindings` in the `Policy`.
        # Corresponds to the JSON property `bindings`
        # @return [Array<Google::Apis::BatchV1::Binding>]
        attr_accessor :bindings
      
        # `etag` is used for optimistic concurrency control as a way to help prevent
        # simultaneous updates of a policy from overwriting each other. It is strongly
        # suggested that systems make use of the `etag` in the read-modify-write cycle
        # to perform policy updates in order to avoid race conditions: An `etag` is
        # returned in the response to `getIamPolicy`, and systems are expected to put
        # that etag in the request to `setIamPolicy` to ensure that their change will be
        # applied to the same version of the policy. **Important:** If you use IAM
        # Conditions, you must include the `etag` field whenever you call `setIamPolicy`.
        # If you omit this field, then IAM allows you to overwrite a version `3` policy
        # with a version `1` policy, and all of the conditions in the version `3` policy
        # are lost.
        # Corresponds to the JSON property `etag`
        # NOTE: Values are automatically base64 encoded/decoded in the client library.
        # @return [String]
        attr_accessor :etag
      
        # Specifies the format of the policy. Valid values are `0`, `1`, and `3`.
        # Requests that specify an invalid value are rejected. Any operation that
        # affects conditional role bindings must specify version `3`. This requirement
        # applies to the following operations: * Getting a policy that includes a
        # conditional role binding * Adding a conditional role binding to a policy *
        # Changing a conditional role binding in a policy * Removing any role binding,
        # with or without a condition, from a policy that includes conditions **
        # Important:** If you use IAM Conditions, you must include the `etag` field
        # whenever you call `setIamPolicy`. If you omit this field, then IAM allows you
        # to overwrite a version `3` policy with a version `1` policy, and all of the
        # conditions in the version `3` policy are lost. If a policy does not include
        # any conditions, operations on that policy may specify any valid version or
        # leave the field unset. To learn which resources support conditions in their
        # IAM policies, see the [IAM documentation](https://cloud.google.com/iam/help/
        # conditions/resource-policies).
        # Corresponds to the JSON property `version`
        # @return [Fixnum]
        attr_accessor :version
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @audit_configs = args[:audit_configs] if args.key?(:audit_configs)
          @bindings = args[:bindings] if args.key?(:bindings)
          @etag = args[:etag] if args.key?(:etag)
          @version = args[:version] if args.key?(:version)
        end
      end
      
      # Request to report agent's state. The Request itself implies the agent is
      # healthy.
      class ReportAgentStateRequest
        include Google::Apis::Core::Hashable
      
        # VM Agent Info.
        # Corresponds to the JSON property `agentInfo`
        # @return [Google::Apis::BatchV1::AgentInfo]
        attr_accessor :agent_info
      
        # VM timing information
        # Corresponds to the JSON property `agentTimingInfo`
        # @return [Google::Apis::BatchV1::AgentTimingInfo]
        attr_accessor :agent_timing_info
      
        # VM Agent Metadata.
        # Corresponds to the JSON property `metadata`
        # @return [Google::Apis::BatchV1::AgentMetadata]
        attr_accessor :metadata
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @agent_info = args[:agent_info] if args.key?(:agent_info)
          @agent_timing_info = args[:agent_timing_info] if args.key?(:agent_timing_info)
          @metadata = args[:metadata] if args.key?(:metadata)
        end
      end
      
      # Response to ReportAgentStateRequest.
      class ReportAgentStateResponse
        include Google::Apis::Core::Hashable
      
        # Default report interval override
        # Corresponds to the JSON property `defaultReportInterval`
        # @return [String]
        attr_accessor :default_report_interval
      
        # Minimum report interval override
        # Corresponds to the JSON property `minReportInterval`
        # @return [String]
        attr_accessor :min_report_interval
      
        # Tasks assigned to the agent
        # Corresponds to the JSON property `tasks`
        # @return [Array<Google::Apis::BatchV1::AgentTask>]
        attr_accessor :tasks
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @default_report_interval = args[:default_report_interval] if args.key?(:default_report_interval)
          @min_report_interval = args[:min_report_interval] if args.key?(:min_report_interval)
          @tasks = args[:tasks] if args.key?(:tasks)
        end
      end
      
      # Runnable describes instructions for executing a specific script or container
      # as part of a Task.
      class Runnable
        include Google::Apis::Core::Hashable
      
        # By default, after a Runnable fails, no further Runnable are executed. This
        # flag indicates that this Runnable must be run even if the Task has already
        # failed. This is useful for Runnables that copy output files off of the VM or
        # for debugging. The always_run flag does not override the Task's overall
        # max_run_duration. If the max_run_duration has expired then no further
        # Runnables will execute, not even always_run Runnables.
        # Corresponds to the JSON property `alwaysRun`
        # @return [Boolean]
        attr_accessor :always_run
        alias_method :always_run?, :always_run
      
        # This flag allows a Runnable to continue running in the background while the
        # Task executes subsequent Runnables. This is useful to provide services to
        # other Runnables (or to provide debugging support tools like SSH servers).
        # Corresponds to the JSON property `background`
        # @return [Boolean]
        attr_accessor :background
        alias_method :background?, :background
      
        # Barrier runnable blocks until all tasks in a taskgroup reach it.
        # Corresponds to the JSON property `barrier`
        # @return [Google::Apis::BatchV1::Barrier]
        attr_accessor :barrier
      
        # Container runnable.
        # Corresponds to the JSON property `container`
        # @return [Google::Apis::BatchV1::Container]
        attr_accessor :container
      
        # An Environment describes a collection of environment variables to set when
        # executing Tasks.
        # Corresponds to the JSON property `environment`
        # @return [Google::Apis::BatchV1::Environment]
        attr_accessor :environment
      
        # Normally, a non-zero exit status causes the Task to fail. This flag allows
        # execution of other Runnables to continue instead.
        # Corresponds to the JSON property `ignoreExitStatus`
        # @return [Boolean]
        attr_accessor :ignore_exit_status
        alias_method :ignore_exit_status?, :ignore_exit_status
      
        # Script runnable.
        # Corresponds to the JSON property `script`
        # @return [Google::Apis::BatchV1::Script]
        attr_accessor :script
      
        # Timeout for this Runnable.
        # Corresponds to the JSON property `timeout`
        # @return [String]
        attr_accessor :timeout
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @always_run = args[:always_run] if args.key?(:always_run)
          @background = args[:background] if args.key?(:background)
          @barrier = args[:barrier] if args.key?(:barrier)
          @container = args[:container] if args.key?(:container)
          @environment = args[:environment] if args.key?(:environment)
          @ignore_exit_status = args[:ignore_exit_status] if args.key?(:ignore_exit_status)
          @script = args[:script] if args.key?(:script)
          @timeout = args[:timeout] if args.key?(:timeout)
        end
      end
      
      # Script runnable.
      class Script
        include Google::Apis::Core::Hashable
      
        # Script file path on the host VM.
        # Corresponds to the JSON property `path`
        # @return [String]
        attr_accessor :path
      
        # Shell script text.
        # Corresponds to the JSON property `text`
        # @return [String]
        attr_accessor :text
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @path = args[:path] if args.key?(:path)
          @text = args[:text] if args.key?(:text)
        end
      end
      
      # Carries information about a Google Cloud service account.
      class ServiceAccount
        include Google::Apis::Core::Hashable
      
        # Email address of the service account. If not specified, the default Compute
        # Engine service account for the project will be used. If instance template is
        # being used, the service account has to be specified in the instance template
        # and it has to match the email field here.
        # Corresponds to the JSON property `email`
        # @return [String]
        attr_accessor :email
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @email = args[:email] if args.key?(:email)
        end
      end
      
      # Request message for `SetIamPolicy` method.
      class SetIamPolicyRequest
        include Google::Apis::Core::Hashable
      
        # An Identity and Access Management (IAM) policy, which specifies access
        # controls for Google Cloud resources. A `Policy` is a collection of `bindings`.
        # A `binding` binds one or more `members`, or principals, to a single `role`.
        # Principals can be user accounts, service accounts, Google groups, and domains (
        # such as G Suite). A `role` is a named list of permissions; each `role` can be
        # an IAM predefined role or a user-created custom role. For some types of Google
        # Cloud resources, a `binding` can also specify a `condition`, which is a
        # logical expression that allows access to a resource only if the expression
        # evaluates to `true`. A condition can add constraints based on attributes of
        # the request, the resource, or both. To learn which resources support
        # conditions in their IAM policies, see the [IAM documentation](https://cloud.
        # google.com/iam/help/conditions/resource-policies). **JSON example:** ` "
        # bindings": [ ` "role": "roles/resourcemanager.organizationAdmin", "members": [
        # "user:mike@example.com", "group:admins@example.com", "domain:google.com", "
        # serviceAccount:my-project-id@appspot.gserviceaccount.com" ] `, ` "role": "
        # roles/resourcemanager.organizationViewer", "members": [ "user:eve@example.com"
        # ], "condition": ` "title": "expirable access", "description": "Does not grant
        # access after Sep 2020", "expression": "request.time < timestamp('2020-10-01T00:
        # 00:00.000Z')", ` ` ], "etag": "BwWWja0YfJA=", "version": 3 ` **YAML example:**
        # bindings: - members: - user:mike@example.com - group:admins@example.com -
        # domain:google.com - serviceAccount:my-project-id@appspot.gserviceaccount.com
        # role: roles/resourcemanager.organizationAdmin - members: - user:eve@example.
        # com role: roles/resourcemanager.organizationViewer condition: title: expirable
        # access description: Does not grant access after Sep 2020 expression: request.
        # time < timestamp('2020-10-01T00:00:00.000Z') etag: BwWWja0YfJA= version: 3 For
        # a description of IAM and its features, see the [IAM documentation](https://
        # cloud.google.com/iam/docs/).
        # Corresponds to the JSON property `policy`
        # @return [Google::Apis::BatchV1::Policy]
        attr_accessor :policy
      
        # OPTIONAL: A FieldMask specifying which fields of the policy to modify. Only
        # the fields in the mask will be modified. If no mask is provided, the following
        # default mask is used: `paths: "bindings, etag"`
        # Corresponds to the JSON property `updateMask`
        # @return [String]
        attr_accessor :update_mask
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @policy = args[:policy] if args.key?(:policy)
          @update_mask = args[:update_mask] if args.key?(:update_mask)
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
      
      # Status event
      class StatusEvent
        include Google::Apis::Core::Hashable
      
        # Description of the event.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # The time this event occurred.
        # Corresponds to the JSON property `eventTime`
        # @return [String]
        attr_accessor :event_time
      
        # This Task Execution field includes detail information for task execution
        # procedures, based on StatusEvent types.
        # Corresponds to the JSON property `taskExecution`
        # @return [Google::Apis::BatchV1::TaskExecution]
        attr_accessor :task_execution
      
        # Type of the event.
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @description = args[:description] if args.key?(:description)
          @event_time = args[:event_time] if args.key?(:event_time)
          @task_execution = args[:task_execution] if args.key?(:task_execution)
          @type = args[:type] if args.key?(:type)
        end
      end
      
      # A Cloud Batch task.
      class Task
        include Google::Apis::Core::Hashable
      
        # Task name. The name is generated from the parent TaskGroup name and 'id' field.
        # For example: "projects/123456/locations/us-west1/jobs/job01/taskGroups/
        # group01/tasks/task01".
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Status of a task
        # Corresponds to the JSON property `status`
        # @return [Google::Apis::BatchV1::TaskStatus]
        attr_accessor :status
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @name = args[:name] if args.key?(:name)
          @status = args[:status] if args.key?(:status)
        end
      end
      
      # This Task Execution field includes detail information for task execution
      # procedures, based on StatusEvent types.
      class TaskExecution
        include Google::Apis::Core::Hashable
      
        # When task is completed as the status of FAILED or SUCCEEDED, exit code is for
        # one task execution result, default is 0 as success.
        # Corresponds to the JSON property `exitCode`
        # @return [Fixnum]
        attr_accessor :exit_code
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @exit_code = args[:exit_code] if args.key?(:exit_code)
        end
      end
      
      # A TaskGroup contains one or multiple Tasks that share the same Runnable but
      # with different runtime parameters.
      class TaskGroup
        include Google::Apis::Core::Hashable
      
        # Output only. TaskGroup name. The system generates this field based on parent
        # Job name. For example: "projects/123456/locations/us-west1/jobs/job01/
        # taskGroups/group01".
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Max number of tasks that can run in parallel. Default to min(task_count, 1000).
        # Corresponds to the JSON property `parallelism`
        # @return [Fixnum]
        attr_accessor :parallelism
      
        # When true, Batch will configure SSH to allow passwordless login between VMs
        # running the Batch tasks in the same TaskGroup.
        # Corresponds to the JSON property `permissiveSsh`
        # @return [Boolean]
        attr_accessor :permissive_ssh
        alias_method :permissive_ssh?, :permissive_ssh
      
        # When true, Batch will populate a file with a list of all VMs assigned to the
        # TaskGroup and set the BATCH_HOSTS_FILE environment variable to the path of
        # that file. Defaults to false.
        # Corresponds to the JSON property `requireHostsFile`
        # @return [Boolean]
        attr_accessor :require_hosts_file
        alias_method :require_hosts_file?, :require_hosts_file
      
        # Number of Tasks in the TaskGroup. default is 1
        # Corresponds to the JSON property `taskCount`
        # @return [Fixnum]
        attr_accessor :task_count
      
        # Max number of tasks that can be run on a VM at the same time. If not specified,
        # the system will decide a value based on available compute resources on a VM
        # and task requirements.
        # Corresponds to the JSON property `taskCountPerNode`
        # @return [Fixnum]
        attr_accessor :task_count_per_node
      
        # An array of environment variable mappings, which are passed to Tasks with
        # matching indices. If task_environments is used then task_count should not be
        # specified in the request (and will be ignored). Task count will be the length
        # of task_environments. Tasks get a BATCH_TASK_INDEX and BATCH_TASK_COUNT
        # environment variable, in addition to any environment variables set in
        # task_environments, specifying the number of Tasks in the Task's parent
        # TaskGroup, and the specific Task's index in the TaskGroup (0 through
        # BATCH_TASK_COUNT - 1). task_environments supports up to 200 entries.
        # Corresponds to the JSON property `taskEnvironments`
        # @return [Array<Google::Apis::BatchV1::Environment>]
        attr_accessor :task_environments
      
        # Spec of a task
        # Corresponds to the JSON property `taskSpec`
        # @return [Google::Apis::BatchV1::TaskSpec]
        attr_accessor :task_spec
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @name = args[:name] if args.key?(:name)
          @parallelism = args[:parallelism] if args.key?(:parallelism)
          @permissive_ssh = args[:permissive_ssh] if args.key?(:permissive_ssh)
          @require_hosts_file = args[:require_hosts_file] if args.key?(:require_hosts_file)
          @task_count = args[:task_count] if args.key?(:task_count)
          @task_count_per_node = args[:task_count_per_node] if args.key?(:task_count_per_node)
          @task_environments = args[:task_environments] if args.key?(:task_environments)
          @task_spec = args[:task_spec] if args.key?(:task_spec)
        end
      end
      
      # Aggregated task status for a TaskGroup.
      class TaskGroupStatus
        include Google::Apis::Core::Hashable
      
        # Count of task in each state in the TaskGroup. The map key is task state name.
        # Corresponds to the JSON property `counts`
        # @return [Hash<String,Fixnum>]
        attr_accessor :counts
      
        # Status of instances allocated for the TaskGroup.
        # Corresponds to the JSON property `instances`
        # @return [Array<Google::Apis::BatchV1::InstanceStatus>]
        attr_accessor :instances
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @counts = args[:counts] if args.key?(:counts)
          @instances = args[:instances] if args.key?(:instances)
        end
      end
      
      # Spec of a task
      class TaskSpec
        include Google::Apis::Core::Hashable
      
        # Compute resource requirements
        # Corresponds to the JSON property `computeResource`
        # @return [Google::Apis::BatchV1::ComputeResource]
        attr_accessor :compute_resource
      
        # An Environment describes a collection of environment variables to set when
        # executing Tasks.
        # Corresponds to the JSON property `environment`
        # @return [Google::Apis::BatchV1::Environment]
        attr_accessor :environment
      
        # Deprecated: please use environment(non-plural) instead.
        # Corresponds to the JSON property `environments`
        # @return [Hash<String,String>]
        attr_accessor :environments
      
        # Lifecycle management schema when any task in a task group is failed. The valid
        # size of lifecycle policies are [0, 10]. For each lifecycle policy, when the
        # condition is met, the action in that policy will execute. If there are
        # multiple policies that the task execution result matches, we use the action
        # from the first matched policy. If task execution result does not meet with any
        # of the defined lifecycle policy, we consider it as the default policy. Default
        # policy means if the exit code is 0, exit task. If task ends with non-zero exit
        # code, retry the task with max_retry_count.
        # Corresponds to the JSON property `lifecyclePolicies`
        # @return [Array<Google::Apis::BatchV1::LifecyclePolicy>]
        attr_accessor :lifecycle_policies
      
        # Maximum number of retries on failures. The default, 0, which means never retry.
        # The valid value range is [0, 10].
        # Corresponds to the JSON property `maxRetryCount`
        # @return [Fixnum]
        attr_accessor :max_retry_count
      
        # Maximum duration the task should run. The task will be killed and marked as
        # FAILED if over this limit.
        # Corresponds to the JSON property `maxRunDuration`
        # @return [String]
        attr_accessor :max_run_duration
      
        # The sequence of scripts or containers to run for this Task. Each Task using
        # this TaskSpec executes its list of runnables in order. The Task succeeds if
        # all of its runnables either exit with a zero status or any that exit with a
        # non-zero status have the ignore_exit_status flag. Background runnables are
        # killed automatically (if they have not already exited) a short time after all
        # foreground runnables have completed. Even though this is likely to result in a
        # non-zero exit status for the background runnable, these automatic kills are
        # not treated as Task failures.
        # Corresponds to the JSON property `runnables`
        # @return [Array<Google::Apis::BatchV1::Runnable>]
        attr_accessor :runnables
      
        # Volumes to mount before running Tasks using this TaskSpec.
        # Corresponds to the JSON property `volumes`
        # @return [Array<Google::Apis::BatchV1::Volume>]
        attr_accessor :volumes
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @compute_resource = args[:compute_resource] if args.key?(:compute_resource)
          @environment = args[:environment] if args.key?(:environment)
          @environments = args[:environments] if args.key?(:environments)
          @lifecycle_policies = args[:lifecycle_policies] if args.key?(:lifecycle_policies)
          @max_retry_count = args[:max_retry_count] if args.key?(:max_retry_count)
          @max_run_duration = args[:max_run_duration] if args.key?(:max_run_duration)
          @runnables = args[:runnables] if args.key?(:runnables)
          @volumes = args[:volumes] if args.key?(:volumes)
        end
      end
      
      # Status of a task
      class TaskStatus
        include Google::Apis::Core::Hashable
      
        # Task state
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        # Detailed info about why the state is reached.
        # Corresponds to the JSON property `statusEvents`
        # @return [Array<Google::Apis::BatchV1::StatusEvent>]
        attr_accessor :status_events
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @state = args[:state] if args.key?(:state)
          @status_events = args[:status_events] if args.key?(:status_events)
        end
      end
      
      # Request message for `TestIamPermissions` method.
      class TestIamPermissionsRequest
        include Google::Apis::Core::Hashable
      
        # The set of permissions to check for the `resource`. Permissions with wildcards
        # (such as `*` or `storage.*`) are not allowed. For more information see [IAM
        # Overview](https://cloud.google.com/iam/docs/overview#permissions).
        # Corresponds to the JSON property `permissions`
        # @return [Array<String>]
        attr_accessor :permissions
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @permissions = args[:permissions] if args.key?(:permissions)
        end
      end
      
      # Response message for `TestIamPermissions` method.
      class TestIamPermissionsResponse
        include Google::Apis::Core::Hashable
      
        # A subset of `TestPermissionsRequest.permissions` that the caller is allowed.
        # Corresponds to the JSON property `permissions`
        # @return [Array<String>]
        attr_accessor :permissions
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @permissions = args[:permissions] if args.key?(:permissions)
        end
      end
      
      # Volume describes a volume and parameters for it to be mounted to a VM.
      class Volume
        include Google::Apis::Core::Hashable
      
        # Device name of an attached disk volume, which should align with a device_name
        # specified by job.allocation_policy.instances[0].policy.disks[i].device_name or
        # defined by the given instance template in job.allocation_policy.instances[0].
        # instance_template.
        # Corresponds to the JSON property `deviceName`
        # @return [String]
        attr_accessor :device_name
      
        # Represents a Google Cloud Storage volume.
        # Corresponds to the JSON property `gcs`
        # @return [Google::Apis::BatchV1::Gcs]
        attr_accessor :gcs
      
        # For Google Cloud Storage (GCS), mount options are the options supported by the
        # gcsfuse tool (https://github.com/GoogleCloudPlatform/gcsfuse). For existing
        # persistent disks, mount options provided by the mount command (https://man7.
        # org/linux/man-pages/man8/mount.8.html) except writing are supported. This is
        # due to restrictions of multi-writer mode (https://cloud.google.com/compute/
        # docs/disks/sharing-disks-between-vms). For other attached disks and Network
        # File System (NFS), mount options are these supported by the mount command (
        # https://man7.org/linux/man-pages/man8/mount.8.html).
        # Corresponds to the JSON property `mountOptions`
        # @return [Array<String>]
        attr_accessor :mount_options
      
        # The mount path for the volume, e.g. /mnt/disks/share.
        # Corresponds to the JSON property `mountPath`
        # @return [String]
        attr_accessor :mount_path
      
        # Represents an NFS volume.
        # Corresponds to the JSON property `nfs`
        # @return [Google::Apis::BatchV1::Nfs]
        attr_accessor :nfs
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @device_name = args[:device_name] if args.key?(:device_name)
          @gcs = args[:gcs] if args.key?(:gcs)
          @mount_options = args[:mount_options] if args.key?(:mount_options)
          @mount_path = args[:mount_path] if args.key?(:mount_path)
          @nfs = args[:nfs] if args.key?(:nfs)
        end
      end
    end
  end
end
