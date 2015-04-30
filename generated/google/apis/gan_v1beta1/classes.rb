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
      
      # An AdvertiserResource.
      class Advertiser
        include Google::Apis::Core::Hashable
      
        # True if the advertiser allows publisher created links, otherwise false.
        # Corresponds to the JSON property `allowPublisherCreatedLinks`
        # @return [Boolean]
        attr_accessor :allow_publisher_created_links
        alias_method :allow_publisher_created_links?, :allow_publisher_created_links
      
        # Category that this advertiser belongs to. A valid list of categories can be
        # found here: http://www.google.com/support/affiliatenetwork/advertiser/bin/
        # answer.py?hl=en&answer=107581
        # Corresponds to the JSON property `category`
        # @return [String]
        attr_accessor :category
      
        # The longest possible length of a commission (how long the cookies on the
        # customer's browser last before they expire).
        # Corresponds to the JSON property `commissionDuration`
        # @return [Fixnum]
        attr_accessor :commission_duration
      
        # Email that this advertiser would like publishers to contact them with.
        # Corresponds to the JSON property `contactEmail`
        # @return [String]
        attr_accessor :contact_email
      
        # Phone that this advertiser would like publishers to contact them with.
        # Corresponds to the JSON property `contactPhone`
        # @return [String]
        attr_accessor :contact_phone
      
        # The default link id for this advertiser.
        # Corresponds to the JSON property `defaultLinkId`
        # @return [String]
        attr_accessor :default_link_id
      
        # Description of the website the advertiser advertises from.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # An ApiMoneyProto.
        # Corresponds to the JSON property `epcNinetyDayAverage`
        # @return [Google::Apis::GanV1beta1::Money]
        attr_accessor :epc_ninety_day_average
      
        # An ApiMoneyProto.
        # Corresponds to the JSON property `epcSevenDayAverage`
        # @return [Google::Apis::GanV1beta1::Money]
        attr_accessor :epc_seven_day_average
      
        # The ID of this advertiser.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # An AdvertiserResource.
        # Corresponds to the JSON property `item`
        # @return [Google::Apis::GanV1beta1::Advertiser]
        attr_accessor :item
      
        # Date that this advertiser was approved as a Google Affiliate Network
        # advertiser.
        # Corresponds to the JSON property `joinDate`
        # @return [DateTime]
        attr_accessor :join_date
      
        # The kind for an advertiser.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # URL to the logo this advertiser uses on the Google Affiliate Network.
        # Corresponds to the JSON property `logoUrl`
        # @return [String]
        attr_accessor :logo_url
      
        # List of merchant center ids for this advertiser
        # Corresponds to the JSON property `merchantCenterIds`
        # @return [Array<String>]
        attr_accessor :merchant_center_ids
      
        # The name of this advertiser.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # A rank based on commissions paid to publishers over the past 90 days. A number
        # between 1 and 4 where 4 means the top quartile (most money paid) and 1 means
        # the bottom quartile (least money paid).
        # Corresponds to the JSON property `payoutRank`
        # @return [String]
        attr_accessor :payout_rank
      
        # Allows advertisers to submit product listings to Google Product Search.
        # Corresponds to the JSON property `productFeedsEnabled`
        # @return [Boolean]
        attr_accessor :product_feeds_enabled
        alias_method :product_feeds_enabled?, :product_feeds_enabled
      
        # List of redirect URLs for this advertiser
        # Corresponds to the JSON property `redirectDomains`
        # @return [Array<String>]
        attr_accessor :redirect_domains
      
        # URL of the website this advertiser advertises from.
        # Corresponds to the JSON property `siteUrl`
        # @return [String]
        attr_accessor :site_url
      
        # The status of the requesting publisher's relationship this advertiser.
        # Corresponds to the JSON property `status`
        # @return [String]
        attr_accessor :status
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @allow_publisher_created_links = args[:allow_publisher_created_links] unless args[:allow_publisher_created_links].nil?
          @category = args[:category] unless args[:category].nil?
          @commission_duration = args[:commission_duration] unless args[:commission_duration].nil?
          @contact_email = args[:contact_email] unless args[:contact_email].nil?
          @contact_phone = args[:contact_phone] unless args[:contact_phone].nil?
          @default_link_id = args[:default_link_id] unless args[:default_link_id].nil?
          @description = args[:description] unless args[:description].nil?
          @epc_ninety_day_average = args[:epc_ninety_day_average] unless args[:epc_ninety_day_average].nil?
          @epc_seven_day_average = args[:epc_seven_day_average] unless args[:epc_seven_day_average].nil?
          @id = args[:id] unless args[:id].nil?
          @item = args[:item] unless args[:item].nil?
          @join_date = args[:join_date] unless args[:join_date].nil?
          @kind = args[:kind] unless args[:kind].nil?
          @logo_url = args[:logo_url] unless args[:logo_url].nil?
          @merchant_center_ids = args[:merchant_center_ids] unless args[:merchant_center_ids].nil?
          @name = args[:name] unless args[:name].nil?
          @payout_rank = args[:payout_rank] unless args[:payout_rank].nil?
          @product_feeds_enabled = args[:product_feeds_enabled] unless args[:product_feeds_enabled].nil?
          @redirect_domains = args[:redirect_domains] unless args[:redirect_domains].nil?
          @site_url = args[:site_url] unless args[:site_url].nil?
          @status = args[:status] unless args[:status].nil?
        end
      end
      
      # 
      class Advertisers
        include Google::Apis::Core::Hashable
      
        # The advertiser list.
        # Corresponds to the JSON property `items`
        # @return [Array<Google::Apis::GanV1beta1::Advertiser>]
        attr_accessor :items
      
        # The kind for a page of advertisers.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # The 'pageToken' to pass to the next request to get the next page, if there are
        # more to retrieve.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @items = args[:items] unless args[:items].nil?
          @kind = args[:kind] unless args[:kind].nil?
          @next_page_token = args[:next_page_token] unless args[:next_page_token].nil?
        end
      end
      
      # A credit card offer. There are many possible result fields. We provide two
      # different views of the data, or "projections." The "full" projection includes
      # every result field. And the "summary" projection, which is the default,
      # includes a smaller subset of the fields. The fields included in the summary
      # projection are marked as such in their descriptions.
      class CcOffer
        include Google::Apis::Core::Hashable
      
        # More marketing copy about the card's benefits. A summary field.
        # Corresponds to the JSON property `additionalCardBenefits`
        # @return [Array<String>]
        attr_accessor :additional_card_benefits
      
        # Any extra fees levied on card holders.
        # Corresponds to the JSON property `additionalCardHolderFee`
        # @return [String]
        attr_accessor :additional_card_holder_fee
      
        # The youngest a recipient of this card may be.
        # Corresponds to the JSON property `ageMinimum`
        # @return [Float]
        attr_accessor :age_minimum
      
        # Text describing the details of the age minimum restriction.
        # Corresponds to the JSON property `ageMinimumDetails`
        # @return [String]
        attr_accessor :age_minimum_details
      
        # The ongoing annual fee, in dollars.
        # Corresponds to the JSON property `annualFee`
        # @return [Float]
        attr_accessor :annual_fee
      
        # Text describing the annual fee, including any difference for the first year. A
        # summary field.
        # Corresponds to the JSON property `annualFeeDisplay`
        # @return [String]
        attr_accessor :annual_fee_display
      
        # The largest number of units you may accumulate in a year.
        # Corresponds to the JSON property `annualRewardMaximum`
        # @return [Float]
        attr_accessor :annual_reward_maximum
      
        # Possible categories for this card, eg "Low Interest" or "Good." A summary
        # field.
        # Corresponds to the JSON property `approvedCategories`
        # @return [Array<String>]
        attr_accessor :approved_categories
      
        # Text describing the purchase APR. A summary field.
        # Corresponds to the JSON property `aprDisplay`
        # @return [String]
        attr_accessor :apr_display
      
        # Text describing how the balance is computed. A summary field.
        # Corresponds to the JSON property `balanceComputationMethod`
        # @return [String]
        attr_accessor :balance_computation_method
      
        # Text describing the terms for balance transfers. A summary field.
        # Corresponds to the JSON property `balanceTransferTerms`
        # @return [String]
        attr_accessor :balance_transfer_terms
      
        # For cards with rewards programs, extra circumstances whereby additional
        # rewards may be granted.
        # Corresponds to the JSON property `bonusRewards`
        # @return [Array<Google::Apis::GanV1beta1::CcOffer::BonusReward>]
        attr_accessor :bonus_rewards
      
        # If you get coverage when you use the card for the given activity, this field
        # describes it.
        # Corresponds to the JSON property `carRentalInsurance`
        # @return [String]
        attr_accessor :car_rental_insurance
      
        # A list of what the issuer thinks are the most important benefits of the card.
        # Usually summarizes the rewards program, if there is one. A summary field.
        # Corresponds to the JSON property `cardBenefits`
        # @return [Array<String>]
        attr_accessor :card_benefits
      
        # The issuer's name for the card, including any trademark or service mark
        # designators. A summary field.
        # Corresponds to the JSON property `cardName`
        # @return [String]
        attr_accessor :card_name
      
        # What kind of credit card this is, for example secured or unsecured.
        # Corresponds to the JSON property `cardType`
        # @return [String]
        attr_accessor :card_type
      
        # Text describing the terms for cash advances. A summary field.
        # Corresponds to the JSON property `cashAdvanceTerms`
        # @return [String]
        attr_accessor :cash_advance_terms
      
        # The high end for credit limits the issuer imposes on recipients of this card.
        # Corresponds to the JSON property `creditLimitMax`
        # @return [Float]
        attr_accessor :credit_limit_max
      
        # The low end for credit limits the issuer imposes on recipients of this card.
        # Corresponds to the JSON property `creditLimitMin`
        # @return [Float]
        attr_accessor :credit_limit_min
      
        # Text describing the credit ratings required for recipients of this card, for
        # example "Excellent/Good." A summary field.
        # Corresponds to the JSON property `creditRatingDisplay`
        # @return [String]
        attr_accessor :credit_rating_display
      
        # Fees for defaulting on your payments.
        # Corresponds to the JSON property `defaultFees`
        # @return [Array<Google::Apis::GanV1beta1::CcOffer::DefaultFee>]
        attr_accessor :default_fees
      
        # A notice that, if present, is referenced via an asterisk by many of the other
        # summary fields. If this field is present, it will always start with an
        # asterisk ("*"), and must be prominently displayed with the offer. A summary
        # field.
        # Corresponds to the JSON property `disclaimer`
        # @return [String]
        attr_accessor :disclaimer
      
        # If you get coverage when you use the card for the given activity, this field
        # describes it.
        # Corresponds to the JSON property `emergencyInsurance`
        # @return [String]
        attr_accessor :emergency_insurance
      
        # Whether this card is only available to existing customers of the issuer.
        # Corresponds to the JSON property `existingCustomerOnly`
        # @return [Boolean]
        attr_accessor :existing_customer_only
        alias_method :existing_customer_only?, :existing_customer_only
      
        # If you get coverage when you use the card for the given activity, this field
        # describes it.
        # Corresponds to the JSON property `extendedWarranty`
        # @return [String]
        attr_accessor :extended_warranty
      
        # The annual fee for the first year, if different from the ongoing fee. Optional.
        # Corresponds to the JSON property `firstYearAnnualFee`
        # @return [Float]
        attr_accessor :first_year_annual_fee
      
        # If you get coverage when you use the card for the given activity, this field
        # describes it.
        # Corresponds to the JSON property `flightAccidentInsurance`
        # @return [String]
        attr_accessor :flight_accident_insurance
      
        # Fee for each transaction involving a foreign currency.
        # Corresponds to the JSON property `foreignCurrencyTransactionFee`
        # @return [String]
        attr_accessor :foreign_currency_transaction_fee
      
        # If you get coverage when you use the card for the given activity, this field
        # describes it.
        # Corresponds to the JSON property `fraudLiability`
        # @return [String]
        attr_accessor :fraud_liability
      
        # Text describing the grace period before finance charges apply. A summary field.
        # Corresponds to the JSON property `gracePeriodDisplay`
        # @return [String]
        attr_accessor :grace_period_display
      
        # The link to the image of the card that is shown on Connect Commerce. A summary
        # field.
        # Corresponds to the JSON property `imageUrl`
        # @return [String]
        attr_accessor :image_url
      
        # Fee for setting up the card.
        # Corresponds to the JSON property `initialSetupAndProcessingFee`
        # @return [String]
        attr_accessor :initial_setup_and_processing_fee
      
        # Text describing the terms for introductory period balance transfers. A summary
        # field.
        # Corresponds to the JSON property `introBalanceTransferTerms`
        # @return [String]
        attr_accessor :intro_balance_transfer_terms
      
        # Text describing the terms for introductory period cash advances. A summary
        # field.
        # Corresponds to the JSON property `introCashAdvanceTerms`
        # @return [String]
        attr_accessor :intro_cash_advance_terms
      
        # Text describing the terms for introductory period purchases. A summary field.
        # Corresponds to the JSON property `introPurchaseTerms`
        # @return [String]
        attr_accessor :intro_purchase_terms
      
        # Name of card issuer. A summary field.
        # Corresponds to the JSON property `issuer`
        # @return [String]
        attr_accessor :issuer
      
        # The Google Affiliate Network ID of the advertiser making this offer.
        # Corresponds to the JSON property `issuerId`
        # @return [String]
        attr_accessor :issuer_id
      
        # The generic link to the issuer's site.
        # Corresponds to the JSON property `issuerWebsite`
        # @return [String]
        attr_accessor :issuer_website
      
        # The kind for one credit card offer. A summary field.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # The link to the issuer's page for this card. A summary field.
        # Corresponds to the JSON property `landingPageUrl`
        # @return [String]
        attr_accessor :landing_page_url
      
        # Text describing how much a late payment will cost, eg "up to $35." A summary
        # field.
        # Corresponds to the JSON property `latePaymentFee`
        # @return [String]
        attr_accessor :late_payment_fee
      
        # If you get coverage when you use the card for the given activity, this field
        # describes it.
        # Corresponds to the JSON property `luggageInsurance`
        # @return [String]
        attr_accessor :luggage_insurance
      
        # The highest interest rate the issuer charges on this card. Expressed as an
        # absolute number, not as a percentage.
        # Corresponds to the JSON property `maxPurchaseRate`
        # @return [Float]
        attr_accessor :max_purchase_rate
      
        # The lowest interest rate the issuer charges on this card. Expressed as an
        # absolute number, not as a percentage.
        # Corresponds to the JSON property `minPurchaseRate`
        # @return [Float]
        attr_accessor :min_purchase_rate
      
        # Text describing how much missing the grace period will cost.
        # Corresponds to the JSON property `minimumFinanceCharge`
        # @return [String]
        attr_accessor :minimum_finance_charge
      
        # Which network (eg Visa) the card belongs to. A summary field.
        # Corresponds to the JSON property `network`
        # @return [String]
        attr_accessor :network
      
        # This offer's ID. A summary field.
        # Corresponds to the JSON property `offerId`
        # @return [String]
        attr_accessor :offer_id
      
        # Whether a cash reward program lets you get cash back sooner than end of year
        # or other longish period.
        # Corresponds to the JSON property `offersImmediateCashReward`
        # @return [Boolean]
        attr_accessor :offers_immediate_cash_reward
        alias_method :offers_immediate_cash_reward?, :offers_immediate_cash_reward
      
        # Fee for exceeding the card's charge limit.
        # Corresponds to the JSON property `overLimitFee`
        # @return [String]
        attr_accessor :over_limit_fee
      
        # Categories in which the issuer does not wish the card to be displayed. A
        # summary field.
        # Corresponds to the JSON property `prohibitedCategories`
        # @return [Array<String>]
        attr_accessor :prohibited_categories
      
        # Text describing any additional details for the purchase rate. A summary field.
        # Corresponds to the JSON property `purchaseRateAdditionalDetails`
        # @return [String]
        attr_accessor :purchase_rate_additional_details
      
        # Fixed or variable.
        # Corresponds to the JSON property `purchaseRateType`
        # @return [String]
        attr_accessor :purchase_rate_type
      
        # Text describing the fee for a payment that doesn't clear. A summary field.
        # Corresponds to the JSON property `returnedPaymentFee`
        # @return [String]
        attr_accessor :returned_payment_fee
      
        # The company that redeems the rewards, if different from the issuer.
        # Corresponds to the JSON property `rewardPartner`
        # @return [String]
        attr_accessor :reward_partner
      
        # For cards with rewards programs, the unit of reward. For example, miles, cash
        # back, points.
        # Corresponds to the JSON property `rewardUnit`
        # @return [String]
        attr_accessor :reward_unit
      
        # For cards with rewards programs, detailed rules about how the program works.
        # Corresponds to the JSON property `rewards`
        # @return [Array<Google::Apis::GanV1beta1::CcOffer::Reward>]
        attr_accessor :rewards
      
        # Whether accumulated rewards ever expire.
        # Corresponds to the JSON property `rewardsExpire`
        # @return [Boolean]
        attr_accessor :rewards_expire
        alias_method :rewards_expire?, :rewards_expire
      
        # For airline miles rewards, tells whether blackout dates apply to the miles.
        # Corresponds to the JSON property `rewardsHaveBlackoutDates`
        # @return [Boolean]
        attr_accessor :rewards_have_blackout_dates
        alias_method :rewards_have_blackout_dates?, :rewards_have_blackout_dates
      
        # Fee for requesting a copy of your statement.
        # Corresponds to the JSON property `statementCopyFee`
        # @return [String]
        attr_accessor :statement_copy_fee
      
        # The link to ping to register a click on this offer. A summary field.
        # Corresponds to the JSON property `trackingUrl`
        # @return [String]
        attr_accessor :tracking_url
      
        # If you get coverage when you use the card for the given activity, this field
        # describes it.
        # Corresponds to the JSON property `travelInsurance`
        # @return [String]
        attr_accessor :travel_insurance
      
        # When variable rates were last updated.
        # Corresponds to the JSON property `variableRatesLastUpdated`
        # @return [String]
        attr_accessor :variable_rates_last_updated
      
        # How often variable rates are updated.
        # Corresponds to the JSON property `variableRatesUpdateFrequency`
        # @return [String]
        attr_accessor :variable_rates_update_frequency
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @additional_card_benefits = args[:additional_card_benefits] unless args[:additional_card_benefits].nil?
          @additional_card_holder_fee = args[:additional_card_holder_fee] unless args[:additional_card_holder_fee].nil?
          @age_minimum = args[:age_minimum] unless args[:age_minimum].nil?
          @age_minimum_details = args[:age_minimum_details] unless args[:age_minimum_details].nil?
          @annual_fee = args[:annual_fee] unless args[:annual_fee].nil?
          @annual_fee_display = args[:annual_fee_display] unless args[:annual_fee_display].nil?
          @annual_reward_maximum = args[:annual_reward_maximum] unless args[:annual_reward_maximum].nil?
          @approved_categories = args[:approved_categories] unless args[:approved_categories].nil?
          @apr_display = args[:apr_display] unless args[:apr_display].nil?
          @balance_computation_method = args[:balance_computation_method] unless args[:balance_computation_method].nil?
          @balance_transfer_terms = args[:balance_transfer_terms] unless args[:balance_transfer_terms].nil?
          @bonus_rewards = args[:bonus_rewards] unless args[:bonus_rewards].nil?
          @car_rental_insurance = args[:car_rental_insurance] unless args[:car_rental_insurance].nil?
          @card_benefits = args[:card_benefits] unless args[:card_benefits].nil?
          @card_name = args[:card_name] unless args[:card_name].nil?
          @card_type = args[:card_type] unless args[:card_type].nil?
          @cash_advance_terms = args[:cash_advance_terms] unless args[:cash_advance_terms].nil?
          @credit_limit_max = args[:credit_limit_max] unless args[:credit_limit_max].nil?
          @credit_limit_min = args[:credit_limit_min] unless args[:credit_limit_min].nil?
          @credit_rating_display = args[:credit_rating_display] unless args[:credit_rating_display].nil?
          @default_fees = args[:default_fees] unless args[:default_fees].nil?
          @disclaimer = args[:disclaimer] unless args[:disclaimer].nil?
          @emergency_insurance = args[:emergency_insurance] unless args[:emergency_insurance].nil?
          @existing_customer_only = args[:existing_customer_only] unless args[:existing_customer_only].nil?
          @extended_warranty = args[:extended_warranty] unless args[:extended_warranty].nil?
          @first_year_annual_fee = args[:first_year_annual_fee] unless args[:first_year_annual_fee].nil?
          @flight_accident_insurance = args[:flight_accident_insurance] unless args[:flight_accident_insurance].nil?
          @foreign_currency_transaction_fee = args[:foreign_currency_transaction_fee] unless args[:foreign_currency_transaction_fee].nil?
          @fraud_liability = args[:fraud_liability] unless args[:fraud_liability].nil?
          @grace_period_display = args[:grace_period_display] unless args[:grace_period_display].nil?
          @image_url = args[:image_url] unless args[:image_url].nil?
          @initial_setup_and_processing_fee = args[:initial_setup_and_processing_fee] unless args[:initial_setup_and_processing_fee].nil?
          @intro_balance_transfer_terms = args[:intro_balance_transfer_terms] unless args[:intro_balance_transfer_terms].nil?
          @intro_cash_advance_terms = args[:intro_cash_advance_terms] unless args[:intro_cash_advance_terms].nil?
          @intro_purchase_terms = args[:intro_purchase_terms] unless args[:intro_purchase_terms].nil?
          @issuer = args[:issuer] unless args[:issuer].nil?
          @issuer_id = args[:issuer_id] unless args[:issuer_id].nil?
          @issuer_website = args[:issuer_website] unless args[:issuer_website].nil?
          @kind = args[:kind] unless args[:kind].nil?
          @landing_page_url = args[:landing_page_url] unless args[:landing_page_url].nil?
          @late_payment_fee = args[:late_payment_fee] unless args[:late_payment_fee].nil?
          @luggage_insurance = args[:luggage_insurance] unless args[:luggage_insurance].nil?
          @max_purchase_rate = args[:max_purchase_rate] unless args[:max_purchase_rate].nil?
          @min_purchase_rate = args[:min_purchase_rate] unless args[:min_purchase_rate].nil?
          @minimum_finance_charge = args[:minimum_finance_charge] unless args[:minimum_finance_charge].nil?
          @network = args[:network] unless args[:network].nil?
          @offer_id = args[:offer_id] unless args[:offer_id].nil?
          @offers_immediate_cash_reward = args[:offers_immediate_cash_reward] unless args[:offers_immediate_cash_reward].nil?
          @over_limit_fee = args[:over_limit_fee] unless args[:over_limit_fee].nil?
          @prohibited_categories = args[:prohibited_categories] unless args[:prohibited_categories].nil?
          @purchase_rate_additional_details = args[:purchase_rate_additional_details] unless args[:purchase_rate_additional_details].nil?
          @purchase_rate_type = args[:purchase_rate_type] unless args[:purchase_rate_type].nil?
          @returned_payment_fee = args[:returned_payment_fee] unless args[:returned_payment_fee].nil?
          @reward_partner = args[:reward_partner] unless args[:reward_partner].nil?
          @reward_unit = args[:reward_unit] unless args[:reward_unit].nil?
          @rewards = args[:rewards] unless args[:rewards].nil?
          @rewards_expire = args[:rewards_expire] unless args[:rewards_expire].nil?
          @rewards_have_blackout_dates = args[:rewards_have_blackout_dates] unless args[:rewards_have_blackout_dates].nil?
          @statement_copy_fee = args[:statement_copy_fee] unless args[:statement_copy_fee].nil?
          @tracking_url = args[:tracking_url] unless args[:tracking_url].nil?
          @travel_insurance = args[:travel_insurance] unless args[:travel_insurance].nil?
          @variable_rates_last_updated = args[:variable_rates_last_updated] unless args[:variable_rates_last_updated].nil?
          @variable_rates_update_frequency = args[:variable_rates_update_frequency] unless args[:variable_rates_update_frequency].nil?
        end
        
        # 
        class BonusReward
          include Google::Apis::Core::Hashable
        
          # How many units of reward will be granted.
          # Corresponds to the JSON property `amount`
          # @return [Float]
          attr_accessor :amount
        
          # The circumstances under which this rule applies, for example, booking a flight
          # via Orbitz.
          # Corresponds to the JSON property `details`
          # @return [String]
          attr_accessor :details
        
          def initialize(**args)
             update!(**args)
          end
        
          # Update properties of this object
          def update!(**args)
            @amount = args[:amount] unless args[:amount].nil?
            @details = args[:details] unless args[:details].nil?
          end
        end
        
        # 
        class DefaultFee
          include Google::Apis::Core::Hashable
        
          # The type of charge, for example Purchases.
          # Corresponds to the JSON property `category`
          # @return [String]
          attr_accessor :category
        
          # The highest rate the issuer may charge for defaulting on debt in this category.
          # Expressed as an absolute number, not as a percentage.
          # Corresponds to the JSON property `maxRate`
          # @return [Float]
          attr_accessor :max_rate
        
          # The lowest rate the issuer may charge for defaulting on debt in this category.
          # Expressed as an absolute number, not as a percentage.
          # Corresponds to the JSON property `minRate`
          # @return [Float]
          attr_accessor :min_rate
        
          # Fixed or variable.
          # Corresponds to the JSON property `rateType`
          # @return [String]
          attr_accessor :rate_type
        
          def initialize(**args)
             update!(**args)
          end
        
          # Update properties of this object
          def update!(**args)
            @category = args[:category] unless args[:category].nil?
            @max_rate = args[:max_rate] unless args[:max_rate].nil?
            @min_rate = args[:min_rate] unless args[:min_rate].nil?
            @rate_type = args[:rate_type] unless args[:rate_type].nil?
          end
        end
        
        # 
        class Reward
          include Google::Apis::Core::Hashable
        
          # Other limits, for example, if this rule only applies during an introductory
          # period.
          # Corresponds to the JSON property `additionalDetails`
          # @return [String]
          attr_accessor :additional_details
        
          # The number of units rewarded per purchase dollar.
          # Corresponds to the JSON property `amount`
          # @return [Float]
          attr_accessor :amount
        
          # The kind of purchases covered by this rule.
          # Corresponds to the JSON property `category`
          # @return [String]
          attr_accessor :category
        
          # How long rewards granted by this rule last.
          # Corresponds to the JSON property `expirationMonths`
          # @return [Float]
          attr_accessor :expiration_months
        
          # The maximum purchase amount in the given category for this rule to apply.
          # Corresponds to the JSON property `maxRewardTier`
          # @return [Float]
          attr_accessor :max_reward_tier
        
          # The minimum purchase amount in the given category before this rule applies.
          # Corresponds to the JSON property `minRewardTier`
          # @return [Float]
          attr_accessor :min_reward_tier
        
          def initialize(**args)
             update!(**args)
          end
        
          # Update properties of this object
          def update!(**args)
            @additional_details = args[:additional_details] unless args[:additional_details].nil?
            @amount = args[:amount] unless args[:amount].nil?
            @category = args[:category] unless args[:category].nil?
            @expiration_months = args[:expiration_months] unless args[:expiration_months].nil?
            @max_reward_tier = args[:max_reward_tier] unless args[:max_reward_tier].nil?
            @min_reward_tier = args[:min_reward_tier] unless args[:min_reward_tier].nil?
          end
        end
      end
      
      # 
      class CcOffers
        include Google::Apis::Core::Hashable
      
        # The credit card offers.
        # Corresponds to the JSON property `items`
        # @return [Array<Google::Apis::GanV1beta1::CcOffer>]
        attr_accessor :items
      
        # The kind for a page of credit card offers.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @items = args[:items] unless args[:items].nil?
          @kind = args[:kind] unless args[:kind].nil?
        end
      end
      
      # An EventResource.
      class Event
        include Google::Apis::Core::Hashable
      
        # The ID of advertiser for this event.
        # Corresponds to the JSON property `advertiserId`
        # @return [String]
        attr_accessor :advertiser_id
      
        # The name of the advertiser for this event.
        # Corresponds to the JSON property `advertiserName`
        # @return [String]
        attr_accessor :advertiser_name
      
        # The charge ID for this event. Only returned for charge events.
        # Corresponds to the JSON property `chargeId`
        # @return [String]
        attr_accessor :charge_id
      
        # Charge type of the event (other|slotting_fee|monthly_minimum|tier_bonus|debit|
        # credit). Only returned for charge events.
        # Corresponds to the JSON property `chargeType`
        # @return [String]
        attr_accessor :charge_type
      
        # An ApiMoneyProto.
        # Corresponds to the JSON property `commissionableSales`
        # @return [Google::Apis::GanV1beta1::Money]
        attr_accessor :commissionable_sales
      
        # An ApiMoneyProto.
        # Corresponds to the JSON property `earnings`
        # @return [Google::Apis::GanV1beta1::Money]
        attr_accessor :earnings
      
        # The date-time this event was initiated as a RFC 3339 date-time value.
        # Corresponds to the JSON property `eventDate`
        # @return [DateTime]
        attr_accessor :event_date
      
        # The kind for one event.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # The ID of the member attached to this event. Only returned for conversion
        # events.
        # Corresponds to the JSON property `memberId`
        # @return [String]
        attr_accessor :member_id
      
        # The date-time this event was last modified as a RFC 3339 date-time value.
        # Corresponds to the JSON property `modifyDate`
        # @return [DateTime]
        attr_accessor :modify_date
      
        # An ApiMoneyProto.
        # Corresponds to the JSON property `networkFee`
        # @return [Google::Apis::GanV1beta1::Money]
        attr_accessor :network_fee
      
        # The order ID for this event. Only returned for conversion events.
        # Corresponds to the JSON property `orderId`
        # @return [String]
        attr_accessor :order_id
      
        # Products associated with the event.
        # Corresponds to the JSON property `products`
        # @return [Array<Google::Apis::GanV1beta1::Event::Product>]
        attr_accessor :products
      
        # An ApiMoneyProto.
        # Corresponds to the JSON property `publisherFee`
        # @return [Google::Apis::GanV1beta1::Money]
        attr_accessor :publisher_fee
      
        # The ID of the publisher for this event.
        # Corresponds to the JSON property `publisherId`
        # @return [String]
        attr_accessor :publisher_id
      
        # The name of the publisher for this event.
        # Corresponds to the JSON property `publisherName`
        # @return [String]
        attr_accessor :publisher_name
      
        # Status of the event (active|canceled). Only returned for charge and conversion
        # events.
        # Corresponds to the JSON property `status`
        # @return [String]
        attr_accessor :status
      
        # Type of the event (action|transaction|charge).
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @advertiser_id = args[:advertiser_id] unless args[:advertiser_id].nil?
          @advertiser_name = args[:advertiser_name] unless args[:advertiser_name].nil?
          @charge_id = args[:charge_id] unless args[:charge_id].nil?
          @charge_type = args[:charge_type] unless args[:charge_type].nil?
          @commissionable_sales = args[:commissionable_sales] unless args[:commissionable_sales].nil?
          @earnings = args[:earnings] unless args[:earnings].nil?
          @event_date = args[:event_date] unless args[:event_date].nil?
          @kind = args[:kind] unless args[:kind].nil?
          @member_id = args[:member_id] unless args[:member_id].nil?
          @modify_date = args[:modify_date] unless args[:modify_date].nil?
          @network_fee = args[:network_fee] unless args[:network_fee].nil?
          @order_id = args[:order_id] unless args[:order_id].nil?
          @products = args[:products] unless args[:products].nil?
          @publisher_fee = args[:publisher_fee] unless args[:publisher_fee].nil?
          @publisher_id = args[:publisher_id] unless args[:publisher_id].nil?
          @publisher_name = args[:publisher_name] unless args[:publisher_name].nil?
          @status = args[:status] unless args[:status].nil?
          @type = args[:type] unless args[:type].nil?
        end
        
        # 
        class Product
          include Google::Apis::Core::Hashable
        
          # Id of the category this product belongs to.
          # Corresponds to the JSON property `categoryId`
          # @return [String]
          attr_accessor :category_id
        
          # Name of the category this product belongs to.
          # Corresponds to the JSON property `categoryName`
          # @return [String]
          attr_accessor :category_name
        
          # An ApiMoneyProto.
          # Corresponds to the JSON property `earnings`
          # @return [Google::Apis::GanV1beta1::Money]
          attr_accessor :earnings
        
          # An ApiMoneyProto.
          # Corresponds to the JSON property `networkFee`
          # @return [Google::Apis::GanV1beta1::Money]
          attr_accessor :network_fee
        
          # An ApiMoneyProto.
          # Corresponds to the JSON property `publisherFee`
          # @return [Google::Apis::GanV1beta1::Money]
          attr_accessor :publisher_fee
        
          # Quantity of this product bought/exchanged.
          # Corresponds to the JSON property `quantity`
          # @return [String]
          attr_accessor :quantity
        
          # Sku of this product.
          # Corresponds to the JSON property `sku`
          # @return [String]
          attr_accessor :sku
        
          # Sku name of this product.
          # Corresponds to the JSON property `skuName`
          # @return [String]
          attr_accessor :sku_name
        
          # An ApiMoneyProto.
          # Corresponds to the JSON property `unitPrice`
          # @return [Google::Apis::GanV1beta1::Money]
          attr_accessor :unit_price
        
          def initialize(**args)
             update!(**args)
          end
        
          # Update properties of this object
          def update!(**args)
            @category_id = args[:category_id] unless args[:category_id].nil?
            @category_name = args[:category_name] unless args[:category_name].nil?
            @earnings = args[:earnings] unless args[:earnings].nil?
            @network_fee = args[:network_fee] unless args[:network_fee].nil?
            @publisher_fee = args[:publisher_fee] unless args[:publisher_fee].nil?
            @quantity = args[:quantity] unless args[:quantity].nil?
            @sku = args[:sku] unless args[:sku].nil?
            @sku_name = args[:sku_name] unless args[:sku_name].nil?
            @unit_price = args[:unit_price] unless args[:unit_price].nil?
          end
        end
      end
      
      # 
      class Events
        include Google::Apis::Core::Hashable
      
        # The event list.
        # Corresponds to the JSON property `items`
        # @return [Array<Google::Apis::GanV1beta1::Event>]
        attr_accessor :items
      
        # The kind for a page of events.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # The 'pageToken' to pass to the next request to get the next page, if there are
        # more to retrieve.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @items = args[:items] unless args[:items].nil?
          @kind = args[:kind] unless args[:kind].nil?
          @next_page_token = args[:next_page_token] unless args[:next_page_token].nil?
        end
      end
      
      # A LinkResource.
      class Link
        include Google::Apis::Core::Hashable
      
        # The advertiser id for the advertiser who owns this link.
        # Corresponds to the JSON property `advertiserId`
        # @return [String]
        attr_accessor :advertiser_id
      
        # Authorship
        # Corresponds to the JSON property `authorship`
        # @return [String]
        attr_accessor :authorship
      
        # Availability.
        # Corresponds to the JSON property `availability`
        # @return [String]
        attr_accessor :availability
      
        # Tracking url for clicks.
        # Corresponds to the JSON property `clickTrackingUrl`
        # @return [String]
        attr_accessor :click_tracking_url
      
        # Date that this link was created.
        # Corresponds to the JSON property `createDate`
        # @return [DateTime]
        attr_accessor :create_date
      
        # Description.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # The destination URL for the link.
        # Corresponds to the JSON property `destinationUrl`
        # @return [String]
        attr_accessor :destination_url
      
        # Duration
        # Corresponds to the JSON property `duration`
        # @return [String]
        attr_accessor :duration
      
        # Date that this link becomes inactive.
        # Corresponds to the JSON property `endDate`
        # @return [DateTime]
        attr_accessor :end_date
      
        # An ApiMoneyProto.
        # Corresponds to the JSON property `epcNinetyDayAverage`
        # @return [Google::Apis::GanV1beta1::Money]
        attr_accessor :epc_ninety_day_average
      
        # An ApiMoneyProto.
        # Corresponds to the JSON property `epcSevenDayAverage`
        # @return [Google::Apis::GanV1beta1::Money]
        attr_accessor :epc_seven_day_average
      
        # The ID of this link.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # image alt text.
        # Corresponds to the JSON property `imageAltText`
        # @return [String]
        attr_accessor :image_alt_text
      
        # Tracking url for impressions.
        # Corresponds to the JSON property `impressionTrackingUrl`
        # @return [String]
        attr_accessor :impression_tracking_url
      
        # Flag for if this link is active.
        # Corresponds to the JSON property `isActive`
        # @return [Boolean]
        attr_accessor :is_active
        alias_method :is_active?, :is_active
      
        # The kind for one entity.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # The link type.
        # Corresponds to the JSON property `linkType`
        # @return [String]
        attr_accessor :link_type
      
        # The logical name for this link.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Promotion Type
        # Corresponds to the JSON property `promotionType`
        # @return [String]
        attr_accessor :promotion_type
      
        # Special offers on the link.
        # Corresponds to the JSON property `specialOffers`
        # @return [Google::Apis::GanV1beta1::Link::SpecialOffers]
        attr_accessor :special_offers
      
        # Date that this link becomes active.
        # Corresponds to the JSON property `startDate`
        # @return [DateTime]
        attr_accessor :start_date
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @advertiser_id = args[:advertiser_id] unless args[:advertiser_id].nil?
          @authorship = args[:authorship] unless args[:authorship].nil?
          @availability = args[:availability] unless args[:availability].nil?
          @click_tracking_url = args[:click_tracking_url] unless args[:click_tracking_url].nil?
          @create_date = args[:create_date] unless args[:create_date].nil?
          @description = args[:description] unless args[:description].nil?
          @destination_url = args[:destination_url] unless args[:destination_url].nil?
          @duration = args[:duration] unless args[:duration].nil?
          @end_date = args[:end_date] unless args[:end_date].nil?
          @epc_ninety_day_average = args[:epc_ninety_day_average] unless args[:epc_ninety_day_average].nil?
          @epc_seven_day_average = args[:epc_seven_day_average] unless args[:epc_seven_day_average].nil?
          @id = args[:id] unless args[:id].nil?
          @image_alt_text = args[:image_alt_text] unless args[:image_alt_text].nil?
          @impression_tracking_url = args[:impression_tracking_url] unless args[:impression_tracking_url].nil?
          @is_active = args[:is_active] unless args[:is_active].nil?
          @kind = args[:kind] unless args[:kind].nil?
          @link_type = args[:link_type] unless args[:link_type].nil?
          @name = args[:name] unless args[:name].nil?
          @promotion_type = args[:promotion_type] unless args[:promotion_type].nil?
          @special_offers = args[:special_offers] unless args[:special_offers].nil?
          @start_date = args[:start_date] unless args[:start_date].nil?
        end
        
        # Special offers on the link.
        class SpecialOffers
          include Google::Apis::Core::Hashable
        
          # Whether there is a free gift
          # Corresponds to the JSON property `freeGift`
          # @return [Boolean]
          attr_accessor :free_gift
          alias_method :free_gift?, :free_gift
        
          # Whether there is free shipping
          # Corresponds to the JSON property `freeShipping`
          # @return [Boolean]
          attr_accessor :free_shipping
          alias_method :free_shipping?, :free_shipping
        
          # An ApiMoneyProto.
          # Corresponds to the JSON property `freeShippingMin`
          # @return [Google::Apis::GanV1beta1::Money]
          attr_accessor :free_shipping_min
        
          # Percent off on the purchase
          # Corresponds to the JSON property `percentOff`
          # @return [Float]
          attr_accessor :percent_off
        
          # An ApiMoneyProto.
          # Corresponds to the JSON property `percentOffMin`
          # @return [Google::Apis::GanV1beta1::Money]
          attr_accessor :percent_off_min
        
          # An ApiMoneyProto.
          # Corresponds to the JSON property `priceCut`
          # @return [Google::Apis::GanV1beta1::Money]
          attr_accessor :price_cut
        
          # An ApiMoneyProto.
          # Corresponds to the JSON property `priceCutMin`
          # @return [Google::Apis::GanV1beta1::Money]
          attr_accessor :price_cut_min
        
          # List of promotion code associated with the link
          # Corresponds to the JSON property `promotionCodes`
          # @return [Array<String>]
          attr_accessor :promotion_codes
        
          def initialize(**args)
             update!(**args)
          end
        
          # Update properties of this object
          def update!(**args)
            @free_gift = args[:free_gift] unless args[:free_gift].nil?
            @free_shipping = args[:free_shipping] unless args[:free_shipping].nil?
            @free_shipping_min = args[:free_shipping_min] unless args[:free_shipping_min].nil?
            @percent_off = args[:percent_off] unless args[:percent_off].nil?
            @percent_off_min = args[:percent_off_min] unless args[:percent_off_min].nil?
            @price_cut = args[:price_cut] unless args[:price_cut].nil?
            @price_cut_min = args[:price_cut_min] unless args[:price_cut_min].nil?
            @promotion_codes = args[:promotion_codes] unless args[:promotion_codes].nil?
          end
        end
      end
      
      # 
      class Links
        include Google::Apis::Core::Hashable
      
        # The links.
        # Corresponds to the JSON property `items`
        # @return [Array<Google::Apis::GanV1beta1::Link>]
        attr_accessor :items
      
        # The kind for a page of links.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # The next page token.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @items = args[:items] unless args[:items].nil?
          @kind = args[:kind] unless args[:kind].nil?
          @next_page_token = args[:next_page_token] unless args[:next_page_token].nil?
        end
      end
      
      # An ApiMoneyProto.
      class Money
        include Google::Apis::Core::Hashable
      
        # The amount of money.
        # Corresponds to the JSON property `amount`
        # @return [Float]
        attr_accessor :amount
      
        # The 3-letter code of the currency in question.
        # Corresponds to the JSON property `currencyCode`
        # @return [String]
        attr_accessor :currency_code
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @amount = args[:amount] unless args[:amount].nil?
          @currency_code = args[:currency_code] unless args[:currency_code].nil?
        end
      end
      
      # A PublisherResource.
      class Publisher
        include Google::Apis::Core::Hashable
      
        # Classification that this publisher belongs to. See this link for all publisher
        # classifications: http://www.google.com/support/affiliatenetwork/advertiser/bin/
        # answer.py?hl=en&answer=107625&ctx=cb&src=cb&cbid=-k5fihzthfaik&cbrank=4
        # Corresponds to the JSON property `classification`
        # @return [String]
        attr_accessor :classification
      
        # An ApiMoneyProto.
        # Corresponds to the JSON property `epcNinetyDayAverage`
        # @return [Google::Apis::GanV1beta1::Money]
        attr_accessor :epc_ninety_day_average
      
        # An ApiMoneyProto.
        # Corresponds to the JSON property `epcSevenDayAverage`
        # @return [Google::Apis::GanV1beta1::Money]
        attr_accessor :epc_seven_day_average
      
        # The ID of this publisher.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # A PublisherResource.
        # Corresponds to the JSON property `item`
        # @return [Google::Apis::GanV1beta1::Publisher]
        attr_accessor :item
      
        # Date that this publisher was approved as a Google Affiliate Network publisher.
        # Corresponds to the JSON property `joinDate`
        # @return [DateTime]
        attr_accessor :join_date
      
        # The kind for a publisher.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # The name of this publisher.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # A rank based on commissions paid to this publisher over the past 90 days. A
        # number between 1 and 4 where 4 means the top quartile (most money paid) and 1
        # means the bottom quartile (least money paid).
        # Corresponds to the JSON property `payoutRank`
        # @return [String]
        attr_accessor :payout_rank
      
        # Websites that this publisher uses to advertise.
        # Corresponds to the JSON property `sites`
        # @return [Array<String>]
        attr_accessor :sites
      
        # The status of the requesting advertiser's relationship with this publisher.
        # Corresponds to the JSON property `status`
        # @return [String]
        attr_accessor :status
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @classification = args[:classification] unless args[:classification].nil?
          @epc_ninety_day_average = args[:epc_ninety_day_average] unless args[:epc_ninety_day_average].nil?
          @epc_seven_day_average = args[:epc_seven_day_average] unless args[:epc_seven_day_average].nil?
          @id = args[:id] unless args[:id].nil?
          @item = args[:item] unless args[:item].nil?
          @join_date = args[:join_date] unless args[:join_date].nil?
          @kind = args[:kind] unless args[:kind].nil?
          @name = args[:name] unless args[:name].nil?
          @payout_rank = args[:payout_rank] unless args[:payout_rank].nil?
          @sites = args[:sites] unless args[:sites].nil?
          @status = args[:status] unless args[:status].nil?
        end
      end
      
      # 
      class Publishers
        include Google::Apis::Core::Hashable
      
        # The entity list.
        # Corresponds to the JSON property `items`
        # @return [Array<Google::Apis::GanV1beta1::Publisher>]
        attr_accessor :items
      
        # The kind for a page of entities.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # The 'pageToken' to pass to the next request to get the next page, if there are
        # more to retrieve.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @items = args[:items] unless args[:items].nil?
          @kind = args[:kind] unless args[:kind].nil?
          @next_page_token = args[:next_page_token] unless args[:next_page_token].nil?
        end
      end
      
      # A ReportResource representing a report of a certain type either for an
      # advertiser or publisher.
      class Report
        include Google::Apis::Core::Hashable
      
        # The column names for the report
        # Corresponds to the JSON property `column_names`
        # @return [Array<String>]
        attr_accessor :column_names
      
        # The end of the date range for this report, exclusive.
        # Corresponds to the JSON property `end_date`
        # @return [String]
        attr_accessor :end_date
      
        # The kind for a report.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # The number of matching rows before paging is applied.
        # Corresponds to the JSON property `matching_row_count`
        # @return [String]
        attr_accessor :matching_row_count
      
        # The rows of data for the report
        # Corresponds to the JSON property `rows`
        # @return [Array<Array<Object>>]
        attr_accessor :rows
      
        # The start of the date range for this report, inclusive.
        # Corresponds to the JSON property `start_date`
        # @return [String]
        attr_accessor :start_date
      
        # The totals rows for the report
        # Corresponds to the JSON property `totals_rows`
        # @return [Array<Array<Object>>]
        attr_accessor :totals_rows
      
        # The report type.
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @column_names = args[:column_names] unless args[:column_names].nil?
          @end_date = args[:end_date] unless args[:end_date].nil?
          @kind = args[:kind] unless args[:kind].nil?
          @matching_row_count = args[:matching_row_count] unless args[:matching_row_count].nil?
          @rows = args[:rows] unless args[:rows].nil?
          @start_date = args[:start_date] unless args[:start_date].nil?
          @totals_rows = args[:totals_rows] unless args[:totals_rows].nil?
          @type = args[:type] unless args[:type].nil?
        end
      end
    end
  end
end
