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
    module StoragetransferV1
      
      class GoogleServiceAccount
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class TransferJob
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class TransferSpec
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GcsData
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AwsS3Data
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AwsAccessKey
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class HttpData
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ObjectConditions
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class TransferOptions
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Schedule
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Date
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class TimeOfDay
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class UpdateTransferJobRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListTransferJobsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class PauseTransferOperationRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Empty
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ResumeTransferOperationRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Operation
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Status
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListOperationsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class TransferOperation
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class TransferCounters
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ErrorSummary
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ErrorLogEntry
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleServiceAccount
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :account_email, as: 'accountEmail'
        end
      end
      
      class TransferJob
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :name, as: 'name'
          property :description, as: 'description'
          property :project_id, as: 'projectId'
          property :transfer_spec, as: 'transferSpec', class: Google::Apis::StoragetransferV1::TransferSpec, decorator: Google::Apis::StoragetransferV1::TransferSpec::Representation
      
          property :schedule, as: 'schedule', class: Google::Apis::StoragetransferV1::Schedule, decorator: Google::Apis::StoragetransferV1::Schedule::Representation
      
          property :status, as: 'status'
          property :creation_time, as: 'creationTime'
          property :last_modification_time, as: 'lastModificationTime'
          property :deletion_time, as: 'deletionTime'
        end
      end
      
      class TransferSpec
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :gcs_data_source, as: 'gcsDataSource', class: Google::Apis::StoragetransferV1::GcsData, decorator: Google::Apis::StoragetransferV1::GcsData::Representation
      
          property :aws_s3_data_source, as: 'awsS3DataSource', class: Google::Apis::StoragetransferV1::AwsS3Data, decorator: Google::Apis::StoragetransferV1::AwsS3Data::Representation
      
          property :http_data_source, as: 'httpDataSource', class: Google::Apis::StoragetransferV1::HttpData, decorator: Google::Apis::StoragetransferV1::HttpData::Representation
      
          property :gcs_data_sink, as: 'gcsDataSink', class: Google::Apis::StoragetransferV1::GcsData, decorator: Google::Apis::StoragetransferV1::GcsData::Representation
      
          property :object_conditions, as: 'objectConditions', class: Google::Apis::StoragetransferV1::ObjectConditions, decorator: Google::Apis::StoragetransferV1::ObjectConditions::Representation
      
          property :transfer_options, as: 'transferOptions', class: Google::Apis::StoragetransferV1::TransferOptions, decorator: Google::Apis::StoragetransferV1::TransferOptions::Representation
      
        end
      end
      
      class GcsData
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :bucket_name, as: 'bucketName'
        end
      end
      
      class AwsS3Data
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :bucket_name, as: 'bucketName'
          property :aws_access_key, as: 'awsAccessKey', class: Google::Apis::StoragetransferV1::AwsAccessKey, decorator: Google::Apis::StoragetransferV1::AwsAccessKey::Representation
      
        end
      end
      
      class AwsAccessKey
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :access_key_id, as: 'accessKeyId'
          property :secret_access_key, as: 'secretAccessKey'
        end
      end
      
      class HttpData
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :list_url, as: 'listUrl'
        end
      end
      
      class ObjectConditions
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :min_time_elapsed_since_last_modification, as: 'minTimeElapsedSinceLastModification'
          property :max_time_elapsed_since_last_modification, as: 'maxTimeElapsedSinceLastModification'
          collection :include_prefixes, as: 'includePrefixes'
          collection :exclude_prefixes, as: 'excludePrefixes'
        end
      end
      
      class TransferOptions
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :overwrite_objects_already_existing_in_sink, as: 'overwriteObjectsAlreadyExistingInSink'
          property :delete_objects_unique_in_sink, as: 'deleteObjectsUniqueInSink'
          property :delete_objects_from_source_after_transfer, as: 'deleteObjectsFromSourceAfterTransfer'
        end
      end
      
      class Schedule
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :schedule_start_date, as: 'scheduleStartDate', class: Google::Apis::StoragetransferV1::Date, decorator: Google::Apis::StoragetransferV1::Date::Representation
      
          property :schedule_end_date, as: 'scheduleEndDate', class: Google::Apis::StoragetransferV1::Date, decorator: Google::Apis::StoragetransferV1::Date::Representation
      
          property :start_time_of_day, as: 'startTimeOfDay', class: Google::Apis::StoragetransferV1::TimeOfDay, decorator: Google::Apis::StoragetransferV1::TimeOfDay::Representation
      
        end
      end
      
      class Date
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :year, as: 'year'
          property :month, as: 'month'
          property :day, as: 'day'
        end
      end
      
      class TimeOfDay
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :hours, as: 'hours'
          property :minutes, as: 'minutes'
          property :seconds, as: 'seconds'
          property :nanos, as: 'nanos'
        end
      end
      
      class UpdateTransferJobRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :project_id, as: 'projectId'
          property :transfer_job, as: 'transferJob', class: Google::Apis::StoragetransferV1::TransferJob, decorator: Google::Apis::StoragetransferV1::TransferJob::Representation
      
          property :update_transfer_job_field_mask, as: 'updateTransferJobFieldMask'
        end
      end
      
      class ListTransferJobsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :transfer_jobs, as: 'transferJobs', class: Google::Apis::StoragetransferV1::TransferJob, decorator: Google::Apis::StoragetransferV1::TransferJob::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class PauseTransferOperationRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class Empty
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class ResumeTransferOperationRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class Operation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :name, as: 'name'
          hash :metadata, as: 'metadata'
          property :done, as: 'done'
          property :error, as: 'error', class: Google::Apis::StoragetransferV1::Status, decorator: Google::Apis::StoragetransferV1::Status::Representation
      
          hash :response, as: 'response'
        end
      end
      
      class Status
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :code, as: 'code'
          property :message, as: 'message'
          collection :details, as: 'details'
        end
      end
      
      class ListOperationsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :operations, as: 'operations', class: Google::Apis::StoragetransferV1::Operation, decorator: Google::Apis::StoragetransferV1::Operation::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class TransferOperation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :name, as: 'name'
          property :project_id, as: 'projectId'
          property :transfer_spec, as: 'transferSpec', class: Google::Apis::StoragetransferV1::TransferSpec, decorator: Google::Apis::StoragetransferV1::TransferSpec::Representation
      
          property :start_time, as: 'startTime'
          property :end_time, as: 'endTime'
          property :status, as: 'status'
          property :counters, as: 'counters', class: Google::Apis::StoragetransferV1::TransferCounters, decorator: Google::Apis::StoragetransferV1::TransferCounters::Representation
      
          collection :error_breakdowns, as: 'errorBreakdowns', class: Google::Apis::StoragetransferV1::ErrorSummary, decorator: Google::Apis::StoragetransferV1::ErrorSummary::Representation
      
          property :transfer_job_name, as: 'transferJobName'
        end
      end
      
      class TransferCounters
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :objects_found_from_source, as: 'objectsFoundFromSource'
          property :bytes_found_from_source, as: 'bytesFoundFromSource'
          property :objects_found_only_from_sink, as: 'objectsFoundOnlyFromSink'
          property :bytes_found_only_from_sink, as: 'bytesFoundOnlyFromSink'
          property :objects_from_source_skipped_by_sync, as: 'objectsFromSourceSkippedBySync'
          property :bytes_from_source_skipped_by_sync, as: 'bytesFromSourceSkippedBySync'
          property :objects_copied_to_sink, as: 'objectsCopiedToSink'
          property :bytes_copied_to_sink, as: 'bytesCopiedToSink'
          property :objects_deleted_from_source, as: 'objectsDeletedFromSource'
          property :bytes_deleted_from_source, as: 'bytesDeletedFromSource'
          property :objects_deleted_from_sink, as: 'objectsDeletedFromSink'
          property :bytes_deleted_from_sink, as: 'bytesDeletedFromSink'
          property :objects_from_source_failed, as: 'objectsFromSourceFailed'
          property :bytes_from_source_failed, as: 'bytesFromSourceFailed'
          property :objects_failed_to_delete_from_sink, as: 'objectsFailedToDeleteFromSink'
          property :bytes_failed_to_delete_from_sink, as: 'bytesFailedToDeleteFromSink'
        end
      end
      
      class ErrorSummary
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :error_code, as: 'errorCode'
          property :error_count, as: 'errorCount'
          collection :error_log_entries, as: 'errorLogEntries', class: Google::Apis::StoragetransferV1::ErrorLogEntry, decorator: Google::Apis::StoragetransferV1::ErrorLogEntry::Representation
      
        end
      end
      
      class ErrorLogEntry
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :url, as: 'url'
          collection :error_details, as: 'errorDetails'
        end
      end
    end
  end
end
