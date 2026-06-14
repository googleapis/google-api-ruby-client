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
    module StoragebatchoperationsV1
      
      # Represents updates to existing access-control entries on an object.
      class AccessControlsUpdates
        include Google::Apis::Core::Hashable
      
        # Optional. Grants to add or update. If a grant for same entity exists, its role
        # is updated.
        # Corresponds to the JSON property `grants`
        # @return [Array<Google::Apis::StoragebatchoperationsV1::ObjectAccessControl>]
        attr_accessor :grants
      
        # Optional. Entities for which all grants should be removed. An entity can't be
        # in both `grants` and `remove_entities`.
        # Corresponds to the JSON property `removeEntities`
        # @return [Array<String>]
        attr_accessor :remove_entities
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @grants = args[:grants] if args.key?(:grants)
          @remove_entities = args[:remove_entities] if args.key?(:remove_entities)
        end
      end
      
      # Describes configuration of a single bucket and its objects to be transformed.
      class Bucket
        include Google::Apis::Core::Hashable
      
        # Required. Bucket name for the objects to be transformed.
        # Corresponds to the JSON property `bucket`
        # @return [String]
        attr_accessor :bucket
      
        # Describes list of objects to be transformed.
        # Corresponds to the JSON property `manifest`
        # @return [Google::Apis::StoragebatchoperationsV1::Manifest]
        attr_accessor :manifest
      
        # Describes prefixes of objects to be transformed.
        # Corresponds to the JSON property `prefixList`
        # @return [Google::Apis::StoragebatchoperationsV1::PrefixList]
        attr_accessor :prefix_list
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @bucket = args[:bucket] if args.key?(:bucket)
          @manifest = args[:manifest] if args.key?(:manifest)
          @prefix_list = args[:prefix_list] if args.key?(:prefix_list)
        end
      end
      
      # Describes list of buckets and their objects to be transformed.
      class BucketList
        include Google::Apis::Core::Hashable
      
        # Required. List of buckets and their objects to be transformed. You can specify
        # only one bucket per job. If multiple buckets are specified, an error occurs.
        # Corresponds to the JSON property `buckets`
        # @return [Array<Google::Apis::StoragebatchoperationsV1::Bucket>]
        attr_accessor :buckets
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @buckets = args[:buckets] if args.key?(:buckets)
        end
      end
      
      # BucketOperation represents a bucket-level breakdown of a Job.
      class BucketOperation
        include Google::Apis::Core::Hashable
      
        # The bucket name of the objects to be transformed in the BucketOperation.
        # Corresponds to the JSON property `bucketName`
        # @return [String]
        attr_accessor :bucket_name
      
        # Output only. The time that the BucketOperation was completed.
        # Corresponds to the JSON property `completeTime`
        # @return [String]
        attr_accessor :complete_time
      
        # Describes details about the progress of the job.
        # Corresponds to the JSON property `counters`
        # @return [Google::Apis::StoragebatchoperationsV1::Counters]
        attr_accessor :counters
      
        # Output only. The time that the BucketOperation was created.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Describes options to delete an object.
        # Corresponds to the JSON property `deleteObject`
        # @return [Google::Apis::StoragebatchoperationsV1::DeleteObject]
        attr_accessor :delete_object
      
        # Output only. Summarizes errors encountered with sample error log entries.
        # Corresponds to the JSON property `errorSummaries`
        # @return [Array<Google::Apis::StoragebatchoperationsV1::ErrorSummary>]
        attr_accessor :error_summaries
      
        # Describes list of objects to be transformed.
        # Corresponds to the JSON property `manifest`
        # @return [Google::Apis::StoragebatchoperationsV1::Manifest]
        attr_accessor :manifest
      
        # Identifier. The resource name of the BucketOperation. This is defined by the
        # service. Format: `projects/`project_id`/locations/global/jobs/`job_id`/
        # bucketOperations/`bucket_operation``.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Describes prefixes of objects to be transformed.
        # Corresponds to the JSON property `prefixList`
        # @return [Google::Apis::StoragebatchoperationsV1::PrefixList]
        attr_accessor :prefix_list
      
        # Describes the project source where the objects satisfying the filters will be
        # transformed.
        # Corresponds to the JSON property `projectSource`
        # @return [Google::Apis::StoragebatchoperationsV1::ProjectSource]
        attr_accessor :project_source
      
        # Describes options for object metadata update.
        # Corresponds to the JSON property `putMetadata`
        # @return [Google::Apis::StoragebatchoperationsV1::PutMetadata]
        attr_accessor :put_metadata
      
        # Describes options to update object hold.
        # Corresponds to the JSON property `putObjectHold`
        # @return [Google::Apis::StoragebatchoperationsV1::PutObjectHold]
        attr_accessor :put_object_hold
      
        # Describes options for object rewrite.
        # Corresponds to the JSON property `rewriteObject`
        # @return [Google::Apis::StoragebatchoperationsV1::RewriteObject]
        attr_accessor :rewrite_object
      
        # Describes options for setting object ACLs.
        # Corresponds to the JSON property `setObjectAcls`
        # @return [Google::Apis::StoragebatchoperationsV1::SetObjectAcls]
        attr_accessor :set_object_acls
      
        # Output only. The time that the BucketOperation was started.
        # Corresponds to the JSON property `startTime`
        # @return [String]
        attr_accessor :start_time
      
        # Output only. State of the BucketOperation.
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        # Describes options to update object custom contexts.
        # Corresponds to the JSON property `updateObjectCustomContext`
        # @return [Google::Apis::StoragebatchoperationsV1::UpdateObjectCustomContext]
        attr_accessor :update_object_custom_context
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @bucket_name = args[:bucket_name] if args.key?(:bucket_name)
          @complete_time = args[:complete_time] if args.key?(:complete_time)
          @counters = args[:counters] if args.key?(:counters)
          @create_time = args[:create_time] if args.key?(:create_time)
          @delete_object = args[:delete_object] if args.key?(:delete_object)
          @error_summaries = args[:error_summaries] if args.key?(:error_summaries)
          @manifest = args[:manifest] if args.key?(:manifest)
          @name = args[:name] if args.key?(:name)
          @prefix_list = args[:prefix_list] if args.key?(:prefix_list)
          @project_source = args[:project_source] if args.key?(:project_source)
          @put_metadata = args[:put_metadata] if args.key?(:put_metadata)
          @put_object_hold = args[:put_object_hold] if args.key?(:put_object_hold)
          @rewrite_object = args[:rewrite_object] if args.key?(:rewrite_object)
          @set_object_acls = args[:set_object_acls] if args.key?(:set_object_acls)
          @start_time = args[:start_time] if args.key?(:start_time)
          @state = args[:state] if args.key?(:state)
          @update_object_custom_context = args[:update_object_custom_context] if args.key?(:update_object_custom_context)
        end
      end
      
      # Message for Job to Cancel
      class CancelJobRequest
        include Google::Apis::Core::Hashable
      
        # Optional. An optional request ID to identify requests. Specify a unique
        # request ID in case you need to retry your request. Requests with same `
        # request_id` are ignored for at least 60 minutes since the first request. The
        # request ID must be a valid UUID with the exception that zero UUID isn't
        # supported (00000000-0000-0000-0000-000000000000).
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
      
      # Message for response to cancel Job.
      class CancelJobResponse
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
      
      # Describes details about the progress of the job.
      class Counters
        include Google::Apis::Core::Hashable
      
        # Output only. The number of objects that failed due to user errors or service
        # errors.
        # Corresponds to the JSON property `failedObjectCount`
        # @return [Fixnum]
        attr_accessor :failed_object_count
      
        # Output only. Number of object custom contexts created. This field is only
        # populated for jobs with the UpdateObjectCustomContext transformation.
        # Corresponds to the JSON property `objectCustomContextsCreated`
        # @return [Fixnum]
        attr_accessor :object_custom_contexts_created
      
        # Output only. Number of object custom contexts deleted. This field is only
        # populated for jobs with the UpdateObjectCustomContext transformation.
        # Corresponds to the JSON property `objectCustomContextsDeleted`
        # @return [Fixnum]
        attr_accessor :object_custom_contexts_deleted
      
        # Output only. Number of object custom contexts updated. This counter tracks
        # custom contexts where the key already existed, but the payload was modified.
        # This field is only populated for jobs with the UpdateObjectCustomContext
        # transformation.
        # Corresponds to the JSON property `objectCustomContextsUpdated`
        # @return [Fixnum]
        attr_accessor :object_custom_contexts_updated
      
        # Output only. Number of objects completed.
        # Corresponds to the JSON property `succeededObjectCount`
        # @return [Fixnum]
        attr_accessor :succeeded_object_count
      
        # Output only. Number of bytes found from source. This field is only populated
        # for jobs with a prefix list object configuration.
        # Corresponds to the JSON property `totalBytesFound`
        # @return [Fixnum]
        attr_accessor :total_bytes_found
      
        # Output only. The total number of bytes affected by the transformation. For
        # example, this counts bytes deleted for `DeleteObject` operations and bytes
        # rewritten for `RewriteObject` operations.
        # Corresponds to the JSON property `totalBytesTransformed`
        # @return [Fixnum]
        attr_accessor :total_bytes_transformed
      
        # Output only. Number of objects listed.
        # Corresponds to the JSON property `totalObjectCount`
        # @return [Fixnum]
        attr_accessor :total_object_count
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @failed_object_count = args[:failed_object_count] if args.key?(:failed_object_count)
          @object_custom_contexts_created = args[:object_custom_contexts_created] if args.key?(:object_custom_contexts_created)
          @object_custom_contexts_deleted = args[:object_custom_contexts_deleted] if args.key?(:object_custom_contexts_deleted)
          @object_custom_contexts_updated = args[:object_custom_contexts_updated] if args.key?(:object_custom_contexts_updated)
          @succeeded_object_count = args[:succeeded_object_count] if args.key?(:succeeded_object_count)
          @total_bytes_found = args[:total_bytes_found] if args.key?(:total_bytes_found)
          @total_bytes_transformed = args[:total_bytes_transformed] if args.key?(:total_bytes_transformed)
          @total_object_count = args[:total_object_count] if args.key?(:total_object_count)
        end
      end
      
      # Describes a collection of updates to apply to custom contexts identified by
      # key.
      class CustomContextUpdates
        include Google::Apis::Core::Hashable
      
        # Optional. Custom contexts to clear by key. A key can't be present in both `
        # updates` and `keys_to_clear`.
        # Corresponds to the JSON property `keysToClear`
        # @return [Array<String>]
        attr_accessor :keys_to_clear
      
        # Optional. Insert or update the existing custom contexts.
        # Corresponds to the JSON property `updates`
        # @return [Hash<String,Google::Apis::StoragebatchoperationsV1::ObjectCustomContextPayload>]
        attr_accessor :updates
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @keys_to_clear = args[:keys_to_clear] if args.key?(:keys_to_clear)
          @updates = args[:updates] if args.key?(:updates)
        end
      end
      
      # Describes options to delete an object.
      class DeleteObject
        include Google::Apis::Core::Hashable
      
        # Required. Controls deletion behavior when versioning is enabled for the object'
        # s bucket. If true, both live and noncurrent objects will be permanently
        # deleted. Otherwise live objects in versioned buckets will become noncurrent
        # and objects that were already noncurrent will be skipped. This setting doesn't
        # have any impact on the Soft Delete feature. All objects deleted by this
        # service can be be restored for the duration of the Soft Delete retention
        # duration if enabled. If enabled and the manifest doesn't specify an object's
        # generation, a `GetObjectMetadata` call is made to determine the live object
        # generation.
        # Corresponds to the JSON property `permanentObjectDeletionEnabled`
        # @return [Boolean]
        attr_accessor :permanent_object_deletion_enabled
        alias_method :permanent_object_deletion_enabled?, :permanent_object_deletion_enabled
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @permanent_object_deletion_enabled = args[:permanent_object_deletion_enabled] if args.key?(:permanent_object_deletion_enabled)
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
      
      # An entry describing an error that has occurred.
      class ErrorLogEntry
        include Google::Apis::Core::Hashable
      
        # Optional. Output only. At most 5 error log entries are recorded for a given
        # error code for a job.
        # Corresponds to the JSON property `errorDetails`
        # @return [Array<String>]
        attr_accessor :error_details
      
        # Required. Output only. Object URL. e.g. gs://my_bucket/object.txt
        # Corresponds to the JSON property `objectUri`
        # @return [String]
        attr_accessor :object_uri
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @error_details = args[:error_details] if args.key?(:error_details)
          @object_uri = args[:object_uri] if args.key?(:object_uri)
        end
      end
      
      # A summary of errors by error code, plus a count and sample error log entries.
      class ErrorSummary
        include Google::Apis::Core::Hashable
      
        # Required. The canonical error code.
        # Corresponds to the JSON property `errorCode`
        # @return [String]
        attr_accessor :error_code
      
        # Required. Number of errors encountered per `error_code`.
        # Corresponds to the JSON property `errorCount`
        # @return [Fixnum]
        attr_accessor :error_count
      
        # Required. Sample error logs.
        # Corresponds to the JSON property `errorLogEntries`
        # @return [Array<Google::Apis::StoragebatchoperationsV1::ErrorLogEntry>]
        attr_accessor :error_log_entries
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @error_code = args[:error_code] if args.key?(:error_code)
          @error_count = args[:error_count] if args.key?(:error_count)
          @error_log_entries = args[:error_log_entries] if args.key?(:error_log_entries)
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
      
      # The storage batch operations job description.
      class Job
        include Google::Apis::Core::Hashable
      
        # Describes list of buckets and their objects to be transformed.
        # Corresponds to the JSON property `bucketList`
        # @return [Google::Apis::StoragebatchoperationsV1::BucketList]
        attr_accessor :bucket_list
      
        # Output only. The time that the job was completed.
        # Corresponds to the JSON property `completeTime`
        # @return [String]
        attr_accessor :complete_time
      
        # Describes details about the progress of the job.
        # Corresponds to the JSON property `counters`
        # @return [Google::Apis::StoragebatchoperationsV1::Counters]
        attr_accessor :counters
      
        # Output only. The time that the job was created.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Describes options to delete an object.
        # Corresponds to the JSON property `deleteObject`
        # @return [Google::Apis::StoragebatchoperationsV1::DeleteObject]
        attr_accessor :delete_object
      
        # Optional. A user-provided description for the job. Maximum length: 1024 bytes
        # when unicode-encoded.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # Optional. If true, the job runs in dry run mode, returning the total object
        # count and, if the object configuration is a prefix list, the bytes found from
        # source. No transformations are performed.
        # Corresponds to the JSON property `dryRun`
        # @return [Boolean]
        attr_accessor :dry_run
        alias_method :dry_run?, :dry_run
      
        # Output only. Summarizes errors encountered with sample error log entries.
        # Corresponds to the JSON property `errorSummaries`
        # @return [Array<Google::Apis::StoragebatchoperationsV1::ErrorSummary>]
        attr_accessor :error_summaries
      
        # Output only. If true, this job operates on multiple buckets. Multi-bucket jobs
        # are subject to different quota limits than single-bucket jobs.
        # Corresponds to the JSON property `isMultiBucketJob`
        # @return [Boolean]
        attr_accessor :is_multi_bucket_job
        alias_method :is_multi_bucket_job?, :is_multi_bucket_job
      
        # Specifies the Cloud Logging behavior.
        # Corresponds to the JSON property `loggingConfig`
        # @return [Google::Apis::StoragebatchoperationsV1::LoggingConfig]
        attr_accessor :logging_config
      
        # Identifier. The resource name of the job. Format: `projects/`project_id`/
        # locations/global/jobs/`job_id``. For example: `projects/123456/locations/
        # global/jobs/job01`. `job_id` is unique in a given project.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Describes the project source where the objects satisfying the filters will be
        # transformed.
        # Corresponds to the JSON property `projectSource`
        # @return [Google::Apis::StoragebatchoperationsV1::ProjectSource]
        attr_accessor :project_source
      
        # Describes options for object metadata update.
        # Corresponds to the JSON property `putMetadata`
        # @return [Google::Apis::StoragebatchoperationsV1::PutMetadata]
        attr_accessor :put_metadata
      
        # Describes options to update object hold.
        # Corresponds to the JSON property `putObjectHold`
        # @return [Google::Apis::StoragebatchoperationsV1::PutObjectHold]
        attr_accessor :put_object_hold
      
        # Describes options for object rewrite.
        # Corresponds to the JSON property `rewriteObject`
        # @return [Google::Apis::StoragebatchoperationsV1::RewriteObject]
        attr_accessor :rewrite_object
      
        # Output only. The time that the job was scheduled.
        # Corresponds to the JSON property `scheduleTime`
        # @return [String]
        attr_accessor :schedule_time
      
        # Describes options for setting object ACLs.
        # Corresponds to the JSON property `setObjectAcls`
        # @return [Google::Apis::StoragebatchoperationsV1::SetObjectAcls]
        attr_accessor :set_object_acls
      
        # Output only. State of the job.
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        # Describes options to update object custom contexts.
        # Corresponds to the JSON property `updateObjectCustomContext`
        # @return [Google::Apis::StoragebatchoperationsV1::UpdateObjectCustomContext]
        attr_accessor :update_object_custom_context
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @bucket_list = args[:bucket_list] if args.key?(:bucket_list)
          @complete_time = args[:complete_time] if args.key?(:complete_time)
          @counters = args[:counters] if args.key?(:counters)
          @create_time = args[:create_time] if args.key?(:create_time)
          @delete_object = args[:delete_object] if args.key?(:delete_object)
          @description = args[:description] if args.key?(:description)
          @dry_run = args[:dry_run] if args.key?(:dry_run)
          @error_summaries = args[:error_summaries] if args.key?(:error_summaries)
          @is_multi_bucket_job = args[:is_multi_bucket_job] if args.key?(:is_multi_bucket_job)
          @logging_config = args[:logging_config] if args.key?(:logging_config)
          @name = args[:name] if args.key?(:name)
          @project_source = args[:project_source] if args.key?(:project_source)
          @put_metadata = args[:put_metadata] if args.key?(:put_metadata)
          @put_object_hold = args[:put_object_hold] if args.key?(:put_object_hold)
          @rewrite_object = args[:rewrite_object] if args.key?(:rewrite_object)
          @schedule_time = args[:schedule_time] if args.key?(:schedule_time)
          @set_object_acls = args[:set_object_acls] if args.key?(:set_object_acls)
          @state = args[:state] if args.key?(:state)
          @update_object_custom_context = args[:update_object_custom_context] if args.key?(:update_object_custom_context)
        end
      end
      
      # Message for response to listing BucketOperations
      class ListBucketOperationsResponse
        include Google::Apis::Core::Hashable
      
        # A list of storage batch bucket operations.
        # Corresponds to the JSON property `bucketOperations`
        # @return [Array<Google::Apis::StoragebatchoperationsV1::BucketOperation>]
        attr_accessor :bucket_operations
      
        # A token identifying a page of results.
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
          @bucket_operations = args[:bucket_operations] if args.key?(:bucket_operations)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @unreachable = args[:unreachable] if args.key?(:unreachable)
        end
      end
      
      # Message for response to listing Jobs
      class ListJobsResponse
        include Google::Apis::Core::Hashable
      
        # A list of storage batch jobs.
        # Corresponds to the JSON property `jobs`
        # @return [Array<Google::Apis::StoragebatchoperationsV1::Job>]
        attr_accessor :jobs
      
        # A token identifying a page of results.
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
        # @return [Array<Google::Apis::StoragebatchoperationsV1::Location>]
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
        # @return [Array<Google::Apis::StoragebatchoperationsV1::Operation>]
        attr_accessor :operations
      
        # Unordered list. Unreachable resources. Populated when the request sets `
        # ListOperationsRequest.return_partial_success` and reads across collections.
        # For example, when attempting to list all resources across all supported
        # locations.
        # Corresponds to the JSON property `unreachable`
        # @return [Array<String>]
        attr_accessor :unreachable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @operations = args[:operations] if args.key?(:operations)
          @unreachable = args[:unreachable] if args.key?(:unreachable)
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
      
      # Specifies the Cloud Logging behavior.
      class LoggingConfig
        include Google::Apis::Core::Hashable
      
        # Required. States in which Action are logged.If empty, no logs are generated.
        # Corresponds to the JSON property `logActionStates`
        # @return [Array<String>]
        attr_accessor :log_action_states
      
        # Required. Specifies the actions to be logged.
        # Corresponds to the JSON property `logActions`
        # @return [Array<String>]
        attr_accessor :log_actions
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @log_action_states = args[:log_action_states] if args.key?(:log_action_states)
          @log_actions = args[:log_actions] if args.key?(:log_actions)
        end
      end
      
      # Describes list of objects to be transformed.
      class Manifest
        include Google::Apis::Core::Hashable
      
        # Required. Specify the manifest file location. The format of manifest location
        # can be an absolute path to the object in the format of `gs://bucket_name/path/
        # object_name`. For example, `gs://bucket_name/path/object_name.csv`.
        # Alternatively, you can specify an absolute path with a single wildcard
        # character in the file name, for example `gs://bucket_name/path/file_name*.csv`.
        # If the manifest location is specified with a wildcard, objects in all
        # manifest files matching the pattern will be acted upon. The manifest is a CSV
        # file, uploaded to Cloud Storage, that contains one object or a list of objects
        # that you want to process. Each row in the manifest must include the `bucket`
        # and `name` of the object. You can optionally specify the `generation` of the
        # object. If you don't specify the `generation`, the current version of the
        # object is used. You can optionally include a header row with the following
        # format: `bucket,name,generation`. For example, bucket,name,generation bucket_1,
        # object_1,generation_1 bucket_1,object_2,generation_2 bucket_1,object_3,
        # generation_3 Note: The manifest file must specify only objects within the
        # bucket provided to the job. Rows referencing objects in other buckets are
        # ignored.
        # Corresponds to the JSON property `manifestLocation`
        # @return [String]
        attr_accessor :manifest_location
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @manifest_location = args[:manifest_location] if args.key?(:manifest_location)
        end
      end
      
      # Represents an access control entry on an object.
      class ObjectAccessControl
        include Google::Apis::Core::Hashable
      
        # Required. The entity holding the permission, in one of the following forms: * `
        # allUsers` * `allAuthenticatedUsers`
        # Corresponds to the JSON property `entity`
        # @return [String]
        attr_accessor :entity
      
        # Required. The role to grant. Acceptable values are: * `READER` - gives read
        # access to the object. * `OWNER` - gives owner access to the object.
        # Corresponds to the JSON property `role`
        # @return [String]
        attr_accessor :role
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @entity = args[:entity] if args.key?(:entity)
          @role = args[:role] if args.key?(:role)
        end
      end
      
      # Describes the payload of a user-defined object custom context.
      class ObjectCustomContextPayload
        include Google::Apis::Core::Hashable
      
        # The value of the object custom context. If set, `value` can't be an empty
        # string because it is a required field in custom context. If unset, `value` is
        # ignored and no changes are made to the `value` field of the custom context
        # payload.
        # Corresponds to the JSON property `value`
        # @return [String]
        attr_accessor :value
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @value = args[:value] if args.key?(:value)
        end
      end
      
      # Describes options for object retention update.
      class ObjectRetention
        include Google::Apis::Core::Hashable
      
        # Required. The object's retention expiration time, during which, the object is
        # protected from being deleted or overwritten. The time must be specified in RFC
        # 3339 format, for example `YYYY-MM-DD'T'HH:MM:SS'Z'` or `YYYY-MM-DD'T'HH:MM:SS.
        # SS'Z'`. To clear an object's retention, both `retentionMode` and `
        # retainUntilTime` must be left unset (omitted). Setting `retentionMode` to `
        # RETENTION_MODE_UNSPECIFIED` is treated as a no-op. Unlike an unset field, it
        # doesn't modify or clear the retention settings.
        # Corresponds to the JSON property `retainUntilTime`
        # @return [String]
        attr_accessor :retain_until_time
      
        # Required. The retention mode.
        # Corresponds to the JSON property `retentionMode`
        # @return [String]
        attr_accessor :retention_mode
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @retain_until_time = args[:retain_until_time] if args.key?(:retain_until_time)
          @retention_mode = args[:retention_mode] if args.key?(:retention_mode)
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
        # @return [Google::Apis::StoragebatchoperationsV1::Status]
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
      
        # The normal, successful response of the operation. If the original method
        # returns no data on success, such as `Delete`, the response is `google.protobuf.
        # Empty`. If the original method is standard `Get`/`Create`/`Update`, the
        # response should be the resource. For other methods, the response should have
        # the type `XxxResponse`, where `Xxx` is the original method name. For example,
        # if the original method name is `TakeSnapshot()`, the inferred response type is
        # `TakeSnapshotResponse`.
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
      
        # The storage batch operations job description.
        # Corresponds to the JSON property `job`
        # @return [Google::Apis::StoragebatchoperationsV1::Job]
        attr_accessor :job
      
        # Output only. The unique operation resource name. Format: projects/`project_id`/
        # locations/global/operations/`operation`.
        # Corresponds to the JSON property `operation`
        # @return [String]
        attr_accessor :operation
      
        # Output only. Identifies whether the user has requested cancellation of the
        # operation. Operations that have been cancelled successfully have google.
        # longrunning.Operation.error value with a google.rpc.Status.code of 1,
        # corresponding to `Code.CANCELLED`.
        # Corresponds to the JSON property `requestedCancellation`
        # @return [Boolean]
        attr_accessor :requested_cancellation
        alias_method :requested_cancellation?, :requested_cancellation
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @api_version = args[:api_version] if args.key?(:api_version)
          @create_time = args[:create_time] if args.key?(:create_time)
          @end_time = args[:end_time] if args.key?(:end_time)
          @job = args[:job] if args.key?(:job)
          @operation = args[:operation] if args.key?(:operation)
          @requested_cancellation = args[:requested_cancellation] if args.key?(:requested_cancellation)
        end
      end
      
      # Describes prefixes of objects to be transformed.
      class PrefixList
        include Google::Apis::Core::Hashable
      
        # Optional. Specify one or more object prefixes. For example: * To match one
        # object, use a single prefix, `prefix1`. * To match multiple objects, use comma-
        # separated prefixes, `prefix1, prefix2`. * To match all objects, use an empty
        # prefix, `''`
        # Corresponds to the JSON property `includedObjectPrefixes`
        # @return [Array<String>]
        attr_accessor :included_object_prefixes
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @included_object_prefixes = args[:included_object_prefixes] if args.key?(:included_object_prefixes)
        end
      end
      
      # Describes the project source where the objects satisfying the filters will be
      # transformed.
      class ProjectSource
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
        # Corresponds to the JSON property `bucketFilters`
        # @return [Google::Apis::StoragebatchoperationsV1::Expr]
        attr_accessor :bucket_filters
      
        # Optional. The unique identifier of a dry run job to use as the baseline for
        # the current job. Specifying this ID ensures the job is executed against the
        # same set of objects validated during the dry run. The value corresponds to the
        # `job_id` segment of the resource name: `projects/`project_id`/locations/`
        # location`/jobs/`job_id``.
        # Corresponds to the JSON property `dryRunJobId`
        # @return [String]
        attr_accessor :dry_run_job_id
      
        # Required. The resource identifier of the Storage Insights dataset
        # configuration. Storage batch operations uses the latest snapshot from this
        # dataset as the source to list and filter target objects. Format: `projects/`
        # project_id`/locations/`location`/datasetConfigs/`dataset_config``.
        # Corresponds to the JSON property `insightsDatasetConfig`
        # @return [String]
        attr_accessor :insights_dataset_config
      
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
        # Corresponds to the JSON property `objectFilters`
        # @return [Google::Apis::StoragebatchoperationsV1::Expr]
        attr_accessor :object_filters
      
        # Required. Project name of the objects to be transformed. e.g. projects/my-
        # project or projects/123456.
        # Corresponds to the JSON property `project`
        # @return [String]
        attr_accessor :project
      
        # Output only. The snapshot time used by the job to read the Storage Insights
        # dataset for bucket and object discovery. This field is populated by the
        # service and reflects the exact timestamp of the dataset snapshot used.
        # Corresponds to the JSON property `snapshotTime`
        # @return [String]
        attr_accessor :snapshot_time
      
        # Describes the Cloud Storage locations to include in a ProjectSource job.
        # Corresponds to the JSON property `targetLocations`
        # @return [Google::Apis::StoragebatchoperationsV1::TargetLocations]
        attr_accessor :target_locations
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @bucket_filters = args[:bucket_filters] if args.key?(:bucket_filters)
          @dry_run_job_id = args[:dry_run_job_id] if args.key?(:dry_run_job_id)
          @insights_dataset_config = args[:insights_dataset_config] if args.key?(:insights_dataset_config)
          @object_filters = args[:object_filters] if args.key?(:object_filters)
          @project = args[:project] if args.key?(:project)
          @snapshot_time = args[:snapshot_time] if args.key?(:snapshot_time)
          @target_locations = args[:target_locations] if args.key?(:target_locations)
        end
      end
      
      # Describes options for object metadata update.
      class PutMetadata
        include Google::Apis::Core::Hashable
      
        # Optional. Updates the objects `Cache-Control` fixed metadata. Unset values in
        # the request are ignored. To clear the metadata, set an empty value.
        # Additionally, the value for `Custom-Time` can't decrease. For details, see [
        # Cache-Control](https://cloud.google.com/storage/docs/metadata#caching_data).
        # Corresponds to the JSON property `cacheControl`
        # @return [String]
        attr_accessor :cache_control
      
        # Optional. Updates objects `Content-Disposition` fixed metadata. Unset values
        # in the request are ignored. To clear the metadata, set an empty value. For
        # details, see [Content-Disposition](https://cloud.google.com/storage/docs/
        # metadata#content-disposition).
        # Corresponds to the JSON property `contentDisposition`
        # @return [String]
        attr_accessor :content_disposition
      
        # Optional. Updates the objects `Content-Encoding` fixed metadata. Unset values
        # in the request are ignored. To clear the metadata, set an empty value. For
        # details, see [Content-Encoding](https://cloud.google.com/storage/docs/metadata#
        # content-encoding).
        # Corresponds to the JSON property `contentEncoding`
        # @return [String]
        attr_accessor :content_encoding
      
        # Optional. Updates the objects `Content-Language` fixed metadata. Metadata
        # values must use ISO 639-1 language codes. The maximum length for metadata
        # values is 100 characters. Unset values in the request are ignored. To clear
        # the metadata, set an empty value. For details, see [Content-Language](https://
        # cloud.google.com/storage/docs/metadata#content-language).
        # Corresponds to the JSON property `contentLanguage`
        # @return [String]
        attr_accessor :content_language
      
        # Optional. Updates objects `Content-Type` fixed metadata. Unset values in the
        # request are ignored. To clear the metadata, set an empty value. For details,
        # see [Content-Type](https://cloud.google.com/storage/docs/metadata#content-type)
        # .
        # Corresponds to the JSON property `contentType`
        # @return [String]
        attr_accessor :content_type
      
        # Optional. Updates the object's custom metadata. This operation adds or sets
        # individual custom metadata key-value pairs. Keys specified with empty values
        # have their values cleared. Existing custom metadata keys not included in the
        # request remain unchanged. For details, see [Custom metadata](https://cloud.
        # google.com/storage/docs/metadata#custom-metadata).
        # Corresponds to the JSON property `customMetadata`
        # @return [Hash<String,String>]
        attr_accessor :custom_metadata
      
        # Optional. Updates the objects `Custom-Time` fixed metadata. Unset values in
        # the request are ignored. To clear the metadata, set an empty value. The time
        # must be specified in RFC 3339 format, for example `YYYY-MM-DD'T'HH:MM:SS'Z'`
        # or `YYYY-MM-DD'T'HH:MM:SS.SS'Z'`. For details, see [Custom-Time](https://cloud.
        # google.com/storage/docs/metadata#custom-time).
        # Corresponds to the JSON property `customTime`
        # @return [String]
        attr_accessor :custom_time
      
        # Describes options for object retention update.
        # Corresponds to the JSON property `objectRetention`
        # @return [Google::Apis::StoragebatchoperationsV1::ObjectRetention]
        attr_accessor :object_retention
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @cache_control = args[:cache_control] if args.key?(:cache_control)
          @content_disposition = args[:content_disposition] if args.key?(:content_disposition)
          @content_encoding = args[:content_encoding] if args.key?(:content_encoding)
          @content_language = args[:content_language] if args.key?(:content_language)
          @content_type = args[:content_type] if args.key?(:content_type)
          @custom_metadata = args[:custom_metadata] if args.key?(:custom_metadata)
          @custom_time = args[:custom_time] if args.key?(:custom_time)
          @object_retention = args[:object_retention] if args.key?(:object_retention)
        end
      end
      
      # Describes options to update object hold.
      class PutObjectHold
        include Google::Apis::Core::Hashable
      
        # Required. Updates object event based holds state. When object event based hold
        # is set, object can't be deleted or replaced. Resets object's time in the
        # bucket for the purposes of the retention period.
        # Corresponds to the JSON property `eventBasedHold`
        # @return [String]
        attr_accessor :event_based_hold
      
        # Required. Updates object temporary holds state. When object temporary hold is
        # set, object can't be deleted or replaced.
        # Corresponds to the JSON property `temporaryHold`
        # @return [String]
        attr_accessor :temporary_hold
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @event_based_hold = args[:event_based_hold] if args.key?(:event_based_hold)
          @temporary_hold = args[:temporary_hold] if args.key?(:temporary_hold)
        end
      end
      
      # Describes options for object rewrite.
      class RewriteObject
        include Google::Apis::Core::Hashable
      
        # Optional. Resource name of the Cloud KMS key that is used to encrypt the
        # object. The Cloud KMS key must be located in same location as the object. For
        # details, see https://cloud.google.com/storage/docs/encryption/using-customer-
        # managed-keys#add-object-key Format: `projects/`project_id`/locations/`location`
        # /keyRings/`keyring`/cryptoKeys/`key`` For example: `projects/123456/locations/
        # us-central1/keyRings/my-keyring/cryptoKeys/my-key`. The object will be
        # rewritten and set with the specified KMS key.
        # Corresponds to the JSON property `kmsKey`
        # @return [String]
        attr_accessor :kms_key
      
        # Optional. Rewrites the object to the specified storage class. Setting this
        # field will perform a full byte copy of the object if the storage class is
        # different from the object's current storage class. If Autoclass is enabled on
        # the bucket, storage class changes are ignored by Cloud Storage.
        # Corresponds to the JSON property `storageClass`
        # @return [String]
        attr_accessor :storage_class
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @kms_key = args[:kms_key] if args.key?(:kms_key)
          @storage_class = args[:storage_class] if args.key?(:storage_class)
        end
      end
      
      # Describes options for setting object ACLs.
      class SetObjectAcls
        include Google::Apis::Core::Hashable
      
        # Represents updates to existing access-control entries on an object.
        # Corresponds to the JSON property `accessControlsUpdates`
        # @return [Google::Apis::StoragebatchoperationsV1::AccessControlsUpdates]
        attr_accessor :access_controls_updates
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @access_controls_updates = args[:access_controls_updates] if args.key?(:access_controls_updates)
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
      
      # Describes the Cloud Storage locations to include in a ProjectSource job.
      class TargetLocations
        include Google::Apis::Core::Hashable
      
        # Required. REQUIRED. A list of Cloud Storage locations (e.g., `us-central1`) to
        # include in the job. If `snapshot_time` is omitted, the job automatically
        # defaults to the most recent snapshot timestamp that is successfully populated
        # in BOTH the `object_attributes_view` and `bucket_attributes_view` across ALL
        # specified locations. For details on Storage Insights dataset snapshots and
        # views, see: https://docs.cloud.google.com/storage/docs/insights/dataset-tables-
        # and-schemas#schema
        # Corresponds to the JSON property `locations`
        # @return [Array<String>]
        attr_accessor :locations
      
        # Optional. OPTIONAL. The exact Storage Insights snapshot timestamp to use for
        # the job compatible with the RFC 3339 format (e.g., `2024-01-02T03:04:05Z`). If
        # specified, this exact snapshot must exist in BOTH the `object_attributes_view`
        # and `bucket_attributes_view` for every location listed in `locations`. If the
        # snapshot is missing from either view in any of the locations, the job fails.
        # Corresponds to the JSON property `snapshotTime`
        # @return [String]
        attr_accessor :snapshot_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @locations = args[:locations] if args.key?(:locations)
          @snapshot_time = args[:snapshot_time] if args.key?(:snapshot_time)
        end
      end
      
      # Describes options to update object custom contexts.
      class UpdateObjectCustomContext
        include Google::Apis::Core::Hashable
      
        # If set, must be set to true and all existing object custom contexts are
        # deleted.
        # Corresponds to the JSON property `clearAll`
        # @return [Boolean]
        attr_accessor :clear_all
        alias_method :clear_all?, :clear_all
      
        # Describes a collection of updates to apply to custom contexts identified by
        # key.
        # Corresponds to the JSON property `customContextUpdates`
        # @return [Google::Apis::StoragebatchoperationsV1::CustomContextUpdates]
        attr_accessor :custom_context_updates
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @clear_all = args[:clear_all] if args.key?(:clear_all)
          @custom_context_updates = args[:custom_context_updates] if args.key?(:custom_context_updates)
        end
      end
    end
  end
end
