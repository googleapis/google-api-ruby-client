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
    module AdsenseplatformV1alpha
      
      class Account
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Address
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CloseAccountRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CloseAccountResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Empty
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Event
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class EventInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListAccountsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListSitesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class LookupAccountResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Platform
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class RequestSiteReviewResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Site
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class TimeZone
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Account
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :creation_request_id, as: 'creationRequestId'
          property :display_name, as: 'displayName'
          property :name, as: 'name'
          property :region_code, as: 'regionCode'
          property :state, as: 'state'
          property :time_zone, as: 'timeZone', class: Google::Apis::AdsenseplatformV1alpha::TimeZone, decorator: Google::Apis::AdsenseplatformV1alpha::TimeZone::Representation
      
        end
      end
      
      class Address
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :address1, as: 'address1'
          property :address2, as: 'address2'
          property :city, as: 'city'
          property :company, as: 'company'
          property :contact, as: 'contact'
          property :fax, as: 'fax'
          property :phone, as: 'phone'
          property :region_code, as: 'regionCode'
          property :state, as: 'state'
          property :zip, as: 'zip'
        end
      end
      
      class CloseAccountRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class CloseAccountResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class Empty
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class Event
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :event_info, as: 'eventInfo', class: Google::Apis::AdsenseplatformV1alpha::EventInfo, decorator: Google::Apis::AdsenseplatformV1alpha::EventInfo::Representation
      
          property :event_time, as: 'eventTime'
          property :event_type, as: 'eventType'
        end
      end
      
      class EventInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :billing_address, as: 'billingAddress', class: Google::Apis::AdsenseplatformV1alpha::Address, decorator: Google::Apis::AdsenseplatformV1alpha::Address::Representation
      
          property :email, as: 'email'
        end
      end
      
      class ListAccountsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :accounts, as: 'accounts', class: Google::Apis::AdsenseplatformV1alpha::Account, decorator: Google::Apis::AdsenseplatformV1alpha::Account::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class ListSitesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :sites, as: 'sites', class: Google::Apis::AdsenseplatformV1alpha::Site, decorator: Google::Apis::AdsenseplatformV1alpha::Site::Representation
      
        end
      end
      
      class LookupAccountResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :name, as: 'name'
        end
      end
      
      class Platform
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :default_platform_group, as: 'defaultPlatformGroup'
          property :description, as: 'description'
          property :name, as: 'name'
        end
      end
      
      class RequestSiteReviewResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class Site
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :domain, as: 'domain'
          property :name, as: 'name'
          property :state, as: 'state'
        end
      end
      
      class TimeZone
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :id, as: 'id'
          property :version, as: 'version'
        end
      end
    end
  end
end
