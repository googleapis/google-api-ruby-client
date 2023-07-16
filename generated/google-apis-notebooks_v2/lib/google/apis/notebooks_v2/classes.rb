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
      
      # An accelerator configuration for a VM instance Definition of a hardware
      # accelerator. Note that there is no check on `type` and `core_count`
      # combinations. TPUs are not supported. See [GPUs on Compute Engine](https://
      # cloud.google.com/compute/docs/gpus/#gpus-list) to find a valid combination.
      class AcceleratorConfig
        include Google::Apis::Core::Hashable
      
        # Optional. Count of cores of this accelerator.
        # Corresponds to the JSON property `coreCount`
        # @return [Fixnum]
        attr_accessor :core_count
      
        # Optional. Type of this accelerator.
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @core_count = args[:core_count] if args.key?(:core_count)
          @type = args[:type] if args.key?(:type)
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
        # @return [Google::Apis::NotebooksV2::Expr]
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
        # . * `domain:`domain``: The G Suite domain (primary) that represents all the
        # users of that domain. For example, `google.com` or `example.com`. * `deleted:
        # user:`emailid`?uid=`uniqueid``: An email address (plus unique identifier)
        # representing a user that has been recently deleted. For example, `alice@
        # example.com?uid=123456789012345678901`. If the user is recovered, this value
        # reverts to `user:`emailid`` and the recovered user retains the role in the
        # binding. * `deleted:serviceAccount:`emailid`?uid=`uniqueid``: An email address
        # (plus unique identifier) representing a service account that has been recently
        # deleted. For example, `my-other-app@appspot.gserviceaccount.com?uid=
        # 123456789012345678901`. If the service account is undeleted, this value
        # reverts to `serviceAccount:`emailid`` and the undeleted service account
        # retains the role in the binding. * `deleted:group:`emailid`?uid=`uniqueid``:
        # An email address (plus unique identifier) representing a Google group that has
        # been recently deleted. For example, `admins@example.com?uid=
        # 123456789012345678901`. If the group is recovered, this value reverts to `
        # group:`emailid`` and the recovered group retains the role in the binding.
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
      
      # The definition of a boot disk.
      class BootDisk
        include Google::Apis::Core::Hashable
      
        # Optional. Input only. Disk encryption method used on the boot and data disks,
        # defaults to GMEK.
        # Corresponds to the JSON property `diskEncryption`
        # @return [String]
        attr_accessor :disk_encryption
      
        # Optional. The size of the boot disk in GB attached to this instance, up to a
        # maximum of 64000 GB (64 TB). If not specified, this defaults to the
        # recommended value of 150GB.
        # Corresponds to the JSON property `diskSizeGb`
        # @return [Fixnum]
        attr_accessor :disk_size_gb
      
        # Optional. Indicates the type of the disk.
        # Corresponds to the JSON property `diskType`
        # @return [String]
        attr_accessor :disk_type
      
        # Optional. Input only. The KMS key used to encrypt the disks, only applicable
        # if disk_encryption is CMEK. Format: `projects/`project_id`/locations/`location`
        # /keyRings/`key_ring_id`/cryptoKeys/`key_id`` Learn more about using your own
        # encryption keys.
        # Corresponds to the JSON property `kmsKey`
        # @return [String]
        attr_accessor :kms_key
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @disk_encryption = args[:disk_encryption] if args.key?(:disk_encryption)
          @disk_size_gb = args[:disk_size_gb] if args.key?(:disk_size_gb)
          @disk_type = args[:disk_type] if args.key?(:disk_type)
          @kms_key = args[:kms_key] if args.key?(:kms_key)
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
      
      # Response for checking if a notebook instance is upgradeable.
      class CheckInstanceUpgradabilityResponse
        include Google::Apis::Core::Hashable
      
        # The new image self link this instance will be upgraded to if calling the
        # upgrade endpoint. This field will only be populated if field upgradeable is
        # true.
        # Corresponds to the JSON property `upgradeImage`
        # @return [String]
        attr_accessor :upgrade_image
      
        # Additional information about upgrade.
        # Corresponds to the JSON property `upgradeInfo`
        # @return [String]
        attr_accessor :upgrade_info
      
        # The version this instance will be upgraded to if calling the upgrade endpoint.
        # This field will only be populated if field upgradeable is true.
        # Corresponds to the JSON property `upgradeVersion`
        # @return [String]
        attr_accessor :upgrade_version
      
        # If an instance is upgradeable.
        # Corresponds to the JSON property `upgradeable`
        # @return [Boolean]
        attr_accessor :upgradeable
        alias_method :upgradeable?, :upgradeable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @upgrade_image = args[:upgrade_image] if args.key?(:upgrade_image)
          @upgrade_info = args[:upgrade_info] if args.key?(:upgrade_info)
          @upgrade_version = args[:upgrade_version] if args.key?(:upgrade_version)
          @upgradeable = args[:upgradeable] if args.key?(:upgradeable)
        end
      end
      
      # Definition of a container image for starting a notebook instance with the
      # environment installed in a container.
      class ContainerImage
        include Google::Apis::Core::Hashable
      
        # Required. The path to the container image repository. For example: `gcr.io/`
        # project_id`/`image_name``
        # Corresponds to the JSON property `repository`
        # @return [String]
        attr_accessor :repository
      
        # Optional. The tag of the container image. If not specified, this defaults to
        # the latest tag.
        # Corresponds to the JSON property `tag`
        # @return [String]
        attr_accessor :tag
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @repository = args[:repository] if args.key?(:repository)
          @tag = args[:tag] if args.key?(:tag)
        end
      end
      
      # An instance-attached disk resource.
      class DataDisk
        include Google::Apis::Core::Hashable
      
        # Optional. Input only. Disk encryption method used on the boot and data disks,
        # defaults to GMEK.
        # Corresponds to the JSON property `diskEncryption`
        # @return [String]
        attr_accessor :disk_encryption
      
        # Optional. The size of the disk in GB attached to this VM instance, up to a
        # maximum of 64000 GB (64 TB). If not specified, this defaults to 100.
        # Corresponds to the JSON property `diskSizeGb`
        # @return [Fixnum]
        attr_accessor :disk_size_gb
      
        # Optional. Input only. Indicates the type of the disk.
        # Corresponds to the JSON property `diskType`
        # @return [String]
        attr_accessor :disk_type
      
        # Optional. Input only. The KMS key used to encrypt the disks, only applicable
        # if disk_encryption is CMEK. Format: `projects/`project_id`/locations/`location`
        # /keyRings/`key_ring_id`/cryptoKeys/`key_id`` Learn more about using your own
        # encryption keys.
        # Corresponds to the JSON property `kmsKey`
        # @return [String]
        attr_accessor :kms_key
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @disk_encryption = args[:disk_encryption] if args.key?(:disk_encryption)
          @disk_size_gb = args[:disk_size_gb] if args.key?(:disk_size_gb)
          @disk_type = args[:disk_type] if args.key?(:disk_type)
          @kms_key = args[:kms_key] if args.key?(:kms_key)
        end
      end
      
      # Request for creating a notebook instance diagnostic file.
      class DiagnoseInstanceRequest
        include Google::Apis::Core::Hashable
      
        # Defines flags that are used to run the diagnostic tool
        # Corresponds to the JSON property `diagnosticConfig`
        # @return [Google::Apis::NotebooksV2::DiagnosticConfig]
        attr_accessor :diagnostic_config
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @diagnostic_config = args[:diagnostic_config] if args.key?(:diagnostic_config)
        end
      end
      
      # Defines flags that are used to run the diagnostic tool
      class DiagnosticConfig
        include Google::Apis::Core::Hashable
      
        # Optional. Enables flag to copy all `/home/jupyter` folder contents
        # Corresponds to the JSON property `enableCopyHomeFilesFlag`
        # @return [Boolean]
        attr_accessor :enable_copy_home_files_flag
        alias_method :enable_copy_home_files_flag?, :enable_copy_home_files_flag
      
        # Optional. Enables flag to capture packets from the instance for 30 seconds
        # Corresponds to the JSON property `enablePacketCaptureFlag`
        # @return [Boolean]
        attr_accessor :enable_packet_capture_flag
        alias_method :enable_packet_capture_flag?, :enable_packet_capture_flag
      
        # Optional. Enables flag to repair service for instance
        # Corresponds to the JSON property `enableRepairFlag`
        # @return [Boolean]
        attr_accessor :enable_repair_flag
        alias_method :enable_repair_flag?, :enable_repair_flag
      
        # Required. User Cloud Storage bucket location (REQUIRED). Must be formatted
        # with path prefix (`gs://$GCS_BUCKET`). Permissions: User Managed Notebooks: -
        # storage.buckets.writer: Must be given to the project's service account
        # attached to VM. Google Managed Notebooks: - storage.buckets.writer: Must be
        # given to the project's service account or user credentials attached to VM
        # depending on authentication mode. Cloud Storage bucket Log file will be
        # written to `gs://$GCS_BUCKET/$RELATIVE_PATH/$VM_DATE_$TIME.tar.gz`
        # Corresponds to the JSON property `gcsBucket`
        # @return [String]
        attr_accessor :gcs_bucket
      
        # Optional. Defines the relative storage path in the Cloud Storage bucket where
        # the diagnostic logs will be written: Default path will be the root directory
        # of the Cloud Storage bucket (`gs://$GCS_BUCKET/$DATE_$TIME.tar.gz`) Example of
        # full path where Log file will be written: `gs://$GCS_BUCKET/$RELATIVE_PATH/`
        # Corresponds to the JSON property `relativePath`
        # @return [String]
        attr_accessor :relative_path
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @enable_copy_home_files_flag = args[:enable_copy_home_files_flag] if args.key?(:enable_copy_home_files_flag)
          @enable_packet_capture_flag = args[:enable_packet_capture_flag] if args.key?(:enable_packet_capture_flag)
          @enable_repair_flag = args[:enable_repair_flag] if args.key?(:enable_repair_flag)
          @gcs_bucket = args[:gcs_bucket] if args.key?(:gcs_bucket)
          @relative_path = args[:relative_path] if args.key?(:relative_path)
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
      
      # The definition of an Event for a managed / semi-managed notebook instance.
      class Event
        include Google::Apis::Core::Hashable
      
        # Optional. Event details. This field is used to pass event information.
        # Corresponds to the JSON property `details`
        # @return [Hash<String,String>]
        attr_accessor :details
      
        # Optional. Event report time.
        # Corresponds to the JSON property `reportTime`
        # @return [String]
        attr_accessor :report_time
      
        # Optional. Event type.
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @details = args[:details] if args.key?(:details)
          @report_time = args[:report_time] if args.key?(:report_time)
          @type = args[:type] if args.key?(:type)
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
      
      # A GPU driver configuration
      class GpuDriverConfig
        include Google::Apis::Core::Hashable
      
        # Optional. Specify a custom Cloud Storage path where the GPU driver is stored.
        # If not specified, we'll automatically choose from official GPU drivers.
        # Corresponds to the JSON property `customGpuDriverPath`
        # @return [String]
        attr_accessor :custom_gpu_driver_path
      
        # Optional. Whether the end user authorizes Google Cloud to install GPU driver
        # on this VM instance. If this field is empty or set to false, the GPU driver
        # won't be installed. Only applicable to instances with GPUs.
        # Corresponds to the JSON property `enableGpuDriver`
        # @return [Boolean]
        attr_accessor :enable_gpu_driver
        alias_method :enable_gpu_driver?, :enable_gpu_driver
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @custom_gpu_driver_path = args[:custom_gpu_driver_path] if args.key?(:custom_gpu_driver_path)
          @enable_gpu_driver = args[:enable_gpu_driver] if args.key?(:enable_gpu_driver)
        end
      end
      
      # The definition of how to configure a VM instance outside of Resources and
      # Identity.
      class GceSetup
        include Google::Apis::Core::Hashable
      
        # Optional. The hardware accelerators used on this instance. If you use
        # accelerators, make sure that your configuration has [enough vCPUs and memory
        # to support the `machine_type` you have selected](https://cloud.google.com/
        # compute/docs/gpus/#gpus-list). Currently supports only one accelerator
        # configuration.
        # Corresponds to the JSON property `acceleratorConfigs`
        # @return [Array<Google::Apis::NotebooksV2::AcceleratorConfig>]
        attr_accessor :accelerator_configs
      
        # The definition of a boot disk.
        # Corresponds to the JSON property `bootDisk`
        # @return [Google::Apis::NotebooksV2::BootDisk]
        attr_accessor :boot_disk
      
        # Definition of a container image for starting a notebook instance with the
        # environment installed in a container.
        # Corresponds to the JSON property `containerImage`
        # @return [Google::Apis::NotebooksV2::ContainerImage]
        attr_accessor :container_image
      
        # Optional. Data disks attached to the VM instance. Currently supports only one
        # data disk.
        # Corresponds to the JSON property `dataDisks`
        # @return [Array<Google::Apis::NotebooksV2::DataDisk>]
        attr_accessor :data_disks
      
        # Optional. If true, no external IP will be assigned to this VM instance.
        # Corresponds to the JSON property `disablePublicIp`
        # @return [Boolean]
        attr_accessor :disable_public_ip
        alias_method :disable_public_ip?, :disable_public_ip
      
        # Optional. Flag to enable ip forwarding or not, default false/off. https://
        # cloud.google.com/vpc/docs/using-routes#canipforward
        # Corresponds to the JSON property `enableIpForwarding`
        # @return [Boolean]
        attr_accessor :enable_ip_forwarding
        alias_method :enable_ip_forwarding?, :enable_ip_forwarding
      
        # A GPU driver configuration
        # Corresponds to the JSON property `gpuDriverConfig`
        # @return [Google::Apis::NotebooksV2::GpuDriverConfig]
        attr_accessor :gpu_driver_config
      
        # Optional. The machine type of the VM instance. https://cloud.google.com/
        # compute/docs/machine-resource
        # Corresponds to the JSON property `machineType`
        # @return [String]
        attr_accessor :machine_type
      
        # Optional. Custom metadata to apply to this instance.
        # Corresponds to the JSON property `metadata`
        # @return [Hash<String,String>]
        attr_accessor :metadata
      
        # Optional. The network interfaces for the VM. Supports only one interface.
        # Corresponds to the JSON property `networkInterfaces`
        # @return [Array<Google::Apis::NotebooksV2::NetworkInterface>]
        attr_accessor :network_interfaces
      
        # Optional. The service account that serves as an identity for the VM instance.
        # Currently supports only one service account.
        # Corresponds to the JSON property `serviceAccounts`
        # @return [Array<Google::Apis::NotebooksV2::ServiceAccount>]
        attr_accessor :service_accounts
      
        # A set of Shielded Instance options. See [Images using supported Shielded VM
        # features](https://cloud.google.com/compute/docs/instances/modifying-shielded-
        # vm). Not all combinations are valid.
        # Corresponds to the JSON property `shieldedInstanceConfig`
        # @return [Google::Apis::NotebooksV2::ShieldedInstanceConfig]
        attr_accessor :shielded_instance_config
      
        # Optional. The Compute Engine tags to add to runtime (see [Tagging instances](
        # https://cloud.google.com/compute/docs/label-or-tag-resources#tags)).
        # Corresponds to the JSON property `tags`
        # @return [Array<String>]
        attr_accessor :tags
      
        # Definition of a custom Compute Engine virtual machine image for starting a
        # notebook instance with the environment installed directly on the VM.
        # Corresponds to the JSON property `vmImage`
        # @return [Google::Apis::NotebooksV2::VmImage]
        attr_accessor :vm_image
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @accelerator_configs = args[:accelerator_configs] if args.key?(:accelerator_configs)
          @boot_disk = args[:boot_disk] if args.key?(:boot_disk)
          @container_image = args[:container_image] if args.key?(:container_image)
          @data_disks = args[:data_disks] if args.key?(:data_disks)
          @disable_public_ip = args[:disable_public_ip] if args.key?(:disable_public_ip)
          @enable_ip_forwarding = args[:enable_ip_forwarding] if args.key?(:enable_ip_forwarding)
          @gpu_driver_config = args[:gpu_driver_config] if args.key?(:gpu_driver_config)
          @machine_type = args[:machine_type] if args.key?(:machine_type)
          @metadata = args[:metadata] if args.key?(:metadata)
          @network_interfaces = args[:network_interfaces] if args.key?(:network_interfaces)
          @service_accounts = args[:service_accounts] if args.key?(:service_accounts)
          @shielded_instance_config = args[:shielded_instance_config] if args.key?(:shielded_instance_config)
          @tags = args[:tags] if args.key?(:tags)
          @vm_image = args[:vm_image] if args.key?(:vm_image)
        end
      end
      
      # The definition of a notebook instance.
      class Instance
        include Google::Apis::Core::Hashable
      
        # Output only. Instance creation time.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Output only. Email address of entity that sent original CreateInstance request.
        # Corresponds to the JSON property `creator`
        # @return [String]
        attr_accessor :creator
      
        # Optional. If true, the notebook instance will not register with the proxy.
        # Corresponds to the JSON property `disableProxyAccess`
        # @return [Boolean]
        attr_accessor :disable_proxy_access
        alias_method :disable_proxy_access?, :disable_proxy_access
      
        # The definition of how to configure a VM instance outside of Resources and
        # Identity.
        # Corresponds to the JSON property `gceSetup`
        # @return [Google::Apis::NotebooksV2::GceSetup]
        attr_accessor :gce_setup
      
        # Output only. Additional information about instance health. Example: healthInfo"
        # : ` "docker_proxy_agent_status": "1", "docker_status": "1", "
        # jupyterlab_api_status": "-1", "jupyterlab_status": "-1", "updated": "2020-10-
        # 18 09:40:03.573409" `
        # Corresponds to the JSON property `healthInfo`
        # @return [Hash<String,String>]
        attr_accessor :health_info
      
        # Output only. Instance health_state.
        # Corresponds to the JSON property `healthState`
        # @return [String]
        attr_accessor :health_state
      
        # Output only. Unique ID of the resource.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # Optional. Input only. The owner of this instance after creation. Format: `
        # alias@example.com` Currently supports one owner only. If not specified, all of
        # the service account users of your VM instance's service account can use the
        # instance.
        # Corresponds to the JSON property `instanceOwners`
        # @return [Array<String>]
        attr_accessor :instance_owners
      
        # Optional. Labels to apply to this instance. These can be later modified by the
        # UpdateInstance method.
        # Corresponds to the JSON property `labels`
        # @return [Hash<String,String>]
        attr_accessor :labels
      
        # Output only. The name of this notebook instance. Format: `projects/`project_id`
        # /locations/`location`/instances/`instance_id``
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Output only. The proxy endpoint that is used to access the Jupyter notebook.
        # Corresponds to the JSON property `proxyUri`
        # @return [String]
        attr_accessor :proxy_uri
      
        # Output only. The state of this instance.
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        # Output only. Instance update time.
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        # Output only. The upgrade history of this instance.
        # Corresponds to the JSON property `upgradeHistory`
        # @return [Array<Google::Apis::NotebooksV2::UpgradeHistoryEntry>]
        attr_accessor :upgrade_history
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @create_time = args[:create_time] if args.key?(:create_time)
          @creator = args[:creator] if args.key?(:creator)
          @disable_proxy_access = args[:disable_proxy_access] if args.key?(:disable_proxy_access)
          @gce_setup = args[:gce_setup] if args.key?(:gce_setup)
          @health_info = args[:health_info] if args.key?(:health_info)
          @health_state = args[:health_state] if args.key?(:health_state)
          @id = args[:id] if args.key?(:id)
          @instance_owners = args[:instance_owners] if args.key?(:instance_owners)
          @labels = args[:labels] if args.key?(:labels)
          @name = args[:name] if args.key?(:name)
          @proxy_uri = args[:proxy_uri] if args.key?(:proxy_uri)
          @state = args[:state] if args.key?(:state)
          @update_time = args[:update_time] if args.key?(:update_time)
          @upgrade_history = args[:upgrade_history] if args.key?(:upgrade_history)
        end
      end
      
      # Response for listing notebook instances.
      class ListInstancesResponse
        include Google::Apis::Core::Hashable
      
        # A list of returned instances.
        # Corresponds to the JSON property `instances`
        # @return [Array<Google::Apis::NotebooksV2::Instance>]
        attr_accessor :instances
      
        # Page token that can be used to continue listing from the last result in the
        # next list call.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # Locations that could not be reached. For example, ['us-west1-a', 'us-central1-
        # b']. A ListInstancesResponse will only contain either instances or
        # unreachables,
        # Corresponds to the JSON property `unreachable`
        # @return [Array<String>]
        attr_accessor :unreachable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @instances = args[:instances] if args.key?(:instances)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @unreachable = args[:unreachable] if args.key?(:unreachable)
        end
      end
      
      # The response message for Locations.ListLocations.
      class ListLocationsResponse
        include Google::Apis::Core::Hashable
      
        # A list of locations that matches the specified filter in the request.
        # Corresponds to the JSON property `locations`
        # @return [Array<Google::Apis::NotebooksV2::Location>]
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
        # @return [Array<Google::Apis::NotebooksV2::Operation>]
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
      
      # A resource that represents a Google Cloud location.
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
      
      # The definition of a network interface resource attached to a VM.
      class NetworkInterface
        include Google::Apis::Core::Hashable
      
        # Optional. The name of the VPC that this VM instance is in. Format: `projects/`
        # project_id`/global/networks/`network_id``
        # Corresponds to the JSON property `network`
        # @return [String]
        attr_accessor :network
      
        # Optional. The type of vNIC to be used on this interface. This may be gVNIC or
        # VirtioNet.
        # Corresponds to the JSON property `nicType`
        # @return [String]
        attr_accessor :nic_type
      
        # Optional. The name of the subnet that this VM instance is in. Format: `
        # projects/`project_id`/regions/`region`/subnetworks/`subnetwork_id``
        # Corresponds to the JSON property `subnet`
        # @return [String]
        attr_accessor :subnet
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @network = args[:network] if args.key?(:network)
          @nic_type = args[:nic_type] if args.key?(:nic_type)
          @subnet = args[:subnet] if args.key?(:subnet)
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
        # @return [Google::Apis::NotebooksV2::Status]
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
      
        # API version used to start the operation.
        # Corresponds to the JSON property `apiVersion`
        # @return [String]
        attr_accessor :api_version
      
        # The time the operation was created.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # The time the operation finished running.
        # Corresponds to the JSON property `endTime`
        # @return [String]
        attr_accessor :end_time
      
        # API endpoint name of this operation.
        # Corresponds to the JSON property `endpoint`
        # @return [String]
        attr_accessor :endpoint
      
        # Identifies whether the user has requested cancellation of the operation.
        # Operations that have successfully been cancelled have Operation.error value
        # with a google.rpc.Status.code of 1, corresponding to `Code.CANCELLED`.
        # Corresponds to the JSON property `requestedCancellation`
        # @return [Boolean]
        attr_accessor :requested_cancellation
        alias_method :requested_cancellation?, :requested_cancellation
      
        # Human-readable status of the operation, if any.
        # Corresponds to the JSON property `statusMessage`
        # @return [String]
        attr_accessor :status_message
      
        # Server-defined resource path for the target of the operation.
        # Corresponds to the JSON property `target`
        # @return [String]
        attr_accessor :target
      
        # Name of the verb executed by the operation.
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
          @endpoint = args[:endpoint] if args.key?(:endpoint)
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
      
        # Associates a list of `members`, or principals, with a `role`. Optionally, may
        # specify a `condition` that determines how and when the `bindings` are applied.
        # Each of the `bindings` must contain at least one principal. The `bindings` in
        # a `Policy` can refer to up to 1,500 principals; up to 250 of these principals
        # can be Google groups. Each occurrence of a principal counts towards these
        # limits. For example, if the `bindings` grant 50 different roles to `user:alice@
        # example.com`, and not to any other principal, then you can add another 1,450
        # principals to the `bindings` in the `Policy`.
        # Corresponds to the JSON property `bindings`
        # @return [Array<Google::Apis::NotebooksV2::Binding>]
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
          @bindings = args[:bindings] if args.key?(:bindings)
          @etag = args[:etag] if args.key?(:etag)
          @version = args[:version] if args.key?(:version)
        end
      end
      
      # Request for notebook instances to report information to Notebooks API.
      class ReportInstanceInfoSystemRequest
        include Google::Apis::Core::Hashable
      
        # The definition of an Event for a managed / semi-managed notebook instance.
        # Corresponds to the JSON property `event`
        # @return [Google::Apis::NotebooksV2::Event]
        attr_accessor :event
      
        # Required. The VM hardware token for authenticating the VM. https://cloud.
        # google.com/compute/docs/instances/verifying-instance-identity
        # Corresponds to the JSON property `vmId`
        # @return [String]
        attr_accessor :vm_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @event = args[:event] if args.key?(:event)
          @vm_id = args[:vm_id] if args.key?(:vm_id)
        end
      end
      
      # Request for resetting a notebook instance
      class ResetInstanceRequest
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # Request for rollbacking a notebook instance
      class RollbackInstanceRequest
        include Google::Apis::Core::Hashable
      
        # Required. Output only. Revision Id
        # Corresponds to the JSON property `revisionId`
        # @return [String]
        attr_accessor :revision_id
      
        # Required. The snapshot for rollback. Example: "projects/test-project/global/
        # snapshots/krwlzipynril".
        # Corresponds to the JSON property `targetSnapshot`
        # @return [String]
        attr_accessor :target_snapshot
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @revision_id = args[:revision_id] if args.key?(:revision_id)
          @target_snapshot = args[:target_snapshot] if args.key?(:target_snapshot)
        end
      end
      
      # A service account that acts as an identity.
      class ServiceAccount
        include Google::Apis::Core::Hashable
      
        # Optional. Email address of the service account.
        # Corresponds to the JSON property `email`
        # @return [String]
        attr_accessor :email
      
        # Output only. The list of scopes to be made available for this service account.
        # Set by the CLH to https://www.googleapis.com/auth/cloud-platform
        # Corresponds to the JSON property `scopes`
        # @return [Array<String>]
        attr_accessor :scopes
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @email = args[:email] if args.key?(:email)
          @scopes = args[:scopes] if args.key?(:scopes)
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
        # @return [Google::Apis::NotebooksV2::Policy]
        attr_accessor :policy
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @policy = args[:policy] if args.key?(:policy)
        end
      end
      
      # A set of Shielded Instance options. See [Images using supported Shielded VM
      # features](https://cloud.google.com/compute/docs/instances/modifying-shielded-
      # vm). Not all combinations are valid.
      class ShieldedInstanceConfig
        include Google::Apis::Core::Hashable
      
        # Optional. Defines whether the VM instance has integrity monitoring enabled.
        # Enables monitoring and attestation of the boot integrity of the VM instance.
        # The attestation is performed against the integrity policy baseline. This
        # baseline is initially derived from the implicitly trusted boot image when the
        # VM instance is created. Enabled by default.
        # Corresponds to the JSON property `enableIntegrityMonitoring`
        # @return [Boolean]
        attr_accessor :enable_integrity_monitoring
        alias_method :enable_integrity_monitoring?, :enable_integrity_monitoring
      
        # Optional. Defines whether the VM instance has Secure Boot enabled. Secure Boot
        # helps ensure that the system only runs authentic software by verifying the
        # digital signature of all boot components, and halting the boot process if
        # signature verification fails. Disabled by default.
        # Corresponds to the JSON property `enableSecureBoot`
        # @return [Boolean]
        attr_accessor :enable_secure_boot
        alias_method :enable_secure_boot?, :enable_secure_boot
      
        # Optional. Defines whether the VM instance has the vTPM enabled. Enabled by
        # default.
        # Corresponds to the JSON property `enableVtpm`
        # @return [Boolean]
        attr_accessor :enable_vtpm
        alias_method :enable_vtpm?, :enable_vtpm
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @enable_integrity_monitoring = args[:enable_integrity_monitoring] if args.key?(:enable_integrity_monitoring)
          @enable_secure_boot = args[:enable_secure_boot] if args.key?(:enable_secure_boot)
          @enable_vtpm = args[:enable_vtpm] if args.key?(:enable_vtpm)
        end
      end
      
      # Request for starting a notebook instance
      class StartInstanceRequest
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
      
      # Request for stopping a notebook instance
      class StopInstanceRequest
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
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
      
      # The entry of VM image upgrade history.
      class UpgradeHistoryEntry
        include Google::Apis::Core::Hashable
      
        # Optional. Action. Rolloback or Upgrade.
        # Corresponds to the JSON property `action`
        # @return [String]
        attr_accessor :action
      
        # Optional. The container image before this instance upgrade.
        # Corresponds to the JSON property `containerImage`
        # @return [String]
        attr_accessor :container_image
      
        # Immutable. The time that this instance upgrade history entry is created.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Optional. The framework of this notebook instance.
        # Corresponds to the JSON property `framework`
        # @return [String]
        attr_accessor :framework
      
        # Optional. The snapshot of the boot disk of this notebook instance before
        # upgrade.
        # Corresponds to the JSON property `snapshot`
        # @return [String]
        attr_accessor :snapshot
      
        # Output only. The state of this instance upgrade history entry.
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        # Optional. Target VM Version, like m63.
        # Corresponds to the JSON property `targetVersion`
        # @return [String]
        attr_accessor :target_version
      
        # Optional. The version of the notebook instance before this upgrade.
        # Corresponds to the JSON property `version`
        # @return [String]
        attr_accessor :version
      
        # Optional. The VM image before this instance upgrade.
        # Corresponds to the JSON property `vmImage`
        # @return [String]
        attr_accessor :vm_image
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @action = args[:action] if args.key?(:action)
          @container_image = args[:container_image] if args.key?(:container_image)
          @create_time = args[:create_time] if args.key?(:create_time)
          @framework = args[:framework] if args.key?(:framework)
          @snapshot = args[:snapshot] if args.key?(:snapshot)
          @state = args[:state] if args.key?(:state)
          @target_version = args[:target_version] if args.key?(:target_version)
          @version = args[:version] if args.key?(:version)
          @vm_image = args[:vm_image] if args.key?(:vm_image)
        end
      end
      
      # Request for upgrading a notebook instance
      class UpgradeInstanceRequest
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # Request for upgrading a notebook instance from within the VM
      class UpgradeInstanceSystemRequest
        include Google::Apis::Core::Hashable
      
        # Required. The VM hardware token for authenticating the VM. https://cloud.
        # google.com/compute/docs/instances/verifying-instance-identity
        # Corresponds to the JSON property `vmId`
        # @return [String]
        attr_accessor :vm_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @vm_id = args[:vm_id] if args.key?(:vm_id)
        end
      end
      
      # Definition of a custom Compute Engine virtual machine image for starting a
      # notebook instance with the environment installed directly on the VM.
      class VmImage
        include Google::Apis::Core::Hashable
      
        # Optional. Use this VM image family to find the image; the newest image in this
        # family will be used.
        # Corresponds to the JSON property `family`
        # @return [String]
        attr_accessor :family
      
        # Optional. Use VM image name to find the image.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Required. The name of the Google Cloud project that this VM image belongs to.
        # Format: ``project_id``
        # Corresponds to the JSON property `project`
        # @return [String]
        attr_accessor :project
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @family = args[:family] if args.key?(:family)
          @name = args[:name] if args.key?(:name)
          @project = args[:project] if args.key?(:project)
        end
      end
    end
  end
end
