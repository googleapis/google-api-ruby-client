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
    module AdexchangesellerV2_0
      class AccountRepresentation < Google::Apis::Core::JsonRepresentation; end
      class AccountsRepresentation < Google::Apis::Core::JsonRepresentation; end
      class AdClientRepresentation < Google::Apis::Core::JsonRepresentation; end
      class AdClientsRepresentation < Google::Apis::Core::JsonRepresentation; end
      class AlertRepresentation < Google::Apis::Core::JsonRepresentation; end
      class AlertsRepresentation < Google::Apis::Core::JsonRepresentation; end
      class CustomChannelRepresentation < Google::Apis::Core::JsonRepresentation; end
      class CustomChannelsRepresentation < Google::Apis::Core::JsonRepresentation; end
      class MetadataRepresentation < Google::Apis::Core::JsonRepresentation; end
      class PreferredDealRepresentation < Google::Apis::Core::JsonRepresentation; end
      class PreferredDealsRepresentation < Google::Apis::Core::JsonRepresentation; end
      class ReportRepresentation < Google::Apis::Core::JsonRepresentation; end
      class ReportingMetadataEntryRepresentation < Google::Apis::Core::JsonRepresentation; end
      class SavedReportRepresentation < Google::Apis::Core::JsonRepresentation; end
      class SavedReportsRepresentation < Google::Apis::Core::JsonRepresentation; end
      class UrlChannelRepresentation < Google::Apis::Core::JsonRepresentation; end
      class UrlChannelsRepresentation < Google::Apis::Core::JsonRepresentation; end

      # @private
      class AccountRepresentation < Google::Apis::Core::JsonRepresentation
        property :id, as: 'id'
        property :kind, as: 'kind'
        property :name, as: 'name'
      end

      # @private
      class AccountsRepresentation < Google::Apis::Core::JsonRepresentation
        property :etag, as: 'etag'
        collection :items, as: 'items', class: Google::Apis::AdexchangesellerV2_0::Account, decorator: Google::Apis::AdexchangesellerV2_0::AccountRepresentation
        
        
        property :kind, as: 'kind'
        property :next_page_token, as: 'nextPageToken'
      end

      # @private
      class AdClientRepresentation < Google::Apis::Core::JsonRepresentation
        property :arc_opt_in, as: 'arcOptIn'
        property :id, as: 'id'
        property :kind, as: 'kind'
        property :product_code, as: 'productCode'
        property :supports_reporting, as: 'supportsReporting'
      end

      # @private
      class AdClientsRepresentation < Google::Apis::Core::JsonRepresentation
        property :etag, as: 'etag'
        collection :items, as: 'items', class: Google::Apis::AdexchangesellerV2_0::AdClient, decorator: Google::Apis::AdexchangesellerV2_0::AdClientRepresentation
        
        
        property :kind, as: 'kind'
        property :next_page_token, as: 'nextPageToken'
      end

      # @private
      class AlertRepresentation < Google::Apis::Core::JsonRepresentation
        property :id, as: 'id'
        property :kind, as: 'kind'
        property :message, as: 'message'
        property :severity, as: 'severity'
        property :type, as: 'type'
      end

      # @private
      class AlertsRepresentation < Google::Apis::Core::JsonRepresentation
        collection :items, as: 'items', class: Google::Apis::AdexchangesellerV2_0::Alert, decorator: Google::Apis::AdexchangesellerV2_0::AlertRepresentation
        
        
        property :kind, as: 'kind'
      end

      # @private
      class CustomChannelRepresentation < Google::Apis::Core::JsonRepresentation
        property :code, as: 'code'
        property :id, as: 'id'
        property :kind, as: 'kind'
        property :name, as: 'name'
        property :targeting_info, as: 'targetingInfo', class: Google::Apis::AdexchangesellerV2_0::CustomChannel::TargetingInfo do
          property :ads_appear_on, as: 'adsAppearOn'
          property :description, as: 'description'
          property :location, as: 'location'
          property :site_language, as: 'siteLanguage'
        end
      end

      # @private
      class CustomChannelsRepresentation < Google::Apis::Core::JsonRepresentation
        property :etag, as: 'etag'
        collection :items, as: 'items', class: Google::Apis::AdexchangesellerV2_0::CustomChannel, decorator: Google::Apis::AdexchangesellerV2_0::CustomChannelRepresentation
        
        
        property :kind, as: 'kind'
        property :next_page_token, as: 'nextPageToken'
      end

      # @private
      class MetadataRepresentation < Google::Apis::Core::JsonRepresentation
        collection :items, as: 'items', class: Google::Apis::AdexchangesellerV2_0::ReportingMetadataEntry, decorator: Google::Apis::AdexchangesellerV2_0::ReportingMetadataEntryRepresentation
        
        
        property :kind, as: 'kind'
      end

      # @private
      class PreferredDealRepresentation < Google::Apis::Core::JsonRepresentation
        property :advertiser_name, as: 'advertiserName'
        property :buyer_network_name, as: 'buyerNetworkName'
        property :currency_code, as: 'currencyCode'
        property :end_time, as: 'endTime'
        property :fixed_cpm, as: 'fixedCpm'
        property :id, as: 'id'
        property :kind, as: 'kind'
        property :start_time, as: 'startTime'
      end

      # @private
      class PreferredDealsRepresentation < Google::Apis::Core::JsonRepresentation
        collection :items, as: 'items', class: Google::Apis::AdexchangesellerV2_0::PreferredDeal, decorator: Google::Apis::AdexchangesellerV2_0::PreferredDealRepresentation
        
        
        property :kind, as: 'kind'
      end

      # @private
      class ReportRepresentation < Google::Apis::Core::JsonRepresentation
        collection :averages, as: 'averages'
        
        collection :headers, as: 'headers', class: Google::Apis::AdexchangesellerV2_0::Report::Header do
          property :currency, as: 'currency'
          property :name, as: 'name'
          property :type, as: 'type'
        end
        
        
        property :kind, as: 'kind'
        collection :rows, as: 'rows', :class => Array do
          include Representable::JSON::Collection
          items
        end
        
        
        property :total_matched_rows, as: 'totalMatchedRows'
        collection :totals, as: 'totals'
        
        collection :warnings, as: 'warnings'
      end

      # @private
      class ReportingMetadataEntryRepresentation < Google::Apis::Core::JsonRepresentation
        collection :compatible_dimensions, as: 'compatibleDimensions'
        
        collection :compatible_metrics, as: 'compatibleMetrics'
        
        property :id, as: 'id'
        property :kind, as: 'kind'
        collection :required_dimensions, as: 'requiredDimensions'
        
        collection :required_metrics, as: 'requiredMetrics'
        
        collection :supported_products, as: 'supportedProducts'
      end

      # @private
      class SavedReportRepresentation < Google::Apis::Core::JsonRepresentation
        property :id, as: 'id'
        property :kind, as: 'kind'
        property :name, as: 'name'
      end

      # @private
      class SavedReportsRepresentation < Google::Apis::Core::JsonRepresentation
        property :etag, as: 'etag'
        collection :items, as: 'items', class: Google::Apis::AdexchangesellerV2_0::SavedReport, decorator: Google::Apis::AdexchangesellerV2_0::SavedReportRepresentation
        
        
        property :kind, as: 'kind'
        property :next_page_token, as: 'nextPageToken'
      end

      # @private
      class UrlChannelRepresentation < Google::Apis::Core::JsonRepresentation
        property :id, as: 'id'
        property :kind, as: 'kind'
        property :url_pattern, as: 'urlPattern'
      end

      # @private
      class UrlChannelsRepresentation < Google::Apis::Core::JsonRepresentation
        property :etag, as: 'etag'
        collection :items, as: 'items', class: Google::Apis::AdexchangesellerV2_0::UrlChannel, decorator: Google::Apis::AdexchangesellerV2_0::UrlChannelRepresentation
        
        
        property :kind, as: 'kind'
        property :next_page_token, as: 'nextPageToken'
      end
    end
  end
end
