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
      
      class BillInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ClientData
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Date
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Empty
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class FindSalesPartnerManagedClientsRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class FindSalesPartnerManagedClientsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListAnalyticsAccountLinksResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListOrganizationsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Money
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Organization
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class PropertyUsage
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ReportPropertyUsageRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ReportPropertyUsageResponse
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
      
      class BillInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :base_fee, as: 'baseFee', class: Google::Apis::MarketingplatformadminV1alpha::Money, decorator: Google::Apis::MarketingplatformadminV1alpha::Money::Representation
      
          property :event_fee, as: 'eventFee', class: Google::Apis::MarketingplatformadminV1alpha::Money, decorator: Google::Apis::MarketingplatformadminV1alpha::Money::Representation
      
          property :price_protection_credit, as: 'priceProtectionCredit', class: Google::Apis::MarketingplatformadminV1alpha::Money, decorator: Google::Apis::MarketingplatformadminV1alpha::Money::Representation
      
          property :total, as: 'total', class: Google::Apis::MarketingplatformadminV1alpha::Money, decorator: Google::Apis::MarketingplatformadminV1alpha::Money::Representation
      
        end
      end
      
      class ClientData
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :end_date, as: 'endDate', class: Google::Apis::MarketingplatformadminV1alpha::Date, decorator: Google::Apis::MarketingplatformadminV1alpha::Date::Representation
      
          property :organization, as: 'organization', class: Google::Apis::MarketingplatformadminV1alpha::Organization, decorator: Google::Apis::MarketingplatformadminV1alpha::Organization::Representation
      
          property :start_date, as: 'startDate', class: Google::Apis::MarketingplatformadminV1alpha::Date, decorator: Google::Apis::MarketingplatformadminV1alpha::Date::Representation
      
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
      
      class Empty
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class FindSalesPartnerManagedClientsRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :is_active, as: 'isActive'
        end
      end
      
      class FindSalesPartnerManagedClientsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :client_data, as: 'clientData', class: Google::Apis::MarketingplatformadminV1alpha::ClientData, decorator: Google::Apis::MarketingplatformadminV1alpha::ClientData::Representation
      
        end
      end
      
      class ListAnalyticsAccountLinksResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :analytics_account_links, as: 'analyticsAccountLinks', class: Google::Apis::MarketingplatformadminV1alpha::AnalyticsAccountLink, decorator: Google::Apis::MarketingplatformadminV1alpha::AnalyticsAccountLink::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class ListOrganizationsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :organizations, as: 'organizations', class: Google::Apis::MarketingplatformadminV1alpha::Organization, decorator: Google::Apis::MarketingplatformadminV1alpha::Organization::Representation
      
        end
      end
      
      class Money
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :currency_code, as: 'currencyCode'
          property :nanos, as: 'nanos'
          property :units, :numeric_string => true, as: 'units'
        end
      end
      
      class Organization
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :display_name, as: 'displayName'
          property :name, as: 'name'
        end
      end
      
      class PropertyUsage
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :account_id, :numeric_string => true, as: 'accountId'
          property :billable_event_count, :numeric_string => true, as: 'billableEventCount'
          property :display_name, as: 'displayName'
          property :property, as: 'property'
          property :property_type, as: 'propertyType'
          property :service_level, as: 'serviceLevel'
          property :total_event_count, :numeric_string => true, as: 'totalEventCount'
        end
      end
      
      class ReportPropertyUsageRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :month, as: 'month'
        end
      end
      
      class ReportPropertyUsageResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :bill_info, as: 'billInfo', class: Google::Apis::MarketingplatformadminV1alpha::BillInfo, decorator: Google::Apis::MarketingplatformadminV1alpha::BillInfo::Representation
      
          collection :property_usages, as: 'propertyUsages', class: Google::Apis::MarketingplatformadminV1alpha::PropertyUsage, decorator: Google::Apis::MarketingplatformadminV1alpha::PropertyUsage::Representation
      
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
