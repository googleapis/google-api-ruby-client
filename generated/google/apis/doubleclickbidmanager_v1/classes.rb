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
      
      # Request to fetch stored line items.
      class DownloadLineItemsRequest
        include Google::Apis::Core::Hashable
      
        # File specification (column names, types, order) in which the line items will
        # be returned. Default to EWF.
        # Corresponds to the JSON property `fileSpec`
        # @return [String]
        attr_accessor :file_spec
      
        # Ids of the specified filter type used to filter line items to fetch. If
        # omitted, all the line items will be returned.
        # Corresponds to the JSON property `filterIds`
        # @return [Array<String>]
        attr_accessor :filter_ids
      
        # Filter type used to filter line items to fetch.
        # Corresponds to the JSON property `filterType`
        # @return [String]
        attr_accessor :filter_type
      
        # Format in which the line items will be returned. Default to CSV.
        # Corresponds to the JSON property `format`
        # @return [String]
        attr_accessor :format
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @file_spec = args[:file_spec] unless args[:file_spec].nil?
          @filter_ids = args[:filter_ids] unless args[:filter_ids].nil?
          @filter_type = args[:filter_type] unless args[:filter_type].nil?
          @format = args[:format] unless args[:format].nil?
        end
      end
      
      # Download line items response.
      class DownloadLineItemsResponse
        include Google::Apis::Core::Hashable
      
        # Retrieved line items in CSV format. Refer to  Entity Write File Format or
        # Structured Data File Format for more information on file formats.
        # Corresponds to the JSON property `lineItems`
        # @return [String]
        attr_accessor :line_items
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @line_items = args[:line_items] unless args[:line_items].nil?
        end
      end
      
      # Filter used to match traffic data in your report.
      class FilterPair
        include Google::Apis::Core::Hashable
      
        # Filter type.
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        # Filter value.
        # Corresponds to the JSON property `value`
        # @return [String]
        attr_accessor :value
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @type = args[:type] unless args[:type].nil?
          @value = args[:value] unless args[:value].nil?
        end
      end
      
      # List queries response.
      class ListQueriesResponse
        include Google::Apis::Core::Hashable
      
        # Identifies what kind of resource this is. Value: the fixed string "
        # doubleclickbidmanager#listQueriesResponse".
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # Retrieved queries.
        # Corresponds to the JSON property `queries`
        # @return [Array<Google::Apis::DoubleclickbidmanagerV1::Query>]
        attr_accessor :queries
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @kind = args[:kind] unless args[:kind].nil?
          @queries = args[:queries] unless args[:queries].nil?
        end
      end
      
      # List reports response.
      class ListReportsResponse
        include Google::Apis::Core::Hashable
      
        # Identifies what kind of resource this is. Value: the fixed string "
        # doubleclickbidmanager#listReportsResponse".
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # Retrieved reports.
        # Corresponds to the JSON property `reports`
        # @return [Array<Google::Apis::DoubleclickbidmanagerV1::Report>]
        attr_accessor :reports
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @kind = args[:kind] unless args[:kind].nil?
          @reports = args[:reports] unless args[:reports].nil?
        end
      end
      
      # Parameters of a query or report.
      class Parameters
        include Google::Apis::Core::Hashable
      
        # Filters used to match traffic data in your report.
        # Corresponds to the JSON property `filters`
        # @return [Array<Google::Apis::DoubleclickbidmanagerV1::FilterPair>]
        attr_accessor :filters
      
        # Data is grouped by the filters listed in this field.
        # Corresponds to the JSON property `groupBys`
        # @return [Array<String>]
        attr_accessor :group_bys
      
        # Whether to include data from Invite Media.
        # Corresponds to the JSON property `includeInviteData`
        # @return [Boolean]
        attr_accessor :include_invite_data
        alias_method :include_invite_data?, :include_invite_data
      
        # Metrics to include as columns in your report.
        # Corresponds to the JSON property `metrics`
        # @return [Array<String>]
        attr_accessor :metrics
      
        # Report type.
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @filters = args[:filters] unless args[:filters].nil?
          @group_bys = args[:group_bys] unless args[:group_bys].nil?
          @include_invite_data = args[:include_invite_data] unless args[:include_invite_data].nil?
          @metrics = args[:metrics] unless args[:metrics].nil?
          @type = args[:type] unless args[:type].nil?
        end
      end
      
      # Represents a query.
      class Query
        include Google::Apis::Core::Hashable
      
        # Identifies what kind of resource this is. Value: the fixed string "
        # doubleclickbidmanager#query".
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # Query metadata.
        # Corresponds to the JSON property `metadata`
        # @return [Google::Apis::DoubleclickbidmanagerV1::QueryMetadata]
        attr_accessor :metadata
      
        # Parameters of a query or report.
        # Corresponds to the JSON property `params`
        # @return [Google::Apis::DoubleclickbidmanagerV1::Parameters]
        attr_accessor :params
      
        # Query ID.
        # Corresponds to the JSON property `queryId`
        # @return [String]
        attr_accessor :query_id
      
        # The ending time for the data that is shown in the report. Note,
        # reportDataEndTimeMs is required if metadata.dataRange is CUSTOM_DATES and
        # ignored otherwise.
        # Corresponds to the JSON property `reportDataEndTimeMs`
        # @return [String]
        attr_accessor :report_data_end_time_ms
      
        # The starting time for the data that is shown in the report. Note,
        # reportDataStartTimeMs is required if metadata.dataRange is CUSTOM_DATES and
        # ignored otherwise.
        # Corresponds to the JSON property `reportDataStartTimeMs`
        # @return [String]
        attr_accessor :report_data_start_time_ms
      
        # Information on how frequently and when to run a query.
        # Corresponds to the JSON property `schedule`
        # @return [Google::Apis::DoubleclickbidmanagerV1::QuerySchedule]
        attr_accessor :schedule
      
        # Canonical timezone code for report data time. Defaults to America/New_York.
        # Corresponds to the JSON property `timezoneCode`
        # @return [String]
        attr_accessor :timezone_code
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @kind = args[:kind] unless args[:kind].nil?
          @metadata = args[:metadata] unless args[:metadata].nil?
          @params = args[:params] unless args[:params].nil?
          @query_id = args[:query_id] unless args[:query_id].nil?
          @report_data_end_time_ms = args[:report_data_end_time_ms] unless args[:report_data_end_time_ms].nil?
          @report_data_start_time_ms = args[:report_data_start_time_ms] unless args[:report_data_start_time_ms].nil?
          @schedule = args[:schedule] unless args[:schedule].nil?
          @timezone_code = args[:timezone_code] unless args[:timezone_code].nil?
        end
      end
      
      # Query metadata.
      class QueryMetadata
        include Google::Apis::Core::Hashable
      
        # Range of report data.
        # Corresponds to the JSON property `dataRange`
        # @return [String]
        attr_accessor :data_range
      
        # Format of the generated report.
        # Corresponds to the JSON property `format`
        # @return [String]
        attr_accessor :format
      
        # The path to the location in Google Cloud Storage where the latest report is
        # stored.
        # Corresponds to the JSON property `googleCloudStoragePathForLatestReport`
        # @return [String]
        attr_accessor :google_cloud_storage_path_for_latest_report
      
        # The path in Google Drive for the latest report.
        # Corresponds to the JSON property `googleDrivePathForLatestReport`
        # @return [String]
        attr_accessor :google_drive_path_for_latest_report
      
        # The time when the latest report started to run.
        # Corresponds to the JSON property `latestReportRunTimeMs`
        # @return [String]
        attr_accessor :latest_report_run_time_ms
      
        # Locale of the generated reports. Valid values are cs CZECH de GERMAN en
        # ENGLISH es SPANISH fr FRENCH it ITALIAN ja JAPANESE ko KOREAN pl POLISH pt-BR
        # BRAZILIAN_PORTUGUESE ru RUSSIAN tr TURKISH uk UKRAINIAN zh-CN CHINA_CHINESE zh-
        # TW TAIWAN_CHINESE
        # An locale string not in the list above will generate reports in English.
        # Corresponds to the JSON property `locale`
        # @return [String]
        attr_accessor :locale
      
        # Number of reports that have been generated for the query.
        # Corresponds to the JSON property `reportCount`
        # @return [Fixnum]
        attr_accessor :report_count
      
        # Whether the latest report is currently running.
        # Corresponds to the JSON property `running`
        # @return [Boolean]
        attr_accessor :running
        alias_method :running?, :running
      
        # Whether to send an email notification when a report is ready. Default to false.
        # Corresponds to the JSON property `sendNotification`
        # @return [Boolean]
        attr_accessor :send_notification
        alias_method :send_notification?, :send_notification
      
        # List of email addresses which are sent email notifications when the report is
        # finished. Separate from sendNotification.
        # Corresponds to the JSON property `shareEmailAddress`
        # @return [Array<String>]
        attr_accessor :share_email_address
      
        # Query title. It is used to name the reports generated from this query.
        # Corresponds to the JSON property `title`
        # @return [String]
        attr_accessor :title
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @data_range = args[:data_range] unless args[:data_range].nil?
          @format = args[:format] unless args[:format].nil?
          @google_cloud_storage_path_for_latest_report = args[:google_cloud_storage_path_for_latest_report] unless args[:google_cloud_storage_path_for_latest_report].nil?
          @google_drive_path_for_latest_report = args[:google_drive_path_for_latest_report] unless args[:google_drive_path_for_latest_report].nil?
          @latest_report_run_time_ms = args[:latest_report_run_time_ms] unless args[:latest_report_run_time_ms].nil?
          @locale = args[:locale] unless args[:locale].nil?
          @report_count = args[:report_count] unless args[:report_count].nil?
          @running = args[:running] unless args[:running].nil?
          @send_notification = args[:send_notification] unless args[:send_notification].nil?
          @share_email_address = args[:share_email_address] unless args[:share_email_address].nil?
          @title = args[:title] unless args[:title].nil?
        end
      end
      
      # Information on how frequently and when to run a query.
      class QuerySchedule
        include Google::Apis::Core::Hashable
      
        # Datetime to periodically run the query until.
        # Corresponds to the JSON property `endTimeMs`
        # @return [String]
        attr_accessor :end_time_ms
      
        # How often the query is run.
        # Corresponds to the JSON property `frequency`
        # @return [String]
        attr_accessor :frequency
      
        # Time of day at which a new report will be generated, represented as minutes
        # past midnight. Range is 0 to 1439. Only applies to scheduled reports.
        # Corresponds to the JSON property `nextRunMinuteOfDay`
        # @return [Fixnum]
        attr_accessor :next_run_minute_of_day
      
        # Canonical timezone code for report generation time. Defaults to America/
        # New_York.
        # Corresponds to the JSON property `nextRunTimezoneCode`
        # @return [String]
        attr_accessor :next_run_timezone_code
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @end_time_ms = args[:end_time_ms] unless args[:end_time_ms].nil?
          @frequency = args[:frequency] unless args[:frequency].nil?
          @next_run_minute_of_day = args[:next_run_minute_of_day] unless args[:next_run_minute_of_day].nil?
          @next_run_timezone_code = args[:next_run_timezone_code] unless args[:next_run_timezone_code].nil?
        end
      end
      
      # Represents a report.
      class Report
        include Google::Apis::Core::Hashable
      
        # Key used to identify a report.
        # Corresponds to the JSON property `key`
        # @return [Google::Apis::DoubleclickbidmanagerV1::ReportKey]
        attr_accessor :key
      
        # Report metadata.
        # Corresponds to the JSON property `metadata`
        # @return [Google::Apis::DoubleclickbidmanagerV1::ReportMetadata]
        attr_accessor :metadata
      
        # Parameters of a query or report.
        # Corresponds to the JSON property `params`
        # @return [Google::Apis::DoubleclickbidmanagerV1::Parameters]
        attr_accessor :params
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @key = args[:key] unless args[:key].nil?
          @metadata = args[:metadata] unless args[:metadata].nil?
          @params = args[:params] unless args[:params].nil?
        end
      end
      
      # An explanation of a report failure.
      class ReportFailure
        include Google::Apis::Core::Hashable
      
        # Error code that shows why the report was not created.
        # Corresponds to the JSON property `errorCode`
        # @return [String]
        attr_accessor :error_code
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @error_code = args[:error_code] unless args[:error_code].nil?
        end
      end
      
      # Key used to identify a report.
      class ReportKey
        include Google::Apis::Core::Hashable
      
        # Query ID.
        # Corresponds to the JSON property `queryId`
        # @return [String]
        attr_accessor :query_id
      
        # Report ID.
        # Corresponds to the JSON property `reportId`
        # @return [String]
        attr_accessor :report_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @query_id = args[:query_id] unless args[:query_id].nil?
          @report_id = args[:report_id] unless args[:report_id].nil?
        end
      end
      
      # Report metadata.
      class ReportMetadata
        include Google::Apis::Core::Hashable
      
        # The path to the location in Google Cloud Storage where the report is stored.
        # Corresponds to the JSON property `googleCloudStoragePath`
        # @return [String]
        attr_accessor :google_cloud_storage_path
      
        # The ending time for the data that is shown in the report.
        # Corresponds to the JSON property `reportDataEndTimeMs`
        # @return [String]
        attr_accessor :report_data_end_time_ms
      
        # The starting time for the data that is shown in the report.
        # Corresponds to the JSON property `reportDataStartTimeMs`
        # @return [String]
        attr_accessor :report_data_start_time_ms
      
        # Report status.
        # Corresponds to the JSON property `status`
        # @return [Google::Apis::DoubleclickbidmanagerV1::ReportStatus]
        attr_accessor :status
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @google_cloud_storage_path = args[:google_cloud_storage_path] unless args[:google_cloud_storage_path].nil?
          @report_data_end_time_ms = args[:report_data_end_time_ms] unless args[:report_data_end_time_ms].nil?
          @report_data_start_time_ms = args[:report_data_start_time_ms] unless args[:report_data_start_time_ms].nil?
          @status = args[:status] unless args[:status].nil?
        end
      end
      
      # Report status.
      class ReportStatus
        include Google::Apis::Core::Hashable
      
        # An explanation of a report failure.
        # Corresponds to the JSON property `failure`
        # @return [Google::Apis::DoubleclickbidmanagerV1::ReportFailure]
        attr_accessor :failure
      
        # The time when this report either completed successfully or failed.
        # Corresponds to the JSON property `finishTimeMs`
        # @return [String]
        attr_accessor :finish_time_ms
      
        # The file type of the report.
        # Corresponds to the JSON property `format`
        # @return [String]
        attr_accessor :format
      
        # The state of the report.
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @failure = args[:failure] unless args[:failure].nil?
          @finish_time_ms = args[:finish_time_ms] unless args[:finish_time_ms].nil?
          @format = args[:format] unless args[:format].nil?
          @state = args[:state] unless args[:state].nil?
        end
      end
      
      # Represents the upload status of a row in the request.
      class RowStatus
        include Google::Apis::Core::Hashable
      
        # Whether the stored entity is changed as a result of upload.
        # Corresponds to the JSON property `changed`
        # @return [Boolean]
        attr_accessor :changed
        alias_method :changed?, :changed
      
        # Entity Id.
        # Corresponds to the JSON property `entityId`
        # @return [String]
        attr_accessor :entity_id
      
        # Entity name.
        # Corresponds to the JSON property `entityName`
        # @return [String]
        attr_accessor :entity_name
      
        # Reasons why the entity can't be uploaded.
        # Corresponds to the JSON property `errors`
        # @return [Array<String>]
        attr_accessor :errors
      
        # Whether the entity is persisted.
        # Corresponds to the JSON property `persisted`
        # @return [Boolean]
        attr_accessor :persisted
        alias_method :persisted?, :persisted
      
        # Row number.
        # Corresponds to the JSON property `rowNumber`
        # @return [Fixnum]
        attr_accessor :row_number
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @changed = args[:changed] unless args[:changed].nil?
          @entity_id = args[:entity_id] unless args[:entity_id].nil?
          @entity_name = args[:entity_name] unless args[:entity_name].nil?
          @errors = args[:errors] unless args[:errors].nil?
          @persisted = args[:persisted] unless args[:persisted].nil?
          @row_number = args[:row_number] unless args[:row_number].nil?
        end
      end
      
      # Request to run a stored query to generate a report.
      class RunQueryRequest
        include Google::Apis::Core::Hashable
      
        # Report data range used to generate the report.
        # Corresponds to the JSON property `dataRange`
        # @return [String]
        attr_accessor :data_range
      
        # The ending time for the data that is shown in the report. Note,
        # reportDataEndTimeMs is required if dataRange is CUSTOM_DATES and ignored
        # otherwise.
        # Corresponds to the JSON property `reportDataEndTimeMs`
        # @return [String]
        attr_accessor :report_data_end_time_ms
      
        # The starting time for the data that is shown in the report. Note,
        # reportDataStartTimeMs is required if dataRange is CUSTOM_DATES and ignored
        # otherwise.
        # Corresponds to the JSON property `reportDataStartTimeMs`
        # @return [String]
        attr_accessor :report_data_start_time_ms
      
        # Canonical timezone code for report data time. Defaults to America/New_York.
        # Corresponds to the JSON property `timezoneCode`
        # @return [String]
        attr_accessor :timezone_code
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @data_range = args[:data_range] unless args[:data_range].nil?
          @report_data_end_time_ms = args[:report_data_end_time_ms] unless args[:report_data_end_time_ms].nil?
          @report_data_start_time_ms = args[:report_data_start_time_ms] unless args[:report_data_start_time_ms].nil?
          @timezone_code = args[:timezone_code] unless args[:timezone_code].nil?
        end
      end
      
      # Request to upload line items.
      class UploadLineItemsRequest
        include Google::Apis::Core::Hashable
      
        # Set to true to get upload status without actually persisting the line items.
        # Corresponds to the JSON property `dryRun`
        # @return [Boolean]
        attr_accessor :dry_run
        alias_method :dry_run?, :dry_run
      
        # Format the line items are in. Default to CSV.
        # Corresponds to the JSON property `format`
        # @return [String]
        attr_accessor :format
      
        # Line items in CSV to upload. Refer to  Entity Write File Format for more
        # information on file format.
        # Corresponds to the JSON property `lineItems`
        # @return [String]
        attr_accessor :line_items
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @dry_run = args[:dry_run] unless args[:dry_run].nil?
          @format = args[:format] unless args[:format].nil?
          @line_items = args[:line_items] unless args[:line_items].nil?
        end
      end
      
      # Upload line items response.
      class UploadLineItemsResponse
        include Google::Apis::Core::Hashable
      
        # Represents the status of upload.
        # Corresponds to the JSON property `uploadStatus`
        # @return [Google::Apis::DoubleclickbidmanagerV1::UploadStatus]
        attr_accessor :upload_status
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @upload_status = args[:upload_status] unless args[:upload_status].nil?
        end
      end
      
      # Represents the status of upload.
      class UploadStatus
        include Google::Apis::Core::Hashable
      
        # Reasons why upload can't be completed.
        # Corresponds to the JSON property `errors`
        # @return [Array<String>]
        attr_accessor :errors
      
        # Per-row upload status.
        # Corresponds to the JSON property `rowStatus`
        # @return [Array<Google::Apis::DoubleclickbidmanagerV1::RowStatus>]
        attr_accessor :row_status
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @errors = args[:errors] unless args[:errors].nil?
          @row_status = args[:row_status] unless args[:row_status].nil?
        end
      end
    end
  end
end
