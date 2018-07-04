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
    module BigquerydatatransferV1
      
      # A request to determine whether the user has valid credentials. This method
      # is used to limit the number of OAuth popups in the user interface. The
      # user id is inferred from the API call context.
      # If the data source has the Google+ authorization type, this method
      # returns false, as it cannot be determined whether the credentials are
      # already valid merely based on the user id.
      class CheckValidCredsRequest
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # A response indicating whether the credentials exist and are valid.
      class CheckValidCredsResponse
        include Google::Apis::Core::Hashable
      
        # If set to `true`, the credentials exist and are valid.
        # Corresponds to the JSON property `hasValidCreds`
        # @return [Boolean]
        attr_accessor :has_valid_creds
        alias_method :has_valid_creds?, :has_valid_creds
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @has_valid_creds = args[:has_valid_creds] if args.key?(:has_valid_creds)
        end
      end
      
      # Represents data source metadata. Metadata is sufficient to
      # render UI and request proper OAuth tokens.
      class DataSource
        include Google::Apis::Core::Hashable
      
        # Indicates the type of authorization.
        # Corresponds to the JSON property `authorizationType`
        # @return [String]
        attr_accessor :authorization_type
      
        # Data source client id which should be used to receive refresh token.
        # Corresponds to the JSON property `clientId`
        # @return [String]
        attr_accessor :client_id
      
        # Specifies whether the data source supports automatic data refresh for the
        # past few days, and how it's supported.
        # For some data sources, data might not be complete until a few days later,
        # so it's useful to refresh data automatically.
        # Corresponds to the JSON property `dataRefreshType`
        # @return [String]
        attr_accessor :data_refresh_type
      
        # Data source id.
        # Corresponds to the JSON property `dataSourceId`
        # @return [String]
        attr_accessor :data_source_id
      
        # Default data refresh window on days.
        # Only meaningful when `data_refresh_type` = `SLIDING_WINDOW`.
        # Corresponds to the JSON property `defaultDataRefreshWindowDays`
        # @return [Fixnum]
        attr_accessor :default_data_refresh_window_days
      
        # Default data transfer schedule.
        # Examples of valid schedules include:
        # `1st,3rd monday of month 15:30`,
        # `every wed,fri of jan,jun 13:15`, and
        # `first sunday of quarter 00:00`.
        # Corresponds to the JSON property `defaultSchedule`
        # @return [String]
        attr_accessor :default_schedule
      
        # User friendly data source description string.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # User friendly data source name.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # Url for the help document for this data source.
        # Corresponds to the JSON property `helpUrl`
        # @return [String]
        attr_accessor :help_url
      
        # Disables backfilling and manual run scheduling
        # for the data source.
        # Corresponds to the JSON property `manualRunsDisabled`
        # @return [Boolean]
        attr_accessor :manual_runs_disabled
        alias_method :manual_runs_disabled?, :manual_runs_disabled
      
        # The minimum interval for scheduler to schedule runs.
        # Corresponds to the JSON property `minimumScheduleInterval`
        # @return [String]
        attr_accessor :minimum_schedule_interval
      
        # Output only. Data source resource name.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Data source parameters.
        # Corresponds to the JSON property `parameters`
        # @return [Array<Google::Apis::BigquerydatatransferV1::DataSourceParameter>]
        attr_accessor :parameters
      
        # Api auth scopes for which refresh token needs to be obtained. These are
        # scopes needed by a data source to prepare data and ingest them into
        # BigQuery, e.g., https://www.googleapis.com/auth/bigquery
        # Corresponds to the JSON property `scopes`
        # @return [Array<String>]
        attr_accessor :scopes
      
        # Specifies whether the data source supports a user defined schedule, or
        # operates on the default schedule.
        # When set to `true`, user can override default schedule.
        # Corresponds to the JSON property `supportsCustomSchedule`
        # @return [Boolean]
        attr_accessor :supports_custom_schedule
        alias_method :supports_custom_schedule?, :supports_custom_schedule
      
        # Deprecated. This field has no effect.
        # Corresponds to the JSON property `supportsMultipleTransfers`
        # @return [Boolean]
        attr_accessor :supports_multiple_transfers
        alias_method :supports_multiple_transfers?, :supports_multiple_transfers
      
        # Deprecated. This field has no effect.
        # Corresponds to the JSON property `transferType`
        # @return [String]
        attr_accessor :transfer_type
      
        # The number of seconds to wait for an update from the data source
        # before the Data Transfer Service marks the transfer as FAILED.
        # Corresponds to the JSON property `updateDeadlineSeconds`
        # @return [Fixnum]
        attr_accessor :update_deadline_seconds
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @authorization_type = args[:authorization_type] if args.key?(:authorization_type)
          @client_id = args[:client_id] if args.key?(:client_id)
          @data_refresh_type = args[:data_refresh_type] if args.key?(:data_refresh_type)
          @data_source_id = args[:data_source_id] if args.key?(:data_source_id)
          @default_data_refresh_window_days = args[:default_data_refresh_window_days] if args.key?(:default_data_refresh_window_days)
          @default_schedule = args[:default_schedule] if args.key?(:default_schedule)
          @description = args[:description] if args.key?(:description)
          @display_name = args[:display_name] if args.key?(:display_name)
          @help_url = args[:help_url] if args.key?(:help_url)
          @manual_runs_disabled = args[:manual_runs_disabled] if args.key?(:manual_runs_disabled)
          @minimum_schedule_interval = args[:minimum_schedule_interval] if args.key?(:minimum_schedule_interval)
          @name = args[:name] if args.key?(:name)
          @parameters = args[:parameters] if args.key?(:parameters)
          @scopes = args[:scopes] if args.key?(:scopes)
          @supports_custom_schedule = args[:supports_custom_schedule] if args.key?(:supports_custom_schedule)
          @supports_multiple_transfers = args[:supports_multiple_transfers] if args.key?(:supports_multiple_transfers)
          @transfer_type = args[:transfer_type] if args.key?(:transfer_type)
          @update_deadline_seconds = args[:update_deadline_seconds] if args.key?(:update_deadline_seconds)
        end
      end
      
      # Represents a data source parameter with validation rules, so that
      # parameters can be rendered in the UI. These parameters are given to us by
      # supported data sources, and include all needed information for rendering
      # and validation.
      # Thus, whoever uses this api can decide to generate either generic ui,
      # or custom data source specific forms.
      class DataSourceParameter
        include Google::Apis::Core::Hashable
      
        # All possible values for the parameter.
        # Corresponds to the JSON property `allowedValues`
        # @return [Array<String>]
        attr_accessor :allowed_values
      
        # Parameter description.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # Parameter display name in the user interface.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # Deprecated. This field has no effect.
        # Corresponds to the JSON property `fields`
        # @return [Array<Google::Apis::BigquerydatatransferV1::DataSourceParameter>]
        attr_accessor :fields
      
        # Cannot be changed after initial creation.
        # Corresponds to the JSON property `immutable`
        # @return [Boolean]
        attr_accessor :immutable
        alias_method :immutable?, :immutable
      
        # For integer and double values specifies maxminum allowed value.
        # Corresponds to the JSON property `maxValue`
        # @return [Float]
        attr_accessor :max_value
      
        # For integer and double values specifies minimum allowed value.
        # Corresponds to the JSON property `minValue`
        # @return [Float]
        attr_accessor :min_value
      
        # Parameter identifier.
        # Corresponds to the JSON property `paramId`
        # @return [String]
        attr_accessor :param_id
      
        # Deprecated. This field has no effect.
        # Corresponds to the JSON property `recurse`
        # @return [Boolean]
        attr_accessor :recurse
        alias_method :recurse?, :recurse
      
        # Deprecated. This field has no effect.
        # Corresponds to the JSON property `repeated`
        # @return [Boolean]
        attr_accessor :repeated
        alias_method :repeated?, :repeated
      
        # Is parameter required.
        # Corresponds to the JSON property `required`
        # @return [Boolean]
        attr_accessor :required
        alias_method :required?, :required
      
        # Parameter type.
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        # Description of the requirements for this field, in case the user input does
        # not fulfill the regex pattern or min/max values.
        # Corresponds to the JSON property `validationDescription`
        # @return [String]
        attr_accessor :validation_description
      
        # URL to a help document to further explain the naming requirements.
        # Corresponds to the JSON property `validationHelpUrl`
        # @return [String]
        attr_accessor :validation_help_url
      
        # Regular expression which can be used for parameter validation.
        # Corresponds to the JSON property `validationRegex`
        # @return [String]
        attr_accessor :validation_regex
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @allowed_values = args[:allowed_values] if args.key?(:allowed_values)
          @description = args[:description] if args.key?(:description)
          @display_name = args[:display_name] if args.key?(:display_name)
          @fields = args[:fields] if args.key?(:fields)
          @immutable = args[:immutable] if args.key?(:immutable)
          @max_value = args[:max_value] if args.key?(:max_value)
          @min_value = args[:min_value] if args.key?(:min_value)
          @param_id = args[:param_id] if args.key?(:param_id)
          @recurse = args[:recurse] if args.key?(:recurse)
          @repeated = args[:repeated] if args.key?(:repeated)
          @required = args[:required] if args.key?(:required)
          @type = args[:type] if args.key?(:type)
          @validation_description = args[:validation_description] if args.key?(:validation_description)
          @validation_help_url = args[:validation_help_url] if args.key?(:validation_help_url)
          @validation_regex = args[:validation_regex] if args.key?(:validation_regex)
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
      
      # Returns list of supported data sources and their metadata.
      class ListDataSourcesResponse
        include Google::Apis::Core::Hashable
      
        # List of supported data sources and their transfer settings.
        # Corresponds to the JSON property `dataSources`
        # @return [Array<Google::Apis::BigquerydatatransferV1::DataSource>]
        attr_accessor :data_sources
      
        # Output only. The next-pagination token. For multiple-page list results,
        # this token can be used as the
        # `ListDataSourcesRequest.page_token`
        # to request the next page of list results.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @data_sources = args[:data_sources] if args.key?(:data_sources)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # The response message for Locations.ListLocations.
      class ListLocationsResponse
        include Google::Apis::Core::Hashable
      
        # A list of locations that matches the specified filter in the request.
        # Corresponds to the JSON property `locations`
        # @return [Array<Google::Apis::BigquerydatatransferV1::Location>]
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
      
      # The returned list of pipelines in the project.
      class ListTransferConfigsResponse
        include Google::Apis::Core::Hashable
      
        # Output only. The next-pagination token. For multiple-page list results,
        # this token can be used as the
        # `ListTransferConfigsRequest.page_token`
        # to request the next page of list results.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # Output only. The stored pipeline transfer configurations.
        # Corresponds to the JSON property `transferConfigs`
        # @return [Array<Google::Apis::BigquerydatatransferV1::TransferConfig>]
        attr_accessor :transfer_configs
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @transfer_configs = args[:transfer_configs] if args.key?(:transfer_configs)
        end
      end
      
      # The returned list transfer run messages.
      class ListTransferLogsResponse
        include Google::Apis::Core::Hashable
      
        # Output only. The next-pagination token. For multiple-page list results,
        # this token can be used as the
        # `GetTransferRunLogRequest.page_token`
        # to request the next page of list results.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # Output only. The stored pipeline transfer messages.
        # Corresponds to the JSON property `transferMessages`
        # @return [Array<Google::Apis::BigquerydatatransferV1::TransferMessage>]
        attr_accessor :transfer_messages
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @transfer_messages = args[:transfer_messages] if args.key?(:transfer_messages)
        end
      end
      
      # The returned list of pipelines in the project.
      class ListTransferRunsResponse
        include Google::Apis::Core::Hashable
      
        # Output only. The next-pagination token. For multiple-page list results,
        # this token can be used as the
        # `ListTransferRunsRequest.page_token`
        # to request the next page of list results.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # Output only. The stored pipeline transfer runs.
        # Corresponds to the JSON property `transferRuns`
        # @return [Array<Google::Apis::BigquerydatatransferV1::TransferRun>]
        attr_accessor :transfer_runs
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @transfer_runs = args[:transfer_runs] if args.key?(:transfer_runs)
        end
      end
      
      # A resource that represents Google Cloud Platform location.
      class Location
        include Google::Apis::Core::Hashable
      
        # The friendly name for this location, typically a nearby city name.
        # For example, "Tokyo".
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # Cross-service attributes for the location. For example
        # `"cloud.googleapis.com/region": "us-east1"`
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
      
        # Resource name for the location, which may vary between implementations.
        # For example: `"projects/example-project/locations/us-east1"`
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
      
      # A request to schedule transfer runs for a time range.
      class ScheduleTransferRunsRequest
        include Google::Apis::Core::Hashable
      
        # End time of the range of transfer runs. For example,
        # `"2017-05-30T00:00:00+00:00"`.
        # Corresponds to the JSON property `endTime`
        # @return [String]
        attr_accessor :end_time
      
        # Start time of the range of transfer runs. For example,
        # `"2017-05-25T00:00:00+00:00"`.
        # Corresponds to the JSON property `startTime`
        # @return [String]
        attr_accessor :start_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @end_time = args[:end_time] if args.key?(:end_time)
          @start_time = args[:start_time] if args.key?(:start_time)
        end
      end
      
      # A response to schedule transfer runs for a time range.
      class ScheduleTransferRunsResponse
        include Google::Apis::Core::Hashable
      
        # The transfer runs that were scheduled.
        # Corresponds to the JSON property `runs`
        # @return [Array<Google::Apis::BigquerydatatransferV1::TransferRun>]
        attr_accessor :runs
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @runs = args[:runs] if args.key?(:runs)
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
      
      # Represents a data transfer configuration. A transfer configuration
      # contains all metadata needed to perform a data transfer. For example,
      # `destination_dataset_id` specifies where data should be stored.
      # When a new transfer configuration is created, the specified
      # `destination_dataset_id` is created when needed and shared with the
      # appropriate data source service account.
      class TransferConfig
        include Google::Apis::Core::Hashable
      
        # The number of days to look back to automatically refresh the data.
        # For example, if `data_refresh_window_days = 10`, then every day
        # BigQuery reingests data for [today-10, today-1], rather than ingesting data
        # for just [today-1].
        # Only valid if the data source supports the feature. Set the value to  0
        # to use the default value.
        # Corresponds to the JSON property `dataRefreshWindowDays`
        # @return [Fixnum]
        attr_accessor :data_refresh_window_days
      
        # Data source id. Cannot be changed once data transfer is created.
        # Corresponds to the JSON property `dataSourceId`
        # @return [String]
        attr_accessor :data_source_id
      
        # Output only. Region in which BigQuery dataset is located.
        # Corresponds to the JSON property `datasetRegion`
        # @return [String]
        attr_accessor :dataset_region
      
        # The BigQuery target dataset id.
        # Corresponds to the JSON property `destinationDatasetId`
        # @return [String]
        attr_accessor :destination_dataset_id
      
        # Is this config disabled. When set to true, no runs are scheduled
        # for a given transfer.
        # Corresponds to the JSON property `disabled`
        # @return [Boolean]
        attr_accessor :disabled
        alias_method :disabled?, :disabled
      
        # User specified display name for the data transfer.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # The resource name of the transfer config.
        # Transfer config names have the form
        # `projects/`project_id`/transferConfigs/`config_id``.
        # Where `config_id` is usually a uuid, even though it is not
        # guaranteed or required. The name is ignored when creating a transfer
        # config.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Output only. Next time when data transfer will run.
        # Corresponds to the JSON property `nextRunTime`
        # @return [String]
        attr_accessor :next_run_time
      
        # Data transfer specific parameters.
        # Corresponds to the JSON property `params`
        # @return [Hash<String,Object>]
        attr_accessor :params
      
        # Data transfer schedule.
        # If the data source does not support a custom schedule, this should be
        # empty. If it is empty, the default value for the data source will be
        # used.
        # The specified times are in UTC.
        # Examples of valid format:
        # `1st,3rd monday of month 15:30`,
        # `every wed,fri of jan,jun 13:15`, and
        # `first sunday of quarter 00:00`.
        # See more explanation about the format here:
        # https://cloud.google.com/appengine/docs/flexible/python/scheduling-jobs-with-
        # cron-yaml#the_schedule_format
        # NOTE: the granularity should be at least 8 hours, or less frequent.
        # Corresponds to the JSON property `schedule`
        # @return [String]
        attr_accessor :schedule
      
        # Output only. State of the most recently updated transfer run.
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        # Output only. Data transfer modification time. Ignored by server on input.
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        # Output only. Unique ID of the user on whose behalf transfer is done.
        # Applicable only to data sources that do not support service accounts.
        # When set to 0, the data source service account credentials are used.
        # May be negative. Note, that this identifier is not stable.
        # It may change over time even for the same user.
        # Corresponds to the JSON property `userId`
        # @return [Fixnum]
        attr_accessor :user_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @data_refresh_window_days = args[:data_refresh_window_days] if args.key?(:data_refresh_window_days)
          @data_source_id = args[:data_source_id] if args.key?(:data_source_id)
          @dataset_region = args[:dataset_region] if args.key?(:dataset_region)
          @destination_dataset_id = args[:destination_dataset_id] if args.key?(:destination_dataset_id)
          @disabled = args[:disabled] if args.key?(:disabled)
          @display_name = args[:display_name] if args.key?(:display_name)
          @name = args[:name] if args.key?(:name)
          @next_run_time = args[:next_run_time] if args.key?(:next_run_time)
          @params = args[:params] if args.key?(:params)
          @schedule = args[:schedule] if args.key?(:schedule)
          @state = args[:state] if args.key?(:state)
          @update_time = args[:update_time] if args.key?(:update_time)
          @user_id = args[:user_id] if args.key?(:user_id)
        end
      end
      
      # Represents a user facing message for a particular data transfer run.
      class TransferMessage
        include Google::Apis::Core::Hashable
      
        # Message text.
        # Corresponds to the JSON property `messageText`
        # @return [String]
        attr_accessor :message_text
      
        # Time when message was logged.
        # Corresponds to the JSON property `messageTime`
        # @return [String]
        attr_accessor :message_time
      
        # Message severity.
        # Corresponds to the JSON property `severity`
        # @return [String]
        attr_accessor :severity
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @message_text = args[:message_text] if args.key?(:message_text)
          @message_time = args[:message_time] if args.key?(:message_time)
          @severity = args[:severity] if args.key?(:severity)
        end
      end
      
      # Represents a data transfer run.
      class TransferRun
        include Google::Apis::Core::Hashable
      
        # Output only. Data source id.
        # Corresponds to the JSON property `dataSourceId`
        # @return [String]
        attr_accessor :data_source_id
      
        # Output only. The BigQuery target dataset id.
        # Corresponds to the JSON property `destinationDatasetId`
        # @return [String]
        attr_accessor :destination_dataset_id
      
        # Output only. Time when transfer run ended.
        # Parameter ignored by server for input requests.
        # Corresponds to the JSON property `endTime`
        # @return [String]
        attr_accessor :end_time
      
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
        # Corresponds to the JSON property `errorStatus`
        # @return [Google::Apis::BigquerydatatransferV1::Status]
        attr_accessor :error_status
      
        # The resource name of the transfer run.
        # Transfer run names have the form
        # `projects/`project_id`/locations/`location`/transferConfigs/`config_id`/runs/`
        # run_id``.
        # The name is ignored when creating a transfer run.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Output only. Data transfer specific parameters.
        # Corresponds to the JSON property `params`
        # @return [Hash<String,Object>]
        attr_accessor :params
      
        # For batch transfer runs, specifies the date and time that
        # data should be ingested.
        # Corresponds to the JSON property `runTime`
        # @return [String]
        attr_accessor :run_time
      
        # Output only. Describes the schedule of this transfer run if it was
        # created as part of a regular schedule. For batch transfer runs that are
        # scheduled manually, this is empty.
        # NOTE: the system might choose to delay the schedule depending on the
        # current load, so `schedule_time` doesn't always match this.
        # Corresponds to the JSON property `schedule`
        # @return [String]
        attr_accessor :schedule
      
        # Minimum time after which a transfer run can be started.
        # Corresponds to the JSON property `scheduleTime`
        # @return [String]
        attr_accessor :schedule_time
      
        # Output only. Time when transfer run was started.
        # Parameter ignored by server for input requests.
        # Corresponds to the JSON property `startTime`
        # @return [String]
        attr_accessor :start_time
      
        # Data transfer run state. Ignored for input requests.
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        # Output only. Last time the data transfer run state was updated.
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        # Output only. Unique ID of the user on whose behalf transfer is done.
        # Applicable only to data sources that do not support service accounts.
        # When set to 0, the data source service account credentials are used.
        # May be negative. Note, that this identifier is not stable.
        # It may change over time even for the same user.
        # Corresponds to the JSON property `userId`
        # @return [Fixnum]
        attr_accessor :user_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @data_source_id = args[:data_source_id] if args.key?(:data_source_id)
          @destination_dataset_id = args[:destination_dataset_id] if args.key?(:destination_dataset_id)
          @end_time = args[:end_time] if args.key?(:end_time)
          @error_status = args[:error_status] if args.key?(:error_status)
          @name = args[:name] if args.key?(:name)
          @params = args[:params] if args.key?(:params)
          @run_time = args[:run_time] if args.key?(:run_time)
          @schedule = args[:schedule] if args.key?(:schedule)
          @schedule_time = args[:schedule_time] if args.key?(:schedule_time)
          @start_time = args[:start_time] if args.key?(:start_time)
          @state = args[:state] if args.key?(:state)
          @update_time = args[:update_time] if args.key?(:update_time)
          @user_id = args[:user_id] if args.key?(:user_id)
        end
      end
    end
  end
end
