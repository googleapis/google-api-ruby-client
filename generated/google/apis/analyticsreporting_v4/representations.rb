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
      
      class ColumnHeader
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SegmentFilterClause
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ReportRow
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Cohort
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class MetricFilterClause
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class OrFiltersForSegment
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class MetricHeader
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DimensionFilterClause
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GetReportsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SequenceSegment
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SegmentMetricFilter
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DateRangeValues
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CohortGroup
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GetReportsRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Pivot
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class PivotHeaderEntry
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SegmentFilter
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SegmentDefinition
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class MetricHeaderEntry
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ReportData
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DimensionFilter
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SegmentDimensionFilter
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class OrderBy
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Segment
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SegmentSequenceStep
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Metric
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class PivotValueRegion
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Report
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class PivotHeader
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DateRange
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class MetricFilter
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ReportRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Dimension
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DynamicSegment
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SimpleSegment
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ColumnHeader
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :dimensions, as: 'dimensions'
          property :metric_header, as: 'metricHeader', class: Google::Apis::AnalyticsreportingV4::MetricHeader, decorator: Google::Apis::AnalyticsreportingV4::MetricHeader::Representation
      
        end
      end
      
      class SegmentFilterClause
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :dimension_filter, as: 'dimensionFilter', class: Google::Apis::AnalyticsreportingV4::SegmentDimensionFilter, decorator: Google::Apis::AnalyticsreportingV4::SegmentDimensionFilter::Representation
      
          property :metric_filter, as: 'metricFilter', class: Google::Apis::AnalyticsreportingV4::SegmentMetricFilter, decorator: Google::Apis::AnalyticsreportingV4::SegmentMetricFilter::Representation
      
          property :not, as: 'not'
        end
      end
      
      class ReportRow
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :metrics, as: 'metrics', class: Google::Apis::AnalyticsreportingV4::DateRangeValues, decorator: Google::Apis::AnalyticsreportingV4::DateRangeValues::Representation
      
          collection :dimensions, as: 'dimensions'
        end
      end
      
      class Cohort
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :type, as: 'type'
          property :name, as: 'name'
          property :date_range, as: 'dateRange', class: Google::Apis::AnalyticsreportingV4::DateRange, decorator: Google::Apis::AnalyticsreportingV4::DateRange::Representation
      
        end
      end
      
      class MetricFilterClause
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :operator, as: 'operator'
          collection :filters, as: 'filters', class: Google::Apis::AnalyticsreportingV4::MetricFilter, decorator: Google::Apis::AnalyticsreportingV4::MetricFilter::Representation
      
        end
      end
      
      class OrFiltersForSegment
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :segment_filter_clauses, as: 'segmentFilterClauses', class: Google::Apis::AnalyticsreportingV4::SegmentFilterClause, decorator: Google::Apis::AnalyticsreportingV4::SegmentFilterClause::Representation
      
        end
      end
      
      class MetricHeader
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :metric_header_entries, as: 'metricHeaderEntries', class: Google::Apis::AnalyticsreportingV4::MetricHeaderEntry, decorator: Google::Apis::AnalyticsreportingV4::MetricHeaderEntry::Representation
      
          collection :pivot_headers, as: 'pivotHeaders', class: Google::Apis::AnalyticsreportingV4::PivotHeader, decorator: Google::Apis::AnalyticsreportingV4::PivotHeader::Representation
      
        end
      end
      
      class DimensionFilterClause
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :operator, as: 'operator'
          collection :filters, as: 'filters', class: Google::Apis::AnalyticsreportingV4::DimensionFilter, decorator: Google::Apis::AnalyticsreportingV4::DimensionFilter::Representation
      
        end
      end
      
      class GetReportsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :reports, as: 'reports', class: Google::Apis::AnalyticsreportingV4::Report, decorator: Google::Apis::AnalyticsreportingV4::Report::Representation
      
        end
      end
      
      class SequenceSegment
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :first_step_should_match_first_hit, as: 'firstStepShouldMatchFirstHit'
          collection :segment_sequence_steps, as: 'segmentSequenceSteps', class: Google::Apis::AnalyticsreportingV4::SegmentSequenceStep, decorator: Google::Apis::AnalyticsreportingV4::SegmentSequenceStep::Representation
      
        end
      end
      
      class SegmentMetricFilter
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :metric_name, as: 'metricName'
          property :scope, as: 'scope'
          property :max_comparison_value, as: 'maxComparisonValue'
          property :comparison_value, as: 'comparisonValue'
          property :operator, as: 'operator'
        end
      end
      
      class DateRangeValues
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :values, as: 'values'
          collection :pivot_value_regions, as: 'pivotValueRegions', class: Google::Apis::AnalyticsreportingV4::PivotValueRegion, decorator: Google::Apis::AnalyticsreportingV4::PivotValueRegion::Representation
      
        end
      end
      
      class CohortGroup
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :cohorts, as: 'cohorts', class: Google::Apis::AnalyticsreportingV4::Cohort, decorator: Google::Apis::AnalyticsreportingV4::Cohort::Representation
      
          property :lifetime_value, as: 'lifetimeValue'
        end
      end
      
      class GetReportsRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :report_requests, as: 'reportRequests', class: Google::Apis::AnalyticsreportingV4::ReportRequest, decorator: Google::Apis::AnalyticsreportingV4::ReportRequest::Representation
      
        end
      end
      
      class Pivot
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :start_group, as: 'startGroup'
          collection :metrics, as: 'metrics', class: Google::Apis::AnalyticsreportingV4::Metric, decorator: Google::Apis::AnalyticsreportingV4::Metric::Representation
      
          collection :dimensions, as: 'dimensions', class: Google::Apis::AnalyticsreportingV4::Dimension, decorator: Google::Apis::AnalyticsreportingV4::Dimension::Representation
      
          collection :dimension_filter_clauses, as: 'dimensionFilterClauses', class: Google::Apis::AnalyticsreportingV4::DimensionFilterClause, decorator: Google::Apis::AnalyticsreportingV4::DimensionFilterClause::Representation
      
          property :max_group_count, as: 'maxGroupCount'
        end
      end
      
      class PivotHeaderEntry
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :dimension_names, as: 'dimensionNames'
          property :metric, as: 'metric', class: Google::Apis::AnalyticsreportingV4::MetricHeaderEntry, decorator: Google::Apis::AnalyticsreportingV4::MetricHeaderEntry::Representation
      
          collection :dimension_values, as: 'dimensionValues'
        end
      end
      
      class SegmentFilter
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :sequence_segment, as: 'sequenceSegment', class: Google::Apis::AnalyticsreportingV4::SequenceSegment, decorator: Google::Apis::AnalyticsreportingV4::SequenceSegment::Representation
      
          property :not, as: 'not'
          property :simple_segment, as: 'simpleSegment', class: Google::Apis::AnalyticsreportingV4::SimpleSegment, decorator: Google::Apis::AnalyticsreportingV4::SimpleSegment::Representation
      
        end
      end
      
      class SegmentDefinition
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :segment_filters, as: 'segmentFilters', class: Google::Apis::AnalyticsreportingV4::SegmentFilter, decorator: Google::Apis::AnalyticsreportingV4::SegmentFilter::Representation
      
        end
      end
      
      class MetricHeaderEntry
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :name, as: 'name'
          property :type, as: 'type'
        end
      end
      
      class ReportData
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :row_count, as: 'rowCount'
          collection :rows, as: 'rows', class: Google::Apis::AnalyticsreportingV4::ReportRow, decorator: Google::Apis::AnalyticsreportingV4::ReportRow::Representation
      
          property :is_data_golden, as: 'isDataGolden'
          property :data_last_refreshed, as: 'dataLastRefreshed'
          collection :maximums, as: 'maximums', class: Google::Apis::AnalyticsreportingV4::DateRangeValues, decorator: Google::Apis::AnalyticsreportingV4::DateRangeValues::Representation
      
          collection :sampling_space_sizes, as: 'samplingSpaceSizes'
          collection :minimums, as: 'minimums', class: Google::Apis::AnalyticsreportingV4::DateRangeValues, decorator: Google::Apis::AnalyticsreportingV4::DateRangeValues::Representation
      
          collection :totals, as: 'totals', class: Google::Apis::AnalyticsreportingV4::DateRangeValues, decorator: Google::Apis::AnalyticsreportingV4::DateRangeValues::Representation
      
          collection :samples_read_counts, as: 'samplesReadCounts'
        end
      end
      
      class DimensionFilter
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :dimension_name, as: 'dimensionName'
          property :operator, as: 'operator'
          property :not, as: 'not'
          collection :expressions, as: 'expressions'
          property :case_sensitive, as: 'caseSensitive'
        end
      end
      
      class SegmentDimensionFilter
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :min_comparison_value, as: 'minComparisonValue'
          property :max_comparison_value, as: 'maxComparisonValue'
          property :dimension_name, as: 'dimensionName'
          property :operator, as: 'operator'
          collection :expressions, as: 'expressions'
          property :case_sensitive, as: 'caseSensitive'
        end
      end
      
      class OrderBy
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :field_name, as: 'fieldName'
          property :order_type, as: 'orderType'
          property :sort_order, as: 'sortOrder'
        end
      end
      
      class Segment
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :dynamic_segment, as: 'dynamicSegment', class: Google::Apis::AnalyticsreportingV4::DynamicSegment, decorator: Google::Apis::AnalyticsreportingV4::DynamicSegment::Representation
      
          property :segment_id, as: 'segmentId'
        end
      end
      
      class SegmentSequenceStep
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :or_filters_for_segment, as: 'orFiltersForSegment', class: Google::Apis::AnalyticsreportingV4::OrFiltersForSegment, decorator: Google::Apis::AnalyticsreportingV4::OrFiltersForSegment::Representation
      
          property :match_type, as: 'matchType'
        end
      end
      
      class Metric
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :formatting_type, as: 'formattingType'
          property :alias, as: 'alias'
          property :expression, as: 'expression'
        end
      end
      
      class PivotValueRegion
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :values, as: 'values'
        end
      end
      
      class Report
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :data, as: 'data', class: Google::Apis::AnalyticsreportingV4::ReportData, decorator: Google::Apis::AnalyticsreportingV4::ReportData::Representation
      
          property :next_page_token, as: 'nextPageToken'
          property :column_header, as: 'columnHeader', class: Google::Apis::AnalyticsreportingV4::ColumnHeader, decorator: Google::Apis::AnalyticsreportingV4::ColumnHeader::Representation
      
        end
      end
      
      class PivotHeader
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :pivot_header_entries, as: 'pivotHeaderEntries', class: Google::Apis::AnalyticsreportingV4::PivotHeaderEntry, decorator: Google::Apis::AnalyticsreportingV4::PivotHeaderEntry::Representation
      
          property :total_pivot_groups_count, as: 'totalPivotGroupsCount'
        end
      end
      
      class DateRange
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :end_date, as: 'endDate'
          property :start_date, as: 'startDate'
        end
      end
      
      class MetricFilter
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :comparison_value, as: 'comparisonValue'
          property :operator, as: 'operator'
          property :not, as: 'not'
          property :metric_name, as: 'metricName'
        end
      end
      
      class ReportRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :include_empty_rows, as: 'includeEmptyRows'
          collection :metric_filter_clauses, as: 'metricFilterClauses', class: Google::Apis::AnalyticsreportingV4::MetricFilterClause, decorator: Google::Apis::AnalyticsreportingV4::MetricFilterClause::Representation
      
          property :page_size, as: 'pageSize'
          property :hide_totals, as: 'hideTotals'
          property :hide_value_ranges, as: 'hideValueRanges'
          property :cohort_group, as: 'cohortGroup', class: Google::Apis::AnalyticsreportingV4::CohortGroup, decorator: Google::Apis::AnalyticsreportingV4::CohortGroup::Representation
      
          property :filters_expression, as: 'filtersExpression'
          property :view_id, as: 'viewId'
          collection :metrics, as: 'metrics', class: Google::Apis::AnalyticsreportingV4::Metric, decorator: Google::Apis::AnalyticsreportingV4::Metric::Representation
      
          collection :dimension_filter_clauses, as: 'dimensionFilterClauses', class: Google::Apis::AnalyticsreportingV4::DimensionFilterClause, decorator: Google::Apis::AnalyticsreportingV4::DimensionFilterClause::Representation
      
          collection :order_bys, as: 'orderBys', class: Google::Apis::AnalyticsreportingV4::OrderBy, decorator: Google::Apis::AnalyticsreportingV4::OrderBy::Representation
      
          collection :segments, as: 'segments', class: Google::Apis::AnalyticsreportingV4::Segment, decorator: Google::Apis::AnalyticsreportingV4::Segment::Representation
      
          property :sampling_level, as: 'samplingLevel'
          collection :dimensions, as: 'dimensions', class: Google::Apis::AnalyticsreportingV4::Dimension, decorator: Google::Apis::AnalyticsreportingV4::Dimension::Representation
      
          property :page_token, as: 'pageToken'
          collection :date_ranges, as: 'dateRanges', class: Google::Apis::AnalyticsreportingV4::DateRange, decorator: Google::Apis::AnalyticsreportingV4::DateRange::Representation
      
          collection :pivots, as: 'pivots', class: Google::Apis::AnalyticsreportingV4::Pivot, decorator: Google::Apis::AnalyticsreportingV4::Pivot::Representation
      
        end
      end
      
      class Dimension
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :histogram_buckets, as: 'histogramBuckets'
          property :name, as: 'name'
        end
      end
      
      class DynamicSegment
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :name, as: 'name'
          property :user_segment, as: 'userSegment', class: Google::Apis::AnalyticsreportingV4::SegmentDefinition, decorator: Google::Apis::AnalyticsreportingV4::SegmentDefinition::Representation
      
          property :session_segment, as: 'sessionSegment', class: Google::Apis::AnalyticsreportingV4::SegmentDefinition, decorator: Google::Apis::AnalyticsreportingV4::SegmentDefinition::Representation
      
        end
      end
      
      class SimpleSegment
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :or_filters_for_segment, as: 'orFiltersForSegment', class: Google::Apis::AnalyticsreportingV4::OrFiltersForSegment, decorator: Google::Apis::AnalyticsreportingV4::OrFiltersForSegment::Representation
      
        end
      end
    end
  end
end
