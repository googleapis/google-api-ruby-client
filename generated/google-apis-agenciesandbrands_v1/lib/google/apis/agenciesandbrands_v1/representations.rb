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
      
      class Date
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DateRange
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DoubleList
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Empty
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class FetchReportResultRowsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Field
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class FieldFilter
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Filter
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class FilterList
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class FixedDateRange
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class IntList
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListReportsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class MetricValueGroup
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Operation
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Report
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ReportDefinition
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ReportValue
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Row
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class RunReportMetadata
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
      
      class Sort
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Status
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class StringList
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Date
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :day, as: 'day'
          property :month, as: 'month'
          property :year, as: 'year'
        end
      end
      
      class DateRange
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :fixed, as: 'fixed', class: Google::Apis::AgenciesandbrandsV1::FixedDateRange, decorator: Google::Apis::AgenciesandbrandsV1::FixedDateRange::Representation
      
          property :relative, as: 'relative'
        end
      end
      
      class DoubleList
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :values, as: 'values'
        end
      end
      
      class Empty
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class FetchReportResultRowsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :date_ranges, as: 'dateRanges', class: Google::Apis::AgenciesandbrandsV1::FixedDateRange, decorator: Google::Apis::AgenciesandbrandsV1::FixedDateRange::Representation
      
          property :next_page_token, as: 'nextPageToken'
          collection :rows, as: 'rows', class: Google::Apis::AgenciesandbrandsV1::Row, decorator: Google::Apis::AgenciesandbrandsV1::Row::Representation
      
          property :run_time, as: 'runTime'
          property :total_row_count, as: 'totalRowCount'
        end
      end
      
      class Field
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :dimension, as: 'dimension'
          property :metric, as: 'metric'
        end
      end
      
      class FieldFilter
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :field, as: 'field', class: Google::Apis::AgenciesandbrandsV1::Field, decorator: Google::Apis::AgenciesandbrandsV1::Field::Representation
      
          property :operation, as: 'operation'
          collection :values, as: 'values', class: Google::Apis::AgenciesandbrandsV1::ReportValue, decorator: Google::Apis::AgenciesandbrandsV1::ReportValue::Representation
      
        end
      end
      
      class Filter
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :and_filter, as: 'andFilter', class: Google::Apis::AgenciesandbrandsV1::FilterList, decorator: Google::Apis::AgenciesandbrandsV1::FilterList::Representation
      
          property :field_filter, as: 'fieldFilter', class: Google::Apis::AgenciesandbrandsV1::FieldFilter, decorator: Google::Apis::AgenciesandbrandsV1::FieldFilter::Representation
      
          property :not_filter, as: 'notFilter', class: Google::Apis::AgenciesandbrandsV1::Filter, decorator: Google::Apis::AgenciesandbrandsV1::Filter::Representation
      
          property :or_filter, as: 'orFilter', class: Google::Apis::AgenciesandbrandsV1::FilterList, decorator: Google::Apis::AgenciesandbrandsV1::FilterList::Representation
      
        end
      end
      
      class FilterList
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :filters, as: 'filters', class: Google::Apis::AgenciesandbrandsV1::Filter, decorator: Google::Apis::AgenciesandbrandsV1::Filter::Representation
      
        end
      end
      
      class FixedDateRange
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :end_date, as: 'endDate', class: Google::Apis::AgenciesandbrandsV1::Date, decorator: Google::Apis::AgenciesandbrandsV1::Date::Representation
      
          property :start_date, as: 'startDate', class: Google::Apis::AgenciesandbrandsV1::Date, decorator: Google::Apis::AgenciesandbrandsV1::Date::Representation
      
        end
      end
      
      class IntList
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :values, as: 'values'
        end
      end
      
      class ListReportsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :reports, as: 'reports', class: Google::Apis::AgenciesandbrandsV1::Report, decorator: Google::Apis::AgenciesandbrandsV1::Report::Representation
      
          property :total_size, as: 'totalSize'
        end
      end
      
      class MetricValueGroup
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :primary_values, as: 'primaryValues', class: Google::Apis::AgenciesandbrandsV1::ReportValue, decorator: Google::Apis::AgenciesandbrandsV1::ReportValue::Representation
      
        end
      end
      
      class Operation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :done, as: 'done'
          property :error, as: 'error', class: Google::Apis::AgenciesandbrandsV1::Status, decorator: Google::Apis::AgenciesandbrandsV1::Status::Representation
      
          hash :metadata, as: 'metadata'
          property :name, as: 'name'
          hash :response, as: 'response'
        end
      end
      
      class Report
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :display_name, as: 'displayName'
          property :locale, as: 'locale'
          property :name, as: 'name'
          property :report_definition, as: 'reportDefinition', class: Google::Apis::AgenciesandbrandsV1::ReportDefinition, decorator: Google::Apis::AgenciesandbrandsV1::ReportDefinition::Representation
      
          property :report_id, :numeric_string => true, as: 'reportId'
          property :update_time, as: 'updateTime'
        end
      end
      
      class ReportDefinition
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :currency_code, as: 'currencyCode'
          property :date_range, as: 'dateRange', class: Google::Apis::AgenciesandbrandsV1::DateRange, decorator: Google::Apis::AgenciesandbrandsV1::DateRange::Representation
      
          collection :dimensions, as: 'dimensions'
          collection :filters, as: 'filters', class: Google::Apis::AgenciesandbrandsV1::Filter, decorator: Google::Apis::AgenciesandbrandsV1::Filter::Representation
      
          collection :metrics, as: 'metrics'
          collection :sorts, as: 'sorts', class: Google::Apis::AgenciesandbrandsV1::Sort, decorator: Google::Apis::AgenciesandbrandsV1::Sort::Representation
      
          property :time_zone, as: 'timeZone'
          property :time_zone_source, as: 'timeZoneSource'
        end
      end
      
      class ReportValue
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :bool_value, as: 'boolValue'
          property :bytes_value, :base64 => true, as: 'bytesValue'
          property :double_list_value, as: 'doubleListValue', class: Google::Apis::AgenciesandbrandsV1::DoubleList, decorator: Google::Apis::AgenciesandbrandsV1::DoubleList::Representation
      
          property :double_value, as: 'doubleValue'
          property :int_list_value, as: 'intListValue', class: Google::Apis::AgenciesandbrandsV1::IntList, decorator: Google::Apis::AgenciesandbrandsV1::IntList::Representation
      
          property :int_value, :numeric_string => true, as: 'intValue'
          property :string_list_value, as: 'stringListValue', class: Google::Apis::AgenciesandbrandsV1::StringList, decorator: Google::Apis::AgenciesandbrandsV1::StringList::Representation
      
          property :string_value, as: 'stringValue'
        end
      end
      
      class Row
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :dimension_values, as: 'dimensionValues', class: Google::Apis::AgenciesandbrandsV1::ReportValue, decorator: Google::Apis::AgenciesandbrandsV1::ReportValue::Representation
      
          collection :metric_value_groups, as: 'metricValueGroups', class: Google::Apis::AgenciesandbrandsV1::MetricValueGroup, decorator: Google::Apis::AgenciesandbrandsV1::MetricValueGroup::Representation
      
        end
      end
      
      class RunReportMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :percent_complete, as: 'percentComplete'
          property :report, as: 'report'
        end
      end
      
      class RunReportRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class RunReportResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :report_result, as: 'reportResult'
        end
      end
      
      class Sort
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :descending, as: 'descending'
          property :field, as: 'field', class: Google::Apis::AgenciesandbrandsV1::Field, decorator: Google::Apis::AgenciesandbrandsV1::Field::Representation
      
        end
      end
      
      class Status
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :code, as: 'code'
          collection :details, as: 'details'
          property :message, as: 'message'
        end
      end
      
      class StringList
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :values, as: 'values'
        end
      end
    end
  end
end
