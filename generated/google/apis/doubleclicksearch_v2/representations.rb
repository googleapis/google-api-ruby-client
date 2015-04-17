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
    module DoubleclicksearchV2
      class AvailabilityRepresentation < Google::Apis::Core::JsonRepresentation; end
      class ConversionRepresentation < Google::Apis::Core::JsonRepresentation; end
      class ConversionListRepresentation < Google::Apis::Core::JsonRepresentation; end
      class CustomDimensionRepresentation < Google::Apis::Core::JsonRepresentation; end
      class CustomMetricRepresentation < Google::Apis::Core::JsonRepresentation; end
      class ReportRepresentation < Google::Apis::Core::JsonRepresentation; end
      class ReportApiColumnSpecRepresentation < Google::Apis::Core::JsonRepresentation; end
      class ReportRequestRepresentation < Google::Apis::Core::JsonRepresentation; end
      class SavedColumnRepresentation < Google::Apis::Core::JsonRepresentation; end
      class SavedColumnListRepresentation < Google::Apis::Core::JsonRepresentation; end
      class UpdateAvailabilityRequestRepresentation < Google::Apis::Core::JsonRepresentation; end
      class UpdateAvailabilityResponseRepresentation < Google::Apis::Core::JsonRepresentation; end

      # @private
      class AvailabilityRepresentation < Google::Apis::Core::JsonRepresentation
        property :advertiser_id, as: 'advertiserId'
        property :agency_id, as: 'agencyId'
        property :availability_timestamp, as: 'availabilityTimestamp'
        property :segmentation_id, as: 'segmentationId'
        property :segmentation_name, as: 'segmentationName'
        property :segmentation_type, as: 'segmentationType'
      end

      # @private
      class ConversionRepresentation < Google::Apis::Core::JsonRepresentation
        property :ad_group_id, as: 'adGroupId'
        property :ad_id, as: 'adId'
        property :advertiser_id, as: 'advertiserId'
        property :agency_id, as: 'agencyId'
        property :attribution_model, as: 'attributionModel'
        property :campaign_id, as: 'campaignId'
        property :click_id, as: 'clickId'
        property :conversion_id, as: 'conversionId'
        property :conversion_modified_timestamp, as: 'conversionModifiedTimestamp'
        property :conversion_timestamp, as: 'conversionTimestamp'
        property :count_millis, as: 'countMillis'
        property :criterion_id, as: 'criterionId'
        property :currency_code, as: 'currencyCode'
        collection :custom_dimension, as: 'customDimension', class: Google::Apis::DoubleclicksearchV2::CustomDimension, decorator: Google::Apis::DoubleclicksearchV2::CustomDimensionRepresentation
        
        
        collection :custom_metric, as: 'customMetric', class: Google::Apis::DoubleclicksearchV2::CustomMetric, decorator: Google::Apis::DoubleclicksearchV2::CustomMetricRepresentation
        
        
        property :ds_conversion_id, as: 'dsConversionId'
        property :engine_account_id, as: 'engineAccountId'
        property :floodlight_order_id, as: 'floodlightOrderId'
        property :quantity_millis, as: 'quantityMillis'
        property :revenue_micros, as: 'revenueMicros'
        property :segmentation_id, as: 'segmentationId'
        property :segmentation_name, as: 'segmentationName'
        property :segmentation_type, as: 'segmentationType'
        property :state, as: 'state'
        property :type, as: 'type'
      end

      # @private
      class ConversionListRepresentation < Google::Apis::Core::JsonRepresentation
        collection :conversion, as: 'conversion', class: Google::Apis::DoubleclicksearchV2::Conversion, decorator: Google::Apis::DoubleclicksearchV2::ConversionRepresentation
        
        
        property :kind, as: 'kind'
      end

      # @private
      class CustomDimensionRepresentation < Google::Apis::Core::JsonRepresentation
        property :name, as: 'name'
        property :value, as: 'value'
      end

      # @private
      class CustomMetricRepresentation < Google::Apis::Core::JsonRepresentation
        property :name, as: 'name'
        property :value, as: 'value'
      end

      # @private
      class ReportRepresentation < Google::Apis::Core::JsonRepresentation
        collection :files, as: 'files', class: Google::Apis::DoubleclicksearchV2::Report::File do
          property :byte_count, as: 'byteCount'
          property :url, as: 'url'
        end
        
        
        property :id, as: 'id'
        property :is_report_ready, as: 'isReportReady'
        property :kind, as: 'kind'
        property :request, as: 'request', class: Google::Apis::DoubleclicksearchV2::ReportRequest, decorator: Google::Apis::DoubleclicksearchV2::ReportRequestRepresentation
        
        property :row_count, as: 'rowCount'
        collection :rows, as: 'rows'
        
        property :statistics_currency_code, as: 'statisticsCurrencyCode'
        property :statistics_time_zone, as: 'statisticsTimeZone'
      end

      # @private
      class ReportApiColumnSpecRepresentation < Google::Apis::Core::JsonRepresentation
        property :column_name, as: 'columnName'
        property :custom_dimension_name, as: 'customDimensionName'
        property :custom_metric_name, as: 'customMetricName'
        property :end_date, as: 'endDate'
        property :group_by_column, as: 'groupByColumn'
        property :header_text, as: 'headerText'
        property :platform_source, as: 'platformSource'
        property :saved_column_name, as: 'savedColumnName'
        property :start_date, as: 'startDate'
      end

      # @private
      class ReportRequestRepresentation < Google::Apis::Core::JsonRepresentation
        collection :columns, as: 'columns', class: Google::Apis::DoubleclicksearchV2::ReportApiColumnSpec, decorator: Google::Apis::DoubleclicksearchV2::ReportApiColumnSpecRepresentation
        
        
        property :download_format, as: 'downloadFormat'
        collection :filters, as: 'filters', class: Google::Apis::DoubleclicksearchV2::ReportRequest::Filter do
          property :column, as: 'column', class: Google::Apis::DoubleclicksearchV2::ReportApiColumnSpec, decorator: Google::Apis::DoubleclicksearchV2::ReportApiColumnSpecRepresentation
          
          property :operator, as: 'operator'
          collection :values, as: 'values'
        end
        
        
        property :include_deleted_entities, as: 'includeDeletedEntities'
        property :include_removed_entities, as: 'includeRemovedEntities'
        property :max_rows_per_file, as: 'maxRowsPerFile'
        collection :order_by, as: 'orderBy', class: Google::Apis::DoubleclicksearchV2::ReportRequest::OrderBy do
          property :column, as: 'column', class: Google::Apis::DoubleclicksearchV2::ReportApiColumnSpec, decorator: Google::Apis::DoubleclicksearchV2::ReportApiColumnSpecRepresentation
          
          property :sort_order, as: 'sortOrder'
        end
        
        
        property :report_scope, as: 'reportScope', class: Google::Apis::DoubleclicksearchV2::ReportRequest::ReportScope do
          property :ad_group_id, as: 'adGroupId'
          property :ad_id, as: 'adId'
          property :advertiser_id, as: 'advertiserId'
          property :agency_id, as: 'agencyId'
          property :campaign_id, as: 'campaignId'
          property :engine_account_id, as: 'engineAccountId'
          property :keyword_id, as: 'keywordId'
        end
        
        property :report_type, as: 'reportType'
        property :row_count, as: 'rowCount'
        property :start_row, as: 'startRow'
        property :statistics_currency, as: 'statisticsCurrency'
        property :time_range, as: 'timeRange', class: Google::Apis::DoubleclicksearchV2::ReportRequest::TimeRange do
          property :changed_attributes_since_timestamp, as: 'changedAttributesSinceTimestamp', type: DateTime
          property :changed_metrics_since_timestamp, as: 'changedMetricsSinceTimestamp', type: DateTime
          property :end_date, as: 'endDate'
          property :start_date, as: 'startDate'
        end
        
        property :verify_single_time_zone, as: 'verifySingleTimeZone'
      end

      # @private
      class SavedColumnRepresentation < Google::Apis::Core::JsonRepresentation
        property :kind, as: 'kind'
        property :saved_column_name, as: 'savedColumnName'
        property :type, as: 'type'
      end

      # @private
      class SavedColumnListRepresentation < Google::Apis::Core::JsonRepresentation
        collection :items, as: 'items', class: Google::Apis::DoubleclicksearchV2::SavedColumn, decorator: Google::Apis::DoubleclicksearchV2::SavedColumnRepresentation
        
        
        property :kind, as: 'kind'
      end

      # @private
      class UpdateAvailabilityRequestRepresentation < Google::Apis::Core::JsonRepresentation
        collection :availabilities, as: 'availabilities', class: Google::Apis::DoubleclicksearchV2::Availability, decorator: Google::Apis::DoubleclicksearchV2::AvailabilityRepresentation
      end

      # @private
      class UpdateAvailabilityResponseRepresentation < Google::Apis::Core::JsonRepresentation
        collection :availabilities, as: 'availabilities', class: Google::Apis::DoubleclicksearchV2::Availability, decorator: Google::Apis::DoubleclicksearchV2::AvailabilityRepresentation
      end
    end
  end
end
