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
      
      class BatchRunPivotReportsRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class BatchRunPivotReportsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class BatchRunReportsRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class BatchRunReportsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class BetweenFilter
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CaseExpression
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Cohort
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CohortReportSettings
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CohortSpec
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CohortsRange
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ConcatenateExpression
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DateRange
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Dimension
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DimensionExpression
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DimensionHeader
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DimensionMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DimensionOrderBy
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DimensionValue
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Entity
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Filter
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class FilterExpression
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class FilterExpressionList
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class InListFilter
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Metadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Metric
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class MetricHeader
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class MetricMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class MetricOrderBy
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class MetricValue
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class NumericFilter
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class NumericValue
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class OrderBy
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Pivot
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class PivotDimensionHeader
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class PivotHeader
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class PivotOrderBy
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class PivotSelection
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class PropertyQuota
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class QuotaStatus
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ResponseMetaData
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Row
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class RunPivotReportRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class RunPivotReportResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class RunRealtimeReportRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class RunRealtimeReportResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class RunReportRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class RunReportResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class StringFilter
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class BatchRunPivotReportsRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :entity, as: 'entity', class: Google::Apis::AnalyticsdataV1alpha::Entity, decorator: Google::Apis::AnalyticsdataV1alpha::Entity::Representation
      
          collection :requests, as: 'requests', class: Google::Apis::AnalyticsdataV1alpha::RunPivotReportRequest, decorator: Google::Apis::AnalyticsdataV1alpha::RunPivotReportRequest::Representation
      
        end
      end
      
      class BatchRunPivotReportsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :pivot_reports, as: 'pivotReports', class: Google::Apis::AnalyticsdataV1alpha::RunPivotReportResponse, decorator: Google::Apis::AnalyticsdataV1alpha::RunPivotReportResponse::Representation
      
        end
      end
      
      class BatchRunReportsRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :entity, as: 'entity', class: Google::Apis::AnalyticsdataV1alpha::Entity, decorator: Google::Apis::AnalyticsdataV1alpha::Entity::Representation
      
          collection :requests, as: 'requests', class: Google::Apis::AnalyticsdataV1alpha::RunReportRequest, decorator: Google::Apis::AnalyticsdataV1alpha::RunReportRequest::Representation
      
        end
      end
      
      class BatchRunReportsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :reports, as: 'reports', class: Google::Apis::AnalyticsdataV1alpha::RunReportResponse, decorator: Google::Apis::AnalyticsdataV1alpha::RunReportResponse::Representation
      
        end
      end
      
      class BetweenFilter
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :from_value, as: 'fromValue', class: Google::Apis::AnalyticsdataV1alpha::NumericValue, decorator: Google::Apis::AnalyticsdataV1alpha::NumericValue::Representation
      
          property :to_value, as: 'toValue', class: Google::Apis::AnalyticsdataV1alpha::NumericValue, decorator: Google::Apis::AnalyticsdataV1alpha::NumericValue::Representation
      
        end
      end
      
      class CaseExpression
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :dimension_name, as: 'dimensionName'
        end
      end
      
      class Cohort
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :date_range, as: 'dateRange', class: Google::Apis::AnalyticsdataV1alpha::DateRange, decorator: Google::Apis::AnalyticsdataV1alpha::DateRange::Representation
      
          property :dimension, as: 'dimension'
          property :name, as: 'name'
        end
      end
      
      class CohortReportSettings
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :accumulate, as: 'accumulate'
        end
      end
      
      class CohortSpec
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :cohort_report_settings, as: 'cohortReportSettings', class: Google::Apis::AnalyticsdataV1alpha::CohortReportSettings, decorator: Google::Apis::AnalyticsdataV1alpha::CohortReportSettings::Representation
      
          collection :cohorts, as: 'cohorts', class: Google::Apis::AnalyticsdataV1alpha::Cohort, decorator: Google::Apis::AnalyticsdataV1alpha::Cohort::Representation
      
          property :cohorts_range, as: 'cohortsRange', class: Google::Apis::AnalyticsdataV1alpha::CohortsRange, decorator: Google::Apis::AnalyticsdataV1alpha::CohortsRange::Representation
      
        end
      end
      
      class CohortsRange
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :end_offset, as: 'endOffset'
          property :granularity, as: 'granularity'
          property :start_offset, as: 'startOffset'
        end
      end
      
      class ConcatenateExpression
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :delimiter, as: 'delimiter'
          collection :dimension_names, as: 'dimensionNames'
        end
      end
      
      class DateRange
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :end_date, as: 'endDate'
          property :name, as: 'name'
          property :start_date, as: 'startDate'
        end
      end
      
      class Dimension
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :dimension_expression, as: 'dimensionExpression', class: Google::Apis::AnalyticsdataV1alpha::DimensionExpression, decorator: Google::Apis::AnalyticsdataV1alpha::DimensionExpression::Representation
      
          property :name, as: 'name'
        end
      end
      
      class DimensionExpression
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :concatenate, as: 'concatenate', class: Google::Apis::AnalyticsdataV1alpha::ConcatenateExpression, decorator: Google::Apis::AnalyticsdataV1alpha::ConcatenateExpression::Representation
      
          property :lower_case, as: 'lowerCase', class: Google::Apis::AnalyticsdataV1alpha::CaseExpression, decorator: Google::Apis::AnalyticsdataV1alpha::CaseExpression::Representation
      
          property :upper_case, as: 'upperCase', class: Google::Apis::AnalyticsdataV1alpha::CaseExpression, decorator: Google::Apis::AnalyticsdataV1alpha::CaseExpression::Representation
      
        end
      end
      
      class DimensionHeader
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :name, as: 'name'
        end
      end
      
      class DimensionMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :api_name, as: 'apiName'
          collection :deprecated_api_names, as: 'deprecatedApiNames'
          property :description, as: 'description'
          property :ui_name, as: 'uiName'
        end
      end
      
      class DimensionOrderBy
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :dimension_name, as: 'dimensionName'
          property :order_type, as: 'orderType'
        end
      end
      
      class DimensionValue
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :value, as: 'value'
        end
      end
      
      class Entity
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :property_id, as: 'propertyId'
        end
      end
      
      class Filter
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :between_filter, as: 'betweenFilter', class: Google::Apis::AnalyticsdataV1alpha::BetweenFilter, decorator: Google::Apis::AnalyticsdataV1alpha::BetweenFilter::Representation
      
          property :field_name, as: 'fieldName'
          property :in_list_filter, as: 'inListFilter', class: Google::Apis::AnalyticsdataV1alpha::InListFilter, decorator: Google::Apis::AnalyticsdataV1alpha::InListFilter::Representation
      
          property :null_filter, as: 'nullFilter'
          property :numeric_filter, as: 'numericFilter', class: Google::Apis::AnalyticsdataV1alpha::NumericFilter, decorator: Google::Apis::AnalyticsdataV1alpha::NumericFilter::Representation
      
          property :string_filter, as: 'stringFilter', class: Google::Apis::AnalyticsdataV1alpha::StringFilter, decorator: Google::Apis::AnalyticsdataV1alpha::StringFilter::Representation
      
        end
      end
      
      class FilterExpression
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :and_group, as: 'andGroup', class: Google::Apis::AnalyticsdataV1alpha::FilterExpressionList, decorator: Google::Apis::AnalyticsdataV1alpha::FilterExpressionList::Representation
      
          property :filter, as: 'filter', class: Google::Apis::AnalyticsdataV1alpha::Filter, decorator: Google::Apis::AnalyticsdataV1alpha::Filter::Representation
      
          property :not_expression, as: 'notExpression', class: Google::Apis::AnalyticsdataV1alpha::FilterExpression, decorator: Google::Apis::AnalyticsdataV1alpha::FilterExpression::Representation
      
          property :or_group, as: 'orGroup', class: Google::Apis::AnalyticsdataV1alpha::FilterExpressionList, decorator: Google::Apis::AnalyticsdataV1alpha::FilterExpressionList::Representation
      
        end
      end
      
      class FilterExpressionList
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :expressions, as: 'expressions', class: Google::Apis::AnalyticsdataV1alpha::FilterExpression, decorator: Google::Apis::AnalyticsdataV1alpha::FilterExpression::Representation
      
        end
      end
      
      class InListFilter
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :case_sensitive, as: 'caseSensitive'
          collection :values, as: 'values'
        end
      end
      
      class Metadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :dimensions, as: 'dimensions', class: Google::Apis::AnalyticsdataV1alpha::DimensionMetadata, decorator: Google::Apis::AnalyticsdataV1alpha::DimensionMetadata::Representation
      
          collection :metrics, as: 'metrics', class: Google::Apis::AnalyticsdataV1alpha::MetricMetadata, decorator: Google::Apis::AnalyticsdataV1alpha::MetricMetadata::Representation
      
          property :name, as: 'name'
        end
      end
      
      class Metric
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :expression, as: 'expression'
          property :invisible, as: 'invisible'
          property :name, as: 'name'
        end
      end
      
      class MetricHeader
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :name, as: 'name'
          property :type, as: 'type'
        end
      end
      
      class MetricMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :api_name, as: 'apiName'
          collection :deprecated_api_names, as: 'deprecatedApiNames'
          property :description, as: 'description'
          property :expression, as: 'expression'
          property :type, as: 'type'
          property :ui_name, as: 'uiName'
        end
      end
      
      class MetricOrderBy
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :metric_name, as: 'metricName'
        end
      end
      
      class MetricValue
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :value, as: 'value'
        end
      end
      
      class NumericFilter
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :operation, as: 'operation'
          property :value, as: 'value', class: Google::Apis::AnalyticsdataV1alpha::NumericValue, decorator: Google::Apis::AnalyticsdataV1alpha::NumericValue::Representation
      
        end
      end
      
      class NumericValue
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :double_value, as: 'doubleValue'
          property :int64_value, :numeric_string => true, as: 'int64Value'
        end
      end
      
      class OrderBy
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :desc, as: 'desc'
          property :dimension, as: 'dimension', class: Google::Apis::AnalyticsdataV1alpha::DimensionOrderBy, decorator: Google::Apis::AnalyticsdataV1alpha::DimensionOrderBy::Representation
      
          property :metric, as: 'metric', class: Google::Apis::AnalyticsdataV1alpha::MetricOrderBy, decorator: Google::Apis::AnalyticsdataV1alpha::MetricOrderBy::Representation
      
          property :pivot, as: 'pivot', class: Google::Apis::AnalyticsdataV1alpha::PivotOrderBy, decorator: Google::Apis::AnalyticsdataV1alpha::PivotOrderBy::Representation
      
        end
      end
      
      class Pivot
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :field_names, as: 'fieldNames'
          property :limit, :numeric_string => true, as: 'limit'
          collection :metric_aggregations, as: 'metricAggregations'
          property :offset, :numeric_string => true, as: 'offset'
          collection :order_bys, as: 'orderBys', class: Google::Apis::AnalyticsdataV1alpha::OrderBy, decorator: Google::Apis::AnalyticsdataV1alpha::OrderBy::Representation
      
        end
      end
      
      class PivotDimensionHeader
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :dimension_values, as: 'dimensionValues', class: Google::Apis::AnalyticsdataV1alpha::DimensionValue, decorator: Google::Apis::AnalyticsdataV1alpha::DimensionValue::Representation
      
        end
      end
      
      class PivotHeader
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :pivot_dimension_headers, as: 'pivotDimensionHeaders', class: Google::Apis::AnalyticsdataV1alpha::PivotDimensionHeader, decorator: Google::Apis::AnalyticsdataV1alpha::PivotDimensionHeader::Representation
      
          property :row_count, as: 'rowCount'
        end
      end
      
      class PivotOrderBy
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :metric_name, as: 'metricName'
          collection :pivot_selections, as: 'pivotSelections', class: Google::Apis::AnalyticsdataV1alpha::PivotSelection, decorator: Google::Apis::AnalyticsdataV1alpha::PivotSelection::Representation
      
        end
      end
      
      class PivotSelection
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :dimension_name, as: 'dimensionName'
          property :dimension_value, as: 'dimensionValue'
        end
      end
      
      class PropertyQuota
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :concurrent_requests, as: 'concurrentRequests', class: Google::Apis::AnalyticsdataV1alpha::QuotaStatus, decorator: Google::Apis::AnalyticsdataV1alpha::QuotaStatus::Representation
      
          property :server_errors_per_project_per_hour, as: 'serverErrorsPerProjectPerHour', class: Google::Apis::AnalyticsdataV1alpha::QuotaStatus, decorator: Google::Apis::AnalyticsdataV1alpha::QuotaStatus::Representation
      
          property :tokens_per_day, as: 'tokensPerDay', class: Google::Apis::AnalyticsdataV1alpha::QuotaStatus, decorator: Google::Apis::AnalyticsdataV1alpha::QuotaStatus::Representation
      
          property :tokens_per_hour, as: 'tokensPerHour', class: Google::Apis::AnalyticsdataV1alpha::QuotaStatus, decorator: Google::Apis::AnalyticsdataV1alpha::QuotaStatus::Representation
      
        end
      end
      
      class QuotaStatus
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :consumed, as: 'consumed'
          property :remaining, as: 'remaining'
        end
      end
      
      class ResponseMetaData
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :data_loss_from_other_row, as: 'dataLossFromOtherRow'
        end
      end
      
      class Row
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :dimension_values, as: 'dimensionValues', class: Google::Apis::AnalyticsdataV1alpha::DimensionValue, decorator: Google::Apis::AnalyticsdataV1alpha::DimensionValue::Representation
      
          collection :metric_values, as: 'metricValues', class: Google::Apis::AnalyticsdataV1alpha::MetricValue, decorator: Google::Apis::AnalyticsdataV1alpha::MetricValue::Representation
      
        end
      end
      
      class RunPivotReportRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :cohort_spec, as: 'cohortSpec', class: Google::Apis::AnalyticsdataV1alpha::CohortSpec, decorator: Google::Apis::AnalyticsdataV1alpha::CohortSpec::Representation
      
          property :currency_code, as: 'currencyCode'
          collection :date_ranges, as: 'dateRanges', class: Google::Apis::AnalyticsdataV1alpha::DateRange, decorator: Google::Apis::AnalyticsdataV1alpha::DateRange::Representation
      
          property :dimension_filter, as: 'dimensionFilter', class: Google::Apis::AnalyticsdataV1alpha::FilterExpression, decorator: Google::Apis::AnalyticsdataV1alpha::FilterExpression::Representation
      
          collection :dimensions, as: 'dimensions', class: Google::Apis::AnalyticsdataV1alpha::Dimension, decorator: Google::Apis::AnalyticsdataV1alpha::Dimension::Representation
      
          property :entity, as: 'entity', class: Google::Apis::AnalyticsdataV1alpha::Entity, decorator: Google::Apis::AnalyticsdataV1alpha::Entity::Representation
      
          property :keep_empty_rows, as: 'keepEmptyRows'
          property :metric_filter, as: 'metricFilter', class: Google::Apis::AnalyticsdataV1alpha::FilterExpression, decorator: Google::Apis::AnalyticsdataV1alpha::FilterExpression::Representation
      
          collection :metrics, as: 'metrics', class: Google::Apis::AnalyticsdataV1alpha::Metric, decorator: Google::Apis::AnalyticsdataV1alpha::Metric::Representation
      
          collection :pivots, as: 'pivots', class: Google::Apis::AnalyticsdataV1alpha::Pivot, decorator: Google::Apis::AnalyticsdataV1alpha::Pivot::Representation
      
          property :return_property_quota, as: 'returnPropertyQuota'
        end
      end
      
      class RunPivotReportResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :aggregates, as: 'aggregates', class: Google::Apis::AnalyticsdataV1alpha::Row, decorator: Google::Apis::AnalyticsdataV1alpha::Row::Representation
      
          collection :dimension_headers, as: 'dimensionHeaders', class: Google::Apis::AnalyticsdataV1alpha::DimensionHeader, decorator: Google::Apis::AnalyticsdataV1alpha::DimensionHeader::Representation
      
          property :metadata, as: 'metadata', class: Google::Apis::AnalyticsdataV1alpha::ResponseMetaData, decorator: Google::Apis::AnalyticsdataV1alpha::ResponseMetaData::Representation
      
          collection :metric_headers, as: 'metricHeaders', class: Google::Apis::AnalyticsdataV1alpha::MetricHeader, decorator: Google::Apis::AnalyticsdataV1alpha::MetricHeader::Representation
      
          collection :pivot_headers, as: 'pivotHeaders', class: Google::Apis::AnalyticsdataV1alpha::PivotHeader, decorator: Google::Apis::AnalyticsdataV1alpha::PivotHeader::Representation
      
          property :property_quota, as: 'propertyQuota', class: Google::Apis::AnalyticsdataV1alpha::PropertyQuota, decorator: Google::Apis::AnalyticsdataV1alpha::PropertyQuota::Representation
      
          collection :rows, as: 'rows', class: Google::Apis::AnalyticsdataV1alpha::Row, decorator: Google::Apis::AnalyticsdataV1alpha::Row::Representation
      
        end
      end
      
      class RunRealtimeReportRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :dimension_filter, as: 'dimensionFilter', class: Google::Apis::AnalyticsdataV1alpha::FilterExpression, decorator: Google::Apis::AnalyticsdataV1alpha::FilterExpression::Representation
      
          collection :dimensions, as: 'dimensions', class: Google::Apis::AnalyticsdataV1alpha::Dimension, decorator: Google::Apis::AnalyticsdataV1alpha::Dimension::Representation
      
          property :limit, :numeric_string => true, as: 'limit'
          collection :metric_aggregations, as: 'metricAggregations'
          property :metric_filter, as: 'metricFilter', class: Google::Apis::AnalyticsdataV1alpha::FilterExpression, decorator: Google::Apis::AnalyticsdataV1alpha::FilterExpression::Representation
      
          collection :metrics, as: 'metrics', class: Google::Apis::AnalyticsdataV1alpha::Metric, decorator: Google::Apis::AnalyticsdataV1alpha::Metric::Representation
      
          collection :order_bys, as: 'orderBys', class: Google::Apis::AnalyticsdataV1alpha::OrderBy, decorator: Google::Apis::AnalyticsdataV1alpha::OrderBy::Representation
      
          property :return_property_quota, as: 'returnPropertyQuota'
        end
      end
      
      class RunRealtimeReportResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :dimension_headers, as: 'dimensionHeaders', class: Google::Apis::AnalyticsdataV1alpha::DimensionHeader, decorator: Google::Apis::AnalyticsdataV1alpha::DimensionHeader::Representation
      
          collection :maximums, as: 'maximums', class: Google::Apis::AnalyticsdataV1alpha::Row, decorator: Google::Apis::AnalyticsdataV1alpha::Row::Representation
      
          collection :metric_headers, as: 'metricHeaders', class: Google::Apis::AnalyticsdataV1alpha::MetricHeader, decorator: Google::Apis::AnalyticsdataV1alpha::MetricHeader::Representation
      
          collection :minimums, as: 'minimums', class: Google::Apis::AnalyticsdataV1alpha::Row, decorator: Google::Apis::AnalyticsdataV1alpha::Row::Representation
      
          property :property_quota, as: 'propertyQuota', class: Google::Apis::AnalyticsdataV1alpha::PropertyQuota, decorator: Google::Apis::AnalyticsdataV1alpha::PropertyQuota::Representation
      
          property :row_count, as: 'rowCount'
          collection :rows, as: 'rows', class: Google::Apis::AnalyticsdataV1alpha::Row, decorator: Google::Apis::AnalyticsdataV1alpha::Row::Representation
      
          collection :totals, as: 'totals', class: Google::Apis::AnalyticsdataV1alpha::Row, decorator: Google::Apis::AnalyticsdataV1alpha::Row::Representation
      
        end
      end
      
      class RunReportRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :cohort_spec, as: 'cohortSpec', class: Google::Apis::AnalyticsdataV1alpha::CohortSpec, decorator: Google::Apis::AnalyticsdataV1alpha::CohortSpec::Representation
      
          property :currency_code, as: 'currencyCode'
          collection :date_ranges, as: 'dateRanges', class: Google::Apis::AnalyticsdataV1alpha::DateRange, decorator: Google::Apis::AnalyticsdataV1alpha::DateRange::Representation
      
          property :dimension_filter, as: 'dimensionFilter', class: Google::Apis::AnalyticsdataV1alpha::FilterExpression, decorator: Google::Apis::AnalyticsdataV1alpha::FilterExpression::Representation
      
          collection :dimensions, as: 'dimensions', class: Google::Apis::AnalyticsdataV1alpha::Dimension, decorator: Google::Apis::AnalyticsdataV1alpha::Dimension::Representation
      
          property :entity, as: 'entity', class: Google::Apis::AnalyticsdataV1alpha::Entity, decorator: Google::Apis::AnalyticsdataV1alpha::Entity::Representation
      
          property :keep_empty_rows, as: 'keepEmptyRows'
          property :limit, :numeric_string => true, as: 'limit'
          collection :metric_aggregations, as: 'metricAggregations'
          property :metric_filter, as: 'metricFilter', class: Google::Apis::AnalyticsdataV1alpha::FilterExpression, decorator: Google::Apis::AnalyticsdataV1alpha::FilterExpression::Representation
      
          collection :metrics, as: 'metrics', class: Google::Apis::AnalyticsdataV1alpha::Metric, decorator: Google::Apis::AnalyticsdataV1alpha::Metric::Representation
      
          property :offset, :numeric_string => true, as: 'offset'
          collection :order_bys, as: 'orderBys', class: Google::Apis::AnalyticsdataV1alpha::OrderBy, decorator: Google::Apis::AnalyticsdataV1alpha::OrderBy::Representation
      
          property :return_property_quota, as: 'returnPropertyQuota'
        end
      end
      
      class RunReportResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :dimension_headers, as: 'dimensionHeaders', class: Google::Apis::AnalyticsdataV1alpha::DimensionHeader, decorator: Google::Apis::AnalyticsdataV1alpha::DimensionHeader::Representation
      
          collection :maximums, as: 'maximums', class: Google::Apis::AnalyticsdataV1alpha::Row, decorator: Google::Apis::AnalyticsdataV1alpha::Row::Representation
      
          property :metadata, as: 'metadata', class: Google::Apis::AnalyticsdataV1alpha::ResponseMetaData, decorator: Google::Apis::AnalyticsdataV1alpha::ResponseMetaData::Representation
      
          collection :metric_headers, as: 'metricHeaders', class: Google::Apis::AnalyticsdataV1alpha::MetricHeader, decorator: Google::Apis::AnalyticsdataV1alpha::MetricHeader::Representation
      
          collection :minimums, as: 'minimums', class: Google::Apis::AnalyticsdataV1alpha::Row, decorator: Google::Apis::AnalyticsdataV1alpha::Row::Representation
      
          property :property_quota, as: 'propertyQuota', class: Google::Apis::AnalyticsdataV1alpha::PropertyQuota, decorator: Google::Apis::AnalyticsdataV1alpha::PropertyQuota::Representation
      
          property :row_count, as: 'rowCount'
          collection :rows, as: 'rows', class: Google::Apis::AnalyticsdataV1alpha::Row, decorator: Google::Apis::AnalyticsdataV1alpha::Row::Representation
      
          collection :totals, as: 'totals', class: Google::Apis::AnalyticsdataV1alpha::Row, decorator: Google::Apis::AnalyticsdataV1alpha::Row::Representation
      
        end
      end
      
      class StringFilter
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :case_sensitive, as: 'caseSensitive'
          property :match_type, as: 'matchType'
          property :value, as: 'value'
        end
      end
    end
  end
end
