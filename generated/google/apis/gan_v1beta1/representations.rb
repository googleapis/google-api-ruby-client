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
    module GanV1beta1
      
      class Advertiser
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Advertisers
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CcOffer
        class Representation < Google::Apis::Core::JsonRepresentation; end
        
        class BonusReward
          class Representation < Google::Apis::Core::JsonRepresentation; end
        
          include Google::Apis::Core::JsonObjectSupport
        end
        
        class DefaultFee
          class Representation < Google::Apis::Core::JsonRepresentation; end
        
          include Google::Apis::Core::JsonObjectSupport
        end
        
        class Reward
          class Representation < Google::Apis::Core::JsonRepresentation; end
        
          include Google::Apis::Core::JsonObjectSupport
        end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CcOffers
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Event
        class Representation < Google::Apis::Core::JsonRepresentation; end
        
        class Product
          class Representation < Google::Apis::Core::JsonRepresentation; end
        
          include Google::Apis::Core::JsonObjectSupport
        end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Events
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Link
        class Representation < Google::Apis::Core::JsonRepresentation; end
        
        class SpecialOffers
          class Representation < Google::Apis::Core::JsonRepresentation; end
        
          include Google::Apis::Core::JsonObjectSupport
        end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Links
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Money
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Publisher
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Publishers
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Report
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Advertiser
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :allow_publisher_created_links, as: 'allowPublisherCreatedLinks'
          property :category, as: 'category'
          property :commission_duration, as: 'commissionDuration'
          property :contact_email, as: 'contactEmail'
          property :contact_phone, as: 'contactPhone'
          property :default_link_id, as: 'defaultLinkId'
          property :description, as: 'description'
          property :epc_ninety_day_average, as: 'epcNinetyDayAverage', class: Google::Apis::GanV1beta1::Money, decorator: Google::Apis::GanV1beta1::Money::Representation
      
          property :epc_seven_day_average, as: 'epcSevenDayAverage', class: Google::Apis::GanV1beta1::Money, decorator: Google::Apis::GanV1beta1::Money::Representation
      
          property :id, as: 'id'
          property :item, as: 'item', class: Google::Apis::GanV1beta1::Advertiser, decorator: Google::Apis::GanV1beta1::Advertiser::Representation
      
          property :join_date, as: 'joinDate', type: DateTime
      
          property :kind, as: 'kind'
          property :logo_url, as: 'logoUrl'
          collection :merchant_center_ids, as: 'merchantCenterIds'
          property :name, as: 'name'
          property :payout_rank, as: 'payoutRank'
          property :product_feeds_enabled, as: 'productFeedsEnabled'
          collection :redirect_domains, as: 'redirectDomains'
          property :site_url, as: 'siteUrl'
          property :status, as: 'status'
        end
      end
      
      class Advertisers
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :items, as: 'items', class: Google::Apis::GanV1beta1::Advertiser, decorator: Google::Apis::GanV1beta1::Advertiser::Representation
      
          property :kind, as: 'kind'
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class CcOffer
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :additional_card_benefits, as: 'additionalCardBenefits'
          property :additional_card_holder_fee, as: 'additionalCardHolderFee'
          property :age_minimum, as: 'ageMinimum'
          property :age_minimum_details, as: 'ageMinimumDetails'
          property :annual_fee, as: 'annualFee'
          property :annual_fee_display, as: 'annualFeeDisplay'
          property :annual_reward_maximum, as: 'annualRewardMaximum'
          collection :approved_categories, as: 'approvedCategories'
          property :apr_display, as: 'aprDisplay'
          property :balance_computation_method, as: 'balanceComputationMethod'
          property :balance_transfer_terms, as: 'balanceTransferTerms'
          collection :bonus_rewards, as: 'bonusRewards', class: Google::Apis::GanV1beta1::CcOffer::BonusReward, decorator: Google::Apis::GanV1beta1::CcOffer::BonusReward::Representation
      
          property :car_rental_insurance, as: 'carRentalInsurance'
          collection :card_benefits, as: 'cardBenefits'
          property :card_name, as: 'cardName'
          property :card_type, as: 'cardType'
          property :cash_advance_terms, as: 'cashAdvanceTerms'
          property :credit_limit_max, as: 'creditLimitMax'
          property :credit_limit_min, as: 'creditLimitMin'
          property :credit_rating_display, as: 'creditRatingDisplay'
          collection :default_fees, as: 'defaultFees', class: Google::Apis::GanV1beta1::CcOffer::DefaultFee, decorator: Google::Apis::GanV1beta1::CcOffer::DefaultFee::Representation
      
          property :disclaimer, as: 'disclaimer'
          property :emergency_insurance, as: 'emergencyInsurance'
          property :existing_customer_only, as: 'existingCustomerOnly'
          property :extended_warranty, as: 'extendedWarranty'
          property :first_year_annual_fee, as: 'firstYearAnnualFee'
          property :flight_accident_insurance, as: 'flightAccidentInsurance'
          property :foreign_currency_transaction_fee, as: 'foreignCurrencyTransactionFee'
          property :fraud_liability, as: 'fraudLiability'
          property :grace_period_display, as: 'gracePeriodDisplay'
          property :image_url, as: 'imageUrl'
          property :initial_setup_and_processing_fee, as: 'initialSetupAndProcessingFee'
          property :intro_balance_transfer_terms, as: 'introBalanceTransferTerms'
          property :intro_cash_advance_terms, as: 'introCashAdvanceTerms'
          property :intro_purchase_terms, as: 'introPurchaseTerms'
          property :issuer, as: 'issuer'
          property :issuer_id, as: 'issuerId'
          property :issuer_website, as: 'issuerWebsite'
          property :kind, as: 'kind'
          property :landing_page_url, as: 'landingPageUrl'
          property :late_payment_fee, as: 'latePaymentFee'
          property :luggage_insurance, as: 'luggageInsurance'
          property :max_purchase_rate, as: 'maxPurchaseRate'
          property :min_purchase_rate, as: 'minPurchaseRate'
          property :minimum_finance_charge, as: 'minimumFinanceCharge'
          property :network, as: 'network'
          property :offer_id, as: 'offerId'
          property :offers_immediate_cash_reward, as: 'offersImmediateCashReward'
          property :over_limit_fee, as: 'overLimitFee'
          collection :prohibited_categories, as: 'prohibitedCategories'
          property :purchase_rate_additional_details, as: 'purchaseRateAdditionalDetails'
          property :purchase_rate_type, as: 'purchaseRateType'
          property :returned_payment_fee, as: 'returnedPaymentFee'
          property :reward_partner, as: 'rewardPartner'
          property :reward_unit, as: 'rewardUnit'
          collection :rewards, as: 'rewards', class: Google::Apis::GanV1beta1::CcOffer::Reward, decorator: Google::Apis::GanV1beta1::CcOffer::Reward::Representation
      
          property :rewards_expire, as: 'rewardsExpire'
          property :rewards_have_blackout_dates, as: 'rewardsHaveBlackoutDates'
          property :statement_copy_fee, as: 'statementCopyFee'
          property :tracking_url, as: 'trackingUrl'
          property :travel_insurance, as: 'travelInsurance'
          property :variable_rates_last_updated, as: 'variableRatesLastUpdated'
          property :variable_rates_update_frequency, as: 'variableRatesUpdateFrequency'
        end
        
        class BonusReward
          # @private
          class Representation < Google::Apis::Core::JsonRepresentation
            property :amount, as: 'amount'
            property :details, as: 'details'
          end
        end
        
        class DefaultFee
          # @private
          class Representation < Google::Apis::Core::JsonRepresentation
            property :category, as: 'category'
            property :max_rate, as: 'maxRate'
            property :min_rate, as: 'minRate'
            property :rate_type, as: 'rateType'
          end
        end
        
        class Reward
          # @private
          class Representation < Google::Apis::Core::JsonRepresentation
            property :additional_details, as: 'additionalDetails'
            property :amount, as: 'amount'
            property :category, as: 'category'
            property :expiration_months, as: 'expirationMonths'
            property :max_reward_tier, as: 'maxRewardTier'
            property :min_reward_tier, as: 'minRewardTier'
          end
        end
      end
      
      class CcOffers
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :items, as: 'items', class: Google::Apis::GanV1beta1::CcOffer, decorator: Google::Apis::GanV1beta1::CcOffer::Representation
      
          property :kind, as: 'kind'
        end
      end
      
      class Event
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :advertiser_id, as: 'advertiserId'
          property :advertiser_name, as: 'advertiserName'
          property :charge_id, as: 'chargeId'
          property :charge_type, as: 'chargeType'
          property :commissionable_sales, as: 'commissionableSales', class: Google::Apis::GanV1beta1::Money, decorator: Google::Apis::GanV1beta1::Money::Representation
      
          property :earnings, as: 'earnings', class: Google::Apis::GanV1beta1::Money, decorator: Google::Apis::GanV1beta1::Money::Representation
      
          property :event_date, as: 'eventDate', type: DateTime
      
          property :kind, as: 'kind'
          property :member_id, as: 'memberId'
          property :modify_date, as: 'modifyDate', type: DateTime
      
          property :network_fee, as: 'networkFee', class: Google::Apis::GanV1beta1::Money, decorator: Google::Apis::GanV1beta1::Money::Representation
      
          property :order_id, as: 'orderId'
          collection :products, as: 'products', class: Google::Apis::GanV1beta1::Event::Product, decorator: Google::Apis::GanV1beta1::Event::Product::Representation
      
          property :publisher_fee, as: 'publisherFee', class: Google::Apis::GanV1beta1::Money, decorator: Google::Apis::GanV1beta1::Money::Representation
      
          property :publisher_id, as: 'publisherId'
          property :publisher_name, as: 'publisherName'
          property :status, as: 'status'
          property :type, as: 'type'
        end
        
        class Product
          # @private
          class Representation < Google::Apis::Core::JsonRepresentation
            property :category_id, as: 'categoryId'
            property :category_name, as: 'categoryName'
            property :earnings, as: 'earnings', class: Google::Apis::GanV1beta1::Money, decorator: Google::Apis::GanV1beta1::Money::Representation
        
            property :network_fee, as: 'networkFee', class: Google::Apis::GanV1beta1::Money, decorator: Google::Apis::GanV1beta1::Money::Representation
        
            property :publisher_fee, as: 'publisherFee', class: Google::Apis::GanV1beta1::Money, decorator: Google::Apis::GanV1beta1::Money::Representation
        
            property :quantity, as: 'quantity'
            property :sku, as: 'sku'
            property :sku_name, as: 'skuName'
            property :unit_price, as: 'unitPrice', class: Google::Apis::GanV1beta1::Money, decorator: Google::Apis::GanV1beta1::Money::Representation
        
          end
        end
      end
      
      class Events
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :items, as: 'items', class: Google::Apis::GanV1beta1::Event, decorator: Google::Apis::GanV1beta1::Event::Representation
      
          property :kind, as: 'kind'
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class Link
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :advertiser_id, as: 'advertiserId'
          property :authorship, as: 'authorship'
          property :availability, as: 'availability'
          property :click_tracking_url, as: 'clickTrackingUrl'
          property :create_date, as: 'createDate', type: DateTime
      
          property :description, as: 'description'
          property :destination_url, as: 'destinationUrl'
          property :duration, as: 'duration'
          property :end_date, as: 'endDate', type: DateTime
      
          property :epc_ninety_day_average, as: 'epcNinetyDayAverage', class: Google::Apis::GanV1beta1::Money, decorator: Google::Apis::GanV1beta1::Money::Representation
      
          property :epc_seven_day_average, as: 'epcSevenDayAverage', class: Google::Apis::GanV1beta1::Money, decorator: Google::Apis::GanV1beta1::Money::Representation
      
          property :id, as: 'id'
          property :image_alt_text, as: 'imageAltText'
          property :impression_tracking_url, as: 'impressionTrackingUrl'
          property :is_active, as: 'isActive'
          property :kind, as: 'kind'
          property :link_type, as: 'linkType'
          property :name, as: 'name'
          property :promotion_type, as: 'promotionType'
          property :special_offers, as: 'specialOffers', class: Google::Apis::GanV1beta1::Link::SpecialOffers, decorator: Google::Apis::GanV1beta1::Link::SpecialOffers::Representation
      
          property :start_date, as: 'startDate', type: DateTime
      
        end
        
        class SpecialOffers
          # @private
          class Representation < Google::Apis::Core::JsonRepresentation
            property :free_gift, as: 'freeGift'
            property :free_shipping, as: 'freeShipping'
            property :free_shipping_min, as: 'freeShippingMin', class: Google::Apis::GanV1beta1::Money, decorator: Google::Apis::GanV1beta1::Money::Representation
        
            property :percent_off, as: 'percentOff'
            property :percent_off_min, as: 'percentOffMin', class: Google::Apis::GanV1beta1::Money, decorator: Google::Apis::GanV1beta1::Money::Representation
        
            property :price_cut, as: 'priceCut', class: Google::Apis::GanV1beta1::Money, decorator: Google::Apis::GanV1beta1::Money::Representation
        
            property :price_cut_min, as: 'priceCutMin', class: Google::Apis::GanV1beta1::Money, decorator: Google::Apis::GanV1beta1::Money::Representation
        
            collection :promotion_codes, as: 'promotionCodes'
          end
        end
      end
      
      class Links
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :items, as: 'items', class: Google::Apis::GanV1beta1::Link, decorator: Google::Apis::GanV1beta1::Link::Representation
      
          property :kind, as: 'kind'
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class Money
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :amount, as: 'amount'
          property :currency_code, as: 'currencyCode'
        end
      end
      
      class Publisher
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :classification, as: 'classification'
          property :epc_ninety_day_average, as: 'epcNinetyDayAverage', class: Google::Apis::GanV1beta1::Money, decorator: Google::Apis::GanV1beta1::Money::Representation
      
          property :epc_seven_day_average, as: 'epcSevenDayAverage', class: Google::Apis::GanV1beta1::Money, decorator: Google::Apis::GanV1beta1::Money::Representation
      
          property :id, as: 'id'
          property :item, as: 'item', class: Google::Apis::GanV1beta1::Publisher, decorator: Google::Apis::GanV1beta1::Publisher::Representation
      
          property :join_date, as: 'joinDate', type: DateTime
      
          property :kind, as: 'kind'
          property :name, as: 'name'
          property :payout_rank, as: 'payoutRank'
          collection :sites, as: 'sites'
          property :status, as: 'status'
        end
      end
      
      class Publishers
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :items, as: 'items', class: Google::Apis::GanV1beta1::Publisher, decorator: Google::Apis::GanV1beta1::Publisher::Representation
      
          property :kind, as: 'kind'
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class Report
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :column_names, as: 'column_names'
          property :end_date, as: 'end_date'
          property :kind, as: 'kind'
          property :matching_row_count, as: 'matching_row_count'
          collection :rows, as: 'rows', :class => Array do
        include Representable::JSON::Collection
        items
      end
      
          property :start_date, as: 'start_date'
          collection :totals_rows, as: 'totals_rows', :class => Array do
        include Representable::JSON::Collection
        items
      end
      
          property :type, as: 'type'
        end
      end
    end
  end
end
