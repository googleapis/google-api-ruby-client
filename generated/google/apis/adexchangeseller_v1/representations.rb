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
    module AdexchangesellerV1
      
      class AdClient
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AdClients
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AdUnit
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AdUnits
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CustomChannel
        class Representation < Google::Apis::Core::JsonRepresentation; end
        
        class TargetingInfo
          class Representation < Google::Apis::Core::JsonRepresentation; end
        
          include Google::Apis::Core::JsonObjectSupport
        end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CustomChannels
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Report
        class Representation < Google::Apis::Core::JsonRepresentation; end
        
        class Header
          class Representation < Google::Apis::Core::JsonRepresentation; end
        
          include Google::Apis::Core::JsonObjectSupport
        end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SavedReport
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SavedReports
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class UrlChannel
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class UrlChannels
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AdClient
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :arc_opt_in, as: 'arcOptIn'
          property :id, as: 'id'
          property :kind, as: 'kind'
          property :product_code, as: 'productCode'
          property :supports_reporting, as: 'supportsReporting'
        end
      end
      
      class AdClients
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :etag, as: 'etag'
          collection :items, as: 'items', class: Google::Apis::AdexchangesellerV1::AdClient, decorator: Google::Apis::AdexchangesellerV1::AdClient::Representation
      
          property :kind, as: 'kind'
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class AdUnit
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :code, as: 'code'
          property :id, as: 'id'
          property :kind, as: 'kind'
          property :name, as: 'name'
          property :status, as: 'status'
        end
      end
      
      class AdUnits
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :etag, as: 'etag'
          collection :items, as: 'items', class: Google::Apis::AdexchangesellerV1::AdUnit, decorator: Google::Apis::AdexchangesellerV1::AdUnit::Representation
      
          property :kind, as: 'kind'
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class CustomChannel
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :code, as: 'code'
          property :id, as: 'id'
          property :kind, as: 'kind'
          property :name, as: 'name'
          property :targeting_info, as: 'targetingInfo', class: Google::Apis::AdexchangesellerV1::CustomChannel::TargetingInfo, decorator: Google::Apis::AdexchangesellerV1::CustomChannel::TargetingInfo::Representation
      
        end
        
        class TargetingInfo
          # @private
          class Representation < Google::Apis::Core::JsonRepresentation
            property :ads_appear_on, as: 'adsAppearOn'
            property :description, as: 'description'
            property :location, as: 'location'
            property :site_language, as: 'siteLanguage'
          end
        end
      end
      
      class CustomChannels
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :etag, as: 'etag'
          collection :items, as: 'items', class: Google::Apis::AdexchangesellerV1::CustomChannel, decorator: Google::Apis::AdexchangesellerV1::CustomChannel::Representation
      
          property :kind, as: 'kind'
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class Report
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :averages, as: 'averages'
          collection :headers, as: 'headers', class: Google::Apis::AdexchangesellerV1::Report::Header, decorator: Google::Apis::AdexchangesellerV1::Report::Header::Representation
      
          property :kind, as: 'kind'
          collection :rows, as: 'rows', :class => Array do
        include Representable::JSON::Collection
        items
      end
      
          property :total_matched_rows, :numeric_string => true, as: 'totalMatchedRows'
          collection :totals, as: 'totals'
          collection :warnings, as: 'warnings'
        end
        
        class Header
          # @private
          class Representation < Google::Apis::Core::JsonRepresentation
            property :currency, as: 'currency'
            property :name, as: 'name'
            property :type, as: 'type'
          end
        end
      end
      
      class SavedReport
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :id, as: 'id'
          property :kind, as: 'kind'
          property :name, as: 'name'
        end
      end
      
      class SavedReports
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :etag, as: 'etag'
          collection :items, as: 'items', class: Google::Apis::AdexchangesellerV1::SavedReport, decorator: Google::Apis::AdexchangesellerV1::SavedReport::Representation
      
          property :kind, as: 'kind'
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class UrlChannel
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :id, as: 'id'
          property :kind, as: 'kind'
          property :url_pattern, as: 'urlPattern'
        end
      end
      
      class UrlChannels
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :etag, as: 'etag'
          collection :items, as: 'items', class: Google::Apis::AdexchangesellerV1::UrlChannel, decorator: Google::Apis::AdexchangesellerV1::UrlChannel::Representation
      
          property :kind, as: 'kind'
          property :next_page_token, as: 'nextPageToken'
        end
      end
    end
  end
end
