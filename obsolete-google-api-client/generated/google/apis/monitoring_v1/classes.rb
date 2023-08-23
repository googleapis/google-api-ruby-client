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
      
      # Options to control visual rendering of a chart.
      class ChartOptions
        include Google::Apis::Core::Hashable
      
        # The chart mode.
        # Corresponds to the JSON property `mode`
        # @return [String]
        attr_accessor :mode
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @mode = args[:mode] if args.key?(:mode)
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
      
      # A Google Stackdriver dashboard. Dashboards define the content and layout of
      # pages in the Stackdriver web application.
      class Dashboard
        include Google::Apis::Core::Hashable
      
        # A simplified layout that divides the available space into vertical columns and
        # arranges a set of widgets vertically in each column.
        # Corresponds to the JSON property `columnLayout`
        # @return [Google::Apis::MonitoringV1::ColumnLayout]
        attr_accessor :column_layout
      
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
      
        # A mosaic layout divides the available space into a grid of blocks, and
        # overlays the grid with tiles. Unlike GridLayout, tiles may span multiple grid
        # blocks and can be placed at arbitrary locations in the grid.
        # Corresponds to the JSON property `mosaicLayout`
        # @return [Google::Apis::MonitoringV1::MosaicLayout]
        attr_accessor :mosaic_layout
      
        # Immutable. The resource name of the dashboard.
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
          @column_layout = args[:column_layout] if args.key?(:column_layout)
          @display_name = args[:display_name] if args.key?(:display_name)
          @etag = args[:etag] if args.key?(:etag)
          @grid_layout = args[:grid_layout] if args.key?(:grid_layout)
          @mosaic_layout = args[:mosaic_layout] if args.key?(:mosaic_layout)
          @name = args[:name] if args.key?(:name)
          @row_layout = args[:row_layout] if args.key?(:row_layout)
        end
      end
      
      # Groups a time series query definition with charting options.
      class DataSet
        include Google::Apis::Core::Hashable
      
        # A template string for naming TimeSeries in the resulting data set. This should
        # be a string with interpolations of the form $`label_name`, which will resolve
        # to the label's value.
        # Corresponds to the JSON property `legendTemplate`
        # @return [String]
        attr_accessor :legend_template
      
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
          @legend_template = args[:legend_template] if args.key?(:legend_template)
          @min_alignment_period = args[:min_alignment_period] if args.key?(:min_alignment_period)
          @plot_type = args[:plot_type] if args.key?(:plot_type)
          @time_series_query = args[:time_series_query] if args.key?(:time_series_query)
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
      # protobuf.Empty) returns (google.protobuf.Empty); ` The JSON representation for
      # Empty is empty JSON object ``.
      class Empty
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
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
      
      # A mosaic layout divides the available space into a grid of blocks, and
      # overlays the grid with tiles. Unlike GridLayout, tiles may span multiple grid
      # blocks and can be placed at arbitrary locations in the grid.
      class MosaicLayout
        include Google::Apis::Core::Hashable
      
        # The number of columns in the mosaic grid. The number of columns must be
        # between 1 and 12, inclusive.
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
          @num_time_series = args[:num_time_series] if args.key?(:num_time_series)
          @ranking_method = args[:ranking_method] if args.key?(:ranking_method)
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
      
        # A gauge chart shows where the current value sits within a pre-defined range.
        # The upper and lower bounds should define the possible range of values for the
        # scorecard's query (inclusive).
        # Corresponds to the JSON property `gaugeView`
        # @return [Google::Apis::MonitoringV1::GaugeView]
        attr_accessor :gauge_view
      
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
          @gauge_view = args[:gauge_view] if args.key?(:gauge_view)
          @spark_chart_view = args[:spark_chart_view] if args.key?(:spark_chart_view)
          @thresholds = args[:thresholds] if args.key?(:thresholds)
          @time_series_query = args[:time_series_query] if args.key?(:time_series_query)
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
      
      # The context of a span, attached to Exemplars in Distribution values during
      # aggregation.It contains the name of a span with format: projects/[
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
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @content = args[:content] if args.key?(:content)
          @format = args[:format] if args.key?(:format)
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
      
        # A query used to fetch time series.
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
          @time_series_filter = args[:time_series_filter] if args.key?(:time_series_filter)
          @time_series_filter_ratio = args[:time_series_filter_ratio] if args.key?(:time_series_filter_ratio)
          @time_series_query_language = args[:time_series_query_language] if args.key?(:time_series_query_language)
          @unit_override = args[:unit_override] if args.key?(:unit_override)
        end
      end
      
      # A protocol buffer message type.
      class Type
        include Google::Apis::Core::Hashable
      
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
          @fields = args[:fields] if args.key?(:fields)
          @name = args[:name] if args.key?(:name)
          @oneofs = args[:oneofs] if args.key?(:oneofs)
          @options = args[:options] if args.key?(:options)
          @source_context = args[:source_context] if args.key?(:source_context)
          @syntax = args[:syntax] if args.key?(:syntax)
        end
      end
      
      # Widget contains a single dashboard component and configuration of how to
      # present the component in the dashboard.
      class Widget
        include Google::Apis::Core::Hashable
      
        # A generic empty message that you can re-use to avoid defining duplicated empty
        # messages in your APIs. A typical example is to use it as the request or the
        # response type of an API method. For instance: service Foo ` rpc Bar(google.
        # protobuf.Empty) returns (google.protobuf.Empty); ` The JSON representation for
        # Empty is empty JSON object ``.
        # Corresponds to the JSON property `blank`
        # @return [Google::Apis::MonitoringV1::Empty]
        attr_accessor :blank
      
        # A widget showing the latest value of a metric, and how this value relates to
        # one or more thresholds.
        # Corresponds to the JSON property `scorecard`
        # @return [Google::Apis::MonitoringV1::Scorecard]
        attr_accessor :scorecard
      
        # A widget that displays textual content.
        # Corresponds to the JSON property `text`
        # @return [Google::Apis::MonitoringV1::Text]
        attr_accessor :text
      
        # Optional. The title of the widget.
        # Corresponds to the JSON property `title`
        # @return [String]
        attr_accessor :title
      
        # A chart that displays data on a 2D (X and Y axes) plane.
        # Corresponds to the JSON property `xyChart`
        # @return [Google::Apis::MonitoringV1::XyChart]
        attr_accessor :xy_chart
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @blank = args[:blank] if args.key?(:blank)
          @scorecard = args[:scorecard] if args.key?(:scorecard)
          @text = args[:text] if args.key?(:text)
          @title = args[:title] if args.key?(:title)
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
          @y_axis = args[:y_axis] if args.key?(:y_axis)
        end
      end
    end
  end
end
