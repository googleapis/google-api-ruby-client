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
    module AdsenseV1_4
      class AccountRepresentation < Google::Apis::Core::JsonRepresentation; end
      class AccountsRepresentation < Google::Apis::Core::JsonRepresentation; end
      class AdClientRepresentation < Google::Apis::Core::JsonRepresentation; end
      class AdClientsRepresentation < Google::Apis::Core::JsonRepresentation; end
      class AdCodeRepresentation < Google::Apis::Core::JsonRepresentation; end
      class AdStyleRepresentation < Google::Apis::Core::JsonRepresentation; end
      class AdUnitRepresentation < Google::Apis::Core::JsonRepresentation; end
      class AdUnitsRepresentation < Google::Apis::Core::JsonRepresentation; end
      class ReportsGenerateResponseRepresentation < Google::Apis::Core::JsonRepresentation; end
      class AlertRepresentation < Google::Apis::Core::JsonRepresentation; end
      class AlertsRepresentation < Google::Apis::Core::JsonRepresentation; end
      class CustomChannelRepresentation < Google::Apis::Core::JsonRepresentation; end
      class CustomChannelsRepresentation < Google::Apis::Core::JsonRepresentation; end
      class MetadataRepresentation < Google::Apis::Core::JsonRepresentation; end
      class PaymentRepresentation < Google::Apis::Core::JsonRepresentation; end
      class PaymentsRepresentation < Google::Apis::Core::JsonRepresentation; end
      class ReportingMetadataEntryRepresentation < Google::Apis::Core::JsonRepresentation; end
      class SavedAdStyleRepresentation < Google::Apis::Core::JsonRepresentation; end
      class SavedAdStylesRepresentation < Google::Apis::Core::JsonRepresentation; end
      class SavedReportRepresentation < Google::Apis::Core::JsonRepresentation; end
      class SavedReportsRepresentation < Google::Apis::Core::JsonRepresentation; end
      class UrlChannelRepresentation < Google::Apis::Core::JsonRepresentation; end
      class UrlChannelsRepresentation < Google::Apis::Core::JsonRepresentation; end

      # @private
      class AccountRepresentation < Google::Apis::Core::JsonRepresentation
        property :id, as: 'id'
        property :kind, as: 'kind'
        property :name, as: 'name'
        property :premium, as: 'premium'
        collection :sub_accounts, as: 'subAccounts', class: Google::Apis::AdsenseV1_4::Account, decorator: Google::Apis::AdsenseV1_4::AccountRepresentation
        
        
        property :timezone, as: 'timezone'
      end

      # @private
      class AccountsRepresentation < Google::Apis::Core::JsonRepresentation
        property :etag, as: 'etag'
        collection :items, as: 'items', class: Google::Apis::AdsenseV1_4::Account, decorator: Google::Apis::AdsenseV1_4::AccountRepresentation
        
        
        property :kind, as: 'kind'
        property :next_page_token, as: 'nextPageToken'
      end

      # @private
      class AdClientRepresentation < Google::Apis::Core::JsonRepresentation
        property :arc_opt_in, as: 'arcOptIn'
        property :arc_review_mode, as: 'arcReviewMode'
        property :id, as: 'id'
        property :kind, as: 'kind'
        property :product_code, as: 'productCode'
        property :supports_reporting, as: 'supportsReporting'
      end

      # @private
      class AdClientsRepresentation < Google::Apis::Core::JsonRepresentation
        property :etag, as: 'etag'
        collection :items, as: 'items', class: Google::Apis::AdsenseV1_4::AdClient, decorator: Google::Apis::AdsenseV1_4::AdClientRepresentation
        
        
        property :kind, as: 'kind'
        property :next_page_token, as: 'nextPageToken'
      end

      # @private
      class AdCodeRepresentation < Google::Apis::Core::JsonRepresentation
        property :ad_code, as: 'adCode'
        property :kind, as: 'kind'
      end

      # @private
      class AdStyleRepresentation < Google::Apis::Core::JsonRepresentation
        property :colors, as: 'colors', class: Google::Apis::AdsenseV1_4::AdStyle::Colors do
          property :background, as: 'background'
          property :border, as: 'border'
          property :text, as: 'text'
          property :title, as: 'title'
          property :url, as: 'url'
        end
        
        property :corners, as: 'corners'
        property :font, as: 'font', class: Google::Apis::AdsenseV1_4::AdStyle::Font do
          property :family, as: 'family'
          property :size, as: 'size'
        end
        
        property :kind, as: 'kind'
      end

      # @private
      class AdUnitRepresentation < Google::Apis::Core::JsonRepresentation
        property :code, as: 'code'
        property :content_ads_settings, as: 'contentAdsSettings', class: Google::Apis::AdsenseV1_4::AdUnit::ContentAdsSettings do
          property :backup_option, as: 'backupOption', class: Google::Apis::AdsenseV1_4::AdUnit::ContentAdsSettings::BackupOption do
            property :color, as: 'color'
            property :type, as: 'type'
            property :url, as: 'url'
          end
          
          property :size, as: 'size'
          property :type, as: 'type'
        end
        
        property :custom_style, as: 'customStyle', class: Google::Apis::AdsenseV1_4::AdStyle, decorator: Google::Apis::AdsenseV1_4::AdStyleRepresentation
        
        property :feed_ads_settings, as: 'feedAdsSettings', class: Google::Apis::AdsenseV1_4::AdUnit::FeedAdsSettings do
          property :ad_position, as: 'adPosition'
          property :frequency, as: 'frequency'
          property :minimum_word_count, as: 'minimumWordCount'
          property :type, as: 'type'
        end
        
        property :id, as: 'id'
        property :kind, as: 'kind'
        property :mobile_content_ads_settings, as: 'mobileContentAdsSettings', class: Google::Apis::AdsenseV1_4::AdUnit::MobileContentAdsSettings do
          property :markup_language, as: 'markupLanguage'
          property :scripting_language, as: 'scriptingLanguage'
          property :size, as: 'size'
          property :type, as: 'type'
        end
        
        property :name, as: 'name'
        property :saved_style_id, as: 'savedStyleId'
        property :status, as: 'status'
      end

      # @private
      class AdUnitsRepresentation < Google::Apis::Core::JsonRepresentation
        property :etag, as: 'etag'
        collection :items, as: 'items', class: Google::Apis::AdsenseV1_4::AdUnit, decorator: Google::Apis::AdsenseV1_4::AdUnitRepresentation
        
        
        property :kind, as: 'kind'
        property :next_page_token, as: 'nextPageToken'
      end

      # @private
      class ReportsGenerateResponseRepresentation < Google::Apis::Core::JsonRepresentation
        collection :averages, as: 'averages'
        
        property :end_date, as: 'endDate'
        collection :headers, as: 'headers', class: Google::Apis::AdsenseV1_4::ReportsGenerateResponse::Header do
          property :currency, as: 'currency'
          property :name, as: 'name'
          property :type, as: 'type'
        end
        
        
        property :kind, as: 'kind'
        collection :rows, as: 'rows', :class => Array do
          include Representable::JSON::Collection
          items
        end
        
        
        property :start_date, as: 'startDate'
        property :total_matched_rows, as: 'totalMatchedRows'
        collection :totals, as: 'totals'
        
        collection :warnings, as: 'warnings'
      end

      # @private
      class AlertRepresentation < Google::Apis::Core::JsonRepresentation
        property :id, as: 'id'
        property :is_dismissible, as: 'isDismissible'
        property :kind, as: 'kind'
        property :message, as: 'message'
        property :severity, as: 'severity'
        property :type, as: 'type'
      end

      # @private
      class AlertsRepresentation < Google::Apis::Core::JsonRepresentation
        collection :items, as: 'items', class: Google::Apis::AdsenseV1_4::Alert, decorator: Google::Apis::AdsenseV1_4::AlertRepresentation
        
        
        property :kind, as: 'kind'
      end

      # @private
      class CustomChannelRepresentation < Google::Apis::Core::JsonRepresentation
        property :code, as: 'code'
        property :id, as: 'id'
        property :kind, as: 'kind'
        property :name, as: 'name'
        property :targeting_info, as: 'targetingInfo', class: Google::Apis::AdsenseV1_4::CustomChannel::TargetingInfo do
          property :ads_appear_on, as: 'adsAppearOn'
          property :description, as: 'description'
          property :location, as: 'location'
          property :site_language, as: 'siteLanguage'
        end
      end

      # @private
      class CustomChannelsRepresentation < Google::Apis::Core::JsonRepresentation
        property :etag, as: 'etag'
        collection :items, as: 'items', class: Google::Apis::AdsenseV1_4::CustomChannel, decorator: Google::Apis::AdsenseV1_4::CustomChannelRepresentation
        
        
        property :kind, as: 'kind'
        property :next_page_token, as: 'nextPageToken'
      end

      # @private
      class MetadataRepresentation < Google::Apis::Core::JsonRepresentation
        collection :items, as: 'items', class: Google::Apis::AdsenseV1_4::ReportingMetadataEntry, decorator: Google::Apis::AdsenseV1_4::ReportingMetadataEntryRepresentation
        
        
        property :kind, as: 'kind'
      end

      # @private
      class PaymentRepresentation < Google::Apis::Core::JsonRepresentation
        property :id, as: 'id'
        property :kind, as: 'kind'
        property :payment_amount, as: 'paymentAmount'
        property :payment_amount_currency_code, as: 'paymentAmountCurrencyCode'
        property :payment_date, as: 'paymentDate'
      end

      # @private
      class PaymentsRepresentation < Google::Apis::Core::JsonRepresentation
        collection :items, as: 'items', class: Google::Apis::AdsenseV1_4::Payment, decorator: Google::Apis::AdsenseV1_4::PaymentRepresentation
        
        
        property :kind, as: 'kind'
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
      class SavedAdStyleRepresentation < Google::Apis::Core::JsonRepresentation
        property :ad_style, as: 'adStyle', class: Google::Apis::AdsenseV1_4::AdStyle, decorator: Google::Apis::AdsenseV1_4::AdStyleRepresentation
        
        property :id, as: 'id'
        property :kind, as: 'kind'
        property :name, as: 'name'
      end

      # @private
      class SavedAdStylesRepresentation < Google::Apis::Core::JsonRepresentation
        property :etag, as: 'etag'
        collection :items, as: 'items', class: Google::Apis::AdsenseV1_4::SavedAdStyle, decorator: Google::Apis::AdsenseV1_4::SavedAdStyleRepresentation
        
        
        property :kind, as: 'kind'
        property :next_page_token, as: 'nextPageToken'
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
        collection :items, as: 'items', class: Google::Apis::AdsenseV1_4::SavedReport, decorator: Google::Apis::AdsenseV1_4::SavedReportRepresentation
        
        
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
        collection :items, as: 'items', class: Google::Apis::AdsenseV1_4::UrlChannel, decorator: Google::Apis::AdsenseV1_4::UrlChannelRepresentation
        
        
        property :kind, as: 'kind'
        property :next_page_token, as: 'nextPageToken'
      end
    end
  end
end
