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
    module GenomicsV2alpha1
      
      # Carries information about an accelerator that can be attached to a VM.
      class Accelerator
        include Google::Apis::Core::Hashable
      
        # How many accelerators of this type to attach.
        # Corresponds to the JSON property `count`
        # @return [Fixnum]
        attr_accessor :count
      
        # The accelerator type string (eg nvidia-tesla-k80).
        # Only NVIDIA GPU accelerators are currently supported.  If an NVIDIA GPU is
        # attached, the required runtime libraries will be made available to all
        # containers under `/usr/local/nvidia`.  The driver version to install must
        # be specified using the NVIDIA driver version parameter on the virtual
        # machine specification.  Note that attaching a GPU increases the worker VM
        # startup time by a few minutes.
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @count = args[:count] if args.key?(:count)
          @type = args[:type] if args.key?(:type)
        end
      end
      
      # Action specifies a single action that runs a docker container.
      class Action
        include Google::Apis::Core::Hashable
      
        # If specified, overrides the CMD specified in the container.  If the
        # container also has an ENTRYPOINT the values are used as entrypoint
        # arguments.  Otherwise, they are used as a command and arguments to run
        # inside the container.
        # Corresponds to the JSON property `commands`
        # @return [Array<String>]
        attr_accessor :commands
      
        # If specified, overrides the ENTRYPOINT specified in the container.
        # Corresponds to the JSON property `entrypoint`
        # @return [String]
        attr_accessor :entrypoint
      
        # The environment to pass into the container.  This environment is merged
        # with any values specified in the Pipeline message.  These values overwrite
        # any in the Pipeline message.
        # In addition to the values passed here, a few other values are
        # automatically injected into the environment.  These cannot be hidden or
        # overwritten.
        # `GOOGLE_PIPELINE_FAILED` will be set to "1" if the pipeline has failed
        # because an action has exited with a non-zero status (and did not have the
        # IGNORE_EXIT_STATUS flag set).  This can be used to determine if additional
        # debug or logging actions should execute.
        # `GOOGLE_LAST_EXIT_STATUS` will be set to the exit status of the last
        # non-background action that executed.  This can be used by workflow engine
        # authors to determine whether an individual action has succeeded or failed.
        # Corresponds to the JSON property `environment`
        # @return [Hash<String,String>]
        attr_accessor :environment
      
        # The set of flags to apply to this action.
        # Corresponds to the JSON property `flags`
        # @return [Array<String>]
        attr_accessor :flags
      
        # The URI to pull the container image from.  Note that all images referenced
        # by actions in the pipeline are pulled before the first action runs.  If
        # multiple actions reference the same image, it is only pulled once,
        # ensuring that the same image is used for all actions in a single pipeline.
        # Corresponds to the JSON property `imageUri`
        # @return [String]
        attr_accessor :image_uri
      
        # Labels to associate with the action.  This field is provided to assist
        # workflow engine authors in identifying actions (for example, to indicate
        # what sort of action they perform: eg. localization, debugging, etc).  They
        # are returned in the operation metadata but are otherwise ignored.
        # Corresponds to the JSON property `labels`
        # @return [Hash<String,String>]
        attr_accessor :labels
      
        # A list of mounts to make available to the action.
        # In addition to the values specified here, every action has a special
        # virtual disk mounted under /google that contains log files and other
        # operational components.
        # <ul>
        # <li><code>/google/logs</code>: all logs written during the pipeline
        # execution are stored here.</li>
        # <li><code>/google/logs/output</code>: the combined standard output and
        # standard error of all actions run as part of the pipeline
        # execution.</li>
        # <li><code>/google/logs/action/*/stdout</code>: the complete contents of
        # each individual action's standard output</li>
        # <li><code>/google/logs/action/*/stderr</code>: the complete contents of
        # each individual action's standard error output</li>
        # </ul>
        # Corresponds to the JSON property `mounts`
        # @return [Array<Google::Apis::GenomicsV2alpha1::Mount>]
        attr_accessor :mounts
      
        # An optional name for the container.  The container hostname will be set to
        # this name, making it useful for inter-container communication.  The name
        # must contain only upper and lowercase alphanumeric characters and hypens
        # and cannot start with a hypen.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # The PID namespace to run the action inside.  If unspecified, a separate
        # isolated namespace is used.
        # Corresponds to the JSON property `pidNamespace`
        # @return [String]
        attr_accessor :pid_namespace
      
        # A map of container to host port mappings for this container.  Note that if
        # the container already specifies exposed ports, the PUBLISH_EXPOSED_PORTS
        # flag should be used instead.
        # The host port number must be less than 65536.  If it is zero, an unused
        # random port is assigned.  To determine the resulting port number, consult
        # the ContainerStartedEvent in the operation metadata.
        # Corresponds to the JSON property `portMappings`
        # @return [Hash<String,Fixnum>]
        attr_accessor :port_mappings
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @commands = args[:commands] if args.key?(:commands)
          @entrypoint = args[:entrypoint] if args.key?(:entrypoint)
          @environment = args[:environment] if args.key?(:environment)
          @flags = args[:flags] if args.key?(:flags)
          @image_uri = args[:image_uri] if args.key?(:image_uri)
          @labels = args[:labels] if args.key?(:labels)
          @mounts = args[:mounts] if args.key?(:mounts)
          @name = args[:name] if args.key?(:name)
          @pid_namespace = args[:pid_namespace] if args.key?(:pid_namespace)
          @port_mappings = args[:port_mappings] if args.key?(:port_mappings)
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
      
      # The parameters to the CheckIn method.
      class CheckInRequest
        include Google::Apis::Core::Hashable
      
        # A generic empty message that you can re-use to avoid defining duplicated
        # empty messages in your APIs. A typical example is to use it as the request
        # or the response type of an API method. For instance:
        # service Foo `
        # rpc Bar(google.protobuf.Empty) returns (google.protobuf.Empty);
        # `
        # The JSON representation for `Empty` is empty JSON object ````.
        # Corresponds to the JSON property `deadlineExpired`
        # @return [Google::Apis::GenomicsV2alpha1::Empty]
        attr_accessor :deadline_expired
      
        # A workflow specific event occurred.
        # Corresponds to the JSON property `event`
        # @return [Hash<String,Object>]
        attr_accessor :event
      
        # The `Status` type defines a logical error model that is suitable for different
        # programming environments, including REST APIs and RPC APIs. It is used by
        # [gRPC](https://github.com/grpc). The error model is designed to be:
        # - Simple to use and understand for most users
        # - Flexible enough to meet unexpected needs
        # # Overview
        # The `Status` message contains three pieces of data: error code, error message,
        # and error details. The error code should be an enum value of
        # google.rpc.Code, but it may accept additional error codes if needed.  The
        # error message should be a developer-facing English message that helps
        # developers *understand* and *resolve* the error. If a localized user-facing
        # error message is needed, put the localized message in the error details or
        # localize it in the client. The optional error details may contain arbitrary
        # information about the error. There is a predefined set of error detail types
        # in the package `google.rpc` that can be used for common error conditions.
        # # Language mapping
        # The `Status` message is the logical representation of the error model, but it
        # is not necessarily the actual wire format. When the `Status` message is
        # exposed in different client libraries and different wire protocols, it can be
        # mapped differently. For example, it will likely be mapped to some exceptions
        # in Java, but more likely mapped to some error codes in C.
        # # Other uses
        # The error model and the `Status` message can be used in a variety of
        # environments, either with or without APIs, to provide a
        # consistent developer experience across different environments.
        # Example uses of this error model include:
        # - Partial errors. If a service needs to return partial errors to the client,
        # it may embed the `Status` in the normal response to indicate the partial
        # errors.
        # - Workflow errors. A typical workflow has multiple steps. Each step may
        # have a `Status` message for error reporting.
        # - Batch operations. If a client uses batch request and batch response, the
        # `Status` message should be used directly inside batch response, one for
        # each error sub-response.
        # - Asynchronous operations. If an API call embeds asynchronous operation
        # results in its response, the status of those operations should be
        # represented directly using the `Status` message.
        # - Logging. If some API errors are stored in logs, the message `Status` could
        # be used directly after any stripping needed for security/privacy reasons.
        # Corresponds to the JSON property `result`
        # @return [Google::Apis::GenomicsV2alpha1::Status]
        attr_accessor :result
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @deadline_expired = args[:deadline_expired] if args.key?(:deadline_expired)
          @event = args[:event] if args.key?(:event)
          @result = args[:result] if args.key?(:result)
        end
      end
      
      # The response to the CheckIn method.
      class CheckInResponse
        include Google::Apis::Core::Hashable
      
        # The deadline by which the worker must request an extension.  The backend
        # will allow for network transmission time and other delays, but the worker
        # must attempt to transmit the extension request no later than the deadline.
        # Corresponds to the JSON property `deadline`
        # @return [String]
        attr_accessor :deadline
      
        # The metadata that describes the operation assigned to the worker.
        # Corresponds to the JSON property `metadata`
        # @return [Hash<String,Object>]
        attr_accessor :metadata
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @deadline = args[:deadline] if args.key?(:deadline)
          @metadata = args[:metadata] if args.key?(:metadata)
        end
      end
      
      # Describes a Compute Engine resource that is being managed by a running
      # pipeline.
      class ComputeEngine
        include Google::Apis::Core::Hashable
      
        # The names of the disks that were created for this pipeline.
        # Corresponds to the JSON property `diskNames`
        # @return [Array<String>]
        attr_accessor :disk_names
      
        # The instance on which the operation is running.
        # Corresponds to the JSON property `instanceName`
        # @return [String]
        attr_accessor :instance_name
      
        # The machine type of the instance.
        # Corresponds to the JSON property `machineType`
        # @return [String]
        attr_accessor :machine_type
      
        # The availability zone in which the instance resides.
        # Corresponds to the JSON property `zone`
        # @return [String]
        attr_accessor :zone
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @disk_names = args[:disk_names] if args.key?(:disk_names)
          @instance_name = args[:instance_name] if args.key?(:instance_name)
          @machine_type = args[:machine_type] if args.key?(:machine_type)
          @zone = args[:zone] if args.key?(:zone)
        end
      end
      
      # This event is generated when a container starts.
      class ContainerStartedEvent
        include Google::Apis::Core::Hashable
      
        # The numeric ID of the action that started this container.
        # Corresponds to the JSON property `actionId`
        # @return [Fixnum]
        attr_accessor :action_id
      
        # The public IP address that can be used to connect to the container.  This
        # field is only populated when at least one port mapping is present.  If the
        # instance was created with a private address this field will be empty even
        # if port mappings exist.
        # Corresponds to the JSON property `ipAddress`
        # @return [String]
        attr_accessor :ip_address
      
        # The container to host port mappings installed for this container.  This
        # set will contain any ports exposed using the PUBLISH_EXPOSED_PORTS flag as
        # well as any specified in the Action definition.
        # Corresponds to the JSON property `portMappings`
        # @return [Hash<String,Fixnum>]
        attr_accessor :port_mappings
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @action_id = args[:action_id] if args.key?(:action_id)
          @ip_address = args[:ip_address] if args.key?(:ip_address)
          @port_mappings = args[:port_mappings] if args.key?(:port_mappings)
        end
      end
      
      # This event is generated when a container exits.
      class ContainerStoppedEvent
        include Google::Apis::Core::Hashable
      
        # The numeric ID of the action that started this container.
        # Corresponds to the JSON property `actionId`
        # @return [Fixnum]
        attr_accessor :action_id
      
        # The exit status of the container.
        # Corresponds to the JSON property `exitStatus`
        # @return [Fixnum]
        attr_accessor :exit_status
      
        # The tail end of any content written to standard error by the container.
        # To prevent this from being recorded if the action is known to emit
        # large amounts of debugging noise or sensitive information, set the
        # DISABLE_STANDARD_ERROR_CAPTURE flag.
        # Note that only a small amount of the end of the stream is captured here.
        # The entire stream is stored in the /google/logs directory mounted into
        # each action, and may be copied off the machine as described elsewhere.
        # Corresponds to the JSON property `stderr`
        # @return [String]
        attr_accessor :stderr
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @action_id = args[:action_id] if args.key?(:action_id)
          @exit_status = args[:exit_status] if args.key?(:exit_status)
          @stderr = args[:stderr] if args.key?(:stderr)
        end
      end
      
      # This event is generated whenever a resource limitation or transient error
      # delays execution of a pipeline that was otherwise ready to run.
      class DelayedEvent
        include Google::Apis::Core::Hashable
      
        # A textual description of the cause of the delay.  The string may change
        # without notice since it is often generated by another service (such as
        # Compute Engine).
        # Corresponds to the JSON property `cause`
        # @return [String]
        attr_accessor :cause
      
        # If the delay was caused by a resource shortage, this field lists the
        # Compute Engine metrics that are preventing this operation from running
        # (for example, CPUS or INSTANCES).  If the particular metric is not known,
        # a single UNKNOWN metric will be present.
        # Corresponds to the JSON property `metrics`
        # @return [Array<String>]
        attr_accessor :metrics
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @cause = args[:cause] if args.key?(:cause)
          @metrics = args[:metrics] if args.key?(:metrics)
        end
      end
      
      # Carries information about a disk that can be attached to a VM.
      class Disk
        include Google::Apis::Core::Hashable
      
        # A user supplied name for the disk, used when mounting it into actions.
        # The name must contain only upper and lowercase alphanumeric characters and
        # hypens and cannot start with a hypen.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # The size, in gigabytes, of the disk to attach.  Note that this value is
        # not configurable for some disk types such as local-ssd.  If the size is
        # not specified, a size of at least 500gb is used to ensure reasonable I/O
        # performance.
        # Corresponds to the JSON property `sizeGb`
        # @return [Fixnum]
        attr_accessor :size_gb
      
        # An optional image to put on the disk before attaching it to the VM.
        # Corresponds to the JSON property `sourceImage`
        # @return [String]
        attr_accessor :source_image
      
        # The Compute Engine disk type.  If unspecified, 'standard-pd' is used.
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @name = args[:name] if args.key?(:name)
          @size_gb = args[:size_gb] if args.key?(:size_gb)
          @source_image = args[:source_image] if args.key?(:source_image)
          @type = args[:type] if args.key?(:type)
        end
      end
      
      # A generic empty message that you can re-use to avoid defining duplicated
      # empty messages in your APIs. A typical example is to use it as the request
      # or the response type of an API method. For instance:
      # service Foo `
      # rpc Bar(google.protobuf.Empty) returns (google.protobuf.Empty);
      # `
      # The JSON representation for `Empty` is empty JSON object ````.
      class Empty
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # Event carries information about events that occur during pipeline execution.
      class Event
        include Google::Apis::Core::Hashable
      
        # A human readable description of the event.  Note that these strings may
        # change at any time without notice.  Any application logic must use the
        # information in the details field.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # Machine readable details about the event.
        # Corresponds to the JSON property `details`
        # @return [Hash<String,Object>]
        attr_accessor :details
      
        # The time that the event occurred.
        # Corresponds to the JSON property `timestamp`
        # @return [String]
        attr_accessor :timestamp
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @description = args[:description] if args.key?(:description)
          @details = args[:details] if args.key?(:details)
          @timestamp = args[:timestamp] if args.key?(:timestamp)
        end
      end
      
      # This event is generated when the execution of a pipeline has failed.  Note
      # that other events may continue to occur after this event.
      class FailedEvent
        include Google::Apis::Core::Hashable
      
        # The human readable description of the cause of the failure.
        # Corresponds to the JSON property `cause`
        # @return [String]
        attr_accessor :cause
      
        # The Google standard error code that best describes this failure.
        # Corresponds to the JSON property `code`
        # @return [String]
        attr_accessor :code
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @cause = args[:cause] if args.key?(:cause)
          @code = args[:code] if args.key?(:code)
        end
      end
      
      # The read group set import response.
      class ImportReadGroupSetsResponse
        include Google::Apis::Core::Hashable
      
        # IDs of the read group sets that were created.
        # Corresponds to the JSON property `readGroupSetIds`
        # @return [Array<String>]
        attr_accessor :read_group_set_ids
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @read_group_set_ids = args[:read_group_set_ids] if args.key?(:read_group_set_ids)
        end
      end
      
      # The variant data import response.
      class ImportVariantsResponse
        include Google::Apis::Core::Hashable
      
        # IDs of the call sets created during the import.
        # Corresponds to the JSON property `callSetIds`
        # @return [Array<String>]
        attr_accessor :call_set_ids
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @call_set_ids = args[:call_set_ids] if args.key?(:call_set_ids)
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
        # @return [Array<Google::Apis::GenomicsV2alpha1::Operation>]
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
      
      # Metadata carries information about the pipeline execution that is returned
      # in the long running operation's metadata field.
      class Metadata
        include Google::Apis::Core::Hashable
      
        # The time that the operation was created by the API.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # The time at which execution was completed and resources were cleaned up.
        # Corresponds to the JSON property `endTime`
        # @return [String]
        attr_accessor :end_time
      
        # The list of events that have happened so far during the execution of this
        # operation.
        # Corresponds to the JSON property `events`
        # @return [Array<Google::Apis::GenomicsV2alpha1::Event>]
        attr_accessor :events
      
        # The user defined labels associated with this operation.
        # Corresponds to the JSON property `labels`
        # @return [Hash<String,String>]
        attr_accessor :labels
      
        # The Pipeline object describes a series of actions to execute, expressed as
        # docker containers.
        # Corresponds to the JSON property `pipeline`
        # @return [Google::Apis::GenomicsV2alpha1::Pipeline]
        attr_accessor :pipeline
      
        # The first time at which resources were allocated to execute the pipeline.
        # Corresponds to the JSON property `startTime`
        # @return [String]
        attr_accessor :start_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @create_time = args[:create_time] if args.key?(:create_time)
          @end_time = args[:end_time] if args.key?(:end_time)
          @events = args[:events] if args.key?(:events)
          @labels = args[:labels] if args.key?(:labels)
          @pipeline = args[:pipeline] if args.key?(:pipeline)
          @start_time = args[:start_time] if args.key?(:start_time)
        end
      end
      
      # Mount carries information about a particular disk mount inside a container.
      class Mount
        include Google::Apis::Core::Hashable
      
        # The name of the disk to mount, as specified in the resources section.
        # Corresponds to the JSON property `disk`
        # @return [String]
        attr_accessor :disk
      
        # The path to mount the disk at inside the container.
        # Corresponds to the JSON property `path`
        # @return [String]
        attr_accessor :path
      
        # If true, the disk is mounted read only inside the container.
        # Corresponds to the JSON property `readOnly`
        # @return [Boolean]
        attr_accessor :read_only
        alias_method :read_only?, :read_only
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @disk = args[:disk] if args.key?(:disk)
          @path = args[:path] if args.key?(:path)
          @read_only = args[:read_only] if args.key?(:read_only)
        end
      end
      
      # VM networking options.
      class Network
        include Google::Apis::Core::Hashable
      
        # The network name to attach the VM's network interface to.  If unspecified,
        # the global default network is used.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # If set to true, do not attach a public IP address to the VM.  Note that
        # without an public IP address, additional configuration is required to
        # allow the VM to access Google services.
        # See https://cloud.google.com/vpc/docs/configure-private-google-access
        # for more information.
        # Corresponds to the JSON property `usePrivateAddress`
        # @return [Boolean]
        attr_accessor :use_private_address
        alias_method :use_private_address?, :use_private_address
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @name = args[:name] if args.key?(:name)
          @use_private_address = args[:use_private_address] if args.key?(:use_private_address)
        end
      end
      
      # This resource represents a long-running operation that is the result of a
      # network API call.
      class Operation
        include Google::Apis::Core::Hashable
      
        # If the value is `false`, it means the operation is still in progress.
        # If `true`, the operation is completed, and either `error` or `response` is
        # available.
        # Corresponds to the JSON property `done`
        # @return [Boolean]
        attr_accessor :done
        alias_method :done?, :done
      
        # The `Status` type defines a logical error model that is suitable for different
        # programming environments, including REST APIs and RPC APIs. It is used by
        # [gRPC](https://github.com/grpc). The error model is designed to be:
        # - Simple to use and understand for most users
        # - Flexible enough to meet unexpected needs
        # # Overview
        # The `Status` message contains three pieces of data: error code, error message,
        # and error details. The error code should be an enum value of
        # google.rpc.Code, but it may accept additional error codes if needed.  The
        # error message should be a developer-facing English message that helps
        # developers *understand* and *resolve* the error. If a localized user-facing
        # error message is needed, put the localized message in the error details or
        # localize it in the client. The optional error details may contain arbitrary
        # information about the error. There is a predefined set of error detail types
        # in the package `google.rpc` that can be used for common error conditions.
        # # Language mapping
        # The `Status` message is the logical representation of the error model, but it
        # is not necessarily the actual wire format. When the `Status` message is
        # exposed in different client libraries and different wire protocols, it can be
        # mapped differently. For example, it will likely be mapped to some exceptions
        # in Java, but more likely mapped to some error codes in C.
        # # Other uses
        # The error model and the `Status` message can be used in a variety of
        # environments, either with or without APIs, to provide a
        # consistent developer experience across different environments.
        # Example uses of this error model include:
        # - Partial errors. If a service needs to return partial errors to the client,
        # it may embed the `Status` in the normal response to indicate the partial
        # errors.
        # - Workflow errors. A typical workflow has multiple steps. Each step may
        # have a `Status` message for error reporting.
        # - Batch operations. If a client uses batch request and batch response, the
        # `Status` message should be used directly inside batch response, one for
        # each error sub-response.
        # - Asynchronous operations. If an API call embeds asynchronous operation
        # results in its response, the status of those operations should be
        # represented directly using the `Status` message.
        # - Logging. If some API errors are stored in logs, the message `Status` could
        # be used directly after any stripping needed for security/privacy reasons.
        # Corresponds to the JSON property `error`
        # @return [Google::Apis::GenomicsV2alpha1::Status]
        attr_accessor :error
      
        # An OperationMetadata or Metadata object. This will always be returned with the
        # Operation.
        # Corresponds to the JSON property `metadata`
        # @return [Hash<String,Object>]
        attr_accessor :metadata
      
        # The server-assigned name, which is only unique within the same service that
        # originally returns it. For example&#58; `operations/CJHU7Oi_ChDrveSpBRjfuL-
        # qzoWAgEw`
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # If importing ReadGroupSets, an ImportReadGroupSetsResponse is returned. If
        # importing Variants, an ImportVariantsResponse is returned. For pipelines and
        # exports, an Empty response is returned.
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
      
      # An event that occurred during an Operation.
      class OperationEvent
        include Google::Apis::Core::Hashable
      
        # Required description of event.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # Optional time of when event finished. An event can have a start time and no
        # finish time. If an event has a finish time, there must be a start time.
        # Corresponds to the JSON property `endTime`
        # @return [String]
        attr_accessor :end_time
      
        # Optional time of when event started.
        # Corresponds to the JSON property `startTime`
        # @return [String]
        attr_accessor :start_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @description = args[:description] if args.key?(:description)
          @end_time = args[:end_time] if args.key?(:end_time)
          @start_time = args[:start_time] if args.key?(:start_time)
        end
      end
      
      # Metadata describing an Operation.
      class OperationMetadata
        include Google::Apis::Core::Hashable
      
        # This field is deprecated. Use `labels` instead. Optionally provided by the
        # caller when submitting the request that creates the operation.
        # Corresponds to the JSON property `clientId`
        # @return [String]
        attr_accessor :client_id
      
        # The time at which the job was submitted to the Genomics service.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # The time at which the job stopped running.
        # Corresponds to the JSON property `endTime`
        # @return [String]
        attr_accessor :end_time
      
        # Optional event messages that were generated during the job's execution.
        # This also contains any warnings that were generated during import
        # or export.
        # Corresponds to the JSON property `events`
        # @return [Array<Google::Apis::GenomicsV2alpha1::OperationEvent>]
        attr_accessor :events
      
        # Optionally provided by the caller when submitting the request that creates
        # the operation.
        # Corresponds to the JSON property `labels`
        # @return [Hash<String,String>]
        attr_accessor :labels
      
        # The Google Cloud Project in which the job is scoped.
        # Corresponds to the JSON property `projectId`
        # @return [String]
        attr_accessor :project_id
      
        # The original request that started the operation. Note that this will be in
        # current version of the API. If the operation was started with v1beta2 API
        # and a GetOperation is performed on v1 API, a v1 request will be returned.
        # Corresponds to the JSON property `request`
        # @return [Hash<String,Object>]
        attr_accessor :request
      
        # Runtime metadata on this Operation.
        # Corresponds to the JSON property `runtimeMetadata`
        # @return [Hash<String,Object>]
        attr_accessor :runtime_metadata
      
        # The time at which the job began to run.
        # Corresponds to the JSON property `startTime`
        # @return [String]
        attr_accessor :start_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @client_id = args[:client_id] if args.key?(:client_id)
          @create_time = args[:create_time] if args.key?(:create_time)
          @end_time = args[:end_time] if args.key?(:end_time)
          @events = args[:events] if args.key?(:events)
          @labels = args[:labels] if args.key?(:labels)
          @project_id = args[:project_id] if args.key?(:project_id)
          @request = args[:request] if args.key?(:request)
          @runtime_metadata = args[:runtime_metadata] if args.key?(:runtime_metadata)
          @start_time = args[:start_time] if args.key?(:start_time)
        end
      end
      
      # The Pipeline object describes a series of actions to execute, expressed as
      # docker containers.
      class Pipeline
        include Google::Apis::Core::Hashable
      
        # The list of actions to execute, in the order they are specified.
        # Corresponds to the JSON property `actions`
        # @return [Array<Google::Apis::GenomicsV2alpha1::Action>]
        attr_accessor :actions
      
        # The environment to pass into every action.  Each action may also specify
        # additional environment variables but cannot delete an entry from this map
        # (though they may overwrite it with a different value).
        # Corresponds to the JSON property `environment`
        # @return [Hash<String,String>]
        attr_accessor :environment
      
        # The system resources for the pipeline run.
        # At least one zone or region must be specified or the pipeline run will fail.
        # Corresponds to the JSON property `resources`
        # @return [Google::Apis::GenomicsV2alpha1::Resources]
        attr_accessor :resources
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @actions = args[:actions] if args.key?(:actions)
          @environment = args[:environment] if args.key?(:environment)
          @resources = args[:resources] if args.key?(:resources)
        end
      end
      
      # This event is generated when the worker starts pulling an image.
      class PullStartedEvent
        include Google::Apis::Core::Hashable
      
        # The URI of the image that was pulled.
        # Corresponds to the JSON property `imageUri`
        # @return [String]
        attr_accessor :image_uri
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @image_uri = args[:image_uri] if args.key?(:image_uri)
        end
      end
      
      # This event is generated when the worker stops pulling an image.
      class PullStoppedEvent
        include Google::Apis::Core::Hashable
      
        # The URI of the image that was pulled.
        # Corresponds to the JSON property `imageUri`
        # @return [String]
        attr_accessor :image_uri
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @image_uri = args[:image_uri] if args.key?(:image_uri)
        end
      end
      
      # The system resources for the pipeline run.
      # At least one zone or region must be specified or the pipeline run will fail.
      class Resources
        include Google::Apis::Core::Hashable
      
        # The customer project ID to allocate resources in.
        # Corresponds to the JSON property `projectId`
        # @return [String]
        attr_accessor :project_id
      
        # The list of regions allowed for VM allocation.  If set, the zones field
        # must not be set.
        # Corresponds to the JSON property `regions`
        # @return [Array<String>]
        attr_accessor :regions
      
        # Carries information about a Compute Engine VM resource.
        # Corresponds to the JSON property `virtualMachine`
        # @return [Google::Apis::GenomicsV2alpha1::VirtualMachine]
        attr_accessor :virtual_machine
      
        # The list of zones allowed for VM allocation.  If set, the regions field
        # must not be set.
        # Corresponds to the JSON property `zones`
        # @return [Array<String>]
        attr_accessor :zones
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @project_id = args[:project_id] if args.key?(:project_id)
          @regions = args[:regions] if args.key?(:regions)
          @virtual_machine = args[:virtual_machine] if args.key?(:virtual_machine)
          @zones = args[:zones] if args.key?(:zones)
        end
      end
      
      # The arguments to the RunPipeline method.  The requesting user must have
      # the iam.serviceAccounts.actAs permission for the Google Genomics Service
      # Account or the request will fail.
      class RunPipelineRequest
        include Google::Apis::Core::Hashable
      
        # User defined labels to associate with the returned operation.  These
        # labels are not propagated to any Google Cloud Platform resources used by
        # the operation, and may be modified at any time.
        # To associate labels with resources created while executing the operation,
        # see the appropriate resource message (i.e., VirtualMachine).
        # Corresponds to the JSON property `labels`
        # @return [Hash<String,String>]
        attr_accessor :labels
      
        # The Pipeline object describes a series of actions to execute, expressed as
        # docker containers.
        # Corresponds to the JSON property `pipeline`
        # @return [Google::Apis::GenomicsV2alpha1::Pipeline]
        attr_accessor :pipeline
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @labels = args[:labels] if args.key?(:labels)
          @pipeline = args[:pipeline] if args.key?(:pipeline)
        end
      end
      
      # Runtime metadata that will be populated in the
      # runtimeMetadata
      # field of the Operation associated with a RunPipeline execution.
      class RuntimeMetadata
        include Google::Apis::Core::Hashable
      
        # Describes a Compute Engine resource that is being managed by a running
        # pipeline.
        # Corresponds to the JSON property `computeEngine`
        # @return [Google::Apis::GenomicsV2alpha1::ComputeEngine]
        attr_accessor :compute_engine
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @compute_engine = args[:compute_engine] if args.key?(:compute_engine)
        end
      end
      
      # Carries information about a Google Cloud Service Account.
      class ServiceAccount
        include Google::Apis::Core::Hashable
      
        # Email address of the service account.  If not specified, the default
        # compute engine service account for the project will be used.
        # Corresponds to the JSON property `email`
        # @return [String]
        attr_accessor :email
      
        # List of scopes to be enabled for this service account on the VM, in
        # addition to the Google Genomics API scope.
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
      
      # The `Status` type defines a logical error model that is suitable for different
      # programming environments, including REST APIs and RPC APIs. It is used by
      # [gRPC](https://github.com/grpc). The error model is designed to be:
      # - Simple to use and understand for most users
      # - Flexible enough to meet unexpected needs
      # # Overview
      # The `Status` message contains three pieces of data: error code, error message,
      # and error details. The error code should be an enum value of
      # google.rpc.Code, but it may accept additional error codes if needed.  The
      # error message should be a developer-facing English message that helps
      # developers *understand* and *resolve* the error. If a localized user-facing
      # error message is needed, put the localized message in the error details or
      # localize it in the client. The optional error details may contain arbitrary
      # information about the error. There is a predefined set of error detail types
      # in the package `google.rpc` that can be used for common error conditions.
      # # Language mapping
      # The `Status` message is the logical representation of the error model, but it
      # is not necessarily the actual wire format. When the `Status` message is
      # exposed in different client libraries and different wire protocols, it can be
      # mapped differently. For example, it will likely be mapped to some exceptions
      # in Java, but more likely mapped to some error codes in C.
      # # Other uses
      # The error model and the `Status` message can be used in a variety of
      # environments, either with or without APIs, to provide a
      # consistent developer experience across different environments.
      # Example uses of this error model include:
      # - Partial errors. If a service needs to return partial errors to the client,
      # it may embed the `Status` in the normal response to indicate the partial
      # errors.
      # - Workflow errors. A typical workflow has multiple steps. Each step may
      # have a `Status` message for error reporting.
      # - Batch operations. If a client uses batch request and batch response, the
      # `Status` message should be used directly inside batch response, one for
      # each error sub-response.
      # - Asynchronous operations. If an API call embeds asynchronous operation
      # results in its response, the status of those operations should be
      # represented directly using the `Status` message.
      # - Logging. If some API errors are stored in logs, the message `Status` could
      # be used directly after any stripping needed for security/privacy reasons.
      class Status
        include Google::Apis::Core::Hashable
      
        # The status code, which should be an enum value of google.rpc.Code.
        # Corresponds to the JSON property `code`
        # @return [Fixnum]
        attr_accessor :code
      
        # A list of messages that carry the error details.  There is a common set of
        # message types for APIs to use.
        # Corresponds to the JSON property `details`
        # @return [Array<Hash<String,Object>>]
        attr_accessor :details
      
        # A developer-facing error message, which should be in English. Any
        # user-facing error message should be localized and sent in the
        # google.rpc.Status.details field, or localized by the client.
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
      
      # This event is generated when the execution of a container results in a
      # non-zero exit status that was not otherwise ignored.  Execution will
      # continue, but only actions that are flagged as ALWAYS_RUN will be executed:
      # other actions will be skipped.
      class UnexpectedExitStatusEvent
        include Google::Apis::Core::Hashable
      
        # The numeric ID of the action that started the container.
        # Corresponds to the JSON property `actionId`
        # @return [Fixnum]
        attr_accessor :action_id
      
        # The exit status of the container.
        # Corresponds to the JSON property `exitStatus`
        # @return [Fixnum]
        attr_accessor :exit_status
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @action_id = args[:action_id] if args.key?(:action_id)
          @exit_status = args[:exit_status] if args.key?(:exit_status)
        end
      end
      
      # Carries information about a Compute Engine VM resource.
      class VirtualMachine
        include Google::Apis::Core::Hashable
      
        # The list of accelerators to attach to the VM.
        # Corresponds to the JSON property `accelerators`
        # @return [Array<Google::Apis::GenomicsV2alpha1::Accelerator>]
        attr_accessor :accelerators
      
        # The size of the boot disk, in gigabytes. The boot disk must be large
        # enough to accommodate all of the docker images from each action in the
        # pipeline at the same time. If not specified, a small but reasonable
        # default value is used.
        # Corresponds to the JSON property `bootDiskSizeGb`
        # @return [Fixnum]
        attr_accessor :boot_disk_size_gb
      
        # The host operating system image to use.
        # At present, only Container Optimized OS images may be used.
        # The default value is "projects/cos-cloud/global/images/family/cos-stable"
        # which selects the latest stable release of Container Optimized OS.
        # This option is provided to allow testing against the beta release of the
        # operating system to ensure that the new version does not interact
        # negatively with production pipelines.
        # To test a pipeline against the beta release of COS, use the value
        # "projects/cos-cloud/global/images/family/cos-beta".
        # Corresponds to the JSON property `bootImage`
        # @return [String]
        attr_accessor :boot_image
      
        # The CPU platform to request.  An instance based on a newer platform may be
        # allocated but never one with less capabilities.  The value of this
        # parameter must be a valid Compute Engine CPU platform name (such as "Intel
        # Skylake").  This parameter is only useful for carefully optimized work
        # loads where the CPU platform has a significant impact.
        # For more information about the effect of this parameter, please visit
        # https://cloud.google.com/compute/docs/instances/specify-min-cpu-platform.
        # Corresponds to the JSON property `cpuPlatform`
        # @return [String]
        attr_accessor :cpu_platform
      
        # The list of disks to create and attach to the VM.
        # Corresponds to the JSON property `disks`
        # @return [Array<Google::Apis::GenomicsV2alpha1::Disk>]
        attr_accessor :disks
      
        # Optional set of labels to apply to the VM and any attached disk resources.
        # These labels must adhere to the name and value restrictions on VM labels
        # imposed by Compute Engine.
        # These labels are applied at creation time to the VM and are applied on a
        # best-effort basis to attached disk resources shortly after VM creation.
        # Corresponds to the JSON property `labels`
        # @return [Hash<String,String>]
        attr_accessor :labels
      
        # The machine type of the virtual machine to create.  Must be the short name
        # of a standard machine type (such as "n1-standard-1") or a custom machine
        # type (such as "custom-1-4096").
        # Corresponds to the JSON property `machineType`
        # @return [String]
        attr_accessor :machine_type
      
        # VM networking options.
        # Corresponds to the JSON property `network`
        # @return [Google::Apis::GenomicsV2alpha1::Network]
        attr_accessor :network
      
        # The NVIDIA driver version to use when attaching an NVIDIA GPU accelerator.
        # The version specified here must be compatible with the GPU libraries
        # contained in the container being executed, and must be one of the drivers
        # hosted in the 'nvidia-drivers-us-public' bucket on Google Cloud Storage.
        # Corresponds to the JSON property `nvidiaDriverVersion`
        # @return [String]
        attr_accessor :nvidia_driver_version
      
        # If true, allocate a preemptible VM.
        # Corresponds to the JSON property `preemptible`
        # @return [Boolean]
        attr_accessor :preemptible
        alias_method :preemptible?, :preemptible
      
        # Carries information about a Google Cloud Service Account.
        # Corresponds to the JSON property `serviceAccount`
        # @return [Google::Apis::GenomicsV2alpha1::ServiceAccount]
        attr_accessor :service_account
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @accelerators = args[:accelerators] if args.key?(:accelerators)
          @boot_disk_size_gb = args[:boot_disk_size_gb] if args.key?(:boot_disk_size_gb)
          @boot_image = args[:boot_image] if args.key?(:boot_image)
          @cpu_platform = args[:cpu_platform] if args.key?(:cpu_platform)
          @disks = args[:disks] if args.key?(:disks)
          @labels = args[:labels] if args.key?(:labels)
          @machine_type = args[:machine_type] if args.key?(:machine_type)
          @network = args[:network] if args.key?(:network)
          @nvidia_driver_version = args[:nvidia_driver_version] if args.key?(:nvidia_driver_version)
          @preemptible = args[:preemptible] if args.key?(:preemptible)
          @service_account = args[:service_account] if args.key?(:service_account)
        end
      end
      
      # This event is generated once a worker VM has been assigned to run the
      # pipeline.
      class WorkerAssignedEvent
        include Google::Apis::Core::Hashable
      
        # The worker's instance name.
        # Corresponds to the JSON property `instance`
        # @return [String]
        attr_accessor :instance
      
        # The zone the worker is running in.
        # Corresponds to the JSON property `zone`
        # @return [String]
        attr_accessor :zone
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @instance = args[:instance] if args.key?(:instance)
          @zone = args[:zone] if args.key?(:zone)
        end
      end
      
      # This event is generated when the worker VM that was assigned to the pipeline
      # has been released (i.e., deleted).
      class WorkerReleasedEvent
        include Google::Apis::Core::Hashable
      
        # The worker's instance name.
        # Corresponds to the JSON property `instance`
        # @return [String]
        attr_accessor :instance
      
        # The zone the worker was running in.
        # Corresponds to the JSON property `zone`
        # @return [String]
        attr_accessor :zone
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @instance = args[:instance] if args.key?(:instance)
          @zone = args[:zone] if args.key?(:zone)
        end
      end
    end
  end
end
