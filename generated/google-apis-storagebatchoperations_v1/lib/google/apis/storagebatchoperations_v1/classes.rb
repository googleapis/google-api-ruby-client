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
      
        # Required. List of buckets and their objects to be transformed. Currently, only
        # one bucket configuration is supported. If multiple buckets are specified, an
        # error will be returned.
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
      
      # Message for Job to Cancel
      class CancelJobRequest
        include Google::Apis::Core::Hashable
      
        # Optional. An optional request ID to identify requests. Specify a unique
        # request ID in case you need to retry your request. Requests with same `
        # request_id` will be ignored for at least 60 minutes since the first request.
        # The request ID must be a valid UUID with the exception that zero UUID is not
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
      
        # Output only. Number of objects failed.
        # Corresponds to the JSON property `failedObjectCount`
        # @return [Fixnum]
        attr_accessor :failed_object_count
      
        # Output only. Number of objects completed.
        # Corresponds to the JSON property `succeededObjectCount`
        # @return [Fixnum]
        attr_accessor :succeeded_object_count
      
        # Output only. Number of bytes found from source. This field is only populated
        # for jobs with a prefix list object configuration.
        # Corresponds to the JSON property `totalBytesFound`
        # @return [Fixnum]
        attr_accessor :total_bytes_found
      
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
          @succeeded_object_count = args[:succeeded_object_count] if args.key?(:succeeded_object_count)
          @total_bytes_found = args[:total_bytes_found] if args.key?(:total_bytes_found)
          @total_object_count = args[:total_object_count] if args.key?(:total_object_count)
        end
      end
      
      # Describes options to delete an object.
      class DeleteObject
        include Google::Apis::Core::Hashable
      
        # Required. Controls deletion behavior when versioning is enabled for the object'
        # s bucket. If true both live and noncurrent objects will be permanently deleted.
        # Otherwise live objects in versioned buckets will become noncurrent and
        # objects that were already noncurrent will be skipped. This setting doesn't
        # have any impact on the Soft Delete feature. All objects deleted by this
        # service can be be restored for the duration of the Soft Delete retention
        # duration if enabled. If enabled and the manifest doesn't specify an object's
        # generation, a GetObjectMetadata call (a Class B operation) will be made to
        # determine the live object generation.
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
      
      # The Storage Batch Operations Job description.
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
      
        # Optional. A description provided by the user for the job. Its max length is
        # 1024 bytes when Unicode-encoded.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # Optional. If true, the job will run in dry run mode, returning the total
        # object count and, if the object configuration is a prefix list, the bytes
        # found from source. No transformations will be performed.
        # Corresponds to the JSON property `dryRun`
        # @return [Boolean]
        attr_accessor :dry_run
        alias_method :dry_run?, :dry_run
      
        # Output only. Summarizes errors encountered with sample error log entries.
        # Corresponds to the JSON property `errorSummaries`
        # @return [Array<Google::Apis::StoragebatchoperationsV1::ErrorSummary>]
        attr_accessor :error_summaries
      
        # Specifies the Cloud Logging behavior.
        # Corresponds to the JSON property `loggingConfig`
        # @return [Google::Apis::StoragebatchoperationsV1::LoggingConfig]
        attr_accessor :logging_config
      
        # Identifier. The resource name of the Job. job_id is unique within the project,
        # that is either set by the customer or defined by the service. Format: projects/
        # `project`/locations/global/jobs/`job_id` . For example: "projects/123456/
        # locations/global/jobs/job01".
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
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
      
        # Output only. State of the job.
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
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
          @logging_config = args[:logging_config] if args.key?(:logging_config)
          @name = args[:name] if args.key?(:name)
          @put_metadata = args[:put_metadata] if args.key?(:put_metadata)
          @put_object_hold = args[:put_object_hold] if args.key?(:put_object_hold)
          @rewrite_object = args[:rewrite_object] if args.key?(:rewrite_object)
          @schedule_time = args[:schedule_time] if args.key?(:schedule_time)
          @state = args[:state] if args.key?(:state)
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
      
        # Required. `manifest_location` must contain the manifest source file that is a
        # CSV file in a Google Cloud Storage bucket. Each row in the file must include
        # the object details i.e. BucketId and Name. Generation may optionally be
        # specified. When it is not specified the live object is acted upon. `
        # manifest_location` should either be 1) An absolute path to the object in the
        # format of `gs://bucket_name/path/file_name.csv`. 2) An absolute path with a
        # single wildcard character in the file name, for example `gs://bucket_name/path/
        # file_name*.csv`. If manifest location is specified with a wildcard, objects in
        # all manifest files matching the pattern will be acted upon.
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
      
      # Describes options for object retention update.
      class ObjectRetention
        include Google::Apis::Core::Hashable
      
        # Required. The time when the object will be retained until. UNSET will clear
        # the retention. Must be specified in RFC 3339 format e.g. YYYY-MM-DD'T'HH:MM:SS.
        # SS'Z' or YYYY-MM-DD'T'HH:MM:SS'Z'.
        # Corresponds to the JSON property `retainUntilTime`
        # @return [String]
        attr_accessor :retain_until_time
      
        # Required. The retention mode of the object.
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
      
        # The Storage Batch Operations Job description.
        # Corresponds to the JSON property `job`
        # @return [Google::Apis::StoragebatchoperationsV1::Job]
        attr_accessor :job
      
        # Output only. The unique operation resource name. Format: projects/`project`/
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
      
        # Optional. Include prefixes of the objects to be transformed. * Supports full
        # object name * Supports prefix of the object name * Wildcards are not supported
        # * Supports empty string for all objects in a bucket.
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
      
      # Describes options for object metadata update.
      class PutMetadata
        include Google::Apis::Core::Hashable
      
        # Optional. Updates objects Cache-Control fixed metadata. Unset values will be
        # ignored. Set empty values to clear the metadata. Additionally, the value for
        # Custom-Time cannot decrease. Refer to documentation in https://cloud.google.
        # com/storage/docs/metadata#caching_data.
        # Corresponds to the JSON property `cacheControl`
        # @return [String]
        attr_accessor :cache_control
      
        # Optional. Updates objects Content-Disposition fixed metadata. Unset values
        # will be ignored. Set empty values to clear the metadata. Refer https://cloud.
        # google.com/storage/docs/metadata#content-disposition for additional
        # documentation.
        # Corresponds to the JSON property `contentDisposition`
        # @return [String]
        attr_accessor :content_disposition
      
        # Optional. Updates objects Content-Encoding fixed metadata. Unset values will
        # be ignored. Set empty values to clear the metadata. Refer to documentation in
        # https://cloud.google.com/storage/docs/metadata#content-encoding.
        # Corresponds to the JSON property `contentEncoding`
        # @return [String]
        attr_accessor :content_encoding
      
        # Optional. Updates objects Content-Language fixed metadata. Refer to ISO 639-1
        # language codes for typical values of this metadata. Max length 100 characters.
        # Unset values will be ignored. Set empty values to clear the metadata. Refer to
        # documentation in https://cloud.google.com/storage/docs/metadata#content-
        # language.
        # Corresponds to the JSON property `contentLanguage`
        # @return [String]
        attr_accessor :content_language
      
        # Optional. Updates objects Content-Type fixed metadata. Unset values will be
        # ignored. Set empty values to clear the metadata. Refer to documentation in
        # https://cloud.google.com/storage/docs/metadata#content-type
        # Corresponds to the JSON property `contentType`
        # @return [String]
        attr_accessor :content_type
      
        # Optional. Updates objects custom metadata. Adds or sets individual custom
        # metadata key value pairs on objects. Keys that are set with empty custom
        # metadata values will have its value cleared. Existing custom metadata not
        # specified with this flag is not changed. Refer to documentation in https://
        # cloud.google.com/storage/docs/metadata#custom-metadata
        # Corresponds to the JSON property `customMetadata`
        # @return [Hash<String,String>]
        attr_accessor :custom_metadata
      
        # Optional. Updates objects Custom-Time fixed metadata. Unset values will be
        # ignored. Set empty values to clear the metadata. Refer to documentation in
        # https://cloud.google.com/storage/docs/metadata#custom-time.
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
        # is set, object cannot be deleted or replaced. Resets object's time in the
        # bucket for the purposes of the retention period.
        # Corresponds to the JSON property `eventBasedHold`
        # @return [String]
        attr_accessor :event_based_hold
      
        # Required. Updates object temporary holds state. When object temporary hold is
        # set, object cannot be deleted or replaced.
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
      
        # Required. Resource name of the Cloud KMS key that will be used to encrypt the
        # object. The Cloud KMS key must be located in same location as the object.
        # Refer to https://cloud.google.com/storage/docs/encryption/using-customer-
        # managed-keys#add-object-key for additional documentation. Format: projects/`
        # project`/locations/`location`/keyRings/`keyring`/cryptoKeys/`key` For example:
        # "projects/123456/locations/us-central1/keyRings/my-keyring/cryptoKeys/my-key".
        # The object will be rewritten and set with the specified KMS key.
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
    end
  end
end
