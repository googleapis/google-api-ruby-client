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
      
      # Request message for LogUserEvent.
      class LogUserEventRequest
        include Google::Apis::Core::Hashable
      
        # Common data that is in each API request.
        # Corresponds to the JSON property `requestMetadata`
        # @return [Google::Apis::PartnersV2::RequestMetadata]
        attr_accessor :request_metadata
      
        # The action that occurred.
        # Corresponds to the JSON property `eventAction`
        # @return [String]
        attr_accessor :event_action
      
        # The category the action belongs to.
        # Corresponds to the JSON property `eventCategory`
        # @return [String]
        attr_accessor :event_category
      
        # The scope of the event.
        # Corresponds to the JSON property `eventScope`
        # @return [String]
        attr_accessor :event_scope
      
        # List of event data for the event.
        # Corresponds to the JSON property `eventDatas`
        # @return [Array<Google::Apis::PartnersV2::EventData>]
        attr_accessor :event_datas
      
        # The URL where the event occurred.
        # Corresponds to the JSON property `url`
        # @return [String]
        attr_accessor :url
      
        # A lead resource that represents an advertiser contact for a `Company`. These
        # are usually generated via Google Partner Search (the advertiser portal).
        # Corresponds to the JSON property `lead`
        # @return [Google::Apis::PartnersV2::Lead]
        attr_accessor :lead
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @request_metadata = args[:request_metadata] unless args[:request_metadata].nil?
          @event_action = args[:event_action] unless args[:event_action].nil?
          @event_category = args[:event_category] unless args[:event_category].nil?
          @event_scope = args[:event_scope] unless args[:event_scope].nil?
          @event_datas = args[:event_datas] unless args[:event_datas].nil?
          @url = args[:url] unless args[:url].nil?
          @lead = args[:lead] unless args[:lead].nil?
        end
      end
      
      # Common data that is in each API request.
      class RequestMetadata
        include Google::Apis::Core::Hashable
      
        # Values to use instead of the user's respective defaults. These are only
        # honored by whitelisted products.
        # Corresponds to the JSON property `userOverrides`
        # @return [Google::Apis::PartnersV2::UserOverrides]
        attr_accessor :user_overrides
      
        # Locale to use for the current request.
        # Corresponds to the JSON property `locale`
        # @return [String]
        attr_accessor :locale
      
        # Google Partners session ID.
        # Corresponds to the JSON property `partnersSessionId`
        # @return [String]
        attr_accessor :partners_session_id
      
        # Experiment IDs the current request belongs to.
        # Corresponds to the JSON property `experimentIds`
        # @return [Array<String>]
        attr_accessor :experiment_ids
      
        # Source of traffic for the current request.
        # Corresponds to the JSON property `trafficSource`
        # @return [Google::Apis::PartnersV2::TrafficSource]
        attr_accessor :traffic_source
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @user_overrides = args[:user_overrides] unless args[:user_overrides].nil?
          @locale = args[:locale] unless args[:locale].nil?
          @partners_session_id = args[:partners_session_id] unless args[:partners_session_id].nil?
          @experiment_ids = args[:experiment_ids] unless args[:experiment_ids].nil?
          @traffic_source = args[:traffic_source] unless args[:traffic_source].nil?
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
          @ip_address = args[:ip_address] unless args[:ip_address].nil?
          @user_id = args[:user_id] unless args[:user_id].nil?
        end
      end
      
      # Source of traffic for the current request.
      class TrafficSource
        include Google::Apis::Core::Hashable
      
        # Identifier to indicate where the traffic comes from. An identifier has
        # multiple letters created by a team which redirected the traffic to us.
        # Corresponds to the JSON property `trafficSourceId`
        # @return [String]
        attr_accessor :traffic_source_id
      
        # Second level identifier to indicate where the traffic comes from. An
        # identifier has multiple letters created by a team which redirected the traffic
        # to us.
        # Corresponds to the JSON property `trafficSubId`
        # @return [String]
        attr_accessor :traffic_sub_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @traffic_source_id = args[:traffic_source_id] unless args[:traffic_source_id].nil?
          @traffic_sub_id = args[:traffic_sub_id] unless args[:traffic_sub_id].nil?
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
          @key = args[:key] unless args[:key].nil?
          @values = args[:values] unless args[:values].nil?
        end
      end
      
      # A lead resource that represents an advertiser contact for a `Company`. These
      # are usually generated via Google Partner Search (the advertiser portal).
      class Lead
        include Google::Apis::Core::Hashable
      
        # ID of the lead.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # Type of lead.
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        # Email address of lead source.
        # Corresponds to the JSON property `email`
        # @return [String]
        attr_accessor :email
      
        # First name of lead source.
        # Corresponds to the JSON property `givenName`
        # @return [String]
        attr_accessor :given_name
      
        # Last name of lead source.
        # Corresponds to the JSON property `familyName`
        # @return [String]
        attr_accessor :family_name
      
        # Website URL of lead source.
        # Corresponds to the JSON property `websiteUrl`
        # @return [String]
        attr_accessor :website_url
      
        # Phone number of lead source.
        # Corresponds to the JSON property `phoneNumber`
        # @return [String]
        attr_accessor :phone_number
      
        # Comments lead source gave.
        # Corresponds to the JSON property `comments`
        # @return [String]
        attr_accessor :comments
      
        # List of reasons for using Google Partner Search and creating a lead.
        # Corresponds to the JSON property `gpsMotivations`
        # @return [Array<String>]
        attr_accessor :gps_motivations
      
        # Represents an amount of money with its currency type.
        # Corresponds to the JSON property `minMonthlyBudget`
        # @return [Google::Apis::PartnersV2::Money]
        attr_accessor :min_monthly_budget
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @id = args[:id] unless args[:id].nil?
          @type = args[:type] unless args[:type].nil?
          @email = args[:email] unless args[:email].nil?
          @given_name = args[:given_name] unless args[:given_name].nil?
          @family_name = args[:family_name] unless args[:family_name].nil?
          @website_url = args[:website_url] unless args[:website_url].nil?
          @phone_number = args[:phone_number] unless args[:phone_number].nil?
          @comments = args[:comments] unless args[:comments].nil?
          @gps_motivations = args[:gps_motivations] unless args[:gps_motivations].nil?
          @min_monthly_budget = args[:min_monthly_budget] unless args[:min_monthly_budget].nil?
        end
      end
      
      # Represents an amount of money with its currency type.
      class Money
        include Google::Apis::Core::Hashable
      
        # The 3-letter currency code defined in ISO 4217.
        # Corresponds to the JSON property `currencyCode`
        # @return [String]
        attr_accessor :currency_code
      
        # The whole units of the amount. For example if `currencyCode` is `"USD"`, then
        # 1 unit is one US dollar.
        # Corresponds to the JSON property `units`
        # @return [String]
        attr_accessor :units
      
        # Number of nano (10^-9) units of the amount. The value must be between -999,999,
        # 999 and +999,999,999 inclusive. If `units` is positive, `nanos` must be
        # positive or zero. If `units` is zero, `nanos` can be positive, zero, or
        # negative. If `units` is negative, `nanos` must be negative or zero. For
        # example $-1.75 is represented as `units`=-1 and `nanos`=-750,000,000.
        # Corresponds to the JSON property `nanos`
        # @return [Fixnum]
        attr_accessor :nanos
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @currency_code = args[:currency_code] unless args[:currency_code].nil?
          @units = args[:units] unless args[:units].nil?
          @nanos = args[:nanos] unless args[:nanos].nil?
        end
      end
      
      # Response message for LogUserEvent.
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
          @response_metadata = args[:response_metadata] unless args[:response_metadata].nil?
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
          @debug_info = args[:debug_info] unless args[:debug_info].nil?
        end
      end
      
      # Debug information about this request.
      class DebugInfo
        include Google::Apis::Core::Hashable
      
        # Info about the server that serviced this request.
        # Corresponds to the JSON property `serverInfo`
        # @return [String]
        attr_accessor :server_info
      
        # URL of the service that handled this request.
        # Corresponds to the JSON property `serviceUrl`
        # @return [String]
        attr_accessor :service_url
      
        # Server-side debug stack trace.
        # Corresponds to the JSON property `serverTraceInfo`
        # @return [String]
        attr_accessor :server_trace_info
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @server_info = args[:server_info] unless args[:server_info].nil?
          @service_url = args[:service_url] unless args[:service_url].nil?
          @server_trace_info = args[:server_trace_info] unless args[:server_trace_info].nil?
        end
      end
      
      # Request message for LogClientMessage.
      class LogMessageRequest
        include Google::Apis::Core::Hashable
      
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
      
        # Map of client info, such as URL, browser navigator, browser platform, etc.
        # Corresponds to the JSON property `clientInfo`
        # @return [Hash<String,String>]
        attr_accessor :client_info
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @request_metadata = args[:request_metadata] unless args[:request_metadata].nil?
          @level = args[:level] unless args[:level].nil?
          @details = args[:details] unless args[:details].nil?
          @client_info = args[:client_info] unless args[:client_info].nil?
        end
      end
      
      # Response message for LogClientMessage.
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
          @response_metadata = args[:response_metadata] unless args[:response_metadata].nil?
        end
      end
      
      # Response message for ListUserStates.
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
          @response_metadata = args[:response_metadata] unless args[:response_metadata].nil?
          @user_states = args[:user_states] unless args[:user_states].nil?
        end
      end
      
      # Response message for GetCompany.
      class GetCompanyResponse
        include Google::Apis::Core::Hashable
      
        # Common data that is in each API response.
        # Corresponds to the JSON property `responseMetadata`
        # @return [Google::Apis::PartnersV2::ResponseMetadata]
        attr_accessor :response_metadata
      
        # A company resource in the Google Partners API. Once certified, it qualifies
        # for being searched by advertisers.
        # Corresponds to the JSON property `company`
        # @return [Google::Apis::PartnersV2::Company]
        attr_accessor :company
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @response_metadata = args[:response_metadata] unless args[:response_metadata].nil?
          @company = args[:company] unless args[:company].nil?
        end
      end
      
      # A company resource in the Google Partners API. Once certified, it qualifies
      # for being searched by advertisers.
      class Company
        include Google::Apis::Core::Hashable
      
        # The ID of the company.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # The name of the company.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # The list of localized info for the company.
        # Corresponds to the JSON property `localizedInfos`
        # @return [Array<Google::Apis::PartnersV2::LocalizedCompanyInfo>]
        attr_accessor :localized_infos
      
        # The list of company locations.
        # Corresponds to the JSON property `locations`
        # @return [Array<Google::Apis::PartnersV2::Location>]
        attr_accessor :locations
      
        # Represents an amount of money with its currency type.
        # Corresponds to the JSON property `convertedMinMonthlyBudget`
        # @return [Google::Apis::PartnersV2::Money]
        attr_accessor :converted_min_monthly_budget
      
        # Represents an amount of money with its currency type.
        # Corresponds to the JSON property `originalMinMonthlyBudget`
        # @return [Google::Apis::PartnersV2::Money]
        attr_accessor :original_min_monthly_budget
      
        # Basic information from a public profile.
        # Corresponds to the JSON property `publicProfile`
        # @return [Google::Apis::PartnersV2::PublicProfile]
        attr_accessor :public_profile
      
        # The list of Google Partners certification statuses for the company.
        # Corresponds to the JSON property `certificationStatuses`
        # @return [Array<Google::Apis::PartnersV2::CertificationStatus>]
        attr_accessor :certification_statuses
      
        # Information related to the ranking of the company within the list of companies.
        # Corresponds to the JSON property `ranks`
        # @return [Array<Google::Apis::PartnersV2::Rank>]
        attr_accessor :ranks
      
        # URL of the company's website.
        # Corresponds to the JSON property `websiteUrl`
        # @return [String]
        attr_accessor :website_url
      
        # Industries the company can help with.
        # Corresponds to the JSON property `industries`
        # @return [Array<String>]
        attr_accessor :industries
      
        # Services the company can help with.
        # Corresponds to the JSON property `services`
        # @return [Array<String>]
        attr_accessor :services
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @id = args[:id] unless args[:id].nil?
          @name = args[:name] unless args[:name].nil?
          @localized_infos = args[:localized_infos] unless args[:localized_infos].nil?
          @locations = args[:locations] unless args[:locations].nil?
          @converted_min_monthly_budget = args[:converted_min_monthly_budget] unless args[:converted_min_monthly_budget].nil?
          @original_min_monthly_budget = args[:original_min_monthly_budget] unless args[:original_min_monthly_budget].nil?
          @public_profile = args[:public_profile] unless args[:public_profile].nil?
          @certification_statuses = args[:certification_statuses] unless args[:certification_statuses].nil?
          @ranks = args[:ranks] unless args[:ranks].nil?
          @website_url = args[:website_url] unless args[:website_url].nil?
          @industries = args[:industries] unless args[:industries].nil?
          @services = args[:services] unless args[:services].nil?
        end
      end
      
      # The localized company information.
      class LocalizedCompanyInfo
        include Google::Apis::Core::Hashable
      
        # Language code of the localized company info, as defined by BCP 47 (IETF BCP 47,
        # "Tags for Identifying Languages").
        # Corresponds to the JSON property `languageCode`
        # @return [String]
        attr_accessor :language_code
      
        # Localized display name.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # Localized brief description that the company uses to advertise themselves.
        # Corresponds to the JSON property `overview`
        # @return [String]
        attr_accessor :overview
      
        # List of country codes for the localized company info.
        # Corresponds to the JSON property `countryCodes`
        # @return [Array<String>]
        attr_accessor :country_codes
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @language_code = args[:language_code] unless args[:language_code].nil?
          @display_name = args[:display_name] unless args[:display_name].nil?
          @overview = args[:overview] unless args[:overview].nil?
          @country_codes = args[:country_codes] unless args[:country_codes].nil?
        end
      end
      
      # A location with address and geographic coordinates.
      class Location
        include Google::Apis::Core::Hashable
      
        # The complete address of the location.
        # Corresponds to the JSON property `address`
        # @return [String]
        attr_accessor :address
      
        # An object representing a latitude/longitude pair. This is expressed as a pair
        # of doubles representing degrees latitude and degrees longitude. Unless
        # specified otherwise, this must conform to the WGS84 standard. Values must be
        # within normalized ranges. Example of normalization code in Python: def
        # NormalizeLongitude(longitude): """Wrapsdecimal degrees longitude to [-180.0,
        # 180.0].""" q, r = divmod(longitude, 360.0) if r > 180.0 or (r == 180.0 and q <=
        # -1.0): return r - 360.0 return r def NormalizeLatLng(latitude, longitude): """
        # Wraps decimal degrees latitude and longitude to [-180.0, 180.0] and [-90.0, 90.
        # 0], respectively.""" r = latitude % 360.0 if r = 270.0: return r - 360,
        # NormalizeLongitude(longitude) else: return 180 - r, NormalizeLongitude(
        # longitude + 180.0) assert 180.0 == NormalizeLongitude(180.0) assert -180.0 ==
        # NormalizeLongitude(-180.0) assert -179.0 == NormalizeLongitude(181.0) assert (
        # 0.0, 0.0) == NormalizeLatLng(360.0, 0.0) assert (0.0, 0.0) == NormalizeLatLng(-
        # 360.0, 0.0) assert (85.0, 180.0) == NormalizeLatLng(95.0, 0.0) assert (-85.0, -
        # 170.0) == NormalizeLatLng(-95.0, 10.0) assert (90.0, 10.0) == NormalizeLatLng(
        # 90.0, 10.0) assert (-90.0, -10.0) == NormalizeLatLng(-90.0, -10.0) assert (0.0,
        # -170.0) == NormalizeLatLng(-180.0, 10.0) assert (0.0, -170.0) ==
        # NormalizeLatLng(180.0, 10.0) assert (-90.0, 10.0) == NormalizeLatLng(270.0, 10.
        # 0) assert (90.0, 10.0) == NormalizeLatLng(-270.0, 10.0)
        # Corresponds to the JSON property `latLng`
        # @return [Google::Apis::PartnersV2::LatLng]
        attr_accessor :lat_lng
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @address = args[:address] unless args[:address].nil?
          @lat_lng = args[:lat_lng] unless args[:lat_lng].nil?
        end
      end
      
      # An object representing a latitude/longitude pair. This is expressed as a pair
      # of doubles representing degrees latitude and degrees longitude. Unless
      # specified otherwise, this must conform to the WGS84 standard. Values must be
      # within normalized ranges. Example of normalization code in Python: def
      # NormalizeLongitude(longitude): """Wrapsdecimal degrees longitude to [-180.0,
      # 180.0].""" q, r = divmod(longitude, 360.0) if r > 180.0 or (r == 180.0 and q <=
      # -1.0): return r - 360.0 return r def NormalizeLatLng(latitude, longitude): """
      # Wraps decimal degrees latitude and longitude to [-180.0, 180.0] and [-90.0, 90.
      # 0], respectively.""" r = latitude % 360.0 if r = 270.0: return r - 360,
      # NormalizeLongitude(longitude) else: return 180 - r, NormalizeLongitude(
      # longitude + 180.0) assert 180.0 == NormalizeLongitude(180.0) assert -180.0 ==
      # NormalizeLongitude(-180.0) assert -179.0 == NormalizeLongitude(181.0) assert (
      # 0.0, 0.0) == NormalizeLatLng(360.0, 0.0) assert (0.0, 0.0) == NormalizeLatLng(-
      # 360.0, 0.0) assert (85.0, 180.0) == NormalizeLatLng(95.0, 0.0) assert (-85.0, -
      # 170.0) == NormalizeLatLng(-95.0, 10.0) assert (90.0, 10.0) == NormalizeLatLng(
      # 90.0, 10.0) assert (-90.0, -10.0) == NormalizeLatLng(-90.0, -10.0) assert (0.0,
      # -170.0) == NormalizeLatLng(-180.0, 10.0) assert (0.0, -170.0) ==
      # NormalizeLatLng(180.0, 10.0) assert (-90.0, 10.0) == NormalizeLatLng(270.0, 10.
      # 0) assert (90.0, 10.0) == NormalizeLatLng(-270.0, 10.0)
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
          @latitude = args[:latitude] unless args[:latitude].nil?
          @longitude = args[:longitude] unless args[:longitude].nil?
        end
      end
      
      # Basic information from a public profile.
      class PublicProfile
        include Google::Apis::Core::Hashable
      
        # The ID which can be used to retrieve more details about the public profile.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # The display name of the public profile.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # The URL of the public profile.
        # Corresponds to the JSON property `url`
        # @return [String]
        attr_accessor :url
      
        # The URL to the main display image of the public profile.
        # Corresponds to the JSON property `displayImageUrl`
        # @return [String]
        attr_accessor :display_image_url
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @id = args[:id] unless args[:id].nil?
          @display_name = args[:display_name] unless args[:display_name].nil?
          @url = args[:url] unless args[:url].nil?
          @display_image_url = args[:display_image_url] unless args[:display_image_url].nil?
        end
      end
      
      # Google Partners certification status.
      class CertificationStatus
        include Google::Apis::Core::Hashable
      
        # The type of the certification.
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        # List of certification exam statuses.
        # Corresponds to the JSON property `examStatuses`
        # @return [Array<Google::Apis::PartnersV2::CertificationExamStatus>]
        attr_accessor :exam_statuses
      
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
          @type = args[:type] unless args[:type].nil?
          @exam_statuses = args[:exam_statuses] unless args[:exam_statuses].nil?
          @is_certified = args[:is_certified] unless args[:is_certified].nil?
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
          @type = args[:type] unless args[:type].nil?
          @number_users_pass = args[:number_users_pass] unless args[:number_users_pass].nil?
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
          @type = args[:type] unless args[:type].nil?
          @value = args[:value] unless args[:value].nil?
        end
      end
      
      # Response message for ListCompanies.
      class ListCompaniesResponse
        include Google::Apis::Core::Hashable
      
        # Common data that is in each API response.
        # Corresponds to the JSON property `responseMetadata`
        # @return [Google::Apis::PartnersV2::ResponseMetadata]
        attr_accessor :response_metadata
      
        # The list of companies.
        # Corresponds to the JSON property `companies`
        # @return [Array<Google::Apis::PartnersV2::Company>]
        attr_accessor :companies
      
        # A token to retrieve next page of results. Pass this value in the `
        # ListCompaniesRequest.page_token` field in the subsequent call to ListCompanies
        # to retrieve the next page of results.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @response_metadata = args[:response_metadata] unless args[:response_metadata].nil?
          @companies = args[:companies] unless args[:companies].nil?
          @next_page_token = args[:next_page_token] unless args[:next_page_token].nil?
        end
      end
      
      # Request message for CreateLead.
      class CreateLeadRequest
        include Google::Apis::Core::Hashable
      
        # Common data that is in each API request.
        # Corresponds to the JSON property `requestMetadata`
        # @return [Google::Apis::PartnersV2::RequestMetadata]
        attr_accessor :request_metadata
      
        # A lead resource that represents an advertiser contact for a `Company`. These
        # are usually generated via Google Partner Search (the advertiser portal).
        # Corresponds to the JSON property `lead`
        # @return [Google::Apis::PartnersV2::Lead]
        attr_accessor :lead
      
        # reCaptcha challenge info.
        # Corresponds to the JSON property `recaptchaChallenge`
        # @return [Google::Apis::PartnersV2::RecaptchaChallenge]
        attr_accessor :recaptcha_challenge
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @request_metadata = args[:request_metadata] unless args[:request_metadata].nil?
          @lead = args[:lead] unless args[:lead].nil?
          @recaptcha_challenge = args[:recaptcha_challenge] unless args[:recaptcha_challenge].nil?
        end
      end
      
      # reCaptcha challenge info.
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
          @id = args[:id] unless args[:id].nil?
          @response = args[:response] unless args[:response].nil?
        end
      end
      
      # Response message for CreateLead. Debug information about this request.
      class CreateLeadResponse
        include Google::Apis::Core::Hashable
      
        # Common data that is in each API response.
        # Corresponds to the JSON property `responseMetadata`
        # @return [Google::Apis::PartnersV2::ResponseMetadata]
        attr_accessor :response_metadata
      
        # A lead resource that represents an advertiser contact for a `Company`. These
        # are usually generated via Google Partner Search (the advertiser portal).
        # Corresponds to the JSON property `lead`
        # @return [Google::Apis::PartnersV2::Lead]
        attr_accessor :lead
      
        # The outcome of reCaptcha validation.
        # Corresponds to the JSON property `recaptchaStatus`
        # @return [String]
        attr_accessor :recaptcha_status
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @response_metadata = args[:response_metadata] unless args[:response_metadata].nil?
          @lead = args[:lead] unless args[:lead].nil?
          @recaptcha_status = args[:recaptcha_status] unless args[:recaptcha_status].nil?
        end
      end
    end
  end
end
