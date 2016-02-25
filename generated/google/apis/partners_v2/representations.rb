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
      
      class LogUserEventRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class RequestMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class UserOverrides
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class TrafficSource
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class EventData
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Lead
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Money
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class LogUserEventResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ResponseMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DebugInfo
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
      
      class ListUserStatesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GetCompanyResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Company
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
      
      class LatLng
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class PublicProfile
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CertificationStatus
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CertificationExamStatus
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Rank
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListCompaniesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CreateLeadRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class RecaptchaChallenge
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CreateLeadResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class LogUserEventRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :request_metadata, as: 'requestMetadata', class: Google::Apis::PartnersV2::RequestMetadata, decorator: Google::Apis::PartnersV2::RequestMetadata::Representation
      
          property :event_action, as: 'eventAction'
          property :event_category, as: 'eventCategory'
          property :event_scope, as: 'eventScope'
          collection :event_datas, as: 'eventDatas', class: Google::Apis::PartnersV2::EventData, decorator: Google::Apis::PartnersV2::EventData::Representation
      
          property :url, as: 'url'
          property :lead, as: 'lead', class: Google::Apis::PartnersV2::Lead, decorator: Google::Apis::PartnersV2::Lead::Representation
      
        end
      end
      
      class RequestMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :user_overrides, as: 'userOverrides', class: Google::Apis::PartnersV2::UserOverrides, decorator: Google::Apis::PartnersV2::UserOverrides::Representation
      
          property :locale, as: 'locale'
          property :partners_session_id, as: 'partnersSessionId'
          collection :experiment_ids, as: 'experimentIds'
          property :traffic_source, as: 'trafficSource', class: Google::Apis::PartnersV2::TrafficSource, decorator: Google::Apis::PartnersV2::TrafficSource::Representation
      
        end
      end
      
      class UserOverrides
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :ip_address, as: 'ipAddress'
          property :user_id, as: 'userId'
        end
      end
      
      class TrafficSource
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :traffic_source_id, as: 'trafficSourceId'
          property :traffic_sub_id, as: 'trafficSubId'
        end
      end
      
      class EventData
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :key, as: 'key'
          collection :values, as: 'values'
        end
      end
      
      class Lead
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :id, as: 'id'
          property :type, as: 'type'
          property :email, as: 'email'
          property :given_name, as: 'givenName'
          property :family_name, as: 'familyName'
          property :website_url, as: 'websiteUrl'
          property :phone_number, as: 'phoneNumber'
          property :comments, as: 'comments'
          collection :gps_motivations, as: 'gpsMotivations'
          property :min_monthly_budget, as: 'minMonthlyBudget', class: Google::Apis::PartnersV2::Money, decorator: Google::Apis::PartnersV2::Money::Representation
      
        end
      end
      
      class Money
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :currency_code, as: 'currencyCode'
          property :units, as: 'units'
          property :nanos, as: 'nanos'
        end
      end
      
      class LogUserEventResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :response_metadata, as: 'responseMetadata', class: Google::Apis::PartnersV2::ResponseMetadata, decorator: Google::Apis::PartnersV2::ResponseMetadata::Representation
      
        end
      end
      
      class ResponseMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :debug_info, as: 'debugInfo', class: Google::Apis::PartnersV2::DebugInfo, decorator: Google::Apis::PartnersV2::DebugInfo::Representation
      
        end
      end
      
      class DebugInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :server_info, as: 'serverInfo'
          property :service_url, as: 'serviceUrl'
          property :server_trace_info, as: 'serverTraceInfo'
        end
      end
      
      class LogMessageRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :request_metadata, as: 'requestMetadata', class: Google::Apis::PartnersV2::RequestMetadata, decorator: Google::Apis::PartnersV2::RequestMetadata::Representation
      
          property :level, as: 'level'
          property :details, as: 'details'
          hash :client_info, as: 'clientInfo'
        end
      end
      
      class LogMessageResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
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
      
      class GetCompanyResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :response_metadata, as: 'responseMetadata', class: Google::Apis::PartnersV2::ResponseMetadata, decorator: Google::Apis::PartnersV2::ResponseMetadata::Representation
      
          property :company, as: 'company', class: Google::Apis::PartnersV2::Company, decorator: Google::Apis::PartnersV2::Company::Representation
      
        end
      end
      
      class Company
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :id, as: 'id'
          property :name, as: 'name'
          collection :localized_infos, as: 'localizedInfos', class: Google::Apis::PartnersV2::LocalizedCompanyInfo, decorator: Google::Apis::PartnersV2::LocalizedCompanyInfo::Representation
      
          collection :locations, as: 'locations', class: Google::Apis::PartnersV2::Location, decorator: Google::Apis::PartnersV2::Location::Representation
      
          property :converted_min_monthly_budget, as: 'convertedMinMonthlyBudget', class: Google::Apis::PartnersV2::Money, decorator: Google::Apis::PartnersV2::Money::Representation
      
          property :original_min_monthly_budget, as: 'originalMinMonthlyBudget', class: Google::Apis::PartnersV2::Money, decorator: Google::Apis::PartnersV2::Money::Representation
      
          property :public_profile, as: 'publicProfile', class: Google::Apis::PartnersV2::PublicProfile, decorator: Google::Apis::PartnersV2::PublicProfile::Representation
      
          collection :certification_statuses, as: 'certificationStatuses', class: Google::Apis::PartnersV2::CertificationStatus, decorator: Google::Apis::PartnersV2::CertificationStatus::Representation
      
          collection :ranks, as: 'ranks', class: Google::Apis::PartnersV2::Rank, decorator: Google::Apis::PartnersV2::Rank::Representation
      
          property :website_url, as: 'websiteUrl'
          collection :industries, as: 'industries'
          collection :services, as: 'services'
        end
      end
      
      class LocalizedCompanyInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :language_code, as: 'languageCode'
          property :display_name, as: 'displayName'
          property :overview, as: 'overview'
          collection :country_codes, as: 'countryCodes'
        end
      end
      
      class Location
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :address, as: 'address'
          property :lat_lng, as: 'latLng', class: Google::Apis::PartnersV2::LatLng, decorator: Google::Apis::PartnersV2::LatLng::Representation
      
        end
      end
      
      class LatLng
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :latitude, as: 'latitude'
          property :longitude, as: 'longitude'
        end
      end
      
      class PublicProfile
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :id, as: 'id'
          property :display_name, as: 'displayName'
          property :url, as: 'url'
          property :display_image_url, as: 'displayImageUrl'
        end
      end
      
      class CertificationStatus
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :type, as: 'type'
          collection :exam_statuses, as: 'examStatuses', class: Google::Apis::PartnersV2::CertificationExamStatus, decorator: Google::Apis::PartnersV2::CertificationExamStatus::Representation
      
          property :is_certified, as: 'isCertified'
        end
      end
      
      class CertificationExamStatus
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :type, as: 'type'
          property :number_users_pass, as: 'numberUsersPass'
        end
      end
      
      class Rank
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :type, as: 'type'
          property :value, as: 'value'
        end
      end
      
      class ListCompaniesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :response_metadata, as: 'responseMetadata', class: Google::Apis::PartnersV2::ResponseMetadata, decorator: Google::Apis::PartnersV2::ResponseMetadata::Representation
      
          collection :companies, as: 'companies', class: Google::Apis::PartnersV2::Company, decorator: Google::Apis::PartnersV2::Company::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class CreateLeadRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :request_metadata, as: 'requestMetadata', class: Google::Apis::PartnersV2::RequestMetadata, decorator: Google::Apis::PartnersV2::RequestMetadata::Representation
      
          property :lead, as: 'lead', class: Google::Apis::PartnersV2::Lead, decorator: Google::Apis::PartnersV2::Lead::Representation
      
          property :recaptcha_challenge, as: 'recaptchaChallenge', class: Google::Apis::PartnersV2::RecaptchaChallenge, decorator: Google::Apis::PartnersV2::RecaptchaChallenge::Representation
      
        end
      end
      
      class RecaptchaChallenge
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :id, as: 'id'
          property :response, as: 'response'
        end
      end
      
      class CreateLeadResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :response_metadata, as: 'responseMetadata', class: Google::Apis::PartnersV2::ResponseMetadata, decorator: Google::Apis::PartnersV2::ResponseMetadata::Representation
      
          property :lead, as: 'lead', class: Google::Apis::PartnersV2::Lead, decorator: Google::Apis::PartnersV2::Lead::Representation
      
          property :recaptcha_status, as: 'recaptchaStatus'
        end
      end
    end
  end
end
