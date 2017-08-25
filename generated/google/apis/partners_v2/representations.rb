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
      
      class AdWordsManagerAccountInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Analytics
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AnalyticsDataPoint
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AnalyticsSummary
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AvailableOffer
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Certification
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CertificationExamStatus
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CertificationStatus
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Company
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CompanyRelation
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CountryOfferInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CreateLeadRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CreateLeadResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Date
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DebugInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Empty
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class EventData
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ExamStatus
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ExamToken
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GetCompanyResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GetPartnersStatusResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class HistoricalOffer
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class LatLng
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Lead
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListAnalyticsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListCompaniesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListLeadsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListOffersHistoryResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListOffersResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListUserStatesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class LocalizedCompanyInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Location
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class LogMessageRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class LogMessageResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class LogUserEventRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class LogUserEventResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Money
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class OfferCustomer
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class OptIns
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class PublicProfile
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Rank
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class RecaptchaChallenge
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class RequestMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ResponseMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SpecializationStatus
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class TrafficSource
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class User
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class UserOverrides
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class UserProfile
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AdWordsManagerAccountInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :customer_name, as: 'customerName'
          property :id, :numeric_string => true, as: 'id'
        end
      end
      
      class Analytics
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :contacts, as: 'contacts', class: Google::Apis::PartnersV2::AnalyticsDataPoint, decorator: Google::Apis::PartnersV2::AnalyticsDataPoint::Representation
      
          property :event_date, as: 'eventDate', class: Google::Apis::PartnersV2::Date, decorator: Google::Apis::PartnersV2::Date::Representation
      
          property :profile_views, as: 'profileViews', class: Google::Apis::PartnersV2::AnalyticsDataPoint, decorator: Google::Apis::PartnersV2::AnalyticsDataPoint::Representation
      
          property :search_views, as: 'searchViews', class: Google::Apis::PartnersV2::AnalyticsDataPoint, decorator: Google::Apis::PartnersV2::AnalyticsDataPoint::Representation
      
        end
      end
      
      class AnalyticsDataPoint
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :event_count, as: 'eventCount'
          collection :event_locations, as: 'eventLocations', class: Google::Apis::PartnersV2::LatLng, decorator: Google::Apis::PartnersV2::LatLng::Representation
      
        end
      end
      
      class AnalyticsSummary
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :contacts_count, as: 'contactsCount'
          property :profile_views_count, as: 'profileViewsCount'
          property :search_views_count, as: 'searchViewsCount'
        end
      end
      
      class AvailableOffer
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :available, as: 'available'
          collection :country_offer_infos, as: 'countryOfferInfos', class: Google::Apis::PartnersV2::CountryOfferInfo, decorator: Google::Apis::PartnersV2::CountryOfferInfo::Representation
      
          property :description, as: 'description'
          property :id, :numeric_string => true, as: 'id'
          property :max_account_age, as: 'maxAccountAge'
          property :name, as: 'name'
          property :offer_level, as: 'offerLevel'
          property :offer_type, as: 'offerType'
          collection :qualified_customer, as: 'qualifiedCustomer', class: Google::Apis::PartnersV2::OfferCustomer, decorator: Google::Apis::PartnersV2::OfferCustomer::Representation
      
          property :qualified_customers_complete, as: 'qualifiedCustomersComplete'
          property :show_special_offer_copy, as: 'showSpecialOfferCopy'
          property :terms, as: 'terms'
        end
      end
      
      class Certification
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :achieved, as: 'achieved'
          property :certification_type, as: 'certificationType'
          property :expiration, as: 'expiration'
          property :last_achieved, as: 'lastAchieved'
          property :warning, as: 'warning'
        end
      end
      
      class CertificationExamStatus
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :number_users_pass, as: 'numberUsersPass'
          property :type, as: 'type'
        end
      end
      
      class CertificationStatus
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :exam_statuses, as: 'examStatuses', class: Google::Apis::PartnersV2::CertificationExamStatus, decorator: Google::Apis::PartnersV2::CertificationExamStatus::Representation
      
          property :is_certified, as: 'isCertified'
          property :type, as: 'type'
          property :user_count, as: 'userCount'
        end
      end
      
      class Company
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :additional_websites, as: 'additionalWebsites'
          collection :auto_approval_email_domains, as: 'autoApprovalEmailDomains'
          property :badge_tier, as: 'badgeTier'
          collection :certification_statuses, as: 'certificationStatuses', class: Google::Apis::PartnersV2::CertificationStatus, decorator: Google::Apis::PartnersV2::CertificationStatus::Representation
      
          collection :company_types, as: 'companyTypes'
          property :converted_min_monthly_budget, as: 'convertedMinMonthlyBudget', class: Google::Apis::PartnersV2::Money, decorator: Google::Apis::PartnersV2::Money::Representation
      
          property :id, as: 'id'
          collection :industries, as: 'industries'
          collection :localized_infos, as: 'localizedInfos', class: Google::Apis::PartnersV2::LocalizedCompanyInfo, decorator: Google::Apis::PartnersV2::LocalizedCompanyInfo::Representation
      
          collection :locations, as: 'locations', class: Google::Apis::PartnersV2::Location, decorator: Google::Apis::PartnersV2::Location::Representation
      
          property :name, as: 'name'
          property :original_min_monthly_budget, as: 'originalMinMonthlyBudget', class: Google::Apis::PartnersV2::Money, decorator: Google::Apis::PartnersV2::Money::Representation
      
          property :primary_adwords_manager_account_id, :numeric_string => true, as: 'primaryAdwordsManagerAccountId'
          property :primary_language_code, as: 'primaryLanguageCode'
          property :primary_location, as: 'primaryLocation', class: Google::Apis::PartnersV2::Location, decorator: Google::Apis::PartnersV2::Location::Representation
      
          property :profile_status, as: 'profileStatus'
          property :public_profile, as: 'publicProfile', class: Google::Apis::PartnersV2::PublicProfile, decorator: Google::Apis::PartnersV2::PublicProfile::Representation
      
          collection :ranks, as: 'ranks', class: Google::Apis::PartnersV2::Rank, decorator: Google::Apis::PartnersV2::Rank::Representation
      
          collection :services, as: 'services'
          collection :specialization_status, as: 'specializationStatus', class: Google::Apis::PartnersV2::SpecializationStatus, decorator: Google::Apis::PartnersV2::SpecializationStatus::Representation
      
          property :website_url, as: 'websiteUrl'
        end
      end
      
      class CompanyRelation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :address, as: 'address'
          property :badge_tier, as: 'badgeTier'
          property :company_admin, as: 'companyAdmin'
          property :company_id, as: 'companyId'
          property :creation_time, as: 'creationTime'
          property :internal_company_id, as: 'internalCompanyId'
          property :is_pending, as: 'isPending'
          property :logo_url, as: 'logoUrl'
          property :manager_account, :numeric_string => true, as: 'managerAccount'
          property :name, as: 'name'
          property :phone_number, as: 'phoneNumber'
          property :primary_address, as: 'primaryAddress', class: Google::Apis::PartnersV2::Location, decorator: Google::Apis::PartnersV2::Location::Representation
      
          property :primary_country_code, as: 'primaryCountryCode'
          property :primary_language_code, as: 'primaryLanguageCode'
          property :resolved_timestamp, as: 'resolvedTimestamp'
          collection :segment, as: 'segment'
          collection :specialization_status, as: 'specializationStatus', class: Google::Apis::PartnersV2::SpecializationStatus, decorator: Google::Apis::PartnersV2::SpecializationStatus::Representation
      
          property :state, as: 'state'
          property :website, as: 'website'
        end
      end
      
      class CountryOfferInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :get_y_amount, as: 'getYAmount'
          property :offer_country_code, as: 'offerCountryCode'
          property :offer_type, as: 'offerType'
          property :spend_x_amount, as: 'spendXAmount'
        end
      end
      
      class CreateLeadRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :lead, as: 'lead', class: Google::Apis::PartnersV2::Lead, decorator: Google::Apis::PartnersV2::Lead::Representation
      
          property :recaptcha_challenge, as: 'recaptchaChallenge', class: Google::Apis::PartnersV2::RecaptchaChallenge, decorator: Google::Apis::PartnersV2::RecaptchaChallenge::Representation
      
          property :request_metadata, as: 'requestMetadata', class: Google::Apis::PartnersV2::RequestMetadata, decorator: Google::Apis::PartnersV2::RequestMetadata::Representation
      
        end
      end
      
      class CreateLeadResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :lead, as: 'lead', class: Google::Apis::PartnersV2::Lead, decorator: Google::Apis::PartnersV2::Lead::Representation
      
          property :recaptcha_status, as: 'recaptchaStatus'
          property :response_metadata, as: 'responseMetadata', class: Google::Apis::PartnersV2::ResponseMetadata, decorator: Google::Apis::PartnersV2::ResponseMetadata::Representation
      
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
      
      class DebugInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :server_info, as: 'serverInfo'
          property :server_trace_info, as: 'serverTraceInfo'
          property :service_url, as: 'serviceUrl'
        end
      end
      
      class Empty
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class EventData
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :key, as: 'key'
          collection :values, as: 'values'
        end
      end
      
      class ExamStatus
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :exam_type, as: 'examType'
          property :expiration, as: 'expiration'
          property :last_passed, as: 'lastPassed'
          property :passed, as: 'passed'
          property :taken, as: 'taken'
          property :warning, as: 'warning'
        end
      end
      
      class ExamToken
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :exam_id, :numeric_string => true, as: 'examId'
          property :exam_type, as: 'examType'
          property :token, as: 'token'
        end
      end
      
      class GetCompanyResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :company, as: 'company', class: Google::Apis::PartnersV2::Company, decorator: Google::Apis::PartnersV2::Company::Representation
      
          property :response_metadata, as: 'responseMetadata', class: Google::Apis::PartnersV2::ResponseMetadata, decorator: Google::Apis::PartnersV2::ResponseMetadata::Representation
      
        end
      end
      
      class GetPartnersStatusResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :response_metadata, as: 'responseMetadata', class: Google::Apis::PartnersV2::ResponseMetadata, decorator: Google::Apis::PartnersV2::ResponseMetadata::Representation
      
        end
      end
      
      class HistoricalOffer
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :adwords_url, as: 'adwordsUrl'
          property :client_email, as: 'clientEmail'
          property :client_id, :numeric_string => true, as: 'clientId'
          property :client_name, as: 'clientName'
          property :creation_time, as: 'creationTime'
          property :expiration_time, as: 'expirationTime'
          property :last_modified_time, as: 'lastModifiedTime'
          property :offer_code, as: 'offerCode'
          property :offer_country_code, as: 'offerCountryCode'
          property :offer_type, as: 'offerType'
          property :sender_name, as: 'senderName'
          property :status, as: 'status'
        end
      end
      
      class LatLng
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :latitude, as: 'latitude'
          property :longitude, as: 'longitude'
        end
      end
      
      class Lead
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :adwords_customer_id, :numeric_string => true, as: 'adwordsCustomerId'
          property :comments, as: 'comments'
          property :create_time, as: 'createTime'
          property :email, as: 'email'
          property :family_name, as: 'familyName'
          property :given_name, as: 'givenName'
          collection :gps_motivations, as: 'gpsMotivations'
          property :id, as: 'id'
          property :language_code, as: 'languageCode'
          property :marketing_opt_in, as: 'marketingOptIn'
          property :min_monthly_budget, as: 'minMonthlyBudget', class: Google::Apis::PartnersV2::Money, decorator: Google::Apis::PartnersV2::Money::Representation
      
          property :phone_number, as: 'phoneNumber'
          property :state, as: 'state'
          property :type, as: 'type'
          property :website_url, as: 'websiteUrl'
        end
      end
      
      class ListAnalyticsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :analytics, as: 'analytics', class: Google::Apis::PartnersV2::Analytics, decorator: Google::Apis::PartnersV2::Analytics::Representation
      
          property :analytics_summary, as: 'analyticsSummary', class: Google::Apis::PartnersV2::AnalyticsSummary, decorator: Google::Apis::PartnersV2::AnalyticsSummary::Representation
      
          property :next_page_token, as: 'nextPageToken'
          property :response_metadata, as: 'responseMetadata', class: Google::Apis::PartnersV2::ResponseMetadata, decorator: Google::Apis::PartnersV2::ResponseMetadata::Representation
      
        end
      end
      
      class ListCompaniesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :companies, as: 'companies', class: Google::Apis::PartnersV2::Company, decorator: Google::Apis::PartnersV2::Company::Representation
      
          property :next_page_token, as: 'nextPageToken'
          property :response_metadata, as: 'responseMetadata', class: Google::Apis::PartnersV2::ResponseMetadata, decorator: Google::Apis::PartnersV2::ResponseMetadata::Representation
      
        end
      end
      
      class ListLeadsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :leads, as: 'leads', class: Google::Apis::PartnersV2::Lead, decorator: Google::Apis::PartnersV2::Lead::Representation
      
          property :next_page_token, as: 'nextPageToken'
          property :response_metadata, as: 'responseMetadata', class: Google::Apis::PartnersV2::ResponseMetadata, decorator: Google::Apis::PartnersV2::ResponseMetadata::Representation
      
          property :total_size, as: 'totalSize'
        end
      end
      
      class ListOffersHistoryResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :can_show_entire_company, as: 'canShowEntireCompany'
          property :next_page_token, as: 'nextPageToken'
          collection :offers, as: 'offers', class: Google::Apis::PartnersV2::HistoricalOffer, decorator: Google::Apis::PartnersV2::HistoricalOffer::Representation
      
          property :response_metadata, as: 'responseMetadata', class: Google::Apis::PartnersV2::ResponseMetadata, decorator: Google::Apis::PartnersV2::ResponseMetadata::Representation
      
          property :showing_entire_company, as: 'showingEntireCompany'
          property :total_results, as: 'totalResults'
        end
      end
      
      class ListOffersResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :available_offers, as: 'availableOffers', class: Google::Apis::PartnersV2::AvailableOffer, decorator: Google::Apis::PartnersV2::AvailableOffer::Representation
      
          property :no_offer_reason, as: 'noOfferReason'
          property :response_metadata, as: 'responseMetadata', class: Google::Apis::PartnersV2::ResponseMetadata, decorator: Google::Apis::PartnersV2::ResponseMetadata::Representation
      
        end
      end
      
      class ListUserStatesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :response_metadata, as: 'responseMetadata', class: Google::Apis::PartnersV2::ResponseMetadata, decorator: Google::Apis::PartnersV2::ResponseMetadata::Representation
      
          collection :user_states, as: 'userStates'
        end
      end
      
      class LocalizedCompanyInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :country_codes, as: 'countryCodes'
          property :display_name, as: 'displayName'
          property :language_code, as: 'languageCode'
          property :overview, as: 'overview'
        end
      end
      
      class Location
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :address, as: 'address'
          collection :address_line, as: 'addressLine'
          property :administrative_area, as: 'administrativeArea'
          property :dependent_locality, as: 'dependentLocality'
          property :language_code, as: 'languageCode'
          property :lat_lng, as: 'latLng', class: Google::Apis::PartnersV2::LatLng, decorator: Google::Apis::PartnersV2::LatLng::Representation
      
          property :locality, as: 'locality'
          property :postal_code, as: 'postalCode'
          property :region_code, as: 'regionCode'
          property :sorting_code, as: 'sortingCode'
        end
      end
      
      class LogMessageRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          hash :client_info, as: 'clientInfo'
          property :details, as: 'details'
          property :level, as: 'level'
          property :request_metadata, as: 'requestMetadata', class: Google::Apis::PartnersV2::RequestMetadata, decorator: Google::Apis::PartnersV2::RequestMetadata::Representation
      
        end
      end
      
      class LogMessageResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :response_metadata, as: 'responseMetadata', class: Google::Apis::PartnersV2::ResponseMetadata, decorator: Google::Apis::PartnersV2::ResponseMetadata::Representation
      
        end
      end
      
      class LogUserEventRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :event_action, as: 'eventAction'
          property :event_category, as: 'eventCategory'
          collection :event_datas, as: 'eventDatas', class: Google::Apis::PartnersV2::EventData, decorator: Google::Apis::PartnersV2::EventData::Representation
      
          property :event_scope, as: 'eventScope'
          property :lead, as: 'lead', class: Google::Apis::PartnersV2::Lead, decorator: Google::Apis::PartnersV2::Lead::Representation
      
          property :request_metadata, as: 'requestMetadata', class: Google::Apis::PartnersV2::RequestMetadata, decorator: Google::Apis::PartnersV2::RequestMetadata::Representation
      
          property :url, as: 'url'
        end
      end
      
      class LogUserEventResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :response_metadata, as: 'responseMetadata', class: Google::Apis::PartnersV2::ResponseMetadata, decorator: Google::Apis::PartnersV2::ResponseMetadata::Representation
      
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
      
      class OfferCustomer
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :adwords_url, as: 'adwordsUrl'
          property :country_code, as: 'countryCode'
          property :creation_time, as: 'creationTime'
          property :eligibility_days_left, as: 'eligibilityDaysLeft'
          property :external_cid, :numeric_string => true, as: 'externalCid'
          property :get_y_amount, as: 'getYAmount'
          property :name, as: 'name'
          property :offer_type, as: 'offerType'
          property :spend_x_amount, as: 'spendXAmount'
        end
      end
      
      class OptIns
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :market_comm, as: 'marketComm'
          property :performance_suggestions, as: 'performanceSuggestions'
          property :phone_contact, as: 'phoneContact'
          property :physical_mail, as: 'physicalMail'
          property :special_offers, as: 'specialOffers'
        end
      end
      
      class PublicProfile
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :display_image_url, as: 'displayImageUrl'
          property :display_name, as: 'displayName'
          property :id, as: 'id'
          property :profile_image, as: 'profileImage'
          property :url, as: 'url'
        end
      end
      
      class Rank
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :type, as: 'type'
          property :value, as: 'value'
        end
      end
      
      class RecaptchaChallenge
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :id, as: 'id'
          property :response, as: 'response'
        end
      end
      
      class RequestMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :experiment_ids, as: 'experimentIds'
          property :locale, as: 'locale'
          property :partners_session_id, as: 'partnersSessionId'
          property :traffic_source, as: 'trafficSource', class: Google::Apis::PartnersV2::TrafficSource, decorator: Google::Apis::PartnersV2::TrafficSource::Representation
      
          property :user_overrides, as: 'userOverrides', class: Google::Apis::PartnersV2::UserOverrides, decorator: Google::Apis::PartnersV2::UserOverrides::Representation
      
        end
      end
      
      class ResponseMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :debug_info, as: 'debugInfo', class: Google::Apis::PartnersV2::DebugInfo, decorator: Google::Apis::PartnersV2::DebugInfo::Representation
      
        end
      end
      
      class SpecializationStatus
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :badge_specialization, as: 'badgeSpecialization'
          property :badge_specialization_state, as: 'badgeSpecializationState'
        end
      end
      
      class TrafficSource
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :traffic_source_id, as: 'trafficSourceId'
          property :traffic_sub_id, as: 'trafficSubId'
        end
      end
      
      class User
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :available_adwords_manager_accounts, as: 'availableAdwordsManagerAccounts', class: Google::Apis::PartnersV2::AdWordsManagerAccountInfo, decorator: Google::Apis::PartnersV2::AdWordsManagerAccountInfo::Representation
      
          collection :certification_status, as: 'certificationStatus', class: Google::Apis::PartnersV2::Certification, decorator: Google::Apis::PartnersV2::Certification::Representation
      
          property :company, as: 'company', class: Google::Apis::PartnersV2::CompanyRelation, decorator: Google::Apis::PartnersV2::CompanyRelation::Representation
      
          property :company_verification_email, as: 'companyVerificationEmail'
          collection :exam_status, as: 'examStatus', class: Google::Apis::PartnersV2::ExamStatus, decorator: Google::Apis::PartnersV2::ExamStatus::Representation
      
          property :id, as: 'id'
          property :internal_id, as: 'internalId'
          property :last_access_time, as: 'lastAccessTime'
          collection :primary_emails, as: 'primaryEmails'
          property :profile, as: 'profile', class: Google::Apis::PartnersV2::UserProfile, decorator: Google::Apis::PartnersV2::UserProfile::Representation
      
          property :public_profile, as: 'publicProfile', class: Google::Apis::PartnersV2::PublicProfile, decorator: Google::Apis::PartnersV2::PublicProfile::Representation
      
        end
      end
      
      class UserOverrides
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :ip_address, as: 'ipAddress'
          property :user_id, as: 'userId'
        end
      end
      
      class UserProfile
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :address, as: 'address', class: Google::Apis::PartnersV2::Location, decorator: Google::Apis::PartnersV2::Location::Representation
      
          property :adwords_manager_account, :numeric_string => true, as: 'adwordsManagerAccount'
          collection :channels, as: 'channels'
          property :email_address, as: 'emailAddress'
          property :email_opt_ins, as: 'emailOptIns', class: Google::Apis::PartnersV2::OptIns, decorator: Google::Apis::PartnersV2::OptIns::Representation
      
          property :family_name, as: 'familyName'
          property :given_name, as: 'givenName'
          collection :industries, as: 'industries'
          collection :job_functions, as: 'jobFunctions'
          collection :languages, as: 'languages'
          collection :markets, as: 'markets'
          property :phone_number, as: 'phoneNumber'
          property :primary_country_code, as: 'primaryCountryCode'
          property :profile_public, as: 'profilePublic'
        end
      end
    end
  end
end
