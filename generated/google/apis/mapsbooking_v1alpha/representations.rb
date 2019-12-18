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
    module MapsbookingV1alpha
      
      class ActionLink
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Attribution
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Availability
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class BatchReplaceServiceAvailabilityRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class BatchReplaceServiceAvailabilityResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Booking
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CancellationPolicy
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ClientInformation
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CreditCardRestrictions
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Deposit
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Empty
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Entity
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ExtendedServiceAvailability
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class FeedStatistics
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class FeedStatus
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GeoCoordinates
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class HomeServiceData
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class LineItem
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListStatusResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class LocalizedString
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Location
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Merchant
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class MerchantMatchingHints
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class NoShowFee
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Order
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class OrderedTickets
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class PaymentInformation
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class PaymentOption
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class PaymentProcessorConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class PaymentRestrictions
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class PerOrderFee
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class PerTicketFee
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class PostalAddress
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Price
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class PublicIdentificationData
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Rating
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Recurrence
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class RefundCondition
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class RelatedMedia
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ReplaceServiceAvailabilityRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Resources
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ScheduleException
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SchedulingRuleOverrides
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SchedulingRules
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Service
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ServiceAttribute
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ServiceAttributeValueId
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ServiceAvailability
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ServiceIntakeForm
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ServiceIntakeFormField
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class TaxRate
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Terms
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Text
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class TicketType
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class TicketingVerticalSpecificData
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class TimeRange
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class TokenizationConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ToursAndActivitiesContent
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class UserPurchaseRestriction
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Value
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class WaitlistRules
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ActionLink
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :language, as: 'language'
          property :platform, as: 'platform'
          collection :restricted_country, as: 'restrictedCountry'
          property :url, as: 'url'
        end
      end
      
      class Attribution
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :localized_text, as: 'localizedText', class: Google::Apis::MapsbookingV1alpha::Text, decorator: Google::Apis::MapsbookingV1alpha::Text::Representation
      
          property :text, as: 'text'
        end
      end
      
      class Availability
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :availability_tag, as: 'availabilityTag'
          property :confirmation_mode, as: 'confirmationMode'
          property :deposit, as: 'deposit', class: Google::Apis::MapsbookingV1alpha::Deposit, decorator: Google::Apis::MapsbookingV1alpha::Deposit::Representation
      
          property :duration, as: 'duration'
          property :no_show_fee, as: 'noShowFee', class: Google::Apis::MapsbookingV1alpha::NoShowFee, decorator: Google::Apis::MapsbookingV1alpha::NoShowFee::Representation
      
          collection :payment_option_id, as: 'paymentOptionId'
          property :recurrence, as: 'recurrence', class: Google::Apis::MapsbookingV1alpha::Recurrence, decorator: Google::Apis::MapsbookingV1alpha::Recurrence::Representation
      
          property :require_credit_card, as: 'requireCreditCard'
          property :resources, as: 'resources', class: Google::Apis::MapsbookingV1alpha::Resources, decorator: Google::Apis::MapsbookingV1alpha::Resources::Representation
      
          collection :schedule_exception, as: 'scheduleException', class: Google::Apis::MapsbookingV1alpha::ScheduleException, decorator: Google::Apis::MapsbookingV1alpha::ScheduleException::Representation
      
          property :scheduling_rule_overrides, as: 'schedulingRuleOverrides', class: Google::Apis::MapsbookingV1alpha::SchedulingRuleOverrides, decorator: Google::Apis::MapsbookingV1alpha::SchedulingRuleOverrides::Representation
      
          property :spots_open, :numeric_string => true, as: 'spotsOpen'
          property :spots_total, :numeric_string => true, as: 'spotsTotal'
          property :start_time, as: 'startTime'
          collection :ticket_type_id, as: 'ticketTypeId'
        end
      end
      
      class BatchReplaceServiceAvailabilityRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :extended_service_availability, as: 'extendedServiceAvailability', class: Google::Apis::MapsbookingV1alpha::ExtendedServiceAvailability, decorator: Google::Apis::MapsbookingV1alpha::ExtendedServiceAvailability::Representation
      
        end
      end
      
      class BatchReplaceServiceAvailabilityResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :extended_service_availability, as: 'extendedServiceAvailability', class: Google::Apis::MapsbookingV1alpha::ExtendedServiceAvailability, decorator: Google::Apis::MapsbookingV1alpha::ExtendedServiceAvailability::Representation
      
        end
      end
      
      class Booking
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :client_information, as: 'clientInformation', class: Google::Apis::MapsbookingV1alpha::ClientInformation, decorator: Google::Apis::MapsbookingV1alpha::ClientInformation::Representation
      
          property :duration, as: 'duration'
          property :merchant_id, as: 'merchantId'
          property :name, as: 'name'
          property :party_size, :numeric_string => true, as: 'partySize'
          property :payment_information, as: 'paymentInformation', class: Google::Apis::MapsbookingV1alpha::PaymentInformation, decorator: Google::Apis::MapsbookingV1alpha::PaymentInformation::Representation
      
          property :service_id, as: 'serviceId'
          property :start_time, as: 'startTime'
          property :status, as: 'status'
        end
      end
      
      class CancellationPolicy
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :refund_condition, as: 'refundCondition', class: Google::Apis::MapsbookingV1alpha::RefundCondition, decorator: Google::Apis::MapsbookingV1alpha::RefundCondition::Representation
      
        end
      end
      
      class ClientInformation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :address, as: 'address', class: Google::Apis::MapsbookingV1alpha::PostalAddress, decorator: Google::Apis::MapsbookingV1alpha::PostalAddress::Representation
      
          property :email, as: 'email'
          property :family_name, as: 'familyName'
          property :given_name, as: 'givenName'
          property :telephone, as: 'telephone'
        end
      end
      
      class CreditCardRestrictions
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :credit_card_type, as: 'creditCardType'
        end
      end
      
      class Deposit
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :deposit, as: 'deposit', class: Google::Apis::MapsbookingV1alpha::Price, decorator: Google::Apis::MapsbookingV1alpha::Price::Representation
      
          property :deposit_type, as: 'depositType'
          property :min_advance_cancellation_sec, :numeric_string => true, as: 'minAdvanceCancellationSec'
        end
      end
      
      class Empty
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class Entity
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :entity_role, as: 'entityRole'
          property :entity_type, as: 'entityType'
          property :id, as: 'id'
          property :name, as: 'name'
          property :public_identification_data, as: 'publicIdentificationData', class: Google::Apis::MapsbookingV1alpha::PublicIdentificationData, decorator: Google::Apis::MapsbookingV1alpha::PublicIdentificationData::Representation
      
          property :url, as: 'url'
        end
      end
      
      class ExtendedServiceAvailability
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :availability, as: 'availability', class: Google::Apis::MapsbookingV1alpha::Availability, decorator: Google::Apis::MapsbookingV1alpha::Availability::Representation
      
          property :duration_restrict, as: 'durationRestrict'
          property :end_time_restrict, as: 'endTimeRestrict'
          property :merchant_id, as: 'merchantId'
          property :resources_restrict, as: 'resourcesRestrict', class: Google::Apis::MapsbookingV1alpha::Resources, decorator: Google::Apis::MapsbookingV1alpha::Resources::Representation
      
          property :service_id, as: 'serviceId'
          property :start_time_restrict, as: 'startTimeRestrict'
        end
      end
      
      class FeedStatistics
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :deleted_items, :numeric_string => true, as: 'deletedItems'
          property :existing_items, :numeric_string => true, as: 'existingItems'
          property :new_items, :numeric_string => true, as: 'newItems'
        end
      end
      
      class FeedStatus
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :error_details, as: 'errorDetails'
          property :name, as: 'name'
          property :state, as: 'state'
          property :statistics, as: 'statistics', class: Google::Apis::MapsbookingV1alpha::FeedStatistics, decorator: Google::Apis::MapsbookingV1alpha::FeedStatistics::Representation
      
        end
      end
      
      class GeoCoordinates
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :address, as: 'address', class: Google::Apis::MapsbookingV1alpha::PostalAddress, decorator: Google::Apis::MapsbookingV1alpha::PostalAddress::Representation
      
          property :latitude, as: 'latitude'
          property :longitude, as: 'longitude'
          property :unstructured_address, as: 'unstructuredAddress'
        end
      end
      
      class HomeServiceData
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :category_type, as: 'categoryType'
          property :job_type, as: 'jobType'
        end
      end
      
      class LineItem
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :duration_sec, :numeric_string => true, as: 'durationSec'
          property :price, as: 'price', class: Google::Apis::MapsbookingV1alpha::Price, decorator: Google::Apis::MapsbookingV1alpha::Price::Representation
      
          property :service_id, as: 'serviceId'
          property :start_sec, :numeric_string => true, as: 'startSec'
          property :status, as: 'status'
          collection :tickets, as: 'tickets', class: Google::Apis::MapsbookingV1alpha::OrderedTickets, decorator: Google::Apis::MapsbookingV1alpha::OrderedTickets::Representation
      
        end
      end
      
      class ListStatusResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :status, as: 'status', class: Google::Apis::MapsbookingV1alpha::FeedStatus, decorator: Google::Apis::MapsbookingV1alpha::FeedStatus::Representation
      
        end
      end
      
      class LocalizedString
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :locale, as: 'locale'
          property :value, as: 'value'
        end
      end
      
      class Location
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :geo, as: 'geo', class: Google::Apis::MapsbookingV1alpha::GeoCoordinates, decorator: Google::Apis::MapsbookingV1alpha::GeoCoordinates::Representation
      
          property :location_id, as: 'locationId'
          property :location_type, as: 'locationType'
          property :name, as: 'name'
          property :place_id, as: 'placeId'
          property :telephone, as: 'telephone'
          property :url, as: 'url'
        end
      end
      
      class Merchant
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :brand_id, as: 'brandId'
          property :category, as: 'category'
          property :geo, as: 'geo', class: Google::Apis::MapsbookingV1alpha::GeoCoordinates, decorator: Google::Apis::MapsbookingV1alpha::GeoCoordinates::Representation
      
          property :matching_hints, as: 'matchingHints', class: Google::Apis::MapsbookingV1alpha::MerchantMatchingHints, decorator: Google::Apis::MapsbookingV1alpha::MerchantMatchingHints::Representation
      
          property :merchant_name, as: 'merchantName'
          property :name, as: 'name'
          property :num_bookings30d, :numeric_string => true, as: 'numBookings30d'
          collection :payment_option, as: 'paymentOption', class: Google::Apis::MapsbookingV1alpha::PaymentOption, decorator: Google::Apis::MapsbookingV1alpha::PaymentOption::Representation
      
          property :payment_processor_config, as: 'paymentProcessorConfig', class: Google::Apis::MapsbookingV1alpha::PaymentProcessorConfig, decorator: Google::Apis::MapsbookingV1alpha::PaymentProcessorConfig::Representation
      
          property :payment_restrictions, as: 'paymentRestrictions', class: Google::Apis::MapsbookingV1alpha::PaymentRestrictions, decorator: Google::Apis::MapsbookingV1alpha::PaymentRestrictions::Representation
      
          collection :service_attribute, as: 'serviceAttribute', class: Google::Apis::MapsbookingV1alpha::ServiceAttribute, decorator: Google::Apis::MapsbookingV1alpha::ServiceAttribute::Representation
      
          property :tax_rate, as: 'taxRate', class: Google::Apis::MapsbookingV1alpha::TaxRate, decorator: Google::Apis::MapsbookingV1alpha::TaxRate::Representation
      
          property :tax_rate_basis_points, as: 'taxRateBasisPoints'
          property :telephone, as: 'telephone'
          property :terms, as: 'terms', class: Google::Apis::MapsbookingV1alpha::Terms, decorator: Google::Apis::MapsbookingV1alpha::Terms::Representation
      
          property :tokenization_config, as: 'tokenizationConfig', class: Google::Apis::MapsbookingV1alpha::TokenizationConfig, decorator: Google::Apis::MapsbookingV1alpha::TokenizationConfig::Representation
      
          property :url, as: 'url'
        end
      end
      
      class MerchantMatchingHints
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :place_id, as: 'placeId'
        end
      end
      
      class NoShowFee
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :fee, as: 'fee', class: Google::Apis::MapsbookingV1alpha::Price, decorator: Google::Apis::MapsbookingV1alpha::Price::Representation
      
          property :fee_type, as: 'feeType'
        end
      end
      
      class Order
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :client_information, as: 'clientInformation', class: Google::Apis::MapsbookingV1alpha::ClientInformation, decorator: Google::Apis::MapsbookingV1alpha::ClientInformation::Representation
      
          collection :item, as: 'item', class: Google::Apis::MapsbookingV1alpha::LineItem, decorator: Google::Apis::MapsbookingV1alpha::LineItem::Representation
      
          property :merchant_id, as: 'merchantId'
          property :name, as: 'name'
          property :payment_information, as: 'paymentInformation', class: Google::Apis::MapsbookingV1alpha::PaymentInformation, decorator: Google::Apis::MapsbookingV1alpha::PaymentInformation::Representation
      
        end
      end
      
      class OrderedTickets
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :count, as: 'count'
          property :ticket_id, as: 'ticketId'
        end
      end
      
      class PaymentInformation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :payment_transaction_id, as: 'paymentTransactionId'
          property :prepayment_status, as: 'prepaymentStatus'
        end
      end
      
      class PaymentOption
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :activation_type, as: 'activationType'
          property :description, as: 'description'
          property :name, as: 'name'
          property :payment_option_id, as: 'paymentOptionId'
          property :payment_option_type, as: 'paymentOptionType'
          property :price, as: 'price', class: Google::Apis::MapsbookingV1alpha::Price, decorator: Google::Apis::MapsbookingV1alpha::Price::Representation
      
          property :purchase_interval, as: 'purchaseInterval', class: Google::Apis::MapsbookingV1alpha::TimeRange, decorator: Google::Apis::MapsbookingV1alpha::TimeRange::Representation
      
          property :session_count, :numeric_string => true, as: 'sessionCount'
          property :tax_rate, as: 'taxRate', class: Google::Apis::MapsbookingV1alpha::TaxRate, decorator: Google::Apis::MapsbookingV1alpha::TaxRate::Representation
      
          property :user_restriction, as: 'userRestriction', class: Google::Apis::MapsbookingV1alpha::UserPurchaseRestriction, decorator: Google::Apis::MapsbookingV1alpha::UserPurchaseRestriction::Representation
      
          property :valid_duration, as: 'validDuration'
          property :valid_interval, as: 'validInterval', class: Google::Apis::MapsbookingV1alpha::TimeRange, decorator: Google::Apis::MapsbookingV1alpha::TimeRange::Representation
      
        end
      end
      
      class PaymentProcessorConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :processor, as: 'processor'
          property :public_key, as: 'publicKey'
          property :version, as: 'version'
        end
      end
      
      class PaymentRestrictions
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :credit_card_restrictions, as: 'creditCardRestrictions', class: Google::Apis::MapsbookingV1alpha::CreditCardRestrictions, decorator: Google::Apis::MapsbookingV1alpha::CreditCardRestrictions::Representation
      
        end
      end
      
      class PerOrderFee
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :delivery_fee, as: 'deliveryFee', class: Google::Apis::MapsbookingV1alpha::Price, decorator: Google::Apis::MapsbookingV1alpha::Price::Representation
      
          property :processing_fee, as: 'processingFee', class: Google::Apis::MapsbookingV1alpha::Price, decorator: Google::Apis::MapsbookingV1alpha::Price::Representation
      
        end
      end
      
      class PerTicketFee
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :facility_fee, as: 'facilityFee', class: Google::Apis::MapsbookingV1alpha::Price, decorator: Google::Apis::MapsbookingV1alpha::Price::Representation
      
          property :service_charge, as: 'serviceCharge', class: Google::Apis::MapsbookingV1alpha::Price, decorator: Google::Apis::MapsbookingV1alpha::Price::Representation
      
          property :taxes, as: 'taxes', class: Google::Apis::MapsbookingV1alpha::Price, decorator: Google::Apis::MapsbookingV1alpha::Price::Representation
      
        end
      end
      
      class PostalAddress
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :address_country, as: 'addressCountry'
          property :address_locality, as: 'addressLocality'
          property :address_region, as: 'addressRegion'
          property :postal_code, as: 'postalCode'
          property :street_address, as: 'streetAddress'
        end
      end
      
      class Price
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :currency_code, as: 'currencyCode'
          property :price_micros, :numeric_string => true, as: 'priceMicros'
          property :pricing_option_tag, as: 'pricingOptionTag'
        end
      end
      
      class PublicIdentificationData
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :musicbrainz_id, as: 'musicbrainzId'
          collection :relevant_url, as: 'relevantUrl'
        end
      end
      
      class Rating
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :number_of_ratings, :numeric_string => true, as: 'numberOfRatings'
          property :value, as: 'value'
        end
      end
      
      class Recurrence
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :repeat_every, as: 'repeatEvery'
          property :repeat_until, as: 'repeatUntil'
        end
      end
      
      class RefundCondition
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :min_duration_before_start_time, as: 'minDurationBeforeStartTime'
          property :refund_percent, as: 'refundPercent'
        end
      end
      
      class RelatedMedia
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :attribution, as: 'attribution', class: Google::Apis::MapsbookingV1alpha::Attribution, decorator: Google::Apis::MapsbookingV1alpha::Attribution::Representation
      
          property :caption, as: 'caption'
          property :localized_caption, as: 'localizedCaption', class: Google::Apis::MapsbookingV1alpha::Text, decorator: Google::Apis::MapsbookingV1alpha::Text::Representation
      
          property :type, as: 'type'
          property :url, as: 'url'
        end
      end
      
      class ReplaceServiceAvailabilityRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :service_availability, as: 'serviceAvailability', class: Google::Apis::MapsbookingV1alpha::ServiceAvailability, decorator: Google::Apis::MapsbookingV1alpha::ServiceAvailability::Representation
      
        end
      end
      
      class Resources
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :party_size, as: 'partySize'
          property :room_id, as: 'roomId'
          property :room_name, as: 'roomName'
          property :staff_id, as: 'staffId'
          property :staff_name, as: 'staffName'
        end
      end
      
      class ScheduleException
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :time_range, as: 'timeRange', class: Google::Apis::MapsbookingV1alpha::TimeRange, decorator: Google::Apis::MapsbookingV1alpha::TimeRange::Representation
      
        end
      end
      
      class SchedulingRuleOverrides
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :first_bookable_sec, :numeric_string => true, as: 'firstBookableSec'
          property :last_bookable_sec, :numeric_string => true, as: 'lastBookableSec'
        end
      end
      
      class SchedulingRules
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :admission_policy, as: 'admissionPolicy'
          property :cancellation_policy, as: 'cancellationPolicy', class: Google::Apis::MapsbookingV1alpha::CancellationPolicy, decorator: Google::Apis::MapsbookingV1alpha::CancellationPolicy::Representation
      
          property :late_cancellation_fee, as: 'lateCancellationFee', class: Google::Apis::MapsbookingV1alpha::Price, decorator: Google::Apis::MapsbookingV1alpha::Price::Representation
      
          property :min_advance_booking, :numeric_string => true, as: 'minAdvanceBooking'
          property :min_advance_online_canceling, :numeric_string => true, as: 'minAdvanceOnlineCanceling'
          property :min_booking_buffer_before_end_time, :numeric_string => true, as: 'minBookingBufferBeforeEndTime'
          property :noshow_fee, as: 'noshowFee', class: Google::Apis::MapsbookingV1alpha::Price, decorator: Google::Apis::MapsbookingV1alpha::Price::Representation
      
        end
      end
      
      class Service
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :action_link, as: 'actionLink', class: Google::Apis::MapsbookingV1alpha::ActionLink, decorator: Google::Apis::MapsbookingV1alpha::ActionLink::Representation
      
          property :deposit, as: 'deposit', class: Google::Apis::MapsbookingV1alpha::Deposit, decorator: Google::Apis::MapsbookingV1alpha::Deposit::Representation
      
          property :description, as: 'description'
          collection :form, as: 'form', class: Google::Apis::MapsbookingV1alpha::ServiceIntakeForm, decorator: Google::Apis::MapsbookingV1alpha::ServiceIntakeForm::Representation
      
          property :home_service_data, as: 'homeServiceData', class: Google::Apis::MapsbookingV1alpha::HomeServiceData, decorator: Google::Apis::MapsbookingV1alpha::HomeServiceData::Representation
      
          property :intake_form, as: 'intakeForm', class: Google::Apis::MapsbookingV1alpha::ServiceIntakeForm, decorator: Google::Apis::MapsbookingV1alpha::ServiceIntakeForm::Representation
      
          property :integration_type, as: 'integrationType'
          property :localized_description, as: 'localizedDescription', class: Google::Apis::MapsbookingV1alpha::Text, decorator: Google::Apis::MapsbookingV1alpha::Text::Representation
      
          property :localized_service_name, as: 'localizedServiceName', class: Google::Apis::MapsbookingV1alpha::Text, decorator: Google::Apis::MapsbookingV1alpha::Text::Representation
      
          collection :location, as: 'location', class: Google::Apis::MapsbookingV1alpha::Location, decorator: Google::Apis::MapsbookingV1alpha::Location::Representation
      
          property :name, as: 'name'
          property :no_show_fee, as: 'noShowFee', class: Google::Apis::MapsbookingV1alpha::NoShowFee, decorator: Google::Apis::MapsbookingV1alpha::NoShowFee::Representation
      
          collection :payment_option_id, as: 'paymentOptionId'
          property :per_order_fee, as: 'perOrderFee', class: Google::Apis::MapsbookingV1alpha::PerOrderFee, decorator: Google::Apis::MapsbookingV1alpha::PerOrderFee::Representation
      
          property :per_ticket_intake_form, as: 'perTicketIntakeForm', class: Google::Apis::MapsbookingV1alpha::ServiceIntakeForm, decorator: Google::Apis::MapsbookingV1alpha::ServiceIntakeForm::Representation
      
          property :prepayment_type, as: 'prepaymentType'
          property :price, as: 'price', class: Google::Apis::MapsbookingV1alpha::Price, decorator: Google::Apis::MapsbookingV1alpha::Price::Representation
      
          property :price_interpretation, as: 'priceInterpretation'
          property :rating, as: 'rating', class: Google::Apis::MapsbookingV1alpha::Rating, decorator: Google::Apis::MapsbookingV1alpha::Rating::Representation
      
          collection :related_media, as: 'relatedMedia', class: Google::Apis::MapsbookingV1alpha::RelatedMedia, decorator: Google::Apis::MapsbookingV1alpha::RelatedMedia::Representation
      
          property :require_credit_card, as: 'requireCreditCard'
          property :rules, as: 'rules', class: Google::Apis::MapsbookingV1alpha::SchedulingRules, decorator: Google::Apis::MapsbookingV1alpha::SchedulingRules::Representation
      
          collection :service_attribute_value_id, as: 'serviceAttributeValueId', class: Google::Apis::MapsbookingV1alpha::ServiceAttributeValueId, decorator: Google::Apis::MapsbookingV1alpha::ServiceAttributeValueId::Representation
      
          property :service_name, as: 'serviceName'
          property :tax_rate, as: 'taxRate', class: Google::Apis::MapsbookingV1alpha::TaxRate, decorator: Google::Apis::MapsbookingV1alpha::TaxRate::Representation
      
          collection :ticket_type, as: 'ticketType', class: Google::Apis::MapsbookingV1alpha::TicketType, decorator: Google::Apis::MapsbookingV1alpha::TicketType::Representation
      
          property :ticketing_vertical_specific_data, as: 'ticketingVerticalSpecificData', class: Google::Apis::MapsbookingV1alpha::TicketingVerticalSpecificData, decorator: Google::Apis::MapsbookingV1alpha::TicketingVerticalSpecificData::Representation
      
          property :tours_and_activities_content, as: 'toursAndActivitiesContent', class: Google::Apis::MapsbookingV1alpha::ToursAndActivitiesContent, decorator: Google::Apis::MapsbookingV1alpha::ToursAndActivitiesContent::Representation
      
          property :type, as: 'type'
          property :waitlist_rules, as: 'waitlistRules', class: Google::Apis::MapsbookingV1alpha::WaitlistRules, decorator: Google::Apis::MapsbookingV1alpha::WaitlistRules::Representation
      
        end
      end
      
      class ServiceAttribute
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :attribute_id, as: 'attributeId'
          property :attribute_name, as: 'attributeName'
          collection :value, as: 'value', class: Google::Apis::MapsbookingV1alpha::Value, decorator: Google::Apis::MapsbookingV1alpha::Value::Representation
      
        end
      end
      
      class ServiceAttributeValueId
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :attribute_id, as: 'attributeId'
          property :value_id, as: 'valueId'
        end
      end
      
      class ServiceAvailability
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :availability, as: 'availability', class: Google::Apis::MapsbookingV1alpha::Availability, decorator: Google::Apis::MapsbookingV1alpha::Availability::Representation
      
          property :duration_restrict, as: 'durationRestrict'
          property :end_time_restrict, as: 'endTimeRestrict'
          property :name, as: 'name'
          property :resources_restrict, as: 'resourcesRestrict', class: Google::Apis::MapsbookingV1alpha::Resources, decorator: Google::Apis::MapsbookingV1alpha::Resources::Representation
      
          property :start_time_restrict, as: 'startTimeRestrict'
        end
      end
      
      class ServiceIntakeForm
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :field, as: 'field', class: Google::Apis::MapsbookingV1alpha::ServiceIntakeFormField, decorator: Google::Apis::MapsbookingV1alpha::ServiceIntakeFormField::Representation
      
          property :first_time_customers, as: 'firstTimeCustomers'
          property :returning_customers, as: 'returningCustomers'
        end
      end
      
      class ServiceIntakeFormField
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :additional_option, as: 'additionalOption', class: Google::Apis::MapsbookingV1alpha::Text, decorator: Google::Apis::MapsbookingV1alpha::Text::Representation
      
          property :allow_custom_answer, as: 'allowCustomAnswer'
          collection :choice_text, as: 'choiceText', class: Google::Apis::MapsbookingV1alpha::Text, decorator: Google::Apis::MapsbookingV1alpha::Text::Representation
      
          property :id, as: 'id'
          property :is_required, as: 'isRequired'
          property :label, as: 'label'
          property :localized_label, as: 'localizedLabel', class: Google::Apis::MapsbookingV1alpha::Text, decorator: Google::Apis::MapsbookingV1alpha::Text::Representation
      
          collection :ticket_type_restrict, as: 'ticketTypeRestrict'
          property :type, as: 'type'
          collection :value, as: 'value'
        end
      end
      
      class TaxRate
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :micro_percent, as: 'microPercent'
        end
      end
      
      class Terms
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :localized_text, as: 'localizedText', class: Google::Apis::MapsbookingV1alpha::Text, decorator: Google::Apis::MapsbookingV1alpha::Text::Representation
      
          property :text, as: 'text'
          property :url, as: 'url'
        end
      end
      
      class Text
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :localized_value, as: 'localizedValue', class: Google::Apis::MapsbookingV1alpha::LocalizedString, decorator: Google::Apis::MapsbookingV1alpha::LocalizedString::Representation
      
          property :value, as: 'value'
        end
      end
      
      class TicketType
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :localized_option_description, as: 'localizedOptionDescription', class: Google::Apis::MapsbookingV1alpha::Text, decorator: Google::Apis::MapsbookingV1alpha::Text::Representation
      
          property :localized_short_description, as: 'localizedShortDescription', class: Google::Apis::MapsbookingV1alpha::Text, decorator: Google::Apis::MapsbookingV1alpha::Text::Representation
      
          property :option_description, as: 'optionDescription'
          property :per_ticket_fee, as: 'perTicketFee', class: Google::Apis::MapsbookingV1alpha::PerTicketFee, decorator: Google::Apis::MapsbookingV1alpha::PerTicketFee::Representation
      
          property :price, as: 'price', class: Google::Apis::MapsbookingV1alpha::Price, decorator: Google::Apis::MapsbookingV1alpha::Price::Representation
      
          property :short_description, as: 'shortDescription'
          property :ticket_type_id, as: 'ticketTypeId'
        end
      end
      
      class TicketingVerticalSpecificData
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :entity, as: 'entity', class: Google::Apis::MapsbookingV1alpha::Entity, decorator: Google::Apis::MapsbookingV1alpha::Entity::Representation
      
          property :event_category, as: 'eventCategory'
          property :event_url, as: 'eventUrl'
        end
      end
      
      class TimeRange
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :end_time, as: 'endTime'
          property :start_time, as: 'startTime'
        end
      end
      
      class TokenizationConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :billing_information_format, as: 'billingInformationFormat'
          hash :tokenization_parameter, as: 'tokenizationParameter'
        end
      end
      
      class ToursAndActivitiesContent
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :exclusions, as: 'exclusions', class: Google::Apis::MapsbookingV1alpha::Text, decorator: Google::Apis::MapsbookingV1alpha::Text::Representation
      
          collection :highlights, as: 'highlights', class: Google::Apis::MapsbookingV1alpha::Text, decorator: Google::Apis::MapsbookingV1alpha::Text::Representation
      
          collection :inclusions, as: 'inclusions', class: Google::Apis::MapsbookingV1alpha::Text, decorator: Google::Apis::MapsbookingV1alpha::Text::Representation
      
          collection :must_know, as: 'mustKnow', class: Google::Apis::MapsbookingV1alpha::Text, decorator: Google::Apis::MapsbookingV1alpha::Text::Representation
      
        end
      end
      
      class UserPurchaseRestriction
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :new_to_merchant, as: 'newToMerchant'
          property :new_to_payment_option, as: 'newToPaymentOption'
        end
      end
      
      class Value
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :value_id, as: 'valueId'
          property :value_name, as: 'valueName'
        end
      end
      
      class WaitlistRules
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :max_party_size, as: 'maxPartySize'
          property :min_party_size, as: 'minPartySize'
          property :supports_additional_request, as: 'supportsAdditionalRequest'
        end
      end
    end
  end
end
