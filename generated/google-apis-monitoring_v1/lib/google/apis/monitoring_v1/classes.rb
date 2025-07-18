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
    module MonitoringV1
      
      # Describes how to combine multiple time series to provide a different view of
      # the data. Aggregation of time series is done in two steps. First, each time
      # series in the set is aligned to the same time interval boundaries, then the
      # set of time series is optionally reduced in number.Alignment consists of
      # applying the per_series_aligner operation to each time series after its data
      # has been divided into regular alignment_period time intervals. This process
      # takes all of the data points in an alignment period, applies a mathematical
      # transformation such as averaging, minimum, maximum, delta, etc., and converts
      # them into a single data point per period.Reduction is when the aligned and
      # transformed time series can optionally be combined, reducing the number of
      # time series through similar mathematical transformations. Reduction involves
      # applying a cross_series_reducer to all the time series, optionally sorting the
      # time series into subsets with group_by_fields, and applying the reducer to
      # each subset.The raw time series data can contain a huge amount of information
      # from multiple sources. Alignment and reduction transforms this mass of data
      # into a more manageable and representative collection of data, for example "the
      # 95% latency across the average of all tasks in a cluster". This representative
      # data can be more easily graphed and comprehended, and the individual time
      # series data is still available for later drilldown. For more details, see
      # Filtering and aggregation (https://cloud.google.com/monitoring/api/v3/
      # aggregation).
      class Aggregation
        include Google::Apis::Core::Hashable
      
        # The alignment_period specifies a time interval, in seconds, that is used to
        # divide the data in all the time series into consistent blocks of time. This
        # will be done before the per-series aligner can be applied to the data.The
        # value must be at least 60 seconds. If a per-series aligner other than
        # ALIGN_NONE is specified, this field is required or an error is returned. If no
        # per-series aligner is specified, or the aligner ALIGN_NONE is specified, then
        # this field is ignored.The maximum value of the alignment_period is 2 years, or
        # 104 weeks.
        # Corresponds to the JSON property `alignmentPeriod`
        # @return [String]
        attr_accessor :alignment_period
      
        # The reduction operation to be used to combine time series into a single time
        # series, where the value of each data point in the resulting series is a
        # function of all the already aligned values in the input time series.Not all
        # reducer operations can be applied to all time series. The valid choices depend
        # on the metric_kind and the value_type of the original time series. Reduction
        # can yield a time series with a different metric_kind or value_type than the
        # input time series.Time series data must first be aligned (see
        # per_series_aligner) in order to perform cross-time series reduction. If
        # cross_series_reducer is specified, then per_series_aligner must be specified,
        # and must not be ALIGN_NONE. An alignment_period must also be specified;
        # otherwise, an error is returned.
        # Corresponds to the JSON property `crossSeriesReducer`
        # @return [String]
        attr_accessor :cross_series_reducer
      
        # The set of fields to preserve when cross_series_reducer is specified. The
        # group_by_fields determine how the time series are partitioned into subsets
        # prior to applying the aggregation operation. Each subset contains time series
        # that have the same value for each of the grouping fields. Each individual time
        # series is a member of exactly one subset. The cross_series_reducer is applied
        # to each subset of time series. It is not possible to reduce across different
        # resource types, so this field implicitly contains resource.type. Fields not
        # specified in group_by_fields are aggregated away. If group_by_fields is not
        # specified and all the time series have the same resource type, then the time
        # series are aggregated into a single output time series. If
        # cross_series_reducer is not defined, this field is ignored.
        # Corresponds to the JSON property `groupByFields`
        # @return [Array<String>]
        attr_accessor :group_by_fields
      
        # An Aligner describes how to bring the data points in a single time series into
        # temporal alignment. Except for ALIGN_NONE, all alignments cause all the data
        # points in an alignment_period to be mathematically grouped together, resulting
        # in a single data point for each alignment_period with end timestamp at the end
        # of the period.Not all alignment operations may be applied to all time series.
        # The valid choices depend on the metric_kind and value_type of the original
        # time series. Alignment can change the metric_kind or the value_type of the
        # time series.Time series data must be aligned in order to perform cross-time
        # series reduction. If cross_series_reducer is specified, then
        # per_series_aligner must be specified and not equal to ALIGN_NONE and
        # alignment_period must be specified; otherwise, an error is returned.
        # Corresponds to the JSON property `perSeriesAligner`
        # @return [String]
        attr_accessor :per_series_aligner
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @alignment_period = args[:alignment_period] if args.key?(:alignment_period)
          @cross_series_reducer = args[:cross_series_reducer] if args.key?(:cross_series_reducer)
          @group_by_fields = args[:group_by_fields] if args.key?(:group_by_fields)
          @per_series_aligner = args[:per_series_aligner] if args.key?(:per_series_aligner)
        end
      end
      
      # Preview: An identifier for an aggregation function. Aggregation functions are
      # SQL functions that group or transform data from multiple points to a single
      # point. This is a preview feature and may be subject to change before final
      # release.
      class AggregationFunction
        include Google::Apis::Core::Hashable
      
        # Optional. Parameters applied to the aggregation function. Only used for
        # functions that require them.
        # Corresponds to the JSON property `parameters`
        # @return [Array<Google::Apis::MonitoringV1::Parameter>]
        attr_accessor :parameters
      
        # Required. The type of aggregation function, must be one of the following: "
        # none" - no function. "percentile" - APPROX_QUANTILES() - 1 parameter numeric
        # value "average" - AVG() "count" - COUNT() "count-distinct" - COUNT(DISTINCT) "
        # count-distinct-approx" - APPROX_COUNT_DISTINCT() "max" - MAX() "min" - MIN() "
        # sum" - SUM()
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @parameters = args[:parameters] if args.key?(:parameters)
          @type = args[:type] if args.key?(:type)
        end
      end
      
      # A chart that displays alert policy data.
      class AlertChart
        include Google::Apis::Core::Hashable
      
        # Required. The resource name of the alert policy. The format is: projects/[
        # PROJECT_ID_OR_NUMBER]/alertPolicies/[ALERT_POLICY_ID]
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
      
      # A chart axis.
      class Axis
        include Google::Apis::Core::Hashable
      
        # The label of the axis.
        # Corresponds to the JSON property `label`
        # @return [String]
        attr_accessor :label
      
        # The axis scale. By default, a linear scale is used.
        # Corresponds to the JSON property `scale`
        # @return [String]
        attr_accessor :scale
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @label = args[:label] if args.key?(:label)
          @scale = args[:scale] if args.key?(:scale)
        end
      end
      
      # Preview: A breakdown is an aggregation applied to the measures over a
      # specified column. A breakdown can result in multiple series across a category
      # for the provided measure. This is a preview feature and may be subject to
      # change before final release.
      class Breakdown
        include Google::Apis::Core::Hashable
      
        # Preview: An identifier for an aggregation function. Aggregation functions are
        # SQL functions that group or transform data from multiple points to a single
        # point. This is a preview feature and may be subject to change before final
        # release.
        # Corresponds to the JSON property `aggregationFunction`
        # @return [Google::Apis::MonitoringV1::AggregationFunction]
        attr_accessor :aggregation_function
      
        # Required. The name of the column in the dataset containing the breakdown
        # values.
        # Corresponds to the JSON property `column`
        # @return [String]
        attr_accessor :column
      
        # Required. A limit to the number of breakdowns. If set to zero then all
        # possible breakdowns are applied. The list of breakdowns is dependent on the
        # value of the sort_order field.
        # Corresponds to the JSON property `limit`
        # @return [Fixnum]
        attr_accessor :limit
      
        # Required. The sort order is applied to the values of the breakdown column.
        # Corresponds to the JSON property `sortOrder`
        # @return [String]
        attr_accessor :sort_order
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @aggregation_function = args[:aggregation_function] if args.key?(:aggregation_function)
          @column = args[:column] if args.key?(:column)
          @limit = args[:limit] if args.key?(:limit)
          @sort_order = args[:sort_order] if args.key?(:sort_order)
        end
      end
      
      # Options to control visual rendering of a chart.
      class ChartOptions
        include Google::Apis::Core::Hashable
      
        # Preview: Configures whether the charted values are shown on the horizontal or
        # vertical axis. By default, values are represented the vertical axis. This is a
        # preview feature and may be subject to change before final release.
        # Corresponds to the JSON property `displayHorizontal`
        # @return [Boolean]
        attr_accessor :display_horizontal
        alias_method :display_horizontal?, :display_horizontal
      
        # The chart mode.
        # Corresponds to the JSON property `mode`
        # @return [String]
        attr_accessor :mode
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @display_horizontal = args[:display_horizontal] if args.key?(:display_horizontal)
          @mode = args[:mode] if args.key?(:mode)
        end
      end
      
      # A widget that groups the other widgets. All widgets that are within the area
      # spanned by the grouping widget are considered member widgets.
      class CollapsibleGroup
        include Google::Apis::Core::Hashable
      
        # The collapsed state of the widget on first page load.
        # Corresponds to the JSON property `collapsed`
        # @return [Boolean]
        attr_accessor :collapsed
        alias_method :collapsed?, :collapsed
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @collapsed = args[:collapsed] if args.key?(:collapsed)
        end
      end
      
      # Defines the layout properties and content for a column.
      class Column
        include Google::Apis::Core::Hashable
      
        # The relative weight of this column. The column weight is used to adjust the
        # width of columns on the screen (relative to peers). Greater the weight,
        # greater the width of the column on the screen. If omitted, a value of 1 is
        # used while rendering.
        # Corresponds to the JSON property `weight`
        # @return [Fixnum]
        attr_accessor :weight
      
        # The display widgets arranged vertically in this column.
        # Corresponds to the JSON property `widgets`
        # @return [Array<Google::Apis::MonitoringV1::Widget>]
        attr_accessor :widgets
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @weight = args[:weight] if args.key?(:weight)
          @widgets = args[:widgets] if args.key?(:widgets)
        end
      end
      
      # A simplified layout that divides the available space into vertical columns and
      # arranges a set of widgets vertically in each column.
      class ColumnLayout
        include Google::Apis::Core::Hashable
      
        # The columns of content to display.
        # Corresponds to the JSON property `columns`
        # @return [Array<Google::Apis::MonitoringV1::Column>]
        attr_accessor :columns
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @columns = args[:columns] if args.key?(:columns)
        end
      end
      
      # The persistent settings for a table's columns.
      class ColumnSettings
        include Google::Apis::Core::Hashable
      
        # Optional. Whether the column should be left / middle / right aligned
        # Corresponds to the JSON property `alignment`
        # @return [String]
        attr_accessor :alignment
      
        # Required. The id of the column.
        # Corresponds to the JSON property `column`
        # @return [String]
        attr_accessor :column
      
        # Optional. Display name of the column
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # Optional. The thresholds used to determine how the table cell should be
        # rendered given the time series' current value.
        # Corresponds to the JSON property `thresholds`
        # @return [Array<Google::Apis::MonitoringV1::Threshold>]
        attr_accessor :thresholds
      
        # Required. Whether the column should be visible on page load.
        # Corresponds to the JSON property `visible`
        # @return [Boolean]
        attr_accessor :visible
        alias_method :visible?, :visible
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @alignment = args[:alignment] if args.key?(:alignment)
          @column = args[:column] if args.key?(:column)
          @display_name = args[:display_name] if args.key?(:display_name)
          @thresholds = args[:thresholds] if args.key?(:thresholds)
          @visible = args[:visible] if args.key?(:visible)
        end
      end
      
      # Data structure to storing column's sort strategy
      class ColumnSortingOptions
        include Google::Apis::Core::Hashable
      
        # Optional. Column name to sort data by
        # Corresponds to the JSON property `column`
        # @return [String]
        attr_accessor :column
      
        # Optional. A sorting direction that determines ascending or descending order.
        # This is a legacy field kept for backwards compatibility with table.
        # Corresponds to the JSON property `direction`
        # @return [String]
        attr_accessor :direction
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @column = args[:column] if args.key?(:column)
          @direction = args[:direction] if args.key?(:direction)
        end
      end
      
      # A Google Stackdriver dashboard. Dashboards define the content and layout of
      # pages in the Stackdriver web application.
      class Dashboard
        include Google::Apis::Core::Hashable
      
        # Dashboard-level configuration for annotations
        # Corresponds to the JSON property `annotations`
        # @return [Google::Apis::MonitoringV1::DashboardAnnotations]
        attr_accessor :annotations
      
        # A simplified layout that divides the available space into vertical columns and
        # arranges a set of widgets vertically in each column.
        # Corresponds to the JSON property `columnLayout`
        # @return [Google::Apis::MonitoringV1::ColumnLayout]
        attr_accessor :column_layout
      
        # Filters to reduce the amount of data charted based on the filter criteria.
        # Corresponds to the JSON property `dashboardFilters`
        # @return [Array<Google::Apis::MonitoringV1::DashboardFilter>]
        attr_accessor :dashboard_filters
      
        # Required. The mutable, human-readable name.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # etag is used for optimistic concurrency control as a way to help prevent
        # simultaneous updates of a policy from overwriting each other. An etag is
        # returned in the response to GetDashboard, and users are expected to put that
        # etag in the request to UpdateDashboard to ensure that their change will be
        # applied to the same version of the Dashboard configuration. The field should
        # not be passed during dashboard creation.
        # Corresponds to the JSON property `etag`
        # @return [String]
        attr_accessor :etag
      
        # A basic layout divides the available space into vertical columns of equal
        # width and arranges a list of widgets using a row-first strategy.
        # Corresponds to the JSON property `gridLayout`
        # @return [Google::Apis::MonitoringV1::GridLayout]
        attr_accessor :grid_layout
      
        # Labels applied to the dashboard
        # Corresponds to the JSON property `labels`
        # @return [Hash<String,String>]
        attr_accessor :labels
      
        # A mosaic layout divides the available space into a grid of blocks, and
        # overlays the grid with tiles. Unlike GridLayout, tiles may span multiple grid
        # blocks and can be placed at arbitrary locations in the grid.
        # Corresponds to the JSON property `mosaicLayout`
        # @return [Google::Apis::MonitoringV1::MosaicLayout]
        attr_accessor :mosaic_layout
      
        # Identifier. The resource name of the dashboard.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # A simplified layout that divides the available space into rows and arranges a
        # set of widgets horizontally in each row.
        # Corresponds to the JSON property `rowLayout`
        # @return [Google::Apis::MonitoringV1::RowLayout]
        attr_accessor :row_layout
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @annotations = args[:annotations] if args.key?(:annotations)
          @column_layout = args[:column_layout] if args.key?(:column_layout)
          @dashboard_filters = args[:dashboard_filters] if args.key?(:dashboard_filters)
          @display_name = args[:display_name] if args.key?(:display_name)
          @etag = args[:etag] if args.key?(:etag)
          @grid_layout = args[:grid_layout] if args.key?(:grid_layout)
          @labels = args[:labels] if args.key?(:labels)
          @mosaic_layout = args[:mosaic_layout] if args.key?(:mosaic_layout)
          @name = args[:name] if args.key?(:name)
          @row_layout = args[:row_layout] if args.key?(:row_layout)
        end
      end
      
      # Dashboard-level configuration for annotations
      class DashboardAnnotations
        include Google::Apis::Core::Hashable
      
        # Dashboard level defaults for names of logging resources to search for events.
        # Currently only projects are supported. Each individual EventAnnotation may
        # have its own overrides. If both this field and the per annotation field is
        # empty, then the scoping project is used. Limit: 50 projects. For example: “
        # projects/some-project-id”
        # Corresponds to the JSON property `defaultResourceNames`
        # @return [Array<String>]
        attr_accessor :default_resource_names
      
        # List of annotation configurations for this dashboard. Each entry specifies one
        # event type.
        # Corresponds to the JSON property `eventAnnotations`
        # @return [Array<Google::Apis::MonitoringV1::EventAnnotation>]
        attr_accessor :event_annotations
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @default_resource_names = args[:default_resource_names] if args.key?(:default_resource_names)
          @event_annotations = args[:event_annotations] if args.key?(:event_annotations)
        end
      end
      
      # A filter to reduce the amount of data charted in relevant widgets.
      class DashboardFilter
        include Google::Apis::Core::Hashable
      
        # The specified filter type
        # Corresponds to the JSON property `filterType`
        # @return [String]
        attr_accessor :filter_type
      
        # Optional. The key for the label. This must be omitted if the filter_type is
        # VALUE_ONLY but is required otherwise.
        # Corresponds to the JSON property `labelKey`
        # @return [String]
        attr_accessor :label_key
      
        # An array of strings
        # Corresponds to the JSON property `stringArray`
        # @return [Google::Apis::MonitoringV1::StringArray]
        attr_accessor :string_array
      
        # An array of strings
        # Corresponds to the JSON property `stringArrayValue`
        # @return [Google::Apis::MonitoringV1::StringArray]
        attr_accessor :string_array_value
      
        # A variable-length string value. If this field is set, value_type must be set
        # to STRING or VALUE_TYPE_UNSPECIFIED
        # Corresponds to the JSON property `stringValue`
        # @return [String]
        attr_accessor :string_value
      
        # The placeholder text that can be referenced in a filter string or MQL query.
        # If omitted, the dashboard filter will be applied to all relevant widgets in
        # the dashboard.
        # Corresponds to the JSON property `templateVariable`
        # @return [String]
        attr_accessor :template_variable
      
        # TimeSeriesQuery collects the set of supported methods for querying time series
        # data from the Stackdriver metrics API.
        # Corresponds to the JSON property `timeSeriesQuery`
        # @return [Google::Apis::MonitoringV1::TimeSeriesQuery]
        attr_accessor :time_series_query
      
        # The type of the filter value. If value_type is not provided, it will be
        # inferred from the default_value. If neither value_type nor default_value is
        # provided, value_type will be set to STRING by default.
        # Corresponds to the JSON property `valueType`
        # @return [String]
        attr_accessor :value_type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @filter_type = args[:filter_type] if args.key?(:filter_type)
          @label_key = args[:label_key] if args.key?(:label_key)
          @string_array = args[:string_array] if args.key?(:string_array)
          @string_array_value = args[:string_array_value] if args.key?(:string_array_value)
          @string_value = args[:string_value] if args.key?(:string_value)
          @template_variable = args[:template_variable] if args.key?(:template_variable)
          @time_series_query = args[:time_series_query] if args.key?(:time_series_query)
          @value_type = args[:value_type] if args.key?(:value_type)
        end
      end
      
      # Groups a time series query definition with charting options.
      class DataSet
        include Google::Apis::Core::Hashable
      
        # Optional. The collection of breakdowns to be applied to the dataset.
        # Corresponds to the JSON property `breakdowns`
        # @return [Array<Google::Apis::MonitoringV1::Breakdown>]
        attr_accessor :breakdowns
      
        # Optional. A collection of dimension columns.
        # Corresponds to the JSON property `dimensions`
        # @return [Array<Google::Apis::MonitoringV1::Dimension>]
        attr_accessor :dimensions
      
        # A template string for naming TimeSeries in the resulting data set. This should
        # be a string with interpolations of the form $`label_name`, which will resolve
        # to the label's value.
        # Corresponds to the JSON property `legendTemplate`
        # @return [String]
        attr_accessor :legend_template
      
        # Optional. A collection of measures.
        # Corresponds to the JSON property `measures`
        # @return [Array<Google::Apis::MonitoringV1::Measure>]
        attr_accessor :measures
      
        # Optional. The lower bound on data point frequency for this data set,
        # implemented by specifying the minimum alignment period to use in a time series
        # query For example, if the data is published once every 10 minutes, the
        # min_alignment_period should be at least 10 minutes. It would not make sense to
        # fetch and align data at one minute intervals.
        # Corresponds to the JSON property `minAlignmentPeriod`
        # @return [String]
        attr_accessor :min_alignment_period
      
        # How this data should be plotted on the chart.
        # Corresponds to the JSON property `plotType`
        # @return [String]
        attr_accessor :plot_type
      
        # Optional. A collection of sort options, affects the order of the data and
        # legend.
        # Corresponds to the JSON property `sort`
        # @return [Array<Google::Apis::MonitoringV1::ColumnSortingOptions>]
        attr_accessor :sort
      
        # Optional. The target axis to use for plotting the metric.
        # Corresponds to the JSON property `targetAxis`
        # @return [String]
        attr_accessor :target_axis
      
        # TimeSeriesQuery collects the set of supported methods for querying time series
        # data from the Stackdriver metrics API.
        # Corresponds to the JSON property `timeSeriesQuery`
        # @return [Google::Apis::MonitoringV1::TimeSeriesQuery]
        attr_accessor :time_series_query
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @breakdowns = args[:breakdowns] if args.key?(:breakdowns)
          @dimensions = args[:dimensions] if args.key?(:dimensions)
          @legend_template = args[:legend_template] if args.key?(:legend_template)
          @measures = args[:measures] if args.key?(:measures)
          @min_alignment_period = args[:min_alignment_period] if args.key?(:min_alignment_period)
          @plot_type = args[:plot_type] if args.key?(:plot_type)
          @sort = args[:sort] if args.key?(:sort)
          @target_axis = args[:target_axis] if args.key?(:target_axis)
          @time_series_query = args[:time_series_query] if args.key?(:time_series_query)
        end
      end
      
      # A chart dimension. Dimensions are a structured label, class, or category for a
      # set of measurements in your data.
      class Dimension
        include Google::Apis::Core::Hashable
      
        # Required. The name of the column in the source SQL query that is used to chart
        # the dimension.
        # Corresponds to the JSON property `column`
        # @return [String]
        attr_accessor :column
      
        # Optional. The type of the dimension column. This is relevant only if one of
        # the bin_size fields is set. If it is empty, the type TIMESTAMP or INT64 will
        # be assumed based on which bin_size field is set. If populated, this should be
        # set to one of the following types: DATE, TIME, DATETIME, TIMESTAMP, BIGNUMERIC,
        # INT64, NUMERIC, FLOAT64.
        # Corresponds to the JSON property `columnType`
        # @return [String]
        attr_accessor :column_type
      
        # Optional. float_bin_size is used when the column type used for a dimension is
        # a floating point numeric column.
        # Corresponds to the JSON property `floatBinSize`
        # @return [Float]
        attr_accessor :float_bin_size
      
        # A limit to the number of bins generated. When 0 is specified, the maximum
        # count is not enforced.
        # Corresponds to the JSON property `maxBinCount`
        # @return [Fixnum]
        attr_accessor :max_bin_count
      
        # numeric_bin_size is used when the column type used for a dimension is numeric
        # or string.
        # Corresponds to the JSON property `numericBinSize`
        # @return [Fixnum]
        attr_accessor :numeric_bin_size
      
        # The column name to sort on for binning. This column can be the same column as
        # this dimension or any other column used as a measure in the results. If
        # sort_order is set to NONE, then this value is not used.
        # Corresponds to the JSON property `sortColumn`
        # @return [String]
        attr_accessor :sort_column
      
        # The sort order applied to the sort column.
        # Corresponds to the JSON property `sortOrder`
        # @return [String]
        attr_accessor :sort_order
      
        # time_bin_size is used when the data type specified by column is a time type
        # and the bin size is determined by a time duration. If column_type is DATE,
        # this must be a whole value multiple of 1 day. If column_type is TIME, this
        # must be less than or equal to 24 hours.
        # Corresponds to the JSON property `timeBinSize`
        # @return [String]
        attr_accessor :time_bin_size
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @column = args[:column] if args.key?(:column)
          @column_type = args[:column_type] if args.key?(:column_type)
          @float_bin_size = args[:float_bin_size] if args.key?(:float_bin_size)
          @max_bin_count = args[:max_bin_count] if args.key?(:max_bin_count)
          @numeric_bin_size = args[:numeric_bin_size] if args.key?(:numeric_bin_size)
          @sort_column = args[:sort_column] if args.key?(:sort_column)
          @sort_order = args[:sort_order] if args.key?(:sort_order)
          @time_bin_size = args[:time_bin_size] if args.key?(:time_bin_size)
        end
      end
      
      # A set of (label, value) pairs that were removed from a Distribution time
      # series during aggregation and then added as an attachment to a Distribution.
      # Exemplar.The full label set for the exemplars is constructed by using the
      # dropped pairs in combination with the label values that remain on the
      # aggregated Distribution time series. The constructed full label set can be
      # used to identify the specific entity, such as the instance or job, which might
      # be contributing to a long-tail. However, with dropped labels, the storage
      # requirements are reduced because only the aggregated distribution values for a
      # large group of time series are stored.Note that there are no guarantees on
      # ordering of the labels from exemplar-to-exemplar and from distribution-to-
      # distribution in the same stream, and there may be duplicates. It is up to
      # clients to resolve any ambiguities.
      class DroppedLabels
        include Google::Apis::Core::Hashable
      
        # Map from label to its value, for all labels dropped in any aggregation.
        # Corresponds to the JSON property `label`
        # @return [Hash<String,String>]
        attr_accessor :label
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @label = args[:label] if args.key?(:label)
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
      
      # A widget that displays a list of error groups.
      class ErrorReportingPanel
        include Google::Apis::Core::Hashable
      
        # The resource name of the Google Cloud Platform project. Written as projects/`
        # projectID` or projects/`projectNumber`, where `projectID` and `projectNumber`
        # can be found in the Google Cloud console (https://support.google.com/cloud/
        # answer/6158840).Examples: projects/my-project-123, projects/5551234.
        # Corresponds to the JSON property `projectNames`
        # @return [Array<String>]
        attr_accessor :project_names
      
        # An identifier of the service, such as the name of the executable, job, or
        # Google App Engine service name. This field is expected to have a low number of
        # values that are relatively stable over time, as opposed to version, which can
        # be changed whenever new code is deployed.Contains the service name for error
        # reports extracted from Google App Engine logs or default if the App Engine
        # default service is used.
        # Corresponds to the JSON property `services`
        # @return [Array<String>]
        attr_accessor :services
      
        # Represents the source code version that the developer provided, which could
        # represent a version label or a Git SHA-1 hash, for example. For App Engine
        # standard environment, the version is set to the version of the app.
        # Corresponds to the JSON property `versions`
        # @return [Array<String>]
        attr_accessor :versions
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @project_names = args[:project_names] if args.key?(:project_names)
          @services = args[:services] if args.key?(:services)
          @versions = args[:versions] if args.key?(:versions)
        end
      end
      
      # Annotation configuration for one event type on a dashboard
      class EventAnnotation
        include Google::Apis::Core::Hashable
      
        # Solely for UI display. Should not be used programmatically.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # Whether or not to show the events on the dashboard by default
        # Corresponds to the JSON property `enabled`
        # @return [Boolean]
        attr_accessor :enabled
        alias_method :enabled?, :enabled
      
        # The type of event to display.
        # Corresponds to the JSON property `eventType`
        # @return [String]
        attr_accessor :event_type
      
        # string filtering the events - event dependant. Example values: "resource.
        # labels.pod_name = 'pod-1'" "protoPayload.authenticationInfo.principalEmail='
        # user@example.com'"
        # Corresponds to the JSON property `filter`
        # @return [String]
        attr_accessor :filter
      
        # Per annotation level override for the names of logging resources to search for
        # events. Currently only projects are supported. If both this field and the per
        # annotation field is empty, it will default to the host project. Limit: 50
        # projects. For example: “projects/another-project-id”
        # Corresponds to the JSON property `resourceNames`
        # @return [Array<String>]
        attr_accessor :resource_names
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @display_name = args[:display_name] if args.key?(:display_name)
          @enabled = args[:enabled] if args.key?(:enabled)
          @event_type = args[:event_type] if args.key?(:event_type)
          @filter = args[:filter] if args.key?(:filter)
          @resource_names = args[:resource_names] if args.key?(:resource_names)
        end
      end
      
      # A single field of a message type.
      class Field
        include Google::Apis::Core::Hashable
      
        # The field cardinality.
        # Corresponds to the JSON property `cardinality`
        # @return [String]
        attr_accessor :cardinality
      
        # The string value of the default value of this field. Proto2 syntax only.
        # Corresponds to the JSON property `defaultValue`
        # @return [String]
        attr_accessor :default_value
      
        # The field JSON name.
        # Corresponds to the JSON property `jsonName`
        # @return [String]
        attr_accessor :json_name
      
        # The field type.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # The field name.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # The field number.
        # Corresponds to the JSON property `number`
        # @return [Fixnum]
        attr_accessor :number
      
        # The index of the field type in Type.oneofs, for message or enumeration types.
        # The first type has index 1; zero means the type is not in the list.
        # Corresponds to the JSON property `oneofIndex`
        # @return [Fixnum]
        attr_accessor :oneof_index
      
        # The protocol buffer options.
        # Corresponds to the JSON property `options`
        # @return [Array<Google::Apis::MonitoringV1::Option>]
        attr_accessor :options
      
        # Whether to use alternative packed wire representation.
        # Corresponds to the JSON property `packed`
        # @return [Boolean]
        attr_accessor :packed
        alias_method :packed?, :packed
      
        # The field type URL, without the scheme, for message or enumeration types.
        # Example: "type.googleapis.com/google.protobuf.Timestamp".
        # Corresponds to the JSON property `typeUrl`
        # @return [String]
        attr_accessor :type_url
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @cardinality = args[:cardinality] if args.key?(:cardinality)
          @default_value = args[:default_value] if args.key?(:default_value)
          @json_name = args[:json_name] if args.key?(:json_name)
          @kind = args[:kind] if args.key?(:kind)
          @name = args[:name] if args.key?(:name)
          @number = args[:number] if args.key?(:number)
          @oneof_index = args[:oneof_index] if args.key?(:oneof_index)
          @options = args[:options] if args.key?(:options)
          @packed = args[:packed] if args.key?(:packed)
          @type_url = args[:type_url] if args.key?(:type_url)
        end
      end
      
      # A gauge chart shows where the current value sits within a pre-defined range.
      # The upper and lower bounds should define the possible range of values for the
      # scorecard's query (inclusive).
      class GaugeView
        include Google::Apis::Core::Hashable
      
        # The lower bound for this gauge chart. The value of the chart should always be
        # greater than or equal to this.
        # Corresponds to the JSON property `lowerBound`
        # @return [Float]
        attr_accessor :lower_bound
      
        # The upper bound for this gauge chart. The value of the chart should always be
        # less than or equal to this.
        # Corresponds to the JSON property `upperBound`
        # @return [Float]
        attr_accessor :upper_bound
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @lower_bound = args[:lower_bound] if args.key?(:lower_bound)
          @upper_bound = args[:upper_bound] if args.key?(:upper_bound)
        end
      end
      
      # A basic layout divides the available space into vertical columns of equal
      # width and arranges a list of widgets using a row-first strategy.
      class GridLayout
        include Google::Apis::Core::Hashable
      
        # The number of columns into which the view's width is divided. If omitted or
        # set to zero, a system default will be used while rendering.
        # Corresponds to the JSON property `columns`
        # @return [Fixnum]
        attr_accessor :columns
      
        # The informational elements that are arranged into the columns row-first.
        # Corresponds to the JSON property `widgets`
        # @return [Array<Google::Apis::MonitoringV1::Widget>]
        attr_accessor :widgets
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @columns = args[:columns] if args.key?(:columns)
          @widgets = args[:widgets] if args.key?(:widgets)
        end
      end
      
      # Message that represents an arbitrary HTTP body. It should only be used for
      # payload formats that can't be represented as JSON, such as raw binary or an
      # HTML page.This message can be used both in streaming and non-streaming API
      # methods in the request as well as the response.It can be used as a top-level
      # request field, which is convenient if one wants to extract parameters from
      # either the URL or HTTP template into the request fields and also want access
      # to the raw HTTP body.Example: message GetResourceRequest ` // A unique request
      # id. string request_id = 1; // The raw HTTP body is bound to this field. google.
      # api.HttpBody http_body = 2; ` service ResourceService ` rpc GetResource(
      # GetResourceRequest) returns (google.api.HttpBody); rpc UpdateResource(google.
      # api.HttpBody) returns (google.protobuf.Empty); ` Example with streaming
      # methods: service CaldavService ` rpc GetCalendar(stream google.api.HttpBody)
      # returns (stream google.api.HttpBody); rpc UpdateCalendar(stream google.api.
      # HttpBody) returns (stream google.api.HttpBody); ` Use of this type only
      # changes how the request and response bodies are handled, all other features
      # will continue to work unchanged.
      class HttpBody
        include Google::Apis::Core::Hashable
      
        # The HTTP Content-Type header value specifying the content type of the body.
        # Corresponds to the JSON property `contentType`
        # @return [String]
        attr_accessor :content_type
      
        # The HTTP request/response body as raw binary.
        # Corresponds to the JSON property `data`
        # NOTE: Values are automatically base64 encoded/decoded in the client library.
        # @return [String]
        attr_accessor :data
      
        # Application specific response metadata. Must be set in the first response for
        # streaming APIs.
        # Corresponds to the JSON property `extensions`
        # @return [Array<Hash<String,Object>>]
        attr_accessor :extensions
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @content_type = args[:content_type] if args.key?(:content_type)
          @data = args[:data] if args.key?(:data)
          @extensions = args[:extensions] if args.key?(:extensions)
        end
      end
      
      # A widget that displays a list of incidents
      class IncidentList
        include Google::Apis::Core::Hashable
      
        # Optional. The monitored resource for which incidents are listed. The resource
        # doesn't need to be fully specified. That is, you can specify the resource type
        # but not the values of the resource labels. The resource type and labels are
        # used for filtering.
        # Corresponds to the JSON property `monitoredResources`
        # @return [Array<Google::Apis::MonitoringV1::MonitoredResource>]
        attr_accessor :monitored_resources
      
        # Optional. A list of alert policy names to filter the incident list by. Don't
        # include the project ID prefix in the policy name. For example, use
        # alertPolicies/utilization.
        # Corresponds to the JSON property `policyNames`
        # @return [Array<String>]
        attr_accessor :policy_names
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @monitored_resources = args[:monitored_resources] if args.key?(:monitored_resources)
          @policy_names = args[:policy_names] if args.key?(:policy_names)
        end
      end
      
      # Represents a time interval, encoded as a Timestamp start (inclusive) and a
      # Timestamp end (exclusive).The start must be less than or equal to the end.
      # When the start equals the end, the interval is empty (matches no time). When
      # both start and end are unspecified, the interval matches any time.
      class Interval
        include Google::Apis::Core::Hashable
      
        # Optional. Exclusive end of the interval.If specified, a Timestamp matching
        # this interval will have to be before the end.
        # Corresponds to the JSON property `endTime`
        # @return [String]
        attr_accessor :end_time
      
        # Optional. Inclusive start of the interval.If specified, a Timestamp matching
        # this interval will have to be the same or after the start.
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
      
      # The ListDashboards request.
      class ListDashboardsResponse
        include Google::Apis::Core::Hashable
      
        # The list of requested dashboards.
        # Corresponds to the JSON property `dashboards`
        # @return [Array<Google::Apis::MonitoringV1::Dashboard>]
        attr_accessor :dashboards
      
        # If there are more results than have been returned, then this field is set to a
        # non-empty value. To see the additional results, use that value as page_token
        # in the next call to this method.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @dashboards = args[:dashboards] if args.key?(:dashboards)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # Response for the ListMetricsScopesByMonitoredProject method.
      class ListMetricsScopesByMonitoredProjectResponse
        include Google::Apis::Core::Hashable
      
        # A set of all metrics scopes that the specified monitored project has been
        # added to.
        # Corresponds to the JSON property `metricsScopes`
        # @return [Array<Google::Apis::MonitoringV1::MetricsScope>]
        attr_accessor :metrics_scopes
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @metrics_scopes = args[:metrics_scopes] if args.key?(:metrics_scopes)
        end
      end
      
      # A widget that displays a stream of log.
      class LogsPanel
        include Google::Apis::Core::Hashable
      
        # A filter that chooses which log entries to return. See Advanced Logs Queries (
        # https://cloud.google.com/logging/docs/view/advanced-queries). Only log entries
        # that match the filter are returned. An empty filter matches all log entries.
        # Corresponds to the JSON property `filter`
        # @return [String]
        attr_accessor :filter
      
        # The names of logging resources to collect logs for. Currently projects and
        # storage views are supported. If empty, the widget will default to the host
        # project.
        # Corresponds to the JSON property `resourceNames`
        # @return [Array<String>]
        attr_accessor :resource_names
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @filter = args[:filter] if args.key?(:filter)
          @resource_names = args[:resource_names] if args.key?(:resource_names)
        end
      end
      
      # A chart measure. Measures represent a measured property in your chart data
      # such as rainfall in inches, number of units sold, revenue gained, etc.
      class Measure
        include Google::Apis::Core::Hashable
      
        # Preview: An identifier for an aggregation function. Aggregation functions are
        # SQL functions that group or transform data from multiple points to a single
        # point. This is a preview feature and may be subject to change before final
        # release.
        # Corresponds to the JSON property `aggregationFunction`
        # @return [Google::Apis::MonitoringV1::AggregationFunction]
        attr_accessor :aggregation_function
      
        # Required. The column name within in the dataset used for the measure.
        # Corresponds to the JSON property `column`
        # @return [String]
        attr_accessor :column
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @aggregation_function = args[:aggregation_function] if args.key?(:aggregation_function)
          @column = args[:column] if args.key?(:column)
        end
      end
      
      # Represents a Metrics Scope (https://cloud.google.com/monitoring/settings#
      # concept-scope) in Cloud Monitoring, which specifies one or more Google
      # projects and zero or more AWS accounts to monitor together.
      class MetricsScope
        include Google::Apis::Core::Hashable
      
        # Output only. The time when this Metrics Scope was created.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Output only. The list of projects monitored by this Metrics Scope.
        # Corresponds to the JSON property `monitoredProjects`
        # @return [Array<Google::Apis::MonitoringV1::MonitoredProject>]
        attr_accessor :monitored_projects
      
        # Immutable. The resource name of the Monitoring Metrics Scope. On input, the
        # resource name can be specified with the scoping project ID or number. On
        # output, the resource name is specified with the scoping project number.
        # Example: locations/global/metricsScopes/`SCOPING_PROJECT_ID_OR_NUMBER`
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Output only. The time when this Metrics Scope record was last updated.
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @create_time = args[:create_time] if args.key?(:create_time)
          @monitored_projects = args[:monitored_projects] if args.key?(:monitored_projects)
          @name = args[:name] if args.key?(:name)
          @update_time = args[:update_time] if args.key?(:update_time)
        end
      end
      
      # A project being monitored (https://cloud.google.com/monitoring/settings/
      # multiple-projects#create-multi) by a Metrics Scope.
      class MonitoredProject
        include Google::Apis::Core::Hashable
      
        # Output only. The time when this MonitoredProject was created.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Output only. Set if the project has been tombstoned by the user.
        # Corresponds to the JSON property `isTombstoned`
        # @return [Boolean]
        attr_accessor :is_tombstoned
        alias_method :is_tombstoned?, :is_tombstoned
      
        # Immutable. The resource name of the MonitoredProject. On input, the resource
        # name includes the scoping project ID and monitored project ID. On output, it
        # contains the equivalent project numbers. Example: locations/global/
        # metricsScopes/`SCOPING_PROJECT_ID_OR_NUMBER`/projects/`
        # MONITORED_PROJECT_ID_OR_NUMBER`
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @create_time = args[:create_time] if args.key?(:create_time)
          @is_tombstoned = args[:is_tombstoned] if args.key?(:is_tombstoned)
          @name = args[:name] if args.key?(:name)
        end
      end
      
      # An object representing a resource that can be used for monitoring, logging,
      # billing, or other purposes. Examples include virtual machine instances,
      # databases, and storage devices such as disks. The type field identifies a
      # MonitoredResourceDescriptor object that describes the resource's schema.
      # Information in the labels field identifies the actual resource and its
      # attributes according to the schema. For example, a particular Compute Engine
      # VM instance could be represented by the following object, because the
      # MonitoredResourceDescriptor for "gce_instance" has labels "project_id", "
      # instance_id" and "zone": ` "type": "gce_instance", "labels": ` "project_id": "
      # my-project", "instance_id": "12345678901234", "zone": "us-central1-a" ``
      class MonitoredResource
        include Google::Apis::Core::Hashable
      
        # Required. Values for all of the labels listed in the associated monitored
        # resource descriptor. For example, Compute Engine VM instances use the labels "
        # project_id", "instance_id", and "zone".
        # Corresponds to the JSON property `labels`
        # @return [Hash<String,String>]
        attr_accessor :labels
      
        # Required. The monitored resource type. This field must match the type field of
        # a MonitoredResourceDescriptor object. For example, the type of a Compute
        # Engine VM instance is gce_instance. For a list of types, see Monitoring
        # resource types (https://cloud.google.com/monitoring/api/resources) and Logging
        # resource types (https://cloud.google.com/logging/docs/api/v2/resource-list).
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @labels = args[:labels] if args.key?(:labels)
          @type = args[:type] if args.key?(:type)
        end
      end
      
      # A mosaic layout divides the available space into a grid of blocks, and
      # overlays the grid with tiles. Unlike GridLayout, tiles may span multiple grid
      # blocks and can be placed at arbitrary locations in the grid.
      class MosaicLayout
        include Google::Apis::Core::Hashable
      
        # The number of columns in the mosaic grid. The number of columns must be
        # between 1 and 48, inclusive.
        # Corresponds to the JSON property `columns`
        # @return [Fixnum]
        attr_accessor :columns
      
        # The tiles to display.
        # Corresponds to the JSON property `tiles`
        # @return [Array<Google::Apis::MonitoringV1::Tile>]
        attr_accessor :tiles
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @columns = args[:columns] if args.key?(:columns)
          @tiles = args[:tiles] if args.key?(:tiles)
        end
      end
      
      # This resource represents a long-running operation that is the result of a
      # network API call.
      class Operation
        include Google::Apis::Core::Hashable
      
        # If the value is false, it means the operation is still in progress. If true,
        # the operation is completed, and either error or response is available.
        # Corresponds to the JSON property `done`
        # @return [Boolean]
        attr_accessor :done
        alias_method :done?, :done
      
        # The Status type defines a logical error model that is suitable for different
        # programming environments, including REST APIs and RPC APIs. It is used by gRPC
        # (https://github.com/grpc). Each Status message contains three pieces of data:
        # error code, error message, and error details.You can find out more about this
        # error model and how to work with it in the API Design Guide (https://cloud.
        # google.com/apis/design/errors).
        # Corresponds to the JSON property `error`
        # @return [Google::Apis::MonitoringV1::Status]
        attr_accessor :error
      
        # Service-specific metadata associated with the operation. It typically contains
        # progress information and common metadata such as create time. Some services
        # might not provide such metadata. Any method that returns a long-running
        # operation should document the metadata type, if any.
        # Corresponds to the JSON property `metadata`
        # @return [Hash<String,Object>]
        attr_accessor :metadata
      
        # The server-assigned name, which is only unique within the same service that
        # originally returns it. If you use the default HTTP mapping, the name should be
        # a resource name ending with operations/`unique_id`.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # The normal, successful response of the operation. If the original method
        # returns no data on success, such as Delete, the response is google.protobuf.
        # Empty. If the original method is standard Get/Create/Update, the response
        # should be the resource. For other methods, the response should have the type
        # XxxResponse, where Xxx is the original method name. For example, if the
        # original method name is TakeSnapshot(), the inferred response type is
        # TakeSnapshotResponse.
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
      
      # Contains metadata for longrunning operation for the edit Metrics Scope
      # endpoints.
      class OperationMetadata
        include Google::Apis::Core::Hashable
      
        # The time when the batch request was received.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Current state of the batch operation.
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        # The time when the operation result was last updated.
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @create_time = args[:create_time] if args.key?(:create_time)
          @state = args[:state] if args.key?(:state)
          @update_time = args[:update_time] if args.key?(:update_time)
        end
      end
      
      # Preview: A query that produces an aggregated response and supporting data.
      # This is a preview feature and may be subject to change before final release.
      class OpsAnalyticsQuery
        include Google::Apis::Core::Hashable
      
        # A SQL query to fetch time series, category series, or numeric series data.
        # Corresponds to the JSON property `sql`
        # @return [String]
        attr_accessor :sql
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @sql = args[:sql] if args.key?(:sql)
        end
      end
      
      # A protocol buffer option, which can be attached to a message, field,
      # enumeration, etc.
      class Option
        include Google::Apis::Core::Hashable
      
        # The option's name. For protobuf built-in options (options defined in
        # descriptor.proto), this is the short name. For example, "map_entry". For
        # custom options, it should be the fully-qualified name. For example, "google.
        # api.http".
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # The option's value packed in an Any message. If the value is a primitive, the
        # corresponding wrapper type defined in google/protobuf/wrappers.proto should be
        # used. If the value is an enum, it should be stored as an int32 value using the
        # google.protobuf.Int32Value type.
        # Corresponds to the JSON property `value`
        # @return [Hash<String,Object>]
        attr_accessor :value
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @name = args[:name] if args.key?(:name)
          @value = args[:value] if args.key?(:value)
        end
      end
      
      # Preview: Parameter value applied to the aggregation function. This is a
      # preview feature and may be subject to change before final release.
      class Parameter
        include Google::Apis::Core::Hashable
      
        # A floating-point parameter value.
        # Corresponds to the JSON property `doubleValue`
        # @return [Float]
        attr_accessor :double_value
      
        # An integer parameter value.
        # Corresponds to the JSON property `intValue`
        # @return [Fixnum]
        attr_accessor :int_value
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @double_value = args[:double_value] if args.key?(:double_value)
          @int_value = args[:int_value] if args.key?(:int_value)
        end
      end
      
      # Describes a ranking-based time series filter. Each input time series is ranked
      # with an aligner. The filter will allow up to num_time_series time series to
      # pass through it, selecting them based on the relative ranking.For example, if
      # ranking_method is METHOD_MEAN,direction is BOTTOM, and num_time_series is 3,
      # then the 3 times series with the lowest mean values will pass through the
      # filter.
      class PickTimeSeriesFilter
        include Google::Apis::Core::Hashable
      
        # How to use the ranking to select time series that pass through the filter.
        # Corresponds to the JSON property `direction`
        # @return [String]
        attr_accessor :direction
      
        # Represents a time interval, encoded as a Timestamp start (inclusive) and a
        # Timestamp end (exclusive).The start must be less than or equal to the end.
        # When the start equals the end, the interval is empty (matches no time). When
        # both start and end are unspecified, the interval matches any time.
        # Corresponds to the JSON property `interval`
        # @return [Google::Apis::MonitoringV1::Interval]
        attr_accessor :interval
      
        # How many time series to allow to pass through the filter.
        # Corresponds to the JSON property `numTimeSeries`
        # @return [Fixnum]
        attr_accessor :num_time_series
      
        # ranking_method is applied to each time series independently to produce the
        # value which will be used to compare the time series to other time series.
        # Corresponds to the JSON property `rankingMethod`
        # @return [String]
        attr_accessor :ranking_method
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @direction = args[:direction] if args.key?(:direction)
          @interval = args[:interval] if args.key?(:interval)
          @num_time_series = args[:num_time_series] if args.key?(:num_time_series)
          @ranking_method = args[:ranking_method] if args.key?(:ranking_method)
        end
      end
      
      # A widget that displays timeseries data as a pie or a donut.
      class PieChart
        include Google::Apis::Core::Hashable
      
        # Required. Indicates the visualization type for the PieChart.
        # Corresponds to the JSON property `chartType`
        # @return [String]
        attr_accessor :chart_type
      
        # Required. The queries for the chart's data.
        # Corresponds to the JSON property `dataSets`
        # @return [Array<Google::Apis::MonitoringV1::PieChartDataSet>]
        attr_accessor :data_sets
      
        # Optional. Indicates whether or not the pie chart should show slices' labels
        # Corresponds to the JSON property `showLabels`
        # @return [Boolean]
        attr_accessor :show_labels
        alias_method :show_labels?, :show_labels
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @chart_type = args[:chart_type] if args.key?(:chart_type)
          @data_sets = args[:data_sets] if args.key?(:data_sets)
          @show_labels = args[:show_labels] if args.key?(:show_labels)
        end
      end
      
      # Groups a time series query definition.
      class PieChartDataSet
        include Google::Apis::Core::Hashable
      
        # A dimension is a structured label, class, or category for a set of
        # measurements in your data.
        # Corresponds to the JSON property `dimensions`
        # @return [Array<Google::Apis::MonitoringV1::Dimension>]
        attr_accessor :dimensions
      
        # A measure is a measured value of a property in your data. For example,
        # rainfall in inches, number of units sold, revenue gained, etc.
        # Corresponds to the JSON property `measures`
        # @return [Array<Google::Apis::MonitoringV1::Measure>]
        attr_accessor :measures
      
        # Optional. The lower bound on data point frequency for this data set,
        # implemented by specifying the minimum alignment period to use in a time series
        # query. For example, if the data is published once every 10 minutes, the
        # min_alignment_period should be at least 10 minutes. It would not make sense to
        # fetch and align data at one minute intervals.
        # Corresponds to the JSON property `minAlignmentPeriod`
        # @return [String]
        attr_accessor :min_alignment_period
      
        # Optional. A template for the name of the slice. This name will be displayed in
        # the legend and the tooltip of the pie chart. It replaces the auto-generated
        # names for the slices. For example, if the template is set to $`resource.labels.
        # zone`, the zone's value will be used for the name instead of the default name.
        # Corresponds to the JSON property `sliceNameTemplate`
        # @return [String]
        attr_accessor :slice_name_template
      
        # TimeSeriesQuery collects the set of supported methods for querying time series
        # data from the Stackdriver metrics API.
        # Corresponds to the JSON property `timeSeriesQuery`
        # @return [Google::Apis::MonitoringV1::TimeSeriesQuery]
        attr_accessor :time_series_query
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @dimensions = args[:dimensions] if args.key?(:dimensions)
          @measures = args[:measures] if args.key?(:measures)
          @min_alignment_period = args[:min_alignment_period] if args.key?(:min_alignment_period)
          @slice_name_template = args[:slice_name_template] if args.key?(:slice_name_template)
          @time_series_query = args[:time_series_query] if args.key?(:time_series_query)
        end
      end
      
      # QueryExemplarsRequest holds all parameters of the Prometheus upstream API for
      # querying exemplars.
      class QueryExemplarsRequest
        include Google::Apis::Core::Hashable
      
        # The end time to evaluate the query for. Either floating point UNIX seconds or
        # RFC3339 formatted timestamp.
        # Corresponds to the JSON property `end`
        # @return [String]
        attr_accessor :end
      
        # A PromQL query string. Query language documentation: https://prometheus.io/
        # docs/prometheus/latest/querying/basics/.
        # Corresponds to the JSON property `query`
        # @return [String]
        attr_accessor :query
      
        # The start time to evaluate the query for. Either floating point UNIX seconds
        # or RFC3339 formatted timestamp.
        # Corresponds to the JSON property `start`
        # @return [String]
        attr_accessor :start
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @end = args[:end] if args.key?(:end)
          @query = args[:query] if args.key?(:query)
          @start = args[:start] if args.key?(:start)
        end
      end
      
      # QueryInstantRequest holds all parameters of the Prometheus upstream instant
      # query API plus GCM specific parameters.
      class QueryInstantRequest
        include Google::Apis::Core::Hashable
      
        # A PromQL query string. Query language documentation: https://prometheus.io/
        # docs/prometheus/latest/querying/basics/.
        # Corresponds to the JSON property `query`
        # @return [String]
        attr_accessor :query
      
        # The single point in time to evaluate the query for. Either floating point UNIX
        # seconds or RFC3339 formatted timestamp.
        # Corresponds to the JSON property `time`
        # @return [String]
        attr_accessor :time
      
        # An upper bound timeout for the query. Either a Prometheus duration string (
        # https://prometheus.io/docs/prometheus/latest/querying/basics/#time-durations)
        # or floating point seconds. This non-standard encoding must be used for
        # compatibility with the open source API. Clients may still implement timeouts
        # at the connection level while ignoring this field.
        # Corresponds to the JSON property `timeout`
        # @return [String]
        attr_accessor :timeout
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @query = args[:query] if args.key?(:query)
          @time = args[:time] if args.key?(:time)
          @timeout = args[:timeout] if args.key?(:timeout)
        end
      end
      
      # QueryLabelsRequest holds all parameters of the Prometheus upstream API for
      # returning a list of label names.
      class QueryLabelsRequest
        include Google::Apis::Core::Hashable
      
        # The end time to evaluate the query for. Either floating point UNIX seconds or
        # RFC3339 formatted timestamp.
        # Corresponds to the JSON property `end`
        # @return [String]
        attr_accessor :end
      
        # A list of matchers encoded in the Prometheus label matcher format to constrain
        # the values to series that satisfy them.
        # Corresponds to the JSON property `match`
        # @return [String]
        attr_accessor :match
      
        # The start time to evaluate the query for. Either floating point UNIX seconds
        # or RFC3339 formatted timestamp.
        # Corresponds to the JSON property `start`
        # @return [String]
        attr_accessor :start
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @end = args[:end] if args.key?(:end)
          @match = args[:match] if args.key?(:match)
          @start = args[:start] if args.key?(:start)
        end
      end
      
      # QueryRangeRequest holds all parameters of the Prometheus upstream range query
      # API plus GCM specific parameters.
      class QueryRangeRequest
        include Google::Apis::Core::Hashable
      
        # The end time to evaluate the query for. Either floating point UNIX seconds or
        # RFC3339 formatted timestamp.
        # Corresponds to the JSON property `end`
        # @return [String]
        attr_accessor :end
      
        # A PromQL query string. Query language documentation: https://prometheus.io/
        # docs/prometheus/latest/querying/basics/.
        # Corresponds to the JSON property `query`
        # @return [String]
        attr_accessor :query
      
        # The start time to evaluate the query for. Either floating point UNIX seconds
        # or RFC3339 formatted timestamp.
        # Corresponds to the JSON property `start`
        # @return [String]
        attr_accessor :start
      
        # The resolution of query result. Either a Prometheus duration string (https://
        # prometheus.io/docs/prometheus/latest/querying/basics/#time-durations) or
        # floating point seconds. This non-standard encoding must be used for
        # compatibility with the open source API. Clients may still implement timeouts
        # at the connection level while ignoring this field.
        # Corresponds to the JSON property `step`
        # @return [String]
        attr_accessor :step
      
        # An upper bound timeout for the query. Either a Prometheus duration string (
        # https://prometheus.io/docs/prometheus/latest/querying/basics/#time-durations)
        # or floating point seconds. This non-standard encoding must be used for
        # compatibility with the open source API. Clients may still implement timeouts
        # at the connection level while ignoring this field.
        # Corresponds to the JSON property `timeout`
        # @return [String]
        attr_accessor :timeout
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @end = args[:end] if args.key?(:end)
          @query = args[:query] if args.key?(:query)
          @start = args[:start] if args.key?(:start)
          @step = args[:step] if args.key?(:step)
          @timeout = args[:timeout] if args.key?(:timeout)
        end
      end
      
      # QuerySeries holds all parameters of the Prometheus upstream API for querying
      # series.
      class QuerySeriesRequest
        include Google::Apis::Core::Hashable
      
        # The end time to evaluate the query for. Either floating point UNIX seconds or
        # RFC3339 formatted timestamp.
        # Corresponds to the JSON property `end`
        # @return [String]
        attr_accessor :end
      
        # The start time to evaluate the query for. Either floating point UNIX seconds
        # or RFC3339 formatted timestamp.
        # Corresponds to the JSON property `start`
        # @return [String]
        attr_accessor :start
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @end = args[:end] if args.key?(:end)
          @start = args[:start] if args.key?(:start)
        end
      end
      
      # Describes a query to build the numerator or denominator of a
      # TimeSeriesFilterRatio.
      class RatioPart
        include Google::Apis::Core::Hashable
      
        # Describes how to combine multiple time series to provide a different view of
        # the data. Aggregation of time series is done in two steps. First, each time
        # series in the set is aligned to the same time interval boundaries, then the
        # set of time series is optionally reduced in number.Alignment consists of
        # applying the per_series_aligner operation to each time series after its data
        # has been divided into regular alignment_period time intervals. This process
        # takes all of the data points in an alignment period, applies a mathematical
        # transformation such as averaging, minimum, maximum, delta, etc., and converts
        # them into a single data point per period.Reduction is when the aligned and
        # transformed time series can optionally be combined, reducing the number of
        # time series through similar mathematical transformations. Reduction involves
        # applying a cross_series_reducer to all the time series, optionally sorting the
        # time series into subsets with group_by_fields, and applying the reducer to
        # each subset.The raw time series data can contain a huge amount of information
        # from multiple sources. Alignment and reduction transforms this mass of data
        # into a more manageable and representative collection of data, for example "the
        # 95% latency across the average of all tasks in a cluster". This representative
        # data can be more easily graphed and comprehended, and the individual time
        # series data is still available for later drilldown. For more details, see
        # Filtering and aggregation (https://cloud.google.com/monitoring/api/v3/
        # aggregation).
        # Corresponds to the JSON property `aggregation`
        # @return [Google::Apis::MonitoringV1::Aggregation]
        attr_accessor :aggregation
      
        # Required. The monitoring filter (https://cloud.google.com/monitoring/api/v3/
        # filters) that identifies the metric types, resources, and projects to query.
        # Corresponds to the JSON property `filter`
        # @return [String]
        attr_accessor :filter
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @aggregation = args[:aggregation] if args.key?(:aggregation)
          @filter = args[:filter] if args.key?(:filter)
        end
      end
      
      # Defines the layout properties and content for a row.
      class Row
        include Google::Apis::Core::Hashable
      
        # The relative weight of this row. The row weight is used to adjust the height
        # of rows on the screen (relative to peers). Greater the weight, greater the
        # height of the row on the screen. If omitted, a value of 1 is used while
        # rendering.
        # Corresponds to the JSON property `weight`
        # @return [Fixnum]
        attr_accessor :weight
      
        # The display widgets arranged horizontally in this row.
        # Corresponds to the JSON property `widgets`
        # @return [Array<Google::Apis::MonitoringV1::Widget>]
        attr_accessor :widgets
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @weight = args[:weight] if args.key?(:weight)
          @widgets = args[:widgets] if args.key?(:widgets)
        end
      end
      
      # A simplified layout that divides the available space into rows and arranges a
      # set of widgets horizontally in each row.
      class RowLayout
        include Google::Apis::Core::Hashable
      
        # The rows of content to display.
        # Corresponds to the JSON property `rows`
        # @return [Array<Google::Apis::MonitoringV1::Row>]
        attr_accessor :rows
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @rows = args[:rows] if args.key?(:rows)
        end
      end
      
      # A widget showing the latest value of a metric, and how this value relates to
      # one or more thresholds.
      class Scorecard
        include Google::Apis::Core::Hashable
      
        # A generic empty message that you can re-use to avoid defining duplicated empty
        # messages in your APIs. A typical example is to use it as the request or the
        # response type of an API method. For instance: service Foo ` rpc Bar(google.
        # protobuf.Empty) returns (google.protobuf.Empty); `
        # Corresponds to the JSON property `blankView`
        # @return [Google::Apis::MonitoringV1::Empty]
        attr_accessor :blank_view
      
        # Optional. The collection of breakdowns to be applied to the dataset. A
        # breakdown is a way to slice the data. For example, you can break down the data
        # by region.
        # Corresponds to the JSON property `breakdowns`
        # @return [Array<Google::Apis::MonitoringV1::Breakdown>]
        attr_accessor :breakdowns
      
        # Optional. A dimension is a structured label, class, or category for a set of
        # measurements in your data.
        # Corresponds to the JSON property `dimensions`
        # @return [Array<Google::Apis::MonitoringV1::Dimension>]
        attr_accessor :dimensions
      
        # A gauge chart shows where the current value sits within a pre-defined range.
        # The upper and lower bounds should define the possible range of values for the
        # scorecard's query (inclusive).
        # Corresponds to the JSON property `gaugeView`
        # @return [Google::Apis::MonitoringV1::GaugeView]
        attr_accessor :gauge_view
      
        # Optional. A measure is a measured value of a property in your data. For
        # example, rainfall in inches, number of units sold, revenue gained, etc.
        # Corresponds to the JSON property `measures`
        # @return [Array<Google::Apis::MonitoringV1::Measure>]
        attr_accessor :measures
      
        # A sparkChart is a small chart suitable for inclusion in a table-cell or inline
        # in text. This message contains the configuration for a sparkChart to show up
        # on a Scorecard, showing recent trends of the scorecard's timeseries.
        # Corresponds to the JSON property `sparkChartView`
        # @return [Google::Apis::MonitoringV1::SparkChartView]
        attr_accessor :spark_chart_view
      
        # The thresholds used to determine the state of the scorecard given the time
        # series' current value. For an actual value x, the scorecard is in a danger
        # state if x is less than or equal to a danger threshold that triggers below, or
        # greater than or equal to a danger threshold that triggers above. Similarly, if
        # x is above/below a warning threshold that triggers above/below, then the
        # scorecard is in a warning state - unless x also puts it in a danger state. (
        # Danger trumps warning.)As an example, consider a scorecard with the following
        # four thresholds: ` value: 90, category: 'DANGER', trigger: 'ABOVE', `, ` value:
        # 70, category: 'WARNING', trigger: 'ABOVE', `, ` value: 10, category: 'DANGER',
        # trigger: 'BELOW', `, ` value: 20, category: 'WARNING', trigger: 'BELOW', `
        # Then: values less than or equal to 10 would put the scorecard in a DANGER
        # state, values greater than 10 but less than or equal to 20 a WARNING state,
        # values strictly between 20 and 70 an OK state, values greater than or equal to
        # 70 but less than 90 a WARNING state, and values greater than or equal to 90 a
        # DANGER state.
        # Corresponds to the JSON property `thresholds`
        # @return [Array<Google::Apis::MonitoringV1::Threshold>]
        attr_accessor :thresholds
      
        # TimeSeriesQuery collects the set of supported methods for querying time series
        # data from the Stackdriver metrics API.
        # Corresponds to the JSON property `timeSeriesQuery`
        # @return [Google::Apis::MonitoringV1::TimeSeriesQuery]
        attr_accessor :time_series_query
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @blank_view = args[:blank_view] if args.key?(:blank_view)
          @breakdowns = args[:breakdowns] if args.key?(:breakdowns)
          @dimensions = args[:dimensions] if args.key?(:dimensions)
          @gauge_view = args[:gauge_view] if args.key?(:gauge_view)
          @measures = args[:measures] if args.key?(:measures)
          @spark_chart_view = args[:spark_chart_view] if args.key?(:spark_chart_view)
          @thresholds = args[:thresholds] if args.key?(:thresholds)
          @time_series_query = args[:time_series_query] if args.key?(:time_series_query)
        end
      end
      
      # A widget that defines a new section header. Sections populate a table of
      # contents and allow easier navigation of long-form content.
      class SectionHeader
        include Google::Apis::Core::Hashable
      
        # Whether to insert a divider below the section in the table of contents
        # Corresponds to the JSON property `dividerBelow`
        # @return [Boolean]
        attr_accessor :divider_below
        alias_method :divider_below?, :divider_below
      
        # The subtitle of the section
        # Corresponds to the JSON property `subtitle`
        # @return [String]
        attr_accessor :subtitle
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @divider_below = args[:divider_below] if args.key?(:divider_below)
          @subtitle = args[:subtitle] if args.key?(:subtitle)
        end
      end
      
      # A widget that groups the other widgets by using a dropdown menu. All widgets
      # that are within the area spanned by the grouping widget are considered member
      # widgets.
      class SingleViewGroup
        include Google::Apis::Core::Hashable
      
        # Optional. Determines how the widget selector will be displayed.
        # Corresponds to the JSON property `displayType`
        # @return [String]
        attr_accessor :display_type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @display_type = args[:display_type] if args.key?(:display_type)
        end
      end
      
      # SourceContext represents information about the source of a protobuf element,
      # like the file in which it is defined.
      class SourceContext
        include Google::Apis::Core::Hashable
      
        # The path-qualified name of the .proto file that contained the associated
        # protobuf element. For example: "google/protobuf/source_context.proto".
        # Corresponds to the JSON property `fileName`
        # @return [String]
        attr_accessor :file_name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @file_name = args[:file_name] if args.key?(:file_name)
        end
      end
      
      # The context of a span. This is attached to an Exemplar in Distribution values
      # during aggregation.It contains the name of a span with format: projects/[
      # PROJECT_ID_OR_NUMBER]/traces/[TRACE_ID]/spans/[SPAN_ID]
      class SpanContext
        include Google::Apis::Core::Hashable
      
        # The resource name of the span. The format is: projects/[PROJECT_ID_OR_NUMBER]/
        # traces/[TRACE_ID]/spans/[SPAN_ID] [TRACE_ID] is a unique identifier for a
        # trace within a project; it is a 32-character hexadecimal encoding of a 16-byte
        # array.[SPAN_ID] is a unique identifier for a span within a trace; it is a 16-
        # character hexadecimal encoding of an 8-byte array.
        # Corresponds to the JSON property `spanName`
        # @return [String]
        attr_accessor :span_name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @span_name = args[:span_name] if args.key?(:span_name)
        end
      end
      
      # A sparkChart is a small chart suitable for inclusion in a table-cell or inline
      # in text. This message contains the configuration for a sparkChart to show up
      # on a Scorecard, showing recent trends of the scorecard's timeseries.
      class SparkChartView
        include Google::Apis::Core::Hashable
      
        # The lower bound on data point frequency in the chart implemented by specifying
        # the minimum alignment period to use in a time series query. For example, if
        # the data is published once every 10 minutes it would not make sense to fetch
        # and align data at one minute intervals. This field is optional and exists only
        # as a hint.
        # Corresponds to the JSON property `minAlignmentPeriod`
        # @return [String]
        attr_accessor :min_alignment_period
      
        # Required. The type of sparkchart to show in this chartView.
        # Corresponds to the JSON property `sparkChartType`
        # @return [String]
        attr_accessor :spark_chart_type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @min_alignment_period = args[:min_alignment_period] if args.key?(:min_alignment_period)
          @spark_chart_type = args[:spark_chart_type] if args.key?(:spark_chart_type)
        end
      end
      
      # A filter that ranks streams based on their statistical relation to other
      # streams in a request. Note: This field is deprecated and completely ignored by
      # the API.
      class StatisticalTimeSeriesFilter
        include Google::Apis::Core::Hashable
      
        # How many time series to output.
        # Corresponds to the JSON property `numTimeSeries`
        # @return [Fixnum]
        attr_accessor :num_time_series
      
        # rankingMethod is applied to a set of time series, and then the produced value
        # for each individual time series is used to compare a given time series to
        # others. These are methods that cannot be applied stream-by-stream, but rather
        # require the full context of a request to evaluate time series.
        # Corresponds to the JSON property `rankingMethod`
        # @return [String]
        attr_accessor :ranking_method
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @num_time_series = args[:num_time_series] if args.key?(:num_time_series)
          @ranking_method = args[:ranking_method] if args.key?(:ranking_method)
        end
      end
      
      # The Status type defines a logical error model that is suitable for different
      # programming environments, including REST APIs and RPC APIs. It is used by gRPC
      # (https://github.com/grpc). Each Status message contains three pieces of data:
      # error code, error message, and error details.You can find out more about this
      # error model and how to work with it in the API Design Guide (https://cloud.
      # google.com/apis/design/errors).
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
      
      # An array of strings
      class StringArray
        include Google::Apis::Core::Hashable
      
        # The values of the array
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
      
      # Groups a time series query definition with table options.
      class TableDataSet
        include Google::Apis::Core::Hashable
      
        # Optional. The lower bound on data point frequency for this data set,
        # implemented by specifying the minimum alignment period to use in a time series
        # query For example, if the data is published once every 10 minutes, the
        # min_alignment_period should be at least 10 minutes. It would not make sense to
        # fetch and align data at one minute intervals.
        # Corresponds to the JSON property `minAlignmentPeriod`
        # @return [String]
        attr_accessor :min_alignment_period
      
        # Table display options that can be reused.
        # Corresponds to the JSON property `tableDisplayOptions`
        # @return [Google::Apis::MonitoringV1::TableDisplayOptions]
        attr_accessor :table_display_options
      
        # Optional. A template string for naming TimeSeries in the resulting data set.
        # This should be a string with interpolations of the form $`label_name`, which
        # will resolve to the label's value i.e. "$`resource.labels.project_id`."
        # Corresponds to the JSON property `tableTemplate`
        # @return [String]
        attr_accessor :table_template
      
        # TimeSeriesQuery collects the set of supported methods for querying time series
        # data from the Stackdriver metrics API.
        # Corresponds to the JSON property `timeSeriesQuery`
        # @return [Google::Apis::MonitoringV1::TimeSeriesQuery]
        attr_accessor :time_series_query
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @min_alignment_period = args[:min_alignment_period] if args.key?(:min_alignment_period)
          @table_display_options = args[:table_display_options] if args.key?(:table_display_options)
          @table_template = args[:table_template] if args.key?(:table_template)
          @time_series_query = args[:time_series_query] if args.key?(:time_series_query)
        end
      end
      
      # Table display options that can be reused.
      class TableDisplayOptions
        include Google::Apis::Core::Hashable
      
        # Optional. This field is unused and has been replaced by TimeSeriesTable.
        # column_settings
        # Corresponds to the JSON property `shownColumns`
        # @return [Array<String>]
        attr_accessor :shown_columns
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @shown_columns = args[:shown_columns] if args.key?(:shown_columns)
        end
      end
      
      # A condition whose evaluation is based on the value of a template variable.
      class TemplateVariableCondition
        include Google::Apis::Core::Hashable
      
        # Comparator to use to evaluate whether the value of the template variable
        # matches the template_variable_value. For example, if the comparator is
        # REGEX_FULL_MATCH, template_variable_value would contain a regex that is
        # matched against the value of the template variable.
        # Corresponds to the JSON property `comparator`
        # @return [String]
        attr_accessor :comparator
      
        # The template variable whose value is evaluated.
        # Corresponds to the JSON property `templateVariable`
        # @return [String]
        attr_accessor :template_variable
      
        # The value to compare the template variable to. For example, if the comparator
        # is REGEX_FULL_MATCH, this field should contain a regex.
        # Corresponds to the JSON property `templateVariableValue`
        # @return [String]
        attr_accessor :template_variable_value
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @comparator = args[:comparator] if args.key?(:comparator)
          @template_variable = args[:template_variable] if args.key?(:template_variable)
          @template_variable_value = args[:template_variable_value] if args.key?(:template_variable_value)
        end
      end
      
      # A widget that displays textual content.
      class Text
        include Google::Apis::Core::Hashable
      
        # The text content to be displayed.
        # Corresponds to the JSON property `content`
        # @return [String]
        attr_accessor :content
      
        # How the text content is formatted.
        # Corresponds to the JSON property `format`
        # @return [String]
        attr_accessor :format
      
        # Properties that determine how the title and content are styled
        # Corresponds to the JSON property `style`
        # @return [Google::Apis::MonitoringV1::TextStyle]
        attr_accessor :style
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @content = args[:content] if args.key?(:content)
          @format = args[:format] if args.key?(:format)
          @style = args[:style] if args.key?(:style)
        end
      end
      
      # Properties that determine how the title and content are styled
      class TextStyle
        include Google::Apis::Core::Hashable
      
        # The background color as a hex string. "#RRGGBB" or "#RGB"
        # Corresponds to the JSON property `backgroundColor`
        # @return [String]
        attr_accessor :background_color
      
        # Font sizes for both the title and content. The title will still be larger
        # relative to the content.
        # Corresponds to the JSON property `fontSize`
        # @return [String]
        attr_accessor :font_size
      
        # The horizontal alignment of both the title and content
        # Corresponds to the JSON property `horizontalAlignment`
        # @return [String]
        attr_accessor :horizontal_alignment
      
        # The amount of padding around the widget
        # Corresponds to the JSON property `padding`
        # @return [String]
        attr_accessor :padding
      
        # The pointer location for this widget (also sometimes called a "tail")
        # Corresponds to the JSON property `pointerLocation`
        # @return [String]
        attr_accessor :pointer_location
      
        # The text color as a hex string. "#RRGGBB" or "#RGB"
        # Corresponds to the JSON property `textColor`
        # @return [String]
        attr_accessor :text_color
      
        # The vertical alignment of both the title and content
        # Corresponds to the JSON property `verticalAlignment`
        # @return [String]
        attr_accessor :vertical_alignment
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @background_color = args[:background_color] if args.key?(:background_color)
          @font_size = args[:font_size] if args.key?(:font_size)
          @horizontal_alignment = args[:horizontal_alignment] if args.key?(:horizontal_alignment)
          @padding = args[:padding] if args.key?(:padding)
          @pointer_location = args[:pointer_location] if args.key?(:pointer_location)
          @text_color = args[:text_color] if args.key?(:text_color)
          @vertical_alignment = args[:vertical_alignment] if args.key?(:vertical_alignment)
        end
      end
      
      # Defines a threshold for categorizing time series values.
      class Threshold
        include Google::Apis::Core::Hashable
      
        # The state color for this threshold. Color is not allowed in a XyChart.
        # Corresponds to the JSON property `color`
        # @return [String]
        attr_accessor :color
      
        # The direction for the current threshold. Direction is not allowed in a XyChart.
        # Corresponds to the JSON property `direction`
        # @return [String]
        attr_accessor :direction
      
        # A label for the threshold.
        # Corresponds to the JSON property `label`
        # @return [String]
        attr_accessor :label
      
        # The target axis to use for plotting the threshold. Target axis is not allowed
        # in a Scorecard.
        # Corresponds to the JSON property `targetAxis`
        # @return [String]
        attr_accessor :target_axis
      
        # The value of the threshold. The value should be defined in the native scale of
        # the metric.
        # Corresponds to the JSON property `value`
        # @return [Float]
        attr_accessor :value
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @color = args[:color] if args.key?(:color)
          @direction = args[:direction] if args.key?(:direction)
          @label = args[:label] if args.key?(:label)
          @target_axis = args[:target_axis] if args.key?(:target_axis)
          @value = args[:value] if args.key?(:value)
        end
      end
      
      # A single tile in the mosaic. The placement and size of the tile are
      # configurable.
      class Tile
        include Google::Apis::Core::Hashable
      
        # The height of the tile, measured in grid blocks. Tiles must have a minimum
        # height of 1.
        # Corresponds to the JSON property `height`
        # @return [Fixnum]
        attr_accessor :height
      
        # Widget contains a single dashboard component and configuration of how to
        # present the component in the dashboard.
        # Corresponds to the JSON property `widget`
        # @return [Google::Apis::MonitoringV1::Widget]
        attr_accessor :widget
      
        # The width of the tile, measured in grid blocks. Tiles must have a minimum
        # width of 1.
        # Corresponds to the JSON property `width`
        # @return [Fixnum]
        attr_accessor :width
      
        # The zero-indexed position of the tile in grid blocks relative to the left edge
        # of the grid. Tiles must be contained within the specified number of columns.
        # x_pos cannot be negative.
        # Corresponds to the JSON property `xPos`
        # @return [Fixnum]
        attr_accessor :x_pos
      
        # The zero-indexed position of the tile in grid blocks relative to the top edge
        # of the grid. y_pos cannot be negative.
        # Corresponds to the JSON property `yPos`
        # @return [Fixnum]
        attr_accessor :y_pos
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @height = args[:height] if args.key?(:height)
          @widget = args[:widget] if args.key?(:widget)
          @width = args[:width] if args.key?(:width)
          @x_pos = args[:x_pos] if args.key?(:x_pos)
          @y_pos = args[:y_pos] if args.key?(:y_pos)
        end
      end
      
      # A filter that defines a subset of time series data that is displayed in a
      # widget. Time series data is fetched using the ListTimeSeries (https://cloud.
      # google.com/monitoring/api/ref_v3/rest/v3/projects.timeSeries/list) method.
      class TimeSeriesFilter
        include Google::Apis::Core::Hashable
      
        # Describes how to combine multiple time series to provide a different view of
        # the data. Aggregation of time series is done in two steps. First, each time
        # series in the set is aligned to the same time interval boundaries, then the
        # set of time series is optionally reduced in number.Alignment consists of
        # applying the per_series_aligner operation to each time series after its data
        # has been divided into regular alignment_period time intervals. This process
        # takes all of the data points in an alignment period, applies a mathematical
        # transformation such as averaging, minimum, maximum, delta, etc., and converts
        # them into a single data point per period.Reduction is when the aligned and
        # transformed time series can optionally be combined, reducing the number of
        # time series through similar mathematical transformations. Reduction involves
        # applying a cross_series_reducer to all the time series, optionally sorting the
        # time series into subsets with group_by_fields, and applying the reducer to
        # each subset.The raw time series data can contain a huge amount of information
        # from multiple sources. Alignment and reduction transforms this mass of data
        # into a more manageable and representative collection of data, for example "the
        # 95% latency across the average of all tasks in a cluster". This representative
        # data can be more easily graphed and comprehended, and the individual time
        # series data is still available for later drilldown. For more details, see
        # Filtering and aggregation (https://cloud.google.com/monitoring/api/v3/
        # aggregation).
        # Corresponds to the JSON property `aggregation`
        # @return [Google::Apis::MonitoringV1::Aggregation]
        attr_accessor :aggregation
      
        # Required. The monitoring filter (https://cloud.google.com/monitoring/api/v3/
        # filters) that identifies the metric types, resources, and projects to query.
        # Corresponds to the JSON property `filter`
        # @return [String]
        attr_accessor :filter
      
        # Describes a ranking-based time series filter. Each input time series is ranked
        # with an aligner. The filter will allow up to num_time_series time series to
        # pass through it, selecting them based on the relative ranking.For example, if
        # ranking_method is METHOD_MEAN,direction is BOTTOM, and num_time_series is 3,
        # then the 3 times series with the lowest mean values will pass through the
        # filter.
        # Corresponds to the JSON property `pickTimeSeriesFilter`
        # @return [Google::Apis::MonitoringV1::PickTimeSeriesFilter]
        attr_accessor :pick_time_series_filter
      
        # Describes how to combine multiple time series to provide a different view of
        # the data. Aggregation of time series is done in two steps. First, each time
        # series in the set is aligned to the same time interval boundaries, then the
        # set of time series is optionally reduced in number.Alignment consists of
        # applying the per_series_aligner operation to each time series after its data
        # has been divided into regular alignment_period time intervals. This process
        # takes all of the data points in an alignment period, applies a mathematical
        # transformation such as averaging, minimum, maximum, delta, etc., and converts
        # them into a single data point per period.Reduction is when the aligned and
        # transformed time series can optionally be combined, reducing the number of
        # time series through similar mathematical transformations. Reduction involves
        # applying a cross_series_reducer to all the time series, optionally sorting the
        # time series into subsets with group_by_fields, and applying the reducer to
        # each subset.The raw time series data can contain a huge amount of information
        # from multiple sources. Alignment and reduction transforms this mass of data
        # into a more manageable and representative collection of data, for example "the
        # 95% latency across the average of all tasks in a cluster". This representative
        # data can be more easily graphed and comprehended, and the individual time
        # series data is still available for later drilldown. For more details, see
        # Filtering and aggregation (https://cloud.google.com/monitoring/api/v3/
        # aggregation).
        # Corresponds to the JSON property `secondaryAggregation`
        # @return [Google::Apis::MonitoringV1::Aggregation]
        attr_accessor :secondary_aggregation
      
        # A filter that ranks streams based on their statistical relation to other
        # streams in a request. Note: This field is deprecated and completely ignored by
        # the API.
        # Corresponds to the JSON property `statisticalTimeSeriesFilter`
        # @return [Google::Apis::MonitoringV1::StatisticalTimeSeriesFilter]
        attr_accessor :statistical_time_series_filter
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @aggregation = args[:aggregation] if args.key?(:aggregation)
          @filter = args[:filter] if args.key?(:filter)
          @pick_time_series_filter = args[:pick_time_series_filter] if args.key?(:pick_time_series_filter)
          @secondary_aggregation = args[:secondary_aggregation] if args.key?(:secondary_aggregation)
          @statistical_time_series_filter = args[:statistical_time_series_filter] if args.key?(:statistical_time_series_filter)
        end
      end
      
      # A pair of time series filters that define a ratio computation. The output time
      # series is the pair-wise division of each aligned element from the numerator
      # and denominator time series.
      class TimeSeriesFilterRatio
        include Google::Apis::Core::Hashable
      
        # Describes a query to build the numerator or denominator of a
        # TimeSeriesFilterRatio.
        # Corresponds to the JSON property `denominator`
        # @return [Google::Apis::MonitoringV1::RatioPart]
        attr_accessor :denominator
      
        # Describes a query to build the numerator or denominator of a
        # TimeSeriesFilterRatio.
        # Corresponds to the JSON property `numerator`
        # @return [Google::Apis::MonitoringV1::RatioPart]
        attr_accessor :numerator
      
        # Describes a ranking-based time series filter. Each input time series is ranked
        # with an aligner. The filter will allow up to num_time_series time series to
        # pass through it, selecting them based on the relative ranking.For example, if
        # ranking_method is METHOD_MEAN,direction is BOTTOM, and num_time_series is 3,
        # then the 3 times series with the lowest mean values will pass through the
        # filter.
        # Corresponds to the JSON property `pickTimeSeriesFilter`
        # @return [Google::Apis::MonitoringV1::PickTimeSeriesFilter]
        attr_accessor :pick_time_series_filter
      
        # Describes how to combine multiple time series to provide a different view of
        # the data. Aggregation of time series is done in two steps. First, each time
        # series in the set is aligned to the same time interval boundaries, then the
        # set of time series is optionally reduced in number.Alignment consists of
        # applying the per_series_aligner operation to each time series after its data
        # has been divided into regular alignment_period time intervals. This process
        # takes all of the data points in an alignment period, applies a mathematical
        # transformation such as averaging, minimum, maximum, delta, etc., and converts
        # them into a single data point per period.Reduction is when the aligned and
        # transformed time series can optionally be combined, reducing the number of
        # time series through similar mathematical transformations. Reduction involves
        # applying a cross_series_reducer to all the time series, optionally sorting the
        # time series into subsets with group_by_fields, and applying the reducer to
        # each subset.The raw time series data can contain a huge amount of information
        # from multiple sources. Alignment and reduction transforms this mass of data
        # into a more manageable and representative collection of data, for example "the
        # 95% latency across the average of all tasks in a cluster". This representative
        # data can be more easily graphed and comprehended, and the individual time
        # series data is still available for later drilldown. For more details, see
        # Filtering and aggregation (https://cloud.google.com/monitoring/api/v3/
        # aggregation).
        # Corresponds to the JSON property `secondaryAggregation`
        # @return [Google::Apis::MonitoringV1::Aggregation]
        attr_accessor :secondary_aggregation
      
        # A filter that ranks streams based on their statistical relation to other
        # streams in a request. Note: This field is deprecated and completely ignored by
        # the API.
        # Corresponds to the JSON property `statisticalTimeSeriesFilter`
        # @return [Google::Apis::MonitoringV1::StatisticalTimeSeriesFilter]
        attr_accessor :statistical_time_series_filter
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @denominator = args[:denominator] if args.key?(:denominator)
          @numerator = args[:numerator] if args.key?(:numerator)
          @pick_time_series_filter = args[:pick_time_series_filter] if args.key?(:pick_time_series_filter)
          @secondary_aggregation = args[:secondary_aggregation] if args.key?(:secondary_aggregation)
          @statistical_time_series_filter = args[:statistical_time_series_filter] if args.key?(:statistical_time_series_filter)
        end
      end
      
      # TimeSeriesQuery collects the set of supported methods for querying time series
      # data from the Stackdriver metrics API.
      class TimeSeriesQuery
        include Google::Apis::Core::Hashable
      
        # Preview: A query that produces an aggregated response and supporting data.
        # This is a preview feature and may be subject to change before final release.
        # Corresponds to the JSON property `opsAnalyticsQuery`
        # @return [Google::Apis::MonitoringV1::OpsAnalyticsQuery]
        attr_accessor :ops_analytics_query
      
        # Optional. If set, Cloud Monitoring will treat the full query duration as the
        # alignment period so that there will be only 1 output value.*Note: This could
        # override the configured alignment period except for the cases where a series
        # of data points are expected, like - XyChart - Scorecard's spark chart
        # Corresponds to the JSON property `outputFullDuration`
        # @return [Boolean]
        attr_accessor :output_full_duration
        alias_method :output_full_duration?, :output_full_duration
      
        # A query used to fetch time series with PromQL.
        # Corresponds to the JSON property `prometheusQuery`
        # @return [String]
        attr_accessor :prometheus_query
      
        # A filter that defines a subset of time series data that is displayed in a
        # widget. Time series data is fetched using the ListTimeSeries (https://cloud.
        # google.com/monitoring/api/ref_v3/rest/v3/projects.timeSeries/list) method.
        # Corresponds to the JSON property `timeSeriesFilter`
        # @return [Google::Apis::MonitoringV1::TimeSeriesFilter]
        attr_accessor :time_series_filter
      
        # A pair of time series filters that define a ratio computation. The output time
        # series is the pair-wise division of each aligned element from the numerator
        # and denominator time series.
        # Corresponds to the JSON property `timeSeriesFilterRatio`
        # @return [Google::Apis::MonitoringV1::TimeSeriesFilterRatio]
        attr_accessor :time_series_filter_ratio
      
        # A query used to fetch time series with MQL.
        # Corresponds to the JSON property `timeSeriesQueryLanguage`
        # @return [String]
        attr_accessor :time_series_query_language
      
        # The unit of data contained in fetched time series. If non-empty, this unit
        # will override any unit that accompanies fetched data. The format is the same
        # as the unit (https://cloud.google.com/monitoring/api/ref_v3/rest/v3/projects.
        # metricDescriptors) field in MetricDescriptor.
        # Corresponds to the JSON property `unitOverride`
        # @return [String]
        attr_accessor :unit_override
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @ops_analytics_query = args[:ops_analytics_query] if args.key?(:ops_analytics_query)
          @output_full_duration = args[:output_full_duration] if args.key?(:output_full_duration)
          @prometheus_query = args[:prometheus_query] if args.key?(:prometheus_query)
          @time_series_filter = args[:time_series_filter] if args.key?(:time_series_filter)
          @time_series_filter_ratio = args[:time_series_filter_ratio] if args.key?(:time_series_filter_ratio)
          @time_series_query_language = args[:time_series_query_language] if args.key?(:time_series_query_language)
          @unit_override = args[:unit_override] if args.key?(:unit_override)
        end
      end
      
      # A table that displays time series data.
      class TimeSeriesTable
        include Google::Apis::Core::Hashable
      
        # Optional. The list of the persistent column settings for the table.
        # Corresponds to the JSON property `columnSettings`
        # @return [Array<Google::Apis::MonitoringV1::ColumnSettings>]
        attr_accessor :column_settings
      
        # Required. The data displayed in this table.
        # Corresponds to the JSON property `dataSets`
        # @return [Array<Google::Apis::MonitoringV1::TableDataSet>]
        attr_accessor :data_sets
      
        # Optional. Store rendering strategy
        # Corresponds to the JSON property `metricVisualization`
        # @return [String]
        attr_accessor :metric_visualization
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @column_settings = args[:column_settings] if args.key?(:column_settings)
          @data_sets = args[:data_sets] if args.key?(:data_sets)
          @metric_visualization = args[:metric_visualization] if args.key?(:metric_visualization)
        end
      end
      
      # A widget that displays hierarchical data as a treemap.
      class Treemap
        include Google::Apis::Core::Hashable
      
        # Required. The collection of datasets used to construct and populate the
        # treemap. For the rendered treemap rectangles: Color is determined by the
        # aggregated value for each grouping. Size is proportional to the count of time
        # series aggregated within that rectangle's segment.
        # Corresponds to the JSON property `dataSets`
        # @return [Array<Google::Apis::MonitoringV1::TreemapDataSet>]
        attr_accessor :data_sets
      
        # Required. Ordered labels representing the hierarchical treemap structure.
        # Corresponds to the JSON property `treemapHierarchy`
        # @return [Array<String>]
        attr_accessor :treemap_hierarchy
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @data_sets = args[:data_sets] if args.key?(:data_sets)
          @treemap_hierarchy = args[:treemap_hierarchy] if args.key?(:treemap_hierarchy)
        end
      end
      
      # The data represented by the treemap. Needs to include the data itself, plus
      # rules on how to organize it hierarchically.
      class TreemapDataSet
        include Google::Apis::Core::Hashable
      
        # Optional. The collection of breakdowns to be applied to the dataset. A
        # breakdown is a way to slice the data. For example, you can break down the data
        # by region.
        # Corresponds to the JSON property `breakdowns`
        # @return [Array<Google::Apis::MonitoringV1::Breakdown>]
        attr_accessor :breakdowns
      
        # Optional. A collection of measures. A measure is a measured value of a
        # property in your data. For example, rainfall in inches, number of units sold,
        # revenue gained, etc.
        # Corresponds to the JSON property `measures`
        # @return [Array<Google::Apis::MonitoringV1::Measure>]
        attr_accessor :measures
      
        # TimeSeriesQuery collects the set of supported methods for querying time series
        # data from the Stackdriver metrics API.
        # Corresponds to the JSON property `timeSeriesQuery`
        # @return [Google::Apis::MonitoringV1::TimeSeriesQuery]
        attr_accessor :time_series_query
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @breakdowns = args[:breakdowns] if args.key?(:breakdowns)
          @measures = args[:measures] if args.key?(:measures)
          @time_series_query = args[:time_series_query] if args.key?(:time_series_query)
        end
      end
      
      # A protocol buffer message type.
      class Type
        include Google::Apis::Core::Hashable
      
        # The source edition string, only valid when syntax is SYNTAX_EDITIONS.
        # Corresponds to the JSON property `edition`
        # @return [String]
        attr_accessor :edition
      
        # The list of fields.
        # Corresponds to the JSON property `fields`
        # @return [Array<Google::Apis::MonitoringV1::Field>]
        attr_accessor :fields
      
        # The fully qualified message name.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # The list of types appearing in oneof definitions in this type.
        # Corresponds to the JSON property `oneofs`
        # @return [Array<String>]
        attr_accessor :oneofs
      
        # The protocol buffer options.
        # Corresponds to the JSON property `options`
        # @return [Array<Google::Apis::MonitoringV1::Option>]
        attr_accessor :options
      
        # SourceContext represents information about the source of a protobuf element,
        # like the file in which it is defined.
        # Corresponds to the JSON property `sourceContext`
        # @return [Google::Apis::MonitoringV1::SourceContext]
        attr_accessor :source_context
      
        # The source syntax.
        # Corresponds to the JSON property `syntax`
        # @return [String]
        attr_accessor :syntax
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @edition = args[:edition] if args.key?(:edition)
          @fields = args[:fields] if args.key?(:fields)
          @name = args[:name] if args.key?(:name)
          @oneofs = args[:oneofs] if args.key?(:oneofs)
          @options = args[:options] if args.key?(:options)
          @source_context = args[:source_context] if args.key?(:source_context)
          @syntax = args[:syntax] if args.key?(:syntax)
        end
      end
      
      # Condition that determines whether the widget should be displayed.
      class VisibilityCondition
        include Google::Apis::Core::Hashable
      
        # A condition whose evaluation is based on the value of a template variable.
        # Corresponds to the JSON property `templateVariableCondition`
        # @return [Google::Apis::MonitoringV1::TemplateVariableCondition]
        attr_accessor :template_variable_condition
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @template_variable_condition = args[:template_variable_condition] if args.key?(:template_variable_condition)
        end
      end
      
      # Widget contains a single dashboard component and configuration of how to
      # present the component in the dashboard.
      class Widget
        include Google::Apis::Core::Hashable
      
        # A chart that displays alert policy data.
        # Corresponds to the JSON property `alertChart`
        # @return [Google::Apis::MonitoringV1::AlertChart]
        attr_accessor :alert_chart
      
        # A generic empty message that you can re-use to avoid defining duplicated empty
        # messages in your APIs. A typical example is to use it as the request or the
        # response type of an API method. For instance: service Foo ` rpc Bar(google.
        # protobuf.Empty) returns (google.protobuf.Empty); `
        # Corresponds to the JSON property `blank`
        # @return [Google::Apis::MonitoringV1::Empty]
        attr_accessor :blank
      
        # A widget that groups the other widgets. All widgets that are within the area
        # spanned by the grouping widget are considered member widgets.
        # Corresponds to the JSON property `collapsibleGroup`
        # @return [Google::Apis::MonitoringV1::CollapsibleGroup]
        attr_accessor :collapsible_group
      
        # A widget that displays a list of error groups.
        # Corresponds to the JSON property `errorReportingPanel`
        # @return [Google::Apis::MonitoringV1::ErrorReportingPanel]
        attr_accessor :error_reporting_panel
      
        # Optional. The widget id. Ids may be made up of alphanumerics, dashes and
        # underscores. Widget ids are optional.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # A widget that displays a list of incidents
        # Corresponds to the JSON property `incidentList`
        # @return [Google::Apis::MonitoringV1::IncidentList]
        attr_accessor :incident_list
      
        # A widget that displays a stream of log.
        # Corresponds to the JSON property `logsPanel`
        # @return [Google::Apis::MonitoringV1::LogsPanel]
        attr_accessor :logs_panel
      
        # A widget that displays timeseries data as a pie or a donut.
        # Corresponds to the JSON property `pieChart`
        # @return [Google::Apis::MonitoringV1::PieChart]
        attr_accessor :pie_chart
      
        # A widget showing the latest value of a metric, and how this value relates to
        # one or more thresholds.
        # Corresponds to the JSON property `scorecard`
        # @return [Google::Apis::MonitoringV1::Scorecard]
        attr_accessor :scorecard
      
        # A widget that defines a new section header. Sections populate a table of
        # contents and allow easier navigation of long-form content.
        # Corresponds to the JSON property `sectionHeader`
        # @return [Google::Apis::MonitoringV1::SectionHeader]
        attr_accessor :section_header
      
        # A widget that groups the other widgets by using a dropdown menu. All widgets
        # that are within the area spanned by the grouping widget are considered member
        # widgets.
        # Corresponds to the JSON property `singleViewGroup`
        # @return [Google::Apis::MonitoringV1::SingleViewGroup]
        attr_accessor :single_view_group
      
        # A widget that displays textual content.
        # Corresponds to the JSON property `text`
        # @return [Google::Apis::MonitoringV1::Text]
        attr_accessor :text
      
        # A table that displays time series data.
        # Corresponds to the JSON property `timeSeriesTable`
        # @return [Google::Apis::MonitoringV1::TimeSeriesTable]
        attr_accessor :time_series_table
      
        # Optional. The title of the widget.
        # Corresponds to the JSON property `title`
        # @return [String]
        attr_accessor :title
      
        # A widget that displays hierarchical data as a treemap.
        # Corresponds to the JSON property `treemap`
        # @return [Google::Apis::MonitoringV1::Treemap]
        attr_accessor :treemap
      
        # Condition that determines whether the widget should be displayed.
        # Corresponds to the JSON property `visibilityCondition`
        # @return [Google::Apis::MonitoringV1::VisibilityCondition]
        attr_accessor :visibility_condition
      
        # A chart that displays data on a 2D (X and Y axes) plane.
        # Corresponds to the JSON property `xyChart`
        # @return [Google::Apis::MonitoringV1::XyChart]
        attr_accessor :xy_chart
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @alert_chart = args[:alert_chart] if args.key?(:alert_chart)
          @blank = args[:blank] if args.key?(:blank)
          @collapsible_group = args[:collapsible_group] if args.key?(:collapsible_group)
          @error_reporting_panel = args[:error_reporting_panel] if args.key?(:error_reporting_panel)
          @id = args[:id] if args.key?(:id)
          @incident_list = args[:incident_list] if args.key?(:incident_list)
          @logs_panel = args[:logs_panel] if args.key?(:logs_panel)
          @pie_chart = args[:pie_chart] if args.key?(:pie_chart)
          @scorecard = args[:scorecard] if args.key?(:scorecard)
          @section_header = args[:section_header] if args.key?(:section_header)
          @single_view_group = args[:single_view_group] if args.key?(:single_view_group)
          @text = args[:text] if args.key?(:text)
          @time_series_table = args[:time_series_table] if args.key?(:time_series_table)
          @title = args[:title] if args.key?(:title)
          @treemap = args[:treemap] if args.key?(:treemap)
          @visibility_condition = args[:visibility_condition] if args.key?(:visibility_condition)
          @xy_chart = args[:xy_chart] if args.key?(:xy_chart)
        end
      end
      
      # A chart that displays data on a 2D (X and Y axes) plane.
      class XyChart
        include Google::Apis::Core::Hashable
      
        # Options to control visual rendering of a chart.
        # Corresponds to the JSON property `chartOptions`
        # @return [Google::Apis::MonitoringV1::ChartOptions]
        attr_accessor :chart_options
      
        # Required. The data displayed in this chart.
        # Corresponds to the JSON property `dataSets`
        # @return [Array<Google::Apis::MonitoringV1::DataSet>]
        attr_accessor :data_sets
      
        # Threshold lines drawn horizontally across the chart.
        # Corresponds to the JSON property `thresholds`
        # @return [Array<Google::Apis::MonitoringV1::Threshold>]
        attr_accessor :thresholds
      
        # The duration used to display a comparison chart. A comparison chart
        # simultaneously shows values from two similar-length time periods (e.g., week-
        # over-week metrics). The duration must be positive, and it can only be applied
        # to charts with data sets of LINE plot type.
        # Corresponds to the JSON property `timeshiftDuration`
        # @return [String]
        attr_accessor :timeshift_duration
      
        # A chart axis.
        # Corresponds to the JSON property `xAxis`
        # @return [Google::Apis::MonitoringV1::Axis]
        attr_accessor :x_axis
      
        # A chart axis.
        # Corresponds to the JSON property `y2Axis`
        # @return [Google::Apis::MonitoringV1::Axis]
        attr_accessor :y2_axis
      
        # A chart axis.
        # Corresponds to the JSON property `yAxis`
        # @return [Google::Apis::MonitoringV1::Axis]
        attr_accessor :y_axis
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @chart_options = args[:chart_options] if args.key?(:chart_options)
          @data_sets = args[:data_sets] if args.key?(:data_sets)
          @thresholds = args[:thresholds] if args.key?(:thresholds)
          @timeshift_duration = args[:timeshift_duration] if args.key?(:timeshift_duration)
          @x_axis = args[:x_axis] if args.key?(:x_axis)
          @y2_axis = args[:y2_axis] if args.key?(:y2_axis)
          @y_axis = args[:y_axis] if args.key?(:y_axis)
        end
      end
    end
  end
end
