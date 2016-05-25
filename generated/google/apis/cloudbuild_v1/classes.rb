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
    module CloudbuildV1
      
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
      # in the package `google.rpc` which can be used for common error conditions.
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
      # have a `Status` message for error reporting purpose.
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
      
        # A list of messages that carry the error details.  There will be a
        # common set of message types for APIs to use.
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
      
      # Metadata for build operations.
      class BuildOperationMetadata
        include Google::Apis::Core::Hashable
      
        # A build resource in the Container Builder API.
        # At a high level, a Build describes where to find source code, how to build
        # it (for example, the builder image to run on the source), and what tag to
        # apply to the built image when it is pushed to Google Container Registry.
        # Corresponds to the JSON property `build`
        # @return [Google::Apis::CloudbuildV1::Build]
        attr_accessor :build
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @build = args[:build] if args.key?(:build)
        end
      end
      
      # Source describes the location of the source in a supported storage
      # service.
      class Source
        include Google::Apis::Core::Hashable
      
        # StorageSource describes the location of the source in an archive file in
        # Google Cloud Storage.
        # Corresponds to the JSON property `storageSource`
        # @return [Google::Apis::CloudbuildV1::StorageSource]
        attr_accessor :storage_source
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @storage_source = args[:storage_source] if args.key?(:storage_source)
        end
      end
      
      # This resource represents a long-running operation that is the result of a
      # network API call.
      class Operation
        include Google::Apis::Core::Hashable
      
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
        # in the package `google.rpc` which can be used for common error conditions.
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
        # have a `Status` message for error reporting purpose.
        # - Batch operations. If a client uses batch request and batch response, the
        # `Status` message should be used directly inside batch response, one for
        # each error sub-response.
        # - Asynchronous operations. If an API call embeds asynchronous operation
        # results in its response, the status of those operations should be
        # represented directly using the `Status` message.
        # - Logging. If some API errors are stored in logs, the message `Status` could
        # be used directly after any stripping needed for security/privacy reasons.
        # Corresponds to the JSON property `error`
        # @return [Google::Apis::CloudbuildV1::Status]
        attr_accessor :error
      
        # If the value is `false`, it means the operation is still in progress.
        # If true, the operation is completed, and either `error` or `response` is
        # available.
        # Corresponds to the JSON property `done`
        # @return [Boolean]
        attr_accessor :done
        alias_method :done?, :done
      
        # Service-specific metadata associated with the operation.  It typically
        # contains progress information and common metadata such as create time.
        # Some services might not provide such metadata.  Any method that returns a
        # long-running operation should document the metadata type, if any.
        # Corresponds to the JSON property `metadata`
        # @return [Hash<String,Object>]
        attr_accessor :metadata
      
        # The normal response of the operation in case of success.  If the original
        # method returns no data on success, such as `Delete`, the response is
        # `google.protobuf.Empty`.  If the original method is standard
        # `Get`/`Create`/`Update`, the response should be the resource.  For other
        # methods, the response should have the type `XxxResponse`, where `Xxx`
        # is the original method name.  For example, if the original method name
        # is `TakeSnapshot()`, the inferred response type is
        # `TakeSnapshotResponse`.
        # Corresponds to the JSON property `response`
        # @return [Hash<String,Object>]
        attr_accessor :response
      
        # The server-assigned name, which is only unique within the same service that
        # originally returns it. If you use the default HTTP mapping, the
        # `name` should have the format of `operations/some/unique/name`.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @error = args[:error] if args.key?(:error)
          @done = args[:done] if args.key?(:done)
          @metadata = args[:metadata] if args.key?(:metadata)
          @response = args[:response] if args.key?(:response)
          @name = args[:name] if args.key?(:name)
        end
      end
      
      # BuiltImage describes an image built by the pipeline.
      class BuiltImage
        include Google::Apis::Core::Hashable
      
        # Docker Registry 2.0 digest.
        # Corresponds to the JSON property `digest`
        # @return [String]
        attr_accessor :digest
      
        # Name used to push the container image to Google Container Registry, as
        # presented to `docker push`.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @digest = args[:digest] if args.key?(:digest)
          @name = args[:name] if args.key?(:name)
        end
      end
      
      # StorageSource describes the location of the source in an archive file in
      # Google Cloud Storage.
      class StorageSource
        include Google::Apis::Core::Hashable
      
        # Google Cloud Storage bucket containing source (see
        # [Bucket Name
        # Requirements](https://cloud.google.com/storage/docs/bucket-naming#requirements)
        # ).
        # Corresponds to the JSON property `bucket`
        # @return [String]
        attr_accessor :bucket
      
        # Google Cloud Storage generation for the object. If the generation is
        # omitted, the latest generation will be used.
        # Corresponds to the JSON property `generation`
        # @return [String]
        attr_accessor :generation
      
        # Google Cloud Storage object containing source.
        # This object must be a gzipped archive file (.tar.gz) containing source to
        # build.
        # Corresponds to the JSON property `object`
        # @return [String]
        attr_accessor :object
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @bucket = args[:bucket] if args.key?(:bucket)
          @generation = args[:generation] if args.key?(:generation)
          @object = args[:object] if args.key?(:object)
        end
      end
      
      # Results describes the artifacts created by the build pipeline.
      class Results
        include Google::Apis::Core::Hashable
      
        # Images that were built as a part of the build.
        # Corresponds to the JSON property `images`
        # @return [Array<Google::Apis::CloudbuildV1::BuiltImage>]
        attr_accessor :images
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @images = args[:images] if args.key?(:images)
        end
      end
      
      # A build resource in the Container Builder API.
      # At a high level, a Build describes where to find source code, how to build
      # it (for example, the builder image to run on the source), and what tag to
      # apply to the built image when it is pushed to Google Container Registry.
      class Build
        include Google::Apis::Core::Hashable
      
        # Unique identifier of the build.
        # @OutputOnly
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # Results describes the artifacts created by the build pipeline.
        # Corresponds to the JSON property `results`
        # @return [Google::Apis::CloudbuildV1::Results]
        attr_accessor :results
      
        # Status of the build.
        # @OutputOnly
        # Corresponds to the JSON property `status`
        # @return [String]
        attr_accessor :status
      
        # Time at which execution of the build was finished.
        # @OutputOnly
        # Corresponds to the JSON property `finishTime`
        # @return [String]
        attr_accessor :finish_time
      
        # Amount of time that this build should be allowed to run, to second
        # granularity. If this amount of time elapses, work on the build will cease
        # and the build status will be TIMEOUT.
        # Default time is ten minutes.
        # Corresponds to the JSON property `timeout`
        # @return [String]
        attr_accessor :timeout
      
        # Describes the operations to be performed on the workspace.
        # Corresponds to the JSON property `steps`
        # @return [Array<Google::Apis::CloudbuildV1::BuildStep>]
        attr_accessor :steps
      
        # Source describes the location of the source in a supported storage
        # service.
        # Corresponds to the JSON property `source`
        # @return [Google::Apis::CloudbuildV1::Source]
        attr_accessor :source
      
        # Time at which the build was created.
        # @OutputOnly
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Customer-readable message about the current status.
        # @OutputOnly
        # Corresponds to the JSON property `statusDetail`
        # @return [String]
        attr_accessor :status_detail
      
        # List of images expected to be built and pushed to Google Container
        # Registry. If an image is listed here and the image is not produced by
        # one of the build steps, the build will fail. Any images present when
        # the build steps are complete will be pushed to Container Registry.
        # Corresponds to the JSON property `images`
        # @return [Array<String>]
        attr_accessor :images
      
        # Time at which execution of the build was started.
        # @OutputOnly
        # Corresponds to the JSON property `startTime`
        # @return [String]
        attr_accessor :start_time
      
        # Google Cloud Storage bucket where logs should be written (see
        # [Bucket Name
        # Requirements](https://cloud.google.com/storage/docs/bucket-naming#requirements)
        # ).
        # Logs file names will be of the format `$`logs_bucket`/log-$`build_id`.txt`.
        # Corresponds to the JSON property `logsBucket`
        # @return [String]
        attr_accessor :logs_bucket
      
        # ID of the project.
        # @OutputOnly.
        # Corresponds to the JSON property `projectId`
        # @return [String]
        attr_accessor :project_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @id = args[:id] if args.key?(:id)
          @results = args[:results] if args.key?(:results)
          @status = args[:status] if args.key?(:status)
          @finish_time = args[:finish_time] if args.key?(:finish_time)
          @timeout = args[:timeout] if args.key?(:timeout)
          @steps = args[:steps] if args.key?(:steps)
          @source = args[:source] if args.key?(:source)
          @create_time = args[:create_time] if args.key?(:create_time)
          @status_detail = args[:status_detail] if args.key?(:status_detail)
          @images = args[:images] if args.key?(:images)
          @start_time = args[:start_time] if args.key?(:start_time)
          @logs_bucket = args[:logs_bucket] if args.key?(:logs_bucket)
          @project_id = args[:project_id] if args.key?(:project_id)
        end
      end
      
      # Request to cancel an ongoing build.
      class CancelBuildRequest
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
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
        # @return [Array<Google::Apis::CloudbuildV1::Operation>]
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
      
      # BuildStep describes a step to perform in the build pipeline.
      class BuildStep
        include Google::Apis::Core::Hashable
      
        # Command-line arguments to use when running this step's container.
        # Corresponds to the JSON property `args`
        # @return [Array<String>]
        attr_accessor :args
      
        # Working directory (relative to project source root) to use when running
        # this operation's container.
        # Corresponds to the JSON property `dir`
        # @return [String]
        attr_accessor :dir
      
        # Name of the container image to use for creating this stage in the
        # pipeline, as presented to `docker pull`.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Additional environment variables to set for this step's container.
        # Corresponds to the JSON property `env`
        # @return [Array<String>]
        attr_accessor :env
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @args = args[:args] if args.key?(:args)
          @dir = args[:dir] if args.key?(:dir)
          @name = args[:name] if args.key?(:name)
          @env = args[:env] if args.key?(:env)
        end
      end
      
      # Response including listed builds.
      class ListBuildsResponse
        include Google::Apis::Core::Hashable
      
        # Token to receive the next page of results.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # Builds will be sorted by create_time, descending.
        # Corresponds to the JSON property `builds`
        # @return [Array<Google::Apis::CloudbuildV1::Build>]
        attr_accessor :builds
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @builds = args[:builds] if args.key?(:builds)
        end
      end
    end
  end
end
