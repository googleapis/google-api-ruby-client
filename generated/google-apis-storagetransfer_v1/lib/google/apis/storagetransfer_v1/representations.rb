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
    module StoragetransferV1
      
      class AgentPool
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AwsAccessKey
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AwsS3CompatibleData
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AwsS3Data
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AzureBlobStorageData
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AzureCredentials
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class BandwidthLimit
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CancelOperationRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Date
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
      
      class EventStream
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GcsData
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleServiceAccount
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class HttpData
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListAgentPoolsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListOperationsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListTransferJobsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class LoggingConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class MetadataOptions
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class NotificationConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ObjectConditions
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Operation
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class PauseTransferOperationRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class PosixFilesystem
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ResumeTransferOperationRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class RunTransferJobRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class S3CompatibleMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Schedule
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Status
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class TimeOfDay
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class TransferCounters
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class TransferJob
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class TransferManifest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class TransferOperation
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class TransferOptions
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class TransferSpec
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class UpdateTransferJobRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AgentPool
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :bandwidth_limit, as: 'bandwidthLimit', class: Google::Apis::StoragetransferV1::BandwidthLimit, decorator: Google::Apis::StoragetransferV1::BandwidthLimit::Representation
      
          property :display_name, as: 'displayName'
          property :name, as: 'name'
          property :state, as: 'state'
        end
      end
      
      class AwsAccessKey
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :access_key_id, as: 'accessKeyId'
          property :secret_access_key, as: 'secretAccessKey'
        end
      end
      
      class AwsS3CompatibleData
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :bucket_name, as: 'bucketName'
          property :endpoint, as: 'endpoint'
          property :path, as: 'path'
          property :region, as: 'region'
          property :s3_metadata, as: 's3Metadata', class: Google::Apis::StoragetransferV1::S3CompatibleMetadata, decorator: Google::Apis::StoragetransferV1::S3CompatibleMetadata::Representation
      
        end
      end
      
      class AwsS3Data
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :aws_access_key, as: 'awsAccessKey', class: Google::Apis::StoragetransferV1::AwsAccessKey, decorator: Google::Apis::StoragetransferV1::AwsAccessKey::Representation
      
          property :bucket_name, as: 'bucketName'
          property :credentials_secret, as: 'credentialsSecret'
          property :path, as: 'path'
          property :role_arn, as: 'roleArn'
        end
      end
      
      class AzureBlobStorageData
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :azure_credentials, as: 'azureCredentials', class: Google::Apis::StoragetransferV1::AzureCredentials, decorator: Google::Apis::StoragetransferV1::AzureCredentials::Representation
      
          property :container, as: 'container'
          property :credentials_secret, as: 'credentialsSecret'
          property :path, as: 'path'
          property :storage_account, as: 'storageAccount'
        end
      end
      
      class AzureCredentials
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :sas_token, as: 'sasToken'
        end
      end
      
      class BandwidthLimit
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :limit_mbps, :numeric_string => true, as: 'limitMbps'
        end
      end
      
      class CancelOperationRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class Date
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :day, as: 'day'
          property :month, as: 'month'
          property :year, as: 'year'
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
          property :url, as: 'url'
        end
      end
      
      class ErrorSummary
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :error_code, as: 'errorCode'
          property :error_count, :numeric_string => true, as: 'errorCount'
          collection :error_log_entries, as: 'errorLogEntries', class: Google::Apis::StoragetransferV1::ErrorLogEntry, decorator: Google::Apis::StoragetransferV1::ErrorLogEntry::Representation
      
        end
      end
      
      class EventStream
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :event_stream_expiration_time, as: 'eventStreamExpirationTime'
          property :event_stream_start_time, as: 'eventStreamStartTime'
          property :name, as: 'name'
        end
      end
      
      class GcsData
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :bucket_name, as: 'bucketName'
          property :path, as: 'path'
        end
      end
      
      class GoogleServiceAccount
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :account_email, as: 'accountEmail'
          property :subject_id, as: 'subjectId'
        end
      end
      
      class HttpData
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :list_url, as: 'listUrl'
        end
      end
      
      class ListAgentPoolsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :agent_pools, as: 'agentPools', class: Google::Apis::StoragetransferV1::AgentPool, decorator: Google::Apis::StoragetransferV1::AgentPool::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class ListOperationsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :operations, as: 'operations', class: Google::Apis::StoragetransferV1::Operation, decorator: Google::Apis::StoragetransferV1::Operation::Representation
      
        end
      end
      
      class ListTransferJobsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :transfer_jobs, as: 'transferJobs', class: Google::Apis::StoragetransferV1::TransferJob, decorator: Google::Apis::StoragetransferV1::TransferJob::Representation
      
        end
      end
      
      class LoggingConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :enable_onprem_gcs_transfer_logs, as: 'enableOnpremGcsTransferLogs'
          collection :log_action_states, as: 'logActionStates'
          collection :log_actions, as: 'logActions'
        end
      end
      
      class MetadataOptions
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :acl, as: 'acl'
          property :gid, as: 'gid'
          property :kms_key, as: 'kmsKey'
          property :mode, as: 'mode'
          property :storage_class, as: 'storageClass'
          property :symlink, as: 'symlink'
          property :temporary_hold, as: 'temporaryHold'
          property :time_created, as: 'timeCreated'
          property :uid, as: 'uid'
        end
      end
      
      class NotificationConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :event_types, as: 'eventTypes'
          property :payload_format, as: 'payloadFormat'
          property :pubsub_topic, as: 'pubsubTopic'
        end
      end
      
      class ObjectConditions
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :exclude_prefixes, as: 'excludePrefixes'
          collection :include_prefixes, as: 'includePrefixes'
          property :last_modified_before, as: 'lastModifiedBefore'
          property :last_modified_since, as: 'lastModifiedSince'
          property :max_time_elapsed_since_last_modification, as: 'maxTimeElapsedSinceLastModification'
          property :min_time_elapsed_since_last_modification, as: 'minTimeElapsedSinceLastModification'
        end
      end
      
      class Operation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :done, as: 'done'
          property :error, as: 'error', class: Google::Apis::StoragetransferV1::Status, decorator: Google::Apis::StoragetransferV1::Status::Representation
      
          hash :metadata, as: 'metadata'
          property :name, as: 'name'
          hash :response, as: 'response'
        end
      end
      
      class PauseTransferOperationRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class PosixFilesystem
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :root_directory, as: 'rootDirectory'
        end
      end
      
      class ResumeTransferOperationRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class RunTransferJobRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :project_id, as: 'projectId'
        end
      end
      
      class S3CompatibleMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :auth_method, as: 'authMethod'
          property :list_api, as: 'listApi'
          property :protocol, as: 'protocol'
          property :request_model, as: 'requestModel'
        end
      end
      
      class Schedule
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :end_time_of_day, as: 'endTimeOfDay', class: Google::Apis::StoragetransferV1::TimeOfDay, decorator: Google::Apis::StoragetransferV1::TimeOfDay::Representation
      
          property :repeat_interval, as: 'repeatInterval'
          property :schedule_end_date, as: 'scheduleEndDate', class: Google::Apis::StoragetransferV1::Date, decorator: Google::Apis::StoragetransferV1::Date::Representation
      
          property :schedule_start_date, as: 'scheduleStartDate', class: Google::Apis::StoragetransferV1::Date, decorator: Google::Apis::StoragetransferV1::Date::Representation
      
          property :start_time_of_day, as: 'startTimeOfDay', class: Google::Apis::StoragetransferV1::TimeOfDay, decorator: Google::Apis::StoragetransferV1::TimeOfDay::Representation
      
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
      
      class TimeOfDay
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :hours, as: 'hours'
          property :minutes, as: 'minutes'
          property :nanos, as: 'nanos'
          property :seconds, as: 'seconds'
        end
      end
      
      class TransferCounters
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :bytes_copied_to_sink, :numeric_string => true, as: 'bytesCopiedToSink'
          property :bytes_deleted_from_sink, :numeric_string => true, as: 'bytesDeletedFromSink'
          property :bytes_deleted_from_source, :numeric_string => true, as: 'bytesDeletedFromSource'
          property :bytes_failed_to_delete_from_sink, :numeric_string => true, as: 'bytesFailedToDeleteFromSink'
          property :bytes_found_from_source, :numeric_string => true, as: 'bytesFoundFromSource'
          property :bytes_found_only_from_sink, :numeric_string => true, as: 'bytesFoundOnlyFromSink'
          property :bytes_from_source_failed, :numeric_string => true, as: 'bytesFromSourceFailed'
          property :bytes_from_source_skipped_by_sync, :numeric_string => true, as: 'bytesFromSourceSkippedBySync'
          property :directories_failed_to_list_from_source, :numeric_string => true, as: 'directoriesFailedToListFromSource'
          property :directories_found_from_source, :numeric_string => true, as: 'directoriesFoundFromSource'
          property :directories_successfully_listed_from_source, :numeric_string => true, as: 'directoriesSuccessfullyListedFromSource'
          property :intermediate_objects_cleaned_up, :numeric_string => true, as: 'intermediateObjectsCleanedUp'
          property :intermediate_objects_failed_cleaned_up, :numeric_string => true, as: 'intermediateObjectsFailedCleanedUp'
          property :objects_copied_to_sink, :numeric_string => true, as: 'objectsCopiedToSink'
          property :objects_deleted_from_sink, :numeric_string => true, as: 'objectsDeletedFromSink'
          property :objects_deleted_from_source, :numeric_string => true, as: 'objectsDeletedFromSource'
          property :objects_failed_to_delete_from_sink, :numeric_string => true, as: 'objectsFailedToDeleteFromSink'
          property :objects_found_from_source, :numeric_string => true, as: 'objectsFoundFromSource'
          property :objects_found_only_from_sink, :numeric_string => true, as: 'objectsFoundOnlyFromSink'
          property :objects_from_source_failed, :numeric_string => true, as: 'objectsFromSourceFailed'
          property :objects_from_source_skipped_by_sync, :numeric_string => true, as: 'objectsFromSourceSkippedBySync'
        end
      end
      
      class TransferJob
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :creation_time, as: 'creationTime'
          property :deletion_time, as: 'deletionTime'
          property :description, as: 'description'
          property :event_stream, as: 'eventStream', class: Google::Apis::StoragetransferV1::EventStream, decorator: Google::Apis::StoragetransferV1::EventStream::Representation
      
          property :last_modification_time, as: 'lastModificationTime'
          property :latest_operation_name, as: 'latestOperationName'
          property :logging_config, as: 'loggingConfig', class: Google::Apis::StoragetransferV1::LoggingConfig, decorator: Google::Apis::StoragetransferV1::LoggingConfig::Representation
      
          property :name, as: 'name'
          property :notification_config, as: 'notificationConfig', class: Google::Apis::StoragetransferV1::NotificationConfig, decorator: Google::Apis::StoragetransferV1::NotificationConfig::Representation
      
          property :project_id, as: 'projectId'
          property :schedule, as: 'schedule', class: Google::Apis::StoragetransferV1::Schedule, decorator: Google::Apis::StoragetransferV1::Schedule::Representation
      
          property :status, as: 'status'
          property :transfer_spec, as: 'transferSpec', class: Google::Apis::StoragetransferV1::TransferSpec, decorator: Google::Apis::StoragetransferV1::TransferSpec::Representation
      
        end
      end
      
      class TransferManifest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :location, as: 'location'
        end
      end
      
      class TransferOperation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :counters, as: 'counters', class: Google::Apis::StoragetransferV1::TransferCounters, decorator: Google::Apis::StoragetransferV1::TransferCounters::Representation
      
          property :end_time, as: 'endTime'
          collection :error_breakdowns, as: 'errorBreakdowns', class: Google::Apis::StoragetransferV1::ErrorSummary, decorator: Google::Apis::StoragetransferV1::ErrorSummary::Representation
      
          property :logging_config, as: 'loggingConfig', class: Google::Apis::StoragetransferV1::LoggingConfig, decorator: Google::Apis::StoragetransferV1::LoggingConfig::Representation
      
          property :name, as: 'name'
          property :notification_config, as: 'notificationConfig', class: Google::Apis::StoragetransferV1::NotificationConfig, decorator: Google::Apis::StoragetransferV1::NotificationConfig::Representation
      
          property :project_id, as: 'projectId'
          property :start_time, as: 'startTime'
          property :status, as: 'status'
          property :transfer_job_name, as: 'transferJobName'
          property :transfer_spec, as: 'transferSpec', class: Google::Apis::StoragetransferV1::TransferSpec, decorator: Google::Apis::StoragetransferV1::TransferSpec::Representation
      
        end
      end
      
      class TransferOptions
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :delete_objects_from_source_after_transfer, as: 'deleteObjectsFromSourceAfterTransfer'
          property :delete_objects_unique_in_sink, as: 'deleteObjectsUniqueInSink'
          property :metadata_options, as: 'metadataOptions', class: Google::Apis::StoragetransferV1::MetadataOptions, decorator: Google::Apis::StoragetransferV1::MetadataOptions::Representation
      
          property :overwrite_objects_already_existing_in_sink, as: 'overwriteObjectsAlreadyExistingInSink'
          property :overwrite_when, as: 'overwriteWhen'
        end
      end
      
      class TransferSpec
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :aws_s3_compatible_data_source, as: 'awsS3CompatibleDataSource', class: Google::Apis::StoragetransferV1::AwsS3CompatibleData, decorator: Google::Apis::StoragetransferV1::AwsS3CompatibleData::Representation
      
          property :aws_s3_data_source, as: 'awsS3DataSource', class: Google::Apis::StoragetransferV1::AwsS3Data, decorator: Google::Apis::StoragetransferV1::AwsS3Data::Representation
      
          property :azure_blob_storage_data_source, as: 'azureBlobStorageDataSource', class: Google::Apis::StoragetransferV1::AzureBlobStorageData, decorator: Google::Apis::StoragetransferV1::AzureBlobStorageData::Representation
      
          property :gcs_data_sink, as: 'gcsDataSink', class: Google::Apis::StoragetransferV1::GcsData, decorator: Google::Apis::StoragetransferV1::GcsData::Representation
      
          property :gcs_data_source, as: 'gcsDataSource', class: Google::Apis::StoragetransferV1::GcsData, decorator: Google::Apis::StoragetransferV1::GcsData::Representation
      
          property :gcs_intermediate_data_location, as: 'gcsIntermediateDataLocation', class: Google::Apis::StoragetransferV1::GcsData, decorator: Google::Apis::StoragetransferV1::GcsData::Representation
      
          property :http_data_source, as: 'httpDataSource', class: Google::Apis::StoragetransferV1::HttpData, decorator: Google::Apis::StoragetransferV1::HttpData::Representation
      
          property :object_conditions, as: 'objectConditions', class: Google::Apis::StoragetransferV1::ObjectConditions, decorator: Google::Apis::StoragetransferV1::ObjectConditions::Representation
      
          property :posix_data_sink, as: 'posixDataSink', class: Google::Apis::StoragetransferV1::PosixFilesystem, decorator: Google::Apis::StoragetransferV1::PosixFilesystem::Representation
      
          property :posix_data_source, as: 'posixDataSource', class: Google::Apis::StoragetransferV1::PosixFilesystem, decorator: Google::Apis::StoragetransferV1::PosixFilesystem::Representation
      
          property :sink_agent_pool_name, as: 'sinkAgentPoolName'
          property :source_agent_pool_name, as: 'sourceAgentPoolName'
          property :transfer_manifest, as: 'transferManifest', class: Google::Apis::StoragetransferV1::TransferManifest, decorator: Google::Apis::StoragetransferV1::TransferManifest::Representation
      
          property :transfer_options, as: 'transferOptions', class: Google::Apis::StoragetransferV1::TransferOptions, decorator: Google::Apis::StoragetransferV1::TransferOptions::Representation
      
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
    end
  end
end
