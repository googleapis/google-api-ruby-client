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
    module AdsensehostV4_1
      class AccountRepresentation < Google::Apis::Core::JsonRepresentation; end
      class AccountsRepresentation < Google::Apis::Core::JsonRepresentation; end
      class AdClientRepresentation < Google::Apis::Core::JsonRepresentation; end
      class AdClientsRepresentation < Google::Apis::Core::JsonRepresentation; end
      class AdCodeRepresentation < Google::Apis::Core::JsonRepresentation; end
      class AdStyleRepresentation < Google::Apis::Core::JsonRepresentation; end
      class AdUnitRepresentation < Google::Apis::Core::JsonRepresentation; end
      class AdUnitsRepresentation < Google::Apis::Core::JsonRepresentation; end
      class AssociationSessionRepresentation < Google::Apis::Core::JsonRepresentation; end
      class CustomChannelRepresentation < Google::Apis::Core::JsonRepresentation; end
      class CustomChannelsRepresentation < Google::Apis::Core::JsonRepresentation; end
      class ReportRepresentation < Google::Apis::Core::JsonRepresentation; end
      class UrlChannelRepresentation < Google::Apis::Core::JsonRepresentation; end
      class UrlChannelsRepresentation < Google::Apis::Core::JsonRepresentation; end

      # @private
      class AccountRepresentation < Google::Apis::Core::JsonRepresentation
        property :id, as: 'id'
        property :kind, as: 'kind'
        property :name, as: 'name'
        property :status, as: 'status'
      end

      # @private
      class AccountsRepresentation < Google::Apis::Core::JsonRepresentation
        property :etag, as: 'etag'
        collection :items, as: 'items', class: Google::Apis::AdsensehostV4_1::Account, decorator: Google::Apis::AdsensehostV4_1::AccountRepresentation
        
        
        property :kind, as: 'kind'
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
        collection :items, as: 'items', class: Google::Apis::AdsensehostV4_1::AdClient, decorator: Google::Apis::AdsensehostV4_1::AdClientRepresentation
        
        
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
        property :colors, as: 'colors', class: Google::Apis::AdsensehostV4_1::AdStyle::Colors do
          property :background, as: 'background'
          property :border, as: 'border'
          property :text, as: 'text'
          property :title, as: 'title'
          property :url, as: 'url'
        end
        
        property :corners, as: 'corners'
        property :font, as: 'font', class: Google::Apis::AdsensehostV4_1::AdStyle::Font do
          property :family, as: 'family'
          property :size, as: 'size'
        end
        
        property :kind, as: 'kind'
      end

      # @private
      class AdUnitRepresentation < Google::Apis::Core::JsonRepresentation
        property :code, as: 'code'
        property :content_ads_settings, as: 'contentAdsSettings', class: Google::Apis::AdsensehostV4_1::AdUnit::ContentAdsSettings do
          property :backup_option, as: 'backupOption', class: Google::Apis::AdsensehostV4_1::AdUnit::ContentAdsSettings::BackupOption do
            property :color, as: 'color'
            property :type, as: 'type'
            property :url, as: 'url'
          end
          
          property :size, as: 'size'
          property :type, as: 'type'
        end
        
        property :custom_style, as: 'customStyle', class: Google::Apis::AdsensehostV4_1::AdStyle, decorator: Google::Apis::AdsensehostV4_1::AdStyleRepresentation
        
        property :id, as: 'id'
        property :kind, as: 'kind'
        property :mobile_content_ads_settings, as: 'mobileContentAdsSettings', class: Google::Apis::AdsensehostV4_1::AdUnit::MobileContentAdsSettings do
          property :markup_language, as: 'markupLanguage'
          property :scripting_language, as: 'scriptingLanguage'
          property :size, as: 'size'
          property :type, as: 'type'
        end
        
        property :name, as: 'name'
        property :status, as: 'status'
      end

      # @private
      class AdUnitsRepresentation < Google::Apis::Core::JsonRepresentation
        property :etag, as: 'etag'
        collection :items, as: 'items', class: Google::Apis::AdsensehostV4_1::AdUnit, decorator: Google::Apis::AdsensehostV4_1::AdUnitRepresentation
        
        
        property :kind, as: 'kind'
        property :next_page_token, as: 'nextPageToken'
      end

      # @private
      class AssociationSessionRepresentation < Google::Apis::Core::JsonRepresentation
        property :account_id, as: 'accountId'
        property :id, as: 'id'
        property :kind, as: 'kind'
        collection :product_codes, as: 'productCodes'
        
        property :redirect_url, as: 'redirectUrl'
        property :status, as: 'status'
        property :user_locale, as: 'userLocale'
        property :website_locale, as: 'websiteLocale'
        property :website_url, as: 'websiteUrl'
      end

      # @private
      class CustomChannelRepresentation < Google::Apis::Core::JsonRepresentation
        property :code, as: 'code'
        property :id, as: 'id'
        property :kind, as: 'kind'
        property :name, as: 'name'
      end

      # @private
      class CustomChannelsRepresentation < Google::Apis::Core::JsonRepresentation
        property :etag, as: 'etag'
        collection :items, as: 'items', class: Google::Apis::AdsensehostV4_1::CustomChannel, decorator: Google::Apis::AdsensehostV4_1::CustomChannelRepresentation
        
        
        property :kind, as: 'kind'
        property :next_page_token, as: 'nextPageToken'
      end

      # @private
      class ReportRepresentation < Google::Apis::Core::JsonRepresentation
        collection :averages, as: 'averages'
        
        collection :headers, as: 'headers', class: Google::Apis::AdsensehostV4_1::Report::Header do
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
      class UrlChannelRepresentation < Google::Apis::Core::JsonRepresentation
        property :id, as: 'id'
        property :kind, as: 'kind'
        property :url_pattern, as: 'urlPattern'
      end

      # @private
      class UrlChannelsRepresentation < Google::Apis::Core::JsonRepresentation
        property :etag, as: 'etag'
        collection :items, as: 'items', class: Google::Apis::AdsensehostV4_1::UrlChannel, decorator: Google::Apis::AdsensehostV4_1::UrlChannelRepresentation
        
        
        property :kind, as: 'kind'
        property :next_page_token, as: 'nextPageToken'
      end
    end
  end
end
