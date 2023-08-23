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
    module LocalservicesV1
      
      # An Account Report of a GLS account identified by their account id containing
      # aggregate data gathered from a particular date range.
      class GoogleAdsHomeservicesLocalservicesV1AccountReport
        include Google::Apis::Core::Hashable
      
        # Unique identifier of the GLS account.
        # Corresponds to the JSON property `accountId`
        # @return [Fixnum]
        attr_accessor :account_id
      
        # Conatiner for aggregator specific information if lead is for an aggregator GLS
        # account.
        # Corresponds to the JSON property `aggregatorInfo`
        # @return [Google::Apis::LocalservicesV1::GoogleAdsHomeservicesLocalservicesV1AggregatorInfo]
        attr_accessor :aggregator_info
      
        # Average review rating score from 1-5 stars.
        # Corresponds to the JSON property `averageFiveStarRating`
        # @return [Float]
        attr_accessor :average_five_star_rating
      
        # Average weekly budget in the currency code of the account.
        # Corresponds to the JSON property `averageWeeklyBudget`
        # @return [Float]
        attr_accessor :average_weekly_budget
      
        # Business name of the account.
        # Corresponds to the JSON property `businessName`
        # @return [String]
        attr_accessor :business_name
      
        # Currency code of the account.
        # Corresponds to the JSON property `currencyCode`
        # @return [String]
        attr_accessor :currency_code
      
        # Number of charged leads the account received in current specified period.
        # Corresponds to the JSON property `currentPeriodChargedLeads`
        # @return [Fixnum]
        attr_accessor :current_period_charged_leads
      
        # Number of connected phone calls (duration over 30s) in current specified
        # period.
        # Corresponds to the JSON property `currentPeriodConnectedPhoneCalls`
        # @return [Fixnum]
        attr_accessor :current_period_connected_phone_calls
      
        # Number of phone calls in current specified period, including both connected
        # and unconnected calls.
        # Corresponds to the JSON property `currentPeriodPhoneCalls`
        # @return [Fixnum]
        attr_accessor :current_period_phone_calls
      
        # Total cost of the account in current specified period in the account's
        # specified currency.
        # Corresponds to the JSON property `currentPeriodTotalCost`
        # @return [Float]
        attr_accessor :current_period_total_cost
      
        # Phone lead responsiveness of the account for the past 90 days from current
        # date. This is computed by taking the total number of connected calls from
        # charged phone leads and dividing by the total number of calls received.
        # Corresponds to the JSON property `phoneLeadResponsiveness`
        # @return [Float]
        attr_accessor :phone_lead_responsiveness
      
        # Number of charged leads the account received in previous specified period.
        # Corresponds to the JSON property `previousPeriodChargedLeads`
        # @return [Fixnum]
        attr_accessor :previous_period_charged_leads
      
        # Number of connected phone calls (duration over 30s) in previous specified
        # period.
        # Corresponds to the JSON property `previousPeriodConnectedPhoneCalls`
        # @return [Fixnum]
        attr_accessor :previous_period_connected_phone_calls
      
        # Number of phone calls in previous specified period, including both connected
        # and unconnected calls.
        # Corresponds to the JSON property `previousPeriodPhoneCalls`
        # @return [Fixnum]
        attr_accessor :previous_period_phone_calls
      
        # Total cost of the account in previous specified period in the account's
        # specified currency.
        # Corresponds to the JSON property `previousPeriodTotalCost`
        # @return [Float]
        attr_accessor :previous_period_total_cost
      
        # Total number of reviews the account has up to current date.
        # Corresponds to the JSON property `totalReview`
        # @return [Fixnum]
        attr_accessor :total_review
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @account_id = args[:account_id] if args.key?(:account_id)
          @aggregator_info = args[:aggregator_info] if args.key?(:aggregator_info)
          @average_five_star_rating = args[:average_five_star_rating] if args.key?(:average_five_star_rating)
          @average_weekly_budget = args[:average_weekly_budget] if args.key?(:average_weekly_budget)
          @business_name = args[:business_name] if args.key?(:business_name)
          @currency_code = args[:currency_code] if args.key?(:currency_code)
          @current_period_charged_leads = args[:current_period_charged_leads] if args.key?(:current_period_charged_leads)
          @current_period_connected_phone_calls = args[:current_period_connected_phone_calls] if args.key?(:current_period_connected_phone_calls)
          @current_period_phone_calls = args[:current_period_phone_calls] if args.key?(:current_period_phone_calls)
          @current_period_total_cost = args[:current_period_total_cost] if args.key?(:current_period_total_cost)
          @phone_lead_responsiveness = args[:phone_lead_responsiveness] if args.key?(:phone_lead_responsiveness)
          @previous_period_charged_leads = args[:previous_period_charged_leads] if args.key?(:previous_period_charged_leads)
          @previous_period_connected_phone_calls = args[:previous_period_connected_phone_calls] if args.key?(:previous_period_connected_phone_calls)
          @previous_period_phone_calls = args[:previous_period_phone_calls] if args.key?(:previous_period_phone_calls)
          @previous_period_total_cost = args[:previous_period_total_cost] if args.key?(:previous_period_total_cost)
          @total_review = args[:total_review] if args.key?(:total_review)
        end
      end
      
      # Conatiner for aggregator specific information if lead is for an aggregator GLS
      # account.
      class GoogleAdsHomeservicesLocalservicesV1AggregatorInfo
        include Google::Apis::Core::Hashable
      
        # Provider id (listed in aggregator system) which maps to a account id in GLS
        # system.
        # Corresponds to the JSON property `aggregatorProviderId`
        # @return [String]
        attr_accessor :aggregator_provider_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @aggregator_provider_id = args[:aggregator_provider_id] if args.key?(:aggregator_provider_id)
        end
      end
      
      # A Detailed Lead Report of a lead identified by their lead id and contains
      # consumer, account, monetization, and lead data.
      class GoogleAdsHomeservicesLocalservicesV1DetailedLeadReport
        include Google::Apis::Core::Hashable
      
        # Identifies account that received the lead.
        # Corresponds to the JSON property `accountId`
        # @return [Fixnum]
        attr_accessor :account_id
      
        # Conatiner for aggregator specific information if lead is for an aggregator GLS
        # account.
        # Corresponds to the JSON property `aggregatorInfo`
        # @return [Google::Apis::LocalservicesV1::GoogleAdsHomeservicesLocalservicesV1AggregatorInfo]
        attr_accessor :aggregator_info
      
        # Business name associated to the account.
        # Corresponds to the JSON property `businessName`
        # @return [String]
        attr_accessor :business_name
      
        # Whether the lead has been charged.
        # Corresponds to the JSON property `chargeStatus`
        # @return [String]
        attr_accessor :charge_status
      
        # Currency code.
        # Corresponds to the JSON property `currencyCode`
        # @return [String]
        attr_accessor :currency_code
      
        # Dispute status related to the lead.
        # Corresponds to the JSON property `disputeStatus`
        # @return [String]
        attr_accessor :dispute_status
      
        # Location of the associated account's home city.
        # Corresponds to the JSON property `geo`
        # @return [String]
        attr_accessor :geo
      
        # Lead category (e.g. hvac, plumber)
        # Corresponds to the JSON property `leadCategory`
        # @return [String]
        attr_accessor :lead_category
      
        # Timestamp of when the lead was created.
        # Corresponds to the JSON property `leadCreationTimestamp`
        # @return [String]
        attr_accessor :lead_creation_timestamp
      
        # Unique identifier of a Detailed Lead Report.
        # Corresponds to the JSON property `leadId`
        # @return [Fixnum]
        attr_accessor :lead_id
      
        # Price of the lead (available only after it has been charged).
        # Corresponds to the JSON property `leadPrice`
        # @return [Float]
        attr_accessor :lead_price
      
        # Lead type.
        # Corresponds to the JSON property `leadType`
        # @return [String]
        attr_accessor :lead_type
      
        # Container for message lead specific information.
        # Corresponds to the JSON property `messageLead`
        # @return [Google::Apis::LocalservicesV1::GoogleAdsHomeservicesLocalservicesV1MessageLead]
        attr_accessor :message_lead
      
        # Container for phone lead specific information.
        # Corresponds to the JSON property `phoneLead`
        # @return [Google::Apis::LocalservicesV1::GoogleAdsHomeservicesLocalservicesV1PhoneLead]
        attr_accessor :phone_lead
      
        # Represents a time zone from the [IANA Time Zone Database](https://www.iana.org/
        # time-zones).
        # Corresponds to the JSON property `timezone`
        # @return [Google::Apis::LocalservicesV1::GoogleTypeTimeZone]
        attr_accessor :timezone
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @account_id = args[:account_id] if args.key?(:account_id)
          @aggregator_info = args[:aggregator_info] if args.key?(:aggregator_info)
          @business_name = args[:business_name] if args.key?(:business_name)
          @charge_status = args[:charge_status] if args.key?(:charge_status)
          @currency_code = args[:currency_code] if args.key?(:currency_code)
          @dispute_status = args[:dispute_status] if args.key?(:dispute_status)
          @geo = args[:geo] if args.key?(:geo)
          @lead_category = args[:lead_category] if args.key?(:lead_category)
          @lead_creation_timestamp = args[:lead_creation_timestamp] if args.key?(:lead_creation_timestamp)
          @lead_id = args[:lead_id] if args.key?(:lead_id)
          @lead_price = args[:lead_price] if args.key?(:lead_price)
          @lead_type = args[:lead_type] if args.key?(:lead_type)
          @message_lead = args[:message_lead] if args.key?(:message_lead)
          @phone_lead = args[:phone_lead] if args.key?(:phone_lead)
          @timezone = args[:timezone] if args.key?(:timezone)
        end
      end
      
      # Container for message lead specific information.
      class GoogleAdsHomeservicesLocalservicesV1MessageLead
        include Google::Apis::Core::Hashable
      
        # Consumer phone number associated with the message lead.
        # Corresponds to the JSON property `consumerPhoneNumber`
        # @return [String]
        attr_accessor :consumer_phone_number
      
        # Name of the customer who created the lead.
        # Corresponds to the JSON property `customerName`
        # @return [String]
        attr_accessor :customer_name
      
        # The job type of the specified lead.
        # Corresponds to the JSON property `jobType`
        # @return [String]
        attr_accessor :job_type
      
        # The postal code of the customer who created the lead.
        # Corresponds to the JSON property `postalCode`
        # @return [String]
        attr_accessor :postal_code
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @consumer_phone_number = args[:consumer_phone_number] if args.key?(:consumer_phone_number)
          @customer_name = args[:customer_name] if args.key?(:customer_name)
          @job_type = args[:job_type] if args.key?(:job_type)
          @postal_code = args[:postal_code] if args.key?(:postal_code)
        end
      end
      
      # Container for phone lead specific information.
      class GoogleAdsHomeservicesLocalservicesV1PhoneLead
        include Google::Apis::Core::Hashable
      
        # Timestamp of the phone call which resulted in a charged phone lead.
        # Corresponds to the JSON property `chargedCallTimestamp`
        # @return [String]
        attr_accessor :charged_call_timestamp
      
        # Duration of the charged phone call in seconds.
        # Corresponds to the JSON property `chargedConnectedCallDurationSeconds`
        # @return [String]
        attr_accessor :charged_connected_call_duration_seconds
      
        # Consumer phone number associated with the phone lead.
        # Corresponds to the JSON property `consumerPhoneNumber`
        # @return [String]
        attr_accessor :consumer_phone_number
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @charged_call_timestamp = args[:charged_call_timestamp] if args.key?(:charged_call_timestamp)
          @charged_connected_call_duration_seconds = args[:charged_connected_call_duration_seconds] if args.key?(:charged_connected_call_duration_seconds)
          @consumer_phone_number = args[:consumer_phone_number] if args.key?(:consumer_phone_number)
        end
      end
      
      # A page of the response received from the SearchAccountReports method. A
      # paginated response where more pages are available has `next_page_token` set.
      # This token can be used in a subsequent request to retrieve the next request
      # page.
      class GoogleAdsHomeservicesLocalservicesV1SearchAccountReportsResponse
        include Google::Apis::Core::Hashable
      
        # List of account reports which maps 1:1 to a particular linked GLS account.
        # Corresponds to the JSON property `accountReports`
        # @return [Array<Google::Apis::LocalservicesV1::GoogleAdsHomeservicesLocalservicesV1AccountReport>]
        attr_accessor :account_reports
      
        # Pagination token to retrieve the next page of results. When `next_page_token`
        # is not filled in, there is no next page and the list returned is the last page
        # in the result set.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @account_reports = args[:account_reports] if args.key?(:account_reports)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # A page of the response received from the SearchDetailedLeadReports method. A
      # paginated response where more pages are available has `next_page_token` set.
      # This token can be used in a subsequent request to retrieve the next request
      # page.
      class GoogleAdsHomeservicesLocalservicesV1SearchDetailedLeadReportsResponse
        include Google::Apis::Core::Hashable
      
        # List of detailed lead reports uniquely identified by external lead id.
        # Corresponds to the JSON property `detailedLeadReports`
        # @return [Array<Google::Apis::LocalservicesV1::GoogleAdsHomeservicesLocalservicesV1DetailedLeadReport>]
        attr_accessor :detailed_lead_reports
      
        # Pagination token to retrieve the next page of results. When `next_page_token`
        # is not filled in, there is no next page and the list returned is the last page
        # in the result set.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @detailed_lead_reports = args[:detailed_lead_reports] if args.key?(:detailed_lead_reports)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # Represents a time zone from the [IANA Time Zone Database](https://www.iana.org/
      # time-zones).
      class GoogleTypeTimeZone
        include Google::Apis::Core::Hashable
      
        # IANA Time Zone Database time zone, e.g. "America/New_York".
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # Optional. IANA Time Zone Database version number, e.g. "2019a".
        # Corresponds to the JSON property `version`
        # @return [String]
        attr_accessor :version
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @id = args[:id] if args.key?(:id)
          @version = args[:version] if args.key?(:version)
        end
      end
    end
  end
end
