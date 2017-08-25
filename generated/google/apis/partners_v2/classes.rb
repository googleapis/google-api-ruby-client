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
      
      # Information about a particular AdWords Manager Account.
      # Read more at https://support.google.com/adwords/answer/6139186
      class AdWordsManagerAccountInfo
        include Google::Apis::Core::Hashable
      
        # Name of the customer this account represents.
        # Corresponds to the JSON property `customerName`
        # @return [String]
        attr_accessor :customer_name
      
        # The AdWords Manager Account id.
        # Corresponds to the JSON property `id`
        # @return [Fixnum]
        attr_accessor :id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @customer_name = args[:customer_name] if args.key?(:customer_name)
          @id = args[:id] if args.key?(:id)
        end
      end
      
      # Analytics data for a `Company` within a single day.
      class Analytics
        include Google::Apis::Core::Hashable
      
        # Details of the analytics events for a `Company` within a single day.
        # Corresponds to the JSON property `contacts`
        # @return [Google::Apis::PartnersV2::AnalyticsDataPoint]
        attr_accessor :contacts
      
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
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @contacts = args[:contacts] if args.key?(:contacts)
          @event_date = args[:event_date] if args.key?(:event_date)
          @profile_views = args[:profile_views] if args.key?(:profile_views)
          @search_views = args[:search_views] if args.key?(:search_views)
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
      
      # Analytics aggregated data for a `Company` for a given date range.
      class AnalyticsSummary
        include Google::Apis::Core::Hashable
      
        # Aggregated number of times users contacted the `Company`
        # for given date range.
        # Corresponds to the JSON property `contactsCount`
        # @return [Fixnum]
        attr_accessor :contacts_count
      
        # Aggregated number of profile views for the `Company` for given date range.
        # Corresponds to the JSON property `profileViewsCount`
        # @return [Fixnum]
        attr_accessor :profile_views_count
      
        # Aggregated number of times users saw the `Company`
        # in Google Partners Search results for given date range.
        # Corresponds to the JSON property `searchViewsCount`
        # @return [Fixnum]
        attr_accessor :search_views_count
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @contacts_count = args[:contacts_count] if args.key?(:contacts_count)
          @profile_views_count = args[:profile_views_count] if args.key?(:profile_views_count)
          @search_views_count = args[:search_views_count] if args.key?(:search_views_count)
        end
      end
      
      # Available Offers to be distributed.
      class AvailableOffer
        include Google::Apis::Core::Hashable
      
        # The number of codes for this offer that are available for distribution.
        # Corresponds to the JSON property `available`
        # @return [Fixnum]
        attr_accessor :available
      
        # Offer info by country.
        # Corresponds to the JSON property `countryOfferInfos`
        # @return [Array<Google::Apis::PartnersV2::CountryOfferInfo>]
        attr_accessor :country_offer_infos
      
        # Description of the offer.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # ID of this offer.
        # Corresponds to the JSON property `id`
        # @return [Fixnum]
        attr_accessor :id
      
        # The maximum age of an account [in days] to be eligible.
        # Corresponds to the JSON property `maxAccountAge`
        # @return [Fixnum]
        attr_accessor :max_account_age
      
        # Name of the offer.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Level of this offer.
        # Corresponds to the JSON property `offerLevel`
        # @return [String]
        attr_accessor :offer_level
      
        # Type of offer.
        # Corresponds to the JSON property `offerType`
        # @return [String]
        attr_accessor :offer_type
      
        # Customers who qualify for this offer.
        # Corresponds to the JSON property `qualifiedCustomer`
        # @return [Array<Google::Apis::PartnersV2::OfferCustomer>]
        attr_accessor :qualified_customer
      
        # Whether or not the list of qualified customers is definitely complete.
        # Corresponds to the JSON property `qualifiedCustomersComplete`
        # @return [Boolean]
        attr_accessor :qualified_customers_complete
        alias_method :qualified_customers_complete?, :qualified_customers_complete
      
        # Should special text be shown on the offers page.
        # Corresponds to the JSON property `showSpecialOfferCopy`
        # @return [Boolean]
        attr_accessor :show_special_offer_copy
        alias_method :show_special_offer_copy?, :show_special_offer_copy
      
        # Terms of the offer.
        # Corresponds to the JSON property `terms`
        # @return [String]
        attr_accessor :terms
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @available = args[:available] if args.key?(:available)
          @country_offer_infos = args[:country_offer_infos] if args.key?(:country_offer_infos)
          @description = args[:description] if args.key?(:description)
          @id = args[:id] if args.key?(:id)
          @max_account_age = args[:max_account_age] if args.key?(:max_account_age)
          @name = args[:name] if args.key?(:name)
          @offer_level = args[:offer_level] if args.key?(:offer_level)
          @offer_type = args[:offer_type] if args.key?(:offer_type)
          @qualified_customer = args[:qualified_customer] if args.key?(:qualified_customer)
          @qualified_customers_complete = args[:qualified_customers_complete] if args.key?(:qualified_customers_complete)
          @show_special_offer_copy = args[:show_special_offer_copy] if args.key?(:show_special_offer_copy)
          @terms = args[:terms] if args.key?(:terms)
        end
      end
      
      # A user's information on a specific certification.
      class Certification
        include Google::Apis::Core::Hashable
      
        # Whether this certification has been achieved.
        # Corresponds to the JSON property `achieved`
        # @return [Boolean]
        attr_accessor :achieved
        alias_method :achieved?, :achieved
      
        # The type of certification, the area of expertise.
        # Corresponds to the JSON property `certificationType`
        # @return [String]
        attr_accessor :certification_type
      
        # Date this certification is due to expire.
        # Corresponds to the JSON property `expiration`
        # @return [String]
        attr_accessor :expiration
      
        # The date the user last achieved certification.
        # Corresponds to the JSON property `lastAchieved`
        # @return [String]
        attr_accessor :last_achieved
      
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
          @achieved = args[:achieved] if args.key?(:achieved)
          @certification_type = args[:certification_type] if args.key?(:certification_type)
          @expiration = args[:expiration] if args.key?(:expiration)
          @last_achieved = args[:last_achieved] if args.key?(:last_achieved)
          @warning = args[:warning] if args.key?(:warning)
        end
      end
      
      # Status for a Google Partners certification exam.
      class CertificationExamStatus
        include Google::Apis::Core::Hashable
      
        # The number of people who have passed the certification exam.
        # Corresponds to the JSON property `numberUsersPass`
        # @return [Fixnum]
        attr_accessor :number_users_pass
      
        # The type of certification exam.
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @number_users_pass = args[:number_users_pass] if args.key?(:number_users_pass)
          @type = args[:type] if args.key?(:type)
        end
      end
      
      # Google Partners certification status.
      class CertificationStatus
        include Google::Apis::Core::Hashable
      
        # List of certification exam statuses.
        # Corresponds to the JSON property `examStatuses`
        # @return [Array<Google::Apis::PartnersV2::CertificationExamStatus>]
        attr_accessor :exam_statuses
      
        # Whether certification is passing.
        # Corresponds to the JSON property `isCertified`
        # @return [Boolean]
        attr_accessor :is_certified
        alias_method :is_certified?, :is_certified
      
        # The type of the certification.
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        # Number of people who are certified,
        # Corresponds to the JSON property `userCount`
        # @return [Fixnum]
        attr_accessor :user_count
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @exam_statuses = args[:exam_statuses] if args.key?(:exam_statuses)
          @is_certified = args[:is_certified] if args.key?(:is_certified)
          @type = args[:type] if args.key?(:type)
          @user_count = args[:user_count] if args.key?(:user_count)
        end
      end
      
      # A company resource in the Google Partners API. Once certified, it qualifies
      # for being searched by advertisers.
      class Company
        include Google::Apis::Core::Hashable
      
        # URL of the company's additional websites used to verify the dynamic badges.
        # These are stored as full URLs as entered by the user, but only the TLD will
        # be used for the actual verification.
        # Corresponds to the JSON property `additionalWebsites`
        # @return [Array<String>]
        attr_accessor :additional_websites
      
        # Email domains that allow users with a matching email address to get
        # auto-approved for associating with this company.
        # Corresponds to the JSON property `autoApprovalEmailDomains`
        # @return [Array<String>]
        attr_accessor :auto_approval_email_domains
      
        # Partner badge tier
        # Corresponds to the JSON property `badgeTier`
        # @return [String]
        attr_accessor :badge_tier
      
        # The list of Google Partners certification statuses for the company.
        # Corresponds to the JSON property `certificationStatuses`
        # @return [Array<Google::Apis::PartnersV2::CertificationStatus>]
        attr_accessor :certification_statuses
      
        # Company type labels listed on the company's profile.
        # Corresponds to the JSON property `companyTypes`
        # @return [Array<String>]
        attr_accessor :company_types
      
        # Represents an amount of money with its currency type.
        # Corresponds to the JSON property `convertedMinMonthlyBudget`
        # @return [Google::Apis::PartnersV2::Money]
        attr_accessor :converted_min_monthly_budget
      
        # The ID of the company.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # Industries the company can help with.
        # Corresponds to the JSON property `industries`
        # @return [Array<String>]
        attr_accessor :industries
      
        # The list of localized info for the company.
        # Corresponds to the JSON property `localizedInfos`
        # @return [Array<Google::Apis::PartnersV2::LocalizedCompanyInfo>]
        attr_accessor :localized_infos
      
        # The list of all company locations.
        # If set, must include the
        # primary_location
        # in the list.
        # Corresponds to the JSON property `locations`
        # @return [Array<Google::Apis::PartnersV2::Location>]
        attr_accessor :locations
      
        # The name of the company.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Represents an amount of money with its currency type.
        # Corresponds to the JSON property `originalMinMonthlyBudget`
        # @return [Google::Apis::PartnersV2::Money]
        attr_accessor :original_min_monthly_budget
      
        # The Primary AdWords Manager Account id.
        # Corresponds to the JSON property `primaryAdwordsManagerAccountId`
        # @return [Fixnum]
        attr_accessor :primary_adwords_manager_account_id
      
        # The primary language code of the company, as defined by
        # <a href="https://tools.ietf.org/html/bcp47">BCP 47</a>
        # (IETF BCP 47, "Tags for Identifying Languages").
        # Corresponds to the JSON property `primaryLanguageCode`
        # @return [String]
        attr_accessor :primary_language_code
      
        # A location with address and geographic coordinates. May optionally contain a
        # detailed (multi-field) version of the address.
        # Corresponds to the JSON property `primaryLocation`
        # @return [Google::Apis::PartnersV2::Location]
        attr_accessor :primary_location
      
        # The public viewability status of the company's profile.
        # Corresponds to the JSON property `profileStatus`
        # @return [String]
        attr_accessor :profile_status
      
        # Basic information from a public profile.
        # Corresponds to the JSON property `publicProfile`
        # @return [Google::Apis::PartnersV2::PublicProfile]
        attr_accessor :public_profile
      
        # Information related to the ranking of the company within the list of
        # companies.
        # Corresponds to the JSON property `ranks`
        # @return [Array<Google::Apis::PartnersV2::Rank>]
        attr_accessor :ranks
      
        # Services the company can help with.
        # Corresponds to the JSON property `services`
        # @return [Array<String>]
        attr_accessor :services
      
        # The list of Google Partners specialization statuses for the company.
        # Corresponds to the JSON property `specializationStatus`
        # @return [Array<Google::Apis::PartnersV2::SpecializationStatus>]
        attr_accessor :specialization_status
      
        # URL of the company's website.
        # Corresponds to the JSON property `websiteUrl`
        # @return [String]
        attr_accessor :website_url
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @additional_websites = args[:additional_websites] if args.key?(:additional_websites)
          @auto_approval_email_domains = args[:auto_approval_email_domains] if args.key?(:auto_approval_email_domains)
          @badge_tier = args[:badge_tier] if args.key?(:badge_tier)
          @certification_statuses = args[:certification_statuses] if args.key?(:certification_statuses)
          @company_types = args[:company_types] if args.key?(:company_types)
          @converted_min_monthly_budget = args[:converted_min_monthly_budget] if args.key?(:converted_min_monthly_budget)
          @id = args[:id] if args.key?(:id)
          @industries = args[:industries] if args.key?(:industries)
          @localized_infos = args[:localized_infos] if args.key?(:localized_infos)
          @locations = args[:locations] if args.key?(:locations)
          @name = args[:name] if args.key?(:name)
          @original_min_monthly_budget = args[:original_min_monthly_budget] if args.key?(:original_min_monthly_budget)
          @primary_adwords_manager_account_id = args[:primary_adwords_manager_account_id] if args.key?(:primary_adwords_manager_account_id)
          @primary_language_code = args[:primary_language_code] if args.key?(:primary_language_code)
          @primary_location = args[:primary_location] if args.key?(:primary_location)
          @profile_status = args[:profile_status] if args.key?(:profile_status)
          @public_profile = args[:public_profile] if args.key?(:public_profile)
          @ranks = args[:ranks] if args.key?(:ranks)
          @services = args[:services] if args.key?(:services)
          @specialization_status = args[:specialization_status] if args.key?(:specialization_status)
          @website_url = args[:website_url] if args.key?(:website_url)
        end
      end
      
      # A CompanyRelation resource representing information about a user's
      # affiliation and standing with a company in Partners.
      class CompanyRelation
        include Google::Apis::Core::Hashable
      
        # The primary address for this company.
        # Corresponds to the JSON property `address`
        # @return [String]
        attr_accessor :address
      
        # Whether the company is a Partner.
        # Corresponds to the JSON property `badgeTier`
        # @return [String]
        attr_accessor :badge_tier
      
        # Indicates if the user is an admin for this company.
        # Corresponds to the JSON property `companyAdmin`
        # @return [Boolean]
        attr_accessor :company_admin
        alias_method :company_admin?, :company_admin
      
        # The ID of the company. There may be no id if this is a
        # pending company.5
        # Corresponds to the JSON property `companyId`
        # @return [String]
        attr_accessor :company_id
      
        # The timestamp of when affiliation was requested.
        # @OutputOnly
        # Corresponds to the JSON property `creationTime`
        # @return [String]
        attr_accessor :creation_time
      
        # The internal company ID.
        # Only available for a whitelisted set of api clients.
        # Corresponds to the JSON property `internalCompanyId`
        # @return [String]
        attr_accessor :internal_company_id
      
        # The flag that indicates if the company is pending verification.
        # Corresponds to the JSON property `isPending`
        # @return [Boolean]
        attr_accessor :is_pending
        alias_method :is_pending?, :is_pending
      
        # A URL to a profile photo, e.g. a G+ profile photo.
        # Corresponds to the JSON property `logoUrl`
        # @return [String]
        attr_accessor :logo_url
      
        # The AdWords manager account # associated this company.
        # Corresponds to the JSON property `managerAccount`
        # @return [Fixnum]
        attr_accessor :manager_account
      
        # The name (in the company's primary language) for the company.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # The phone number for the company's primary address.
        # Corresponds to the JSON property `phoneNumber`
        # @return [String]
        attr_accessor :phone_number
      
        # A location with address and geographic coordinates. May optionally contain a
        # detailed (multi-field) version of the address.
        # Corresponds to the JSON property `primaryAddress`
        # @return [Google::Apis::PartnersV2::Location]
        attr_accessor :primary_address
      
        # The primary country code of the company.
        # Corresponds to the JSON property `primaryCountryCode`
        # @return [String]
        attr_accessor :primary_country_code
      
        # The primary language code of the company.
        # Corresponds to the JSON property `primaryLanguageCode`
        # @return [String]
        attr_accessor :primary_language_code
      
        # The timestamp when the user was approved.
        # @OutputOnly
        # Corresponds to the JSON property `resolvedTimestamp`
        # @return [String]
        attr_accessor :resolved_timestamp
      
        # The segment the company is classified as.
        # Corresponds to the JSON property `segment`
        # @return [Array<String>]
        attr_accessor :segment
      
        # The list of Google Partners specialization statuses for the company.
        # Corresponds to the JSON property `specializationStatus`
        # @return [Array<Google::Apis::PartnersV2::SpecializationStatus>]
        attr_accessor :specialization_status
      
        # The state of relationship, in terms of approvals.
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        # The website URL for this company.
        # Corresponds to the JSON property `website`
        # @return [String]
        attr_accessor :website
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @address = args[:address] if args.key?(:address)
          @badge_tier = args[:badge_tier] if args.key?(:badge_tier)
          @company_admin = args[:company_admin] if args.key?(:company_admin)
          @company_id = args[:company_id] if args.key?(:company_id)
          @creation_time = args[:creation_time] if args.key?(:creation_time)
          @internal_company_id = args[:internal_company_id] if args.key?(:internal_company_id)
          @is_pending = args[:is_pending] if args.key?(:is_pending)
          @logo_url = args[:logo_url] if args.key?(:logo_url)
          @manager_account = args[:manager_account] if args.key?(:manager_account)
          @name = args[:name] if args.key?(:name)
          @phone_number = args[:phone_number] if args.key?(:phone_number)
          @primary_address = args[:primary_address] if args.key?(:primary_address)
          @primary_country_code = args[:primary_country_code] if args.key?(:primary_country_code)
          @primary_language_code = args[:primary_language_code] if args.key?(:primary_language_code)
          @resolved_timestamp = args[:resolved_timestamp] if args.key?(:resolved_timestamp)
          @segment = args[:segment] if args.key?(:segment)
          @specialization_status = args[:specialization_status] if args.key?(:specialization_status)
          @state = args[:state] if args.key?(:state)
          @website = args[:website] if args.key?(:website)
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
      
        # Type of offer country is eligible for.
        # Corresponds to the JSON property `offerType`
        # @return [String]
        attr_accessor :offer_type
      
        # (localized) Spend X amount for that country's offer.
        # Corresponds to the JSON property `spendXAmount`
        # @return [String]
        attr_accessor :spend_x_amount
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @get_y_amount = args[:get_y_amount] if args.key?(:get_y_amount)
          @offer_country_code = args[:offer_country_code] if args.key?(:offer_country_code)
          @offer_type = args[:offer_type] if args.key?(:offer_type)
          @spend_x_amount = args[:spend_x_amount] if args.key?(:spend_x_amount)
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
      
      # Represents a whole calendar date, e.g. date of birth. The time of day and
      # time zone are either specified elsewhere or are not significant. The date
      # is relative to the Proleptic Gregorian Calendar. The day may be 0 to
      # represent a year and month where the day is not significant, e.g. credit card
      # expiration date. The year may be 0 to represent a month and day independent
      # of year, e.g. anniversary date. Related types are google.type.TimeOfDay
      # and `google.protobuf.Timestamp`.
      class Date
        include Google::Apis::Core::Hashable
      
        # Day of month. Must be from 1 to 31 and valid for the year and month, or 0
        # if specifying a year/month where the day is not significant.
        # Corresponds to the JSON property `day`
        # @return [Fixnum]
        attr_accessor :day
      
        # Month of year. Must be from 1 to 12.
        # Corresponds to the JSON property `month`
        # @return [Fixnum]
        attr_accessor :month
      
        # Year of date. Must be from 1 to 9999, or 0 if specifying a date without
        # a year.
        # Corresponds to the JSON property `year`
        # @return [Fixnum]
        attr_accessor :year
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @day = args[:day] if args.key?(:day)
          @month = args[:month] if args.key?(:month)
          @year = args[:year] if args.key?(:year)
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
      
      # Key value data pair for an event.
      class EventData
        include Google::Apis::Core::Hashable
      
        # Data type.
        # Corresponds to the JSON property `key`
        # @return [String]
        attr_accessor :key
      
        # Data values.
        # Corresponds to the JSON property `values`
        # @return [Array<String>]
        attr_accessor :values
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @key = args[:key] if args.key?(:key)
          @values = args[:values] if args.key?(:values)
        end
      end
      
      # A user's information on a specific exam.
      class ExamStatus
        include Google::Apis::Core::Hashable
      
        # The type of the exam.
        # Corresponds to the JSON property `examType`
        # @return [String]
        attr_accessor :exam_type
      
        # Date this exam is due to expire.
        # Corresponds to the JSON property `expiration`
        # @return [String]
        attr_accessor :expiration
      
        # The date the user last passed this exam.
        # Corresponds to the JSON property `lastPassed`
        # @return [String]
        attr_accessor :last_passed
      
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
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @exam_type = args[:exam_type] if args.key?(:exam_type)
          @expiration = args[:expiration] if args.key?(:expiration)
          @last_passed = args[:last_passed] if args.key?(:last_passed)
          @passed = args[:passed] if args.key?(:passed)
          @taken = args[:taken] if args.key?(:taken)
          @warning = args[:warning] if args.key?(:warning)
        end
      end
      
      # A token that allows a user to take an exam.
      class ExamToken
        include Google::Apis::Core::Hashable
      
        # The id of the exam the token is for.
        # Corresponds to the JSON property `examId`
        # @return [Fixnum]
        attr_accessor :exam_id
      
        # The type of the exam the token belongs to.
        # Corresponds to the JSON property `examType`
        # @return [String]
        attr_accessor :exam_type
      
        # The token, only present if the user has access to the exam.
        # Corresponds to the JSON property `token`
        # @return [String]
        attr_accessor :token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @exam_id = args[:exam_id] if args.key?(:exam_id)
          @exam_type = args[:exam_type] if args.key?(:exam_type)
          @token = args[:token] if args.key?(:token)
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
      
        # Client's AdWords page URL.
        # Corresponds to the JSON property `adwordsUrl`
        # @return [String]
        attr_accessor :adwords_url
      
        # Email address for client.
        # Corresponds to the JSON property `clientEmail`
        # @return [String]
        attr_accessor :client_email
      
        # ID of client.
        # Corresponds to the JSON property `clientId`
        # @return [Fixnum]
        attr_accessor :client_id
      
        # Name of the client.
        # Corresponds to the JSON property `clientName`
        # @return [String]
        attr_accessor :client_name
      
        # Time offer was first created.
        # Corresponds to the JSON property `creationTime`
        # @return [String]
        attr_accessor :creation_time
      
        # Time this offer expires.
        # Corresponds to the JSON property `expirationTime`
        # @return [String]
        attr_accessor :expiration_time
      
        # Time last action was taken.
        # Corresponds to the JSON property `lastModifiedTime`
        # @return [String]
        attr_accessor :last_modified_time
      
        # Offer code.
        # Corresponds to the JSON property `offerCode`
        # @return [String]
        attr_accessor :offer_code
      
        # Country Code for the offer country.
        # Corresponds to the JSON property `offerCountryCode`
        # @return [String]
        attr_accessor :offer_country_code
      
        # Type of offer.
        # Corresponds to the JSON property `offerType`
        # @return [String]
        attr_accessor :offer_type
      
        # Name (First + Last) of the partners user to whom the incentive is allocated.
        # Corresponds to the JSON property `senderName`
        # @return [String]
        attr_accessor :sender_name
      
        # Status of the offer.
        # Corresponds to the JSON property `status`
        # @return [String]
        attr_accessor :status
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @adwords_url = args[:adwords_url] if args.key?(:adwords_url)
          @client_email = args[:client_email] if args.key?(:client_email)
          @client_id = args[:client_id] if args.key?(:client_id)
          @client_name = args[:client_name] if args.key?(:client_name)
          @creation_time = args[:creation_time] if args.key?(:creation_time)
          @expiration_time = args[:expiration_time] if args.key?(:expiration_time)
          @last_modified_time = args[:last_modified_time] if args.key?(:last_modified_time)
          @offer_code = args[:offer_code] if args.key?(:offer_code)
          @offer_country_code = args[:offer_country_code] if args.key?(:offer_country_code)
          @offer_type = args[:offer_type] if args.key?(:offer_type)
          @sender_name = args[:sender_name] if args.key?(:sender_name)
          @status = args[:status] if args.key?(:status)
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
      
        # The latitude in degrees. It must be in the range [-90.0, +90.0].
        # Corresponds to the JSON property `latitude`
        # @return [Float]
        attr_accessor :latitude
      
        # The longitude in degrees. It must be in the range [-180.0, +180.0].
        # Corresponds to the JSON property `longitude`
        # @return [Float]
        attr_accessor :longitude
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @latitude = args[:latitude] if args.key?(:latitude)
          @longitude = args[:longitude] if args.key?(:longitude)
        end
      end
      
      # A lead resource that represents an advertiser contact for a `Company`. These
      # are usually generated via Google Partner Search (the advertiser portal).
      class Lead
        include Google::Apis::Core::Hashable
      
        # The AdWords Customer ID of the lead.
        # Corresponds to the JSON property `adwordsCustomerId`
        # @return [Fixnum]
        attr_accessor :adwords_customer_id
      
        # Comments lead source gave.
        # Corresponds to the JSON property `comments`
        # @return [String]
        attr_accessor :comments
      
        # Timestamp of when this lead was created.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Email address of lead source.
        # Corresponds to the JSON property `email`
        # @return [String]
        attr_accessor :email
      
        # Last name of lead source.
        # Corresponds to the JSON property `familyName`
        # @return [String]
        attr_accessor :family_name
      
        # First name of lead source.
        # Corresponds to the JSON property `givenName`
        # @return [String]
        attr_accessor :given_name
      
        # List of reasons for using Google Partner Search and creating a lead.
        # Corresponds to the JSON property `gpsMotivations`
        # @return [Array<String>]
        attr_accessor :gps_motivations
      
        # ID of the lead.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # Language code of the lead's language preference, as defined by
        # <a href="https://tools.ietf.org/html/bcp47">BCP 47</a>
        # (IETF BCP 47, "Tags for Identifying Languages").
        # Corresponds to the JSON property `languageCode`
        # @return [String]
        attr_accessor :language_code
      
        # Whether or not the lead signed up for marketing emails
        # Corresponds to the JSON property `marketingOptIn`
        # @return [Boolean]
        attr_accessor :marketing_opt_in
        alias_method :marketing_opt_in?, :marketing_opt_in
      
        # Represents an amount of money with its currency type.
        # Corresponds to the JSON property `minMonthlyBudget`
        # @return [Google::Apis::PartnersV2::Money]
        attr_accessor :min_monthly_budget
      
        # Phone number of lead source.
        # Corresponds to the JSON property `phoneNumber`
        # @return [String]
        attr_accessor :phone_number
      
        # The lead's state in relation to the company.
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        # Type of lead.
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        # Website URL of lead source.
        # Corresponds to the JSON property `websiteUrl`
        # @return [String]
        attr_accessor :website_url
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @adwords_customer_id = args[:adwords_customer_id] if args.key?(:adwords_customer_id)
          @comments = args[:comments] if args.key?(:comments)
          @create_time = args[:create_time] if args.key?(:create_time)
          @email = args[:email] if args.key?(:email)
          @family_name = args[:family_name] if args.key?(:family_name)
          @given_name = args[:given_name] if args.key?(:given_name)
          @gps_motivations = args[:gps_motivations] if args.key?(:gps_motivations)
          @id = args[:id] if args.key?(:id)
          @language_code = args[:language_code] if args.key?(:language_code)
          @marketing_opt_in = args[:marketing_opt_in] if args.key?(:marketing_opt_in)
          @min_monthly_budget = args[:min_monthly_budget] if args.key?(:min_monthly_budget)
          @phone_number = args[:phone_number] if args.key?(:phone_number)
          @state = args[:state] if args.key?(:state)
          @type = args[:type] if args.key?(:type)
          @website_url = args[:website_url] if args.key?(:website_url)
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
      
        # Analytics aggregated data for a `Company` for a given date range.
        # Corresponds to the JSON property `analyticsSummary`
        # @return [Google::Apis::PartnersV2::AnalyticsSummary]
        attr_accessor :analytics_summary
      
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
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @analytics = args[:analytics] if args.key?(:analytics)
          @analytics_summary = args[:analytics_summary] if args.key?(:analytics_summary)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @response_metadata = args[:response_metadata] if args.key?(:response_metadata)
        end
      end
      
      # Response message for
      # ListCompanies.
      class ListCompaniesResponse
        include Google::Apis::Core::Hashable
      
        # The list of companies.
        # Corresponds to the JSON property `companies`
        # @return [Array<Google::Apis::PartnersV2::Company>]
        attr_accessor :companies
      
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
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @companies = args[:companies] if args.key?(:companies)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @response_metadata = args[:response_metadata] if args.key?(:response_metadata)
        end
      end
      
      # Response message for ListLeads.
      class ListLeadsResponse
        include Google::Apis::Core::Hashable
      
        # The list of leads.
        # Corresponds to the JSON property `leads`
        # @return [Array<Google::Apis::PartnersV2::Lead>]
        attr_accessor :leads
      
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
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @leads = args[:leads] if args.key?(:leads)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @response_metadata = args[:response_metadata] if args.key?(:response_metadata)
          @total_size = args[:total_size] if args.key?(:total_size)
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
      
        # Supply this token in a ListOffersHistoryRequest to retrieve the next page.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # Historical offers meeting request.
        # Corresponds to the JSON property `offers`
        # @return [Array<Google::Apis::PartnersV2::HistoricalOffer>]
        attr_accessor :offers
      
        # Common data that is in each API response.
        # Corresponds to the JSON property `responseMetadata`
        # @return [Google::Apis::PartnersV2::ResponseMetadata]
        attr_accessor :response_metadata
      
        # True if this response is showing entire company history.
        # Corresponds to the JSON property `showingEntireCompany`
        # @return [Boolean]
        attr_accessor :showing_entire_company
        alias_method :showing_entire_company?, :showing_entire_company
      
        # Number of results across all pages.
        # Corresponds to the JSON property `totalResults`
        # @return [Fixnum]
        attr_accessor :total_results
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @can_show_entire_company = args[:can_show_entire_company] if args.key?(:can_show_entire_company)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @offers = args[:offers] if args.key?(:offers)
          @response_metadata = args[:response_metadata] if args.key?(:response_metadata)
          @showing_entire_company = args[:showing_entire_company] if args.key?(:showing_entire_company)
          @total_results = args[:total_results] if args.key?(:total_results)
        end
      end
      
      # Response for ListOffer.
      class ListOffersResponse
        include Google::Apis::Core::Hashable
      
        # Available Offers to be distributed.
        # Corresponds to the JSON property `availableOffers`
        # @return [Array<Google::Apis::PartnersV2::AvailableOffer>]
        attr_accessor :available_offers
      
        # Reason why no Offers are available.
        # Corresponds to the JSON property `noOfferReason`
        # @return [String]
        attr_accessor :no_offer_reason
      
        # Common data that is in each API response.
        # Corresponds to the JSON property `responseMetadata`
        # @return [Google::Apis::PartnersV2::ResponseMetadata]
        attr_accessor :response_metadata
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @available_offers = args[:available_offers] if args.key?(:available_offers)
          @no_offer_reason = args[:no_offer_reason] if args.key?(:no_offer_reason)
          @response_metadata = args[:response_metadata] if args.key?(:response_metadata)
        end
      end
      
      # Response message for
      # ListUserStates.
      class ListUserStatesResponse
        include Google::Apis::Core::Hashable
      
        # Common data that is in each API response.
        # Corresponds to the JSON property `responseMetadata`
        # @return [Google::Apis::PartnersV2::ResponseMetadata]
        attr_accessor :response_metadata
      
        # User's states.
        # Corresponds to the JSON property `userStates`
        # @return [Array<String>]
        attr_accessor :user_states
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @response_metadata = args[:response_metadata] if args.key?(:response_metadata)
          @user_states = args[:user_states] if args.key?(:user_states)
        end
      end
      
      # The localized company information.
      class LocalizedCompanyInfo
        include Google::Apis::Core::Hashable
      
        # List of country codes for the localized company info.
        # Corresponds to the JSON property `countryCodes`
        # @return [Array<String>]
        attr_accessor :country_codes
      
        # Localized display name.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # Language code of the localized company info, as defined by
        # <a href="https://tools.ietf.org/html/bcp47">BCP 47</a>
        # (IETF BCP 47, "Tags for Identifying Languages").
        # Corresponds to the JSON property `languageCode`
        # @return [String]
        attr_accessor :language_code
      
        # Localized brief description that the company uses to advertise themselves.
        # Corresponds to the JSON property `overview`
        # @return [String]
        attr_accessor :overview
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @country_codes = args[:country_codes] if args.key?(:country_codes)
          @display_name = args[:display_name] if args.key?(:display_name)
          @language_code = args[:language_code] if args.key?(:language_code)
          @overview = args[:overview] if args.key?(:overview)
        end
      end
      
      # A location with address and geographic coordinates. May optionally contain a
      # detailed (multi-field) version of the address.
      class Location
        include Google::Apis::Core::Hashable
      
        # The single string version of the address.
        # Corresponds to the JSON property `address`
        # @return [String]
        attr_accessor :address
      
        # The following address lines represent the most specific part of any
        # address.
        # Corresponds to the JSON property `addressLine`
        # @return [Array<String>]
        attr_accessor :address_line
      
        # Top-level administrative subdivision of this country.
        # Corresponds to the JSON property `administrativeArea`
        # @return [String]
        attr_accessor :administrative_area
      
        # Dependent locality or sublocality. Used for UK dependent localities, or
        # neighborhoods or boroughs in other locations.
        # Corresponds to the JSON property `dependentLocality`
        # @return [String]
        attr_accessor :dependent_locality
      
        # Language code of the address. Should be in BCP 47 format.
        # Corresponds to the JSON property `languageCode`
        # @return [String]
        attr_accessor :language_code
      
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
      
        # Generally refers to the city/town portion of an address.
        # Corresponds to the JSON property `locality`
        # @return [String]
        attr_accessor :locality
      
        # Values are frequently alphanumeric.
        # Corresponds to the JSON property `postalCode`
        # @return [String]
        attr_accessor :postal_code
      
        # CLDR (Common Locale Data Repository) region code .
        # Corresponds to the JSON property `regionCode`
        # @return [String]
        attr_accessor :region_code
      
        # Use of this code is very country-specific, but will refer to a secondary
        # classification code for sorting mail.
        # Corresponds to the JSON property `sortingCode`
        # @return [String]
        attr_accessor :sorting_code
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @address = args[:address] if args.key?(:address)
          @address_line = args[:address_line] if args.key?(:address_line)
          @administrative_area = args[:administrative_area] if args.key?(:administrative_area)
          @dependent_locality = args[:dependent_locality] if args.key?(:dependent_locality)
          @language_code = args[:language_code] if args.key?(:language_code)
          @lat_lng = args[:lat_lng] if args.key?(:lat_lng)
          @locality = args[:locality] if args.key?(:locality)
          @postal_code = args[:postal_code] if args.key?(:postal_code)
          @region_code = args[:region_code] if args.key?(:region_code)
          @sorting_code = args[:sorting_code] if args.key?(:sorting_code)
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
      
        # Details about the client message.
        # Corresponds to the JSON property `details`
        # @return [String]
        attr_accessor :details
      
        # Message level of client message.
        # Corresponds to the JSON property `level`
        # @return [String]
        attr_accessor :level
      
        # Common data that is in each API request.
        # Corresponds to the JSON property `requestMetadata`
        # @return [Google::Apis::PartnersV2::RequestMetadata]
        attr_accessor :request_metadata
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @client_info = args[:client_info] if args.key?(:client_info)
          @details = args[:details] if args.key?(:details)
          @level = args[:level] if args.key?(:level)
          @request_metadata = args[:request_metadata] if args.key?(:request_metadata)
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
      
      # Request message for
      # LogUserEvent.
      class LogUserEventRequest
        include Google::Apis::Core::Hashable
      
        # The action that occurred.
        # Corresponds to the JSON property `eventAction`
        # @return [String]
        attr_accessor :event_action
      
        # The category the action belongs to.
        # Corresponds to the JSON property `eventCategory`
        # @return [String]
        attr_accessor :event_category
      
        # List of event data for the event.
        # Corresponds to the JSON property `eventDatas`
        # @return [Array<Google::Apis::PartnersV2::EventData>]
        attr_accessor :event_datas
      
        # The scope of the event.
        # Corresponds to the JSON property `eventScope`
        # @return [String]
        attr_accessor :event_scope
      
        # A lead resource that represents an advertiser contact for a `Company`. These
        # are usually generated via Google Partner Search (the advertiser portal).
        # Corresponds to the JSON property `lead`
        # @return [Google::Apis::PartnersV2::Lead]
        attr_accessor :lead
      
        # Common data that is in each API request.
        # Corresponds to the JSON property `requestMetadata`
        # @return [Google::Apis::PartnersV2::RequestMetadata]
        attr_accessor :request_metadata
      
        # The URL where the event occurred.
        # Corresponds to the JSON property `url`
        # @return [String]
        attr_accessor :url
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @event_action = args[:event_action] if args.key?(:event_action)
          @event_category = args[:event_category] if args.key?(:event_category)
          @event_datas = args[:event_datas] if args.key?(:event_datas)
          @event_scope = args[:event_scope] if args.key?(:event_scope)
          @lead = args[:lead] if args.key?(:lead)
          @request_metadata = args[:request_metadata] if args.key?(:request_metadata)
          @url = args[:url] if args.key?(:url)
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
      
      # Represents an amount of money with its currency type.
      class Money
        include Google::Apis::Core::Hashable
      
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
      
        # The whole units of the amount.
        # For example if `currencyCode` is `"USD"`, then 1 unit is one US dollar.
        # Corresponds to the JSON property `units`
        # @return [Fixnum]
        attr_accessor :units
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @currency_code = args[:currency_code] if args.key?(:currency_code)
          @nanos = args[:nanos] if args.key?(:nanos)
          @units = args[:units] if args.key?(:units)
        end
      end
      
      # Customers qualified for an offer.
      class OfferCustomer
        include Google::Apis::Core::Hashable
      
        # URL to the customer's AdWords page.
        # Corresponds to the JSON property `adwordsUrl`
        # @return [String]
        attr_accessor :adwords_url
      
        # Country code of the customer.
        # Corresponds to the JSON property `countryCode`
        # @return [String]
        attr_accessor :country_code
      
        # Time the customer was created.
        # Corresponds to the JSON property `creationTime`
        # @return [String]
        attr_accessor :creation_time
      
        # Days the customer is still eligible.
        # Corresponds to the JSON property `eligibilityDaysLeft`
        # @return [Fixnum]
        attr_accessor :eligibility_days_left
      
        # External CID for the customer.
        # Corresponds to the JSON property `externalCid`
        # @return [Fixnum]
        attr_accessor :external_cid
      
        # Formatted Get Y amount with currency code.
        # Corresponds to the JSON property `getYAmount`
        # @return [String]
        attr_accessor :get_y_amount
      
        # Name of the customer.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Type of the offer
        # Corresponds to the JSON property `offerType`
        # @return [String]
        attr_accessor :offer_type
      
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
          @country_code = args[:country_code] if args.key?(:country_code)
          @creation_time = args[:creation_time] if args.key?(:creation_time)
          @eligibility_days_left = args[:eligibility_days_left] if args.key?(:eligibility_days_left)
          @external_cid = args[:external_cid] if args.key?(:external_cid)
          @get_y_amount = args[:get_y_amount] if args.key?(:get_y_amount)
          @name = args[:name] if args.key?(:name)
          @offer_type = args[:offer_type] if args.key?(:offer_type)
          @spend_x_amount = args[:spend_x_amount] if args.key?(:spend_x_amount)
        end
      end
      
      # A set of opt-ins for a user.
      class OptIns
        include Google::Apis::Core::Hashable
      
        # An opt-in about receiving email from Partners marketing teams. Includes
        # member-only events and special promotional offers for Google products.
        # Corresponds to the JSON property `marketComm`
        # @return [Boolean]
        attr_accessor :market_comm
        alias_method :market_comm?, :market_comm
      
        # An opt-in about receiving email with customized AdWords campaign management
        # tips.
        # Corresponds to the JSON property `performanceSuggestions`
        # @return [Boolean]
        attr_accessor :performance_suggestions
        alias_method :performance_suggestions?, :performance_suggestions
      
        # An opt-in to allow recieivng phone calls about their Partners account.
        # Corresponds to the JSON property `phoneContact`
        # @return [Boolean]
        attr_accessor :phone_contact
        alias_method :phone_contact?, :phone_contact
      
        # An opt-in to receive special promotional gifts and material in the mail.
        # Corresponds to the JSON property `physicalMail`
        # @return [Boolean]
        attr_accessor :physical_mail
        alias_method :physical_mail?, :physical_mail
      
        # An opt-in about receiving email regarding new features and products.
        # Corresponds to the JSON property `specialOffers`
        # @return [Boolean]
        attr_accessor :special_offers
        alias_method :special_offers?, :special_offers
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @market_comm = args[:market_comm] if args.key?(:market_comm)
          @performance_suggestions = args[:performance_suggestions] if args.key?(:performance_suggestions)
          @phone_contact = args[:phone_contact] if args.key?(:phone_contact)
          @physical_mail = args[:physical_mail] if args.key?(:physical_mail)
          @special_offers = args[:special_offers] if args.key?(:special_offers)
        end
      end
      
      # Basic information from a public profile.
      class PublicProfile
        include Google::Apis::Core::Hashable
      
        # The URL to the main display image of the public profile. Being deprecated.
        # Corresponds to the JSON property `displayImageUrl`
        # @return [String]
        attr_accessor :display_image_url
      
        # The display name of the public profile.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # The ID which can be used to retrieve more details about the public profile.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # The URL to the main profile image of the public profile.
        # Corresponds to the JSON property `profileImage`
        # @return [String]
        attr_accessor :profile_image
      
        # The URL of the public profile.
        # Corresponds to the JSON property `url`
        # @return [String]
        attr_accessor :url
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @display_image_url = args[:display_image_url] if args.key?(:display_image_url)
          @display_name = args[:display_name] if args.key?(:display_name)
          @id = args[:id] if args.key?(:id)
          @profile_image = args[:profile_image] if args.key?(:profile_image)
          @url = args[:url] if args.key?(:url)
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
      
      # <a href="https://www.google.com/recaptcha/">reCaptcha</a> challenge info.
      class RecaptchaChallenge
        include Google::Apis::Core::Hashable
      
        # The ID of the reCaptcha challenge.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # The response to the reCaptcha challenge.
        # Corresponds to the JSON property `response`
        # @return [String]
        attr_accessor :response
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @id = args[:id] if args.key?(:id)
          @response = args[:response] if args.key?(:response)
        end
      end
      
      # Common data that is in each API request.
      class RequestMetadata
        include Google::Apis::Core::Hashable
      
        # Experiment IDs the current request belongs to.
        # Corresponds to the JSON property `experimentIds`
        # @return [Array<String>]
        attr_accessor :experiment_ids
      
        # Locale to use for the current request.
        # Corresponds to the JSON property `locale`
        # @return [String]
        attr_accessor :locale
      
        # Google Partners session ID.
        # Corresponds to the JSON property `partnersSessionId`
        # @return [String]
        attr_accessor :partners_session_id
      
        # Source of traffic for the current request.
        # Corresponds to the JSON property `trafficSource`
        # @return [Google::Apis::PartnersV2::TrafficSource]
        attr_accessor :traffic_source
      
        # Values to use instead of the user's respective defaults. These are only
        # honored by whitelisted products.
        # Corresponds to the JSON property `userOverrides`
        # @return [Google::Apis::PartnersV2::UserOverrides]
        attr_accessor :user_overrides
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @experiment_ids = args[:experiment_ids] if args.key?(:experiment_ids)
          @locale = args[:locale] if args.key?(:locale)
          @partners_session_id = args[:partners_session_id] if args.key?(:partners_session_id)
          @traffic_source = args[:traffic_source] if args.key?(:traffic_source)
          @user_overrides = args[:user_overrides] if args.key?(:user_overrides)
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
      
      # A resource representing a user of the Partners platform.
      class User
        include Google::Apis::Core::Hashable
      
        # This is the list of AdWords Manager Accounts the user has edit access to.
        # If the user has edit access to multiple accounts, the user can choose the
        # preferred account and we use this when a personal account is needed. Can
        # be empty meaning the user has access to no accounts.
        # @OutputOnly
        # Corresponds to the JSON property `availableAdwordsManagerAccounts`
        # @return [Array<Google::Apis::PartnersV2::AdWordsManagerAccountInfo>]
        attr_accessor :available_adwords_manager_accounts
      
        # The list of achieved certifications. These are calculated based on exam
        # results and other requirements.
        # @OutputOnly
        # Corresponds to the JSON property `certificationStatus`
        # @return [Array<Google::Apis::PartnersV2::Certification>]
        attr_accessor :certification_status
      
        # A CompanyRelation resource representing information about a user's
        # affiliation and standing with a company in Partners.
        # Corresponds to the JSON property `company`
        # @return [Google::Apis::PartnersV2::CompanyRelation]
        attr_accessor :company
      
        # The email address used by the user used for company verification.
        # @OutputOnly
        # Corresponds to the JSON property `companyVerificationEmail`
        # @return [String]
        attr_accessor :company_verification_email
      
        # The list of exams the user ever taken. For each type of exam, only one
        # entry is listed.
        # Corresponds to the JSON property `examStatus`
        # @return [Array<Google::Apis::PartnersV2::ExamStatus>]
        attr_accessor :exam_status
      
        # The ID of the user.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # The internal user ID.
        # Only available for a whitelisted set of api clients.
        # Corresponds to the JSON property `internalId`
        # @return [String]
        attr_accessor :internal_id
      
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
      
        # The profile information of a Partners user.
        # Corresponds to the JSON property `profile`
        # @return [Google::Apis::PartnersV2::UserProfile]
        attr_accessor :profile
      
        # Basic information from a public profile.
        # Corresponds to the JSON property `publicProfile`
        # @return [Google::Apis::PartnersV2::PublicProfile]
        attr_accessor :public_profile
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @available_adwords_manager_accounts = args[:available_adwords_manager_accounts] if args.key?(:available_adwords_manager_accounts)
          @certification_status = args[:certification_status] if args.key?(:certification_status)
          @company = args[:company] if args.key?(:company)
          @company_verification_email = args[:company_verification_email] if args.key?(:company_verification_email)
          @exam_status = args[:exam_status] if args.key?(:exam_status)
          @id = args[:id] if args.key?(:id)
          @internal_id = args[:internal_id] if args.key?(:internal_id)
          @last_access_time = args[:last_access_time] if args.key?(:last_access_time)
          @primary_emails = args[:primary_emails] if args.key?(:primary_emails)
          @profile = args[:profile] if args.key?(:profile)
          @public_profile = args[:public_profile] if args.key?(:public_profile)
        end
      end
      
      # Values to use instead of the user's respective defaults. These are only
      # honored by whitelisted products.
      class UserOverrides
        include Google::Apis::Core::Hashable
      
        # IP address to use instead of the user's geo-located IP address.
        # Corresponds to the JSON property `ipAddress`
        # @return [String]
        attr_accessor :ip_address
      
        # Logged-in user ID to impersonate instead of the user's ID.
        # Corresponds to the JSON property `userId`
        # @return [String]
        attr_accessor :user_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @ip_address = args[:ip_address] if args.key?(:ip_address)
          @user_id = args[:user_id] if args.key?(:user_id)
        end
      end
      
      # The profile information of a Partners user.
      class UserProfile
        include Google::Apis::Core::Hashable
      
        # A location with address and geographic coordinates. May optionally contain a
        # detailed (multi-field) version of the address.
        # Corresponds to the JSON property `address`
        # @return [Google::Apis::PartnersV2::Location]
        attr_accessor :address
      
        # If the user has edit access to multiple accounts, the user can choose the
        # preferred account and it is used when a personal account is needed. Can
        # be empty.
        # Corresponds to the JSON property `adwordsManagerAccount`
        # @return [Fixnum]
        attr_accessor :adwords_manager_account
      
        # A list of ids representing which channels the user selected they were in.
        # Corresponds to the JSON property `channels`
        # @return [Array<String>]
        attr_accessor :channels
      
        # The email address the user has selected on the Partners site as primary.
        # Corresponds to the JSON property `emailAddress`
        # @return [String]
        attr_accessor :email_address
      
        # A set of opt-ins for a user.
        # Corresponds to the JSON property `emailOptIns`
        # @return [Google::Apis::PartnersV2::OptIns]
        attr_accessor :email_opt_ins
      
        # The user's family name.
        # Corresponds to the JSON property `familyName`
        # @return [String]
        attr_accessor :family_name
      
        # The user's given name.
        # Corresponds to the JSON property `givenName`
        # @return [String]
        attr_accessor :given_name
      
        # A list of ids representing which industries the user selected.
        # Corresponds to the JSON property `industries`
        # @return [Array<String>]
        attr_accessor :industries
      
        # A list of ids represnting which job categories the user selected.
        # Corresponds to the JSON property `jobFunctions`
        # @return [Array<String>]
        attr_accessor :job_functions
      
        # The list of languages this user understands.
        # Corresponds to the JSON property `languages`
        # @return [Array<String>]
        attr_accessor :languages
      
        # A list of ids representing which markets the user was interested in.
        # Corresponds to the JSON property `markets`
        # @return [Array<String>]
        attr_accessor :markets
      
        # The user's phone number.
        # Corresponds to the JSON property `phoneNumber`
        # @return [String]
        attr_accessor :phone_number
      
        # The user's primary country, an ISO 2-character code.
        # Corresponds to the JSON property `primaryCountryCode`
        # @return [String]
        attr_accessor :primary_country_code
      
        # Whether the user's public profile is visible to anyone with the URL.
        # Corresponds to the JSON property `profilePublic`
        # @return [Boolean]
        attr_accessor :profile_public
        alias_method :profile_public?, :profile_public
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @address = args[:address] if args.key?(:address)
          @adwords_manager_account = args[:adwords_manager_account] if args.key?(:adwords_manager_account)
          @channels = args[:channels] if args.key?(:channels)
          @email_address = args[:email_address] if args.key?(:email_address)
          @email_opt_ins = args[:email_opt_ins] if args.key?(:email_opt_ins)
          @family_name = args[:family_name] if args.key?(:family_name)
          @given_name = args[:given_name] if args.key?(:given_name)
          @industries = args[:industries] if args.key?(:industries)
          @job_functions = args[:job_functions] if args.key?(:job_functions)
          @languages = args[:languages] if args.key?(:languages)
          @markets = args[:markets] if args.key?(:markets)
          @phone_number = args[:phone_number] if args.key?(:phone_number)
          @primary_country_code = args[:primary_country_code] if args.key?(:primary_country_code)
          @profile_public = args[:profile_public] if args.key?(:profile_public)
        end
      end
    end
  end
end
