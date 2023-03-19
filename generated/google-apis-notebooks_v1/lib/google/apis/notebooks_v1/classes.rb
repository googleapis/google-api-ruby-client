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
      
      # Definition of a hardware accelerator. Note that not all combinations of `type`
      # and `core_count` are valid. Check [GPUs on Compute Engine](https://cloud.
      # google.com/compute/docs/gpus/#gpus-list) to find a valid combination. TPUs are
      # not supported.
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
        # @return [Google::Apis::NotebooksV1::Expr]
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
      
      # Definition of the boot image used by the Runtime. Used to facilitate runtime
      # upgradeability.
      class BootImage
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
      
      # Parameters used in Dataproc JobType executions.
      class DataprocParameters
        include Google::Apis::Core::Hashable
      
        # URI for cluster used to run Dataproc execution. Format: `projects/`PROJECT_ID`/
        # regions/`REGION`/clusters/`CLUSTER_NAME``
        # Corresponds to the JSON property `cluster`
        # @return [String]
        attr_accessor :cluster
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @cluster = args[:cluster] if args.key?(:cluster)
        end
      end
      
      # Request for creating a notebook instance diagnostic file.
      class DiagnoseInstanceRequest
        include Google::Apis::Core::Hashable
      
        # Defines flags that are used to run the diagnostic tool
        # Corresponds to the JSON property `diagnosticConfig`
        # @return [Google::Apis::NotebooksV1::DiagnosticConfig]
        attr_accessor :diagnostic_config
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @diagnostic_config = args[:diagnostic_config] if args.key?(:diagnostic_config)
        end
      end
      
      # Request for creating a notebook instance diagnostic file.
      class DiagnoseRuntimeRequest
        include Google::Apis::Core::Hashable
      
        # Defines flags that are used to run the diagnostic tool
        # Corresponds to the JSON property `diagnosticConfig`
        # @return [Google::Apis::NotebooksV1::DiagnosticConfig]
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
        # Corresponds to the JSON property `copyHomeFilesFlagEnabled`
        # @return [Boolean]
        attr_accessor :copy_home_files_flag_enabled
        alias_method :copy_home_files_flag_enabled?, :copy_home_files_flag_enabled
      
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
      
        # Optional. Enables flag to capture packets from the instance for 30 seconds
        # Corresponds to the JSON property `packetCaptureFlagEnabled`
        # @return [Boolean]
        attr_accessor :packet_capture_flag_enabled
        alias_method :packet_capture_flag_enabled?, :packet_capture_flag_enabled
      
        # Optional. Defines the relative storage path in the Cloud Storage bucket where
        # the diagnostic logs will be written: Default path will be the root directory
        # of the Cloud Storage bucket (`gs://$GCS_BUCKET/$DATE_$TIME.tar.gz`) Example of
        # full path where Log file will be written: `gs://$GCS_BUCKET/$RELATIVE_PATH/`
        # Corresponds to the JSON property `relativePath`
        # @return [String]
        attr_accessor :relative_path
      
        # Optional. Enables flag to repair service for instance
        # Corresponds to the JSON property `repairFlagEnabled`
        # @return [Boolean]
        attr_accessor :repair_flag_enabled
        alias_method :repair_flag_enabled?, :repair_flag_enabled
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @copy_home_files_flag_enabled = args[:copy_home_files_flag_enabled] if args.key?(:copy_home_files_flag_enabled)
          @gcs_bucket = args[:gcs_bucket] if args.key?(:gcs_bucket)
          @packet_capture_flag_enabled = args[:packet_capture_flag_enabled] if args.key?(:packet_capture_flag_enabled)
          @relative_path = args[:relative_path] if args.key?(:relative_path)
          @repair_flag_enabled = args[:repair_flag_enabled] if args.key?(:repair_flag_enabled)
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
      
        # Indicates a unique device name of your choice that is reflected into the `/dev/
        # disk/by-id/google-*` tree of a Linux operating system running within the
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
        # characteristics of SCSI over NVMe, see Local SSD performance. Valid values: * `
        # NVME` * `SCSI`
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
      
        # The mode in which to attach this disk, either `READ_WRITE` or `READ_ONLY`. If
        # not specified, the default is to attach the disk in `READ_WRITE` mode. Valid
        # values: * `READ_ONLY` * `READ_WRITE`
        # Corresponds to the JSON property `mode`
        # @return [String]
        attr_accessor :mode
      
        # Indicates a valid partial or full URL to an existing Persistent Disk resource.
        # Corresponds to the JSON property `source`
        # @return [String]
        attr_accessor :source
      
        # Indicates the type of the disk, either `SCRATCH` or `PERSISTENT`. Valid values:
        # * `PERSISTENT` * `SCRATCH`
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
      
      # Represents a custom encryption key configuration that can be applied to a
      # resource. This will encrypt all disks in Virtual Machine.
      class EncryptionConfig
        include Google::Apis::Core::Hashable
      
        # The Cloud KMS resource identifier of the customer-managed encryption key used
        # to protect a resource, such as a disks. It has the following format: `projects/
        # `PROJECT_ID`/locations/`REGION`/keyRings/`KEY_RING_NAME`/cryptoKeys/`KEY_NAME``
        # Corresponds to the JSON property `kmsKey`
        # @return [String]
        attr_accessor :kms_key
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @kms_key = args[:kms_key] if args.key?(:kms_key)
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
      
      # The definition of an Event for a managed / semi-managed notebook instance.
      class Event
        include Google::Apis::Core::Hashable
      
        # Optional. Event details. This field is used to pass event information.
        # Corresponds to the JSON property `details`
        # @return [Hash<String,String>]
        attr_accessor :details
      
        # Event report time.
        # Corresponds to the JSON property `reportTime`
        # @return [String]
        attr_accessor :report_time
      
        # Event type.
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
      
      # The definition of a single executed notebook.
      class Execution
        include Google::Apis::Core::Hashable
      
        # Output only. Time the Execution was instantiated.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # A brief description of this execution.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # Output only. Name used for UI purposes. Name can only contain alphanumeric
        # characters and underscores '_'.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # The description a notebook execution workload.
        # Corresponds to the JSON property `executionTemplate`
        # @return [Google::Apis::NotebooksV1::ExecutionTemplate]
        attr_accessor :execution_template
      
        # Output only. The URI of the external job used to execute the notebook.
        # Corresponds to the JSON property `jobUri`
        # @return [String]
        attr_accessor :job_uri
      
        # Output only. The resource name of the execute. Format: `projects/`project_id`/
        # locations/`location`/executions/`execution_id``
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Output notebook file generated by this execution
        # Corresponds to the JSON property `outputNotebookFile`
        # @return [String]
        attr_accessor :output_notebook_file
      
        # Output only. State of the underlying AI Platform job.
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        # Output only. Time the Execution was last updated.
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
          @execution_template = args[:execution_template] if args.key?(:execution_template)
          @job_uri = args[:job_uri] if args.key?(:job_uri)
          @name = args[:name] if args.key?(:name)
          @output_notebook_file = args[:output_notebook_file] if args.key?(:output_notebook_file)
          @state = args[:state] if args.key?(:state)
          @update_time = args[:update_time] if args.key?(:update_time)
        end
      end
      
      # The description a notebook execution workload.
      class ExecutionTemplate
        include Google::Apis::Core::Hashable
      
        # Definition of a hardware accelerator. Note that not all combinations of `type`
        # and `core_count` are valid. Check [GPUs on Compute Engine](https://cloud.
        # google.com/compute/docs/gpus) to find a valid combination. TPUs are not
        # supported.
        # Corresponds to the JSON property `acceleratorConfig`
        # @return [Google::Apis::NotebooksV1::SchedulerAcceleratorConfig]
        attr_accessor :accelerator_config
      
        # Container Image URI to a DLVM Example: 'gcr.io/deeplearning-platform-release/
        # base-cu100' More examples can be found at: https://cloud.google.com/ai-
        # platform/deep-learning-containers/docs/choosing-container
        # Corresponds to the JSON property `containerImageUri`
        # @return [String]
        attr_accessor :container_image_uri
      
        # Parameters used in Dataproc JobType executions.
        # Corresponds to the JSON property `dataprocParameters`
        # @return [Google::Apis::NotebooksV1::DataprocParameters]
        attr_accessor :dataproc_parameters
      
        # Path to the notebook file to execute. Must be in a Google Cloud Storage bucket.
        # Format: `gs://`bucket_name`/`folder`/`notebook_file_name`` Ex: `gs://
        # notebook_user/scheduled_notebooks/sentiment_notebook.ipynb`
        # Corresponds to the JSON property `inputNotebookFile`
        # @return [String]
        attr_accessor :input_notebook_file
      
        # The type of Job to be used on this execution.
        # Corresponds to the JSON property `jobType`
        # @return [String]
        attr_accessor :job_type
      
        # Name of the kernel spec to use. This must be specified if the kernel spec name
        # on the execution target does not match the name in the input notebook file.
        # Corresponds to the JSON property `kernelSpec`
        # @return [String]
        attr_accessor :kernel_spec
      
        # Labels for execution. If execution is scheduled, a field included will be 'nbs-
        # scheduled'. Otherwise, it is an immediate execution, and an included field
        # will be 'nbs-immediate'. Use fields to efficiently index between various types
        # of executions.
        # Corresponds to the JSON property `labels`
        # @return [Hash<String,String>]
        attr_accessor :labels
      
        # Specifies the type of virtual machine to use for your training job's master
        # worker. You must specify this field when `scaleTier` is set to `CUSTOM`. You
        # can use certain Compute Engine machine types directly in this field. The
        # following types are supported: - `n1-standard-4` - `n1-standard-8` - `n1-
        # standard-16` - `n1-standard-32` - `n1-standard-64` - `n1-standard-96` - `n1-
        # highmem-2` - `n1-highmem-4` - `n1-highmem-8` - `n1-highmem-16` - `n1-highmem-
        # 32` - `n1-highmem-64` - `n1-highmem-96` - `n1-highcpu-16` - `n1-highcpu-32` - `
        # n1-highcpu-64` - `n1-highcpu-96` Alternatively, you can use the following
        # legacy machine types: - `standard` - `large_model` - `complex_model_s` - `
        # complex_model_m` - `complex_model_l` - `standard_gpu` - `complex_model_m_gpu` -
        # `complex_model_l_gpu` - `standard_p100` - `complex_model_m_p100` - `
        # standard_v100` - `large_model_v100` - `complex_model_m_v100` - `
        # complex_model_l_v100` Finally, if you want to use a TPU for training, specify `
        # cloud_tpu` in this field. Learn more about the [special configuration options
        # for training with TPU](https://cloud.google.com/ai-platform/training/docs/
        # using-tpus#configuring_a_custom_tpu_machine).
        # Corresponds to the JSON property `masterType`
        # @return [String]
        attr_accessor :master_type
      
        # Path to the notebook folder to write to. Must be in a Google Cloud Storage
        # bucket path. Format: `gs://`bucket_name`/`folder`` Ex: `gs://notebook_user/
        # scheduled_notebooks`
        # Corresponds to the JSON property `outputNotebookFolder`
        # @return [String]
        attr_accessor :output_notebook_folder
      
        # Parameters used within the 'input_notebook_file' notebook.
        # Corresponds to the JSON property `parameters`
        # @return [String]
        attr_accessor :parameters
      
        # Parameters to be overridden in the notebook during execution. Ref https://
        # papermill.readthedocs.io/en/latest/usage-parameterize.html on how to
        # specifying parameters in the input notebook and pass them here in an YAML file.
        # Ex: `gs://notebook_user/scheduled_notebooks/sentiment_notebook_params.yaml`
        # Corresponds to the JSON property `paramsYamlFile`
        # @return [String]
        attr_accessor :params_yaml_file
      
        # Required. Scale tier of the hardware used for notebook execution. DEPRECATED
        # Will be discontinued. As right now only CUSTOM is supported.
        # Corresponds to the JSON property `scaleTier`
        # @return [String]
        attr_accessor :scale_tier
      
        # The email address of a service account to use when running the execution. You
        # must have the `iam.serviceAccounts.actAs` permission for the specified service
        # account.
        # Corresponds to the JSON property `serviceAccount`
        # @return [String]
        attr_accessor :service_account
      
        # The name of a Vertex AI [Tensorboard] resource to which this execution will
        # upload Tensorboard logs. Format: `projects/`project`/locations/`location`/
        # tensorboards/`tensorboard``
        # Corresponds to the JSON property `tensorboard`
        # @return [String]
        attr_accessor :tensorboard
      
        # Parameters used in Vertex AI JobType executions.
        # Corresponds to the JSON property `vertexAiParameters`
        # @return [Google::Apis::NotebooksV1::VertexAiParameters]
        attr_accessor :vertex_ai_parameters
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @accelerator_config = args[:accelerator_config] if args.key?(:accelerator_config)
          @container_image_uri = args[:container_image_uri] if args.key?(:container_image_uri)
          @dataproc_parameters = args[:dataproc_parameters] if args.key?(:dataproc_parameters)
          @input_notebook_file = args[:input_notebook_file] if args.key?(:input_notebook_file)
          @job_type = args[:job_type] if args.key?(:job_type)
          @kernel_spec = args[:kernel_spec] if args.key?(:kernel_spec)
          @labels = args[:labels] if args.key?(:labels)
          @master_type = args[:master_type] if args.key?(:master_type)
          @output_notebook_folder = args[:output_notebook_folder] if args.key?(:output_notebook_folder)
          @parameters = args[:parameters] if args.key?(:parameters)
          @params_yaml_file = args[:params_yaml_file] if args.key?(:params_yaml_file)
          @scale_tier = args[:scale_tier] if args.key?(:scale_tier)
          @service_account = args[:service_account] if args.key?(:service_account)
          @tensorboard = args[:tensorboard] if args.key?(:tensorboard)
          @vertex_ai_parameters = args[:vertex_ai_parameters] if args.key?(:vertex_ai_parameters)
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
      
      # Response for checking if a notebook instance is healthy.
      class GetInstanceHealthResponse
        include Google::Apis::Core::Hashable
      
        # Output only. Additional information about instance health. Example: healthInfo"
        # : ` "docker_proxy_agent_status": "1", "docker_status": "1", "
        # jupyterlab_api_status": "-1", "jupyterlab_status": "-1", "updated": "2020-10-
        # 18 09:40:03.573409" `
        # Corresponds to the JSON property `healthInfo`
        # @return [Hash<String,String>]
        attr_accessor :health_info
      
        # Output only. Runtime health_state.
        # Corresponds to the JSON property `healthState`
        # @return [String]
        attr_accessor :health_state
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @health_info = args[:health_info] if args.key?(:health_info)
          @health_state = args[:health_state] if args.key?(:health_state)
        end
      end
      
      # Guest OS features for boot disk.
      class GuestOsFeature
        include Google::Apis::Core::Hashable
      
        # The ID of a supported feature. Read Enabling guest operating system features
        # to see a list of available options. Valid values: * `FEATURE_TYPE_UNSPECIFIED`
        # * `MULTI_IP_SUBNET` * `SECURE_BOOT` * `UEFI_COMPATIBLE` * `
        # VIRTIO_SCSI_MULTIQUEUE` * `WINDOWS`
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
        # and `core_count` are valid. Check [GPUs on Compute Engine](https://cloud.
        # google.com/compute/docs/gpus/#gpus-list) to find a valid combination. TPUs are
        # not supported.
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
      
        # Optional. Flag to enable ip forwarding or not, default false/off. https://
        # cloud.google.com/vpc/docs/using-routes#canipforward
        # Corresponds to the JSON property `canIpForward`
        # @return [Boolean]
        attr_accessor :can_ip_forward
        alias_method :can_ip_forward?, :can_ip_forward
      
        # Definition of a container image for starting a notebook instance with the
        # environment installed in a container.
        # Corresponds to the JSON property `containerImage`
        # @return [Google::Apis::NotebooksV1::ContainerImage]
        attr_accessor :container_image
      
        # Output only. Instance creation time.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Output only. Email address of entity that sent original CreateInstance request.
        # Corresponds to the JSON property `creator`
        # @return [String]
        attr_accessor :creator
      
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
      
        # Required. The [Compute Engine machine type](https://cloud.google.com/compute/
        # docs/machine-types) of this instance.
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
      
        # Optional. The type of vNIC to be used on this interface. This may be gVNIC or
        # VirtioNet.
        # Corresponds to the JSON property `nicType`
        # @return [String]
        attr_accessor :nic_type
      
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
        # boots up. The path must be a URL or Cloud Storage path (`gs://path-to-file/
        # file-name`).
        # Corresponds to the JSON property `postStartupScript`
        # @return [String]
        attr_accessor :post_startup_script
      
        # Output only. The proxy endpoint that is used to access the Jupyter notebook.
        # Corresponds to the JSON property `proxyUri`
        # @return [String]
        attr_accessor :proxy_uri
      
        # Reservation Affinity for consuming Zonal reservation.
        # Corresponds to the JSON property `reservationAffinity`
        # @return [Google::Apis::NotebooksV1::ReservationAffinity]
        attr_accessor :reservation_affinity
      
        # The service account on this instance, giving access to other Google Cloud
        # services. You can use any service account within the same project, but you
        # must have the service account user permission to use the instance. If not
        # specified, the [Compute Engine default service account](https://cloud.google.
        # com/compute/docs/access/service-accounts#default_service_account) is used.
        # Corresponds to the JSON property `serviceAccount`
        # @return [String]
        attr_accessor :service_account
      
        # Optional. The URIs of service account scopes to be included in Compute Engine
        # instances. If not specified, the following [scopes](https://cloud.google.com/
        # compute/docs/access/service-accounts#accesscopesiam) are defined: - https://
        # www.googleapis.com/auth/cloud-platform - https://www.googleapis.com/auth/
        # userinfo.email If not using default scopes, you need at least: https://www.
        # googleapis.com/auth/compute
        # Corresponds to the JSON property `serviceAccountScopes`
        # @return [Array<String>]
        attr_accessor :service_account_scopes
      
        # A set of Shielded Instance options. Check [Images using supported Shielded VM
        # features](https://cloud.google.com/compute/docs/instances/modifying-shielded-
        # vm). Not all combinations are valid.
        # Corresponds to the JSON property `shieldedInstanceConfig`
        # @return [Google::Apis::NotebooksV1::ShieldedInstanceConfig]
        attr_accessor :shielded_instance_config
      
        # Output only. The state of this instance.
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        # The name of the subnet that this instance is in. Format: `projects/`project_id`
        # /regions/`region`/subnetworks/`subnetwork_id``
        # Corresponds to the JSON property `subnet`
        # @return [String]
        attr_accessor :subnet
      
        # Optional. The Compute Engine tags to add to runtime (see [Tagging instances](
        # https://cloud.google.com/compute/docs/label-or-tag-resources#tags)).
        # Corresponds to the JSON property `tags`
        # @return [Array<String>]
        attr_accessor :tags
      
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
          @can_ip_forward = args[:can_ip_forward] if args.key?(:can_ip_forward)
          @container_image = args[:container_image] if args.key?(:container_image)
          @create_time = args[:create_time] if args.key?(:create_time)
          @creator = args[:creator] if args.key?(:creator)
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
          @nic_type = args[:nic_type] if args.key?(:nic_type)
          @no_proxy_access = args[:no_proxy_access] if args.key?(:no_proxy_access)
          @no_public_ip = args[:no_public_ip] if args.key?(:no_public_ip)
          @no_remove_data_disk = args[:no_remove_data_disk] if args.key?(:no_remove_data_disk)
          @post_startup_script = args[:post_startup_script] if args.key?(:post_startup_script)
          @proxy_uri = args[:proxy_uri] if args.key?(:proxy_uri)
          @reservation_affinity = args[:reservation_affinity] if args.key?(:reservation_affinity)
          @service_account = args[:service_account] if args.key?(:service_account)
          @service_account_scopes = args[:service_account_scopes] if args.key?(:service_account_scopes)
          @shielded_instance_config = args[:shielded_instance_config] if args.key?(:shielded_instance_config)
          @state = args[:state] if args.key?(:state)
          @subnet = args[:subnet] if args.key?(:subnet)
          @tags = args[:tags] if args.key?(:tags)
          @update_time = args[:update_time] if args.key?(:update_time)
          @upgrade_history = args[:upgrade_history] if args.key?(:upgrade_history)
          @vm_image = args[:vm_image] if args.key?(:vm_image)
        end
      end
      
      # Notebook instance configurations that can be updated.
      class InstanceConfig
        include Google::Apis::Core::Hashable
      
        # Verifies core internal services are running.
        # Corresponds to the JSON property `enableHealthMonitoring`
        # @return [Boolean]
        attr_accessor :enable_health_monitoring
        alias_method :enable_health_monitoring?, :enable_health_monitoring
      
        # Cron expression in UTC timezone, used to schedule instance auto upgrade.
        # Please follow the [cron format](https://en.wikipedia.org/wiki/Cron).
        # Corresponds to the JSON property `notebookUpgradeSchedule`
        # @return [String]
        attr_accessor :notebook_upgrade_schedule
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @enable_health_monitoring = args[:enable_health_monitoring] if args.key?(:enable_health_monitoring)
          @notebook_upgrade_schedule = args[:notebook_upgrade_schedule] if args.key?(:notebook_upgrade_schedule)
        end
      end
      
      # Response for checking if a notebook instance is upgradeable.
      class IsInstanceUpgradeableResponse
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
      
      # Response for listing scheduled notebook executions
      class ListExecutionsResponse
        include Google::Apis::Core::Hashable
      
        # A list of returned instances.
        # Corresponds to the JSON property `executions`
        # @return [Array<Google::Apis::NotebooksV1::Execution>]
        attr_accessor :executions
      
        # Page token that can be used to continue listing from the last result in the
        # next list call.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # Executions IDs that could not be reached. For example: ['projects/`project_id`/
        # location/`location`/executions/imagenet_test1', 'projects/`project_id`/
        # location/`location`/executions/classifier_train1']
        # Corresponds to the JSON property `unreachable`
        # @return [Array<String>]
        attr_accessor :unreachable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @executions = args[:executions] if args.key?(:executions)
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
      
        # Locations that could not be reached. For example, `['us-west1-a', 'us-central1-
        # b']`. A ListInstancesResponse will only contain either instances or
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
      
      # Response for listing Managed Notebook Runtimes.
      class ListRuntimesResponse
        include Google::Apis::Core::Hashable
      
        # Page token that can be used to continue listing from the last result in the
        # next list call.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # A list of returned Runtimes.
        # Corresponds to the JSON property `runtimes`
        # @return [Array<Google::Apis::NotebooksV1::Runtime>]
        attr_accessor :runtimes
      
        # Locations that could not be reached. For example, `['us-west1', 'us-central1']`
        # . A ListRuntimesResponse will only contain either runtimes or unreachables,
        # Corresponds to the JSON property `unreachable`
        # @return [Array<String>]
        attr_accessor :unreachable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @runtimes = args[:runtimes] if args.key?(:runtimes)
          @unreachable = args[:unreachable] if args.key?(:unreachable)
        end
      end
      
      # Response for listing scheduled notebook job.
      class ListSchedulesResponse
        include Google::Apis::Core::Hashable
      
        # Page token that can be used to continue listing from the last result in the
        # next list call.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # A list of returned instances.
        # Corresponds to the JSON property `schedules`
        # @return [Array<Google::Apis::NotebooksV1::Schedule>]
        attr_accessor :schedules
      
        # Schedules that could not be reached. For example: ['projects/`project_id`/
        # location/`location`/schedules/monthly_digest', 'projects/`project_id`/location/
        # `location`/schedules/weekly_sentiment']
        # Corresponds to the JSON property `unreachable`
        # @return [Array<String>]
        attr_accessor :unreachable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @schedules = args[:schedules] if args.key?(:schedules)
          @unreachable = args[:unreachable] if args.key?(:unreachable)
        end
      end
      
      # A Local attached disk resource.
      class LocalDisk
        include Google::Apis::Core::Hashable
      
        # Optional. Output only. Specifies whether the disk will be auto-deleted when
        # the instance is deleted (but not when the disk is detached from the instance).
        # Corresponds to the JSON property `autoDelete`
        # @return [Boolean]
        attr_accessor :auto_delete
        alias_method :auto_delete?, :auto_delete
      
        # Optional. Output only. Indicates that this is a boot disk. The virtual machine
        # will use the first partition of the disk for its root filesystem.
        # Corresponds to the JSON property `boot`
        # @return [Boolean]
        attr_accessor :boot
        alias_method :boot?, :boot
      
        # Optional. Output only. Specifies a unique device name of your choice that is
        # reflected into the `/dev/disk/by-id/google-*` tree of a Linux operating system
        # running within the instance. This name can be used to reference the device for
        # mounting, resizing, and so on, from within the instance. If not specified, the
        # server chooses a default device name to apply to this disk, in the form
        # persistent-disk-x, where x is a number assigned by Google Compute Engine. This
        # field is only applicable for persistent disks.
        # Corresponds to the JSON property `deviceName`
        # @return [String]
        attr_accessor :device_name
      
        # Output only. Indicates a list of features to enable on the guest operating
        # system. Applicable only for bootable images. Read Enabling guest operating
        # system features to see a list of available options.
        # Corresponds to the JSON property `guestOsFeatures`
        # @return [Array<Google::Apis::NotebooksV1::RuntimeGuestOsFeature>]
        attr_accessor :guest_os_features
      
        # Output only. A zero-based index to this disk, where 0 is reserved for the boot
        # disk. If you have many disks attached to an instance, each disk would have a
        # unique index number.
        # Corresponds to the JSON property `index`
        # @return [Fixnum]
        attr_accessor :index
      
        # Input only. Specifies the parameters for a new disk that will be created
        # alongside the new instance. Use initialization parameters to create boot disks
        # or local SSDs attached to the new runtime. This property is mutually exclusive
        # with the source property; you can only define one or the other, but not both.
        # Corresponds to the JSON property `initializeParams`
        # @return [Google::Apis::NotebooksV1::LocalDiskInitializeParams]
        attr_accessor :initialize_params
      
        # Specifies the disk interface to use for attaching this disk, which is either
        # SCSI or NVME. The default is SCSI. Persistent disks must always use SCSI and
        # the request will fail if you attempt to attach a persistent disk in any other
        # format than SCSI. Local SSDs can use either NVME or SCSI. For performance
        # characteristics of SCSI over NVMe, see Local SSD performance. Valid values: * `
        # NVME` * `SCSI`
        # Corresponds to the JSON property `interface`
        # @return [String]
        attr_accessor :interface
      
        # Output only. Type of the resource. Always compute#attachedDisk for attached
        # disks.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # Output only. Any valid publicly visible licenses.
        # Corresponds to the JSON property `licenses`
        # @return [Array<String>]
        attr_accessor :licenses
      
        # The mode in which to attach this disk, either `READ_WRITE` or `READ_ONLY`. If
        # not specified, the default is to attach the disk in `READ_WRITE` mode. Valid
        # values: * `READ_ONLY` * `READ_WRITE`
        # Corresponds to the JSON property `mode`
        # @return [String]
        attr_accessor :mode
      
        # Specifies a valid partial or full URL to an existing Persistent Disk resource.
        # Corresponds to the JSON property `source`
        # @return [String]
        attr_accessor :source
      
        # Specifies the type of the disk, either `SCRATCH` or `PERSISTENT`. If not
        # specified, the default is `PERSISTENT`. Valid values: * `PERSISTENT` * `
        # SCRATCH`
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
          @guest_os_features = args[:guest_os_features] if args.key?(:guest_os_features)
          @index = args[:index] if args.key?(:index)
          @initialize_params = args[:initialize_params] if args.key?(:initialize_params)
          @interface = args[:interface] if args.key?(:interface)
          @kind = args[:kind] if args.key?(:kind)
          @licenses = args[:licenses] if args.key?(:licenses)
          @mode = args[:mode] if args.key?(:mode)
          @source = args[:source] if args.key?(:source)
          @type = args[:type] if args.key?(:type)
        end
      end
      
      # Input only. Specifies the parameters for a new disk that will be created
      # alongside the new instance. Use initialization parameters to create boot disks
      # or local SSDs attached to the new runtime. This property is mutually exclusive
      # with the source property; you can only define one or the other, but not both.
      class LocalDiskInitializeParams
        include Google::Apis::Core::Hashable
      
        # Optional. Provide this property when creating the disk.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # Optional. Specifies the disk name. If not specified, the default is to use the
        # name of the instance. If the disk with the instance name exists already in the
        # given zone/region, a new name will be automatically generated.
        # Corresponds to the JSON property `diskName`
        # @return [String]
        attr_accessor :disk_name
      
        # Optional. Specifies the size of the disk in base-2 GB. If not specified, the
        # disk will be the same size as the image (usually 10GB). If specified, the size
        # must be equal to or larger than 10GB. Default 100 GB.
        # Corresponds to the JSON property `diskSizeGb`
        # @return [Fixnum]
        attr_accessor :disk_size_gb
      
        # Input only. The type of the boot disk attached to this instance, defaults to
        # standard persistent disk (`PD_STANDARD`).
        # Corresponds to the JSON property `diskType`
        # @return [String]
        attr_accessor :disk_type
      
        # Optional. Labels to apply to this disk. These can be later modified by the
        # disks.setLabels method. This field is only applicable for persistent disks.
        # Corresponds to the JSON property `labels`
        # @return [Hash<String,String>]
        attr_accessor :labels
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @description = args[:description] if args.key?(:description)
          @disk_name = args[:disk_name] if args.key?(:disk_name)
          @disk_size_gb = args[:disk_size_gb] if args.key?(:disk_size_gb)
          @disk_type = args[:disk_type] if args.key?(:disk_type)
          @labels = args[:labels] if args.key?(:labels)
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
      
      # Request for getting a new access token.
      class RefreshRuntimeTokenInternalRequest
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
      
      # Response with a new access token.
      class RefreshRuntimeTokenInternalResponse
        include Google::Apis::Core::Hashable
      
        # The OAuth 2.0 access token.
        # Corresponds to the JSON property `accessToken`
        # @return [String]
        attr_accessor :access_token
      
        # Output only. Token expiration time.
        # Corresponds to the JSON property `expireTime`
        # @return [String]
        attr_accessor :expire_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @access_token = args[:access_token] if args.key?(:access_token)
          @expire_time = args[:expire_time] if args.key?(:expire_time)
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
      
      # Request for reporting a Managed Notebook Event.
      class ReportInstanceEventRequest
        include Google::Apis::Core::Hashable
      
        # The definition of an Event for a managed / semi-managed notebook instance.
        # Corresponds to the JSON property `event`
        # @return [Google::Apis::NotebooksV1::Event]
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
      
      # Request for reporting a Managed Notebook Event.
      class ReportRuntimeEventRequest
        include Google::Apis::Core::Hashable
      
        # The definition of an Event for a managed / semi-managed notebook instance.
        # Corresponds to the JSON property `event`
        # @return [Google::Apis::NotebooksV1::Event]
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
      
      # Reservation Affinity for consuming Zonal reservation.
      class ReservationAffinity
        include Google::Apis::Core::Hashable
      
        # Optional. Type of reservation to consume
        # Corresponds to the JSON property `consumeReservationType`
        # @return [String]
        attr_accessor :consume_reservation_type
      
        # Optional. Corresponds to the label key of reservation resource.
        # Corresponds to the JSON property `key`
        # @return [String]
        attr_accessor :key
      
        # Optional. Corresponds to the label values of reservation resource.
        # Corresponds to the JSON property `values`
        # @return [Array<String>]
        attr_accessor :values
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @consume_reservation_type = args[:consume_reservation_type] if args.key?(:consume_reservation_type)
          @key = args[:key] if args.key?(:key)
          @values = args[:values] if args.key?(:values)
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
      
      # Request for resetting a Managed Notebook Runtime.
      class ResetRuntimeRequest
        include Google::Apis::Core::Hashable
      
        # Idempotent request UUID.
        # Corresponds to the JSON property `requestId`
        # @return [String]
        attr_accessor :request_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @request_id = args[:request_id] if args.key?(:request_id)
        end
      end
      
      # Request for rollbacking a notebook instance
      class RollbackInstanceRequest
        include Google::Apis::Core::Hashable
      
        # Required. The snapshot for rollback. Example: `projects/test-project/global/
        # snapshots/krwlzipynril`.
        # Corresponds to the JSON property `targetSnapshot`
        # @return [String]
        attr_accessor :target_snapshot
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @target_snapshot = args[:target_snapshot] if args.key?(:target_snapshot)
        end
      end
      
      # The definition of a Runtime for a managed notebook instance.
      class Runtime
        include Google::Apis::Core::Hashable
      
        # Specifies the login configuration for Runtime
        # Corresponds to the JSON property `accessConfig`
        # @return [Google::Apis::NotebooksV1::RuntimeAccessConfig]
        attr_accessor :access_config
      
        # Output only. Runtime creation time.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Output only. Runtime health_state.
        # Corresponds to the JSON property `healthState`
        # @return [String]
        attr_accessor :health_state
      
        # Optional. The labels to associate with this Managed Notebook or Runtime. Label
        # **keys** must contain 1 to 63 characters, and must conform to [RFC 1035](https:
        # //www.ietf.org/rfc/rfc1035.txt). Label **values** may be empty, but, if
        # present, must contain 1 to 63 characters, and must conform to [RFC 1035](https:
        # //www.ietf.org/rfc/rfc1035.txt). No more than 32 labels can be associated with
        # a cluster.
        # Corresponds to the JSON property `labels`
        # @return [Hash<String,String>]
        attr_accessor :labels
      
        # Contains runtime daemon metrics, such as OS and kernels and sessions stats.
        # Corresponds to the JSON property `metrics`
        # @return [Google::Apis::NotebooksV1::RuntimeMetrics]
        attr_accessor :metrics
      
        # Output only. The resource name of the runtime. Format: `projects/`project`/
        # locations/`location`/runtimes/`runtimeId``
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Specifies the selection and configuration of software inside the runtime. The
        # properties to set on runtime. Properties keys are specified in `key:value`
        # format, for example: * `idle_shutdown: true` * `idle_shutdown_timeout: 180` * `
        # enable_health_monitoring: true`
        # Corresponds to the JSON property `softwareConfig`
        # @return [Google::Apis::NotebooksV1::RuntimeSoftwareConfig]
        attr_accessor :software_config
      
        # Output only. Runtime state.
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        # Output only. Runtime update time.
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        # Runtime using Virtual Machine for computing.
        # Corresponds to the JSON property `virtualMachine`
        # @return [Google::Apis::NotebooksV1::VirtualMachine]
        attr_accessor :virtual_machine
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @access_config = args[:access_config] if args.key?(:access_config)
          @create_time = args[:create_time] if args.key?(:create_time)
          @health_state = args[:health_state] if args.key?(:health_state)
          @labels = args[:labels] if args.key?(:labels)
          @metrics = args[:metrics] if args.key?(:metrics)
          @name = args[:name] if args.key?(:name)
          @software_config = args[:software_config] if args.key?(:software_config)
          @state = args[:state] if args.key?(:state)
          @update_time = args[:update_time] if args.key?(:update_time)
          @virtual_machine = args[:virtual_machine] if args.key?(:virtual_machine)
        end
      end
      
      # Definition of the types of hardware accelerators that can be used. Definition
      # of the types of hardware accelerators that can be used. See [Compute Engine
      # AcceleratorTypes](https://cloud.google.com/compute/docs/reference/beta/
      # acceleratorTypes). Examples: * `nvidia-tesla-k80` * `nvidia-tesla-p100` * `
      # nvidia-tesla-v100` * `nvidia-tesla-p4` * `nvidia-tesla-t4` * `nvidia-tesla-
      # a100`
      class RuntimeAcceleratorConfig
        include Google::Apis::Core::Hashable
      
        # Count of cores of this accelerator.
        # Corresponds to the JSON property `coreCount`
        # @return [Fixnum]
        attr_accessor :core_count
      
        # Accelerator model.
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
      
      # Specifies the login configuration for Runtime
      class RuntimeAccessConfig
        include Google::Apis::Core::Hashable
      
        # The type of access mode this instance.
        # Corresponds to the JSON property `accessType`
        # @return [String]
        attr_accessor :access_type
      
        # Output only. The proxy endpoint that is used to access the runtime.
        # Corresponds to the JSON property `proxyUri`
        # @return [String]
        attr_accessor :proxy_uri
      
        # The owner of this runtime after creation. Format: `alias@example.com`
        # Currently supports one owner only.
        # Corresponds to the JSON property `runtimeOwner`
        # @return [String]
        attr_accessor :runtime_owner
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @access_type = args[:access_type] if args.key?(:access_type)
          @proxy_uri = args[:proxy_uri] if args.key?(:proxy_uri)
          @runtime_owner = args[:runtime_owner] if args.key?(:runtime_owner)
        end
      end
      
      # Optional. A list of features to enable on the guest operating system.
      # Applicable only for bootable images. Read [Enabling guest operating system
      # features](https://cloud.google.com/compute/docs/images/create-delete-deprecate-
      # private-images#guest-os-features) to see a list of available options. Guest OS
      # features for boot disk.
      class RuntimeGuestOsFeature
        include Google::Apis::Core::Hashable
      
        # The ID of a supported feature. Read [Enabling guest operating system features](
        # https://cloud.google.com/compute/docs/images/create-delete-deprecate-private-
        # images#guest-os-features) to see a list of available options. Valid values: * `
        # FEATURE_TYPE_UNSPECIFIED` * `MULTI_IP_SUBNET` * `SECURE_BOOT` * `
        # UEFI_COMPATIBLE` * `VIRTIO_SCSI_MULTIQUEUE` * `WINDOWS`
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
      
      # Contains runtime daemon metrics, such as OS and kernels and sessions stats.
      class RuntimeMetrics
        include Google::Apis::Core::Hashable
      
        # Output only. The system metrics.
        # Corresponds to the JSON property `systemMetrics`
        # @return [Hash<String,String>]
        attr_accessor :system_metrics
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @system_metrics = args[:system_metrics] if args.key?(:system_metrics)
        end
      end
      
      # A set of Shielded Instance options. Check [Images using supported Shielded VM
      # features](https://cloud.google.com/compute/docs/instances/modifying-shielded-
      # vm). Not all combinations are valid.
      class RuntimeShieldedInstanceConfig
        include Google::Apis::Core::Hashable
      
        # Defines whether the instance has integrity monitoring enabled. Enables
        # monitoring and attestation of the boot integrity of the instance. The
        # attestation is performed against the integrity policy baseline. This baseline
        # is initially derived from the implicitly trusted boot image when the instance
        # is created. Enabled by default.
        # Corresponds to the JSON property `enableIntegrityMonitoring`
        # @return [Boolean]
        attr_accessor :enable_integrity_monitoring
        alias_method :enable_integrity_monitoring?, :enable_integrity_monitoring
      
        # Defines whether the instance has Secure Boot enabled. Secure Boot helps ensure
        # that the system only runs authentic software by verifying the digital
        # signature of all boot components, and halting the boot process if signature
        # verification fails. Disabled by default.
        # Corresponds to the JSON property `enableSecureBoot`
        # @return [Boolean]
        attr_accessor :enable_secure_boot
        alias_method :enable_secure_boot?, :enable_secure_boot
      
        # Defines whether the instance has the vTPM enabled. Enabled by default.
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
      
      # Specifies the selection and configuration of software inside the runtime. The
      # properties to set on runtime. Properties keys are specified in `key:value`
      # format, for example: * `idle_shutdown: true` * `idle_shutdown_timeout: 180` * `
      # enable_health_monitoring: true`
      class RuntimeSoftwareConfig
        include Google::Apis::Core::Hashable
      
        # Specify a custom Cloud Storage path where the GPU driver is stored. If not
        # specified, we'll automatically choose from official GPU drivers.
        # Corresponds to the JSON property `customGpuDriverPath`
        # @return [String]
        attr_accessor :custom_gpu_driver_path
      
        # Bool indicating whether JupyterLab terminal will be available or not. Default:
        # False
        # Corresponds to the JSON property `disableTerminal`
        # @return [Boolean]
        attr_accessor :disable_terminal
        alias_method :disable_terminal?, :disable_terminal
      
        # Verifies core internal services are running. Default: True
        # Corresponds to the JSON property `enableHealthMonitoring`
        # @return [Boolean]
        attr_accessor :enable_health_monitoring
        alias_method :enable_health_monitoring?, :enable_health_monitoring
      
        # Runtime will automatically shutdown after idle_shutdown_time. Default: True
        # Corresponds to the JSON property `idleShutdown`
        # @return [Boolean]
        attr_accessor :idle_shutdown
        alias_method :idle_shutdown?, :idle_shutdown
      
        # Time in minutes to wait before shutting down runtime. Default: 180 minutes
        # Corresponds to the JSON property `idleShutdownTimeout`
        # @return [Fixnum]
        attr_accessor :idle_shutdown_timeout
      
        # Install Nvidia Driver automatically. Default: True
        # Corresponds to the JSON property `installGpuDriver`
        # @return [Boolean]
        attr_accessor :install_gpu_driver
        alias_method :install_gpu_driver?, :install_gpu_driver
      
        # Optional. Use a list of container images to use as Kernels in the notebook
        # instance.
        # Corresponds to the JSON property `kernels`
        # @return [Array<Google::Apis::NotebooksV1::ContainerImage>]
        attr_accessor :kernels
      
        # Bool indicating whether mixer client should be disabled. Default: False
        # Corresponds to the JSON property `mixerDisabled`
        # @return [Boolean]
        attr_accessor :mixer_disabled
        alias_method :mixer_disabled?, :mixer_disabled
      
        # Cron expression in UTC timezone, used to schedule instance auto upgrade.
        # Please follow the [cron format](https://en.wikipedia.org/wiki/Cron).
        # Corresponds to the JSON property `notebookUpgradeSchedule`
        # @return [String]
        attr_accessor :notebook_upgrade_schedule
      
        # Path to a Bash script that automatically runs after a notebook instance fully
        # boots up. The path must be a URL or Cloud Storage path (`gs://path-to-file/
        # file-name`).
        # Corresponds to the JSON property `postStartupScript`
        # @return [String]
        attr_accessor :post_startup_script
      
        # Behavior for the post startup script.
        # Corresponds to the JSON property `postStartupScriptBehavior`
        # @return [String]
        attr_accessor :post_startup_script_behavior
      
        # Output only. Bool indicating whether an newer image is available in an image
        # family.
        # Corresponds to the JSON property `upgradeable`
        # @return [Boolean]
        attr_accessor :upgradeable
        alias_method :upgradeable?, :upgradeable
      
        # Output only. version of boot image such as M100, from release label of the
        # image.
        # Corresponds to the JSON property `version`
        # @return [String]
        attr_accessor :version
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @custom_gpu_driver_path = args[:custom_gpu_driver_path] if args.key?(:custom_gpu_driver_path)
          @disable_terminal = args[:disable_terminal] if args.key?(:disable_terminal)
          @enable_health_monitoring = args[:enable_health_monitoring] if args.key?(:enable_health_monitoring)
          @idle_shutdown = args[:idle_shutdown] if args.key?(:idle_shutdown)
          @idle_shutdown_timeout = args[:idle_shutdown_timeout] if args.key?(:idle_shutdown_timeout)
          @install_gpu_driver = args[:install_gpu_driver] if args.key?(:install_gpu_driver)
          @kernels = args[:kernels] if args.key?(:kernels)
          @mixer_disabled = args[:mixer_disabled] if args.key?(:mixer_disabled)
          @notebook_upgrade_schedule = args[:notebook_upgrade_schedule] if args.key?(:notebook_upgrade_schedule)
          @post_startup_script = args[:post_startup_script] if args.key?(:post_startup_script)
          @post_startup_script_behavior = args[:post_startup_script_behavior] if args.key?(:post_startup_script_behavior)
          @upgradeable = args[:upgradeable] if args.key?(:upgradeable)
          @version = args[:version] if args.key?(:version)
        end
      end
      
      # The definition of a schedule.
      class Schedule
        include Google::Apis::Core::Hashable
      
        # Output only. Time the schedule was created.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Cron-tab formatted schedule by which the job will execute. Format: minute,
        # hour, day of month, month, day of week, e.g. `0 0 * * WED` = every Wednesday
        # More examples: https://crontab.guru/examples.html
        # Corresponds to the JSON property `cronSchedule`
        # @return [String]
        attr_accessor :cron_schedule
      
        # A brief description of this environment.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # Output only. Display name used for UI purposes. Name can only contain
        # alphanumeric characters, hyphens `-`, and underscores `_`.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # The description a notebook execution workload.
        # Corresponds to the JSON property `executionTemplate`
        # @return [Google::Apis::NotebooksV1::ExecutionTemplate]
        attr_accessor :execution_template
      
        # Output only. The name of this schedule. Format: `projects/`project_id`/
        # locations/`location`/schedules/`schedule_id``
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Output only. The most recent execution names triggered from this schedule and
        # their corresponding states.
        # Corresponds to the JSON property `recentExecutions`
        # @return [Array<Google::Apis::NotebooksV1::Execution>]
        attr_accessor :recent_executions
      
        # 
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        # Timezone on which the cron_schedule. The value of this field must be a time
        # zone name from the tz database. TZ Database: https://en.wikipedia.org/wiki/
        # List_of_tz_database_time_zones Note that some time zones include a provision
        # for daylight savings time. The rules for daylight saving time are determined
        # by the chosen tz. For UTC use the string "utc". If a time zone is not
        # specified, the default will be in UTC (also known as GMT).
        # Corresponds to the JSON property `timeZone`
        # @return [String]
        attr_accessor :time_zone
      
        # Output only. Time the schedule was last updated.
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @create_time = args[:create_time] if args.key?(:create_time)
          @cron_schedule = args[:cron_schedule] if args.key?(:cron_schedule)
          @description = args[:description] if args.key?(:description)
          @display_name = args[:display_name] if args.key?(:display_name)
          @execution_template = args[:execution_template] if args.key?(:execution_template)
          @name = args[:name] if args.key?(:name)
          @recent_executions = args[:recent_executions] if args.key?(:recent_executions)
          @state = args[:state] if args.key?(:state)
          @time_zone = args[:time_zone] if args.key?(:time_zone)
          @update_time = args[:update_time] if args.key?(:update_time)
        end
      end
      
      # Definition of a hardware accelerator. Note that not all combinations of `type`
      # and `core_count` are valid. Check [GPUs on Compute Engine](https://cloud.
      # google.com/compute/docs/gpus) to find a valid combination. TPUs are not
      # supported.
      class SchedulerAcceleratorConfig
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
      
      # A set of Shielded Instance options. Check [Images using supported Shielded VM
      # features](https://cloud.google.com/compute/docs/instances/modifying-shielded-
      # vm). Not all combinations are valid.
      class ShieldedInstanceConfig
        include Google::Apis::Core::Hashable
      
        # Defines whether the instance has integrity monitoring enabled. Enables
        # monitoring and attestation of the boot integrity of the instance. The
        # attestation is performed against the integrity policy baseline. This baseline
        # is initially derived from the implicitly trusted boot image when the instance
        # is created. Enabled by default.
        # Corresponds to the JSON property `enableIntegrityMonitoring`
        # @return [Boolean]
        attr_accessor :enable_integrity_monitoring
        alias_method :enable_integrity_monitoring?, :enable_integrity_monitoring
      
        # Defines whether the instance has Secure Boot enabled. Secure Boot helps ensure
        # that the system only runs authentic software by verifying the digital
        # signature of all boot components, and halting the boot process if signature
        # verification fails. Disabled by default.
        # Corresponds to the JSON property `enableSecureBoot`
        # @return [Boolean]
        attr_accessor :enable_secure_boot
        alias_method :enable_secure_boot?, :enable_secure_boot
      
        # Defines whether the instance has the vTPM enabled. Enabled by default.
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
      
      # Request for starting a Managed Notebook Runtime.
      class StartRuntimeRequest
        include Google::Apis::Core::Hashable
      
        # Idempotent request UUID.
        # Corresponds to the JSON property `requestId`
        # @return [String]
        attr_accessor :request_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @request_id = args[:request_id] if args.key?(:request_id)
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
      
      # Request for stopping a Managed Notebook Runtime.
      class StopRuntimeRequest
        include Google::Apis::Core::Hashable
      
        # Idempotent request UUID.
        # Corresponds to the JSON property `requestId`
        # @return [String]
        attr_accessor :request_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @request_id = args[:request_id] if args.key?(:request_id)
        end
      end
      
      # Request for switching a Managed Notebook Runtime.
      class SwitchRuntimeRequest
        include Google::Apis::Core::Hashable
      
        # Definition of the types of hardware accelerators that can be used. Definition
        # of the types of hardware accelerators that can be used. See [Compute Engine
        # AcceleratorTypes](https://cloud.google.com/compute/docs/reference/beta/
        # acceleratorTypes). Examples: * `nvidia-tesla-k80` * `nvidia-tesla-p100` * `
        # nvidia-tesla-v100` * `nvidia-tesla-p4` * `nvidia-tesla-t4` * `nvidia-tesla-
        # a100`
        # Corresponds to the JSON property `acceleratorConfig`
        # @return [Google::Apis::NotebooksV1::RuntimeAcceleratorConfig]
        attr_accessor :accelerator_config
      
        # machine type.
        # Corresponds to the JSON property `machineType`
        # @return [String]
        attr_accessor :machine_type
      
        # Idempotent request UUID.
        # Corresponds to the JSON property `requestId`
        # @return [String]
        attr_accessor :request_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @accelerator_config = args[:accelerator_config] if args.key?(:accelerator_config)
          @machine_type = args[:machine_type] if args.key?(:machine_type)
          @request_id = args[:request_id] if args.key?(:request_id)
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
      
      # Request for created scheduled notebooks
      class TriggerScheduleRequest
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # Request for updating instance configurations.
      class UpdateInstanceConfigRequest
        include Google::Apis::Core::Hashable
      
        # Notebook instance configurations that can be updated.
        # Corresponds to the JSON property `config`
        # @return [Google::Apis::NotebooksV1::InstanceConfig]
        attr_accessor :config
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @config = args[:config] if args.key?(:config)
        end
      end
      
      # Request for adding/changing metadata items for an instance.
      class UpdateInstanceMetadataItemsRequest
        include Google::Apis::Core::Hashable
      
        # Metadata items to add/update for the instance.
        # Corresponds to the JSON property `items`
        # @return [Hash<String,String>]
        attr_accessor :items
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @items = args[:items] if args.key?(:items)
        end
      end
      
      # Response for adding/changing metadata items for an instance.
      class UpdateInstanceMetadataItemsResponse
        include Google::Apis::Core::Hashable
      
        # Map of items that were added/updated to/in the metadata.
        # Corresponds to the JSON property `items`
        # @return [Hash<String,String>]
        attr_accessor :items
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @items = args[:items] if args.key?(:items)
        end
      end
      
      # Request for updating the Shielded Instance config for a notebook instance. You
      # can only use this method on a stopped instance
      class UpdateShieldedInstanceConfigRequest
        include Google::Apis::Core::Hashable
      
        # A set of Shielded Instance options. Check [Images using supported Shielded VM
        # features](https://cloud.google.com/compute/docs/instances/modifying-shielded-
        # vm). Not all combinations are valid.
        # Corresponds to the JSON property `shieldedInstanceConfig`
        # @return [Google::Apis::NotebooksV1::ShieldedInstanceConfig]
        attr_accessor :shielded_instance_config
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @shielded_instance_config = args[:shielded_instance_config] if args.key?(:shielded_instance_config)
        end
      end
      
      # The entry of VM image upgrade history.
      class UpgradeHistoryEntry
        include Google::Apis::Core::Hashable
      
        # Action. Rolloback or Upgrade.
        # Corresponds to the JSON property `action`
        # @return [String]
        attr_accessor :action
      
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
      
        # Target VM Image. Format: `ainotebooks-vm/project/image-name/name`.
        # Corresponds to the JSON property `targetImage`
        # @return [String]
        attr_accessor :target_image
      
        # Target VM Version, like m63.
        # Corresponds to the JSON property `targetVersion`
        # @return [String]
        attr_accessor :target_version
      
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
          @action = args[:action] if args.key?(:action)
          @container_image = args[:container_image] if args.key?(:container_image)
          @create_time = args[:create_time] if args.key?(:create_time)
          @framework = args[:framework] if args.key?(:framework)
          @snapshot = args[:snapshot] if args.key?(:snapshot)
          @state = args[:state] if args.key?(:state)
          @target_image = args[:target_image] if args.key?(:target_image)
          @target_version = args[:target_version] if args.key?(:target_version)
          @version = args[:version] if args.key?(:version)
          @vm_image = args[:vm_image] if args.key?(:vm_image)
        end
      end
      
      # Request for upgrading a notebook instance from within the VM
      class UpgradeInstanceInternalRequest
        include Google::Apis::Core::Hashable
      
        # Optional. The optional UpgradeType. Setting this field will search for
        # additional compute images to upgrade this instance.
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
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
          @type = args[:type] if args.key?(:type)
          @vm_id = args[:vm_id] if args.key?(:vm_id)
        end
      end
      
      # Request for upgrading a notebook instance
      class UpgradeInstanceRequest
        include Google::Apis::Core::Hashable
      
        # Optional. The optional UpgradeType. Setting this field will search for
        # additional compute images to upgrade this instance.
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
      
      # Request for upgrading a Managed Notebook Runtime to the latest version. option
      # (google.api.message_visibility).restriction = "TRUSTED_TESTER,SPECIAL_TESTER";
      class UpgradeRuntimeRequest
        include Google::Apis::Core::Hashable
      
        # Idempotent request UUID.
        # Corresponds to the JSON property `requestId`
        # @return [String]
        attr_accessor :request_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @request_id = args[:request_id] if args.key?(:request_id)
        end
      end
      
      # Parameters used in Vertex AI JobType executions.
      class VertexAiParameters
        include Google::Apis::Core::Hashable
      
        # Environment variables. At most 100 environment variables can be specified and
        # unique. Example: `GCP_BUCKET=gs://my-bucket/samples/`
        # Corresponds to the JSON property `env`
        # @return [Hash<String,String>]
        attr_accessor :env
      
        # The full name of the Compute Engine [network](https://cloud.google.com/compute/
        # docs/networks-and-firewalls#networks) to which the Job should be peered. For
        # example, `projects/12345/global/networks/myVPC`. [Format](https://cloud.google.
        # com/compute/docs/reference/rest/v1/networks/insert) is of the form `projects/`
        # project`/global/networks/`network``. Where ``project`` is a project number, as
        # in `12345`, and ``network`` is a network name. Private services access must
        # already be configured for the network. If left unspecified, the job is not
        # peered with any network.
        # Corresponds to the JSON property `network`
        # @return [String]
        attr_accessor :network
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @env = args[:env] if args.key?(:env)
          @network = args[:network] if args.key?(:network)
        end
      end
      
      # Runtime using Virtual Machine for computing.
      class VirtualMachine
        include Google::Apis::Core::Hashable
      
        # Output only. The unique identifier of the Managed Compute Engine instance.
        # Corresponds to the JSON property `instanceId`
        # @return [String]
        attr_accessor :instance_id
      
        # Output only. The user-friendly name of the Managed Compute Engine instance.
        # Corresponds to the JSON property `instanceName`
        # @return [String]
        attr_accessor :instance_name
      
        # The config settings for virtual machine.
        # Corresponds to the JSON property `virtualMachineConfig`
        # @return [Google::Apis::NotebooksV1::VirtualMachineConfig]
        attr_accessor :virtual_machine_config
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @instance_id = args[:instance_id] if args.key?(:instance_id)
          @instance_name = args[:instance_name] if args.key?(:instance_name)
          @virtual_machine_config = args[:virtual_machine_config] if args.key?(:virtual_machine_config)
        end
      end
      
      # The config settings for virtual machine.
      class VirtualMachineConfig
        include Google::Apis::Core::Hashable
      
        # Definition of the types of hardware accelerators that can be used. Definition
        # of the types of hardware accelerators that can be used. See [Compute Engine
        # AcceleratorTypes](https://cloud.google.com/compute/docs/reference/beta/
        # acceleratorTypes). Examples: * `nvidia-tesla-k80` * `nvidia-tesla-p100` * `
        # nvidia-tesla-v100` * `nvidia-tesla-p4` * `nvidia-tesla-t4` * `nvidia-tesla-
        # a100`
        # Corresponds to the JSON property `acceleratorConfig`
        # @return [Google::Apis::NotebooksV1::RuntimeAcceleratorConfig]
        attr_accessor :accelerator_config
      
        # Definition of the boot image used by the Runtime. Used to facilitate runtime
        # upgradeability.
        # Corresponds to the JSON property `bootImage`
        # @return [Google::Apis::NotebooksV1::BootImage]
        attr_accessor :boot_image
      
        # Optional. Use a list of container images to use as Kernels in the notebook
        # instance.
        # Corresponds to the JSON property `containerImages`
        # @return [Array<Google::Apis::NotebooksV1::ContainerImage>]
        attr_accessor :container_images
      
        # A Local attached disk resource.
        # Corresponds to the JSON property `dataDisk`
        # @return [Google::Apis::NotebooksV1::LocalDisk]
        attr_accessor :data_disk
      
        # Represents a custom encryption key configuration that can be applied to a
        # resource. This will encrypt all disks in Virtual Machine.
        # Corresponds to the JSON property `encryptionConfig`
        # @return [Google::Apis::NotebooksV1::EncryptionConfig]
        attr_accessor :encryption_config
      
        # Output only. The Compute Engine guest attributes. (see [Project and instance
        # guest attributes](https://cloud.google.com/compute/docs/storing-retrieving-
        # metadata#guest_attributes)).
        # Corresponds to the JSON property `guestAttributes`
        # @return [Hash<String,String>]
        attr_accessor :guest_attributes
      
        # Optional. If true, runtime will only have internal IP addresses. By default,
        # runtimes are not restricted to internal IP addresses, and will have ephemeral
        # external IP addresses assigned to each vm. This `internal_ip_only` restriction
        # can only be enabled for subnetwork enabled networks, and all dependencies must
        # be configured to be accessible without external IP addresses.
        # Corresponds to the JSON property `internalIpOnly`
        # @return [Boolean]
        attr_accessor :internal_ip_only
        alias_method :internal_ip_only?, :internal_ip_only
      
        # Optional. The labels to associate with this runtime. Label **keys** must
        # contain 1 to 63 characters, and must conform to [RFC 1035](https://www.ietf.
        # org/rfc/rfc1035.txt). Label **values** may be empty, but, if present, must
        # contain 1 to 63 characters, and must conform to [RFC 1035](https://www.ietf.
        # org/rfc/rfc1035.txt). No more than 32 labels can be associated with a cluster.
        # Corresponds to the JSON property `labels`
        # @return [Hash<String,String>]
        attr_accessor :labels
      
        # Required. The Compute Engine machine type used for runtimes. Short name is
        # valid. Examples: * `n1-standard-2` * `e2-standard-8`
        # Corresponds to the JSON property `machineType`
        # @return [String]
        attr_accessor :machine_type
      
        # Optional. The Compute Engine metadata entries to add to virtual machine. (see [
        # Project and instance metadata](https://cloud.google.com/compute/docs/storing-
        # retrieving-metadata#project_and_instance_metadata)).
        # Corresponds to the JSON property `metadata`
        # @return [Hash<String,String>]
        attr_accessor :metadata
      
        # Optional. The Compute Engine network to be used for machine communications.
        # Cannot be specified with subnetwork. If neither `network` nor `subnet` is
        # specified, the "default" network of the project is used, if it exists. A full
        # URL or partial URI. Examples: * `https://www.googleapis.com/compute/v1/
        # projects/[project_id]/global/networks/default` * `projects/[project_id]/global/
        # networks/default` Runtimes are managed resources inside Google Infrastructure.
        # Runtimes support the following network configurations: * Google Managed
        # Network (Network & subnet are empty) * Consumer Project VPC (network & subnet
        # are required). Requires configuring Private Service Access. * Shared VPC (
        # network & subnet are required). Requires configuring Private Service Access.
        # Corresponds to the JSON property `network`
        # @return [String]
        attr_accessor :network
      
        # Optional. The type of vNIC to be used on this interface. This may be gVNIC or
        # VirtioNet.
        # Corresponds to the JSON property `nicType`
        # @return [String]
        attr_accessor :nic_type
      
        # Optional. Reserved IP Range name is used for VPC Peering. The subnetwork
        # allocation will use the range *name* if it's assigned. Example: managed-
        # notebooks-range-c PEERING_RANGE_NAME_3=managed-notebooks-range-c gcloud
        # compute addresses create $PEERING_RANGE_NAME_3 \ --global \ --prefix-length=24
        # \ --description="Google Cloud Managed Notebooks Range 24 c" \ --network=$
        # NETWORK \ --addresses=192.168.0.0 \ --purpose=VPC_PEERING Field value will be:
        # `managed-notebooks-range-c`
        # Corresponds to the JSON property `reservedIpRange`
        # @return [String]
        attr_accessor :reserved_ip_range
      
        # A set of Shielded Instance options. Check [Images using supported Shielded VM
        # features](https://cloud.google.com/compute/docs/instances/modifying-shielded-
        # vm). Not all combinations are valid.
        # Corresponds to the JSON property `shieldedInstanceConfig`
        # @return [Google::Apis::NotebooksV1::RuntimeShieldedInstanceConfig]
        attr_accessor :shielded_instance_config
      
        # Optional. The Compute Engine subnetwork to be used for machine communications.
        # Cannot be specified with network. A full URL or partial URI are valid.
        # Examples: * `https://www.googleapis.com/compute/v1/projects/[project_id]/
        # regions/us-east1/subnetworks/sub0` * `projects/[project_id]/regions/us-east1/
        # subnetworks/sub0`
        # Corresponds to the JSON property `subnet`
        # @return [String]
        attr_accessor :subnet
      
        # Optional. The Compute Engine tags to add to runtime (see [Tagging instances](
        # https://cloud.google.com/compute/docs/label-or-tag-resources#tags)).
        # Corresponds to the JSON property `tags`
        # @return [Array<String>]
        attr_accessor :tags
      
        # Output only. The zone where the virtual machine is located. If using regional
        # request, the notebooks service will pick a location in the corresponding
        # runtime region. On a get request, zone will always be present. Example: * `us-
        # central1-b`
        # Corresponds to the JSON property `zone`
        # @return [String]
        attr_accessor :zone
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @accelerator_config = args[:accelerator_config] if args.key?(:accelerator_config)
          @boot_image = args[:boot_image] if args.key?(:boot_image)
          @container_images = args[:container_images] if args.key?(:container_images)
          @data_disk = args[:data_disk] if args.key?(:data_disk)
          @encryption_config = args[:encryption_config] if args.key?(:encryption_config)
          @guest_attributes = args[:guest_attributes] if args.key?(:guest_attributes)
          @internal_ip_only = args[:internal_ip_only] if args.key?(:internal_ip_only)
          @labels = args[:labels] if args.key?(:labels)
          @machine_type = args[:machine_type] if args.key?(:machine_type)
          @metadata = args[:metadata] if args.key?(:metadata)
          @network = args[:network] if args.key?(:network)
          @nic_type = args[:nic_type] if args.key?(:nic_type)
          @reserved_ip_range = args[:reserved_ip_range] if args.key?(:reserved_ip_range)
          @shielded_instance_config = args[:shielded_instance_config] if args.key?(:shielded_instance_config)
          @subnet = args[:subnet] if args.key?(:subnet)
          @tags = args[:tags] if args.key?(:tags)
          @zone = args[:zone] if args.key?(:zone)
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
        # Format: ``project_id``
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
