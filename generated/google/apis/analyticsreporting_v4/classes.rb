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
    module AnalyticsreportingV4
      
      # Defines a cohort. A cohort is a group of users who share a common
      # characteristic. For example, all users with the same acquisition date
      # belong to the same cohort.
      class Cohort
        include Google::Apis::Core::Hashable
      
        # A contiguous set of days: startDate, startDate + 1 day, ..., endDate.
        # The start and end dates are specified in
        # [ISO8601](https://en.wikipedia.org/wiki/ISO_8601) date format `YYYY-MM-DD`.
        # Corresponds to the JSON property `dateRange`
        # @return [Google::Apis::AnalyticsreportingV4::DateRange]
        attr_accessor :date_range
      
        # A unique name for the cohort. If not defined name will be auto-generated
        # with values cohort_[1234...].
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Type of the cohort. The only supported type as of now is
        # `FIRST_VISIT_DATE`. If this field is unspecified the cohort is treated
        # as `FIRST_VISIT_DATE` type cohort.
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @date_range = args[:date_range] if args.key?(:date_range)
          @name = args[:name] if args.key?(:name)
          @type = args[:type] if args.key?(:type)
        end
      end
      
      # Defines a cohort group.
      # For example:
      # "cohortGroup": `
      # "cohorts": [`
      # "name": "cohort 1",
      # "type": "FIRST_VISIT_DATE",
      # "dateRange": ` "startDate": "2015-08-01", "endDate": "2015-08-01" `
      # `,`
      # "name": "cohort 2"
      # "type": "FIRST_VISIT_DATE"
      # "dateRange": ` "startDate": "2015-07-01", "endDate": "2015-07-01" `
      # `]
      # `
      class CohortGroup
        include Google::Apis::Core::Hashable
      
        # The definition for the cohort.
        # Corresponds to the JSON property `cohorts`
        # @return [Array<Google::Apis::AnalyticsreportingV4::Cohort>]
        attr_accessor :cohorts
      
        # Enable Life Time Value (LTV).  LTV measures lifetime value for users
        # acquired through different channels.
        # Please see:
        # [Cohort Analysis](https://support.google.com/analytics/answer/6074676) and
        # [Lifetime Value](https://support.google.com/analytics/answer/6182550)
        # If the value of lifetimeValue is false:
        # - The metric values are similar to the values in the web interface cohort
        # report.
        # - The cohort definition date ranges must be aligned to the calendar week
        # and month. i.e. while requesting `ga:cohortNthWeek` the `startDate` in
        # the cohort definition should be a Sunday and the `endDate` should be the
        # following Saturday, and for `ga:cohortNthMonth`, the `startDate`
        # should be the 1st of the month and `endDate` should be the last day
        # of the month.
        # When the lifetimeValue is true:
        # - The metric values will correspond to the values in the web interface
        # LifeTime value report.
        # - The Lifetime Value report shows you how user value (Revenue) and
        # engagement (Appviews, Goal Completions, Sessions, and Session Duration)
        # grow during the 90 days after a user is acquired.
        # - The metrics are calculated as a cumulative average per user per the time
        # increment.
        # - The cohort definition date ranges need not be aligned to the calendar
        # week and month boundaries.
        # - The `viewId` must be an
        # [app view ID](https://support.google.com/analytics/answer/2649553#
        # WebVersusAppViews)
        # Corresponds to the JSON property `lifetimeValue`
        # @return [Boolean]
        attr_accessor :lifetime_value
        alias_method :lifetime_value?, :lifetime_value
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @cohorts = args[:cohorts] if args.key?(:cohorts)
          @lifetime_value = args[:lifetime_value] if args.key?(:lifetime_value)
        end
      end
      
      # Column headers.
      class ColumnHeader
        include Google::Apis::Core::Hashable
      
        # The dimension names in the response.
        # Corresponds to the JSON property `dimensions`
        # @return [Array<String>]
        attr_accessor :dimensions
      
        # The headers for the metrics.
        # Corresponds to the JSON property `metricHeader`
        # @return [Google::Apis::AnalyticsreportingV4::MetricHeader]
        attr_accessor :metric_header
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @dimensions = args[:dimensions] if args.key?(:dimensions)
          @metric_header = args[:metric_header] if args.key?(:metric_header)
        end
      end
      
      # A contiguous set of days: startDate, startDate + 1 day, ..., endDate.
      # The start and end dates are specified in
      # [ISO8601](https://en.wikipedia.org/wiki/ISO_8601) date format `YYYY-MM-DD`.
      class DateRange
        include Google::Apis::Core::Hashable
      
        # The end date for the query in the format `YYYY-MM-DD`.
        # Corresponds to the JSON property `endDate`
        # @return [String]
        attr_accessor :end_date
      
        # The start date for the query in the format `YYYY-MM-DD`.
        # Corresponds to the JSON property `startDate`
        # @return [String]
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
      
      # Used to return a list of metrics for a single DateRange / dimension
      # combination
      class DateRangeValues
        include Google::Apis::Core::Hashable
      
        # The values of each pivot region.
        # Corresponds to the JSON property `pivotValueRegions`
        # @return [Array<Google::Apis::AnalyticsreportingV4::PivotValueRegion>]
        attr_accessor :pivot_value_regions
      
        # Each value corresponds to each Metric in the request.
        # Corresponds to the JSON property `values`
        # @return [Array<String>]
        attr_accessor :values
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @pivot_value_regions = args[:pivot_value_regions] if args.key?(:pivot_value_regions)
          @values = args[:values] if args.key?(:values)
        end
      end
      
      # [Dimensions](https://support.google.com/analytics/answer/1033861)
      # are attributes of your data. For example, the dimension `ga:city`
      # indicates the city, for example, "Paris" or "New York", from which
      # a session originates.
      class Dimension
        include Google::Apis::Core::Hashable
      
        # If non-empty, we place dimension values into buckets after string to
        # int64. Dimension values that are not the string representation of an
        # integral value will be converted to zero.  The bucket values have to be in
        # increasing order.  Each bucket is closed on the lower end, and open on the
        # upper end. The "first" bucket includes all values less than the first
        # boundary, the "last" bucket includes all values up to infinity. Dimension
        # values that fall in a bucket get transformed to a new dimension value. For
        # example, if one gives a list of "0, 1, 3, 4, 7", then we return the
        # following buckets:
        # - bucket #1: values < 0, dimension value "<0"
        # - bucket #2: values in [0,1), dimension value "0"
        # - bucket #3: values in [1,3), dimension value "1-2"
        # - bucket #4: values in [3,4), dimension value "3"
        # - bucket #5: values in [4,7), dimension value "4-6"
        # - bucket #6: values >= 7, dimension value "7+"
        # NOTE: If you are applying histogram mutation on any dimension, and using
        # that dimension in sort, you will want to use the sort type
        # `HISTOGRAM_BUCKET` for that purpose. Without that the dimension values
        # will be sorted according to dictionary
        # (lexicographic) order. For example the ascending dictionary order is:
        # "<50", "1001+", "121-1000", "50-120"
        # And the ascending `HISTOGRAM_BUCKET` order is:
        # "<50", "50-120", "121-1000", "1001+"
        # The client has to explicitly request `"orderType": "HISTOGRAM_BUCKET"`
        # for a histogram-mutated dimension.
        # Corresponds to the JSON property `histogramBuckets`
        # @return [Array<Fixnum>]
        attr_accessor :histogram_buckets
      
        # Name of the dimension to fetch, for example `ga:browser`.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @histogram_buckets = args[:histogram_buckets] if args.key?(:histogram_buckets)
          @name = args[:name] if args.key?(:name)
        end
      end
      
      # Dimension filter specifies the filtering options on a dimension.
      class DimensionFilter
        include Google::Apis::Core::Hashable
      
        # Should the match be case sensitive? Default is false.
        # Corresponds to the JSON property `caseSensitive`
        # @return [Boolean]
        attr_accessor :case_sensitive
        alias_method :case_sensitive?, :case_sensitive
      
        # The dimension to filter on. A DimensionFilter must contain a dimension.
        # Corresponds to the JSON property `dimensionName`
        # @return [String]
        attr_accessor :dimension_name
      
        # Strings or regular expression to match against. Only the first value of
        # the list is used for comparison unless the operator is `IN_LIST`.
        # If `IN_LIST` operator, then the entire list is used to filter the
        # dimensions as explained in the description of the `IN_LIST` operator.
        # Corresponds to the JSON property `expressions`
        # @return [Array<String>]
        attr_accessor :expressions
      
        # Logical `NOT` operator. If this boolean is set to true, then the matching
        # dimension values will be excluded in the report. The default is false.
        # Corresponds to the JSON property `not`
        # @return [Boolean]
        attr_accessor :not
        alias_method :not?, :not
      
        # How to match the dimension to the expression. The default is REGEXP.
        # Corresponds to the JSON property `operator`
        # @return [String]
        attr_accessor :operator
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @case_sensitive = args[:case_sensitive] if args.key?(:case_sensitive)
          @dimension_name = args[:dimension_name] if args.key?(:dimension_name)
          @expressions = args[:expressions] if args.key?(:expressions)
          @not = args[:not] if args.key?(:not)
          @operator = args[:operator] if args.key?(:operator)
        end
      end
      
      # A group of dimension filters. Set the operator value to specify how
      # the filters are logically combined.
      class DimensionFilterClause
        include Google::Apis::Core::Hashable
      
        # The repeated set of filters. They are logically combined based on the
        # operator specified.
        # Corresponds to the JSON property `filters`
        # @return [Array<Google::Apis::AnalyticsreportingV4::DimensionFilter>]
        attr_accessor :filters
      
        # The operator for combining multiple dimension filters. If unspecified, it
        # is treated as an `OR`.
        # Corresponds to the JSON property `operator`
        # @return [String]
        attr_accessor :operator
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @filters = args[:filters] if args.key?(:filters)
          @operator = args[:operator] if args.key?(:operator)
        end
      end
      
      # Dynamic segment definition for defining the segment within the request.
      # A segment can select users, sessions or both.
      class DynamicSegment
        include Google::Apis::Core::Hashable
      
        # The name of the dynamic segment.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # SegmentDefinition defines the segment to be a set of SegmentFilters which
        # are combined together with a logical `AND` operation.
        # Corresponds to the JSON property `sessionSegment`
        # @return [Google::Apis::AnalyticsreportingV4::SegmentDefinition]
        attr_accessor :session_segment
      
        # SegmentDefinition defines the segment to be a set of SegmentFilters which
        # are combined together with a logical `AND` operation.
        # Corresponds to the JSON property `userSegment`
        # @return [Google::Apis::AnalyticsreportingV4::SegmentDefinition]
        attr_accessor :user_segment
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @name = args[:name] if args.key?(:name)
          @session_segment = args[:session_segment] if args.key?(:session_segment)
          @user_segment = args[:user_segment] if args.key?(:user_segment)
        end
      end
      
      # The batch request containing multiple report request.
      class GetReportsRequest
        include Google::Apis::Core::Hashable
      
        # Requests, each request will have a separate response.
        # There can be a maximum of 5 requests. All requests should have the same
        # `dateRanges`, `viewId`, `segments`, `samplingLevel`, and `cohortGroup`.
        # Corresponds to the JSON property `reportRequests`
        # @return [Array<Google::Apis::AnalyticsreportingV4::ReportRequest>]
        attr_accessor :report_requests
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @report_requests = args[:report_requests] if args.key?(:report_requests)
        end
      end
      
      # The main response class which holds the reports from the Reporting API
      # `batchGet` call.
      class GetReportsResponse
        include Google::Apis::Core::Hashable
      
        # Responses corresponding to each of the request.
        # Corresponds to the JSON property `reports`
        # @return [Array<Google::Apis::AnalyticsreportingV4::Report>]
        attr_accessor :reports
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @reports = args[:reports] if args.key?(:reports)
        end
      end
      
      # [Metrics](https://support.google.com/analytics/answer/1033861)
      # are the quantitative measurements. For example, the metric `ga:users`
      # indicates the total number of users for the requested time period.
      class Metric
        include Google::Apis::Core::Hashable
      
        # An alias for the metric expression is an alternate name for the
        # expression. The alias can be used for filtering and sorting. This field
        # is optional and is useful if the expression is not a single metric but
        # a complex expression which cannot be used in filtering and sorting.
        # The alias is also used in the response column header.
        # Corresponds to the JSON property `alias`
        # @return [String]
        attr_accessor :alias
      
        # A metric expression in the request. An expression is constructed from one
        # or more metrics and numbers. Accepted operators include: Plus (+), Minus
        # (-), Negation (Unary -), Divided by (/), Multiplied by (*), Parenthesis,
        # Positive cardinal numbers (0-9), can include decimals and is limited to
        # 1024 characters. Example `ga:totalRefunds/ga:users`, in most cases the
        # metric expression is just a single metric name like `ga:users`.
        # Adding mixed `MetricType` (E.g., `CURRENCY` + `PERCENTAGE`) metrics
        # will result in unexpected results.
        # Corresponds to the JSON property `expression`
        # @return [String]
        attr_accessor :expression
      
        # Specifies how the metric expression should be formatted, for example
        # `INTEGER`.
        # Corresponds to the JSON property `formattingType`
        # @return [String]
        attr_accessor :formatting_type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @alias = args[:alias] if args.key?(:alias)
          @expression = args[:expression] if args.key?(:expression)
          @formatting_type = args[:formatting_type] if args.key?(:formatting_type)
        end
      end
      
      # MetricFilter specifies the filter on a metric.
      class MetricFilter
        include Google::Apis::Core::Hashable
      
        # The value to compare against.
        # Corresponds to the JSON property `comparisonValue`
        # @return [String]
        attr_accessor :comparison_value
      
        # The metric that will be filtered on. A metricFilter must contain a metric
        # name. A metric name can be an alias earlier defined as a metric or it can
        # also be a metric expression.
        # Corresponds to the JSON property `metricName`
        # @return [String]
        attr_accessor :metric_name
      
        # Logical `NOT` operator. If this boolean is set to true, then the matching
        # metric values will be excluded in the report. The default is false.
        # Corresponds to the JSON property `not`
        # @return [Boolean]
        attr_accessor :not
        alias_method :not?, :not
      
        # Is the metric `EQUAL`, `LESS_THAN` or `GREATER_THAN` the
        # comparisonValue, the default is `EQUAL`. If the operator is
        # `IS_MISSING`, checks if the metric is missing and would ignore the
        # comparisonValue.
        # Corresponds to the JSON property `operator`
        # @return [String]
        attr_accessor :operator
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @comparison_value = args[:comparison_value] if args.key?(:comparison_value)
          @metric_name = args[:metric_name] if args.key?(:metric_name)
          @not = args[:not] if args.key?(:not)
          @operator = args[:operator] if args.key?(:operator)
        end
      end
      
      # Represents a group of metric filters.
      # Set the operator value to specify how the filters are logically combined.
      class MetricFilterClause
        include Google::Apis::Core::Hashable
      
        # The repeated set of filters. They are logically combined based on the
        # operator specified.
        # Corresponds to the JSON property `filters`
        # @return [Array<Google::Apis::AnalyticsreportingV4::MetricFilter>]
        attr_accessor :filters
      
        # The operator for combining multiple metric filters. If unspecified, it is
        # treated as an `OR`.
        # Corresponds to the JSON property `operator`
        # @return [String]
        attr_accessor :operator
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @filters = args[:filters] if args.key?(:filters)
          @operator = args[:operator] if args.key?(:operator)
        end
      end
      
      # The headers for the metrics.
      class MetricHeader
        include Google::Apis::Core::Hashable
      
        # Headers for the metrics in the response.
        # Corresponds to the JSON property `metricHeaderEntries`
        # @return [Array<Google::Apis::AnalyticsreportingV4::MetricHeaderEntry>]
        attr_accessor :metric_header_entries
      
        # Headers for the pivots in the response.
        # Corresponds to the JSON property `pivotHeaders`
        # @return [Array<Google::Apis::AnalyticsreportingV4::PivotHeader>]
        attr_accessor :pivot_headers
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @metric_header_entries = args[:metric_header_entries] if args.key?(:metric_header_entries)
          @pivot_headers = args[:pivot_headers] if args.key?(:pivot_headers)
        end
      end
      
      # Header for the metrics.
      class MetricHeaderEntry
        include Google::Apis::Core::Hashable
      
        # The name of the header.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # The type of the metric, for example `INTEGER`.
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
      
      # A list of segment filters in the `OR` group are combined with the logical OR
      # operator.
      class OrFiltersForSegment
        include Google::Apis::Core::Hashable
      
        # List of segment filters to be combined with a `OR` operator.
        # Corresponds to the JSON property `segmentFilterClauses`
        # @return [Array<Google::Apis::AnalyticsreportingV4::SegmentFilterClause>]
        attr_accessor :segment_filter_clauses
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @segment_filter_clauses = args[:segment_filter_clauses] if args.key?(:segment_filter_clauses)
        end
      end
      
      # Specifies the sorting options.
      class OrderBy
        include Google::Apis::Core::Hashable
      
        # The field which to sort by. The default sort order is ascending. Example:
        # `ga:browser`.
        # Note, that you can only specify one field for sort here. For example,
        # `ga:browser, ga:city` is not valid.
        # Corresponds to the JSON property `fieldName`
        # @return [String]
        attr_accessor :field_name
      
        # The order type. The default orderType is `VALUE`.
        # Corresponds to the JSON property `orderType`
        # @return [String]
        attr_accessor :order_type
      
        # The sorting order for the field.
        # Corresponds to the JSON property `sortOrder`
        # @return [String]
        attr_accessor :sort_order
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @field_name = args[:field_name] if args.key?(:field_name)
          @order_type = args[:order_type] if args.key?(:order_type)
          @sort_order = args[:sort_order] if args.key?(:sort_order)
        end
      end
      
      # The Pivot describes the pivot section in the request.
      # The Pivot helps rearrange the information in the table for certain reports
      # by pivoting your data on a second dimension.
      class Pivot
        include Google::Apis::Core::Hashable
      
        # DimensionFilterClauses are logically combined with an `AND` operator: only
        # data that is included by all these DimensionFilterClauses contributes to
        # the values in this pivot region. Dimension filters can be used to restrict
        # the columns shown in the pivot region. For example if you have
        # `ga:browser` as the requested dimension in the pivot region, and you
        # specify key filters to restrict `ga:browser` to only "IE" or "Firefox",
        # then only those two browsers would show up as columns.
        # Corresponds to the JSON property `dimensionFilterClauses`
        # @return [Array<Google::Apis::AnalyticsreportingV4::DimensionFilterClause>]
        attr_accessor :dimension_filter_clauses
      
        # A list of dimensions to show as pivot columns. A Pivot can have a maximum
        # of 4 dimensions. Pivot dimensions are part of the restriction on the
        # total number of dimensions allowed in the request.
        # Corresponds to the JSON property `dimensions`
        # @return [Array<Google::Apis::AnalyticsreportingV4::Dimension>]
        attr_accessor :dimensions
      
        # Specifies the maximum number of groups to return.
        # The default value is 10, also the maximum value is 1,000.
        # Corresponds to the JSON property `maxGroupCount`
        # @return [Fixnum]
        attr_accessor :max_group_count
      
        # The pivot metrics. Pivot metrics are part of the
        # restriction on total number of metrics allowed in the request.
        # Corresponds to the JSON property `metrics`
        # @return [Array<Google::Apis::AnalyticsreportingV4::Metric>]
        attr_accessor :metrics
      
        # If k metrics were requested, then the response will contain some
        # data-dependent multiple of k columns in the report.  E.g., if you pivoted
        # on the dimension `ga:browser` then you'd get k columns for "Firefox", k
        # columns for "IE", k columns for "Chrome", etc. The ordering of the groups
        # of columns is determined by descending order of "total" for the first of
        # the k values.  Ties are broken by lexicographic ordering of the first
        # pivot dimension, then lexicographic ordering of the second pivot
        # dimension, and so on.  E.g., if the totals for the first value for
        # Firefox, IE, and Chrome were 8, 2, 8, respectively, the order of columns
        # would be Chrome, Firefox, IE.
        # The following let you choose which of the groups of k columns are
        # included in the response.
        # Corresponds to the JSON property `startGroup`
        # @return [Fixnum]
        attr_accessor :start_group
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @dimension_filter_clauses = args[:dimension_filter_clauses] if args.key?(:dimension_filter_clauses)
          @dimensions = args[:dimensions] if args.key?(:dimensions)
          @max_group_count = args[:max_group_count] if args.key?(:max_group_count)
          @metrics = args[:metrics] if args.key?(:metrics)
          @start_group = args[:start_group] if args.key?(:start_group)
        end
      end
      
      # The headers for each of the pivot sections defined in the request.
      class PivotHeader
        include Google::Apis::Core::Hashable
      
        # A single pivot section header.
        # Corresponds to the JSON property `pivotHeaderEntries`
        # @return [Array<Google::Apis::AnalyticsreportingV4::PivotHeaderEntry>]
        attr_accessor :pivot_header_entries
      
        # The total number of groups for this pivot.
        # Corresponds to the JSON property `totalPivotGroupsCount`
        # @return [Fixnum]
        attr_accessor :total_pivot_groups_count
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @pivot_header_entries = args[:pivot_header_entries] if args.key?(:pivot_header_entries)
          @total_pivot_groups_count = args[:total_pivot_groups_count] if args.key?(:total_pivot_groups_count)
        end
      end
      
      # The headers for the each of the metric column corresponding to the metrics
      # requested in the pivots section of the response.
      class PivotHeaderEntry
        include Google::Apis::Core::Hashable
      
        # The name of the dimensions in the pivot response.
        # Corresponds to the JSON property `dimensionNames`
        # @return [Array<String>]
        attr_accessor :dimension_names
      
        # The values for the dimensions in the pivot.
        # Corresponds to the JSON property `dimensionValues`
        # @return [Array<String>]
        attr_accessor :dimension_values
      
        # Header for the metrics.
        # Corresponds to the JSON property `metric`
        # @return [Google::Apis::AnalyticsreportingV4::MetricHeaderEntry]
        attr_accessor :metric
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @dimension_names = args[:dimension_names] if args.key?(:dimension_names)
          @dimension_values = args[:dimension_values] if args.key?(:dimension_values)
          @metric = args[:metric] if args.key?(:metric)
        end
      end
      
      # The metric values in the pivot region.
      class PivotValueRegion
        include Google::Apis::Core::Hashable
      
        # The values of the metrics in each of the pivot regions.
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
      
      # The data response corresponding to the request.
      class Report
        include Google::Apis::Core::Hashable
      
        # Column headers.
        # Corresponds to the JSON property `columnHeader`
        # @return [Google::Apis::AnalyticsreportingV4::ColumnHeader]
        attr_accessor :column_header
      
        # The data part of the report.
        # Corresponds to the JSON property `data`
        # @return [Google::Apis::AnalyticsreportingV4::ReportData]
        attr_accessor :data
      
        # Page token to retrieve the next page of results in the list.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @column_header = args[:column_header] if args.key?(:column_header)
          @data = args[:data] if args.key?(:data)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # The data part of the report.
      class ReportData
        include Google::Apis::Core::Hashable
      
        # The last time the data in the report was refreshed. All the hits received
        # before this timestamp are included in the calculation of the report.
        # Corresponds to the JSON property `dataLastRefreshed`
        # @return [String]
        attr_accessor :data_last_refreshed
      
        # Indicates if response to this request is golden or not. Data is
        # golden when the exact same request will not produce any new results if
        # asked at a later point in time.
        # Corresponds to the JSON property `isDataGolden`
        # @return [Boolean]
        attr_accessor :is_data_golden
        alias_method :is_data_golden?, :is_data_golden
      
        # Minimum and maximum values seen over all matching rows. These are both
        # empty when `hideValueRanges` in the request is false, or when
        # rowCount is zero.
        # Corresponds to the JSON property `maximums`
        # @return [Array<Google::Apis::AnalyticsreportingV4::DateRangeValues>]
        attr_accessor :maximums
      
        # Minimum and maximum values seen over all matching rows. These are both
        # empty when `hideValueRanges` in the request is false, or when
        # rowCount is zero.
        # Corresponds to the JSON property `minimums`
        # @return [Array<Google::Apis::AnalyticsreportingV4::DateRangeValues>]
        attr_accessor :minimums
      
        # Total number of matching rows for this query.
        # Corresponds to the JSON property `rowCount`
        # @return [Fixnum]
        attr_accessor :row_count
      
        # There's one ReportRow for every unique combination of dimensions.
        # Corresponds to the JSON property `rows`
        # @return [Array<Google::Apis::AnalyticsreportingV4::ReportRow>]
        attr_accessor :rows
      
        # If the results are
        # [sampled](https://support.google.com/analytics/answer/2637192),
        # this returns the total number of samples read, one entry per date range.
        # If the results are not sampled this field will not be defined. See
        # [developer guide](/analytics/devguides/reporting/core/v4/basics#sampling)
        # for details.
        # Corresponds to the JSON property `samplesReadCounts`
        # @return [Array<Fixnum>]
        attr_accessor :samples_read_counts
      
        # If the results are
        # [sampled](https://support.google.com/analytics/answer/2637192),
        # this returns the total number of
        # samples present, one entry per date range. If the results are not sampled
        # this field will not be defined. See
        # [developer guide](/analytics/devguides/reporting/core/v4/basics#sampling)
        # for details.
        # Corresponds to the JSON property `samplingSpaceSizes`
        # @return [Array<Fixnum>]
        attr_accessor :sampling_space_sizes
      
        # For each requested date range, for the set of all rows that match
        # the query, every requested value format gets a total. The total
        # for a value format is computed by first totaling the metrics
        # mentioned in the value format and then evaluating the value
        # format as a scalar expression.  E.g., The "totals" for
        # `3 / (ga:sessions + 2)` we compute
        # `3 / ((sum of all relevant ga:sessions) + 2)`.
        # Totals are computed before pagination.
        # Corresponds to the JSON property `totals`
        # @return [Array<Google::Apis::AnalyticsreportingV4::DateRangeValues>]
        attr_accessor :totals
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @data_last_refreshed = args[:data_last_refreshed] if args.key?(:data_last_refreshed)
          @is_data_golden = args[:is_data_golden] if args.key?(:is_data_golden)
          @maximums = args[:maximums] if args.key?(:maximums)
          @minimums = args[:minimums] if args.key?(:minimums)
          @row_count = args[:row_count] if args.key?(:row_count)
          @rows = args[:rows] if args.key?(:rows)
          @samples_read_counts = args[:samples_read_counts] if args.key?(:samples_read_counts)
          @sampling_space_sizes = args[:sampling_space_sizes] if args.key?(:sampling_space_sizes)
          @totals = args[:totals] if args.key?(:totals)
        end
      end
      
      # The main request class which specifies the Reporting API request.
      class ReportRequest
        include Google::Apis::Core::Hashable
      
        # Defines a cohort group.
        # For example:
        # "cohortGroup": `
        # "cohorts": [`
        # "name": "cohort 1",
        # "type": "FIRST_VISIT_DATE",
        # "dateRange": ` "startDate": "2015-08-01", "endDate": "2015-08-01" `
        # `,`
        # "name": "cohort 2"
        # "type": "FIRST_VISIT_DATE"
        # "dateRange": ` "startDate": "2015-07-01", "endDate": "2015-07-01" `
        # `]
        # `
        # Corresponds to the JSON property `cohortGroup`
        # @return [Google::Apis::AnalyticsreportingV4::CohortGroup]
        attr_accessor :cohort_group
      
        # Date ranges in the request. The request can have a maximum of 2 date
        # ranges. The response will contain a set of metric values for each
        # combination of the dimensions for each date range in the request. So, if
        # there are two date ranges, there will be two set of metric values, one for
        # the original date range and one for the second date range.
        # The `reportRequest.dateRanges` field should not be specified for cohorts
        # or Lifetime value requests.
        # If a date range is not provided, the default date range is (startDate:
        # current date - 7 days, endDate: current date - 1 day). Every
        # [ReportRequest](#ReportRequest) within a `batchGet` method must
        # contain the same `dateRanges` definition.
        # Corresponds to the JSON property `dateRanges`
        # @return [Array<Google::Apis::AnalyticsreportingV4::DateRange>]
        attr_accessor :date_ranges
      
        # The dimension filter clauses for filtering Dimension Values. They are
        # logically combined with the `AND` operator. Note that filtering occurs
        # before any dimensions are aggregated, so that the returned metrics
        # represent the total for only the relevant dimensions.
        # Corresponds to the JSON property `dimensionFilterClauses`
        # @return [Array<Google::Apis::AnalyticsreportingV4::DimensionFilterClause>]
        attr_accessor :dimension_filter_clauses
      
        # The dimensions requested.
        # Requests can have a total of 7 dimensions.
        # Corresponds to the JSON property `dimensions`
        # @return [Array<Google::Apis::AnalyticsreportingV4::Dimension>]
        attr_accessor :dimensions
      
        # Dimension or metric filters that restrict the data returned for your
        # request. To use the `filtersExpression`, supply a dimension or metric on
        # which to filter, followed by the filter expression. For example, the
        # following expression selects `ga:browser` dimension which starts with
        # Firefox; `ga:browser=~^Firefox`. For more information on dimensions
        # and metric filters, see
        # [Filters reference](https://developers.google.com/analytics/devguides/
        # reporting/core/v3/reference#filters).
        # Corresponds to the JSON property `filtersExpression`
        # @return [String]
        attr_accessor :filters_expression
      
        # If set to true, hides the total of all metrics for all the matching rows,
        # for every date range. The default false and will return the totals.
        # Corresponds to the JSON property `hideTotals`
        # @return [Boolean]
        attr_accessor :hide_totals
        alias_method :hide_totals?, :hide_totals
      
        # If set to true, hides the minimum and maximum across all matching rows.
        # The default is false and the value ranges are returned.
        # Corresponds to the JSON property `hideValueRanges`
        # @return [Boolean]
        attr_accessor :hide_value_ranges
        alias_method :hide_value_ranges?, :hide_value_ranges
      
        # If set to false, the response does not include rows if all the retrieved
        # metrics are equal to zero. The default is false which will exclude these
        # rows.
        # Corresponds to the JSON property `includeEmptyRows`
        # @return [Boolean]
        attr_accessor :include_empty_rows
        alias_method :include_empty_rows?, :include_empty_rows
      
        # The metric filter clauses. They are logically combined with the `AND`
        # operator.  Metric filters look at only the first date range and not the
        # comparing date range. Note that filtering on metrics occurs after the
        # metrics are aggregated.
        # Corresponds to the JSON property `metricFilterClauses`
        # @return [Array<Google::Apis::AnalyticsreportingV4::MetricFilterClause>]
        attr_accessor :metric_filter_clauses
      
        # The metrics requested.
        # Requests must specify at least one metric. Requests can have a
        # total of 10 metrics.
        # Corresponds to the JSON property `metrics`
        # @return [Array<Google::Apis::AnalyticsreportingV4::Metric>]
        attr_accessor :metrics
      
        # Sort order on output rows. To compare two rows, the elements of the
        # following are applied in order until a difference is found.  All date
        # ranges in the output get the same row order.
        # Corresponds to the JSON property `orderBys`
        # @return [Array<Google::Apis::AnalyticsreportingV4::OrderBy>]
        attr_accessor :order_bys
      
        # Page size is for paging and specifies the maximum number of returned rows.
        # Page size should be >= 0. A query returns the default of 1,000 rows.
        # The Analytics Core Reporting API returns a maximum of 10,000 rows per
        # request, no matter how many you ask for. It can also return fewer rows
        # than requested, if there aren't as many dimension segments as you expect.
        # For instance, there are fewer than 300 possible values for `ga:country`,
        # so when segmenting only by country, you can't get more than 300 rows,
        # even if you set `pageSize` to a higher value.
        # Corresponds to the JSON property `pageSize`
        # @return [Fixnum]
        attr_accessor :page_size
      
        # A continuation token to get the next page of the results. Adding this to
        # the request will return the rows after the pageToken. The pageToken should
        # be the value returned in the nextPageToken parameter in the response to
        # the GetReports request.
        # Corresponds to the JSON property `pageToken`
        # @return [String]
        attr_accessor :page_token
      
        # The pivot definitions. Requests can have a maximum of 2 pivots.
        # Corresponds to the JSON property `pivots`
        # @return [Array<Google::Apis::AnalyticsreportingV4::Pivot>]
        attr_accessor :pivots
      
        # The desired report
        # [sample](https://support.google.com/analytics/answer/2637192) size.
        # If the the `samplingLevel` field is unspecified the `DEFAULT` sampling
        # level is used. Every [ReportRequest](#ReportRequest) within a
        # `batchGet` method must contain the same `samplingLevel` definition. See
        # [developer guide](/analytics/devguides/reporting/core/v4/basics#sampling)
        # for details.
        # Corresponds to the JSON property `samplingLevel`
        # @return [String]
        attr_accessor :sampling_level
      
        # Segment the data returned for the request. A segment definition helps look
        # at a subset of the segment request. A request can contain up to four
        # segments. Every [ReportRequest](#ReportRequest) within a
        # `batchGet` method must contain the same `segments` definition. Requests
        # with segments must have the `ga:segment` dimension.
        # Corresponds to the JSON property `segments`
        # @return [Array<Google::Apis::AnalyticsreportingV4::Segment>]
        attr_accessor :segments
      
        # The Analytics
        # [view ID](https://support.google.com/analytics/answer/1009618)
        # from which to retrieve data. Every [ReportRequest](#ReportRequest)
        # within a `batchGet` method must contain the same `viewId`.
        # Corresponds to the JSON property `viewId`
        # @return [String]
        attr_accessor :view_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @cohort_group = args[:cohort_group] if args.key?(:cohort_group)
          @date_ranges = args[:date_ranges] if args.key?(:date_ranges)
          @dimension_filter_clauses = args[:dimension_filter_clauses] if args.key?(:dimension_filter_clauses)
          @dimensions = args[:dimensions] if args.key?(:dimensions)
          @filters_expression = args[:filters_expression] if args.key?(:filters_expression)
          @hide_totals = args[:hide_totals] if args.key?(:hide_totals)
          @hide_value_ranges = args[:hide_value_ranges] if args.key?(:hide_value_ranges)
          @include_empty_rows = args[:include_empty_rows] if args.key?(:include_empty_rows)
          @metric_filter_clauses = args[:metric_filter_clauses] if args.key?(:metric_filter_clauses)
          @metrics = args[:metrics] if args.key?(:metrics)
          @order_bys = args[:order_bys] if args.key?(:order_bys)
          @page_size = args[:page_size] if args.key?(:page_size)
          @page_token = args[:page_token] if args.key?(:page_token)
          @pivots = args[:pivots] if args.key?(:pivots)
          @sampling_level = args[:sampling_level] if args.key?(:sampling_level)
          @segments = args[:segments] if args.key?(:segments)
          @view_id = args[:view_id] if args.key?(:view_id)
        end
      end
      
      # A row in the report.
      class ReportRow
        include Google::Apis::Core::Hashable
      
        # List of requested dimensions.
        # Corresponds to the JSON property `dimensions`
        # @return [Array<String>]
        attr_accessor :dimensions
      
        # List of metrics for each requested DateRange.
        # Corresponds to the JSON property `metrics`
        # @return [Array<Google::Apis::AnalyticsreportingV4::DateRangeValues>]
        attr_accessor :metrics
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @dimensions = args[:dimensions] if args.key?(:dimensions)
          @metrics = args[:metrics] if args.key?(:metrics)
        end
      end
      
      # The segment definition, if the report needs to be segmented.
      # A Segment is a subset of the Analytics data. For example, of the entire
      # set of users, one Segment might be users from a particular country or city.
      class Segment
        include Google::Apis::Core::Hashable
      
        # Dynamic segment definition for defining the segment within the request.
        # A segment can select users, sessions or both.
        # Corresponds to the JSON property `dynamicSegment`
        # @return [Google::Apis::AnalyticsreportingV4::DynamicSegment]
        attr_accessor :dynamic_segment
      
        # The segment ID of a built-in or custom segment, for example `gaid::-3`.
        # Corresponds to the JSON property `segmentId`
        # @return [String]
        attr_accessor :segment_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @dynamic_segment = args[:dynamic_segment] if args.key?(:dynamic_segment)
          @segment_id = args[:segment_id] if args.key?(:segment_id)
        end
      end
      
      # SegmentDefinition defines the segment to be a set of SegmentFilters which
      # are combined together with a logical `AND` operation.
      class SegmentDefinition
        include Google::Apis::Core::Hashable
      
        # A segment is defined by a set of segment filters which are combined
        # together with a logical `AND` operation.
        # Corresponds to the JSON property `segmentFilters`
        # @return [Array<Google::Apis::AnalyticsreportingV4::SegmentFilter>]
        attr_accessor :segment_filters
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @segment_filters = args[:segment_filters] if args.key?(:segment_filters)
        end
      end
      
      # Dimension filter specifies the filtering options on a dimension.
      class SegmentDimensionFilter
        include Google::Apis::Core::Hashable
      
        # Should the match be case sensitive, ignored for `IN_LIST` operator.
        # Corresponds to the JSON property `caseSensitive`
        # @return [Boolean]
        attr_accessor :case_sensitive
        alias_method :case_sensitive?, :case_sensitive
      
        # Name of the dimension for which the filter is being applied.
        # Corresponds to the JSON property `dimensionName`
        # @return [String]
        attr_accessor :dimension_name
      
        # The list of expressions, only the first element is used for all operators
        # Corresponds to the JSON property `expressions`
        # @return [Array<String>]
        attr_accessor :expressions
      
        # Maximum comparison values for `BETWEEN` match type.
        # Corresponds to the JSON property `maxComparisonValue`
        # @return [String]
        attr_accessor :max_comparison_value
      
        # Minimum comparison values for `BETWEEN` match type.
        # Corresponds to the JSON property `minComparisonValue`
        # @return [String]
        attr_accessor :min_comparison_value
      
        # The operator to use to match the dimension with the expressions.
        # Corresponds to the JSON property `operator`
        # @return [String]
        attr_accessor :operator
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @case_sensitive = args[:case_sensitive] if args.key?(:case_sensitive)
          @dimension_name = args[:dimension_name] if args.key?(:dimension_name)
          @expressions = args[:expressions] if args.key?(:expressions)
          @max_comparison_value = args[:max_comparison_value] if args.key?(:max_comparison_value)
          @min_comparison_value = args[:min_comparison_value] if args.key?(:min_comparison_value)
          @operator = args[:operator] if args.key?(:operator)
        end
      end
      
      # SegmentFilter defines the segment to be either a simple or a sequence
      # segment. A simple segment condition contains dimension and metric conditions
      # to select the sessions or users. A sequence segment condition can be used to
      # select users or sessions based on sequential conditions.
      class SegmentFilter
        include Google::Apis::Core::Hashable
      
        # If true, match the complement of simple or sequence segment.
        # For example, to match all visits not from "New York", we can define the
        # segment as follows:
        # "sessionSegment": `
        # "segmentFilters": [`
        # "simpleSegment" :`
        # "orFiltersForSegment": [`
        # "segmentFilterClauses":[`
        # "dimensionFilter": `
        # "dimensionName": "ga:city",
        # "expressions": ["New York"]
        # `
        # `]
        # `]
        # `,
        # "not": "True"
        # `]
        # `,
        # Corresponds to the JSON property `not`
        # @return [Boolean]
        attr_accessor :not
        alias_method :not?, :not
      
        # Sequence conditions consist of one or more steps, where each step is defined
        # by one or more dimension/metric conditions. Multiple steps can be combined
        # with special sequence operators.
        # Corresponds to the JSON property `sequenceSegment`
        # @return [Google::Apis::AnalyticsreportingV4::SequenceSegment]
        attr_accessor :sequence_segment
      
        # A Simple segment conditions consist of one or more dimension/metric
        # conditions that can be combined.
        # Corresponds to the JSON property `simpleSegment`
        # @return [Google::Apis::AnalyticsreportingV4::SimpleSegment]
        attr_accessor :simple_segment
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @not = args[:not] if args.key?(:not)
          @sequence_segment = args[:sequence_segment] if args.key?(:sequence_segment)
          @simple_segment = args[:simple_segment] if args.key?(:simple_segment)
        end
      end
      
      # Filter Clause to be used in a segment definition, can be wither a metric or
      # a dimension filter.
      class SegmentFilterClause
        include Google::Apis::Core::Hashable
      
        # Dimension filter specifies the filtering options on a dimension.
        # Corresponds to the JSON property `dimensionFilter`
        # @return [Google::Apis::AnalyticsreportingV4::SegmentDimensionFilter]
        attr_accessor :dimension_filter
      
        # Metric filter to be used in a segment filter clause.
        # Corresponds to the JSON property `metricFilter`
        # @return [Google::Apis::AnalyticsreportingV4::SegmentMetricFilter]
        attr_accessor :metric_filter
      
        # Matches the complement (`!`) of the filter.
        # Corresponds to the JSON property `not`
        # @return [Boolean]
        attr_accessor :not
        alias_method :not?, :not
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @dimension_filter = args[:dimension_filter] if args.key?(:dimension_filter)
          @metric_filter = args[:metric_filter] if args.key?(:metric_filter)
          @not = args[:not] if args.key?(:not)
        end
      end
      
      # Metric filter to be used in a segment filter clause.
      class SegmentMetricFilter
        include Google::Apis::Core::Hashable
      
        # The value to compare against. If the operator is `BETWEEN`, this value is
        # treated as minimum comparison value.
        # Corresponds to the JSON property `comparisonValue`
        # @return [String]
        attr_accessor :comparison_value
      
        # Max comparison value is only used for `BETWEEN` operator.
        # Corresponds to the JSON property `maxComparisonValue`
        # @return [String]
        attr_accessor :max_comparison_value
      
        # The metric that will be filtered on. A `metricFilter` must contain a
        # metric name.
        # Corresponds to the JSON property `metricName`
        # @return [String]
        attr_accessor :metric_name
      
        # Specifies is the operation to perform to compare the metric. The default
        # is `EQUAL`.
        # Corresponds to the JSON property `operator`
        # @return [String]
        attr_accessor :operator
      
        # Scope for a metric defines the level at which that metric is defined.  The
        # specified metric scope must be equal to or greater than its primary scope
        # as defined in the data model. The primary scope is defined by if the
        # segment is selecting users or sessions.
        # Corresponds to the JSON property `scope`
        # @return [String]
        attr_accessor :scope
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @comparison_value = args[:comparison_value] if args.key?(:comparison_value)
          @max_comparison_value = args[:max_comparison_value] if args.key?(:max_comparison_value)
          @metric_name = args[:metric_name] if args.key?(:metric_name)
          @operator = args[:operator] if args.key?(:operator)
          @scope = args[:scope] if args.key?(:scope)
        end
      end
      
      # A segment sequence definition.
      class SegmentSequenceStep
        include Google::Apis::Core::Hashable
      
        # Specifies if the step immediately precedes or can be any time before the
        # next step.
        # Corresponds to the JSON property `matchType`
        # @return [String]
        attr_accessor :match_type
      
        # A sequence is specified with a list of Or grouped filters which are
        # combined with `AND` operator.
        # Corresponds to the JSON property `orFiltersForSegment`
        # @return [Array<Google::Apis::AnalyticsreportingV4::OrFiltersForSegment>]
        attr_accessor :or_filters_for_segment
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @match_type = args[:match_type] if args.key?(:match_type)
          @or_filters_for_segment = args[:or_filters_for_segment] if args.key?(:or_filters_for_segment)
        end
      end
      
      # Sequence conditions consist of one or more steps, where each step is defined
      # by one or more dimension/metric conditions. Multiple steps can be combined
      # with special sequence operators.
      class SequenceSegment
        include Google::Apis::Core::Hashable
      
        # If set, first step condition must match the first hit of the visitor (in
        # the date range).
        # Corresponds to the JSON property `firstStepShouldMatchFirstHit`
        # @return [Boolean]
        attr_accessor :first_step_should_match_first_hit
        alias_method :first_step_should_match_first_hit?, :first_step_should_match_first_hit
      
        # The list of steps in the sequence.
        # Corresponds to the JSON property `segmentSequenceSteps`
        # @return [Array<Google::Apis::AnalyticsreportingV4::SegmentSequenceStep>]
        attr_accessor :segment_sequence_steps
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @first_step_should_match_first_hit = args[:first_step_should_match_first_hit] if args.key?(:first_step_should_match_first_hit)
          @segment_sequence_steps = args[:segment_sequence_steps] if args.key?(:segment_sequence_steps)
        end
      end
      
      # A Simple segment conditions consist of one or more dimension/metric
      # conditions that can be combined.
      class SimpleSegment
        include Google::Apis::Core::Hashable
      
        # A list of segment filters groups which are combined with logical `AND`
        # operator.
        # Corresponds to the JSON property `orFiltersForSegment`
        # @return [Array<Google::Apis::AnalyticsreportingV4::OrFiltersForSegment>]
        attr_accessor :or_filters_for_segment
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @or_filters_for_segment = args[:or_filters_for_segment] if args.key?(:or_filters_for_segment)
        end
      end
    end
  end
end
