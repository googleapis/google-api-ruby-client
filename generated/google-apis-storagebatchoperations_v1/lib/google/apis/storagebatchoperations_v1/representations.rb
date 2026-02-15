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
      
      class Bucket
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class BucketList
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class BucketOperation
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CancelJobRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CancelJobResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CancelOperationRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Counters
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DeleteObject
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Empty
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ErrorLogEntry
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ErrorSummary
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Job
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListBucketOperationsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListJobsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListLocationsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListOperationsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Location
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class LoggingConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Manifest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ObjectRetention
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Operation
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class OperationMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class PrefixList
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class PutMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class PutObjectHold
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class RewriteObject
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Status
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Bucket
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :bucket, as: 'bucket'
          property :manifest, as: 'manifest', class: Google::Apis::StoragebatchoperationsV1::Manifest, decorator: Google::Apis::StoragebatchoperationsV1::Manifest::Representation
      
          property :prefix_list, as: 'prefixList', class: Google::Apis::StoragebatchoperationsV1::PrefixList, decorator: Google::Apis::StoragebatchoperationsV1::PrefixList::Representation
      
        end
      end
      
      class BucketList
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :buckets, as: 'buckets', class: Google::Apis::StoragebatchoperationsV1::Bucket, decorator: Google::Apis::StoragebatchoperationsV1::Bucket::Representation
      
        end
      end
      
      class BucketOperation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :bucket_name, as: 'bucketName'
          property :complete_time, as: 'completeTime'
          property :counters, as: 'counters', class: Google::Apis::StoragebatchoperationsV1::Counters, decorator: Google::Apis::StoragebatchoperationsV1::Counters::Representation
      
          property :create_time, as: 'createTime'
          property :delete_object, as: 'deleteObject', class: Google::Apis::StoragebatchoperationsV1::DeleteObject, decorator: Google::Apis::StoragebatchoperationsV1::DeleteObject::Representation
      
          collection :error_summaries, as: 'errorSummaries', class: Google::Apis::StoragebatchoperationsV1::ErrorSummary, decorator: Google::Apis::StoragebatchoperationsV1::ErrorSummary::Representation
      
          property :manifest, as: 'manifest', class: Google::Apis::StoragebatchoperationsV1::Manifest, decorator: Google::Apis::StoragebatchoperationsV1::Manifest::Representation
      
          property :name, as: 'name'
          property :prefix_list, as: 'prefixList', class: Google::Apis::StoragebatchoperationsV1::PrefixList, decorator: Google::Apis::StoragebatchoperationsV1::PrefixList::Representation
      
          property :put_metadata, as: 'putMetadata', class: Google::Apis::StoragebatchoperationsV1::PutMetadata, decorator: Google::Apis::StoragebatchoperationsV1::PutMetadata::Representation
      
          property :put_object_hold, as: 'putObjectHold', class: Google::Apis::StoragebatchoperationsV1::PutObjectHold, decorator: Google::Apis::StoragebatchoperationsV1::PutObjectHold::Representation
      
          property :rewrite_object, as: 'rewriteObject', class: Google::Apis::StoragebatchoperationsV1::RewriteObject, decorator: Google::Apis::StoragebatchoperationsV1::RewriteObject::Representation
      
          property :start_time, as: 'startTime'
          property :state, as: 'state'
        end
      end
      
      class CancelJobRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :request_id, as: 'requestId'
        end
      end
      
      class CancelJobResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class CancelOperationRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class Counters
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :failed_object_count, :numeric_string => true, as: 'failedObjectCount'
          property :succeeded_object_count, :numeric_string => true, as: 'succeededObjectCount'
          property :total_bytes_found, :numeric_string => true, as: 'totalBytesFound'
          property :total_object_count, :numeric_string => true, as: 'totalObjectCount'
        end
      end
      
      class DeleteObject
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :permanent_object_deletion_enabled, as: 'permanentObjectDeletionEnabled'
        end
      end
      
      class Empty
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class ErrorLogEntry
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :error_details, as: 'errorDetails'
          property :object_uri, as: 'objectUri'
        end
      end
      
      class ErrorSummary
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :error_code, as: 'errorCode'
          property :error_count, :numeric_string => true, as: 'errorCount'
          collection :error_log_entries, as: 'errorLogEntries', class: Google::Apis::StoragebatchoperationsV1::ErrorLogEntry, decorator: Google::Apis::StoragebatchoperationsV1::ErrorLogEntry::Representation
      
        end
      end
      
      class Job
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :bucket_list, as: 'bucketList', class: Google::Apis::StoragebatchoperationsV1::BucketList, decorator: Google::Apis::StoragebatchoperationsV1::BucketList::Representation
      
          property :complete_time, as: 'completeTime'
          property :counters, as: 'counters', class: Google::Apis::StoragebatchoperationsV1::Counters, decorator: Google::Apis::StoragebatchoperationsV1::Counters::Representation
      
          property :create_time, as: 'createTime'
          property :delete_object, as: 'deleteObject', class: Google::Apis::StoragebatchoperationsV1::DeleteObject, decorator: Google::Apis::StoragebatchoperationsV1::DeleteObject::Representation
      
          property :description, as: 'description'
          property :dry_run, as: 'dryRun'
          collection :error_summaries, as: 'errorSummaries', class: Google::Apis::StoragebatchoperationsV1::ErrorSummary, decorator: Google::Apis::StoragebatchoperationsV1::ErrorSummary::Representation
      
          property :is_multi_bucket_job, as: 'isMultiBucketJob'
          property :logging_config, as: 'loggingConfig', class: Google::Apis::StoragebatchoperationsV1::LoggingConfig, decorator: Google::Apis::StoragebatchoperationsV1::LoggingConfig::Representation
      
          property :name, as: 'name'
          property :put_metadata, as: 'putMetadata', class: Google::Apis::StoragebatchoperationsV1::PutMetadata, decorator: Google::Apis::StoragebatchoperationsV1::PutMetadata::Representation
      
          property :put_object_hold, as: 'putObjectHold', class: Google::Apis::StoragebatchoperationsV1::PutObjectHold, decorator: Google::Apis::StoragebatchoperationsV1::PutObjectHold::Representation
      
          property :rewrite_object, as: 'rewriteObject', class: Google::Apis::StoragebatchoperationsV1::RewriteObject, decorator: Google::Apis::StoragebatchoperationsV1::RewriteObject::Representation
      
          property :schedule_time, as: 'scheduleTime'
          property :state, as: 'state'
        end
      end
      
      class ListBucketOperationsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :bucket_operations, as: 'bucketOperations', class: Google::Apis::StoragebatchoperationsV1::BucketOperation, decorator: Google::Apis::StoragebatchoperationsV1::BucketOperation::Representation
      
          property :next_page_token, as: 'nextPageToken'
          collection :unreachable, as: 'unreachable'
        end
      end
      
      class ListJobsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :jobs, as: 'jobs', class: Google::Apis::StoragebatchoperationsV1::Job, decorator: Google::Apis::StoragebatchoperationsV1::Job::Representation
      
          property :next_page_token, as: 'nextPageToken'
          collection :unreachable, as: 'unreachable'
        end
      end
      
      class ListLocationsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :locations, as: 'locations', class: Google::Apis::StoragebatchoperationsV1::Location, decorator: Google::Apis::StoragebatchoperationsV1::Location::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class ListOperationsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :operations, as: 'operations', class: Google::Apis::StoragebatchoperationsV1::Operation, decorator: Google::Apis::StoragebatchoperationsV1::Operation::Representation
      
          collection :unreachable, as: 'unreachable'
        end
      end
      
      class Location
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :display_name, as: 'displayName'
          hash :labels, as: 'labels'
          property :location_id, as: 'locationId'
          hash :metadata, as: 'metadata'
          property :name, as: 'name'
        end
      end
      
      class LoggingConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :log_action_states, as: 'logActionStates'
          collection :log_actions, as: 'logActions'
        end
      end
      
      class Manifest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :manifest_location, as: 'manifestLocation'
        end
      end
      
      class ObjectRetention
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :retain_until_time, as: 'retainUntilTime'
          property :retention_mode, as: 'retentionMode'
        end
      end
      
      class Operation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :done, as: 'done'
          property :error, as: 'error', class: Google::Apis::StoragebatchoperationsV1::Status, decorator: Google::Apis::StoragebatchoperationsV1::Status::Representation
      
          hash :metadata, as: 'metadata'
          property :name, as: 'name'
          hash :response, as: 'response'
        end
      end
      
      class OperationMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :api_version, as: 'apiVersion'
          property :create_time, as: 'createTime'
          property :end_time, as: 'endTime'
          property :job, as: 'job', class: Google::Apis::StoragebatchoperationsV1::Job, decorator: Google::Apis::StoragebatchoperationsV1::Job::Representation
      
          property :operation, as: 'operation'
          property :requested_cancellation, as: 'requestedCancellation'
        end
      end
      
      class PrefixList
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :included_object_prefixes, as: 'includedObjectPrefixes'
        end
      end
      
      class PutMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :cache_control, as: 'cacheControl'
          property :content_disposition, as: 'contentDisposition'
          property :content_encoding, as: 'contentEncoding'
          property :content_language, as: 'contentLanguage'
          property :content_type, as: 'contentType'
          hash :custom_metadata, as: 'customMetadata'
          property :custom_time, as: 'customTime'
          property :object_retention, as: 'objectRetention', class: Google::Apis::StoragebatchoperationsV1::ObjectRetention, decorator: Google::Apis::StoragebatchoperationsV1::ObjectRetention::Representation
      
        end
      end
      
      class PutObjectHold
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :event_based_hold, as: 'eventBasedHold'
          property :temporary_hold, as: 'temporaryHold'
        end
      end
      
      class RewriteObject
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :kms_key, as: 'kmsKey'
        end
      end
      
      class Status
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :code, as: 'code'
          collection :details, as: 'details'
          property :message, as: 'message'
        end
      end
    end
  end
end
