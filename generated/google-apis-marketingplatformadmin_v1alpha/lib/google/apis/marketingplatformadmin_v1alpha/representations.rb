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
    module MarketingplatformadminV1alpha
      
      class AnalyticsAccountLink
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Empty
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListAnalyticsAccountLinksResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Organization
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SetPropertyServiceLevelRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SetPropertyServiceLevelResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AnalyticsAccountLink
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :analytics_account, as: 'analyticsAccount'
          property :display_name, as: 'displayName'
          property :link_verification_state, as: 'linkVerificationState'
          property :name, as: 'name'
        end
      end
      
      class Empty
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class ListAnalyticsAccountLinksResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :analytics_account_links, as: 'analyticsAccountLinks', class: Google::Apis::MarketingplatformadminV1alpha::AnalyticsAccountLink, decorator: Google::Apis::MarketingplatformadminV1alpha::AnalyticsAccountLink::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class Organization
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :display_name, as: 'displayName'
          property :name, as: 'name'
        end
      end
      
      class SetPropertyServiceLevelRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :analytics_property, as: 'analyticsProperty'
          property :service_level, as: 'serviceLevel'
        end
      end
      
      class SetPropertyServiceLevelResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
    end
  end
end
