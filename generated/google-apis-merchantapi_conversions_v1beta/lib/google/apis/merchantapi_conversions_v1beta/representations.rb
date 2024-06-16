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
    module MerchantapiConversionsV1beta
      
      class AttributionSettings
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ConversionSource
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ConversionType
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Empty
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAnalyticsLink
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListConversionSourcesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class MerchantCenterDestination
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ProductChange
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ProductStatusChangeMessage
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class UndeleteConversionSourceRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AttributionSettings
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :attribution_lookback_window_days, as: 'attributionLookbackWindowDays'
          property :attribution_model, as: 'attributionModel'
          collection :conversion_type, as: 'conversionType', class: Google::Apis::MerchantapiConversionsV1beta::ConversionType, decorator: Google::Apis::MerchantapiConversionsV1beta::ConversionType::Representation
      
        end
      end
      
      class ConversionSource
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :controller, as: 'controller'
          property :expire_time, as: 'expireTime'
          property :google_analytics_link, as: 'googleAnalyticsLink', class: Google::Apis::MerchantapiConversionsV1beta::GoogleAnalyticsLink, decorator: Google::Apis::MerchantapiConversionsV1beta::GoogleAnalyticsLink::Representation
      
          property :merchant_center_destination, as: 'merchantCenterDestination', class: Google::Apis::MerchantapiConversionsV1beta::MerchantCenterDestination, decorator: Google::Apis::MerchantapiConversionsV1beta::MerchantCenterDestination::Representation
      
          property :name, as: 'name'
          property :state, as: 'state'
        end
      end
      
      class ConversionType
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :name, as: 'name'
          property :report, as: 'report'
        end
      end
      
      class Empty
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GoogleAnalyticsLink
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :attribution_settings, as: 'attributionSettings', class: Google::Apis::MerchantapiConversionsV1beta::AttributionSettings, decorator: Google::Apis::MerchantapiConversionsV1beta::AttributionSettings::Representation
      
          property :property, as: 'property'
          property :property_id, :numeric_string => true, as: 'propertyId'
        end
      end
      
      class ListConversionSourcesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :conversion_sources, as: 'conversionSources', class: Google::Apis::MerchantapiConversionsV1beta::ConversionSource, decorator: Google::Apis::MerchantapiConversionsV1beta::ConversionSource::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class MerchantCenterDestination
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :attribution_settings, as: 'attributionSettings', class: Google::Apis::MerchantapiConversionsV1beta::AttributionSettings, decorator: Google::Apis::MerchantapiConversionsV1beta::AttributionSettings::Representation
      
          property :currency_code, as: 'currencyCode'
          property :destination, as: 'destination'
          property :display_name, as: 'displayName'
        end
      end
      
      class ProductChange
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :new_value, as: 'newValue'
          property :old_value, as: 'oldValue'
          property :region_code, as: 'regionCode'
          property :reporting_context, as: 'reportingContext'
        end
      end
      
      class ProductStatusChangeMessage
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :account, as: 'account'
          property :attribute, as: 'attribute'
          collection :changes, as: 'changes', class: Google::Apis::MerchantapiConversionsV1beta::ProductChange, decorator: Google::Apis::MerchantapiConversionsV1beta::ProductChange::Representation
      
          property :managing_account, as: 'managingAccount'
          property :resource, as: 'resource'
          property :resource_id, as: 'resourceId'
          property :resource_type, as: 'resourceType'
        end
      end
      
      class UndeleteConversionSourceRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
    end
  end
end
