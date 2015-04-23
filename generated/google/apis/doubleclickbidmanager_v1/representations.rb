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
    module DoubleclickbidmanagerV1
      
      class DownloadLineItemsRequestRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class DownloadLineItemsResponseRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class FilterPairRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class ListQueriesResponseRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class ListReportsResponseRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class ParametersRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class QueryRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class QueryMetadataRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class QueryScheduleRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class ReportRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class ReportFailureRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class ReportKeyRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class ReportMetadataRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class ReportStatusRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class RowStatusRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class RunQueryRequestRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class UploadLineItemsRequestRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class UploadLineItemsResponseRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class UploadStatusRepresentation < Google::Apis::Core::JsonRepresentation
        
      end

      # @private
      class DownloadLineItemsRequestRepresentation < Google::Apis::Core::JsonRepresentation
        
        collection :filter_ids, as: 'filterIds'
        
        property :filter_type, as: 'filterType'
        property :format, as: 'format'
      end

      # @private
      class DownloadLineItemsResponseRepresentation < Google::Apis::Core::JsonRepresentation
        
        property :line_items, as: 'lineItems'
      end

      # @private
      class FilterPairRepresentation < Google::Apis::Core::JsonRepresentation
        
        property :type, as: 'type'
        property :value, as: 'value'
      end

      # @private
      class ListQueriesResponseRepresentation < Google::Apis::Core::JsonRepresentation
        
        property :kind, as: 'kind'
        collection :queries, as: 'queries', class: Google::Apis::DoubleclickbidmanagerV1::Query, decorator: Google::Apis::DoubleclickbidmanagerV1::QueryRepresentation
      end

      # @private
      class ListReportsResponseRepresentation < Google::Apis::Core::JsonRepresentation
        
        property :kind, as: 'kind'
        collection :reports, as: 'reports', class: Google::Apis::DoubleclickbidmanagerV1::Report, decorator: Google::Apis::DoubleclickbidmanagerV1::ReportRepresentation
      end

      # @private
      class ParametersRepresentation < Google::Apis::Core::JsonRepresentation
        
        collection :filters, as: 'filters', class: Google::Apis::DoubleclickbidmanagerV1::FilterPair, decorator: Google::Apis::DoubleclickbidmanagerV1::FilterPairRepresentation
        
        
        collection :group_bys, as: 'groupBys'
        
        property :include_invite_data, as: 'includeInviteData'
        collection :metrics, as: 'metrics'
        
        property :type, as: 'type'
      end

      # @private
      class QueryRepresentation < Google::Apis::Core::JsonRepresentation
        
        property :kind, as: 'kind'
        property :metadata, as: 'metadata', class: Google::Apis::DoubleclickbidmanagerV1::QueryMetadata, decorator: Google::Apis::DoubleclickbidmanagerV1::QueryMetadataRepresentation
        
        property :params, as: 'params', class: Google::Apis::DoubleclickbidmanagerV1::Parameters, decorator: Google::Apis::DoubleclickbidmanagerV1::ParametersRepresentation
        
        property :query_id, as: 'queryId'
        property :report_data_end_time_ms, as: 'reportDataEndTimeMs'
        property :report_data_start_time_ms, as: 'reportDataStartTimeMs'
        property :schedule, as: 'schedule', class: Google::Apis::DoubleclickbidmanagerV1::QuerySchedule, decorator: Google::Apis::DoubleclickbidmanagerV1::QueryScheduleRepresentation
        
        property :timezone_code, as: 'timezoneCode'
      end

      # @private
      class QueryMetadataRepresentation < Google::Apis::Core::JsonRepresentation
        
        property :data_range, as: 'dataRange'
        property :format, as: 'format'
        property :google_cloud_storage_path_for_latest_report, as: 'googleCloudStoragePathForLatestReport'
        property :google_drive_path_for_latest_report, as: 'googleDrivePathForLatestReport'
        property :latest_report_run_time_ms, as: 'latestReportRunTimeMs'
        property :locale, as: 'locale'
        property :report_count, as: 'reportCount'
        property :running, as: 'running'
        property :send_notification, as: 'sendNotification'
        collection :share_email_address, as: 'shareEmailAddress'
        
        property :title, as: 'title'
      end

      # @private
      class QueryScheduleRepresentation < Google::Apis::Core::JsonRepresentation
        
        property :end_time_ms, as: 'endTimeMs'
        property :frequency, as: 'frequency'
        property :next_run_minute_of_day, as: 'nextRunMinuteOfDay'
        property :next_run_timezone_code, as: 'nextRunTimezoneCode'
      end

      # @private
      class ReportRepresentation < Google::Apis::Core::JsonRepresentation
        
        property :key, as: 'key', class: Google::Apis::DoubleclickbidmanagerV1::ReportKey, decorator: Google::Apis::DoubleclickbidmanagerV1::ReportKeyRepresentation
        
        property :metadata, as: 'metadata', class: Google::Apis::DoubleclickbidmanagerV1::ReportMetadata, decorator: Google::Apis::DoubleclickbidmanagerV1::ReportMetadataRepresentation
        
        property :params, as: 'params', class: Google::Apis::DoubleclickbidmanagerV1::Parameters, decorator: Google::Apis::DoubleclickbidmanagerV1::ParametersRepresentation
      end

      # @private
      class ReportFailureRepresentation < Google::Apis::Core::JsonRepresentation
        
        property :error_code, as: 'errorCode'
      end

      # @private
      class ReportKeyRepresentation < Google::Apis::Core::JsonRepresentation
        
        property :query_id, as: 'queryId'
        property :report_id, as: 'reportId'
      end

      # @private
      class ReportMetadataRepresentation < Google::Apis::Core::JsonRepresentation
        
        property :google_cloud_storage_path, as: 'googleCloudStoragePath'
        property :report_data_end_time_ms, as: 'reportDataEndTimeMs'
        property :report_data_start_time_ms, as: 'reportDataStartTimeMs'
        property :status, as: 'status', class: Google::Apis::DoubleclickbidmanagerV1::ReportStatus, decorator: Google::Apis::DoubleclickbidmanagerV1::ReportStatusRepresentation
      end

      # @private
      class ReportStatusRepresentation < Google::Apis::Core::JsonRepresentation
        
        property :failure, as: 'failure', class: Google::Apis::DoubleclickbidmanagerV1::ReportFailure, decorator: Google::Apis::DoubleclickbidmanagerV1::ReportFailureRepresentation
        
        property :finish_time_ms, as: 'finishTimeMs'
        property :format, as: 'format'
        property :state, as: 'state'
      end

      # @private
      class RowStatusRepresentation < Google::Apis::Core::JsonRepresentation
        
        property :changed, as: 'changed'
        property :entity_id, as: 'entityId'
        property :entity_name, as: 'entityName'
        collection :errors, as: 'errors'
        
        property :persisted, as: 'persisted'
        property :row_number, as: 'rowNumber'
      end

      # @private
      class RunQueryRequestRepresentation < Google::Apis::Core::JsonRepresentation
        
        property :data_range, as: 'dataRange'
        property :report_data_end_time_ms, as: 'reportDataEndTimeMs'
        property :report_data_start_time_ms, as: 'reportDataStartTimeMs'
        property :timezone_code, as: 'timezoneCode'
      end

      # @private
      class UploadLineItemsRequestRepresentation < Google::Apis::Core::JsonRepresentation
        
        property :dry_run, as: 'dryRun'
        property :format, as: 'format'
        property :line_items, as: 'lineItems'
      end

      # @private
      class UploadLineItemsResponseRepresentation < Google::Apis::Core::JsonRepresentation
        
        property :upload_status, as: 'uploadStatus', class: Google::Apis::DoubleclickbidmanagerV1::UploadStatus, decorator: Google::Apis::DoubleclickbidmanagerV1::UploadStatusRepresentation
      end

      # @private
      class UploadStatusRepresentation < Google::Apis::Core::JsonRepresentation
        
        collection :errors, as: 'errors'
        
        collection :row_status, as: 'rowStatus', class: Google::Apis::DoubleclickbidmanagerV1::RowStatus, decorator: Google::Apis::DoubleclickbidmanagerV1::RowStatusRepresentation
      end
    end
  end
end
