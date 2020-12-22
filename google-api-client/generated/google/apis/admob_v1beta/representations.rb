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
    module AdmobV1beta
      
      class AdUnit
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class App
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AppLinkedAppInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AppManualAppInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
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
      
      class ListAdUnitsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListAppsResponse
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
      
      class AdUnit
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :ad_format, as: 'adFormat'
          collection :ad_types, as: 'adTypes'
          property :ad_unit_id, as: 'adUnitId'
          property :app_id, as: 'appId'
          property :display_name, as: 'displayName'
          property :name, as: 'name'
        end
      end
      
      class App
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :app_id, as: 'appId'
          property :linked_app_info, as: 'linkedAppInfo', class: Google::Apis::AdmobV1beta::AppLinkedAppInfo, decorator: Google::Apis::AdmobV1beta::AppLinkedAppInfo::Representation
      
          property :manual_app_info, as: 'manualAppInfo', class: Google::Apis::AdmobV1beta::AppManualAppInfo, decorator: Google::Apis::AdmobV1beta::AppManualAppInfo::Representation
      
          property :name, as: 'name'
          property :platform, as: 'platform'
        end
      end
      
      class AppLinkedAppInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :app_store_id, as: 'appStoreId'
          property :display_name, as: 'displayName'
        end
      end
      
      class AppManualAppInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :display_name, as: 'displayName'
        end
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
          property :end_date, as: 'endDate', class: Google::Apis::AdmobV1beta::Date, decorator: Google::Apis::AdmobV1beta::Date::Representation
      
          property :start_date, as: 'startDate', class: Google::Apis::AdmobV1beta::Date, decorator: Google::Apis::AdmobV1beta::Date::Representation
      
        end
      end
      
      class GenerateMediationReportRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :report_spec, as: 'reportSpec', class: Google::Apis::AdmobV1beta::MediationReportSpec, decorator: Google::Apis::AdmobV1beta::MediationReportSpec::Representation
      
        end
      end
      
      class GenerateMediationReportResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :footer, as: 'footer', class: Google::Apis::AdmobV1beta::ReportFooter, decorator: Google::Apis::AdmobV1beta::ReportFooter::Representation
      
          property :header, as: 'header', class: Google::Apis::AdmobV1beta::ReportHeader, decorator: Google::Apis::AdmobV1beta::ReportHeader::Representation
      
          property :row, as: 'row', class: Google::Apis::AdmobV1beta::ReportRow, decorator: Google::Apis::AdmobV1beta::ReportRow::Representation
      
        end
      end
      
      class GenerateNetworkReportRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :report_spec, as: 'reportSpec', class: Google::Apis::AdmobV1beta::NetworkReportSpec, decorator: Google::Apis::AdmobV1beta::NetworkReportSpec::Representation
      
        end
      end
      
      class GenerateNetworkReportResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :footer, as: 'footer', class: Google::Apis::AdmobV1beta::ReportFooter, decorator: Google::Apis::AdmobV1beta::ReportFooter::Representation
      
          property :header, as: 'header', class: Google::Apis::AdmobV1beta::ReportHeader, decorator: Google::Apis::AdmobV1beta::ReportHeader::Representation
      
          property :row, as: 'row', class: Google::Apis::AdmobV1beta::ReportRow, decorator: Google::Apis::AdmobV1beta::ReportRow::Representation
      
        end
      end
      
      class ListAdUnitsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :ad_units, as: 'adUnits', class: Google::Apis::AdmobV1beta::AdUnit, decorator: Google::Apis::AdmobV1beta::AdUnit::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class ListAppsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :apps, as: 'apps', class: Google::Apis::AdmobV1beta::App, decorator: Google::Apis::AdmobV1beta::App::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class ListPublisherAccountsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :account, as: 'account', class: Google::Apis::AdmobV1beta::PublisherAccount, decorator: Google::Apis::AdmobV1beta::PublisherAccount::Representation
      
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
          property :date_range, as: 'dateRange', class: Google::Apis::AdmobV1beta::DateRange, decorator: Google::Apis::AdmobV1beta::DateRange::Representation
      
          collection :dimension_filters, as: 'dimensionFilters', class: Google::Apis::AdmobV1beta::MediationReportSpecDimensionFilter, decorator: Google::Apis::AdmobV1beta::MediationReportSpecDimensionFilter::Representation
      
          collection :dimensions, as: 'dimensions'
          property :localization_settings, as: 'localizationSettings', class: Google::Apis::AdmobV1beta::LocalizationSettings, decorator: Google::Apis::AdmobV1beta::LocalizationSettings::Representation
      
          property :max_report_rows, as: 'maxReportRows'
          collection :metrics, as: 'metrics'
          collection :sort_conditions, as: 'sortConditions', class: Google::Apis::AdmobV1beta::MediationReportSpecSortCondition, decorator: Google::Apis::AdmobV1beta::MediationReportSpecSortCondition::Representation
      
          property :time_zone, as: 'timeZone'
        end
      end
      
      class MediationReportSpecDimensionFilter
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :dimension, as: 'dimension'
          property :matches_any, as: 'matchesAny', class: Google::Apis::AdmobV1beta::StringList, decorator: Google::Apis::AdmobV1beta::StringList::Representation
      
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
          property :date_range, as: 'dateRange', class: Google::Apis::AdmobV1beta::DateRange, decorator: Google::Apis::AdmobV1beta::DateRange::Representation
      
          collection :dimension_filters, as: 'dimensionFilters', class: Google::Apis::AdmobV1beta::NetworkReportSpecDimensionFilter, decorator: Google::Apis::AdmobV1beta::NetworkReportSpecDimensionFilter::Representation
      
          collection :dimensions, as: 'dimensions'
          property :localization_settings, as: 'localizationSettings', class: Google::Apis::AdmobV1beta::LocalizationSettings, decorator: Google::Apis::AdmobV1beta::LocalizationSettings::Representation
      
          property :max_report_rows, as: 'maxReportRows'
          collection :metrics, as: 'metrics'
          collection :sort_conditions, as: 'sortConditions', class: Google::Apis::AdmobV1beta::NetworkReportSpecSortCondition, decorator: Google::Apis::AdmobV1beta::NetworkReportSpecSortCondition::Representation
      
          property :time_zone, as: 'timeZone'
        end
      end
      
      class NetworkReportSpecDimensionFilter
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :dimension, as: 'dimension'
          property :matches_any, as: 'matchesAny', class: Google::Apis::AdmobV1beta::StringList, decorator: Google::Apis::AdmobV1beta::StringList::Representation
      
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
          collection :warnings, as: 'warnings', class: Google::Apis::AdmobV1beta::ReportWarning, decorator: Google::Apis::AdmobV1beta::ReportWarning::Representation
      
        end
      end
      
      class ReportHeader
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :date_range, as: 'dateRange', class: Google::Apis::AdmobV1beta::DateRange, decorator: Google::Apis::AdmobV1beta::DateRange::Representation
      
          property :localization_settings, as: 'localizationSettings', class: Google::Apis::AdmobV1beta::LocalizationSettings, decorator: Google::Apis::AdmobV1beta::LocalizationSettings::Representation
      
          property :reporting_time_zone, as: 'reportingTimeZone'
        end
      end
      
      class ReportRow
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          hash :dimension_values, as: 'dimensionValues', class: Google::Apis::AdmobV1beta::ReportRowDimensionValue, decorator: Google::Apis::AdmobV1beta::ReportRowDimensionValue::Representation
      
          hash :metric_values, as: 'metricValues', class: Google::Apis::AdmobV1beta::ReportRowMetricValue, decorator: Google::Apis::AdmobV1beta::ReportRowMetricValue::Representation
      
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
