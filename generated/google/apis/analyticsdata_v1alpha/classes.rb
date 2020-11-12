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
    module AnalyticsdataV1alpha
      
      # The batch request containing multiple pivot report requests.
      class BatchRunPivotReportsRequest
        include Google::Apis::Core::Hashable
      
        # The unique identifier of the property whose events are tracked.
        # Corresponds to the JSON property `entity`
        # @return [Google::Apis::AnalyticsdataV1alpha::Entity]
        attr_accessor :entity
      
        # Individual requests. Each request has a separate pivot report response. Each
        # batch request is allowed up to 5 requests.
        # Corresponds to the JSON property `requests`
        # @return [Array<Google::Apis::AnalyticsdataV1alpha::RunPivotReportRequest>]
        attr_accessor :requests
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @entity = args[:entity] if args.key?(:entity)
          @requests = args[:requests] if args.key?(:requests)
        end
      end
      
      # The batch response containing multiple pivot reports.
      class BatchRunPivotReportsResponse
        include Google::Apis::Core::Hashable
      
        # Individual responses. Each response has a separate pivot report request.
        # Corresponds to the JSON property `pivotReports`
        # @return [Array<Google::Apis::AnalyticsdataV1alpha::RunPivotReportResponse>]
        attr_accessor :pivot_reports
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @pivot_reports = args[:pivot_reports] if args.key?(:pivot_reports)
        end
      end
      
      # The batch request containing multiple report requests.
      class BatchRunReportsRequest
        include Google::Apis::Core::Hashable
      
        # The unique identifier of the property whose events are tracked.
        # Corresponds to the JSON property `entity`
        # @return [Google::Apis::AnalyticsdataV1alpha::Entity]
        attr_accessor :entity
      
        # Individual requests. Each request has a separate report response. Each batch
        # request is allowed up to 5 requests.
        # Corresponds to the JSON property `requests`
        # @return [Array<Google::Apis::AnalyticsdataV1alpha::RunReportRequest>]
        attr_accessor :requests
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @entity = args[:entity] if args.key?(:entity)
          @requests = args[:requests] if args.key?(:requests)
        end
      end
      
      # The batch response containing multiple reports.
      class BatchRunReportsResponse
        include Google::Apis::Core::Hashable
      
        # Individual responses. Each response has a separate report request.
        # Corresponds to the JSON property `reports`
        # @return [Array<Google::Apis::AnalyticsdataV1alpha::RunReportResponse>]
        attr_accessor :reports
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @reports = args[:reports] if args.key?(:reports)
        end
      end
      
      # To express that the result needs to be between two numbers (inclusive).
      class BetweenFilter
        include Google::Apis::Core::Hashable
      
        # To represent a number.
        # Corresponds to the JSON property `fromValue`
        # @return [Google::Apis::AnalyticsdataV1alpha::NumericValue]
        attr_accessor :from_value
      
        # To represent a number.
        # Corresponds to the JSON property `toValue`
        # @return [Google::Apis::AnalyticsdataV1alpha::NumericValue]
        attr_accessor :to_value
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @from_value = args[:from_value] if args.key?(:from_value)
          @to_value = args[:to_value] if args.key?(:to_value)
        end
      end
      
      # Used to convert a dimension value to a single case.
      class CaseExpression
        include Google::Apis::Core::Hashable
      
        # Name of a dimension. The name must refer back to a name in dimensions field of
        # the request.
        # Corresponds to the JSON property `dimensionName`
        # @return [String]
        attr_accessor :dimension_name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @dimension_name = args[:dimension_name] if args.key?(:dimension_name)
        end
      end
      
      # Defines a cohort. A cohort is a group of users who share a common
      # characteristic. For example, all users with the same acquisition date belong
      # to the same cohort.
      class Cohort
        include Google::Apis::Core::Hashable
      
        # A contiguous set of days: startDate, startDate + 1, ..., endDate. Requests are
        # allowed up to 4 date ranges.
        # Corresponds to the JSON property `dateRange`
        # @return [Google::Apis::AnalyticsdataV1alpha::DateRange]
        attr_accessor :date_range
      
        # The dimension used by cohort. Only supports `firstTouchDate` for retention
        # report.
        # Corresponds to the JSON property `dimension`
        # @return [String]
        attr_accessor :dimension
      
        # Assigns a name to this cohort. The dimension `cohort` is valued to this name
        # in a report response. If set, cannot begin with `cohort_` or `RESERVED_`. If
        # not set, cohorts are named by their zero based index `cohort_0`, `cohort_1`,
        # etc.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @date_range = args[:date_range] if args.key?(:date_range)
          @dimension = args[:dimension] if args.key?(:dimension)
          @name = args[:name] if args.key?(:name)
        end
      end
      
      # Settings of a cohort report.
      class CohortReportSettings
        include Google::Apis::Core::Hashable
      
        # If true, accumulates the result from first visit day to the end day. Not
        # supported in `RunReportRequest`.
        # Corresponds to the JSON property `accumulate`
        # @return [Boolean]
        attr_accessor :accumulate
        alias_method :accumulate?, :accumulate
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @accumulate = args[:accumulate] if args.key?(:accumulate)
        end
      end
      
      # Specification for a cohort report.
      class CohortSpec
        include Google::Apis::Core::Hashable
      
        # Settings of a cohort report.
        # Corresponds to the JSON property `cohortReportSettings`
        # @return [Google::Apis::AnalyticsdataV1alpha::CohortReportSettings]
        attr_accessor :cohort_report_settings
      
        # The definition for the cohorts.
        # Corresponds to the JSON property `cohorts`
        # @return [Array<Google::Apis::AnalyticsdataV1alpha::Cohort>]
        attr_accessor :cohorts
      
        # Describes date range for a cohort report.
        # Corresponds to the JSON property `cohortsRange`
        # @return [Google::Apis::AnalyticsdataV1alpha::CohortsRange]
        attr_accessor :cohorts_range
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @cohort_report_settings = args[:cohort_report_settings] if args.key?(:cohort_report_settings)
          @cohorts = args[:cohorts] if args.key?(:cohorts)
          @cohorts_range = args[:cohorts_range] if args.key?(:cohorts_range)
        end
      end
      
      # Describes date range for a cohort report.
      class CohortsRange
        include Google::Apis::Core::Hashable
      
        # For daily cohorts, this will be the end day offset. For weekly cohorts, this
        # will be the week offset.
        # Corresponds to the JSON property `endOffset`
        # @return [Fixnum]
        attr_accessor :end_offset
      
        # Reporting date range for each cohort is calculated based on these three fields.
        # Corresponds to the JSON property `granularity`
        # @return [String]
        attr_accessor :granularity
      
        # For daily cohorts, this will be the start day offset. For weekly cohorts, this
        # will be the week offset.
        # Corresponds to the JSON property `startOffset`
        # @return [Fixnum]
        attr_accessor :start_offset
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @end_offset = args[:end_offset] if args.key?(:end_offset)
          @granularity = args[:granularity] if args.key?(:granularity)
          @start_offset = args[:start_offset] if args.key?(:start_offset)
        end
      end
      
      # Used to combine dimension values to a single dimension.
      class ConcatenateExpression
        include Google::Apis::Core::Hashable
      
        # The delimiter placed between dimension names. Delimiters are often single
        # characters such as "|" or "," but can be longer strings. If a dimension value
        # contains the delimiter, both will be present in response with no distinction.
        # For example if dimension 1 value = "US,FR", dimension 2 value = "JP", and
        # delimiter = ",", then the response will contain "US,FR,JP".
        # Corresponds to the JSON property `delimiter`
        # @return [String]
        attr_accessor :delimiter
      
        # Names of dimensions. The names must refer back to names in the dimensions
        # field of the request.
        # Corresponds to the JSON property `dimensionNames`
        # @return [Array<String>]
        attr_accessor :dimension_names
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @delimiter = args[:delimiter] if args.key?(:delimiter)
          @dimension_names = args[:dimension_names] if args.key?(:dimension_names)
        end
      end
      
      # A contiguous set of days: startDate, startDate + 1, ..., endDate. Requests are
      # allowed up to 4 date ranges.
      class DateRange
        include Google::Apis::Core::Hashable
      
        # The inclusive end date for the query in the format `YYYY-MM-DD`. Cannot be
        # before `start_date`. The format `NdaysAgo`, `yesterday`, or `today` is also
        # accepted, and in that case, the date is inferred based on the property's
        # reporting time zone.
        # Corresponds to the JSON property `endDate`
        # @return [String]
        attr_accessor :end_date
      
        # Assigns a name to this date range. The dimension `dateRange` is valued to this
        # name in a report response. If set, cannot begin with `date_range_` or `
        # RESERVED_`. If not set, date ranges are named by their zero based index in the
        # request: `date_range_0`, `date_range_1`, etc.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # The inclusive start date for the query in the format `YYYY-MM-DD`. Cannot be
        # after `end_date`. The format `NdaysAgo`, `yesterday`, or `today` is also
        # accepted, and in that case, the date is inferred based on the property's
        # reporting time zone.
        # Corresponds to the JSON property `startDate`
        # @return [String]
        attr_accessor :start_date
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @end_date = args[:end_date] if args.key?(:end_date)
          @name = args[:name] if args.key?(:name)
          @start_date = args[:start_date] if args.key?(:start_date)
        end
      end
      
      # Dimensions are attributes of your data. For example, the dimension city
      # indicates the city from which an event originates. Dimension values in report
      # responses are strings; for example, city could be "Paris" or "New York".
      # Requests are allowed up to 8 dimensions.
      class Dimension
        include Google::Apis::Core::Hashable
      
        # Used to express a dimension which is the result of a formula of multiple
        # dimensions. Example usages: 1) lower_case(dimension) 2) concatenate(dimension1,
        # symbol, dimension2).
        # Corresponds to the JSON property `dimensionExpression`
        # @return [Google::Apis::AnalyticsdataV1alpha::DimensionExpression]
        attr_accessor :dimension_expression
      
        # The name of the dimension. See the [API Dimensions](https://developers.google.
        # com/analytics/trusted-testing/analytics-data/api-schema#dimensions) for the
        # list of dimension names. If `dimensionExpression` is specified, `name` can be
        # any string that you would like. For example if a `dimensionExpression`
        # concatenates `country` and `city`, you could call that dimension `
        # countryAndCity`. Dimensions are referenced by `name` in `dimensionFilter`, `
        # orderBys`, `dimensionExpression`, and `pivots`.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @dimension_expression = args[:dimension_expression] if args.key?(:dimension_expression)
          @name = args[:name] if args.key?(:name)
        end
      end
      
      # Used to express a dimension which is the result of a formula of multiple
      # dimensions. Example usages: 1) lower_case(dimension) 2) concatenate(dimension1,
      # symbol, dimension2).
      class DimensionExpression
        include Google::Apis::Core::Hashable
      
        # Used to combine dimension values to a single dimension.
        # Corresponds to the JSON property `concatenate`
        # @return [Google::Apis::AnalyticsdataV1alpha::ConcatenateExpression]
        attr_accessor :concatenate
      
        # Used to convert a dimension value to a single case.
        # Corresponds to the JSON property `lowerCase`
        # @return [Google::Apis::AnalyticsdataV1alpha::CaseExpression]
        attr_accessor :lower_case
      
        # Used to convert a dimension value to a single case.
        # Corresponds to the JSON property `upperCase`
        # @return [Google::Apis::AnalyticsdataV1alpha::CaseExpression]
        attr_accessor :upper_case
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @concatenate = args[:concatenate] if args.key?(:concatenate)
          @lower_case = args[:lower_case] if args.key?(:lower_case)
          @upper_case = args[:upper_case] if args.key?(:upper_case)
        end
      end
      
      # Describes a dimension column in the report. Dimensions requested in a report
      # produce column entries within rows and DimensionHeaders. However, dimensions
      # used exclusively within filters or expressions do not produce columns in a
      # report; correspondingly, those dimensions do not produce headers.
      class DimensionHeader
        include Google::Apis::Core::Hashable
      
        # The dimension's name.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @name = args[:name] if args.key?(:name)
        end
      end
      
      # Explains a dimension.
      class DimensionMetadata
        include Google::Apis::Core::Hashable
      
        # This dimension's name. Useable in [Dimension](#Dimension)'s `name`. For
        # example, `eventName`.
        # Corresponds to the JSON property `apiName`
        # @return [String]
        attr_accessor :api_name
      
        # Still usable but deprecated names for this dimension. If populated, this
        # dimension is available by either `apiName` or one of `deprecatedApiNames` for
        # a period of time. After the deprecation period, the dimension will be
        # available only by `apiName`.
        # Corresponds to the JSON property `deprecatedApiNames`
        # @return [Array<String>]
        attr_accessor :deprecated_api_names
      
        # Description of how this dimension is used and calculated.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # This dimension's name within the Google Analytics user interface. For example,
        # `Event name`.
        # Corresponds to the JSON property `uiName`
        # @return [String]
        attr_accessor :ui_name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @api_name = args[:api_name] if args.key?(:api_name)
          @deprecated_api_names = args[:deprecated_api_names] if args.key?(:deprecated_api_names)
          @description = args[:description] if args.key?(:description)
          @ui_name = args[:ui_name] if args.key?(:ui_name)
        end
      end
      
      # Sorts by dimension values.
      class DimensionOrderBy
        include Google::Apis::Core::Hashable
      
        # A dimension name in the request to order by.
        # Corresponds to the JSON property `dimensionName`
        # @return [String]
        attr_accessor :dimension_name
      
        # Controls the rule for dimension value ordering.
        # Corresponds to the JSON property `orderType`
        # @return [String]
        attr_accessor :order_type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @dimension_name = args[:dimension_name] if args.key?(:dimension_name)
          @order_type = args[:order_type] if args.key?(:order_type)
        end
      end
      
      # The value of a dimension.
      class DimensionValue
        include Google::Apis::Core::Hashable
      
        # Value as a string if the dimension type is a string.
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
      
      # The unique identifier of the property whose events are tracked.
      class Entity
        include Google::Apis::Core::Hashable
      
        # A Google Analytics GA4 property id. To learn more, see [where to find your
        # Property ID](https://developers.google.com/analytics/trusted-testing/analytics-
        # data/property-id).
        # Corresponds to the JSON property `propertyId`
        # @return [String]
        attr_accessor :property_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @property_id = args[:property_id] if args.key?(:property_id)
        end
      end
      
      # An expression to filter dimension or metric values.
      class Filter
        include Google::Apis::Core::Hashable
      
        # To express that the result needs to be between two numbers (inclusive).
        # Corresponds to the JSON property `betweenFilter`
        # @return [Google::Apis::AnalyticsdataV1alpha::BetweenFilter]
        attr_accessor :between_filter
      
        # The dimension name or metric name. Must be a name defined in dimensions or
        # metrics.
        # Corresponds to the JSON property `fieldName`
        # @return [String]
        attr_accessor :field_name
      
        # The result needs to be in a list of string values.
        # Corresponds to the JSON property `inListFilter`
        # @return [Google::Apis::AnalyticsdataV1alpha::InListFilter]
        attr_accessor :in_list_filter
      
        # A filter for null values. If True, a null dimension value is matched by this
        # filter. Null filter is commonly used inside a NOT filter expression. For
        # example, a NOT expression of a null filter removes rows when a dimension is
        # null.
        # Corresponds to the JSON property `nullFilter`
        # @return [Boolean]
        attr_accessor :null_filter
        alias_method :null_filter?, :null_filter
      
        # Filters for numeric or date values.
        # Corresponds to the JSON property `numericFilter`
        # @return [Google::Apis::AnalyticsdataV1alpha::NumericFilter]
        attr_accessor :numeric_filter
      
        # The filter for string
        # Corresponds to the JSON property `stringFilter`
        # @return [Google::Apis::AnalyticsdataV1alpha::StringFilter]
        attr_accessor :string_filter
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @between_filter = args[:between_filter] if args.key?(:between_filter)
          @field_name = args[:field_name] if args.key?(:field_name)
          @in_list_filter = args[:in_list_filter] if args.key?(:in_list_filter)
          @null_filter = args[:null_filter] if args.key?(:null_filter)
          @numeric_filter = args[:numeric_filter] if args.key?(:numeric_filter)
          @string_filter = args[:string_filter] if args.key?(:string_filter)
        end
      end
      
      # To express dimension or metric filters. The fields in the same
      # FilterExpression need to be either all dimensions or all metrics.
      class FilterExpression
        include Google::Apis::Core::Hashable
      
        # A list of filter expressions.
        # Corresponds to the JSON property `andGroup`
        # @return [Google::Apis::AnalyticsdataV1alpha::FilterExpressionList]
        attr_accessor :and_group
      
        # An expression to filter dimension or metric values.
        # Corresponds to the JSON property `filter`
        # @return [Google::Apis::AnalyticsdataV1alpha::Filter]
        attr_accessor :filter
      
        # To express dimension or metric filters. The fields in the same
        # FilterExpression need to be either all dimensions or all metrics.
        # Corresponds to the JSON property `notExpression`
        # @return [Google::Apis::AnalyticsdataV1alpha::FilterExpression]
        attr_accessor :not_expression
      
        # A list of filter expressions.
        # Corresponds to the JSON property `orGroup`
        # @return [Google::Apis::AnalyticsdataV1alpha::FilterExpressionList]
        attr_accessor :or_group
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @and_group = args[:and_group] if args.key?(:and_group)
          @filter = args[:filter] if args.key?(:filter)
          @not_expression = args[:not_expression] if args.key?(:not_expression)
          @or_group = args[:or_group] if args.key?(:or_group)
        end
      end
      
      # A list of filter expressions.
      class FilterExpressionList
        include Google::Apis::Core::Hashable
      
        # A list of filter expressions.
        # Corresponds to the JSON property `expressions`
        # @return [Array<Google::Apis::AnalyticsdataV1alpha::FilterExpression>]
        attr_accessor :expressions
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @expressions = args[:expressions] if args.key?(:expressions)
        end
      end
      
      # The result needs to be in a list of string values.
      class InListFilter
        include Google::Apis::Core::Hashable
      
        # If true, the string value is case sensitive.
        # Corresponds to the JSON property `caseSensitive`
        # @return [Boolean]
        attr_accessor :case_sensitive
        alias_method :case_sensitive?, :case_sensitive
      
        # The list of string values. Must be non-empty.
        # Corresponds to the JSON property `values`
        # @return [Array<String>]
        attr_accessor :values
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @case_sensitive = args[:case_sensitive] if args.key?(:case_sensitive)
          @values = args[:values] if args.key?(:values)
        end
      end
      
      # The dimensions and metrics currently accepted in reporting methods.
      class Metadata
        include Google::Apis::Core::Hashable
      
        # The dimension descriptions.
        # Corresponds to the JSON property `dimensions`
        # @return [Array<Google::Apis::AnalyticsdataV1alpha::DimensionMetadata>]
        attr_accessor :dimensions
      
        # The metric descriptions.
        # Corresponds to the JSON property `metrics`
        # @return [Array<Google::Apis::AnalyticsdataV1alpha::MetricMetadata>]
        attr_accessor :metrics
      
        # Resource name of this metadata.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @dimensions = args[:dimensions] if args.key?(:dimensions)
          @metrics = args[:metrics] if args.key?(:metrics)
          @name = args[:name] if args.key?(:name)
        end
      end
      
      # The quantitative measurements of a report. For example, the metric `eventCount`
      # is the total number of events. Requests are allowed up to 10 metrics.
      class Metric
        include Google::Apis::Core::Hashable
      
        # A mathematical expression for derived metrics. For example, the metric Event
        # count per user is `eventCount/totalUsers`.
        # Corresponds to the JSON property `expression`
        # @return [String]
        attr_accessor :expression
      
        # Indicates if a metric is invisible in the report response. If a metric is
        # invisible, the metric will not produce a column in the response, but can be
        # used in `metricFilter`, `orderBys`, or a metric `expression`.
        # Corresponds to the JSON property `invisible`
        # @return [Boolean]
        attr_accessor :invisible
        alias_method :invisible?, :invisible
      
        # The name of the metric. See the [API Metrics](https://developers.google.com/
        # analytics/trusted-testing/analytics-data/api-schema#metrics) for the list of
        # metric names. If `expression` is specified, `name` can be any string that you
        # would like. For example if `expression` is `screenPageViews/sessions`, you
        # could call that metric's name = `viewsPerSession`. Metrics are referenced by `
        # name` in `metricFilter`, `orderBys`, and metric `expression`.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @expression = args[:expression] if args.key?(:expression)
          @invisible = args[:invisible] if args.key?(:invisible)
          @name = args[:name] if args.key?(:name)
        end
      end
      
      # Describes a metric column in the report. Visible metrics requested in a report
      # produce column entries within rows and MetricHeaders. However, metrics used
      # exclusively within filters or expressions do not produce columns in a report;
      # correspondingly, those metrics do not produce headers.
      class MetricHeader
        include Google::Apis::Core::Hashable
      
        # The metric's name.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # The metric's data type.
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @name = args[:name] if args.key?(:name)
          @type = args[:type] if args.key?(:type)
        end
      end
      
      # Explains a metric.
      class MetricMetadata
        include Google::Apis::Core::Hashable
      
        # A metric name. Useable in [Metric](#Metric)'s `name`. For example, `eventCount`
        # .
        # Corresponds to the JSON property `apiName`
        # @return [String]
        attr_accessor :api_name
      
        # Still usable but deprecated names for this metric. If populated, this metric
        # is available by either `apiName` or one of `deprecatedApiNames` for a period
        # of time. After the deprecation period, the metric will be available only by `
        # apiName`.
        # Corresponds to the JSON property `deprecatedApiNames`
        # @return [Array<String>]
        attr_accessor :deprecated_api_names
      
        # Description of how this metric is used and calculated.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # The mathematical expression for this derived metric. Can be used in [Metric](#
        # Metric)'s `expression` field for equivalent reports. Most metrics are not
        # expressions, and for non-expressions, this field is empty.
        # Corresponds to the JSON property `expression`
        # @return [String]
        attr_accessor :expression
      
        # The type of this metric.
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        # This metric's name within the Google Analytics user interface. For example, `
        # Event count`.
        # Corresponds to the JSON property `uiName`
        # @return [String]
        attr_accessor :ui_name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @api_name = args[:api_name] if args.key?(:api_name)
          @deprecated_api_names = args[:deprecated_api_names] if args.key?(:deprecated_api_names)
          @description = args[:description] if args.key?(:description)
          @expression = args[:expression] if args.key?(:expression)
          @type = args[:type] if args.key?(:type)
          @ui_name = args[:ui_name] if args.key?(:ui_name)
        end
      end
      
      # Sorts by metric values.
      class MetricOrderBy
        include Google::Apis::Core::Hashable
      
        # A metric name in the request to order by.
        # Corresponds to the JSON property `metricName`
        # @return [String]
        attr_accessor :metric_name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @metric_name = args[:metric_name] if args.key?(:metric_name)
        end
      end
      
      # The value of a metric.
      class MetricValue
        include Google::Apis::Core::Hashable
      
        # Measurement value. See MetricHeader for type.
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
      
      # Filters for numeric or date values.
      class NumericFilter
        include Google::Apis::Core::Hashable
      
        # The operation type for this filter.
        # Corresponds to the JSON property `operation`
        # @return [String]
        attr_accessor :operation
      
        # To represent a number.
        # Corresponds to the JSON property `value`
        # @return [Google::Apis::AnalyticsdataV1alpha::NumericValue]
        attr_accessor :value
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @operation = args[:operation] if args.key?(:operation)
          @value = args[:value] if args.key?(:value)
        end
      end
      
      # To represent a number.
      class NumericValue
        include Google::Apis::Core::Hashable
      
        # Double value
        # Corresponds to the JSON property `doubleValue`
        # @return [Float]
        attr_accessor :double_value
      
        # Integer value
        # Corresponds to the JSON property `int64Value`
        # @return [Fixnum]
        attr_accessor :int64_value
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @double_value = args[:double_value] if args.key?(:double_value)
          @int64_value = args[:int64_value] if args.key?(:int64_value)
        end
      end
      
      # The sort options.
      class OrderBy
        include Google::Apis::Core::Hashable
      
        # If true, sorts by descending order.
        # Corresponds to the JSON property `desc`
        # @return [Boolean]
        attr_accessor :desc
        alias_method :desc?, :desc
      
        # Sorts by dimension values.
        # Corresponds to the JSON property `dimension`
        # @return [Google::Apis::AnalyticsdataV1alpha::DimensionOrderBy]
        attr_accessor :dimension
      
        # Sorts by metric values.
        # Corresponds to the JSON property `metric`
        # @return [Google::Apis::AnalyticsdataV1alpha::MetricOrderBy]
        attr_accessor :metric
      
        # Sorts by a pivot column group.
        # Corresponds to the JSON property `pivot`
        # @return [Google::Apis::AnalyticsdataV1alpha::PivotOrderBy]
        attr_accessor :pivot
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @desc = args[:desc] if args.key?(:desc)
          @dimension = args[:dimension] if args.key?(:dimension)
          @metric = args[:metric] if args.key?(:metric)
          @pivot = args[:pivot] if args.key?(:pivot)
        end
      end
      
      # Describes the visible dimension columns and rows in the report response.
      class Pivot
        include Google::Apis::Core::Hashable
      
        # Dimension names for visible columns in the report response. Including "
        # dateRange" produces a date range column; for each row in the response,
        # dimension values in the date range column will indicate the corresponding date
        # range from the request.
        # Corresponds to the JSON property `fieldNames`
        # @return [Array<String>]
        attr_accessor :field_names
      
        # The number of rows to return in this pivot. If unspecified, 10 rows are
        # returned. If -1, all rows are returned.
        # Corresponds to the JSON property `limit`
        # @return [Fixnum]
        attr_accessor :limit
      
        # Aggregate the metrics by dimensions in this pivot using the specified
        # metric_aggregations.
        # Corresponds to the JSON property `metricAggregations`
        # @return [Array<String>]
        attr_accessor :metric_aggregations
      
        # The row count of the start row. The first row is counted as row 0.
        # Corresponds to the JSON property `offset`
        # @return [Fixnum]
        attr_accessor :offset
      
        # Specifies how dimensions are ordered in the pivot. In the first Pivot, the
        # OrderBys determine Row and PivotDimensionHeader ordering; in subsequent Pivots,
        # the OrderBys determine only PivotDimensionHeader ordering. Dimensions
        # specified in these OrderBys must be a subset of Pivot.field_names.
        # Corresponds to the JSON property `orderBys`
        # @return [Array<Google::Apis::AnalyticsdataV1alpha::OrderBy>]
        attr_accessor :order_bys
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @field_names = args[:field_names] if args.key?(:field_names)
          @limit = args[:limit] if args.key?(:limit)
          @metric_aggregations = args[:metric_aggregations] if args.key?(:metric_aggregations)
          @offset = args[:offset] if args.key?(:offset)
          @order_bys = args[:order_bys] if args.key?(:order_bys)
        end
      end
      
      # Summarizes dimension values from a row for this pivot.
      class PivotDimensionHeader
        include Google::Apis::Core::Hashable
      
        # Values of multiple dimensions in a pivot.
        # Corresponds to the JSON property `dimensionValues`
        # @return [Array<Google::Apis::AnalyticsdataV1alpha::DimensionValue>]
        attr_accessor :dimension_values
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @dimension_values = args[:dimension_values] if args.key?(:dimension_values)
        end
      end
      
      # Dimensions' values in a single pivot.
      class PivotHeader
        include Google::Apis::Core::Hashable
      
        # The size is the same as the cardinality of the corresponding dimension
        # combinations.
        # Corresponds to the JSON property `pivotDimensionHeaders`
        # @return [Array<Google::Apis::AnalyticsdataV1alpha::PivotDimensionHeader>]
        attr_accessor :pivot_dimension_headers
      
        # The cardinality of the pivot as if offset = 0 and limit = -1. The total number
        # of rows for this pivot's fields regardless of how the parameters offset and
        # limit are specified in the request.
        # Corresponds to the JSON property `rowCount`
        # @return [Fixnum]
        attr_accessor :row_count
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @pivot_dimension_headers = args[:pivot_dimension_headers] if args.key?(:pivot_dimension_headers)
          @row_count = args[:row_count] if args.key?(:row_count)
        end
      end
      
      # Sorts by a pivot column group.
      class PivotOrderBy
        include Google::Apis::Core::Hashable
      
        # In the response to order by, order rows by this column. Must be a metric name
        # from the request.
        # Corresponds to the JSON property `metricName`
        # @return [String]
        attr_accessor :metric_name
      
        # Used to select a dimension name and value pivot. If multiple pivot selections
        # are given, the sort occurs on rows where all pivot selection dimension name
        # and value pairs match the row's dimension name and value pair.
        # Corresponds to the JSON property `pivotSelections`
        # @return [Array<Google::Apis::AnalyticsdataV1alpha::PivotSelection>]
        attr_accessor :pivot_selections
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @metric_name = args[:metric_name] if args.key?(:metric_name)
          @pivot_selections = args[:pivot_selections] if args.key?(:pivot_selections)
        end
      end
      
      # A pair of dimension names and values. Rows with this dimension pivot pair are
      # ordered by the metric's value. For example if pivots = ``"browser", "Chrome"``
      # and metric_name = "Sessions", then the rows will be sorted based on Sessions
      # in Chrome. ---------|----------|----------------|----------|---------------- |
      # Chrome | Chrome | Safari | Safari ---------|----------|----------------|-------
      # ---|---------------- Country | Sessions | Pages/Sessions | Sessions | Pages/
      # Sessions ---------|----------|----------------|----------|---------------- US |
      # 2 | 2 | 3 | 1 ---------|----------|----------------|----------|---------------
      # - Canada | 3 | 1 | 4 | 1 ---------|----------|----------------|----------|-----
      # -----------
      class PivotSelection
        include Google::Apis::Core::Hashable
      
        # Must be a dimension name from the request.
        # Corresponds to the JSON property `dimensionName`
        # @return [String]
        attr_accessor :dimension_name
      
        # Order by only when the named dimension is this value.
        # Corresponds to the JSON property `dimensionValue`
        # @return [String]
        attr_accessor :dimension_value
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @dimension_name = args[:dimension_name] if args.key?(:dimension_name)
          @dimension_value = args[:dimension_value] if args.key?(:dimension_value)
        end
      end
      
      # Current state of all quotas for this Analytics Property. If any quota for a
      # property is exhausted, all requests to that property will return Resource
      # Exhausted errors.
      class PropertyQuota
        include Google::Apis::Core::Hashable
      
        # Current state for a particular quota group.
        # Corresponds to the JSON property `concurrentRequests`
        # @return [Google::Apis::AnalyticsdataV1alpha::QuotaStatus]
        attr_accessor :concurrent_requests
      
        # Current state for a particular quota group.
        # Corresponds to the JSON property `serverErrorsPerProjectPerHour`
        # @return [Google::Apis::AnalyticsdataV1alpha::QuotaStatus]
        attr_accessor :server_errors_per_project_per_hour
      
        # Current state for a particular quota group.
        # Corresponds to the JSON property `tokensPerDay`
        # @return [Google::Apis::AnalyticsdataV1alpha::QuotaStatus]
        attr_accessor :tokens_per_day
      
        # Current state for a particular quota group.
        # Corresponds to the JSON property `tokensPerHour`
        # @return [Google::Apis::AnalyticsdataV1alpha::QuotaStatus]
        attr_accessor :tokens_per_hour
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @concurrent_requests = args[:concurrent_requests] if args.key?(:concurrent_requests)
          @server_errors_per_project_per_hour = args[:server_errors_per_project_per_hour] if args.key?(:server_errors_per_project_per_hour)
          @tokens_per_day = args[:tokens_per_day] if args.key?(:tokens_per_day)
          @tokens_per_hour = args[:tokens_per_hour] if args.key?(:tokens_per_hour)
        end
      end
      
      # Current state for a particular quota group.
      class QuotaStatus
        include Google::Apis::Core::Hashable
      
        # Quota consumed by this request.
        # Corresponds to the JSON property `consumed`
        # @return [Fixnum]
        attr_accessor :consumed
      
        # Quota remaining after this request.
        # Corresponds to the JSON property `remaining`
        # @return [Fixnum]
        attr_accessor :remaining
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @consumed = args[:consumed] if args.key?(:consumed)
          @remaining = args[:remaining] if args.key?(:remaining)
        end
      end
      
      # Response's metadata carrying additional information about the report content.
      class ResponseMetaData
        include Google::Apis::Core::Hashable
      
        # If true, indicates some buckets of dimension combinations are rolled into "(
        # other)" row. This can happen for high cardinality reports.
        # Corresponds to the JSON property `dataLossFromOtherRow`
        # @return [Boolean]
        attr_accessor :data_loss_from_other_row
        alias_method :data_loss_from_other_row?, :data_loss_from_other_row
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @data_loss_from_other_row = args[:data_loss_from_other_row] if args.key?(:data_loss_from_other_row)
        end
      end
      
      # Report data for each row. For example if RunReportRequest contains: ```none "
      # dimensions": [ ` "name": "eventName" `, ` "name": "countryId" ` ], "metrics": [
      # ` "name": "eventCount" ` ] ``` One row with 'in_app_purchase' as the
      # eventName, 'JP' as the countryId, and 15 as the eventCount, would be: ```none "
      # dimensionValues": [ ` "value": "in_app_purchase" `, ` "value": "JP" ` ], "
      # metricValues": [ ` "value": "15" ` ] ```
      class Row
        include Google::Apis::Core::Hashable
      
        # List of requested dimension values. In a PivotReport, dimension_values are
        # only listed for dimensions included in a pivot.
        # Corresponds to the JSON property `dimensionValues`
        # @return [Array<Google::Apis::AnalyticsdataV1alpha::DimensionValue>]
        attr_accessor :dimension_values
      
        # List of requested visible metric values.
        # Corresponds to the JSON property `metricValues`
        # @return [Array<Google::Apis::AnalyticsdataV1alpha::MetricValue>]
        attr_accessor :metric_values
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @dimension_values = args[:dimension_values] if args.key?(:dimension_values)
          @metric_values = args[:metric_values] if args.key?(:metric_values)
        end
      end
      
      # The request to generate a pivot report.
      class RunPivotReportRequest
        include Google::Apis::Core::Hashable
      
        # Specification for a cohort report.
        # Corresponds to the JSON property `cohortSpec`
        # @return [Google::Apis::AnalyticsdataV1alpha::CohortSpec]
        attr_accessor :cohort_spec
      
        # A currency code in ISO4217 format, such as "AED", "USD", "JPY". If the field
        # is empty, the report uses the entity's default currency.
        # Corresponds to the JSON property `currencyCode`
        # @return [String]
        attr_accessor :currency_code
      
        # The date range to retrieve event data for the report. If multiple date ranges
        # are specified, event data from each date range is used in the report. A
        # special dimension with field name "dateRange" can be included in a Pivot's
        # field names; if included, the report compares between date ranges. In a cohort
        # request, this `dateRanges` must be unspecified.
        # Corresponds to the JSON property `dateRanges`
        # @return [Array<Google::Apis::AnalyticsdataV1alpha::DateRange>]
        attr_accessor :date_ranges
      
        # To express dimension or metric filters. The fields in the same
        # FilterExpression need to be either all dimensions or all metrics.
        # Corresponds to the JSON property `dimensionFilter`
        # @return [Google::Apis::AnalyticsdataV1alpha::FilterExpression]
        attr_accessor :dimension_filter
      
        # The dimensions requested. All defined dimensions must be used by one of the
        # following: dimension_expression, dimension_filter, pivots, order_bys.
        # Corresponds to the JSON property `dimensions`
        # @return [Array<Google::Apis::AnalyticsdataV1alpha::Dimension>]
        attr_accessor :dimensions
      
        # The unique identifier of the property whose events are tracked.
        # Corresponds to the JSON property `entity`
        # @return [Google::Apis::AnalyticsdataV1alpha::Entity]
        attr_accessor :entity
      
        # If false or unspecified, each row with all metrics equal to 0 will not be
        # returned. If true, these rows will be returned if they are not separately
        # removed by a filter.
        # Corresponds to the JSON property `keepEmptyRows`
        # @return [Boolean]
        attr_accessor :keep_empty_rows
        alias_method :keep_empty_rows?, :keep_empty_rows
      
        # To express dimension or metric filters. The fields in the same
        # FilterExpression need to be either all dimensions or all metrics.
        # Corresponds to the JSON property `metricFilter`
        # @return [Google::Apis::AnalyticsdataV1alpha::FilterExpression]
        attr_accessor :metric_filter
      
        # The metrics requested, at least one metric needs to be specified. All defined
        # metrics must be used by one of the following: metric_expression, metric_filter,
        # order_bys.
        # Corresponds to the JSON property `metrics`
        # @return [Array<Google::Apis::AnalyticsdataV1alpha::Metric>]
        attr_accessor :metrics
      
        # Describes the visual format of the report's dimensions in columns or rows. The
        # union of the fieldNames (dimension names) in all pivots must be a subset of
        # dimension names defined in Dimensions. No two pivots can share a dimension. A
        # dimension is only visible if it appears in a pivot.
        # Corresponds to the JSON property `pivots`
        # @return [Array<Google::Apis::AnalyticsdataV1alpha::Pivot>]
        attr_accessor :pivots
      
        # Toggles whether to return the current state of this Analytics Property's quota.
        # Quota is returned in [PropertyQuota](#PropertyQuota).
        # Corresponds to the JSON property `returnPropertyQuota`
        # @return [Boolean]
        attr_accessor :return_property_quota
        alias_method :return_property_quota?, :return_property_quota
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @cohort_spec = args[:cohort_spec] if args.key?(:cohort_spec)
          @currency_code = args[:currency_code] if args.key?(:currency_code)
          @date_ranges = args[:date_ranges] if args.key?(:date_ranges)
          @dimension_filter = args[:dimension_filter] if args.key?(:dimension_filter)
          @dimensions = args[:dimensions] if args.key?(:dimensions)
          @entity = args[:entity] if args.key?(:entity)
          @keep_empty_rows = args[:keep_empty_rows] if args.key?(:keep_empty_rows)
          @metric_filter = args[:metric_filter] if args.key?(:metric_filter)
          @metrics = args[:metrics] if args.key?(:metrics)
          @pivots = args[:pivots] if args.key?(:pivots)
          @return_property_quota = args[:return_property_quota] if args.key?(:return_property_quota)
        end
      end
      
      # The response pivot report table corresponding to a pivot request.
      class RunPivotReportResponse
        include Google::Apis::Core::Hashable
      
        # Aggregation of metric values. Can be totals, minimums, or maximums. The
        # returned aggregations are controlled by the metric_aggregations in the pivot.
        # The type of aggregation returned in each row is shown by the dimension_values
        # which are set to "RESERVED_".
        # Corresponds to the JSON property `aggregates`
        # @return [Array<Google::Apis::AnalyticsdataV1alpha::Row>]
        attr_accessor :aggregates
      
        # Describes dimension columns. The number of DimensionHeaders and ordering of
        # DimensionHeaders matches the dimensions present in rows.
        # Corresponds to the JSON property `dimensionHeaders`
        # @return [Array<Google::Apis::AnalyticsdataV1alpha::DimensionHeader>]
        attr_accessor :dimension_headers
      
        # Response's metadata carrying additional information about the report content.
        # Corresponds to the JSON property `metadata`
        # @return [Google::Apis::AnalyticsdataV1alpha::ResponseMetaData]
        attr_accessor :metadata
      
        # Describes metric columns. The number of MetricHeaders and ordering of
        # MetricHeaders matches the metrics present in rows.
        # Corresponds to the JSON property `metricHeaders`
        # @return [Array<Google::Apis::AnalyticsdataV1alpha::MetricHeader>]
        attr_accessor :metric_headers
      
        # Summarizes the columns and rows created by a pivot. Each pivot in the request
        # produces one header in the response. If we have a request like this: "pivots":
        # [` "fieldNames": ["country", "city"] `, ` "fieldNames": "eventName" `] We will
        # have the following `pivotHeaders` in the response: "pivotHeaders" : [` "
        # dimensionHeaders": [` "dimensionValues": [ ` "value": "United Kingdom" `, ` "
        # value": "London" ` ] `, ` "dimensionValues": [ ` "value": "Japan" `, ` "value":
        # "Osaka" ` ] `] `, ` "dimensionHeaders": [` "dimensionValues": [` "value": "
        # session_start" `] `, ` "dimensionValues": [` "value": "scroll" `] `] `]
        # Corresponds to the JSON property `pivotHeaders`
        # @return [Array<Google::Apis::AnalyticsdataV1alpha::PivotHeader>]
        attr_accessor :pivot_headers
      
        # Current state of all quotas for this Analytics Property. If any quota for a
        # property is exhausted, all requests to that property will return Resource
        # Exhausted errors.
        # Corresponds to the JSON property `propertyQuota`
        # @return [Google::Apis::AnalyticsdataV1alpha::PropertyQuota]
        attr_accessor :property_quota
      
        # Rows of dimension value combinations and metric values in the report.
        # Corresponds to the JSON property `rows`
        # @return [Array<Google::Apis::AnalyticsdataV1alpha::Row>]
        attr_accessor :rows
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @aggregates = args[:aggregates] if args.key?(:aggregates)
          @dimension_headers = args[:dimension_headers] if args.key?(:dimension_headers)
          @metadata = args[:metadata] if args.key?(:metadata)
          @metric_headers = args[:metric_headers] if args.key?(:metric_headers)
          @pivot_headers = args[:pivot_headers] if args.key?(:pivot_headers)
          @property_quota = args[:property_quota] if args.key?(:property_quota)
          @rows = args[:rows] if args.key?(:rows)
        end
      end
      
      # The request to generate a realtime report.
      class RunRealtimeReportRequest
        include Google::Apis::Core::Hashable
      
        # To express dimension or metric filters. The fields in the same
        # FilterExpression need to be either all dimensions or all metrics.
        # Corresponds to the JSON property `dimensionFilter`
        # @return [Google::Apis::AnalyticsdataV1alpha::FilterExpression]
        attr_accessor :dimension_filter
      
        # The dimensions requested and displayed.
        # Corresponds to the JSON property `dimensions`
        # @return [Array<Google::Apis::AnalyticsdataV1alpha::Dimension>]
        attr_accessor :dimensions
      
        # The number of rows to return. If unspecified, 10 rows are returned. If -1, all
        # rows are returned.
        # Corresponds to the JSON property `limit`
        # @return [Fixnum]
        attr_accessor :limit
      
        # Aggregation of metrics. Aggregated metric values will be shown in rows where
        # the dimension_values are set to "RESERVED_(MetricAggregation)".
        # Corresponds to the JSON property `metricAggregations`
        # @return [Array<String>]
        attr_accessor :metric_aggregations
      
        # To express dimension or metric filters. The fields in the same
        # FilterExpression need to be either all dimensions or all metrics.
        # Corresponds to the JSON property `metricFilter`
        # @return [Google::Apis::AnalyticsdataV1alpha::FilterExpression]
        attr_accessor :metric_filter
      
        # The metrics requested and displayed.
        # Corresponds to the JSON property `metrics`
        # @return [Array<Google::Apis::AnalyticsdataV1alpha::Metric>]
        attr_accessor :metrics
      
        # Specifies how rows are ordered in the response.
        # Corresponds to the JSON property `orderBys`
        # @return [Array<Google::Apis::AnalyticsdataV1alpha::OrderBy>]
        attr_accessor :order_bys
      
        # Toggles whether to return the current state of this Analytics Property's
        # Realtime quota. Quota is returned in [PropertyQuota](#PropertyQuota).
        # Corresponds to the JSON property `returnPropertyQuota`
        # @return [Boolean]
        attr_accessor :return_property_quota
        alias_method :return_property_quota?, :return_property_quota
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @dimension_filter = args[:dimension_filter] if args.key?(:dimension_filter)
          @dimensions = args[:dimensions] if args.key?(:dimensions)
          @limit = args[:limit] if args.key?(:limit)
          @metric_aggregations = args[:metric_aggregations] if args.key?(:metric_aggregations)
          @metric_filter = args[:metric_filter] if args.key?(:metric_filter)
          @metrics = args[:metrics] if args.key?(:metrics)
          @order_bys = args[:order_bys] if args.key?(:order_bys)
          @return_property_quota = args[:return_property_quota] if args.key?(:return_property_quota)
        end
      end
      
      # The response realtime report table corresponding to a request.
      class RunRealtimeReportResponse
        include Google::Apis::Core::Hashable
      
        # Describes dimension columns. The number of DimensionHeaders and ordering of
        # DimensionHeaders matches the dimensions present in rows.
        # Corresponds to the JSON property `dimensionHeaders`
        # @return [Array<Google::Apis::AnalyticsdataV1alpha::DimensionHeader>]
        attr_accessor :dimension_headers
      
        # If requested, the maximum values of metrics.
        # Corresponds to the JSON property `maximums`
        # @return [Array<Google::Apis::AnalyticsdataV1alpha::Row>]
        attr_accessor :maximums
      
        # Describes metric columns. The number of MetricHeaders and ordering of
        # MetricHeaders matches the metrics present in rows.
        # Corresponds to the JSON property `metricHeaders`
        # @return [Array<Google::Apis::AnalyticsdataV1alpha::MetricHeader>]
        attr_accessor :metric_headers
      
        # If requested, the minimum values of metrics.
        # Corresponds to the JSON property `minimums`
        # @return [Array<Google::Apis::AnalyticsdataV1alpha::Row>]
        attr_accessor :minimums
      
        # Current state of all quotas for this Analytics Property. If any quota for a
        # property is exhausted, all requests to that property will return Resource
        # Exhausted errors.
        # Corresponds to the JSON property `propertyQuota`
        # @return [Google::Apis::AnalyticsdataV1alpha::PropertyQuota]
        attr_accessor :property_quota
      
        # The total number of rows in the query result, regardless of the number of rows
        # returned in the response. For example if a query returns 175 rows and includes
        # limit = 50 in the API request, the response will contain row_count = 175 but
        # only 50 rows.
        # Corresponds to the JSON property `rowCount`
        # @return [Fixnum]
        attr_accessor :row_count
      
        # Rows of dimension value combinations and metric values in the report.
        # Corresponds to the JSON property `rows`
        # @return [Array<Google::Apis::AnalyticsdataV1alpha::Row>]
        attr_accessor :rows
      
        # If requested, the totaled values of metrics.
        # Corresponds to the JSON property `totals`
        # @return [Array<Google::Apis::AnalyticsdataV1alpha::Row>]
        attr_accessor :totals
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @dimension_headers = args[:dimension_headers] if args.key?(:dimension_headers)
          @maximums = args[:maximums] if args.key?(:maximums)
          @metric_headers = args[:metric_headers] if args.key?(:metric_headers)
          @minimums = args[:minimums] if args.key?(:minimums)
          @property_quota = args[:property_quota] if args.key?(:property_quota)
          @row_count = args[:row_count] if args.key?(:row_count)
          @rows = args[:rows] if args.key?(:rows)
          @totals = args[:totals] if args.key?(:totals)
        end
      end
      
      # The request to generate a report.
      class RunReportRequest
        include Google::Apis::Core::Hashable
      
        # Specification for a cohort report.
        # Corresponds to the JSON property `cohortSpec`
        # @return [Google::Apis::AnalyticsdataV1alpha::CohortSpec]
        attr_accessor :cohort_spec
      
        # A currency code in ISO4217 format, such as "AED", "USD", "JPY". If the field
        # is empty, the report uses the entity's default currency.
        # Corresponds to the JSON property `currencyCode`
        # @return [String]
        attr_accessor :currency_code
      
        # Date ranges of data to read. If multiple date ranges are requested, each
        # response row will contain a zero based date range index. If two date ranges
        # overlap, the event data for the overlapping days is included in the response
        # rows for both date ranges. In a cohort request, this `dateRanges` must be
        # unspecified.
        # Corresponds to the JSON property `dateRanges`
        # @return [Array<Google::Apis::AnalyticsdataV1alpha::DateRange>]
        attr_accessor :date_ranges
      
        # To express dimension or metric filters. The fields in the same
        # FilterExpression need to be either all dimensions or all metrics.
        # Corresponds to the JSON property `dimensionFilter`
        # @return [Google::Apis::AnalyticsdataV1alpha::FilterExpression]
        attr_accessor :dimension_filter
      
        # The dimensions requested and displayed.
        # Corresponds to the JSON property `dimensions`
        # @return [Array<Google::Apis::AnalyticsdataV1alpha::Dimension>]
        attr_accessor :dimensions
      
        # The unique identifier of the property whose events are tracked.
        # Corresponds to the JSON property `entity`
        # @return [Google::Apis::AnalyticsdataV1alpha::Entity]
        attr_accessor :entity
      
        # If false or unspecified, each row with all metrics equal to 0 will not be
        # returned. If true, these rows will be returned if they are not separately
        # removed by a filter.
        # Corresponds to the JSON property `keepEmptyRows`
        # @return [Boolean]
        attr_accessor :keep_empty_rows
        alias_method :keep_empty_rows?, :keep_empty_rows
      
        # The number of rows to return. If unspecified, 10 rows are returned. If -1, all
        # rows are returned. To learn more about this pagination parameter, see [
        # Pagination](basics#pagination).
        # Corresponds to the JSON property `limit`
        # @return [Fixnum]
        attr_accessor :limit
      
        # Aggregation of metrics. Aggregated metric values will be shown in rows where
        # the dimension_values are set to "RESERVED_(MetricAggregation)".
        # Corresponds to the JSON property `metricAggregations`
        # @return [Array<String>]
        attr_accessor :metric_aggregations
      
        # To express dimension or metric filters. The fields in the same
        # FilterExpression need to be either all dimensions or all metrics.
        # Corresponds to the JSON property `metricFilter`
        # @return [Google::Apis::AnalyticsdataV1alpha::FilterExpression]
        attr_accessor :metric_filter
      
        # The metrics requested and displayed.
        # Corresponds to the JSON property `metrics`
        # @return [Array<Google::Apis::AnalyticsdataV1alpha::Metric>]
        attr_accessor :metrics
      
        # The row count of the start row. The first row is counted as row 0. To learn
        # more about this pagination parameter, see [Pagination](basics#pagination).
        # Corresponds to the JSON property `offset`
        # @return [Fixnum]
        attr_accessor :offset
      
        # Specifies how rows are ordered in the response.
        # Corresponds to the JSON property `orderBys`
        # @return [Array<Google::Apis::AnalyticsdataV1alpha::OrderBy>]
        attr_accessor :order_bys
      
        # Toggles whether to return the current state of this Analytics Property's quota.
        # Quota is returned in [PropertyQuota](#PropertyQuota).
        # Corresponds to the JSON property `returnPropertyQuota`
        # @return [Boolean]
        attr_accessor :return_property_quota
        alias_method :return_property_quota?, :return_property_quota
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @cohort_spec = args[:cohort_spec] if args.key?(:cohort_spec)
          @currency_code = args[:currency_code] if args.key?(:currency_code)
          @date_ranges = args[:date_ranges] if args.key?(:date_ranges)
          @dimension_filter = args[:dimension_filter] if args.key?(:dimension_filter)
          @dimensions = args[:dimensions] if args.key?(:dimensions)
          @entity = args[:entity] if args.key?(:entity)
          @keep_empty_rows = args[:keep_empty_rows] if args.key?(:keep_empty_rows)
          @limit = args[:limit] if args.key?(:limit)
          @metric_aggregations = args[:metric_aggregations] if args.key?(:metric_aggregations)
          @metric_filter = args[:metric_filter] if args.key?(:metric_filter)
          @metrics = args[:metrics] if args.key?(:metrics)
          @offset = args[:offset] if args.key?(:offset)
          @order_bys = args[:order_bys] if args.key?(:order_bys)
          @return_property_quota = args[:return_property_quota] if args.key?(:return_property_quota)
        end
      end
      
      # The response report table corresponding to a request.
      class RunReportResponse
        include Google::Apis::Core::Hashable
      
        # Describes dimension columns. The number of DimensionHeaders and ordering of
        # DimensionHeaders matches the dimensions present in rows.
        # Corresponds to the JSON property `dimensionHeaders`
        # @return [Array<Google::Apis::AnalyticsdataV1alpha::DimensionHeader>]
        attr_accessor :dimension_headers
      
        # If requested, the maximum values of metrics.
        # Corresponds to the JSON property `maximums`
        # @return [Array<Google::Apis::AnalyticsdataV1alpha::Row>]
        attr_accessor :maximums
      
        # Response's metadata carrying additional information about the report content.
        # Corresponds to the JSON property `metadata`
        # @return [Google::Apis::AnalyticsdataV1alpha::ResponseMetaData]
        attr_accessor :metadata
      
        # Describes metric columns. The number of MetricHeaders and ordering of
        # MetricHeaders matches the metrics present in rows.
        # Corresponds to the JSON property `metricHeaders`
        # @return [Array<Google::Apis::AnalyticsdataV1alpha::MetricHeader>]
        attr_accessor :metric_headers
      
        # If requested, the minimum values of metrics.
        # Corresponds to the JSON property `minimums`
        # @return [Array<Google::Apis::AnalyticsdataV1alpha::Row>]
        attr_accessor :minimums
      
        # Current state of all quotas for this Analytics Property. If any quota for a
        # property is exhausted, all requests to that property will return Resource
        # Exhausted errors.
        # Corresponds to the JSON property `propertyQuota`
        # @return [Google::Apis::AnalyticsdataV1alpha::PropertyQuota]
        attr_accessor :property_quota
      
        # The total number of rows in the query result, regardless of the number of rows
        # returned in the response. For example if a query returns 175 rows and includes
        # limit = 50 in the API request, the response will contain row_count = 175 but
        # only 50 rows. To learn more about this pagination parameter, see [Pagination](
        # basics#pagination).
        # Corresponds to the JSON property `rowCount`
        # @return [Fixnum]
        attr_accessor :row_count
      
        # Rows of dimension value combinations and metric values in the report.
        # Corresponds to the JSON property `rows`
        # @return [Array<Google::Apis::AnalyticsdataV1alpha::Row>]
        attr_accessor :rows
      
        # If requested, the totaled values of metrics.
        # Corresponds to the JSON property `totals`
        # @return [Array<Google::Apis::AnalyticsdataV1alpha::Row>]
        attr_accessor :totals
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @dimension_headers = args[:dimension_headers] if args.key?(:dimension_headers)
          @maximums = args[:maximums] if args.key?(:maximums)
          @metadata = args[:metadata] if args.key?(:metadata)
          @metric_headers = args[:metric_headers] if args.key?(:metric_headers)
          @minimums = args[:minimums] if args.key?(:minimums)
          @property_quota = args[:property_quota] if args.key?(:property_quota)
          @row_count = args[:row_count] if args.key?(:row_count)
          @rows = args[:rows] if args.key?(:rows)
          @totals = args[:totals] if args.key?(:totals)
        end
      end
      
      # The filter for string
      class StringFilter
        include Google::Apis::Core::Hashable
      
        # If true, the string value is case sensitive.
        # Corresponds to the JSON property `caseSensitive`
        # @return [Boolean]
        attr_accessor :case_sensitive
        alias_method :case_sensitive?, :case_sensitive
      
        # The match type for this filter.
        # Corresponds to the JSON property `matchType`
        # @return [String]
        attr_accessor :match_type
      
        # The string value used for the matching.
        # Corresponds to the JSON property `value`
        # @return [String]
        attr_accessor :value
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @case_sensitive = args[:case_sensitive] if args.key?(:case_sensitive)
          @match_type = args[:match_type] if args.key?(:match_type)
          @value = args[:value] if args.key?(:value)
        end
      end
    end
  end
end
