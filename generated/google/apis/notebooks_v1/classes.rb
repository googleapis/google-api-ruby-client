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
    module NotebooksV1
      
      # Definition of a hardware accelerator. Note that not all combinations of `type`
      # and `core_count` are valid. Check [GPUs on Compute Engine](/compute/docs/gpus/#
      # gpus-list) to find a valid combination. TPUs are not supported.
      class AcceleratorConfig
        include Google::Apis::Core::Hashable
      
        # Count of cores of this accelerator.
        # Corresponds to the JSON property `coreCount`
        # @return [Fixnum]
        attr_accessor :core_count
      
        # Type of this accelerator.
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
      
      # Associates `members` with a `role`.
      class Binding
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `bindingId`
        # @return [String]
        attr_accessor :binding_id
      
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
        # @return [Google::Apis::NotebooksV1::Expr]
        attr_accessor :condition
      
        # Specifies the identities requesting access for a Cloud Platform resource. `
        # members` can have the following values: * `allUsers`: A special identifier
        # that represents anyone who is on the internet; with or without a Google
        # account. * `allAuthenticatedUsers`: A special identifier that represents
        # anyone who is authenticated with a Google account or a service account. * `
        # user:`emailid``: An email address that represents a specific Google account.
        # For example, `alice@example.com` . * `serviceAccount:`emailid``: An email
        # address that represents a service account. For example, `my-other-app@appspot.
        # gserviceaccount.com`. * `group:`emailid``: An email address that represents a
        # Google group. For example, `admins@example.com`. * `deleted:user:`emailid`?uid=
        # `uniqueid``: An email address (plus unique identifier) representing a user
        # that has been recently deleted. For example, `alice@example.com?uid=
        # 123456789012345678901`. If the user is recovered, this value reverts to `user:`
        # emailid`` and the recovered user retains the role in the binding. * `deleted:
        # serviceAccount:`emailid`?uid=`uniqueid``: An email address (plus unique
        # identifier) representing a service account that has been recently deleted. For
        # example, `my-other-app@appspot.gserviceaccount.com?uid=123456789012345678901`.
        # If the service account is undeleted, this value reverts to `serviceAccount:`
        # emailid`` and the undeleted service account retains the role in the binding. *
        # `deleted:group:`emailid`?uid=`uniqueid``: An email address (plus unique
        # identifier) representing a Google group that has been recently deleted. For
        # example, `admins@example.com?uid=123456789012345678901`. If the group is
        # recovered, this value reverts to `group:`emailid`` and the recovered group
        # retains the role in the binding. * `domain:`domain``: The G Suite domain (
        # primary) that represents all the users of that domain. For example, `google.
        # com` or `example.com`.
        # Corresponds to the JSON property `members`
        # @return [Array<String>]
        attr_accessor :members
      
        # Role that is assigned to `members`. For example, `roles/viewer`, `roles/editor`
        # , or `roles/owner`.
        # Corresponds to the JSON property `role`
        # @return [String]
        attr_accessor :role
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @binding_id = args[:binding_id] if args.key?(:binding_id)
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
      
      # Definition of a container image for starting a notebook instance with the
      # environment installed in a container.
      class ContainerImage
        include Google::Apis::Core::Hashable
      
        # Required. The path to the container image repository. For example: `gcr.io/`
        # project_id`/`image_name``
        # Corresponds to the JSON property `repository`
        # @return [String]
        attr_accessor :repository
      
        # The tag of the container image. If not specified, this defaults to the latest
        # tag.
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
      class Disk
        include Google::Apis::Core::Hashable
      
        # Indicates whether the disk will be auto-deleted when the instance is deleted (
        # but not when the disk is detached from the instance).
        # Corresponds to the JSON property `autoDelete`
        # @return [Boolean]
        attr_accessor :auto_delete
        alias_method :auto_delete?, :auto_delete
      
        # Indicates that this is a boot disk. The virtual machine will use the first
        # partition of the disk for its root filesystem.
        # Corresponds to the JSON property `boot`
        # @return [Boolean]
        attr_accessor :boot
        alias_method :boot?, :boot
      
        # Indicates a unique device name of your choice that is reflected into the /dev/
        # disk/by-id/google-* tree of a Linux operating system running within the
        # instance. This name can be used to reference the device for mounting, resizing,
        # and so on, from within the instance. If not specified, the server chooses a
        # default device name to apply to this disk, in the form persistent-disk-x,
        # where x is a number assigned by Google Compute Engine.This field is only
        # applicable for persistent disks.
        # Corresponds to the JSON property `deviceName`
        # @return [String]
        attr_accessor :device_name
      
        # Indicates the size of the disk in base-2 GB.
        # Corresponds to the JSON property `diskSizeGb`
        # @return [Fixnum]
        attr_accessor :disk_size_gb
      
        # Indicates a list of features to enable on the guest operating system.
        # Applicable only for bootable images. Read Enabling guest operating system
        # features to see a list of available options.
        # Corresponds to the JSON property `guestOsFeatures`
        # @return [Array<Google::Apis::NotebooksV1::GuestOsFeature>]
        attr_accessor :guest_os_features
      
        # A zero-based index to this disk, where 0 is reserved for the boot disk. If you
        # have many disks attached to an instance, each disk would have a unique index
        # number.
        # Corresponds to the JSON property `index`
        # @return [Fixnum]
        attr_accessor :index
      
        # Indicates the disk interface to use for attaching this disk, which is either
        # SCSI or NVME. The default is SCSI. Persistent disks must always use SCSI and
        # the request will fail if you attempt to attach a persistent disk in any other
        # format than SCSI. Local SSDs can use either NVME or SCSI. For performance
        # characteristics of SCSI over NVMe, see Local SSD performance. Valid values:
        # NVME SCSI
        # Corresponds to the JSON property `interface`
        # @return [String]
        attr_accessor :interface
      
        # Type of the resource. Always compute#attachedDisk for attached disks.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # A list of publicly visible licenses. Reserved for Google's use. A License
        # represents billing and aggregate usage data for public and marketplace images.
        # Corresponds to the JSON property `licenses`
        # @return [Array<String>]
        attr_accessor :licenses
      
        # The mode in which to attach this disk, either READ_WRITE or READ_ONLY. If not
        # specified, the default is to attach the disk in READ_WRITE mode. Valid values:
        # READ_ONLY READ_WRITE
        # Corresponds to the JSON property `mode`
        # @return [String]
        attr_accessor :mode
      
        # Indicates a valid partial or full URL to an existing Persistent Disk resource.
        # Corresponds to the JSON property `source`
        # @return [String]
        attr_accessor :source
      
        # Indicates the type of the disk, either SCRATCH or PERSISTENT. Valid values:
        # PERSISTENT SCRATCH
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @auto_delete = args[:auto_delete] if args.key?(:auto_delete)
          @boot = args[:boot] if args.key?(:boot)
          @device_name = args[:device_name] if args.key?(:device_name)
          @disk_size_gb = args[:disk_size_gb] if args.key?(:disk_size_gb)
          @guest_os_features = args[:guest_os_features] if args.key?(:guest_os_features)
          @index = args[:index] if args.key?(:index)
          @interface = args[:interface] if args.key?(:interface)
          @kind = args[:kind] if args.key?(:kind)
          @licenses = args[:licenses] if args.key?(:licenses)
          @mode = args[:mode] if args.key?(:mode)
          @source = args[:source] if args.key?(:source)
          @type = args[:type] if args.key?(:type)
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
      
      # Definition of a software environment that is used to start a notebook instance.
      class Environment
        include Google::Apis::Core::Hashable
      
        # Definition of a container image for starting a notebook instance with the
        # environment installed in a container.
        # Corresponds to the JSON property `containerImage`
        # @return [Google::Apis::NotebooksV1::ContainerImage]
        attr_accessor :container_image
      
        # Output only. The time at which this environment was created.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # A brief description of this environment.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # Display name of this environment for the UI.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # Output only. Name of this environment. Format: `projects/`project_id`/
        # locations/`location`/environments/`environment_id``
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Path to a Bash script that automatically runs after a notebook instance fully
        # boots up. The path must be a URL or Cloud Storage path. Example: `"gs://path-
        # to-file/file-name"`
        # Corresponds to the JSON property `postStartupScript`
        # @return [String]
        attr_accessor :post_startup_script
      
        # Definition of a custom Compute Engine virtual machine image for starting a
        # notebook instance with the environment installed directly on the VM.
        # Corresponds to the JSON property `vmImage`
        # @return [Google::Apis::NotebooksV1::VmImage]
        attr_accessor :vm_image
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @container_image = args[:container_image] if args.key?(:container_image)
          @create_time = args[:create_time] if args.key?(:create_time)
          @description = args[:description] if args.key?(:description)
          @display_name = args[:display_name] if args.key?(:display_name)
          @name = args[:name] if args.key?(:name)
          @post_startup_script = args[:post_startup_script] if args.key?(:post_startup_script)
          @vm_image = args[:vm_image] if args.key?(:vm_image)
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
      
      # Guest OS features for boot disk.
      class GuestOsFeature
        include Google::Apis::Core::Hashable
      
        # The ID of a supported feature. Read Enabling guest operating system features
        # to see a list of available options. Valid values: FEATURE_TYPE_UNSPECIFIED
        # MULTI_IP_SUBNET SECURE_BOOT UEFI_COMPATIBLE VIRTIO_SCSI_MULTIQUEUE WINDOWS
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @type = args[:type] if args.key?(:type)
        end
      end
      
      # The definition of a notebook instance.
      class Instance
        include Google::Apis::Core::Hashable
      
        # Definition of a hardware accelerator. Note that not all combinations of `type`
        # and `core_count` are valid. Check [GPUs on Compute Engine](/compute/docs/gpus/#
        # gpus-list) to find a valid combination. TPUs are not supported.
        # Corresponds to the JSON property `acceleratorConfig`
        # @return [Google::Apis::NotebooksV1::AcceleratorConfig]
        attr_accessor :accelerator_config
      
        # Input only. The size of the boot disk in GB attached to this instance, up to a
        # maximum of 64000 GB (64 TB). The minimum recommended value is 100 GB. If not
        # specified, this defaults to 100.
        # Corresponds to the JSON property `bootDiskSizeGb`
        # @return [Fixnum]
        attr_accessor :boot_disk_size_gb
      
        # Input only. The type of the boot disk attached to this instance, defaults to
        # standard persistent disk (`PD_STANDARD`).
        # Corresponds to the JSON property `bootDiskType`
        # @return [String]
        attr_accessor :boot_disk_type
      
        # Definition of a container image for starting a notebook instance with the
        # environment installed in a container.
        # Corresponds to the JSON property `containerImage`
        # @return [Google::Apis::NotebooksV1::ContainerImage]
        attr_accessor :container_image
      
        # Output only. Instance creation time.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Specify a custom Cloud Storage path where the GPU driver is stored. If not
        # specified, we'll automatically choose from official GPU drivers.
        # Corresponds to the JSON property `customGpuDriverPath`
        # @return [String]
        attr_accessor :custom_gpu_driver_path
      
        # Input only. The size of the data disk in GB attached to this instance, up to a
        # maximum of 64000 GB (64 TB). You can choose the size of the data disk based on
        # how big your notebooks and data are. If not specified, this defaults to 100.
        # Corresponds to the JSON property `dataDiskSizeGb`
        # @return [Fixnum]
        attr_accessor :data_disk_size_gb
      
        # Input only. The type of the data disk attached to this instance, defaults to
        # standard persistent disk (`PD_STANDARD`).
        # Corresponds to the JSON property `dataDiskType`
        # @return [String]
        attr_accessor :data_disk_type
      
        # Input only. Disk encryption method used on the boot and data disks, defaults
        # to GMEK.
        # Corresponds to the JSON property `diskEncryption`
        # @return [String]
        attr_accessor :disk_encryption
      
        # Output only. Attached disks to notebook instance.
        # Corresponds to the JSON property `disks`
        # @return [Array<Google::Apis::NotebooksV1::Disk>]
        attr_accessor :disks
      
        # Whether the end user authorizes Google Cloud to install GPU driver on this
        # instance. If this field is empty or set to false, the GPU driver won't be
        # installed. Only applicable to instances with GPUs.
        # Corresponds to the JSON property `installGpuDriver`
        # @return [Boolean]
        attr_accessor :install_gpu_driver
        alias_method :install_gpu_driver?, :install_gpu_driver
      
        # Input only. The owner of this instance after creation. Format: `alias@example.
        # com` Currently supports one owner only. If not specified, all of the service
        # account users of your VM instance's service account can use the instance.
        # Corresponds to the JSON property `instanceOwners`
        # @return [Array<String>]
        attr_accessor :instance_owners
      
        # Input only. The KMS key used to encrypt the disks, only applicable if
        # disk_encryption is CMEK. Format: `projects/`project_id`/locations/`location`/
        # keyRings/`key_ring_id`/cryptoKeys/`key_id`` Learn more about [using your own
        # encryption keys](/kms/docs/quickstart).
        # Corresponds to the JSON property `kmsKey`
        # @return [String]
        attr_accessor :kms_key
      
        # Labels to apply to this instance. These can be later modified by the setLabels
        # method.
        # Corresponds to the JSON property `labels`
        # @return [Hash<String,String>]
        attr_accessor :labels
      
        # Required. The [Compute Engine machine type](/compute/docs/machine-types) of
        # this instance.
        # Corresponds to the JSON property `machineType`
        # @return [String]
        attr_accessor :machine_type
      
        # Custom metadata to apply to this instance.
        # Corresponds to the JSON property `metadata`
        # @return [Hash<String,String>]
        attr_accessor :metadata
      
        # Output only. The name of this notebook instance. Format: `projects/`project_id`
        # /locations/`location`/instances/`instance_id``
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # The name of the VPC that this instance is in. Format: `projects/`project_id`/
        # global/networks/`network_id``
        # Corresponds to the JSON property `network`
        # @return [String]
        attr_accessor :network
      
        # If true, the notebook instance will not register with the proxy.
        # Corresponds to the JSON property `noProxyAccess`
        # @return [Boolean]
        attr_accessor :no_proxy_access
        alias_method :no_proxy_access?, :no_proxy_access
      
        # If true, no public IP will be assigned to this instance.
        # Corresponds to the JSON property `noPublicIp`
        # @return [Boolean]
        attr_accessor :no_public_ip
        alias_method :no_public_ip?, :no_public_ip
      
        # Input only. If true, the data disk will not be auto deleted when deleting the
        # instance.
        # Corresponds to the JSON property `noRemoveDataDisk`
        # @return [Boolean]
        attr_accessor :no_remove_data_disk
        alias_method :no_remove_data_disk?, :no_remove_data_disk
      
        # Path to a Bash script that automatically runs after a notebook instance fully
        # boots up. The path must be a URL or Cloud Storage path (gs://path-to-file/file-
        # name).
        # Corresponds to the JSON property `postStartupScript`
        # @return [String]
        attr_accessor :post_startup_script
      
        # Output only. The proxy endpoint that is used to access the Jupyter notebook.
        # Corresponds to the JSON property `proxyUri`
        # @return [String]
        attr_accessor :proxy_uri
      
        # The service account on this instance, giving access to other Google Cloud
        # services. You can use any service account within the same project, but you
        # must have the service account user permission to use the instance. If not
        # specified, the [Compute Engine default service account](https://cloud.google.
        # com/compute/docs/access/service-accounts#default_service_account) is used.
        # Corresponds to the JSON property `serviceAccount`
        # @return [String]
        attr_accessor :service_account
      
        # Output only. The state of this instance.
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        # The name of the subnet that this instance is in. Format: `projects/`project_id`
        # /regions/`region`/subnetworks/`subnetwork_id``
        # Corresponds to the JSON property `subnet`
        # @return [String]
        attr_accessor :subnet
      
        # Output only. Instance update time.
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        # The upgrade history of this instance.
        # Corresponds to the JSON property `upgradeHistory`
        # @return [Array<Google::Apis::NotebooksV1::UpgradeHistoryEntry>]
        attr_accessor :upgrade_history
      
        # Definition of a custom Compute Engine virtual machine image for starting a
        # notebook instance with the environment installed directly on the VM.
        # Corresponds to the JSON property `vmImage`
        # @return [Google::Apis::NotebooksV1::VmImage]
        attr_accessor :vm_image
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @accelerator_config = args[:accelerator_config] if args.key?(:accelerator_config)
          @boot_disk_size_gb = args[:boot_disk_size_gb] if args.key?(:boot_disk_size_gb)
          @boot_disk_type = args[:boot_disk_type] if args.key?(:boot_disk_type)
          @container_image = args[:container_image] if args.key?(:container_image)
          @create_time = args[:create_time] if args.key?(:create_time)
          @custom_gpu_driver_path = args[:custom_gpu_driver_path] if args.key?(:custom_gpu_driver_path)
          @data_disk_size_gb = args[:data_disk_size_gb] if args.key?(:data_disk_size_gb)
          @data_disk_type = args[:data_disk_type] if args.key?(:data_disk_type)
          @disk_encryption = args[:disk_encryption] if args.key?(:disk_encryption)
          @disks = args[:disks] if args.key?(:disks)
          @install_gpu_driver = args[:install_gpu_driver] if args.key?(:install_gpu_driver)
          @instance_owners = args[:instance_owners] if args.key?(:instance_owners)
          @kms_key = args[:kms_key] if args.key?(:kms_key)
          @labels = args[:labels] if args.key?(:labels)
          @machine_type = args[:machine_type] if args.key?(:machine_type)
          @metadata = args[:metadata] if args.key?(:metadata)
          @name = args[:name] if args.key?(:name)
          @network = args[:network] if args.key?(:network)
          @no_proxy_access = args[:no_proxy_access] if args.key?(:no_proxy_access)
          @no_public_ip = args[:no_public_ip] if args.key?(:no_public_ip)
          @no_remove_data_disk = args[:no_remove_data_disk] if args.key?(:no_remove_data_disk)
          @post_startup_script = args[:post_startup_script] if args.key?(:post_startup_script)
          @proxy_uri = args[:proxy_uri] if args.key?(:proxy_uri)
          @service_account = args[:service_account] if args.key?(:service_account)
          @state = args[:state] if args.key?(:state)
          @subnet = args[:subnet] if args.key?(:subnet)
          @update_time = args[:update_time] if args.key?(:update_time)
          @upgrade_history = args[:upgrade_history] if args.key?(:upgrade_history)
          @vm_image = args[:vm_image] if args.key?(:vm_image)
        end
      end
      
      # Response for checking if a notebook instance is upgradeable.
      class IsInstanceUpgradeableResponse
        include Google::Apis::Core::Hashable
      
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
          @upgrade_info = args[:upgrade_info] if args.key?(:upgrade_info)
          @upgrade_version = args[:upgrade_version] if args.key?(:upgrade_version)
          @upgradeable = args[:upgradeable] if args.key?(:upgradeable)
        end
      end
      
      # Response for listing environments.
      class ListEnvironmentsResponse
        include Google::Apis::Core::Hashable
      
        # A list of returned environments.
        # Corresponds to the JSON property `environments`
        # @return [Array<Google::Apis::NotebooksV1::Environment>]
        attr_accessor :environments
      
        # A page token that can be used to continue listing from the last result in the
        # next list call.
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
          @environments = args[:environments] if args.key?(:environments)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @unreachable = args[:unreachable] if args.key?(:unreachable)
        end
      end
      
      # Response for listing notebook instances.
      class ListInstancesResponse
        include Google::Apis::Core::Hashable
      
        # A list of returned instances.
        # Corresponds to the JSON property `instances`
        # @return [Array<Google::Apis::NotebooksV1::Instance>]
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
        # @return [Array<Google::Apis::NotebooksV1::Location>]
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
        # @return [Array<Google::Apis::NotebooksV1::Operation>]
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
        # @return [Google::Apis::NotebooksV1::Status]
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
      # A `binding` binds one or more `members` to a single `role`. Members can be
      # user accounts, service accounts, Google groups, and domains (such as G Suite).
      # A `role` is a named list of permissions; each `role` can be an IAM predefined
      # role or a user-created custom role. For some types of Google Cloud resources,
      # a `binding` can also specify a `condition`, which is a logical expression that
      # allows access to a resource only if the expression evaluates to `true`. A
      # condition can add constraints based on attributes of the request, the resource,
      # or both. To learn which resources support conditions in their IAM policies,
      # see the [IAM documentation](https://cloud.google.com/iam/help/conditions/
      # resource-policies). **JSON example:** ` "bindings": [ ` "role": "roles/
      # resourcemanager.organizationAdmin", "members": [ "user:mike@example.com", "
      # group:admins@example.com", "domain:google.com", "serviceAccount:my-project-id@
      # appspot.gserviceaccount.com" ] `, ` "role": "roles/resourcemanager.
      # organizationViewer", "members": [ "user:eve@example.com" ], "condition": ` "
      # title": "expirable access", "description": "Does not grant access after Sep
      # 2020", "expression": "request.time < timestamp('2020-10-01T00:00:00.000Z')", `
      # ` ], "etag": "BwWWja0YfJA=", "version": 3 ` **YAML example:** bindings: -
      # members: - user:mike@example.com - group:admins@example.com - domain:google.
      # com - serviceAccount:my-project-id@appspot.gserviceaccount.com role: roles/
      # resourcemanager.organizationAdmin - members: - user:eve@example.com role:
      # roles/resourcemanager.organizationViewer condition: title: expirable access
      # description: Does not grant access after Sep 2020 expression: request.time <
      # timestamp('2020-10-01T00:00:00.000Z') - etag: BwWWja0YfJA= - version: 3 For a
      # description of IAM and its features, see the [IAM documentation](https://cloud.
      # google.com/iam/docs/).
      class Policy
        include Google::Apis::Core::Hashable
      
        # Associates a list of `members` to a `role`. Optionally, may specify a `
        # condition` that determines how and when the `bindings` are applied. Each of
        # the `bindings` must contain at least one member.
        # Corresponds to the JSON property `bindings`
        # @return [Array<Google::Apis::NotebooksV1::Binding>]
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
      
      # Request for registering a notebook instance.
      class RegisterInstanceRequest
        include Google::Apis::Core::Hashable
      
        # Required. User defined unique ID of this instance. The `instance_id` must be 1
        # to 63 characters long and contain only lowercase letters, numeric characters,
        # and dashes. The first character must be a lowercase letter and the last
        # character cannot be a dash.
        # Corresponds to the JSON property `instanceId`
        # @return [String]
        attr_accessor :instance_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @instance_id = args[:instance_id] if args.key?(:instance_id)
        end
      end
      
      # Request for notebook instances to report information to Notebooks API.
      class ReportInstanceInfoRequest
        include Google::Apis::Core::Hashable
      
        # The metadata reported to Notebooks API. This will be merged to the instance
        # metadata store
        # Corresponds to the JSON property `metadata`
        # @return [Hash<String,String>]
        attr_accessor :metadata
      
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
          @metadata = args[:metadata] if args.key?(:metadata)
          @vm_id = args[:vm_id] if args.key?(:vm_id)
        end
      end
      
      # Request for reseting a notebook instance
      class ResetInstanceRequest
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # Request message for `SetIamPolicy` method.
      class SetIamPolicyRequest
        include Google::Apis::Core::Hashable
      
        # An Identity and Access Management (IAM) policy, which specifies access
        # controls for Google Cloud resources. A `Policy` is a collection of `bindings`.
        # A `binding` binds one or more `members` to a single `role`. Members can be
        # user accounts, service accounts, Google groups, and domains (such as G Suite).
        # A `role` is a named list of permissions; each `role` can be an IAM predefined
        # role or a user-created custom role. For some types of Google Cloud resources,
        # a `binding` can also specify a `condition`, which is a logical expression that
        # allows access to a resource only if the expression evaluates to `true`. A
        # condition can add constraints based on attributes of the request, the resource,
        # or both. To learn which resources support conditions in their IAM policies,
        # see the [IAM documentation](https://cloud.google.com/iam/help/conditions/
        # resource-policies). **JSON example:** ` "bindings": [ ` "role": "roles/
        # resourcemanager.organizationAdmin", "members": [ "user:mike@example.com", "
        # group:admins@example.com", "domain:google.com", "serviceAccount:my-project-id@
        # appspot.gserviceaccount.com" ] `, ` "role": "roles/resourcemanager.
        # organizationViewer", "members": [ "user:eve@example.com" ], "condition": ` "
        # title": "expirable access", "description": "Does not grant access after Sep
        # 2020", "expression": "request.time < timestamp('2020-10-01T00:00:00.000Z')", `
        # ` ], "etag": "BwWWja0YfJA=", "version": 3 ` **YAML example:** bindings: -
        # members: - user:mike@example.com - group:admins@example.com - domain:google.
        # com - serviceAccount:my-project-id@appspot.gserviceaccount.com role: roles/
        # resourcemanager.organizationAdmin - members: - user:eve@example.com role:
        # roles/resourcemanager.organizationViewer condition: title: expirable access
        # description: Does not grant access after Sep 2020 expression: request.time <
        # timestamp('2020-10-01T00:00:00.000Z') - etag: BwWWja0YfJA= - version: 3 For a
        # description of IAM and its features, see the [IAM documentation](https://cloud.
        # google.com/iam/docs/).
        # Corresponds to the JSON property `policy`
        # @return [Google::Apis::NotebooksV1::Policy]
        attr_accessor :policy
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @policy = args[:policy] if args.key?(:policy)
        end
      end
      
      # Request for setting instance accelerator.
      class SetInstanceAcceleratorRequest
        include Google::Apis::Core::Hashable
      
        # Required. Count of cores of this accelerator. Note that not all combinations
        # of `type` and `core_count` are valid. Check [GPUs on Compute Engine](https://
        # cloud.google.com/compute/docs/gpus/#gpus-list) to find a valid combination.
        # TPUs are not supported.
        # Corresponds to the JSON property `coreCount`
        # @return [Fixnum]
        attr_accessor :core_count
      
        # Required. Type of this accelerator.
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
      
      # Request for setting instance labels.
      class SetInstanceLabelsRequest
        include Google::Apis::Core::Hashable
      
        # Labels to apply to this instance. These can be later modified by the setLabels
        # method
        # Corresponds to the JSON property `labels`
        # @return [Hash<String,String>]
        attr_accessor :labels
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @labels = args[:labels] if args.key?(:labels)
        end
      end
      
      # Request for setting instance machine type.
      class SetInstanceMachineTypeRequest
        include Google::Apis::Core::Hashable
      
        # Required. The [Compute Engine machine type](https://cloud.google.com/compute/
        # docs/machine-types).
        # Corresponds to the JSON property `machineType`
        # @return [String]
        attr_accessor :machine_type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @machine_type = args[:machine_type] if args.key?(:machine_type)
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
        # (such as '*' or 'storage.*') are not allowed. For more information see [IAM
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
      
      # 
      class UpgradeHistoryEntry
        include Google::Apis::Core::Hashable
      
        # The container image before this instance upgrade.
        # Corresponds to the JSON property `containerImage`
        # @return [String]
        attr_accessor :container_image
      
        # The time that this instance upgrade history entry is created.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # The framework of this notebook instance.
        # Corresponds to the JSON property `framework`
        # @return [String]
        attr_accessor :framework
      
        # The snapshot of the boot disk of this notebook instance before upgrade.
        # Corresponds to the JSON property `snapshot`
        # @return [String]
        attr_accessor :snapshot
      
        # The state of this instance upgrade history entry.
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        # The version of the notebook instance before this upgrade.
        # Corresponds to the JSON property `version`
        # @return [String]
        attr_accessor :version
      
        # The VM image before this instance upgrade.
        # Corresponds to the JSON property `vmImage`
        # @return [String]
        attr_accessor :vm_image
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @container_image = args[:container_image] if args.key?(:container_image)
          @create_time = args[:create_time] if args.key?(:create_time)
          @framework = args[:framework] if args.key?(:framework)
          @snapshot = args[:snapshot] if args.key?(:snapshot)
          @state = args[:state] if args.key?(:state)
          @version = args[:version] if args.key?(:version)
          @vm_image = args[:vm_image] if args.key?(:vm_image)
        end
      end
      
      # Request for upgrading a notebook instance from within the VM
      class UpgradeInstanceInternalRequest
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
      
      # Definition of a custom Compute Engine virtual machine image for starting a
      # notebook instance with the environment installed directly on the VM.
      class VmImage
        include Google::Apis::Core::Hashable
      
        # Use this VM image family to find the image; the newest image in this family
        # will be used.
        # Corresponds to the JSON property `imageFamily`
        # @return [String]
        attr_accessor :image_family
      
        # Use VM image name to find the image.
        # Corresponds to the JSON property `imageName`
        # @return [String]
        attr_accessor :image_name
      
        # Required. The name of the Google Cloud project that this VM image belongs to.
        # Format: `projects/`project_id``
        # Corresponds to the JSON property `project`
        # @return [String]
        attr_accessor :project
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @image_family = args[:image_family] if args.key?(:image_family)
          @image_name = args[:image_name] if args.key?(:image_name)
          @project = args[:project] if args.key?(:project)
        end
      end
    end
  end
end
