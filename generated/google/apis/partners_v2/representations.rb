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
      
      class Certification
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class User
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListAnalyticsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListLeadsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Company
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CreateLeadResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GetCompanyResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Location
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ExamToken
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CertificationExamStatus
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class OptIns
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Rank
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class UserProfile
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
      
      class UserOverrides
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class LogUserEventRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AnalyticsDataPoint
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Analytics
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class PublicProfile
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AdWordsManagerAccountInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ResponseMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class RecaptchaChallenge
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AvailableOffer
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class LatLng
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Money
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AnalyticsSummary
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class LogMessageRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Lead
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DebugInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListUserStatesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CompanyRelation
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
      
      class TrafficSource
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class RequestMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CreateLeadRequest
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
      
      class ListOffersResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CountryOfferInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListCompaniesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class OfferCustomer
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CertificationStatus
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class LocalizedCompanyInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class LogUserEventResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListOffersHistoryResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class LogMessageResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SpecializationStatus
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Certification
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :last_achieved, as: 'lastAchieved'
          property :achieved, as: 'achieved'
          property :expiration, as: 'expiration'
          property :warning, as: 'warning'
          property :certification_type, as: 'certificationType'
        end
      end
      
      class User
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :exam_status, as: 'examStatus', class: Google::Apis::PartnersV2::ExamStatus, decorator: Google::Apis::PartnersV2::ExamStatus::Representation
      
          property :id, as: 'id'
          property :public_profile, as: 'publicProfile', class: Google::Apis::PartnersV2::PublicProfile, decorator: Google::Apis::PartnersV2::PublicProfile::Representation
      
          collection :certification_status, as: 'certificationStatus', class: Google::Apis::PartnersV2::Certification, decorator: Google::Apis::PartnersV2::Certification::Representation
      
          property :company_verification_email, as: 'companyVerificationEmail'
          property :company, as: 'company', class: Google::Apis::PartnersV2::CompanyRelation, decorator: Google::Apis::PartnersV2::CompanyRelation::Representation
      
          property :profile, as: 'profile', class: Google::Apis::PartnersV2::UserProfile, decorator: Google::Apis::PartnersV2::UserProfile::Representation
      
          property :last_access_time, as: 'lastAccessTime'
          collection :primary_emails, as: 'primaryEmails'
          collection :available_adwords_manager_accounts, as: 'availableAdwordsManagerAccounts', class: Google::Apis::PartnersV2::AdWordsManagerAccountInfo, decorator: Google::Apis::PartnersV2::AdWordsManagerAccountInfo::Representation
      
        end
      end
      
      class ListAnalyticsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          property :response_metadata, as: 'responseMetadata', class: Google::Apis::PartnersV2::ResponseMetadata, decorator: Google::Apis::PartnersV2::ResponseMetadata::Representation
      
          property :analytics_summary, as: 'analyticsSummary', class: Google::Apis::PartnersV2::AnalyticsSummary, decorator: Google::Apis::PartnersV2::AnalyticsSummary::Representation
      
          collection :analytics, as: 'analytics', class: Google::Apis::PartnersV2::Analytics, decorator: Google::Apis::PartnersV2::Analytics::Representation
      
        end
      end
      
      class ListLeadsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          property :response_metadata, as: 'responseMetadata', class: Google::Apis::PartnersV2::ResponseMetadata, decorator: Google::Apis::PartnersV2::ResponseMetadata::Representation
      
          property :total_size, as: 'totalSize'
          collection :leads, as: 'leads', class: Google::Apis::PartnersV2::Lead, decorator: Google::Apis::PartnersV2::Lead::Representation
      
        end
      end
      
      class Company
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :converted_min_monthly_budget, as: 'convertedMinMonthlyBudget', class: Google::Apis::PartnersV2::Money, decorator: Google::Apis::PartnersV2::Money::Representation
      
          collection :industries, as: 'industries'
          property :website_url, as: 'websiteUrl'
          collection :additional_websites, as: 'additionalWebsites'
          property :primary_adwords_manager_account_id, as: 'primaryAdwordsManagerAccountId'
          property :name, as: 'name'
          collection :localized_infos, as: 'localizedInfos', class: Google::Apis::PartnersV2::LocalizedCompanyInfo, decorator: Google::Apis::PartnersV2::LocalizedCompanyInfo::Representation
      
          collection :certification_statuses, as: 'certificationStatuses', class: Google::Apis::PartnersV2::CertificationStatus, decorator: Google::Apis::PartnersV2::CertificationStatus::Representation
      
          property :id, as: 'id'
          property :original_min_monthly_budget, as: 'originalMinMonthlyBudget', class: Google::Apis::PartnersV2::Money, decorator: Google::Apis::PartnersV2::Money::Representation
      
          property :public_profile, as: 'publicProfile', class: Google::Apis::PartnersV2::PublicProfile, decorator: Google::Apis::PartnersV2::PublicProfile::Representation
      
          property :primary_location, as: 'primaryLocation', class: Google::Apis::PartnersV2::Location, decorator: Google::Apis::PartnersV2::Location::Representation
      
          collection :services, as: 'services'
          collection :ranks, as: 'ranks', class: Google::Apis::PartnersV2::Rank, decorator: Google::Apis::PartnersV2::Rank::Representation
      
          collection :specialization_status, as: 'specializationStatus', class: Google::Apis::PartnersV2::SpecializationStatus, decorator: Google::Apis::PartnersV2::SpecializationStatus::Representation
      
          property :badge_tier, as: 'badgeTier'
          collection :company_types, as: 'companyTypes'
          collection :auto_approval_email_domains, as: 'autoApprovalEmailDomains'
          property :primary_language_code, as: 'primaryLanguageCode'
          property :profile_status, as: 'profileStatus'
          collection :locations, as: 'locations', class: Google::Apis::PartnersV2::Location, decorator: Google::Apis::PartnersV2::Location::Representation
      
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
      
      class GetCompanyResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :company, as: 'company', class: Google::Apis::PartnersV2::Company, decorator: Google::Apis::PartnersV2::Company::Representation
      
          property :response_metadata, as: 'responseMetadata', class: Google::Apis::PartnersV2::ResponseMetadata, decorator: Google::Apis::PartnersV2::ResponseMetadata::Representation
      
        end
      end
      
      class Location
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :language_code, as: 'languageCode'
          property :sorting_code, as: 'sortingCode'
          collection :address_line, as: 'addressLine'
          property :administrative_area, as: 'administrativeArea'
          property :locality, as: 'locality'
          property :lat_lng, as: 'latLng', class: Google::Apis::PartnersV2::LatLng, decorator: Google::Apis::PartnersV2::LatLng::Representation
      
          property :dependent_locality, as: 'dependentLocality'
          property :region_code, as: 'regionCode'
          property :address, as: 'address'
          property :postal_code, as: 'postalCode'
        end
      end
      
      class ExamToken
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :token, as: 'token'
          property :exam_type, as: 'examType'
          property :exam_id, as: 'examId'
        end
      end
      
      class CertificationExamStatus
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :number_users_pass, as: 'numberUsersPass'
          property :type, as: 'type'
        end
      end
      
      class OptIns
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :market_comm, as: 'marketComm'
          property :special_offers, as: 'specialOffers'
          property :performance_suggestions, as: 'performanceSuggestions'
          property :physical_mail, as: 'physicalMail'
          property :phone_contact, as: 'phoneContact'
        end
      end
      
      class Rank
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :type, as: 'type'
          property :value, as: 'value'
        end
      end
      
      class UserProfile
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :family_name, as: 'familyName'
          collection :languages, as: 'languages'
          property :email_opt_ins, as: 'emailOptIns', class: Google::Apis::PartnersV2::OptIns, decorator: Google::Apis::PartnersV2::OptIns::Representation
      
          collection :markets, as: 'markets'
          property :adwords_manager_account, as: 'adwordsManagerAccount'
          property :phone_number, as: 'phoneNumber'
          property :primary_country_code, as: 'primaryCountryCode'
          property :email_address, as: 'emailAddress'
          property :profile_public, as: 'profilePublic'
          collection :channels, as: 'channels'
          collection :job_functions, as: 'jobFunctions'
          property :given_name, as: 'givenName'
          property :address, as: 'address', class: Google::Apis::PartnersV2::Location, decorator: Google::Apis::PartnersV2::Location::Representation
      
          collection :industries, as: 'industries'
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
          property :client_name, as: 'clientName'
          property :last_modified_time, as: 'lastModifiedTime'
          property :adwords_url, as: 'adwordsUrl'
          property :offer_type, as: 'offerType'
          property :sender_name, as: 'senderName'
          property :offer_country_code, as: 'offerCountryCode'
          property :expiration_time, as: 'expirationTime'
          property :offer_code, as: 'offerCode'
          property :creation_time, as: 'creationTime'
          property :status, as: 'status'
          property :client_email, as: 'clientEmail'
          property :client_id, as: 'clientId'
        end
      end
      
      class UserOverrides
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :ip_address, as: 'ipAddress'
          property :user_id, as: 'userId'
        end
      end
      
      class LogUserEventRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :url, as: 'url'
          property :request_metadata, as: 'requestMetadata', class: Google::Apis::PartnersV2::RequestMetadata, decorator: Google::Apis::PartnersV2::RequestMetadata::Representation
      
          property :event_scope, as: 'eventScope'
          collection :event_datas, as: 'eventDatas', class: Google::Apis::PartnersV2::EventData, decorator: Google::Apis::PartnersV2::EventData::Representation
      
          property :event_category, as: 'eventCategory'
          property :lead, as: 'lead', class: Google::Apis::PartnersV2::Lead, decorator: Google::Apis::PartnersV2::Lead::Representation
      
          property :event_action, as: 'eventAction'
        end
      end
      
      class AnalyticsDataPoint
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :event_count, as: 'eventCount'
          collection :event_locations, as: 'eventLocations', class: Google::Apis::PartnersV2::LatLng, decorator: Google::Apis::PartnersV2::LatLng::Representation
      
        end
      end
      
      class Analytics
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :event_date, as: 'eventDate', class: Google::Apis::PartnersV2::Date, decorator: Google::Apis::PartnersV2::Date::Representation
      
          property :profile_views, as: 'profileViews', class: Google::Apis::PartnersV2::AnalyticsDataPoint, decorator: Google::Apis::PartnersV2::AnalyticsDataPoint::Representation
      
          property :search_views, as: 'searchViews', class: Google::Apis::PartnersV2::AnalyticsDataPoint, decorator: Google::Apis::PartnersV2::AnalyticsDataPoint::Representation
      
          property :contacts, as: 'contacts', class: Google::Apis::PartnersV2::AnalyticsDataPoint, decorator: Google::Apis::PartnersV2::AnalyticsDataPoint::Representation
      
        end
      end
      
      class PublicProfile
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :display_name, as: 'displayName'
          property :display_image_url, as: 'displayImageUrl'
          property :id, as: 'id'
          property :url, as: 'url'
          property :profile_image, as: 'profileImage'
        end
      end
      
      class AdWordsManagerAccountInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :id, as: 'id'
          property :customer_name, as: 'customerName'
        end
      end
      
      class ResponseMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :debug_info, as: 'debugInfo', class: Google::Apis::PartnersV2::DebugInfo, decorator: Google::Apis::PartnersV2::DebugInfo::Representation
      
        end
      end
      
      class RecaptchaChallenge
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :id, as: 'id'
          property :response, as: 'response'
        end
      end
      
      class AvailableOffer
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :offer_type, as: 'offerType'
          property :max_account_age, as: 'maxAccountAge'
          collection :qualified_customer, as: 'qualifiedCustomer', class: Google::Apis::PartnersV2::OfferCustomer, decorator: Google::Apis::PartnersV2::OfferCustomer::Representation
      
          property :terms, as: 'terms'
          property :show_special_offer_copy, as: 'showSpecialOfferCopy'
          property :available, as: 'available'
          property :description, as: 'description'
          property :offer_level, as: 'offerLevel'
          property :name, as: 'name'
          property :qualified_customers_complete, as: 'qualifiedCustomersComplete'
          property :id, as: 'id'
          collection :country_offer_infos, as: 'countryOfferInfos', class: Google::Apis::PartnersV2::CountryOfferInfo, decorator: Google::Apis::PartnersV2::CountryOfferInfo::Representation
      
        end
      end
      
      class LatLng
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :latitude, as: 'latitude'
          property :longitude, as: 'longitude'
        end
      end
      
      class Money
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :nanos, as: 'nanos'
          property :units, as: 'units'
          property :currency_code, as: 'currencyCode'
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
      
      class LogMessageRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          hash :client_info, as: 'clientInfo'
          property :request_metadata, as: 'requestMetadata', class: Google::Apis::PartnersV2::RequestMetadata, decorator: Google::Apis::PartnersV2::RequestMetadata::Representation
      
          property :level, as: 'level'
          property :details, as: 'details'
        end
      end
      
      class Lead
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :marketing_opt_in, as: 'marketingOptIn'
          property :type, as: 'type'
          property :min_monthly_budget, as: 'minMonthlyBudget', class: Google::Apis::PartnersV2::Money, decorator: Google::Apis::PartnersV2::Money::Representation
      
          property :given_name, as: 'givenName'
          property :language_code, as: 'languageCode'
          property :website_url, as: 'websiteUrl'
          property :state, as: 'state'
          collection :gps_motivations, as: 'gpsMotivations'
          property :email, as: 'email'
          property :family_name, as: 'familyName'
          property :id, as: 'id'
          property :comments, as: 'comments'
          property :phone_number, as: 'phoneNumber'
          property :adwords_customer_id, as: 'adwordsCustomerId'
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
      
      class ListUserStatesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :user_states, as: 'userStates'
          property :response_metadata, as: 'responseMetadata', class: Google::Apis::PartnersV2::ResponseMetadata, decorator: Google::Apis::PartnersV2::ResponseMetadata::Representation
      
        end
      end
      
      class CompanyRelation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :state, as: 'state'
          property :name, as: 'name'
          property :manager_account, as: 'managerAccount'
          collection :segment, as: 'segment'
          collection :specialization_status, as: 'specializationStatus', class: Google::Apis::PartnersV2::SpecializationStatus, decorator: Google::Apis::PartnersV2::SpecializationStatus::Representation
      
          property :badge_tier, as: 'badgeTier'
          property :website, as: 'website'
          property :phone_number, as: 'phoneNumber'
          property :company_id, as: 'companyId'
          property :logo_url, as: 'logoUrl'
          property :resolved_timestamp, as: 'resolvedTimestamp'
          property :company_admin, as: 'companyAdmin'
          property :address, as: 'address'
          property :is_pending, as: 'isPending'
          property :creation_time, as: 'creationTime'
        end
      end
      
      class Date
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :year, as: 'year'
          property :day, as: 'day'
          property :month, as: 'month'
        end
      end
      
      class Empty
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class TrafficSource
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :traffic_source_id, as: 'trafficSourceId'
          property :traffic_sub_id, as: 'trafficSubId'
        end
      end
      
      class RequestMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :locale, as: 'locale'
          property :user_overrides, as: 'userOverrides', class: Google::Apis::PartnersV2::UserOverrides, decorator: Google::Apis::PartnersV2::UserOverrides::Representation
      
          property :partners_session_id, as: 'partnersSessionId'
          collection :experiment_ids, as: 'experimentIds'
          property :traffic_source, as: 'trafficSource', class: Google::Apis::PartnersV2::TrafficSource, decorator: Google::Apis::PartnersV2::TrafficSource::Representation
      
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
      
      class EventData
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :values, as: 'values'
          property :key, as: 'key'
        end
      end
      
      class ExamStatus
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :warning, as: 'warning'
          property :expiration, as: 'expiration'
          property :last_passed, as: 'lastPassed'
          property :exam_type, as: 'examType'
          property :passed, as: 'passed'
          property :taken, as: 'taken'
        end
      end
      
      class ListOffersResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :response_metadata, as: 'responseMetadata', class: Google::Apis::PartnersV2::ResponseMetadata, decorator: Google::Apis::PartnersV2::ResponseMetadata::Representation
      
          property :no_offer_reason, as: 'noOfferReason'
          collection :available_offers, as: 'availableOffers', class: Google::Apis::PartnersV2::AvailableOffer, decorator: Google::Apis::PartnersV2::AvailableOffer::Representation
      
        end
      end
      
      class CountryOfferInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :get_y_amount, as: 'getYAmount'
          property :offer_country_code, as: 'offerCountryCode'
          property :spend_x_amount, as: 'spendXAmount'
          property :offer_type, as: 'offerType'
        end
      end
      
      class ListCompaniesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          property :response_metadata, as: 'responseMetadata', class: Google::Apis::PartnersV2::ResponseMetadata, decorator: Google::Apis::PartnersV2::ResponseMetadata::Representation
      
          collection :companies, as: 'companies', class: Google::Apis::PartnersV2::Company, decorator: Google::Apis::PartnersV2::Company::Representation
      
        end
      end
      
      class OfferCustomer
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :spend_x_amount, as: 'spendXAmount'
          property :adwords_url, as: 'adwordsUrl'
          property :country_code, as: 'countryCode'
          property :external_cid, as: 'externalCid'
          property :creation_time, as: 'creationTime'
          property :eligibility_days_left, as: 'eligibilityDaysLeft'
          property :offer_type, as: 'offerType'
          property :get_y_amount, as: 'getYAmount'
          property :name, as: 'name'
        end
      end
      
      class CertificationStatus
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :type, as: 'type'
          property :user_count, as: 'userCount'
          property :is_certified, as: 'isCertified'
          collection :exam_statuses, as: 'examStatuses', class: Google::Apis::PartnersV2::CertificationExamStatus, decorator: Google::Apis::PartnersV2::CertificationExamStatus::Representation
      
        end
      end
      
      class LocalizedCompanyInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :display_name, as: 'displayName'
          property :language_code, as: 'languageCode'
          collection :country_codes, as: 'countryCodes'
          property :overview, as: 'overview'
        end
      end
      
      class LogUserEventResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :response_metadata, as: 'responseMetadata', class: Google::Apis::PartnersV2::ResponseMetadata, decorator: Google::Apis::PartnersV2::ResponseMetadata::Representation
      
        end
      end
      
      class ListOffersHistoryResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :can_show_entire_company, as: 'canShowEntireCompany'
          property :total_results, as: 'totalResults'
          property :showing_entire_company, as: 'showingEntireCompany'
          collection :offers, as: 'offers', class: Google::Apis::PartnersV2::HistoricalOffer, decorator: Google::Apis::PartnersV2::HistoricalOffer::Representation
      
          property :next_page_token, as: 'nextPageToken'
          property :response_metadata, as: 'responseMetadata', class: Google::Apis::PartnersV2::ResponseMetadata, decorator: Google::Apis::PartnersV2::ResponseMetadata::Representation
      
        end
      end
      
      class LogMessageResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :response_metadata, as: 'responseMetadata', class: Google::Apis::PartnersV2::ResponseMetadata, decorator: Google::Apis::PartnersV2::ResponseMetadata::Representation
      
        end
      end
      
      class SpecializationStatus
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :badge_specialization, as: 'badgeSpecialization'
          property :badge_specialization_state, as: 'badgeSpecializationState'
        end
      end
    end
  end
end
