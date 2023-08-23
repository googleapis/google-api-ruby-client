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
      
      class GoogleAdsHomeservicesLocalservicesV1AccountReport
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAdsHomeservicesLocalservicesV1AggregatorInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAdsHomeservicesLocalservicesV1DetailedLeadReport
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAdsHomeservicesLocalservicesV1MessageLead
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAdsHomeservicesLocalservicesV1PhoneLead
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAdsHomeservicesLocalservicesV1SearchAccountReportsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAdsHomeservicesLocalservicesV1SearchDetailedLeadReportsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleTypeTimeZone
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAdsHomeservicesLocalservicesV1AccountReport
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :account_id, :numeric_string => true, as: 'accountId'
          property :aggregator_info, as: 'aggregatorInfo', class: Google::Apis::LocalservicesV1::GoogleAdsHomeservicesLocalservicesV1AggregatorInfo, decorator: Google::Apis::LocalservicesV1::GoogleAdsHomeservicesLocalservicesV1AggregatorInfo::Representation
      
          property :average_five_star_rating, as: 'averageFiveStarRating'
          property :average_weekly_budget, as: 'averageWeeklyBudget'
          property :business_name, as: 'businessName'
          property :currency_code, as: 'currencyCode'
          property :current_period_charged_leads, :numeric_string => true, as: 'currentPeriodChargedLeads'
          property :current_period_connected_phone_calls, :numeric_string => true, as: 'currentPeriodConnectedPhoneCalls'
          property :current_period_phone_calls, :numeric_string => true, as: 'currentPeriodPhoneCalls'
          property :current_period_total_cost, as: 'currentPeriodTotalCost'
          property :phone_lead_responsiveness, as: 'phoneLeadResponsiveness'
          property :previous_period_charged_leads, :numeric_string => true, as: 'previousPeriodChargedLeads'
          property :previous_period_connected_phone_calls, :numeric_string => true, as: 'previousPeriodConnectedPhoneCalls'
          property :previous_period_phone_calls, :numeric_string => true, as: 'previousPeriodPhoneCalls'
          property :previous_period_total_cost, as: 'previousPeriodTotalCost'
          property :total_review, as: 'totalReview'
        end
      end
      
      class GoogleAdsHomeservicesLocalservicesV1AggregatorInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :aggregator_provider_id, as: 'aggregatorProviderId'
        end
      end
      
      class GoogleAdsHomeservicesLocalservicesV1DetailedLeadReport
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :account_id, :numeric_string => true, as: 'accountId'
          property :aggregator_info, as: 'aggregatorInfo', class: Google::Apis::LocalservicesV1::GoogleAdsHomeservicesLocalservicesV1AggregatorInfo, decorator: Google::Apis::LocalservicesV1::GoogleAdsHomeservicesLocalservicesV1AggregatorInfo::Representation
      
          property :business_name, as: 'businessName'
          property :charge_status, as: 'chargeStatus'
          property :currency_code, as: 'currencyCode'
          property :dispute_status, as: 'disputeStatus'
          property :geo, as: 'geo'
          property :lead_category, as: 'leadCategory'
          property :lead_creation_timestamp, as: 'leadCreationTimestamp'
          property :lead_id, :numeric_string => true, as: 'leadId'
          property :lead_price, as: 'leadPrice'
          property :lead_type, as: 'leadType'
          property :message_lead, as: 'messageLead', class: Google::Apis::LocalservicesV1::GoogleAdsHomeservicesLocalservicesV1MessageLead, decorator: Google::Apis::LocalservicesV1::GoogleAdsHomeservicesLocalservicesV1MessageLead::Representation
      
          property :phone_lead, as: 'phoneLead', class: Google::Apis::LocalservicesV1::GoogleAdsHomeservicesLocalservicesV1PhoneLead, decorator: Google::Apis::LocalservicesV1::GoogleAdsHomeservicesLocalservicesV1PhoneLead::Representation
      
          property :timezone, as: 'timezone', class: Google::Apis::LocalservicesV1::GoogleTypeTimeZone, decorator: Google::Apis::LocalservicesV1::GoogleTypeTimeZone::Representation
      
        end
      end
      
      class GoogleAdsHomeservicesLocalservicesV1MessageLead
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :consumer_phone_number, as: 'consumerPhoneNumber'
          property :customer_name, as: 'customerName'
          property :job_type, as: 'jobType'
          property :postal_code, as: 'postalCode'
        end
      end
      
      class GoogleAdsHomeservicesLocalservicesV1PhoneLead
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :charged_call_timestamp, as: 'chargedCallTimestamp'
          property :charged_connected_call_duration_seconds, as: 'chargedConnectedCallDurationSeconds'
          property :consumer_phone_number, as: 'consumerPhoneNumber'
        end
      end
      
      class GoogleAdsHomeservicesLocalservicesV1SearchAccountReportsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :account_reports, as: 'accountReports', class: Google::Apis::LocalservicesV1::GoogleAdsHomeservicesLocalservicesV1AccountReport, decorator: Google::Apis::LocalservicesV1::GoogleAdsHomeservicesLocalservicesV1AccountReport::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class GoogleAdsHomeservicesLocalservicesV1SearchDetailedLeadReportsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :detailed_lead_reports, as: 'detailedLeadReports', class: Google::Apis::LocalservicesV1::GoogleAdsHomeservicesLocalservicesV1DetailedLeadReport, decorator: Google::Apis::LocalservicesV1::GoogleAdsHomeservicesLocalservicesV1DetailedLeadReport::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class GoogleTypeTimeZone
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :id, as: 'id'
          property :version, as: 'version'
        end
      end
    end
  end
end
