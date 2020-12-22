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
    module AdmobV1
      
      class Date
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DateRange
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GenerateMediationReportRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GenerateMediationReportResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GenerateNetworkReportRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GenerateNetworkReportResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListPublisherAccountsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class LocalizationSettings
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class MediationReportSpec
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class MediationReportSpecDimensionFilter
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class MediationReportSpecSortCondition
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class NetworkReportSpec
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class NetworkReportSpecDimensionFilter
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class NetworkReportSpecSortCondition
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class PublisherAccount
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ReportFooter
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ReportHeader
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ReportRow
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ReportRowDimensionValue
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ReportRowMetricValue
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ReportWarning
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
          property :end_date, as: 'endDate', class: Google::Apis::AdmobV1::Date, decorator: Google::Apis::AdmobV1::Date::Representation
      
          property :start_date, as: 'startDate', class: Google::Apis::AdmobV1::Date, decorator: Google::Apis::AdmobV1::Date::Representation
      
        end
      end
      
      class GenerateMediationReportRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :report_spec, as: 'reportSpec', class: Google::Apis::AdmobV1::MediationReportSpec, decorator: Google::Apis::AdmobV1::MediationReportSpec::Representation
      
        end
      end
      
      class GenerateMediationReportResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :footer, as: 'footer', class: Google::Apis::AdmobV1::ReportFooter, decorator: Google::Apis::AdmobV1::ReportFooter::Representation
      
          property :header, as: 'header', class: Google::Apis::AdmobV1::ReportHeader, decorator: Google::Apis::AdmobV1::ReportHeader::Representation
      
          property :row, as: 'row', class: Google::Apis::AdmobV1::ReportRow, decorator: Google::Apis::AdmobV1::ReportRow::Representation
      
        end
      end
      
      class GenerateNetworkReportRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :report_spec, as: 'reportSpec', class: Google::Apis::AdmobV1::NetworkReportSpec, decorator: Google::Apis::AdmobV1::NetworkReportSpec::Representation
      
        end
      end
      
      class GenerateNetworkReportResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :footer, as: 'footer', class: Google::Apis::AdmobV1::ReportFooter, decorator: Google::Apis::AdmobV1::ReportFooter::Representation
      
          property :header, as: 'header', class: Google::Apis::AdmobV1::ReportHeader, decorator: Google::Apis::AdmobV1::ReportHeader::Representation
      
          property :row, as: 'row', class: Google::Apis::AdmobV1::ReportRow, decorator: Google::Apis::AdmobV1::ReportRow::Representation
      
        end
      end
      
      class ListPublisherAccountsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :account, as: 'account', class: Google::Apis::AdmobV1::PublisherAccount, decorator: Google::Apis::AdmobV1::PublisherAccount::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class LocalizationSettings
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :currency_code, as: 'currencyCode'
          property :language_code, as: 'languageCode'
        end
      end
      
      class MediationReportSpec
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :date_range, as: 'dateRange', class: Google::Apis::AdmobV1::DateRange, decorator: Google::Apis::AdmobV1::DateRange::Representation
      
          collection :dimension_filters, as: 'dimensionFilters', class: Google::Apis::AdmobV1::MediationReportSpecDimensionFilter, decorator: Google::Apis::AdmobV1::MediationReportSpecDimensionFilter::Representation
      
          collection :dimensions, as: 'dimensions'
          property :localization_settings, as: 'localizationSettings', class: Google::Apis::AdmobV1::LocalizationSettings, decorator: Google::Apis::AdmobV1::LocalizationSettings::Representation
      
          property :max_report_rows, as: 'maxReportRows'
          collection :metrics, as: 'metrics'
          collection :sort_conditions, as: 'sortConditions', class: Google::Apis::AdmobV1::MediationReportSpecSortCondition, decorator: Google::Apis::AdmobV1::MediationReportSpecSortCondition::Representation
      
          property :time_zone, as: 'timeZone'
        end
      end
      
      class MediationReportSpecDimensionFilter
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :dimension, as: 'dimension'
          property :matches_any, as: 'matchesAny', class: Google::Apis::AdmobV1::StringList, decorator: Google::Apis::AdmobV1::StringList::Representation
      
        end
      end
      
      class MediationReportSpecSortCondition
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :dimension, as: 'dimension'
          property :metric, as: 'metric'
          property :order, as: 'order'
        end
      end
      
      class NetworkReportSpec
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :date_range, as: 'dateRange', class: Google::Apis::AdmobV1::DateRange, decorator: Google::Apis::AdmobV1::DateRange::Representation
      
          collection :dimension_filters, as: 'dimensionFilters', class: Google::Apis::AdmobV1::NetworkReportSpecDimensionFilter, decorator: Google::Apis::AdmobV1::NetworkReportSpecDimensionFilter::Representation
      
          collection :dimensions, as: 'dimensions'
          property :localization_settings, as: 'localizationSettings', class: Google::Apis::AdmobV1::LocalizationSettings, decorator: Google::Apis::AdmobV1::LocalizationSettings::Representation
      
          property :max_report_rows, as: 'maxReportRows'
          collection :metrics, as: 'metrics'
          collection :sort_conditions, as: 'sortConditions', class: Google::Apis::AdmobV1::NetworkReportSpecSortCondition, decorator: Google::Apis::AdmobV1::NetworkReportSpecSortCondition::Representation
      
          property :time_zone, as: 'timeZone'
        end
      end
      
      class NetworkReportSpecDimensionFilter
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :dimension, as: 'dimension'
          property :matches_any, as: 'matchesAny', class: Google::Apis::AdmobV1::StringList, decorator: Google::Apis::AdmobV1::StringList::Representation
      
        end
      end
      
      class NetworkReportSpecSortCondition
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :dimension, as: 'dimension'
          property :metric, as: 'metric'
          property :order, as: 'order'
        end
      end
      
      class PublisherAccount
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :currency_code, as: 'currencyCode'
          property :name, as: 'name'
          property :publisher_id, as: 'publisherId'
          property :reporting_time_zone, as: 'reportingTimeZone'
        end
      end
      
      class ReportFooter
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :matching_row_count, :numeric_string => true, as: 'matchingRowCount'
          collection :warnings, as: 'warnings', class: Google::Apis::AdmobV1::ReportWarning, decorator: Google::Apis::AdmobV1::ReportWarning::Representation
      
        end
      end
      
      class ReportHeader
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :date_range, as: 'dateRange', class: Google::Apis::AdmobV1::DateRange, decorator: Google::Apis::AdmobV1::DateRange::Representation
      
          property :localization_settings, as: 'localizationSettings', class: Google::Apis::AdmobV1::LocalizationSettings, decorator: Google::Apis::AdmobV1::LocalizationSettings::Representation
      
          property :reporting_time_zone, as: 'reportingTimeZone'
        end
      end
      
      class ReportRow
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          hash :dimension_values, as: 'dimensionValues', class: Google::Apis::AdmobV1::ReportRowDimensionValue, decorator: Google::Apis::AdmobV1::ReportRowDimensionValue::Representation
      
          hash :metric_values, as: 'metricValues', class: Google::Apis::AdmobV1::ReportRowMetricValue, decorator: Google::Apis::AdmobV1::ReportRowMetricValue::Representation
      
        end
      end
      
      class ReportRowDimensionValue
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :display_label, as: 'displayLabel'
          property :value, as: 'value'
        end
      end
      
      class ReportRowMetricValue
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :double_value, as: 'doubleValue'
          property :integer_value, :numeric_string => true, as: 'integerValue'
          property :micros_value, :numeric_string => true, as: 'microsValue'
        end
      end
      
      class ReportWarning
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :description, as: 'description'
          property :type, as: 'type'
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
