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
    module PartnersV2
      
      # Analytics aggregated data for a `Company` for a given date range.
      class AnalyticsSummary
        include Google::Apis::Core::Hashable
      
        # Aggregated number of profile views for the `Company` for given date range.
        # Corresponds to the JSON property `profileViewsCount`
        # @return [Fixnum]
        attr_accessor :profile_views_count
      
        # Aggregated number of times users saw the `Company`
        # in Google Partners Search results for given date range.
        # Corresponds to the JSON property `searchViewsCount`
        # @return [Fixnum]
        attr_accessor :search_views_count
      
        # Aggregated number of times users contacted the `Company`
        # for given date range.
        # Corresponds to the JSON property `contactsCount`
        # @return [Fixnum]
        attr_accessor :contacts_count
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @profile_views_count = args[:profile_views_count] if args.key?(:profile_views_count)
          @search_views_count = args[:search_views_count] if args.key?(:search_views_count)
          @contacts_count = args[:contacts_count] if args.key?(:contacts_count)
        end
      end
      
      # Request message for
      # LogClientMessage.
      class LogMessageRequest
        include Google::Apis::Core::Hashable
      
        # Map of client info, such as URL, browser navigator, browser platform, etc.
        # Corresponds to the JSON property `clientInfo`
        # @return [Hash<String,String>]
        attr_accessor :client_info
      
        # Common data that is in each API request.
        # Corresponds to the JSON property `requestMetadata`
        # @return [Google::Apis::PartnersV2::RequestMetadata]
        attr_accessor :request_metadata
      
        # Message level of client message.
        # Corresponds to the JSON property `level`
        # @return [String]
        attr_accessor :level
      
        # Details about the client message.
        # Corresponds to the JSON property `details`
        # @return [String]
        attr_accessor :details
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @client_info = args[:client_info] if args.key?(:client_info)
          @request_metadata = args[:request_metadata] if args.key?(:request_metadata)
          @level = args[:level] if args.key?(:level)
          @details = args[:details] if args.key?(:details)
        end
      end
      
      # A lead resource that represents an advertiser contact for a `Company`. These
      # are usually generated via Google Partner Search (the advertiser portal).
      class Lead
        include Google::Apis::Core::Hashable
      
        # Phone number of lead source.
        # Corresponds to the JSON property `phoneNumber`
        # @return [String]
        attr_accessor :phone_number
      
        # The AdWords Customer ID of the lead.
        # Corresponds to the JSON property `adwordsCustomerId`
        # @return [Fixnum]
        attr_accessor :adwords_customer_id
      
        # Timestamp of when this lead was created.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Whether or not the lead signed up for marketing emails
        # Corresponds to the JSON property `marketingOptIn`
        # @return [Boolean]
        attr_accessor :marketing_opt_in
        alias_method :marketing_opt_in?, :marketing_opt_in
      
        # Type of lead.
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        # Represents an amount of money with its currency type.
        # Corresponds to the JSON property `minMonthlyBudget`
        # @return [Google::Apis::PartnersV2::Money]
        attr_accessor :min_monthly_budget
      
        # First name of lead source.
        # Corresponds to the JSON property `givenName`
        # @return [String]
        attr_accessor :given_name
      
        # Website URL of lead source.
        # Corresponds to the JSON property `websiteUrl`
        # @return [String]
        attr_accessor :website_url
      
        # Language code of the lead's language preference, as defined by
        # <a href="https://tools.ietf.org/html/bcp47">BCP 47</a>
        # (IETF BCP 47, "Tags for Identifying Languages").
        # Corresponds to the JSON property `languageCode`
        # @return [String]
        attr_accessor :language_code
      
        # The lead's state in relation to the company.
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        # List of reasons for using Google Partner Search and creating a lead.
        # Corresponds to the JSON property `gpsMotivations`
        # @return [Array<String>]
        attr_accessor :gps_motivations
      
        # Email address of lead source.
        # Corresponds to the JSON property `email`
        # @return [String]
        attr_accessor :email
      
        # Last name of lead source.
        # Corresponds to the JSON property `familyName`
        # @return [String]
        attr_accessor :family_name
      
        # ID of the lead.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # Comments lead source gave.
        # Corresponds to the JSON property `comments`
        # @return [String]
        attr_accessor :comments
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @phone_number = args[:phone_number] if args.key?(:phone_number)
          @adwords_customer_id = args[:adwords_customer_id] if args.key?(:adwords_customer_id)
          @create_time = args[:create_time] if args.key?(:create_time)
          @marketing_opt_in = args[:marketing_opt_in] if args.key?(:marketing_opt_in)
          @type = args[:type] if args.key?(:type)
          @min_monthly_budget = args[:min_monthly_budget] if args.key?(:min_monthly_budget)
          @given_name = args[:given_name] if args.key?(:given_name)
          @website_url = args[:website_url] if args.key?(:website_url)
          @language_code = args[:language_code] if args.key?(:language_code)
          @state = args[:state] if args.key?(:state)
          @gps_motivations = args[:gps_motivations] if args.key?(:gps_motivations)
          @email = args[:email] if args.key?(:email)
          @family_name = args[:family_name] if args.key?(:family_name)
          @id = args[:id] if args.key?(:id)
          @comments = args[:comments] if args.key?(:comments)
        end
      end
      
      # Debug information about this request.
      class DebugInfo
        include Google::Apis::Core::Hashable
      
        # Info about the server that serviced this request.
        # Corresponds to the JSON property `serverInfo`
        # @return [String]
        attr_accessor :server_info
      
        # Server-side debug stack trace.
        # Corresponds to the JSON property `serverTraceInfo`
        # @return [String]
        attr_accessor :server_trace_info
      
        # URL of the service that handled this request.
        # Corresponds to the JSON property `serviceUrl`
        # @return [String]
        attr_accessor :service_url
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @server_info = args[:server_info] if args.key?(:server_info)
          @server_trace_info = args[:server_trace_info] if args.key?(:server_trace_info)
          @service_url = args[:service_url] if args.key?(:service_url)
        end
      end
      
      # Response message for
      # ListUserStates.
      class ListUserStatesResponse
        include Google::Apis::Core::Hashable
      
        # User's states.
        # Corresponds to the JSON property `userStates`
        # @return [Array<String>]
        attr_accessor :user_states
      
        # Common data that is in each API response.
        # Corresponds to the JSON property `responseMetadata`
        # @return [Google::Apis::PartnersV2::ResponseMetadata]
        attr_accessor :response_metadata
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @user_states = args[:user_states] if args.key?(:user_states)
          @response_metadata = args[:response_metadata] if args.key?(:response_metadata)
        end
      end
      
      # A CompanyRelation resource representing information about a user's
      # affiliation and standing with a company in Partners.
      class CompanyRelation
        include Google::Apis::Core::Hashable
      
        # The segment the company is classified as.
        # Corresponds to the JSON property `segment`
        # @return [Array<String>]
        attr_accessor :segment
      
        # The list of Google Partners specialization statuses for the company.
        # Corresponds to the JSON property `specializationStatus`
        # @return [Array<Google::Apis::PartnersV2::SpecializationStatus>]
        attr_accessor :specialization_status
      
        # Whether the company is a Partner.
        # Corresponds to the JSON property `badgeTier`
        # @return [String]
        attr_accessor :badge_tier
      
        # The phone number for the company's primary address.
        # Corresponds to the JSON property `phoneNumber`
        # @return [String]
        attr_accessor :phone_number
      
        # The website URL for this company.
        # Corresponds to the JSON property `website`
        # @return [String]
        attr_accessor :website
      
        # The primary country code of the company.
        # Corresponds to the JSON property `primaryCountryCode`
        # @return [String]
        attr_accessor :primary_country_code
      
        # The ID of the company. There may be no id if this is a
        # pending company.5
        # Corresponds to the JSON property `companyId`
        # @return [String]
        attr_accessor :company_id
      
        # The primary language code of the company.
        # Corresponds to the JSON property `primaryLanguageCode`
        # @return [String]
        attr_accessor :primary_language_code
      
        # A URL to a profile photo, e.g. a G+ profile photo.
        # Corresponds to the JSON property `logoUrl`
        # @return [String]
        attr_accessor :logo_url
      
        # The timestamp when the user was approved.
        # @OutputOnly
        # Corresponds to the JSON property `resolvedTimestamp`
        # @return [String]
        attr_accessor :resolved_timestamp
      
        # Indicates if the user is an admin for this company.
        # Corresponds to the JSON property `companyAdmin`
        # @return [Boolean]
        attr_accessor :company_admin
        alias_method :company_admin?, :company_admin
      
        # The flag that indicates if the company is pending verification.
        # Corresponds to the JSON property `isPending`
        # @return [Boolean]
        attr_accessor :is_pending
        alias_method :is_pending?, :is_pending
      
        # The primary address for this company.
        # Corresponds to the JSON property `address`
        # @return [String]
        attr_accessor :address
      
        # The timestamp of when affiliation was requested.
        # @OutputOnly
        # Corresponds to the JSON property `creationTime`
        # @return [String]
        attr_accessor :creation_time
      
        # The state of relationship, in terms of approvals.
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        # A location with address and geographic coordinates. May optionally contain a
        # detailed (multi-field) version of the address.
        # Corresponds to the JSON property `primaryAddress`
        # @return [Google::Apis::PartnersV2::Location]
        attr_accessor :primary_address
      
        # The name (in the company's primary language) for the company.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # The AdWords manager account # associated this company.
        # Corresponds to the JSON property `managerAccount`
        # @return [Fixnum]
        attr_accessor :manager_account
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @segment = args[:segment] if args.key?(:segment)
          @specialization_status = args[:specialization_status] if args.key?(:specialization_status)
          @badge_tier = args[:badge_tier] if args.key?(:badge_tier)
          @phone_number = args[:phone_number] if args.key?(:phone_number)
          @website = args[:website] if args.key?(:website)
          @primary_country_code = args[:primary_country_code] if args.key?(:primary_country_code)
          @company_id = args[:company_id] if args.key?(:company_id)
          @primary_language_code = args[:primary_language_code] if args.key?(:primary_language_code)
          @logo_url = args[:logo_url] if args.key?(:logo_url)
          @resolved_timestamp = args[:resolved_timestamp] if args.key?(:resolved_timestamp)
          @company_admin = args[:company_admin] if args.key?(:company_admin)
          @is_pending = args[:is_pending] if args.key?(:is_pending)
          @address = args[:address] if args.key?(:address)
          @creation_time = args[:creation_time] if args.key?(:creation_time)
          @state = args[:state] if args.key?(:state)
          @primary_address = args[:primary_address] if args.key?(:primary_address)
          @name = args[:name] if args.key?(:name)
          @manager_account = args[:manager_account] if args.key?(:manager_account)
        end
      end
      
      # Represents a whole calendar date, e.g. date of birth. The time of day and
      # time zone are either specified elsewhere or are not significant. The date
      # is relative to the Proleptic Gregorian Calendar. The day may be 0 to
      # represent a year and month where the day is not significant, e.g. credit card
      # expiration date. The year may be 0 to represent a month and day independent
      # of year, e.g. anniversary date. Related types are google.type.TimeOfDay
      # and `google.protobuf.Timestamp`.
      class Date
        include Google::Apis::Core::Hashable
      
        # Month of year. Must be from 1 to 12.
        # Corresponds to the JSON property `month`
        # @return [Fixnum]
        attr_accessor :month
      
        # Year of date. Must be from 1 to 9999, or 0 if specifying a date without
        # a year.
        # Corresponds to the JSON property `year`
        # @return [Fixnum]
        attr_accessor :year
      
        # Day of month. Must be from 1 to 31 and valid for the year and month, or 0
        # if specifying a year/month where the day is not significant.
        # Corresponds to the JSON property `day`
        # @return [Fixnum]
        attr_accessor :day
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @month = args[:month] if args.key?(:month)
          @year = args[:year] if args.key?(:year)
          @day = args[:day] if args.key?(:day)
        end
      end
      
      # A generic empty message that you can re-use to avoid defining duplicated
      # empty messages in your APIs. A typical example is to use it as the request
      # or the response type of an API method. For instance:
      # service Foo `
      # rpc Bar(google.protobuf.Empty) returns (google.protobuf.Empty);
      # `
      # The JSON representation for `Empty` is empty JSON object ````.
      class Empty
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # Source of traffic for the current request.
      class TrafficSource
        include Google::Apis::Core::Hashable
      
        # Identifier to indicate where the traffic comes from.
        # An identifier has multiple letters created by a team which redirected the
        # traffic to us.
        # Corresponds to the JSON property `trafficSourceId`
        # @return [String]
        attr_accessor :traffic_source_id
      
        # Second level identifier to indicate where the traffic comes from.
        # An identifier has multiple letters created by a team which redirected the
        # traffic to us.
        # Corresponds to the JSON property `trafficSubId`
        # @return [String]
        attr_accessor :traffic_sub_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @traffic_source_id = args[:traffic_source_id] if args.key?(:traffic_source_id)
          @traffic_sub_id = args[:traffic_sub_id] if args.key?(:traffic_sub_id)
        end
      end
      
      # Request message for CreateLead.
      class CreateLeadRequest
        include Google::Apis::Core::Hashable
      
        # A lead resource that represents an advertiser contact for a `Company`. These
        # are usually generated via Google Partner Search (the advertiser portal).
        # Corresponds to the JSON property `lead`
        # @return [Google::Apis::PartnersV2::Lead]
        attr_accessor :lead
      
        # <a href="https://www.google.com/recaptcha/">reCaptcha</a> challenge info.
        # Corresponds to the JSON property `recaptchaChallenge`
        # @return [Google::Apis::PartnersV2::RecaptchaChallenge]
        attr_accessor :recaptcha_challenge
      
        # Common data that is in each API request.
        # Corresponds to the JSON property `requestMetadata`
        # @return [Google::Apis::PartnersV2::RequestMetadata]
        attr_accessor :request_metadata
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @lead = args[:lead] if args.key?(:lead)
          @recaptcha_challenge = args[:recaptcha_challenge] if args.key?(:recaptcha_challenge)
          @request_metadata = args[:request_metadata] if args.key?(:request_metadata)
        end
      end
      
      # Common data that is in each API request.
      class RequestMetadata
        include Google::Apis::Core::Hashable
      
        # Experiment IDs the current request belongs to.
        # Corresponds to the JSON property `experimentIds`
        # @return [Array<String>]
        attr_accessor :experiment_ids
      
        # Source of traffic for the current request.
        # Corresponds to the JSON property `trafficSource`
        # @return [Google::Apis::PartnersV2::TrafficSource]
        attr_accessor :traffic_source
      
        # Locale to use for the current request.
        # Corresponds to the JSON property `locale`
        # @return [String]
        attr_accessor :locale
      
        # Values to use instead of the user's respective defaults. These are only
        # honored by whitelisted products.
        # Corresponds to the JSON property `userOverrides`
        # @return [Google::Apis::PartnersV2::UserOverrides]
        attr_accessor :user_overrides
      
        # Google Partners session ID.
        # Corresponds to the JSON property `partnersSessionId`
        # @return [String]
        attr_accessor :partners_session_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @experiment_ids = args[:experiment_ids] if args.key?(:experiment_ids)
          @traffic_source = args[:traffic_source] if args.key?(:traffic_source)
          @locale = args[:locale] if args.key?(:locale)
          @user_overrides = args[:user_overrides] if args.key?(:user_overrides)
          @partners_session_id = args[:partners_session_id] if args.key?(:partners_session_id)
        end
      end
      
      # Key value data pair for an event.
      class EventData
        include Google::Apis::Core::Hashable
      
        # Data values.
        # Corresponds to the JSON property `values`
        # @return [Array<String>]
        attr_accessor :values
      
        # Data type.
        # Corresponds to the JSON property `key`
        # @return [String]
        attr_accessor :key
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @values = args[:values] if args.key?(:values)
          @key = args[:key] if args.key?(:key)
        end
      end
      
      # A user's information on a specific exam.
      class ExamStatus
        include Google::Apis::Core::Hashable
      
        # The type of the exam.
        # Corresponds to the JSON property `examType`
        # @return [String]
        attr_accessor :exam_type
      
        # Whether this exam has been passed and not expired.
        # Corresponds to the JSON property `passed`
        # @return [Boolean]
        attr_accessor :passed
        alias_method :passed?, :passed
      
        # The date the user last taken this exam.
        # Corresponds to the JSON property `taken`
        # @return [String]
        attr_accessor :taken
      
        # Whether this exam is in the state of warning.
        # Corresponds to the JSON property `warning`
        # @return [Boolean]
        attr_accessor :warning
        alias_method :warning?, :warning
      
        # Date this exam is due to expire.
        # Corresponds to the JSON property `expiration`
        # @return [String]
        attr_accessor :expiration
      
        # The date the user last passed this exam.
        # Corresponds to the JSON property `lastPassed`
        # @return [String]
        attr_accessor :last_passed
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @exam_type = args[:exam_type] if args.key?(:exam_type)
          @passed = args[:passed] if args.key?(:passed)
          @taken = args[:taken] if args.key?(:taken)
          @warning = args[:warning] if args.key?(:warning)
          @expiration = args[:expiration] if args.key?(:expiration)
          @last_passed = args[:last_passed] if args.key?(:last_passed)
        end
      end
      
      # Response for ListOffer.
      class ListOffersResponse
        include Google::Apis::Core::Hashable
      
        # Common data that is in each API response.
        # Corresponds to the JSON property `responseMetadata`
        # @return [Google::Apis::PartnersV2::ResponseMetadata]
        attr_accessor :response_metadata
      
        # Reason why no Offers are available.
        # Corresponds to the JSON property `noOfferReason`
        # @return [String]
        attr_accessor :no_offer_reason
      
        # Available Offers to be distributed.
        # Corresponds to the JSON property `availableOffers`
        # @return [Array<Google::Apis::PartnersV2::AvailableOffer>]
        attr_accessor :available_offers
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @response_metadata = args[:response_metadata] if args.key?(:response_metadata)
          @no_offer_reason = args[:no_offer_reason] if args.key?(:no_offer_reason)
          @available_offers = args[:available_offers] if args.key?(:available_offers)
        end
      end
      
      # Offer info by country.
      class CountryOfferInfo
        include Google::Apis::Core::Hashable
      
        # (localized) Get Y amount for that country's offer.
        # Corresponds to the JSON property `getYAmount`
        # @return [String]
        attr_accessor :get_y_amount
      
        # Country code for which offer codes may be requested.
        # Corresponds to the JSON property `offerCountryCode`
        # @return [String]
        attr_accessor :offer_country_code
      
        # (localized) Spend X amount for that country's offer.
        # Corresponds to the JSON property `spendXAmount`
        # @return [String]
        attr_accessor :spend_x_amount
      
        # Type of offer country is eligible for.
        # Corresponds to the JSON property `offerType`
        # @return [String]
        attr_accessor :offer_type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @get_y_amount = args[:get_y_amount] if args.key?(:get_y_amount)
          @offer_country_code = args[:offer_country_code] if args.key?(:offer_country_code)
          @spend_x_amount = args[:spend_x_amount] if args.key?(:spend_x_amount)
          @offer_type = args[:offer_type] if args.key?(:offer_type)
        end
      end
      
      # Response message for
      # ListCompanies.
      class ListCompaniesResponse
        include Google::Apis::Core::Hashable
      
        # A token to retrieve next page of results.
        # Pass this value in the `ListCompaniesRequest.page_token` field in the
        # subsequent call to
        # ListCompanies to retrieve the
        # next page of results.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # Common data that is in each API response.
        # Corresponds to the JSON property `responseMetadata`
        # @return [Google::Apis::PartnersV2::ResponseMetadata]
        attr_accessor :response_metadata
      
        # The list of companies.
        # Corresponds to the JSON property `companies`
        # @return [Array<Google::Apis::PartnersV2::Company>]
        attr_accessor :companies
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @response_metadata = args[:response_metadata] if args.key?(:response_metadata)
          @companies = args[:companies] if args.key?(:companies)
        end
      end
      
      # Customers qualified for an offer.
      class OfferCustomer
        include Google::Apis::Core::Hashable
      
        # URL to the customer's AdWords page.
        # Corresponds to the JSON property `adwordsUrl`
        # @return [String]
        attr_accessor :adwords_url
      
        # Time the customer was created.
        # Corresponds to the JSON property `creationTime`
        # @return [String]
        attr_accessor :creation_time
      
        # Days the customer is still eligible.
        # Corresponds to the JSON property `eligibilityDaysLeft`
        # @return [Fixnum]
        attr_accessor :eligibility_days_left
      
        # Type of the offer
        # Corresponds to the JSON property `offerType`
        # @return [String]
        attr_accessor :offer_type
      
        # External CID for the customer.
        # Corresponds to the JSON property `externalCid`
        # @return [Fixnum]
        attr_accessor :external_cid
      
        # Country code of the customer.
        # Corresponds to the JSON property `countryCode`
        # @return [String]
        attr_accessor :country_code
      
        # Formatted Get Y amount with currency code.
        # Corresponds to the JSON property `getYAmount`
        # @return [String]
        attr_accessor :get_y_amount
      
        # Name of the customer.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Formatted Spend X amount with currency code.
        # Corresponds to the JSON property `spendXAmount`
        # @return [String]
        attr_accessor :spend_x_amount
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @adwords_url = args[:adwords_url] if args.key?(:adwords_url)
          @creation_time = args[:creation_time] if args.key?(:creation_time)
          @eligibility_days_left = args[:eligibility_days_left] if args.key?(:eligibility_days_left)
          @offer_type = args[:offer_type] if args.key?(:offer_type)
          @external_cid = args[:external_cid] if args.key?(:external_cid)
          @country_code = args[:country_code] if args.key?(:country_code)
          @get_y_amount = args[:get_y_amount] if args.key?(:get_y_amount)
          @name = args[:name] if args.key?(:name)
          @spend_x_amount = args[:spend_x_amount] if args.key?(:spend_x_amount)
        end
      end
      
      # Google Partners certification status.
      class CertificationStatus
        include Google::Apis::Core::Hashable
      
        # List of certification exam statuses.
        # Corresponds to the JSON property `examStatuses`
        # @return [Array<Google::Apis::PartnersV2::CertificationExamStatus>]
        attr_accessor :exam_statuses
      
        # The type of the certification.
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        # Number of people who are certified,
        # Corresponds to the JSON property `userCount`
        # @return [Fixnum]
        attr_accessor :user_count
      
        # Whether certification is passing.
        # Corresponds to the JSON property `isCertified`
        # @return [Boolean]
        attr_accessor :is_certified
        alias_method :is_certified?, :is_certified
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @exam_statuses = args[:exam_statuses] if args.key?(:exam_statuses)
          @type = args[:type] if args.key?(:type)
          @user_count = args[:user_count] if args.key?(:user_count)
          @is_certified = args[:is_certified] if args.key?(:is_certified)
        end
      end
      
      # The localized company information.
      class LocalizedCompanyInfo
        include Google::Apis::Core::Hashable
      
        # Language code of the localized company info, as defined by
        # <a href="https://tools.ietf.org/html/bcp47">BCP 47</a>
        # (IETF BCP 47, "Tags for Identifying Languages").
        # Corresponds to the JSON property `languageCode`
        # @return [String]
        attr_accessor :language_code
      
        # List of country codes for the localized company info.
        # Corresponds to the JSON property `countryCodes`
        # @return [Array<String>]
        attr_accessor :country_codes
      
        # Localized brief description that the company uses to advertise themselves.
        # Corresponds to the JSON property `overview`
        # @return [String]
        attr_accessor :overview
      
        # Localized display name.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @language_code = args[:language_code] if args.key?(:language_code)
          @country_codes = args[:country_codes] if args.key?(:country_codes)
          @overview = args[:overview] if args.key?(:overview)
          @display_name = args[:display_name] if args.key?(:display_name)
        end
      end
      
      # Response message for
      # LogUserEvent.
      class LogUserEventResponse
        include Google::Apis::Core::Hashable
      
        # Common data that is in each API response.
        # Corresponds to the JSON property `responseMetadata`
        # @return [Google::Apis::PartnersV2::ResponseMetadata]
        attr_accessor :response_metadata
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @response_metadata = args[:response_metadata] if args.key?(:response_metadata)
        end
      end
      
      # Response for ListOfferHistory.
      class ListOffersHistoryResponse
        include Google::Apis::Core::Hashable
      
        # True if the user has the option to show entire company history.
        # Corresponds to the JSON property `canShowEntireCompany`
        # @return [Boolean]
        attr_accessor :can_show_entire_company
        alias_method :can_show_entire_company?, :can_show_entire_company
      
        # Number of results across all pages.
        # Corresponds to the JSON property `totalResults`
        # @return [Fixnum]
        attr_accessor :total_results
      
        # True if this response is showing entire company history.
        # Corresponds to the JSON property `showingEntireCompany`
        # @return [Boolean]
        attr_accessor :showing_entire_company
        alias_method :showing_entire_company?, :showing_entire_company
      
        # Historical offers meeting request.
        # Corresponds to the JSON property `offers`
        # @return [Array<Google::Apis::PartnersV2::HistoricalOffer>]
        attr_accessor :offers
      
        # Supply this token in a ListOffersHistoryRequest to retrieve the next page.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # Common data that is in each API response.
        # Corresponds to the JSON property `responseMetadata`
        # @return [Google::Apis::PartnersV2::ResponseMetadata]
        attr_accessor :response_metadata
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @can_show_entire_company = args[:can_show_entire_company] if args.key?(:can_show_entire_company)
          @total_results = args[:total_results] if args.key?(:total_results)
          @showing_entire_company = args[:showing_entire_company] if args.key?(:showing_entire_company)
          @offers = args[:offers] if args.key?(:offers)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @response_metadata = args[:response_metadata] if args.key?(:response_metadata)
        end
      end
      
      # Response message for
      # LogClientMessage.
      class LogMessageResponse
        include Google::Apis::Core::Hashable
      
        # Common data that is in each API response.
        # Corresponds to the JSON property `responseMetadata`
        # @return [Google::Apis::PartnersV2::ResponseMetadata]
        attr_accessor :response_metadata
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @response_metadata = args[:response_metadata] if args.key?(:response_metadata)
        end
      end
      
      # Agency specialization status
      class SpecializationStatus
        include Google::Apis::Core::Hashable
      
        # The specialization this status is for.
        # Corresponds to the JSON property `badgeSpecialization`
        # @return [String]
        attr_accessor :badge_specialization
      
        # State of agency specialization.
        # Corresponds to the JSON property `badgeSpecializationState`
        # @return [String]
        attr_accessor :badge_specialization_state
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @badge_specialization = args[:badge_specialization] if args.key?(:badge_specialization)
          @badge_specialization_state = args[:badge_specialization_state] if args.key?(:badge_specialization_state)
        end
      end
      
      # A user's information on a specific certification.
      class Certification
        include Google::Apis::Core::Hashable
      
        # The type of certification, the area of expertise.
        # Corresponds to the JSON property `certificationType`
        # @return [String]
        attr_accessor :certification_type
      
        # The date the user last achieved certification.
        # Corresponds to the JSON property `lastAchieved`
        # @return [String]
        attr_accessor :last_achieved
      
        # Whether this certification has been achieved.
        # Corresponds to the JSON property `achieved`
        # @return [Boolean]
        attr_accessor :achieved
        alias_method :achieved?, :achieved
      
        # Date this certification is due to expire.
        # Corresponds to the JSON property `expiration`
        # @return [String]
        attr_accessor :expiration
      
        # Whether this certification is in the state of warning.
        # Corresponds to the JSON property `warning`
        # @return [Boolean]
        attr_accessor :warning
        alias_method :warning?, :warning
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @certification_type = args[:certification_type] if args.key?(:certification_type)
          @last_achieved = args[:last_achieved] if args.key?(:last_achieved)
          @achieved = args[:achieved] if args.key?(:achieved)
          @expiration = args[:expiration] if args.key?(:expiration)
          @warning = args[:warning] if args.key?(:warning)
        end
      end
      
      # A resource representing a user of the Partners platform.
      class User
        include Google::Apis::Core::Hashable
      
        # The most recent time the user interacted with the Partners site.
        # @OutputOnly
        # Corresponds to the JSON property `lastAccessTime`
        # @return [String]
        attr_accessor :last_access_time
      
        # The list of emails the user has access to/can select as primary.
        # @OutputOnly
        # Corresponds to the JSON property `primaryEmails`
        # @return [Array<String>]
        attr_accessor :primary_emails
      
        # This is the list of AdWords Manager Accounts the user has edit access to.
        # If the user has edit access to multiple accounts, the user can choose the
        # preferred account and we use this when a personal account is needed. Can
        # be empty meaning the user has access to no accounts.
        # @OutputOnly
        # Corresponds to the JSON property `availableAdwordsManagerAccounts`
        # @return [Array<Google::Apis::PartnersV2::AdWordsManagerAccountInfo>]
        attr_accessor :available_adwords_manager_accounts
      
        # The list of exams the user ever taken. For each type of exam, only one
        # entry is listed.
        # Corresponds to the JSON property `examStatus`
        # @return [Array<Google::Apis::PartnersV2::ExamStatus>]
        attr_accessor :exam_status
      
        # The ID of the user.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # Basic information from a public profile.
        # Corresponds to the JSON property `publicProfile`
        # @return [Google::Apis::PartnersV2::PublicProfile]
        attr_accessor :public_profile
      
        # The list of achieved certifications. These are calculated based on exam
        # results and other requirements.
        # @OutputOnly
        # Corresponds to the JSON property `certificationStatus`
        # @return [Array<Google::Apis::PartnersV2::Certification>]
        attr_accessor :certification_status
      
        # The email address used by the user used for company verification.
        # @OutputOnly
        # Corresponds to the JSON property `companyVerificationEmail`
        # @return [String]
        attr_accessor :company_verification_email
      
        # The profile information of a Partners user.
        # Corresponds to the JSON property `profile`
        # @return [Google::Apis::PartnersV2::UserProfile]
        attr_accessor :profile
      
        # A CompanyRelation resource representing information about a user's
        # affiliation and standing with a company in Partners.
        # Corresponds to the JSON property `company`
        # @return [Google::Apis::PartnersV2::CompanyRelation]
        attr_accessor :company
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @last_access_time = args[:last_access_time] if args.key?(:last_access_time)
          @primary_emails = args[:primary_emails] if args.key?(:primary_emails)
          @available_adwords_manager_accounts = args[:available_adwords_manager_accounts] if args.key?(:available_adwords_manager_accounts)
          @exam_status = args[:exam_status] if args.key?(:exam_status)
          @id = args[:id] if args.key?(:id)
          @public_profile = args[:public_profile] if args.key?(:public_profile)
          @certification_status = args[:certification_status] if args.key?(:certification_status)
          @company_verification_email = args[:company_verification_email] if args.key?(:company_verification_email)
          @profile = args[:profile] if args.key?(:profile)
          @company = args[:company] if args.key?(:company)
        end
      end
      
      # Response message for
      # ListAnalytics.
      class ListAnalyticsResponse
        include Google::Apis::Core::Hashable
      
        # The list of analytics.
        # Sorted in ascending order of
        # Analytics.event_date.
        # Corresponds to the JSON property `analytics`
        # @return [Array<Google::Apis::PartnersV2::Analytics>]
        attr_accessor :analytics
      
        # A token to retrieve next page of results.
        # Pass this value in the `ListAnalyticsRequest.page_token` field in the
        # subsequent call to
        # ListAnalytics to retrieve the
        # next page of results.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # Common data that is in each API response.
        # Corresponds to the JSON property `responseMetadata`
        # @return [Google::Apis::PartnersV2::ResponseMetadata]
        attr_accessor :response_metadata
      
        # Analytics aggregated data for a `Company` for a given date range.
        # Corresponds to the JSON property `analyticsSummary`
        # @return [Google::Apis::PartnersV2::AnalyticsSummary]
        attr_accessor :analytics_summary
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @analytics = args[:analytics] if args.key?(:analytics)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @response_metadata = args[:response_metadata] if args.key?(:response_metadata)
          @analytics_summary = args[:analytics_summary] if args.key?(:analytics_summary)
        end
      end
      
      # Response message for ListLeads.
      class ListLeadsResponse
        include Google::Apis::Core::Hashable
      
        # A token to retrieve next page of results.
        # Pass this value in the `ListLeadsRequest.page_token` field in the
        # subsequent call to
        # ListLeads to retrieve the
        # next page of results.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # Common data that is in each API response.
        # Corresponds to the JSON property `responseMetadata`
        # @return [Google::Apis::PartnersV2::ResponseMetadata]
        attr_accessor :response_metadata
      
        # The total count of leads for the given company.
        # Corresponds to the JSON property `totalSize`
        # @return [Fixnum]
        attr_accessor :total_size
      
        # The list of leads.
        # Corresponds to the JSON property `leads`
        # @return [Array<Google::Apis::PartnersV2::Lead>]
        attr_accessor :leads
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @response_metadata = args[:response_metadata] if args.key?(:response_metadata)
          @total_size = args[:total_size] if args.key?(:total_size)
          @leads = args[:leads] if args.key?(:leads)
        end
      end
      
      # A company resource in the Google Partners API. Once certified, it qualifies
      # for being searched by advertisers.
      class Company
        include Google::Apis::Core::Hashable
      
        # A location with address and geographic coordinates. May optionally contain a
        # detailed (multi-field) version of the address.
        # Corresponds to the JSON property `primaryLocation`
        # @return [Google::Apis::PartnersV2::Location]
        attr_accessor :primary_location
      
        # Services the company can help with.
        # Corresponds to the JSON property `services`
        # @return [Array<String>]
        attr_accessor :services
      
        # Represents an amount of money with its currency type.
        # Corresponds to the JSON property `originalMinMonthlyBudget`
        # @return [Google::Apis::PartnersV2::Money]
        attr_accessor :original_min_monthly_budget
      
        # Basic information from a public profile.
        # Corresponds to the JSON property `publicProfile`
        # @return [Google::Apis::PartnersV2::PublicProfile]
        attr_accessor :public_profile
      
        # Information related to the ranking of the company within the list of
        # companies.
        # Corresponds to the JSON property `ranks`
        # @return [Array<Google::Apis::PartnersV2::Rank>]
        attr_accessor :ranks
      
        # The list of Google Partners specialization statuses for the company.
        # Corresponds to the JSON property `specializationStatus`
        # @return [Array<Google::Apis::PartnersV2::SpecializationStatus>]
        attr_accessor :specialization_status
      
        # Partner badge tier
        # Corresponds to the JSON property `badgeTier`
        # @return [String]
        attr_accessor :badge_tier
      
        # Company type labels listed on the company's profile.
        # Corresponds to the JSON property `companyTypes`
        # @return [Array<String>]
        attr_accessor :company_types
      
        # Email domains that allow users with a matching email address to get
        # auto-approved for associating with this company.
        # Corresponds to the JSON property `autoApprovalEmailDomains`
        # @return [Array<String>]
        attr_accessor :auto_approval_email_domains
      
        # The primary language code of the company, as defined by
        # <a href="https://tools.ietf.org/html/bcp47">BCP 47</a>
        # (IETF BCP 47, "Tags for Identifying Languages").
        # Corresponds to the JSON property `primaryLanguageCode`
        # @return [String]
        attr_accessor :primary_language_code
      
        # The public viewability status of the company's profile.
        # Corresponds to the JSON property `profileStatus`
        # @return [String]
        attr_accessor :profile_status
      
        # The list of all company locations.
        # If set, must include the
        # primary_location
        # in the list.
        # Corresponds to the JSON property `locations`
        # @return [Array<Google::Apis::PartnersV2::Location>]
        attr_accessor :locations
      
        # Represents an amount of money with its currency type.
        # Corresponds to the JSON property `convertedMinMonthlyBudget`
        # @return [Google::Apis::PartnersV2::Money]
        attr_accessor :converted_min_monthly_budget
      
        # Industries the company can help with.
        # Corresponds to the JSON property `industries`
        # @return [Array<String>]
        attr_accessor :industries
      
        # URL of the company's additional websites used to verify the dynamic badges.
        # These are stored as full URLs as entered by the user, but only the TLD will
        # be used for the actual verification.
        # Corresponds to the JSON property `additionalWebsites`
        # @return [Array<String>]
        attr_accessor :additional_websites
      
        # URL of the company's website.
        # Corresponds to the JSON property `websiteUrl`
        # @return [String]
        attr_accessor :website_url
      
        # The Primary AdWords Manager Account id.
        # Corresponds to the JSON property `primaryAdwordsManagerAccountId`
        # @return [Fixnum]
        attr_accessor :primary_adwords_manager_account_id
      
        # The name of the company.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # The list of localized info for the company.
        # Corresponds to the JSON property `localizedInfos`
        # @return [Array<Google::Apis::PartnersV2::LocalizedCompanyInfo>]
        attr_accessor :localized_infos
      
        # The ID of the company.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # The list of Google Partners certification statuses for the company.
        # Corresponds to the JSON property `certificationStatuses`
        # @return [Array<Google::Apis::PartnersV2::CertificationStatus>]
        attr_accessor :certification_statuses
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @primary_location = args[:primary_location] if args.key?(:primary_location)
          @services = args[:services] if args.key?(:services)
          @original_min_monthly_budget = args[:original_min_monthly_budget] if args.key?(:original_min_monthly_budget)
          @public_profile = args[:public_profile] if args.key?(:public_profile)
          @ranks = args[:ranks] if args.key?(:ranks)
          @specialization_status = args[:specialization_status] if args.key?(:specialization_status)
          @badge_tier = args[:badge_tier] if args.key?(:badge_tier)
          @company_types = args[:company_types] if args.key?(:company_types)
          @auto_approval_email_domains = args[:auto_approval_email_domains] if args.key?(:auto_approval_email_domains)
          @primary_language_code = args[:primary_language_code] if args.key?(:primary_language_code)
          @profile_status = args[:profile_status] if args.key?(:profile_status)
          @locations = args[:locations] if args.key?(:locations)
          @converted_min_monthly_budget = args[:converted_min_monthly_budget] if args.key?(:converted_min_monthly_budget)
          @industries = args[:industries] if args.key?(:industries)
          @additional_websites = args[:additional_websites] if args.key?(:additional_websites)
          @website_url = args[:website_url] if args.key?(:website_url)
          @primary_adwords_manager_account_id = args[:primary_adwords_manager_account_id] if args.key?(:primary_adwords_manager_account_id)
          @name = args[:name] if args.key?(:name)
          @localized_infos = args[:localized_infos] if args.key?(:localized_infos)
          @id = args[:id] if args.key?(:id)
          @certification_statuses = args[:certification_statuses] if args.key?(:certification_statuses)
        end
      end
      
      # Response message for CreateLead.
      class CreateLeadResponse
        include Google::Apis::Core::Hashable
      
        # A lead resource that represents an advertiser contact for a `Company`. These
        # are usually generated via Google Partner Search (the advertiser portal).
        # Corresponds to the JSON property `lead`
        # @return [Google::Apis::PartnersV2::Lead]
        attr_accessor :lead
      
        # The outcome of <a href="https://www.google.com/recaptcha/">reCaptcha</a>
        # validation.
        # Corresponds to the JSON property `recaptchaStatus`
        # @return [String]
        attr_accessor :recaptcha_status
      
        # Common data that is in each API response.
        # Corresponds to the JSON property `responseMetadata`
        # @return [Google::Apis::PartnersV2::ResponseMetadata]
        attr_accessor :response_metadata
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @lead = args[:lead] if args.key?(:lead)
          @recaptcha_status = args[:recaptcha_status] if args.key?(:recaptcha_status)
          @response_metadata = args[:response_metadata] if args.key?(:response_metadata)
        end
      end
      
      # Response message for GetCompany.
      class GetCompanyResponse
        include Google::Apis::Core::Hashable
      
        # A company resource in the Google Partners API. Once certified, it qualifies
        # for being searched by advertisers.
        # Corresponds to the JSON property `company`
        # @return [Google::Apis::PartnersV2::Company]
        attr_accessor :company
      
        # Common data that is in each API response.
        # Corresponds to the JSON property `responseMetadata`
        # @return [Google::Apis::PartnersV2::ResponseMetadata]
        attr_accessor :response_metadata
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @company = args[:company] if args.key?(:company)
          @response_metadata = args[:response_metadata] if args.key?(:response_metadata)
        end
      end
      
      # A location with address and geographic coordinates. May optionally contain a
      # detailed (multi-field) version of the address.
      class Location
        include Google::Apis::Core::Hashable
      
        # Generally refers to the city/town portion of an address.
        # Corresponds to the JSON property `locality`
        # @return [String]
        attr_accessor :locality
      
        # Top-level administrative subdivision of this country.
        # Corresponds to the JSON property `administrativeArea`
        # @return [String]
        attr_accessor :administrative_area
      
        # An object representing a latitude/longitude pair. This is expressed as a pair
        # of doubles representing degrees latitude and degrees longitude. Unless
        # specified otherwise, this must conform to the
        # <a href="http://www.unoosa.org/pdf/icg/2012/template/WGS_84.pdf">WGS84
        # standard</a>. Values must be within normalized ranges.
        # Example of normalization code in Python:
        # def NormalizeLongitude(longitude):
        # """Wraps decimal degrees longitude to [-180.0, 180.0]."""
        # q, r = divmod(longitude, 360.0)
        # if r > 180.0 or (r == 180.0 and q <= -1.0):
        # return r - 360.0
        # return r
        # def NormalizeLatLng(latitude, longitude):
        # """Wraps decimal degrees latitude and longitude to
        # [-90.0, 90.0] and [-180.0, 180.0], respectively."""
        # r = latitude % 360.0
        # if r <= 90.0:
        # return r, NormalizeLongitude(longitude)
        # elif r >= 270.0:
        # return r - 360, NormalizeLongitude(longitude)
        # else:
        # return 180 - r, NormalizeLongitude(longitude + 180.0)
        # assert 180.0 == NormalizeLongitude(180.0)
        # assert -180.0 == NormalizeLongitude(-180.0)
        # assert -179.0 == NormalizeLongitude(181.0)
        # assert (0.0, 0.0) == NormalizeLatLng(360.0, 0.0)
        # assert (0.0, 0.0) == NormalizeLatLng(-360.0, 0.0)
        # assert (85.0, 180.0) == NormalizeLatLng(95.0, 0.0)
        # assert (-85.0, -170.0) == NormalizeLatLng(-95.0, 10.0)
        # assert (90.0, 10.0) == NormalizeLatLng(90.0, 10.0)
        # assert (-90.0, -10.0) == NormalizeLatLng(-90.0, -10.0)
        # assert (0.0, -170.0) == NormalizeLatLng(-180.0, 10.0)
        # assert (0.0, -170.0) == NormalizeLatLng(180.0, 10.0)
        # assert (-90.0, 10.0) == NormalizeLatLng(270.0, 10.0)
        # assert (90.0, 10.0) == NormalizeLatLng(-270.0, 10.0)
        # Corresponds to the JSON property `latLng`
        # @return [Google::Apis::PartnersV2::LatLng]
        attr_accessor :lat_lng
      
        # The single string version of the address.
        # Corresponds to the JSON property `address`
        # @return [String]
        attr_accessor :address
      
        # Dependent locality or sublocality. Used for UK dependent localities, or
        # neighborhoods or boroughs in other locations.
        # Corresponds to the JSON property `dependentLocality`
        # @return [String]
        attr_accessor :dependent_locality
      
        # CLDR (Common Locale Data Repository) region code .
        # Corresponds to the JSON property `regionCode`
        # @return [String]
        attr_accessor :region_code
      
        # Values are frequently alphanumeric.
        # Corresponds to the JSON property `postalCode`
        # @return [String]
        attr_accessor :postal_code
      
        # Language code of the address. Should be in BCP 47 format.
        # Corresponds to the JSON property `languageCode`
        # @return [String]
        attr_accessor :language_code
      
        # Use of this code is very country-specific, but will refer to a secondary
        # classification code for sorting mail.
        # Corresponds to the JSON property `sortingCode`
        # @return [String]
        attr_accessor :sorting_code
      
        # The following address lines represent the most specific part of any
        # address.
        # Corresponds to the JSON property `addressLine`
        # @return [Array<String>]
        attr_accessor :address_line
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @locality = args[:locality] if args.key?(:locality)
          @administrative_area = args[:administrative_area] if args.key?(:administrative_area)
          @lat_lng = args[:lat_lng] if args.key?(:lat_lng)
          @address = args[:address] if args.key?(:address)
          @dependent_locality = args[:dependent_locality] if args.key?(:dependent_locality)
          @region_code = args[:region_code] if args.key?(:region_code)
          @postal_code = args[:postal_code] if args.key?(:postal_code)
          @language_code = args[:language_code] if args.key?(:language_code)
          @sorting_code = args[:sorting_code] if args.key?(:sorting_code)
          @address_line = args[:address_line] if args.key?(:address_line)
        end
      end
      
      # A token that allows a user to take an exam.
      class ExamToken
        include Google::Apis::Core::Hashable
      
        # The id of the exam the token is for.
        # Corresponds to the JSON property `examId`
        # @return [Fixnum]
        attr_accessor :exam_id
      
        # The token, only present if the user has access to the exam.
        # Corresponds to the JSON property `token`
        # @return [String]
        attr_accessor :token
      
        # The type of the exam the token belongs to.
        # Corresponds to the JSON property `examType`
        # @return [String]
        attr_accessor :exam_type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @exam_id = args[:exam_id] if args.key?(:exam_id)
          @token = args[:token] if args.key?(:token)
          @exam_type = args[:exam_type] if args.key?(:exam_type)
        end
      end
      
      # Status for a Google Partners certification exam.
      class CertificationExamStatus
        include Google::Apis::Core::Hashable
      
        # The type of certification exam.
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        # The number of people who have passed the certification exam.
        # Corresponds to the JSON property `numberUsersPass`
        # @return [Fixnum]
        attr_accessor :number_users_pass
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @type = args[:type] if args.key?(:type)
          @number_users_pass = args[:number_users_pass] if args.key?(:number_users_pass)
        end
      end
      
      # A set of opt-ins for a user.
      class OptIns
        include Google::Apis::Core::Hashable
      
        # An opt-in about receiving email regarding new features and products.
        # Corresponds to the JSON property `specialOffers`
        # @return [Boolean]
        attr_accessor :special_offers
        alias_method :special_offers?, :special_offers
      
        # An opt-in about receiving email with customized AdWords campaign management
        # tips.
        # Corresponds to the JSON property `performanceSuggestions`
        # @return [Boolean]
        attr_accessor :performance_suggestions
        alias_method :performance_suggestions?, :performance_suggestions
      
        # An opt-in to receive special promotional gifts and material in the mail.
        # Corresponds to the JSON property `physicalMail`
        # @return [Boolean]
        attr_accessor :physical_mail
        alias_method :physical_mail?, :physical_mail
      
        # An opt-in to allow recieivng phone calls about their Partners account.
        # Corresponds to the JSON property `phoneContact`
        # @return [Boolean]
        attr_accessor :phone_contact
        alias_method :phone_contact?, :phone_contact
      
        # An opt-in about receiving email from Partners marketing teams. Includes
        # member-only events and special promotional offers for Google products.
        # Corresponds to the JSON property `marketComm`
        # @return [Boolean]
        attr_accessor :market_comm
        alias_method :market_comm?, :market_comm
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @special_offers = args[:special_offers] if args.key?(:special_offers)
          @performance_suggestions = args[:performance_suggestions] if args.key?(:performance_suggestions)
          @physical_mail = args[:physical_mail] if args.key?(:physical_mail)
          @phone_contact = args[:phone_contact] if args.key?(:phone_contact)
          @market_comm = args[:market_comm] if args.key?(:market_comm)
        end
      end
      
      # Information related to ranking of results.
      class Rank
        include Google::Apis::Core::Hashable
      
        # The type of rank.
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        # The numerical value of the rank.
        # Corresponds to the JSON property `value`
        # @return [Float]
        attr_accessor :value
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @type = args[:type] if args.key?(:type)
          @value = args[:value] if args.key?(:value)
        end
      end
      
      # The profile information of a Partners user.
      class UserProfile
        include Google::Apis::Core::Hashable
      
        # The email address the user has selected on the Partners site as primary.
        # Corresponds to the JSON property `emailAddress`
        # @return [String]
        attr_accessor :email_address
      
        # Whether the user's public profile is visible to anyone with the URL.
        # Corresponds to the JSON property `profilePublic`
        # @return [Boolean]
        attr_accessor :profile_public
        alias_method :profile_public?, :profile_public
      
        # A list of ids representing which channels the user selected they were in.
        # Corresponds to the JSON property `channels`
        # @return [Array<String>]
        attr_accessor :channels
      
        # A list of ids represnting which job categories the user selected.
        # Corresponds to the JSON property `jobFunctions`
        # @return [Array<String>]
        attr_accessor :job_functions
      
        # The user's given name.
        # Corresponds to the JSON property `givenName`
        # @return [String]
        attr_accessor :given_name
      
        # A location with address and geographic coordinates. May optionally contain a
        # detailed (multi-field) version of the address.
        # Corresponds to the JSON property `address`
        # @return [Google::Apis::PartnersV2::Location]
        attr_accessor :address
      
        # A list of ids representing which industries the user selected.
        # Corresponds to the JSON property `industries`
        # @return [Array<String>]
        attr_accessor :industries
      
        # The list of languages this user understands.
        # Corresponds to the JSON property `languages`
        # @return [Array<String>]
        attr_accessor :languages
      
        # The user's family name.
        # Corresponds to the JSON property `familyName`
        # @return [String]
        attr_accessor :family_name
      
        # A set of opt-ins for a user.
        # Corresponds to the JSON property `emailOptIns`
        # @return [Google::Apis::PartnersV2::OptIns]
        attr_accessor :email_opt_ins
      
        # A list of ids representing which markets the user was interested in.
        # Corresponds to the JSON property `markets`
        # @return [Array<String>]
        attr_accessor :markets
      
        # The user's phone number.
        # Corresponds to the JSON property `phoneNumber`
        # @return [String]
        attr_accessor :phone_number
      
        # If the user has edit access to multiple accounts, the user can choose the
        # preferred account and it is used when a personal account is needed. Can
        # be empty.
        # Corresponds to the JSON property `adwordsManagerAccount`
        # @return [Fixnum]
        attr_accessor :adwords_manager_account
      
        # The user's primary country, an ISO 2-character code.
        # Corresponds to the JSON property `primaryCountryCode`
        # @return [String]
        attr_accessor :primary_country_code
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @email_address = args[:email_address] if args.key?(:email_address)
          @profile_public = args[:profile_public] if args.key?(:profile_public)
          @channels = args[:channels] if args.key?(:channels)
          @job_functions = args[:job_functions] if args.key?(:job_functions)
          @given_name = args[:given_name] if args.key?(:given_name)
          @address = args[:address] if args.key?(:address)
          @industries = args[:industries] if args.key?(:industries)
          @languages = args[:languages] if args.key?(:languages)
          @family_name = args[:family_name] if args.key?(:family_name)
          @email_opt_ins = args[:email_opt_ins] if args.key?(:email_opt_ins)
          @markets = args[:markets] if args.key?(:markets)
          @phone_number = args[:phone_number] if args.key?(:phone_number)
          @adwords_manager_account = args[:adwords_manager_account] if args.key?(:adwords_manager_account)
          @primary_country_code = args[:primary_country_code] if args.key?(:primary_country_code)
        end
      end
      
      # Response message for
      # GetPartnersStatus.
      class GetPartnersStatusResponse
        include Google::Apis::Core::Hashable
      
        # Common data that is in each API response.
        # Corresponds to the JSON property `responseMetadata`
        # @return [Google::Apis::PartnersV2::ResponseMetadata]
        attr_accessor :response_metadata
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @response_metadata = args[:response_metadata] if args.key?(:response_metadata)
        end
      end
      
      # Historical information about a Google Partners Offer.
      class HistoricalOffer
        include Google::Apis::Core::Hashable
      
        # Country Code for the offer country.
        # Corresponds to the JSON property `offerCountryCode`
        # @return [String]
        attr_accessor :offer_country_code
      
        # Time this offer expires.
        # Corresponds to the JSON property `expirationTime`
        # @return [String]
        attr_accessor :expiration_time
      
        # Offer code.
        # Corresponds to the JSON property `offerCode`
        # @return [String]
        attr_accessor :offer_code
      
        # Time offer was first created.
        # Corresponds to the JSON property `creationTime`
        # @return [String]
        attr_accessor :creation_time
      
        # Email address for client.
        # Corresponds to the JSON property `clientEmail`
        # @return [String]
        attr_accessor :client_email
      
        # Status of the offer.
        # Corresponds to the JSON property `status`
        # @return [String]
        attr_accessor :status
      
        # ID of client.
        # Corresponds to the JSON property `clientId`
        # @return [Fixnum]
        attr_accessor :client_id
      
        # Name of the client.
        # Corresponds to the JSON property `clientName`
        # @return [String]
        attr_accessor :client_name
      
        # Time last action was taken.
        # Corresponds to the JSON property `lastModifiedTime`
        # @return [String]
        attr_accessor :last_modified_time
      
        # Client's AdWords page URL.
        # Corresponds to the JSON property `adwordsUrl`
        # @return [String]
        attr_accessor :adwords_url
      
        # Type of offer.
        # Corresponds to the JSON property `offerType`
        # @return [String]
        attr_accessor :offer_type
      
        # Name (First + Last) of the partners user to whom the incentive is allocated.
        # Corresponds to the JSON property `senderName`
        # @return [String]
        attr_accessor :sender_name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @offer_country_code = args[:offer_country_code] if args.key?(:offer_country_code)
          @expiration_time = args[:expiration_time] if args.key?(:expiration_time)
          @offer_code = args[:offer_code] if args.key?(:offer_code)
          @creation_time = args[:creation_time] if args.key?(:creation_time)
          @client_email = args[:client_email] if args.key?(:client_email)
          @status = args[:status] if args.key?(:status)
          @client_id = args[:client_id] if args.key?(:client_id)
          @client_name = args[:client_name] if args.key?(:client_name)
          @last_modified_time = args[:last_modified_time] if args.key?(:last_modified_time)
          @adwords_url = args[:adwords_url] if args.key?(:adwords_url)
          @offer_type = args[:offer_type] if args.key?(:offer_type)
          @sender_name = args[:sender_name] if args.key?(:sender_name)
        end
      end
      
      # Request message for
      # LogUserEvent.
      class LogUserEventRequest
        include Google::Apis::Core::Hashable
      
        # Common data that is in each API request.
        # Corresponds to the JSON property `requestMetadata`
        # @return [Google::Apis::PartnersV2::RequestMetadata]
        attr_accessor :request_metadata
      
        # The URL where the event occurred.
        # Corresponds to the JSON property `url`
        # @return [String]
        attr_accessor :url
      
        # List of event data for the event.
        # Corresponds to the JSON property `eventDatas`
        # @return [Array<Google::Apis::PartnersV2::EventData>]
        attr_accessor :event_datas
      
        # The scope of the event.
        # Corresponds to the JSON property `eventScope`
        # @return [String]
        attr_accessor :event_scope
      
        # The category the action belongs to.
        # Corresponds to the JSON property `eventCategory`
        # @return [String]
        attr_accessor :event_category
      
        # A lead resource that represents an advertiser contact for a `Company`. These
        # are usually generated via Google Partner Search (the advertiser portal).
        # Corresponds to the JSON property `lead`
        # @return [Google::Apis::PartnersV2::Lead]
        attr_accessor :lead
      
        # The action that occurred.
        # Corresponds to the JSON property `eventAction`
        # @return [String]
        attr_accessor :event_action
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @request_metadata = args[:request_metadata] if args.key?(:request_metadata)
          @url = args[:url] if args.key?(:url)
          @event_datas = args[:event_datas] if args.key?(:event_datas)
          @event_scope = args[:event_scope] if args.key?(:event_scope)
          @event_category = args[:event_category] if args.key?(:event_category)
          @lead = args[:lead] if args.key?(:lead)
          @event_action = args[:event_action] if args.key?(:event_action)
        end
      end
      
      # Values to use instead of the user's respective defaults. These are only
      # honored by whitelisted products.
      class UserOverrides
        include Google::Apis::Core::Hashable
      
        # Logged-in user ID to impersonate instead of the user's ID.
        # Corresponds to the JSON property `userId`
        # @return [String]
        attr_accessor :user_id
      
        # IP address to use instead of the user's geo-located IP address.
        # Corresponds to the JSON property `ipAddress`
        # @return [String]
        attr_accessor :ip_address
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @user_id = args[:user_id] if args.key?(:user_id)
          @ip_address = args[:ip_address] if args.key?(:ip_address)
        end
      end
      
      # Details of the analytics events for a `Company` within a single day.
      class AnalyticsDataPoint
        include Google::Apis::Core::Hashable
      
        # Number of times the type of event occurred.
        # Meaning depends on context (e.g. profile views, contacts, etc.).
        # Corresponds to the JSON property `eventCount`
        # @return [Fixnum]
        attr_accessor :event_count
      
        # Location information of where these events occurred.
        # Corresponds to the JSON property `eventLocations`
        # @return [Array<Google::Apis::PartnersV2::LatLng>]
        attr_accessor :event_locations
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @event_count = args[:event_count] if args.key?(:event_count)
          @event_locations = args[:event_locations] if args.key?(:event_locations)
        end
      end
      
      # Analytics data for a `Company` within a single day.
      class Analytics
        include Google::Apis::Core::Hashable
      
        # Represents a whole calendar date, e.g. date of birth. The time of day and
        # time zone are either specified elsewhere or are not significant. The date
        # is relative to the Proleptic Gregorian Calendar. The day may be 0 to
        # represent a year and month where the day is not significant, e.g. credit card
        # expiration date. The year may be 0 to represent a month and day independent
        # of year, e.g. anniversary date. Related types are google.type.TimeOfDay
        # and `google.protobuf.Timestamp`.
        # Corresponds to the JSON property `eventDate`
        # @return [Google::Apis::PartnersV2::Date]
        attr_accessor :event_date
      
        # Details of the analytics events for a `Company` within a single day.
        # Corresponds to the JSON property `profileViews`
        # @return [Google::Apis::PartnersV2::AnalyticsDataPoint]
        attr_accessor :profile_views
      
        # Details of the analytics events for a `Company` within a single day.
        # Corresponds to the JSON property `searchViews`
        # @return [Google::Apis::PartnersV2::AnalyticsDataPoint]
        attr_accessor :search_views
      
        # Details of the analytics events for a `Company` within a single day.
        # Corresponds to the JSON property `contacts`
        # @return [Google::Apis::PartnersV2::AnalyticsDataPoint]
        attr_accessor :contacts
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @event_date = args[:event_date] if args.key?(:event_date)
          @profile_views = args[:profile_views] if args.key?(:profile_views)
          @search_views = args[:search_views] if args.key?(:search_views)
          @contacts = args[:contacts] if args.key?(:contacts)
        end
      end
      
      # Information about a particular AdWords Manager Account.
      # Read more at https://support.google.com/adwords/answer/6139186
      class AdWordsManagerAccountInfo
        include Google::Apis::Core::Hashable
      
        # The AdWords Manager Account id.
        # Corresponds to the JSON property `id`
        # @return [Fixnum]
        attr_accessor :id
      
        # Name of the customer this account represents.
        # Corresponds to the JSON property `customerName`
        # @return [String]
        attr_accessor :customer_name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @id = args[:id] if args.key?(:id)
          @customer_name = args[:customer_name] if args.key?(:customer_name)
        end
      end
      
      # Basic information from a public profile.
      class PublicProfile
        include Google::Apis::Core::Hashable
      
        # The ID which can be used to retrieve more details about the public profile.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # The URL of the public profile.
        # Corresponds to the JSON property `url`
        # @return [String]
        attr_accessor :url
      
        # The URL to the main profile image of the public profile.
        # Corresponds to the JSON property `profileImage`
        # @return [String]
        attr_accessor :profile_image
      
        # The display name of the public profile.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # The URL to the main display image of the public profile. Being deprecated.
        # Corresponds to the JSON property `displayImageUrl`
        # @return [String]
        attr_accessor :display_image_url
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @id = args[:id] if args.key?(:id)
          @url = args[:url] if args.key?(:url)
          @profile_image = args[:profile_image] if args.key?(:profile_image)
          @display_name = args[:display_name] if args.key?(:display_name)
          @display_image_url = args[:display_image_url] if args.key?(:display_image_url)
        end
      end
      
      # Common data that is in each API response.
      class ResponseMetadata
        include Google::Apis::Core::Hashable
      
        # Debug information about this request.
        # Corresponds to the JSON property `debugInfo`
        # @return [Google::Apis::PartnersV2::DebugInfo]
        attr_accessor :debug_info
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @debug_info = args[:debug_info] if args.key?(:debug_info)
        end
      end
      
      # <a href="https://www.google.com/recaptcha/">reCaptcha</a> challenge info.
      class RecaptchaChallenge
        include Google::Apis::Core::Hashable
      
        # The response to the reCaptcha challenge.
        # Corresponds to the JSON property `response`
        # @return [String]
        attr_accessor :response
      
        # The ID of the reCaptcha challenge.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @response = args[:response] if args.key?(:response)
          @id = args[:id] if args.key?(:id)
        end
      end
      
      # Available Offers to be distributed.
      class AvailableOffer
        include Google::Apis::Core::Hashable
      
        # Level of this offer.
        # Corresponds to the JSON property `offerLevel`
        # @return [String]
        attr_accessor :offer_level
      
        # Name of the offer.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Whether or not the list of qualified customers is definitely complete.
        # Corresponds to the JSON property `qualifiedCustomersComplete`
        # @return [Boolean]
        attr_accessor :qualified_customers_complete
        alias_method :qualified_customers_complete?, :qualified_customers_complete
      
        # ID of this offer.
        # Corresponds to the JSON property `id`
        # @return [Fixnum]
        attr_accessor :id
      
        # Offer info by country.
        # Corresponds to the JSON property `countryOfferInfos`
        # @return [Array<Google::Apis::PartnersV2::CountryOfferInfo>]
        attr_accessor :country_offer_infos
      
        # Type of offer.
        # Corresponds to the JSON property `offerType`
        # @return [String]
        attr_accessor :offer_type
      
        # The maximum age of an account [in days] to be eligible.
        # Corresponds to the JSON property `maxAccountAge`
        # @return [Fixnum]
        attr_accessor :max_account_age
      
        # Customers who qualify for this offer.
        # Corresponds to the JSON property `qualifiedCustomer`
        # @return [Array<Google::Apis::PartnersV2::OfferCustomer>]
        attr_accessor :qualified_customer
      
        # Terms of the offer.
        # Corresponds to the JSON property `terms`
        # @return [String]
        attr_accessor :terms
      
        # Should special text be shown on the offers page.
        # Corresponds to the JSON property `showSpecialOfferCopy`
        # @return [Boolean]
        attr_accessor :show_special_offer_copy
        alias_method :show_special_offer_copy?, :show_special_offer_copy
      
        # The number of codes for this offer that are available for distribution.
        # Corresponds to the JSON property `available`
        # @return [Fixnum]
        attr_accessor :available
      
        # Description of the offer.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @offer_level = args[:offer_level] if args.key?(:offer_level)
          @name = args[:name] if args.key?(:name)
          @qualified_customers_complete = args[:qualified_customers_complete] if args.key?(:qualified_customers_complete)
          @id = args[:id] if args.key?(:id)
          @country_offer_infos = args[:country_offer_infos] if args.key?(:country_offer_infos)
          @offer_type = args[:offer_type] if args.key?(:offer_type)
          @max_account_age = args[:max_account_age] if args.key?(:max_account_age)
          @qualified_customer = args[:qualified_customer] if args.key?(:qualified_customer)
          @terms = args[:terms] if args.key?(:terms)
          @show_special_offer_copy = args[:show_special_offer_copy] if args.key?(:show_special_offer_copy)
          @available = args[:available] if args.key?(:available)
          @description = args[:description] if args.key?(:description)
        end
      end
      
      # An object representing a latitude/longitude pair. This is expressed as a pair
      # of doubles representing degrees latitude and degrees longitude. Unless
      # specified otherwise, this must conform to the
      # <a href="http://www.unoosa.org/pdf/icg/2012/template/WGS_84.pdf">WGS84
      # standard</a>. Values must be within normalized ranges.
      # Example of normalization code in Python:
      # def NormalizeLongitude(longitude):
      # """Wraps decimal degrees longitude to [-180.0, 180.0]."""
      # q, r = divmod(longitude, 360.0)
      # if r > 180.0 or (r == 180.0 and q <= -1.0):
      # return r - 360.0
      # return r
      # def NormalizeLatLng(latitude, longitude):
      # """Wraps decimal degrees latitude and longitude to
      # [-90.0, 90.0] and [-180.0, 180.0], respectively."""
      # r = latitude % 360.0
      # if r <= 90.0:
      # return r, NormalizeLongitude(longitude)
      # elif r >= 270.0:
      # return r - 360, NormalizeLongitude(longitude)
      # else:
      # return 180 - r, NormalizeLongitude(longitude + 180.0)
      # assert 180.0 == NormalizeLongitude(180.0)
      # assert -180.0 == NormalizeLongitude(-180.0)
      # assert -179.0 == NormalizeLongitude(181.0)
      # assert (0.0, 0.0) == NormalizeLatLng(360.0, 0.0)
      # assert (0.0, 0.0) == NormalizeLatLng(-360.0, 0.0)
      # assert (85.0, 180.0) == NormalizeLatLng(95.0, 0.0)
      # assert (-85.0, -170.0) == NormalizeLatLng(-95.0, 10.0)
      # assert (90.0, 10.0) == NormalizeLatLng(90.0, 10.0)
      # assert (-90.0, -10.0) == NormalizeLatLng(-90.0, -10.0)
      # assert (0.0, -170.0) == NormalizeLatLng(-180.0, 10.0)
      # assert (0.0, -170.0) == NormalizeLatLng(180.0, 10.0)
      # assert (-90.0, 10.0) == NormalizeLatLng(270.0, 10.0)
      # assert (90.0, 10.0) == NormalizeLatLng(-270.0, 10.0)
      class LatLng
        include Google::Apis::Core::Hashable
      
        # The longitude in degrees. It must be in the range [-180.0, +180.0].
        # Corresponds to the JSON property `longitude`
        # @return [Float]
        attr_accessor :longitude
      
        # The latitude in degrees. It must be in the range [-90.0, +90.0].
        # Corresponds to the JSON property `latitude`
        # @return [Float]
        attr_accessor :latitude
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @longitude = args[:longitude] if args.key?(:longitude)
          @latitude = args[:latitude] if args.key?(:latitude)
        end
      end
      
      # Represents an amount of money with its currency type.
      class Money
        include Google::Apis::Core::Hashable
      
        # The whole units of the amount.
        # For example if `currencyCode` is `"USD"`, then 1 unit is one US dollar.
        # Corresponds to the JSON property `units`
        # @return [Fixnum]
        attr_accessor :units
      
        # The 3-letter currency code defined in ISO 4217.
        # Corresponds to the JSON property `currencyCode`
        # @return [String]
        attr_accessor :currency_code
      
        # Number of nano (10^-9) units of the amount.
        # The value must be between -999,999,999 and +999,999,999 inclusive.
        # If `units` is positive, `nanos` must be positive or zero.
        # If `units` is zero, `nanos` can be positive, zero, or negative.
        # If `units` is negative, `nanos` must be negative or zero.
        # For example $-1.75 is represented as `units`=-1 and `nanos`=-750,000,000.
        # Corresponds to the JSON property `nanos`
        # @return [Fixnum]
        attr_accessor :nanos
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @units = args[:units] if args.key?(:units)
          @currency_code = args[:currency_code] if args.key?(:currency_code)
          @nanos = args[:nanos] if args.key?(:nanos)
        end
      end
    end
  end
end
