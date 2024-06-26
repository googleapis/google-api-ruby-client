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
    module MerchantapiAccountsV1beta
      
      class AcceptTermsOfService
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Accepted
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Account
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AccountIssue
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AccountTax
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AddAccountService
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Address
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class BusinessDayConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class BusinessIdentity
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class BusinessInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CarrierRate
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ClaimHomepageRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CreateAndConfigureAccountRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CreateUserRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CustomerService
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CutoffConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CutoffTime
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Date
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DeliveryTime
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DisableProgramRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Distance
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class EmailPreferences
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Empty
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class EnableProgramRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GeoTargetArea
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Headers
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Homepage
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class IdentityAttribute
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Impact
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ImpactedDestination
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Interval
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListAccountIssuesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListAccountTaxResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListAccountsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListOnlineReturnPoliciesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListProgramsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListRegionsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListSubAccountsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListUsersResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class LocalCutoffTime
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class LocationIdSet
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class LoyaltyProgram
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class LoyaltyProgramTiers
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class MinimumOrderValueTable
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class OnlineReturnPolicy
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class PhoneNumber
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Policy
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class PostalAddress
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class PostalCodeArea
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class PostalCodeRange
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Price
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
      
      class Program
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class RateGroup
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Region
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Required
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Requirement
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class RestockingFee
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ReturnShippingFee
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Row
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Service
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ShippingSettings
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ShortCode
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class StoreCodeSetWithMov
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class StoreConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Table
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class TaxPostalCodeRange
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class TaxRule
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class TermsOfService
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class TermsOfServiceAgreementState
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class TimeZone
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class TransitTable
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class TransitTimeRow
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class TransitTimeValue
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class UnclaimHomepageRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class User
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Value
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Warehouse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class WarehouseBasedDeliveryTime
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class WarehouseCutoffTime
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Weight
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AcceptTermsOfService
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :name, as: 'name'
          property :region_code, as: 'regionCode'
        end
      end
      
      class Accepted
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :accepted_by, as: 'acceptedBy'
          property :terms_of_service, as: 'termsOfService'
          property :valid_until, as: 'validUntil', class: Google::Apis::MerchantapiAccountsV1beta::Date, decorator: Google::Apis::MerchantapiAccountsV1beta::Date::Representation
      
        end
      end
      
      class Account
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :account_id, :numeric_string => true, as: 'accountId'
          property :account_name, as: 'accountName'
          property :adult_content, as: 'adultContent'
          property :language_code, as: 'languageCode'
          property :name, as: 'name'
          property :test_account, as: 'testAccount'
          property :time_zone, as: 'timeZone', class: Google::Apis::MerchantapiAccountsV1beta::TimeZone, decorator: Google::Apis::MerchantapiAccountsV1beta::TimeZone::Representation
      
        end
      end
      
      class AccountIssue
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :detail, as: 'detail'
          property :documentation_uri, as: 'documentationUri'
          collection :impacted_destinations, as: 'impactedDestinations', class: Google::Apis::MerchantapiAccountsV1beta::ImpactedDestination, decorator: Google::Apis::MerchantapiAccountsV1beta::ImpactedDestination::Representation
      
          property :name, as: 'name'
          property :severity, as: 'severity'
          property :title, as: 'title'
        end
      end
      
      class AccountTax
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :account, :numeric_string => true, as: 'account'
          property :name, as: 'name'
          collection :tax_rules, as: 'taxRules', class: Google::Apis::MerchantapiAccountsV1beta::TaxRule, decorator: Google::Apis::MerchantapiAccountsV1beta::TaxRule::Representation
      
        end
      end
      
      class AddAccountService
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :account_aggregation, as: 'accountAggregation', class: Google::Apis::MerchantapiAccountsV1beta::Empty, decorator: Google::Apis::MerchantapiAccountsV1beta::Empty::Representation
      
          property :provider, as: 'provider'
        end
      end
      
      class Address
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :administrative_area, as: 'administrativeArea'
          property :city, as: 'city'
          property :postal_code, as: 'postalCode'
          property :region_code, as: 'regionCode'
          property :street_address, as: 'streetAddress'
        end
      end
      
      class BusinessDayConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :business_days, as: 'businessDays'
        end
      end
      
      class BusinessIdentity
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :black_owned, as: 'blackOwned', class: Google::Apis::MerchantapiAccountsV1beta::IdentityAttribute, decorator: Google::Apis::MerchantapiAccountsV1beta::IdentityAttribute::Representation
      
          property :latino_owned, as: 'latinoOwned', class: Google::Apis::MerchantapiAccountsV1beta::IdentityAttribute, decorator: Google::Apis::MerchantapiAccountsV1beta::IdentityAttribute::Representation
      
          property :name, as: 'name'
          property :promotions_consent, as: 'promotionsConsent'
          property :small_business, as: 'smallBusiness', class: Google::Apis::MerchantapiAccountsV1beta::IdentityAttribute, decorator: Google::Apis::MerchantapiAccountsV1beta::IdentityAttribute::Representation
      
          property :veteran_owned, as: 'veteranOwned', class: Google::Apis::MerchantapiAccountsV1beta::IdentityAttribute, decorator: Google::Apis::MerchantapiAccountsV1beta::IdentityAttribute::Representation
      
          property :women_owned, as: 'womenOwned', class: Google::Apis::MerchantapiAccountsV1beta::IdentityAttribute, decorator: Google::Apis::MerchantapiAccountsV1beta::IdentityAttribute::Representation
      
        end
      end
      
      class BusinessInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :address, as: 'address', class: Google::Apis::MerchantapiAccountsV1beta::PostalAddress, decorator: Google::Apis::MerchantapiAccountsV1beta::PostalAddress::Representation
      
          property :customer_service, as: 'customerService', class: Google::Apis::MerchantapiAccountsV1beta::CustomerService, decorator: Google::Apis::MerchantapiAccountsV1beta::CustomerService::Representation
      
          property :name, as: 'name'
          property :phone, as: 'phone', class: Google::Apis::MerchantapiAccountsV1beta::PhoneNumber, decorator: Google::Apis::MerchantapiAccountsV1beta::PhoneNumber::Representation
      
          property :phone_verification_state, as: 'phoneVerificationState'
        end
      end
      
      class CarrierRate
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :carrier, as: 'carrier'
          property :carrier_service, as: 'carrierService'
          property :flat_adjustment, as: 'flatAdjustment', class: Google::Apis::MerchantapiAccountsV1beta::Price, decorator: Google::Apis::MerchantapiAccountsV1beta::Price::Representation
      
          property :name, as: 'name'
          property :origin_postal_code, as: 'originPostalCode'
          property :percentage_adjustment, as: 'percentageAdjustment'
        end
      end
      
      class ClaimHomepageRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class CreateAndConfigureAccountRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :accept_terms_of_service, as: 'acceptTermsOfService', class: Google::Apis::MerchantapiAccountsV1beta::AcceptTermsOfService, decorator: Google::Apis::MerchantapiAccountsV1beta::AcceptTermsOfService::Representation
      
          property :account, as: 'account', class: Google::Apis::MerchantapiAccountsV1beta::Account, decorator: Google::Apis::MerchantapiAccountsV1beta::Account::Representation
      
          collection :service, as: 'service', class: Google::Apis::MerchantapiAccountsV1beta::AddAccountService, decorator: Google::Apis::MerchantapiAccountsV1beta::AddAccountService::Representation
      
          collection :users, as: 'users', class: Google::Apis::MerchantapiAccountsV1beta::CreateUserRequest, decorator: Google::Apis::MerchantapiAccountsV1beta::CreateUserRequest::Representation
      
        end
      end
      
      class CreateUserRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :parent, as: 'parent'
          property :user, as: 'user', class: Google::Apis::MerchantapiAccountsV1beta::User, decorator: Google::Apis::MerchantapiAccountsV1beta::User::Representation
      
          property :user_id, as: 'userId'
        end
      end
      
      class CustomerService
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :email, as: 'email'
          property :phone, as: 'phone', class: Google::Apis::MerchantapiAccountsV1beta::PhoneNumber, decorator: Google::Apis::MerchantapiAccountsV1beta::PhoneNumber::Representation
      
          property :uri, as: 'uri'
        end
      end
      
      class CutoffConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :local_cutoff_time, as: 'localCutoffTime', class: Google::Apis::MerchantapiAccountsV1beta::LocalCutoffTime, decorator: Google::Apis::MerchantapiAccountsV1beta::LocalCutoffTime::Representation
      
          property :no_delivery_post_cutoff, as: 'noDeliveryPostCutoff'
          property :store_close_offset_hours, :numeric_string => true, as: 'storeCloseOffsetHours'
        end
      end
      
      class CutoffTime
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :hour, as: 'hour'
          property :minute, as: 'minute'
          property :time_zone, as: 'timeZone'
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
      
      class DeliveryTime
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :cutoff_time, as: 'cutoffTime', class: Google::Apis::MerchantapiAccountsV1beta::CutoffTime, decorator: Google::Apis::MerchantapiAccountsV1beta::CutoffTime::Representation
      
          property :handling_business_day_config, as: 'handlingBusinessDayConfig', class: Google::Apis::MerchantapiAccountsV1beta::BusinessDayConfig, decorator: Google::Apis::MerchantapiAccountsV1beta::BusinessDayConfig::Representation
      
          property :max_handling_days, as: 'maxHandlingDays'
          property :max_transit_days, as: 'maxTransitDays'
          property :min_handling_days, as: 'minHandlingDays'
          property :min_transit_days, as: 'minTransitDays'
          property :transit_business_day_config, as: 'transitBusinessDayConfig', class: Google::Apis::MerchantapiAccountsV1beta::BusinessDayConfig, decorator: Google::Apis::MerchantapiAccountsV1beta::BusinessDayConfig::Representation
      
          property :transit_time_table, as: 'transitTimeTable', class: Google::Apis::MerchantapiAccountsV1beta::TransitTable, decorator: Google::Apis::MerchantapiAccountsV1beta::TransitTable::Representation
      
          collection :warehouse_based_delivery_times, as: 'warehouseBasedDeliveryTimes', class: Google::Apis::MerchantapiAccountsV1beta::WarehouseBasedDeliveryTime, decorator: Google::Apis::MerchantapiAccountsV1beta::WarehouseBasedDeliveryTime::Representation
      
        end
      end
      
      class DisableProgramRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class Distance
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :unit, as: 'unit'
          property :value, :numeric_string => true, as: 'value'
        end
      end
      
      class EmailPreferences
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :name, as: 'name'
          property :news_and_tips, as: 'newsAndTips'
        end
      end
      
      class Empty
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class EnableProgramRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GeoTargetArea
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :geotarget_criteria_ids, as: 'geotargetCriteriaIds'
        end
      end
      
      class Headers
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :locations, as: 'locations', class: Google::Apis::MerchantapiAccountsV1beta::LocationIdSet, decorator: Google::Apis::MerchantapiAccountsV1beta::LocationIdSet::Representation
      
          collection :number_of_items, as: 'numberOfItems'
          collection :postal_code_group_names, as: 'postalCodeGroupNames'
          collection :prices, as: 'prices', class: Google::Apis::MerchantapiAccountsV1beta::Price, decorator: Google::Apis::MerchantapiAccountsV1beta::Price::Representation
      
          collection :weights, as: 'weights', class: Google::Apis::MerchantapiAccountsV1beta::Weight, decorator: Google::Apis::MerchantapiAccountsV1beta::Weight::Representation
      
        end
      end
      
      class Homepage
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :claimed, as: 'claimed'
          property :name, as: 'name'
          property :uri, as: 'uri'
        end
      end
      
      class IdentityAttribute
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :identity_declaration, as: 'identityDeclaration'
        end
      end
      
      class Impact
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :region_code, as: 'regionCode'
          property :severity, as: 'severity'
        end
      end
      
      class ImpactedDestination
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :impacts, as: 'impacts', class: Google::Apis::MerchantapiAccountsV1beta::Impact, decorator: Google::Apis::MerchantapiAccountsV1beta::Impact::Representation
      
          property :reporting_context, as: 'reportingContext'
        end
      end
      
      class Interval
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :end_time, as: 'endTime'
          property :start_time, as: 'startTime'
        end
      end
      
      class ListAccountIssuesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :account_issues, as: 'accountIssues', class: Google::Apis::MerchantapiAccountsV1beta::AccountIssue, decorator: Google::Apis::MerchantapiAccountsV1beta::AccountIssue::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class ListAccountTaxResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :account_taxes, as: 'accountTaxes', class: Google::Apis::MerchantapiAccountsV1beta::AccountTax, decorator: Google::Apis::MerchantapiAccountsV1beta::AccountTax::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class ListAccountsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :accounts, as: 'accounts', class: Google::Apis::MerchantapiAccountsV1beta::Account, decorator: Google::Apis::MerchantapiAccountsV1beta::Account::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class ListOnlineReturnPoliciesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :online_return_policies, as: 'onlineReturnPolicies', class: Google::Apis::MerchantapiAccountsV1beta::OnlineReturnPolicy, decorator: Google::Apis::MerchantapiAccountsV1beta::OnlineReturnPolicy::Representation
      
        end
      end
      
      class ListProgramsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :programs, as: 'programs', class: Google::Apis::MerchantapiAccountsV1beta::Program, decorator: Google::Apis::MerchantapiAccountsV1beta::Program::Representation
      
        end
      end
      
      class ListRegionsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :regions, as: 'regions', class: Google::Apis::MerchantapiAccountsV1beta::Region, decorator: Google::Apis::MerchantapiAccountsV1beta::Region::Representation
      
        end
      end
      
      class ListSubAccountsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :accounts, as: 'accounts', class: Google::Apis::MerchantapiAccountsV1beta::Account, decorator: Google::Apis::MerchantapiAccountsV1beta::Account::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class ListUsersResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :users, as: 'users', class: Google::Apis::MerchantapiAccountsV1beta::User, decorator: Google::Apis::MerchantapiAccountsV1beta::User::Representation
      
        end
      end
      
      class LocalCutoffTime
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :hour, :numeric_string => true, as: 'hour'
          property :minute, :numeric_string => true, as: 'minute'
        end
      end
      
      class LocationIdSet
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :location_ids, as: 'locationIds'
        end
      end
      
      class LoyaltyProgram
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :loyalty_program_tiers, as: 'loyaltyProgramTiers', class: Google::Apis::MerchantapiAccountsV1beta::LoyaltyProgramTiers, decorator: Google::Apis::MerchantapiAccountsV1beta::LoyaltyProgramTiers::Representation
      
          property :program_label, as: 'programLabel'
        end
      end
      
      class LoyaltyProgramTiers
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :tier_label, as: 'tierLabel'
        end
      end
      
      class MinimumOrderValueTable
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :store_code_set_with_movs, as: 'storeCodeSetWithMovs', class: Google::Apis::MerchantapiAccountsV1beta::StoreCodeSetWithMov, decorator: Google::Apis::MerchantapiAccountsV1beta::StoreCodeSetWithMov::Representation
      
        end
      end
      
      class OnlineReturnPolicy
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :accept_defective_only, as: 'acceptDefectiveOnly'
          property :accept_exchange, as: 'acceptExchange'
          collection :countries, as: 'countries'
          collection :item_conditions, as: 'itemConditions'
          property :label, as: 'label'
          property :name, as: 'name'
          property :policy, as: 'policy', class: Google::Apis::MerchantapiAccountsV1beta::Policy, decorator: Google::Apis::MerchantapiAccountsV1beta::Policy::Representation
      
          property :process_refund_days, as: 'processRefundDays'
          property :restocking_fee, as: 'restockingFee', class: Google::Apis::MerchantapiAccountsV1beta::RestockingFee, decorator: Google::Apis::MerchantapiAccountsV1beta::RestockingFee::Representation
      
          collection :return_methods, as: 'returnMethods'
          property :return_policy_id, as: 'returnPolicyId'
          property :return_policy_uri, as: 'returnPolicyUri'
          property :return_shipping_fee, as: 'returnShippingFee', class: Google::Apis::MerchantapiAccountsV1beta::ReturnShippingFee, decorator: Google::Apis::MerchantapiAccountsV1beta::ReturnShippingFee::Representation
      
        end
      end
      
      class PhoneNumber
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :e164_number, as: 'e164Number'
          property :extension, as: 'extension'
          property :short_code, as: 'shortCode', class: Google::Apis::MerchantapiAccountsV1beta::ShortCode, decorator: Google::Apis::MerchantapiAccountsV1beta::ShortCode::Representation
      
        end
      end
      
      class Policy
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :days, :numeric_string => true, as: 'days'
          property :type, as: 'type'
        end
      end
      
      class PostalAddress
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :address_lines, as: 'addressLines'
          property :administrative_area, as: 'administrativeArea'
          property :language_code, as: 'languageCode'
          property :locality, as: 'locality'
          property :organization, as: 'organization'
          property :postal_code, as: 'postalCode'
          collection :recipients, as: 'recipients'
          property :region_code, as: 'regionCode'
          property :revision, as: 'revision'
          property :sorting_code, as: 'sortingCode'
          property :sublocality, as: 'sublocality'
        end
      end
      
      class PostalCodeArea
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :postal_codes, as: 'postalCodes', class: Google::Apis::MerchantapiAccountsV1beta::PostalCodeRange, decorator: Google::Apis::MerchantapiAccountsV1beta::PostalCodeRange::Representation
      
          property :region_code, as: 'regionCode'
        end
      end
      
      class PostalCodeRange
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :begin, as: 'begin'
          property :end, as: 'end'
        end
      end
      
      class Price
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :amount_micros, :numeric_string => true, as: 'amountMicros'
          property :currency_code, as: 'currencyCode'
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
          collection :changes, as: 'changes', class: Google::Apis::MerchantapiAccountsV1beta::ProductChange, decorator: Google::Apis::MerchantapiAccountsV1beta::ProductChange::Representation
      
          property :managing_account, as: 'managingAccount'
          property :resource, as: 'resource'
          property :resource_id, as: 'resourceId'
          property :resource_type, as: 'resourceType'
        end
      end
      
      class Program
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :active_region_codes, as: 'activeRegionCodes'
          property :documentation_uri, as: 'documentationUri'
          property :name, as: 'name'
          property :state, as: 'state'
          collection :unmet_requirements, as: 'unmetRequirements', class: Google::Apis::MerchantapiAccountsV1beta::Requirement, decorator: Google::Apis::MerchantapiAccountsV1beta::Requirement::Representation
      
        end
      end
      
      class RateGroup
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :applicable_shipping_labels, as: 'applicableShippingLabels'
          collection :carrier_rates, as: 'carrierRates', class: Google::Apis::MerchantapiAccountsV1beta::CarrierRate, decorator: Google::Apis::MerchantapiAccountsV1beta::CarrierRate::Representation
      
          property :main_table, as: 'mainTable', class: Google::Apis::MerchantapiAccountsV1beta::Table, decorator: Google::Apis::MerchantapiAccountsV1beta::Table::Representation
      
          property :name, as: 'name'
          property :single_value, as: 'singleValue', class: Google::Apis::MerchantapiAccountsV1beta::Value, decorator: Google::Apis::MerchantapiAccountsV1beta::Value::Representation
      
          collection :subtables, as: 'subtables', class: Google::Apis::MerchantapiAccountsV1beta::Table, decorator: Google::Apis::MerchantapiAccountsV1beta::Table::Representation
      
        end
      end
      
      class Region
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :display_name, as: 'displayName'
          property :geotarget_area, as: 'geotargetArea', class: Google::Apis::MerchantapiAccountsV1beta::GeoTargetArea, decorator: Google::Apis::MerchantapiAccountsV1beta::GeoTargetArea::Representation
      
          property :name, as: 'name'
          property :postal_code_area, as: 'postalCodeArea', class: Google::Apis::MerchantapiAccountsV1beta::PostalCodeArea, decorator: Google::Apis::MerchantapiAccountsV1beta::PostalCodeArea::Representation
      
          property :regional_inventory_eligible, as: 'regionalInventoryEligible'
          property :shipping_eligible, as: 'shippingEligible'
        end
      end
      
      class Required
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :terms_of_service, as: 'termsOfService'
          property :tos_file_uri, as: 'tosFileUri'
        end
      end
      
      class Requirement
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :affected_region_codes, as: 'affectedRegionCodes'
          property :documentation_uri, as: 'documentationUri'
          property :title, as: 'title'
        end
      end
      
      class RestockingFee
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :fixed_fee, as: 'fixedFee', class: Google::Apis::MerchantapiAccountsV1beta::Price, decorator: Google::Apis::MerchantapiAccountsV1beta::Price::Representation
      
          property :micro_percent, as: 'microPercent'
        end
      end
      
      class ReturnShippingFee
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :fixed_fee, as: 'fixedFee', class: Google::Apis::MerchantapiAccountsV1beta::Price, decorator: Google::Apis::MerchantapiAccountsV1beta::Price::Representation
      
          property :type, as: 'type'
        end
      end
      
      class Row
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :cells, as: 'cells', class: Google::Apis::MerchantapiAccountsV1beta::Value, decorator: Google::Apis::MerchantapiAccountsV1beta::Value::Representation
      
        end
      end
      
      class Service
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :active, as: 'active'
          property :currency_code, as: 'currencyCode'
          collection :delivery_countries, as: 'deliveryCountries'
          property :delivery_time, as: 'deliveryTime', class: Google::Apis::MerchantapiAccountsV1beta::DeliveryTime, decorator: Google::Apis::MerchantapiAccountsV1beta::DeliveryTime::Representation
      
          collection :loyalty_programs, as: 'loyaltyPrograms', class: Google::Apis::MerchantapiAccountsV1beta::LoyaltyProgram, decorator: Google::Apis::MerchantapiAccountsV1beta::LoyaltyProgram::Representation
      
          property :minimum_order_value, as: 'minimumOrderValue', class: Google::Apis::MerchantapiAccountsV1beta::Price, decorator: Google::Apis::MerchantapiAccountsV1beta::Price::Representation
      
          property :minimum_order_value_table, as: 'minimumOrderValueTable', class: Google::Apis::MerchantapiAccountsV1beta::MinimumOrderValueTable, decorator: Google::Apis::MerchantapiAccountsV1beta::MinimumOrderValueTable::Representation
      
          collection :rate_groups, as: 'rateGroups', class: Google::Apis::MerchantapiAccountsV1beta::RateGroup, decorator: Google::Apis::MerchantapiAccountsV1beta::RateGroup::Representation
      
          property :service_name, as: 'serviceName'
          property :shipment_type, as: 'shipmentType'
          property :store_config, as: 'storeConfig', class: Google::Apis::MerchantapiAccountsV1beta::StoreConfig, decorator: Google::Apis::MerchantapiAccountsV1beta::StoreConfig::Representation
      
        end
      end
      
      class ShippingSettings
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :etag, as: 'etag'
          property :name, as: 'name'
          collection :services, as: 'services', class: Google::Apis::MerchantapiAccountsV1beta::Service, decorator: Google::Apis::MerchantapiAccountsV1beta::Service::Representation
      
          collection :warehouses, as: 'warehouses', class: Google::Apis::MerchantapiAccountsV1beta::Warehouse, decorator: Google::Apis::MerchantapiAccountsV1beta::Warehouse::Representation
      
        end
      end
      
      class ShortCode
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :number, as: 'number'
          property :region_code, as: 'regionCode'
        end
      end
      
      class StoreCodeSetWithMov
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :store_codes, as: 'storeCodes'
          property :value, as: 'value', class: Google::Apis::MerchantapiAccountsV1beta::Price, decorator: Google::Apis::MerchantapiAccountsV1beta::Price::Representation
      
        end
      end
      
      class StoreConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :cutoff_config, as: 'cutoffConfig', class: Google::Apis::MerchantapiAccountsV1beta::CutoffConfig, decorator: Google::Apis::MerchantapiAccountsV1beta::CutoffConfig::Representation
      
          property :service_radius, as: 'serviceRadius', class: Google::Apis::MerchantapiAccountsV1beta::Distance, decorator: Google::Apis::MerchantapiAccountsV1beta::Distance::Representation
      
          collection :store_codes, as: 'storeCodes'
          property :store_service_type, as: 'storeServiceType'
        end
      end
      
      class Table
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :column_headers, as: 'columnHeaders', class: Google::Apis::MerchantapiAccountsV1beta::Headers, decorator: Google::Apis::MerchantapiAccountsV1beta::Headers::Representation
      
          property :name, as: 'name'
          property :row_headers, as: 'rowHeaders', class: Google::Apis::MerchantapiAccountsV1beta::Headers, decorator: Google::Apis::MerchantapiAccountsV1beta::Headers::Representation
      
          collection :rows, as: 'rows', class: Google::Apis::MerchantapiAccountsV1beta::Row, decorator: Google::Apis::MerchantapiAccountsV1beta::Row::Representation
      
        end
      end
      
      class TaxPostalCodeRange
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :end, as: 'end'
          property :start, as: 'start'
        end
      end
      
      class TaxRule
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :effective_time_period, as: 'effectiveTimePeriod', class: Google::Apis::MerchantapiAccountsV1beta::Interval, decorator: Google::Apis::MerchantapiAccountsV1beta::Interval::Representation
      
          property :location_id, :numeric_string => true, as: 'locationId'
          property :post_code_range, as: 'postCodeRange', class: Google::Apis::MerchantapiAccountsV1beta::TaxPostalCodeRange, decorator: Google::Apis::MerchantapiAccountsV1beta::TaxPostalCodeRange::Representation
      
          property :region_code, as: 'regionCode'
          property :self_specified_rate_micros, :numeric_string => true, as: 'selfSpecifiedRateMicros'
          property :shipping_taxed, as: 'shippingTaxed'
          property :use_google_rate, as: 'useGoogleRate'
        end
      end
      
      class TermsOfService
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :external, as: 'external'
          property :file_uri, as: 'fileUri'
          property :kind, as: 'kind'
          property :name, as: 'name'
          property :region_code, as: 'regionCode'
        end
      end
      
      class TermsOfServiceAgreementState
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :accepted, as: 'accepted', class: Google::Apis::MerchantapiAccountsV1beta::Accepted, decorator: Google::Apis::MerchantapiAccountsV1beta::Accepted::Representation
      
          property :name, as: 'name'
          property :region_code, as: 'regionCode'
          property :required, as: 'required', class: Google::Apis::MerchantapiAccountsV1beta::Required, decorator: Google::Apis::MerchantapiAccountsV1beta::Required::Representation
      
          property :terms_of_service_kind, as: 'termsOfServiceKind'
        end
      end
      
      class TimeZone
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :id, as: 'id'
          property :version, as: 'version'
        end
      end
      
      class TransitTable
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :postal_code_group_names, as: 'postalCodeGroupNames'
          collection :rows, as: 'rows', class: Google::Apis::MerchantapiAccountsV1beta::TransitTimeRow, decorator: Google::Apis::MerchantapiAccountsV1beta::TransitTimeRow::Representation
      
          collection :transit_time_labels, as: 'transitTimeLabels'
        end
      end
      
      class TransitTimeRow
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :values, as: 'values', class: Google::Apis::MerchantapiAccountsV1beta::TransitTimeValue, decorator: Google::Apis::MerchantapiAccountsV1beta::TransitTimeValue::Representation
      
        end
      end
      
      class TransitTimeValue
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :max_transit_days, as: 'maxTransitDays'
          property :min_transit_days, as: 'minTransitDays'
        end
      end
      
      class UnclaimHomepageRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class User
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :access_rights, as: 'accessRights'
          property :name, as: 'name'
          property :state, as: 'state'
        end
      end
      
      class Value
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :carrier_rate, as: 'carrierRate'
          property :flat_rate, as: 'flatRate', class: Google::Apis::MerchantapiAccountsV1beta::Price, decorator: Google::Apis::MerchantapiAccountsV1beta::Price::Representation
      
          property :no_shipping, as: 'noShipping'
          property :price_percentage, as: 'pricePercentage'
          property :subtable, as: 'subtable'
        end
      end
      
      class Warehouse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :business_day_config, as: 'businessDayConfig', class: Google::Apis::MerchantapiAccountsV1beta::BusinessDayConfig, decorator: Google::Apis::MerchantapiAccountsV1beta::BusinessDayConfig::Representation
      
          property :cutoff_time, as: 'cutoffTime', class: Google::Apis::MerchantapiAccountsV1beta::WarehouseCutoffTime, decorator: Google::Apis::MerchantapiAccountsV1beta::WarehouseCutoffTime::Representation
      
          property :handling_days, :numeric_string => true, as: 'handlingDays'
          property :name, as: 'name'
          property :shipping_address, as: 'shippingAddress', class: Google::Apis::MerchantapiAccountsV1beta::Address, decorator: Google::Apis::MerchantapiAccountsV1beta::Address::Representation
      
        end
      end
      
      class WarehouseBasedDeliveryTime
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :carrier, as: 'carrier'
          property :carrier_service, as: 'carrierService'
          property :warehouse, as: 'warehouse'
        end
      end
      
      class WarehouseCutoffTime
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :hour, as: 'hour'
          property :minute, as: 'minute'
        end
      end
      
      class Weight
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :amount_micros, :numeric_string => true, as: 'amountMicros'
          property :unit, as: 'unit'
        end
      end
    end
  end
end
