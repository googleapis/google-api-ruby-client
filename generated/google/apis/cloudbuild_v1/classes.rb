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
        # Fields can include the following variables which will be expanded when the
        # build is created:
        # - $PROJECT_ID: the project ID of the build.
        # - $BUILD_ID: the autogenerated ID of the build.
        # - $REPO_NAME: the source repository name specified by RepoSource.
        # - $BRANCH_NAME: the branch name specified by RepoSource.
        # - $TAG_NAME: the tag name specified by RepoSource.
        # - $REVISION_ID or $COMMIT_SHA: the commit SHA specified by RepoSource or
        # resolved from the specified branch or tag.
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
      
        # RepoSource describes the location of the source in a Google Cloud Source
        # Repository.
        # Corresponds to the JSON property `repoSource`
        # @return [Google::Apis::CloudbuildV1::RepoSource]
        attr_accessor :repo_source
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @storage_source = args[:storage_source] if args.key?(:storage_source)
          @repo_source = args[:repo_source] if args.key?(:repo_source)
        end
      end
      
      # Provenance of the source. Ways to find the original source, or verify that
      # some source was used for this build.
      class SourceProvenance
        include Google::Apis::Core::Hashable
      
        # RepoSource describes the location of the source in a Google Cloud Source
        # Repository.
        # Corresponds to the JSON property `resolvedRepoSource`
        # @return [Google::Apis::CloudbuildV1::RepoSource]
        attr_accessor :resolved_repo_source
      
        # StorageSource describes the location of the source in an archive file in
        # Google Cloud Storage.
        # Corresponds to the JSON property `resolvedStorageSource`
        # @return [Google::Apis::CloudbuildV1::StorageSource]
        attr_accessor :resolved_storage_source
      
        # Hash(es) of the build source, which can be used to verify that the original
        # source integrity was maintained in the build. Note that FileHashes will
        # only be populated if BuildOptions has requested a SourceProvenanceHash.
        # The keys to this map are file paths used as build source and the values
        # contain the hash values for those files.
        # If the build source came in a single package such as a gzipped tarfile
        # (.tar.gz), the FileHash will be for the single path to that file.
        # @OutputOnly
        # Corresponds to the JSON property `fileHashes`
        # @return [Hash<String,Google::Apis::CloudbuildV1::FileHashes>]
        attr_accessor :file_hashes
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @resolved_repo_source = args[:resolved_repo_source] if args.key?(:resolved_repo_source)
          @resolved_storage_source = args[:resolved_storage_source] if args.key?(:resolved_storage_source)
          @file_hashes = args[:file_hashes] if args.key?(:file_hashes)
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
      
      # Configuration for an automated build in response to source repository
      # changes.
      class BuildTrigger
        include Google::Apis::Core::Hashable
      
        # Unique identifier of the trigger.
        # @OutputOnly
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # Human-readable description of this trigger.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # RepoSource describes the location of the source in a Google Cloud Source
        # Repository.
        # Corresponds to the JSON property `triggerTemplate`
        # @return [Google::Apis::CloudbuildV1::RepoSource]
        attr_accessor :trigger_template
      
        # If true, the trigger will never result in a build.
        # Corresponds to the JSON property `disabled`
        # @return [Boolean]
        attr_accessor :disabled
        alias_method :disabled?, :disabled
      
        # Time when the trigger was created.
        # @OutputOnly
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Path, from the source root, to a file whose contents is used for the
        # template.
        # Corresponds to the JSON property `filename`
        # @return [String]
        attr_accessor :filename
      
        # A build resource in the Container Builder API.
        # At a high level, a Build describes where to find source code, how to build
        # it (for example, the builder image to run on the source), and what tag to
        # apply to the built image when it is pushed to Google Container Registry.
        # Fields can include the following variables which will be expanded when the
        # build is created:
        # - $PROJECT_ID: the project ID of the build.
        # - $BUILD_ID: the autogenerated ID of the build.
        # - $REPO_NAME: the source repository name specified by RepoSource.
        # - $BRANCH_NAME: the branch name specified by RepoSource.
        # - $TAG_NAME: the tag name specified by RepoSource.
        # - $REVISION_ID or $COMMIT_SHA: the commit SHA specified by RepoSource or
        # resolved from the specified branch or tag.
        # Corresponds to the JSON property `build`
        # @return [Google::Apis::CloudbuildV1::Build]
        attr_accessor :build
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @id = args[:id] if args.key?(:id)
          @description = args[:description] if args.key?(:description)
          @trigger_template = args[:trigger_template] if args.key?(:trigger_template)
          @disabled = args[:disabled] if args.key?(:disabled)
          @create_time = args[:create_time] if args.key?(:create_time)
          @filename = args[:filename] if args.key?(:filename)
          @build = args[:build] if args.key?(:build)
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
      
      # Container message for hash values.
      class HashProp
        include Google::Apis::Core::Hashable
      
        # The hash value.
        # Corresponds to the JSON property `value`
        # @return [String]
        attr_accessor :value
      
        # The type of hash that was performed.
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @value = args[:value] if args.key?(:value)
          @type = args[:type] if args.key?(:type)
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
      
        # List of build step digests, in order corresponding to build step indices.
        # Corresponds to the JSON property `buildStepImages`
        # @return [Array<String>]
        attr_accessor :build_step_images
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @images = args[:images] if args.key?(:images)
          @build_step_images = args[:build_step_images] if args.key?(:build_step_images)
        end
      end
      
      # A build resource in the Container Builder API.
      # At a high level, a Build describes where to find source code, how to build
      # it (for example, the builder image to run on the source), and what tag to
      # apply to the built image when it is pushed to Google Container Registry.
      # Fields can include the following variables which will be expanded when the
      # build is created:
      # - $PROJECT_ID: the project ID of the build.
      # - $BUILD_ID: the autogenerated ID of the build.
      # - $REPO_NAME: the source repository name specified by RepoSource.
      # - $BRANCH_NAME: the branch name specified by RepoSource.
      # - $TAG_NAME: the tag name specified by RepoSource.
      # - $REVISION_ID or $COMMIT_SHA: the commit SHA specified by RepoSource or
      # resolved from the specified branch or tag.
      class Build
        include Google::Apis::Core::Hashable
      
        # Unique identifier of the build.
        # @OutputOnly
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # Provenance of the source. Ways to find the original source, or verify that
        # some source was used for this build.
        # Corresponds to the JSON property `sourceProvenance`
        # @return [Google::Apis::CloudbuildV1::SourceProvenance]
        attr_accessor :source_provenance
      
        # Results describes the artifacts created by the build pipeline.
        # Corresponds to the JSON property `results`
        # @return [Google::Apis::CloudbuildV1::Results]
        attr_accessor :results
      
        # Status of the build.
        # @OutputOnly
        # Corresponds to the JSON property `status`
        # @return [String]
        attr_accessor :status
      
        # Optional arguments to enable specific features of builds.
        # Corresponds to the JSON property `options`
        # @return [Google::Apis::CloudbuildV1::BuildOptions]
        attr_accessor :options
      
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
      
        # URL to logs for this build in Google Cloud Logging.
        # @OutputOnly
        # Corresponds to the JSON property `logUrl`
        # @return [String]
        attr_accessor :log_url
      
        # Customer-readable message about the current status.
        # @OutputOnly
        # Corresponds to the JSON property `statusDetail`
        # @return [String]
        attr_accessor :status_detail
      
        # A list of images to be pushed upon the successful completion of all build
        # steps.
        # The images will be pushed using the builder
        # service account's credentials.
        # The digests of the pushed images will be stored in the Build resource's
        # results field.
        # If any of the images fail to be pushed, the build is marked FAILURE.
        # Corresponds to the JSON property `images`
        # @return [Array<String>]
        attr_accessor :images
      
        # Time at which execution of the build was started.
        # @OutputOnly
        # Corresponds to the JSON property `startTime`
        # @return [String]
        attr_accessor :start_time
      
        # The ID of the BuildTrigger that triggered this build, if it was
        # triggered automatically.
        # @OutputOnly
        # Corresponds to the JSON property `buildTriggerId`
        # @return [String]
        attr_accessor :build_trigger_id
      
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
          @source_provenance = args[:source_provenance] if args.key?(:source_provenance)
          @results = args[:results] if args.key?(:results)
          @status = args[:status] if args.key?(:status)
          @options = args[:options] if args.key?(:options)
          @finish_time = args[:finish_time] if args.key?(:finish_time)
          @timeout = args[:timeout] if args.key?(:timeout)
          @steps = args[:steps] if args.key?(:steps)
          @source = args[:source] if args.key?(:source)
          @create_time = args[:create_time] if args.key?(:create_time)
          @log_url = args[:log_url] if args.key?(:log_url)
          @status_detail = args[:status_detail] if args.key?(:status_detail)
          @images = args[:images] if args.key?(:images)
          @start_time = args[:start_time] if args.key?(:start_time)
          @build_trigger_id = args[:build_trigger_id] if args.key?(:build_trigger_id)
          @logs_bucket = args[:logs_bucket] if args.key?(:logs_bucket)
          @project_id = args[:project_id] if args.key?(:project_id)
        end
      end
      
      # Response containing existing BuildTriggers.
      class ListBuildTriggersResponse
        include Google::Apis::Core::Hashable
      
        # BuildTriggers for the project, sorted by create_time descending.
        # Corresponds to the JSON property `triggers`
        # @return [Array<Google::Apis::CloudbuildV1::BuildTrigger>]
        attr_accessor :triggers
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @triggers = args[:triggers] if args.key?(:triggers)
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
      
      # Container message for hashes of byte content of files, used in
      # SourceProvenance messages to verify integrity of source input to the build.
      class FileHashes
        include Google::Apis::Core::Hashable
      
        # Collection of file hashes.
        # Corresponds to the JSON property `fileHash`
        # @return [Array<Google::Apis::CloudbuildV1::HashProp>]
        attr_accessor :file_hash
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @file_hash = args[:file_hash] if args.key?(:file_hash)
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
      
      # RepoSource describes the location of the source in a Google Cloud Source
      # Repository.
      class RepoSource
        include Google::Apis::Core::Hashable
      
        # Name of the repo. If omitted, the name "default" is assumed.
        # Corresponds to the JSON property `repoName`
        # @return [String]
        attr_accessor :repo_name
      
        # Name of the tag to build.
        # Corresponds to the JSON property `tagName`
        # @return [String]
        attr_accessor :tag_name
      
        # ID of the project that owns the repo. If omitted, the project ID requesting
        # the build is assumed.
        # Corresponds to the JSON property `projectId`
        # @return [String]
        attr_accessor :project_id
      
        # Name of the branch to build.
        # Corresponds to the JSON property `branchName`
        # @return [String]
        attr_accessor :branch_name
      
        # Explicit commit SHA to build.
        # Corresponds to the JSON property `commitSha`
        # @return [String]
        attr_accessor :commit_sha
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @repo_name = args[:repo_name] if args.key?(:repo_name)
          @tag_name = args[:tag_name] if args.key?(:tag_name)
          @project_id = args[:project_id] if args.key?(:project_id)
          @branch_name = args[:branch_name] if args.key?(:branch_name)
          @commit_sha = args[:commit_sha] if args.key?(:commit_sha)
        end
      end
      
      # BuildStep describes a step to perform in the build pipeline.
      class BuildStep
        include Google::Apis::Core::Hashable
      
        # Optional unique identifier for this build step, used in wait_for to
        # reference this build step as a dependency.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # A list of environment variable definitions to be used when running a step.
        # The elements are of the form "KEY=VALUE" for the environment variable "KEY"
        # being given the value "VALUE".
        # Corresponds to the JSON property `env`
        # @return [Array<String>]
        attr_accessor :env
      
        # The ID(s) of the step(s) that this build step depends on.
        # This build step will not start until all the build steps in wait_for
        # have completed successfully. If wait_for is empty, this build step will
        # start when all previous build steps in the Build.Steps list have completed
        # successfully.
        # Corresponds to the JSON property `waitFor`
        # @return [Array<String>]
        attr_accessor :wait_for
      
        # A list of arguments that will be presented to the step when it is started.
        # If the image used to run the step's container has an entrypoint, these args
        # will be used as arguments to that entrypoint. If the image does not define
        # an entrypoint, the first element in args will be used as the entrypoint,
        # and the remainder will be used as arguments.
        # Corresponds to the JSON property `args`
        # @return [Array<String>]
        attr_accessor :args
      
        # The name of the container image that will run this particular build step.
        # If the image is already available in the host's
        # Docker daemon's cache, it will be run directly. If not, the host will
        # attempt to pull the image first, using the builder service account's
        # credentials if necessary.
        # The Docker daemon's cache will already have the latest versions of all of
        # the officially supported build steps
        # (https://github.com/GoogleCloudPlatform/cloud-builders). The Docker daemon
        # will also have cached many of the layers for some popular images, like
        # "ubuntu", "debian", but they will be refreshed at the time you attempt to
        # use them.
        # If you built an image in a previous build step, it will be stored in the
        # host's Docker daemon's cache and is available to use as the name for a
        # later build step.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Working directory (relative to project source root) to use when running
        # this operation's container.
        # Corresponds to the JSON property `dir`
        # @return [String]
        attr_accessor :dir
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @id = args[:id] if args.key?(:id)
          @env = args[:env] if args.key?(:env)
          @wait_for = args[:wait_for] if args.key?(:wait_for)
          @args = args[:args] if args.key?(:args)
          @name = args[:name] if args.key?(:name)
          @dir = args[:dir] if args.key?(:dir)
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
      
      # Optional arguments to enable specific features of builds.
      class BuildOptions
        include Google::Apis::Core::Hashable
      
        # Requested hash for SourceProvenance.
        # Corresponds to the JSON property `sourceProvenanceHash`
        # @return [Array<String>]
        attr_accessor :source_provenance_hash
      
        # Requested verifiability options.
        # Corresponds to the JSON property `requestedVerifyOption`
        # @return [String]
        attr_accessor :requested_verify_option
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @source_provenance_hash = args[:source_provenance_hash] if args.key?(:source_provenance_hash)
          @requested_verify_option = args[:requested_verify_option] if args.key?(:requested_verify_option)
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
