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
      
      class Aggregation
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Axis
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ChartOptions
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Column
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ColumnLayout
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Dashboard
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DataSet
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DroppedLabels
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Empty
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Field
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GaugeView
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GridLayout
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListDashboardsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class MosaicLayout
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Option
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class PickTimeSeriesFilter
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class RatioPart
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Row
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class RowLayout
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Scorecard
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SourceContext
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SpanContext
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SparkChartView
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class StatisticalTimeSeriesFilter
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Text
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Threshold
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Tile
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class TimeSeriesFilter
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class TimeSeriesFilterRatio
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class TimeSeriesQuery
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Type
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Widget
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class XyChart
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Aggregation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :alignment_period, as: 'alignmentPeriod'
          property :cross_series_reducer, as: 'crossSeriesReducer'
          collection :group_by_fields, as: 'groupByFields'
          property :per_series_aligner, as: 'perSeriesAligner'
        end
      end
      
      class Axis
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :label, as: 'label'
          property :scale, as: 'scale'
        end
      end
      
      class ChartOptions
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :mode, as: 'mode'
        end
      end
      
      class Column
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :weight, :numeric_string => true, as: 'weight'
          collection :widgets, as: 'widgets', class: Google::Apis::MonitoringV1::Widget, decorator: Google::Apis::MonitoringV1::Widget::Representation
      
        end
      end
      
      class ColumnLayout
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :columns, as: 'columns', class: Google::Apis::MonitoringV1::Column, decorator: Google::Apis::MonitoringV1::Column::Representation
      
        end
      end
      
      class Dashboard
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :column_layout, as: 'columnLayout', class: Google::Apis::MonitoringV1::ColumnLayout, decorator: Google::Apis::MonitoringV1::ColumnLayout::Representation
      
          property :display_name, as: 'displayName'
          property :etag, as: 'etag'
          property :grid_layout, as: 'gridLayout', class: Google::Apis::MonitoringV1::GridLayout, decorator: Google::Apis::MonitoringV1::GridLayout::Representation
      
          property :mosaic_layout, as: 'mosaicLayout', class: Google::Apis::MonitoringV1::MosaicLayout, decorator: Google::Apis::MonitoringV1::MosaicLayout::Representation
      
          property :name, as: 'name'
          property :row_layout, as: 'rowLayout', class: Google::Apis::MonitoringV1::RowLayout, decorator: Google::Apis::MonitoringV1::RowLayout::Representation
      
        end
      end
      
      class DataSet
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :legend_template, as: 'legendTemplate'
          property :min_alignment_period, as: 'minAlignmentPeriod'
          property :plot_type, as: 'plotType'
          property :time_series_query, as: 'timeSeriesQuery', class: Google::Apis::MonitoringV1::TimeSeriesQuery, decorator: Google::Apis::MonitoringV1::TimeSeriesQuery::Representation
      
        end
      end
      
      class DroppedLabels
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          hash :label, as: 'label'
        end
      end
      
      class Empty
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class Field
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :cardinality, as: 'cardinality'
          property :default_value, as: 'defaultValue'
          property :json_name, as: 'jsonName'
          property :kind, as: 'kind'
          property :name, as: 'name'
          property :number, as: 'number'
          property :oneof_index, as: 'oneofIndex'
          collection :options, as: 'options', class: Google::Apis::MonitoringV1::Option, decorator: Google::Apis::MonitoringV1::Option::Representation
      
          property :packed, as: 'packed'
          property :type_url, as: 'typeUrl'
        end
      end
      
      class GaugeView
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :lower_bound, as: 'lowerBound'
          property :upper_bound, as: 'upperBound'
        end
      end
      
      class GridLayout
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :columns, :numeric_string => true, as: 'columns'
          collection :widgets, as: 'widgets', class: Google::Apis::MonitoringV1::Widget, decorator: Google::Apis::MonitoringV1::Widget::Representation
      
        end
      end
      
      class ListDashboardsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :dashboards, as: 'dashboards', class: Google::Apis::MonitoringV1::Dashboard, decorator: Google::Apis::MonitoringV1::Dashboard::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class MosaicLayout
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :columns, as: 'columns'
          collection :tiles, as: 'tiles', class: Google::Apis::MonitoringV1::Tile, decorator: Google::Apis::MonitoringV1::Tile::Representation
      
        end
      end
      
      class Option
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :name, as: 'name'
          hash :value, as: 'value'
        end
      end
      
      class PickTimeSeriesFilter
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :direction, as: 'direction'
          property :num_time_series, as: 'numTimeSeries'
          property :ranking_method, as: 'rankingMethod'
        end
      end
      
      class RatioPart
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :aggregation, as: 'aggregation', class: Google::Apis::MonitoringV1::Aggregation, decorator: Google::Apis::MonitoringV1::Aggregation::Representation
      
          property :filter, as: 'filter'
        end
      end
      
      class Row
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :weight, :numeric_string => true, as: 'weight'
          collection :widgets, as: 'widgets', class: Google::Apis::MonitoringV1::Widget, decorator: Google::Apis::MonitoringV1::Widget::Representation
      
        end
      end
      
      class RowLayout
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :rows, as: 'rows', class: Google::Apis::MonitoringV1::Row, decorator: Google::Apis::MonitoringV1::Row::Representation
      
        end
      end
      
      class Scorecard
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :gauge_view, as: 'gaugeView', class: Google::Apis::MonitoringV1::GaugeView, decorator: Google::Apis::MonitoringV1::GaugeView::Representation
      
          property :spark_chart_view, as: 'sparkChartView', class: Google::Apis::MonitoringV1::SparkChartView, decorator: Google::Apis::MonitoringV1::SparkChartView::Representation
      
          collection :thresholds, as: 'thresholds', class: Google::Apis::MonitoringV1::Threshold, decorator: Google::Apis::MonitoringV1::Threshold::Representation
      
          property :time_series_query, as: 'timeSeriesQuery', class: Google::Apis::MonitoringV1::TimeSeriesQuery, decorator: Google::Apis::MonitoringV1::TimeSeriesQuery::Representation
      
        end
      end
      
      class SourceContext
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :file_name, as: 'fileName'
        end
      end
      
      class SpanContext
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :span_name, as: 'spanName'
        end
      end
      
      class SparkChartView
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :min_alignment_period, as: 'minAlignmentPeriod'
          property :spark_chart_type, as: 'sparkChartType'
        end
      end
      
      class StatisticalTimeSeriesFilter
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :num_time_series, as: 'numTimeSeries'
          property :ranking_method, as: 'rankingMethod'
        end
      end
      
      class Text
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :content, as: 'content'
          property :format, as: 'format'
        end
      end
      
      class Threshold
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :color, as: 'color'
          property :direction, as: 'direction'
          property :label, as: 'label'
          property :value, as: 'value'
        end
      end
      
      class Tile
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :height, as: 'height'
          property :widget, as: 'widget', class: Google::Apis::MonitoringV1::Widget, decorator: Google::Apis::MonitoringV1::Widget::Representation
      
          property :width, as: 'width'
          property :x_pos, as: 'xPos'
          property :y_pos, as: 'yPos'
        end
      end
      
      class TimeSeriesFilter
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :aggregation, as: 'aggregation', class: Google::Apis::MonitoringV1::Aggregation, decorator: Google::Apis::MonitoringV1::Aggregation::Representation
      
          property :filter, as: 'filter'
          property :pick_time_series_filter, as: 'pickTimeSeriesFilter', class: Google::Apis::MonitoringV1::PickTimeSeriesFilter, decorator: Google::Apis::MonitoringV1::PickTimeSeriesFilter::Representation
      
          property :secondary_aggregation, as: 'secondaryAggregation', class: Google::Apis::MonitoringV1::Aggregation, decorator: Google::Apis::MonitoringV1::Aggregation::Representation
      
          property :statistical_time_series_filter, as: 'statisticalTimeSeriesFilter', class: Google::Apis::MonitoringV1::StatisticalTimeSeriesFilter, decorator: Google::Apis::MonitoringV1::StatisticalTimeSeriesFilter::Representation
      
        end
      end
      
      class TimeSeriesFilterRatio
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :denominator, as: 'denominator', class: Google::Apis::MonitoringV1::RatioPart, decorator: Google::Apis::MonitoringV1::RatioPart::Representation
      
          property :numerator, as: 'numerator', class: Google::Apis::MonitoringV1::RatioPart, decorator: Google::Apis::MonitoringV1::RatioPart::Representation
      
          property :pick_time_series_filter, as: 'pickTimeSeriesFilter', class: Google::Apis::MonitoringV1::PickTimeSeriesFilter, decorator: Google::Apis::MonitoringV1::PickTimeSeriesFilter::Representation
      
          property :secondary_aggregation, as: 'secondaryAggregation', class: Google::Apis::MonitoringV1::Aggregation, decorator: Google::Apis::MonitoringV1::Aggregation::Representation
      
          property :statistical_time_series_filter, as: 'statisticalTimeSeriesFilter', class: Google::Apis::MonitoringV1::StatisticalTimeSeriesFilter, decorator: Google::Apis::MonitoringV1::StatisticalTimeSeriesFilter::Representation
      
        end
      end
      
      class TimeSeriesQuery
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :time_series_filter, as: 'timeSeriesFilter', class: Google::Apis::MonitoringV1::TimeSeriesFilter, decorator: Google::Apis::MonitoringV1::TimeSeriesFilter::Representation
      
          property :time_series_filter_ratio, as: 'timeSeriesFilterRatio', class: Google::Apis::MonitoringV1::TimeSeriesFilterRatio, decorator: Google::Apis::MonitoringV1::TimeSeriesFilterRatio::Representation
      
          property :time_series_query_language, as: 'timeSeriesQueryLanguage'
          property :unit_override, as: 'unitOverride'
        end
      end
      
      class Type
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :fields, as: 'fields', class: Google::Apis::MonitoringV1::Field, decorator: Google::Apis::MonitoringV1::Field::Representation
      
          property :name, as: 'name'
          collection :oneofs, as: 'oneofs'
          collection :options, as: 'options', class: Google::Apis::MonitoringV1::Option, decorator: Google::Apis::MonitoringV1::Option::Representation
      
          property :source_context, as: 'sourceContext', class: Google::Apis::MonitoringV1::SourceContext, decorator: Google::Apis::MonitoringV1::SourceContext::Representation
      
          property :syntax, as: 'syntax'
        end
      end
      
      class Widget
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :blank, as: 'blank', class: Google::Apis::MonitoringV1::Empty, decorator: Google::Apis::MonitoringV1::Empty::Representation
      
          property :scorecard, as: 'scorecard', class: Google::Apis::MonitoringV1::Scorecard, decorator: Google::Apis::MonitoringV1::Scorecard::Representation
      
          property :text, as: 'text', class: Google::Apis::MonitoringV1::Text, decorator: Google::Apis::MonitoringV1::Text::Representation
      
          property :title, as: 'title'
          property :xy_chart, as: 'xyChart', class: Google::Apis::MonitoringV1::XyChart, decorator: Google::Apis::MonitoringV1::XyChart::Representation
      
        end
      end
      
      class XyChart
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :chart_options, as: 'chartOptions', class: Google::Apis::MonitoringV1::ChartOptions, decorator: Google::Apis::MonitoringV1::ChartOptions::Representation
      
          collection :data_sets, as: 'dataSets', class: Google::Apis::MonitoringV1::DataSet, decorator: Google::Apis::MonitoringV1::DataSet::Representation
      
          collection :thresholds, as: 'thresholds', class: Google::Apis::MonitoringV1::Threshold, decorator: Google::Apis::MonitoringV1::Threshold::Representation
      
          property :timeshift_duration, as: 'timeshiftDuration'
          property :x_axis, as: 'xAxis', class: Google::Apis::MonitoringV1::Axis, decorator: Google::Apis::MonitoringV1::Axis::Representation
      
          property :y_axis, as: 'yAxis', class: Google::Apis::MonitoringV1::Axis, decorator: Google::Apis::MonitoringV1::Axis::Representation
      
        end
      end
    end
  end
end
