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
    module AgenciesandbrandsV1
      
      # Represents a whole or partial calendar date, such as a birthday. The time of
      # day and time zone are either specified elsewhere or are insignificant. The
      # date is relative to the Gregorian Calendar. This can represent one of the
      # following: * A full date, with non-zero year, month, and day values. * A month
      # and day, with a zero year (for example, an anniversary). * A year on its own,
      # with a zero month and a zero day. * A year and month, with a zero day (for
      # example, a credit card expiration date). Related types: * google.type.
      # TimeOfDay * google.type.DateTime * google.protobuf.Timestamp
      class Date
        include Google::Apis::Core::Hashable
      
        # Day of a month. Must be from 1 to 31 and valid for the year and month, or 0 to
        # specify a year by itself or a year and month where the day isn't significant.
        # Corresponds to the JSON property `day`
        # @return [Fixnum]
        attr_accessor :day
      
        # Month of a year. Must be from 1 to 12, or 0 to specify a year without a month
        # and day.
        # Corresponds to the JSON property `month`
        # @return [Fixnum]
        attr_accessor :month
      
        # Year of the date. Must be from 1 to 9999, or 0 to specify a date without a
        # year.
        # Corresponds to the JSON property `year`
        # @return [Fixnum]
        attr_accessor :year
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @day = args[:day] if args.key?(:day)
          @month = args[:month] if args.key?(:month)
          @year = args[:year] if args.key?(:year)
        end
      end
      
      # A date range for a report.
      class DateRange
        include Google::Apis::Core::Hashable
      
        # A date range between two fixed dates (inclusive of end date).
        # Corresponds to the JSON property `fixed`
        # @return [Google::Apis::AgenciesandbrandsV1::FixedDateRange]
        attr_accessor :fixed
      
        # A relative date range.
        # Corresponds to the JSON property `relative`
        # @return [String]
        attr_accessor :relative
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @fixed = args[:fixed] if args.key?(:fixed)
          @relative = args[:relative] if args.key?(:relative)
        end
      end
      
      # A list of double values.
      class DoubleList
        include Google::Apis::Core::Hashable
      
        # The values
        # Corresponds to the JSON property `values`
        # @return [Array<Float>]
        attr_accessor :values
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @values = args[:values] if args.key?(:values)
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
      
      # The response message for the fetch report result rows endpoint.
      class FetchReportResultRowsResponse
        include Google::Apis::Core::Hashable
      
        # The computed fixed date ranges this report includes. Only returned with the
        # first page of results (when page_token is not included in the request).
        # Corresponds to the JSON property `dateRanges`
        # @return [Array<Google::Apis::AgenciesandbrandsV1::FixedDateRange>]
        attr_accessor :date_ranges
      
        # A token that can be sent as `page_token` to retrieve the next page. If this
        # field is omitted, there are no subsequent pages.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # Up to `page_size` rows of report data.
        # Corresponds to the JSON property `rows`
        # @return [Array<Google::Apis::AgenciesandbrandsV1::Row>]
        attr_accessor :rows
      
        # The time at which the report was scheduled to run. For non-scheduled reports,
        # this is the time at which the report was requested to be run.
        # Corresponds to the JSON property `runTime`
        # @return [String]
        attr_accessor :run_time
      
        # The total number of rows available from this report. Useful for pagination.
        # Only returned with the first page of results (when page_token is not included
        # in the request).
        # Corresponds to the JSON property `totalRowCount`
        # @return [Fixnum]
        attr_accessor :total_row_count
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @date_ranges = args[:date_ranges] if args.key?(:date_ranges)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @rows = args[:rows] if args.key?(:rows)
          @run_time = args[:run_time] if args.key?(:run_time)
          @total_row_count = args[:total_row_count] if args.key?(:total_row_count)
        end
      end
      
      # A dimension or a metric in a report.
      class Field
        include Google::Apis::Core::Hashable
      
        # The dimension this field represents.
        # Corresponds to the JSON property `dimension`
        # @return [String]
        attr_accessor :dimension
      
        # The metric this field represents.
        # Corresponds to the JSON property `metric`
        # @return [String]
        attr_accessor :metric
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @dimension = args[:dimension] if args.key?(:dimension)
          @metric = args[:metric] if args.key?(:metric)
        end
      end
      
      # A filter on a specific field.
      class FieldFilter
        include Google::Apis::Core::Hashable
      
        # A dimension or a metric in a report.
        # Corresponds to the JSON property `field`
        # @return [Google::Apis::AgenciesandbrandsV1::Field]
        attr_accessor :field
      
        # Required. The operation of this filter.
        # Corresponds to the JSON property `operation`
        # @return [String]
        attr_accessor :operation
      
        # Required. Values to filter to.
        # Corresponds to the JSON property `values`
        # @return [Array<Google::Apis::AgenciesandbrandsV1::ReportValue>]
        attr_accessor :values
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @field = args[:field] if args.key?(:field)
          @operation = args[:operation] if args.key?(:operation)
          @values = args[:values] if args.key?(:values)
        end
      end
      
      # A filter over one or more fields.
      class Filter
        include Google::Apis::Core::Hashable
      
        # A list of filters.
        # Corresponds to the JSON property `andFilter`
        # @return [Google::Apis::AgenciesandbrandsV1::FilterList]
        attr_accessor :and_filter
      
        # A filter on a specific field.
        # Corresponds to the JSON property `fieldFilter`
        # @return [Google::Apis::AgenciesandbrandsV1::FieldFilter]
        attr_accessor :field_filter
      
        # A filter over one or more fields.
        # Corresponds to the JSON property `notFilter`
        # @return [Google::Apis::AgenciesandbrandsV1::Filter]
        attr_accessor :not_filter
      
        # A list of filters.
        # Corresponds to the JSON property `orFilter`
        # @return [Google::Apis::AgenciesandbrandsV1::FilterList]
        attr_accessor :or_filter
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @and_filter = args[:and_filter] if args.key?(:and_filter)
          @field_filter = args[:field_filter] if args.key?(:field_filter)
          @not_filter = args[:not_filter] if args.key?(:not_filter)
          @or_filter = args[:or_filter] if args.key?(:or_filter)
        end
      end
      
      # A list of filters.
      class FilterList
        include Google::Apis::Core::Hashable
      
        # Required. A list of filters.
        # Corresponds to the JSON property `filters`
        # @return [Array<Google::Apis::AgenciesandbrandsV1::Filter>]
        attr_accessor :filters
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @filters = args[:filters] if args.key?(:filters)
        end
      end
      
      # A date range between two fixed dates (inclusive of end date).
      class FixedDateRange
        include Google::Apis::Core::Hashable
      
        # Represents a whole or partial calendar date, such as a birthday. The time of
        # day and time zone are either specified elsewhere or are insignificant. The
        # date is relative to the Gregorian Calendar. This can represent one of the
        # following: * A full date, with non-zero year, month, and day values. * A month
        # and day, with a zero year (for example, an anniversary). * A year on its own,
        # with a zero month and a zero day. * A year and month, with a zero day (for
        # example, a credit card expiration date). Related types: * google.type.
        # TimeOfDay * google.type.DateTime * google.protobuf.Timestamp
        # Corresponds to the JSON property `endDate`
        # @return [Google::Apis::AgenciesandbrandsV1::Date]
        attr_accessor :end_date
      
        # Represents a whole or partial calendar date, such as a birthday. The time of
        # day and time zone are either specified elsewhere or are insignificant. The
        # date is relative to the Gregorian Calendar. This can represent one of the
        # following: * A full date, with non-zero year, month, and day values. * A month
        # and day, with a zero year (for example, an anniversary). * A year on its own,
        # with a zero month and a zero day. * A year and month, with a zero day (for
        # example, a credit card expiration date). Related types: * google.type.
        # TimeOfDay * google.type.DateTime * google.protobuf.Timestamp
        # Corresponds to the JSON property `startDate`
        # @return [Google::Apis::AgenciesandbrandsV1::Date]
        attr_accessor :start_date
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @end_date = args[:end_date] if args.key?(:end_date)
          @start_date = args[:start_date] if args.key?(:start_date)
        end
      end
      
      # A list of integer values.
      class IntList
        include Google::Apis::Core::Hashable
      
        # The values
        # Corresponds to the JSON property `values`
        # @return [Array<Fixnum>]
        attr_accessor :values
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @values = args[:values] if args.key?(:values)
        end
      end
      
      # Response object for `ListReportsResponse` containing matching `Report` objects.
      class ListReportsResponse
        include Google::Apis::Core::Hashable
      
        # A token, which can be sent as `page_token` to retrieve the next page. If this
        # field is omitted, there are no subsequent pages.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # The `Report` objects from the specified network.
        # Corresponds to the JSON property `reports`
        # @return [Array<Google::Apis::AgenciesandbrandsV1::Report>]
        attr_accessor :reports
      
        # Total number of `Report` objects. If a filter was included in the request,
        # this reflects the total number after the filtering is applied. `total_size`
        # won't be calculated in the response unless it has been included in a response
        # field mask. The response field mask can be provided to the method by using the
        # URL parameter `$fields` or `fields`, or by using the HTTP/gRPC header `X-Goog-
        # FieldMask`. For more information, see https://developers.google.com/ad-manager/
        # api/beta/field-masks
        # Corresponds to the JSON property `totalSize`
        # @return [Fixnum]
        attr_accessor :total_size
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @reports = args[:reports] if args.key?(:reports)
          @total_size = args[:total_size] if args.key?(:total_size)
        end
      end
      
      # Contains all metric values requested for a single date range and set of column
      # dimension values (returned in the columns field of the response). The order of
      # the metrics in each field corresponds to the order of the metrics specified in
      # the request.
      class MetricValueGroup
        include Google::Apis::Core::Hashable
      
        # Data for the PRIMARY MetricValueType.
        # Corresponds to the JSON property `primaryValues`
        # @return [Array<Google::Apis::AgenciesandbrandsV1::ReportValue>]
        attr_accessor :primary_values
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @primary_values = args[:primary_values] if args.key?(:primary_values)
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
        # @return [Google::Apis::AgenciesandbrandsV1::Status]
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
      
      # The `Report` resource.
      class Report
        include Google::Apis::Core::Hashable
      
        # Output only. The instant this report was created.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Optional. Display name for the report.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # Output only. The locale of this report. Locale is set from the user's locale
        # at the time of the request. Locale can't be modified.
        # Corresponds to the JSON property `locale`
        # @return [String]
        attr_accessor :locale
      
        # Identifier. The resource name of the report. Report resource name have the
        # form: `agencies/`account_id`/reports/`report_id``
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # The definition of how a report should be run.
        # Corresponds to the JSON property `reportDefinition`
        # @return [Google::Apis::AgenciesandbrandsV1::ReportDefinition]
        attr_accessor :report_definition
      
        # Output only. Report ID.
        # Corresponds to the JSON property `reportId`
        # @return [Fixnum]
        attr_accessor :report_id
      
        # Output only. The instant this report was last modified.
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @create_time = args[:create_time] if args.key?(:create_time)
          @display_name = args[:display_name] if args.key?(:display_name)
          @locale = args[:locale] if args.key?(:locale)
          @name = args[:name] if args.key?(:name)
          @report_definition = args[:report_definition] if args.key?(:report_definition)
          @report_id = args[:report_id] if args.key?(:report_id)
          @update_time = args[:update_time] if args.key?(:update_time)
        end
      end
      
      # The definition of how a report should be run.
      class ReportDefinition
        include Google::Apis::Core::Hashable
      
        # Optional. The ISO 4217 currency code for this report. Defaults to account
        # currency code if not specified.
        # Corresponds to the JSON property `currencyCode`
        # @return [String]
        attr_accessor :currency_code
      
        # A date range for a report.
        # Corresponds to the JSON property `dateRange`
        # @return [Google::Apis::AgenciesandbrandsV1::DateRange]
        attr_accessor :date_range
      
        # Required. The list of dimensions to report on. If empty, the report will have
        # no dimensions, and any metrics will be totals.
        # Corresponds to the JSON property `dimensions`
        # @return [Array<String>]
        attr_accessor :dimensions
      
        # Optional. The filters for this report.
        # Corresponds to the JSON property `filters`
        # @return [Array<Google::Apis::AgenciesandbrandsV1::Filter>]
        attr_accessor :filters
      
        # Required. The list of metrics to report on. If empty, the report will have no
        # metrics.
        # Corresponds to the JSON property `metrics`
        # @return [Array<String>]
        attr_accessor :metrics
      
        # Optional. Default sorts to apply to this report.
        # Corresponds to the JSON property `sorts`
        # @return [Array<Google::Apis::AgenciesandbrandsV1::Sort>]
        attr_accessor :sorts
      
        # Optional. If time_zone_source is PROVIDED, this is the time zone to use for
        # this report. Leave empty for any other time zone source. Time zone in IANA
        # format. For example, "America/New_York".
        # Corresponds to the JSON property `timeZone`
        # @return [String]
        attr_accessor :time_zone
      
        # Optional. Where to get the time zone for this report. Defaults to using the
        # Pacific time zone (PT). If source is PROVIDED, the time_zone field in the
        # report definition must also set a time zone.
        # Corresponds to the JSON property `timeZoneSource`
        # @return [String]
        attr_accessor :time_zone_source
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @currency_code = args[:currency_code] if args.key?(:currency_code)
          @date_range = args[:date_range] if args.key?(:date_range)
          @dimensions = args[:dimensions] if args.key?(:dimensions)
          @filters = args[:filters] if args.key?(:filters)
          @metrics = args[:metrics] if args.key?(:metrics)
          @sorts = args[:sorts] if args.key?(:sorts)
          @time_zone = args[:time_zone] if args.key?(:time_zone)
          @time_zone_source = args[:time_zone_source] if args.key?(:time_zone_source)
        end
      end
      
      # Represents a single value in a report.
      class ReportValue
        include Google::Apis::Core::Hashable
      
        # For boolean values.
        # Corresponds to the JSON property `boolValue`
        # @return [Boolean]
        attr_accessor :bool_value
        alias_method :bool_value?, :bool_value
      
        # For bytes values.
        # Corresponds to the JSON property `bytesValue`
        # NOTE: Values are automatically base64 encoded/decoded in the client library.
        # @return [String]
        attr_accessor :bytes_value
      
        # A list of double values.
        # Corresponds to the JSON property `doubleListValue`
        # @return [Google::Apis::AgenciesandbrandsV1::DoubleList]
        attr_accessor :double_list_value
      
        # For double values.
        # Corresponds to the JSON property `doubleValue`
        # @return [Float]
        attr_accessor :double_value
      
        # A list of integer values.
        # Corresponds to the JSON property `intListValue`
        # @return [Google::Apis::AgenciesandbrandsV1::IntList]
        attr_accessor :int_list_value
      
        # For integer values.
        # Corresponds to the JSON property `intValue`
        # @return [Fixnum]
        attr_accessor :int_value
      
        # A list of string values.
        # Corresponds to the JSON property `stringListValue`
        # @return [Google::Apis::AgenciesandbrandsV1::StringList]
        attr_accessor :string_list_value
      
        # For string values.
        # Corresponds to the JSON property `stringValue`
        # @return [String]
        attr_accessor :string_value
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @bool_value = args[:bool_value] if args.key?(:bool_value)
          @bytes_value = args[:bytes_value] if args.key?(:bytes_value)
          @double_list_value = args[:double_list_value] if args.key?(:double_list_value)
          @double_value = args[:double_value] if args.key?(:double_value)
          @int_list_value = args[:int_list_value] if args.key?(:int_list_value)
          @int_value = args[:int_value] if args.key?(:int_value)
          @string_list_value = args[:string_list_value] if args.key?(:string_list_value)
          @string_value = args[:string_value] if args.key?(:string_value)
        end
      end
      
      # A row of report data.
      class Row
        include Google::Apis::Core::Hashable
      
        # The order of the dimension values is the same as the order of the dimensions
        # specified in the request.
        # Corresponds to the JSON property `dimensionValues`
        # @return [Array<Google::Apis::AgenciesandbrandsV1::ReportValue>]
        attr_accessor :dimension_values
      
        # The length of the metric_value_groups field will be equal to the length of
        # the date_ranges field in the fetch response. The metric_value_groups field is
        # ordered such that each index corresponds to the date_range at the same index.
        # For example, given date_ranges [x, y], metric_value_groups will have a length
        # of two. The first entry in metric_value_groups represents the metrics for date
        # x and the second entry in metric_value_groups represents the metrics for date
        # y.
        # Corresponds to the JSON property `metricValueGroups`
        # @return [Array<Google::Apis::AgenciesandbrandsV1::MetricValueGroup>]
        attr_accessor :metric_value_groups
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @dimension_values = args[:dimension_values] if args.key?(:dimension_values)
          @metric_value_groups = args[:metric_value_groups] if args.key?(:metric_value_groups)
        end
      end
      
      # `RunReport` operation metadata.
      class RunReportMetadata
        include Google::Apis::Core::Hashable
      
        # An estimate of how close this report is to being completed. Will always be 100
        # for failed and completed reports.
        # Corresponds to the JSON property `percentComplete`
        # @return [Fixnum]
        attr_accessor :percent_complete
      
        # The result's parent report.
        # Corresponds to the JSON property `report`
        # @return [String]
        attr_accessor :report
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @percent_complete = args[:percent_complete] if args.key?(:percent_complete)
          @report = args[:report] if args.key?(:report)
        end
      end
      
      # Request message for a running a report.
      class RunReportRequest
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # Response message for a completed `RunReport` operation.
      class RunReportResponse
        include Google::Apis::Core::Hashable
      
        # The unique name of the generated result. Use with `FetchReportResultRows` to
        # retrieve data.
        # Corresponds to the JSON property `reportResult`
        # @return [String]
        attr_accessor :report_result
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @report_result = args[:report_result] if args.key?(:report_result)
        end
      end
      
      # Represents a sorting in a report.
      class Sort
        include Google::Apis::Core::Hashable
      
        # Optional. The sort order. If true the sort will be descending.
        # Corresponds to the JSON property `descending`
        # @return [Boolean]
        attr_accessor :descending
        alias_method :descending?, :descending
      
        # A dimension or a metric in a report.
        # Corresponds to the JSON property `field`
        # @return [Google::Apis::AgenciesandbrandsV1::Field]
        attr_accessor :field
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @descending = args[:descending] if args.key?(:descending)
          @field = args[:field] if args.key?(:field)
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
      
      # A list of string values.
      class StringList
        include Google::Apis::Core::Hashable
      
        # The values
        # Corresponds to the JSON property `values`
        # @return [Array<String>]
        attr_accessor :values
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @values = args[:values] if args.key?(:values)
        end
      end
    end
  end
end
