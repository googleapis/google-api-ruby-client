# Copyright 2020 Google LLC
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
    module DatamanagerV1
      
      # 
      class AdEvent
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `adFormat`
        # @return [String]
        attr_accessor :ad_format
      
        # 
        # Corresponds to the JSON property `adFormatString`
        # @return [String]
        attr_accessor :ad_format_string
      
        # 
        # Corresponds to the JSON property `adGroupId`
        # @return [String]
        attr_accessor :ad_group_id
      
        # 
        # Corresponds to the JSON property `adHeight`
        # @return [Fixnum]
        attr_accessor :ad_height
      
        # 
        # Corresponds to the JSON property `adId`
        # @return [String]
        attr_accessor :ad_id
      
        # 
        # Corresponds to the JSON property `adPlacement`
        # @return [String]
        attr_accessor :ad_placement
      
        # 
        # Corresponds to the JSON property `adPlacementString`
        # @return [String]
        attr_accessor :ad_placement_string
      
        # 
        # Corresponds to the JSON property `adType`
        # @return [String]
        attr_accessor :ad_type
      
        # 
        # Corresponds to the JSON property `adTypeString`
        # @return [String]
        attr_accessor :ad_type_string
      
        # 
        # Corresponds to the JSON property `adWidth`
        # @return [Fixnum]
        attr_accessor :ad_width
      
        # 
        # Corresponds to the JSON property `advertiserId`
        # @return [String]
        attr_accessor :advertiser_id
      
        # 
        # Corresponds to the JSON property `attributionHint`
        # @return [String]
        attr_accessor :attribution_hint
      
        # 
        # Corresponds to the JSON property `campaignId`
        # @return [String]
        attr_accessor :campaign_id
      
        # 
        # Corresponds to the JSON property `campaignName`
        # @return [String]
        attr_accessor :campaign_name
      
        # 
        # Corresponds to the JSON property `deviceInfo`
        # @return [Google::Apis::DatamanagerV1::DeviceInfo]
        attr_accessor :device_info
      
        # 
        # Corresponds to the JSON property `eventId`
        # @return [String]
        attr_accessor :event_id
      
        # 
        # Corresponds to the JSON property `eventSubtype`
        # @return [String]
        attr_accessor :event_subtype
      
        # 
        # Corresponds to the JSON property `eventSubtypeString`
        # @return [String]
        attr_accessor :event_subtype_string
      
        # 
        # Corresponds to the JSON property `eventType`
        # @return [String]
        attr_accessor :event_type
      
        # 
        # Corresponds to the JSON property `ipAddress`
        # @return [String]
        attr_accessor :ip_address
      
        # 
        # Corresponds to the JSON property `measurementAllowed`
        # @return [Boolean]
        attr_accessor :measurement_allowed
        alias_method :measurement_allowed?, :measurement_allowed
      
        # 
        # Corresponds to the JSON property `medium`
        # @return [String]
        attr_accessor :medium
      
        # 
        # Corresponds to the JSON property `mobileDeviceId`
        # @return [String]
        attr_accessor :mobile_device_id
      
        # 
        # Corresponds to the JSON property `platform`
        # @return [String]
        attr_accessor :platform
      
        # 
        # Corresponds to the JSON property `platformString`
        # @return [String]
        attr_accessor :platform_string
      
        # 
        # Corresponds to the JSON property `platformType`
        # @return [String]
        attr_accessor :platform_type
      
        # 
        # Corresponds to the JSON property `platformTypeString`
        # @return [String]
        attr_accessor :platform_type_string
      
        # 
        # Corresponds to the JSON property `regionCode`
        # @return [String]
        attr_accessor :region_code
      
        # 
        # Corresponds to the JSON property `source`
        # @return [String]
        attr_accessor :source
      
        # 
        # Corresponds to the JSON property `targetingType`
        # @return [String]
        attr_accessor :targeting_type
      
        # 
        # Corresponds to the JSON property `targetingTypeString`
        # @return [String]
        attr_accessor :targeting_type_string
      
        # 
        # Corresponds to the JSON property `timestamp`
        # @return [String]
        attr_accessor :timestamp
      
        # 
        # Corresponds to the JSON property `userData`
        # @return [Google::Apis::DatamanagerV1::UserData]
        attr_accessor :user_data
      
        # 
        # Corresponds to the JSON property `viewabilityInfo`
        # @return [Google::Apis::DatamanagerV1::ViewabilityInfo]
        attr_accessor :viewability_info
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @ad_format = args[:ad_format] if args.key?(:ad_format)
          @ad_format_string = args[:ad_format_string] if args.key?(:ad_format_string)
          @ad_group_id = args[:ad_group_id] if args.key?(:ad_group_id)
          @ad_height = args[:ad_height] if args.key?(:ad_height)
          @ad_id = args[:ad_id] if args.key?(:ad_id)
          @ad_placement = args[:ad_placement] if args.key?(:ad_placement)
          @ad_placement_string = args[:ad_placement_string] if args.key?(:ad_placement_string)
          @ad_type = args[:ad_type] if args.key?(:ad_type)
          @ad_type_string = args[:ad_type_string] if args.key?(:ad_type_string)
          @ad_width = args[:ad_width] if args.key?(:ad_width)
          @advertiser_id = args[:advertiser_id] if args.key?(:advertiser_id)
          @attribution_hint = args[:attribution_hint] if args.key?(:attribution_hint)
          @campaign_id = args[:campaign_id] if args.key?(:campaign_id)
          @campaign_name = args[:campaign_name] if args.key?(:campaign_name)
          @device_info = args[:device_info] if args.key?(:device_info)
          @event_id = args[:event_id] if args.key?(:event_id)
          @event_subtype = args[:event_subtype] if args.key?(:event_subtype)
          @event_subtype_string = args[:event_subtype_string] if args.key?(:event_subtype_string)
          @event_type = args[:event_type] if args.key?(:event_type)
          @ip_address = args[:ip_address] if args.key?(:ip_address)
          @measurement_allowed = args[:measurement_allowed] if args.key?(:measurement_allowed)
          @medium = args[:medium] if args.key?(:medium)
          @mobile_device_id = args[:mobile_device_id] if args.key?(:mobile_device_id)
          @platform = args[:platform] if args.key?(:platform)
          @platform_string = args[:platform_string] if args.key?(:platform_string)
          @platform_type = args[:platform_type] if args.key?(:platform_type)
          @platform_type_string = args[:platform_type_string] if args.key?(:platform_type_string)
          @region_code = args[:region_code] if args.key?(:region_code)
          @source = args[:source] if args.key?(:source)
          @targeting_type = args[:targeting_type] if args.key?(:targeting_type)
          @targeting_type_string = args[:targeting_type_string] if args.key?(:targeting_type_string)
          @timestamp = args[:timestamp] if args.key?(:timestamp)
          @user_data = args[:user_data] if args.key?(:user_data)
          @viewability_info = args[:viewability_info] if args.key?(:viewability_info)
        end
      end
      
      # 
      class AdIdentifiers
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `dclid`
        # @return [String]
        attr_accessor :dclid
      
        # 
        # Corresponds to the JSON property `encryptedUserIds`
        # @return [Array<Google::Apis::DatamanagerV1::EncryptedUserId>]
        attr_accessor :encrypted_user_ids
      
        # 
        # Corresponds to the JSON property `gbraid`
        # @return [String]
        attr_accessor :gbraid
      
        # 
        # Corresponds to the JSON property `gclid`
        # @return [String]
        attr_accessor :gclid
      
        # 
        # Corresponds to the JSON property `impressionId`
        # @return [String]
        attr_accessor :impression_id
      
        # 
        # Corresponds to the JSON property `landingPageDeviceInfo`
        # @return [Google::Apis::DatamanagerV1::DeviceInfo]
        attr_accessor :landing_page_device_info
      
        # 
        # Corresponds to the JSON property `matchId`
        # @return [String]
        attr_accessor :match_id
      
        # 
        # Corresponds to the JSON property `mobileDeviceId`
        # @return [String]
        attr_accessor :mobile_device_id
      
        # 
        # Corresponds to the JSON property `ppid`
        # @return [String]
        attr_accessor :ppid
      
        # 
        # Corresponds to the JSON property `sessionAttributes`
        # @return [String]
        attr_accessor :session_attributes
      
        # 
        # Corresponds to the JSON property `visitorPpid`
        # @return [String]
        attr_accessor :visitor_ppid
      
        # 
        # Corresponds to the JSON property `wbraid`
        # @return [String]
        attr_accessor :wbraid
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @dclid = args[:dclid] if args.key?(:dclid)
          @encrypted_user_ids = args[:encrypted_user_ids] if args.key?(:encrypted_user_ids)
          @gbraid = args[:gbraid] if args.key?(:gbraid)
          @gclid = args[:gclid] if args.key?(:gclid)
          @impression_id = args[:impression_id] if args.key?(:impression_id)
          @landing_page_device_info = args[:landing_page_device_info] if args.key?(:landing_page_device_info)
          @match_id = args[:match_id] if args.key?(:match_id)
          @mobile_device_id = args[:mobile_device_id] if args.key?(:mobile_device_id)
          @ppid = args[:ppid] if args.key?(:ppid)
          @session_attributes = args[:session_attributes] if args.key?(:session_attributes)
          @visitor_ppid = args[:visitor_ppid] if args.key?(:visitor_ppid)
          @wbraid = args[:wbraid] if args.key?(:wbraid)
        end
      end
      
      # 
      class AddressInfo
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `addressLine`
        # @return [String]
        attr_accessor :address_line
      
        # 
        # Corresponds to the JSON property `administrativeArea`
        # @return [String]
        attr_accessor :administrative_area
      
        # 
        # Corresponds to the JSON property `city`
        # @return [String]
        attr_accessor :city
      
        # 
        # Corresponds to the JSON property `familyName`
        # @return [String]
        attr_accessor :family_name
      
        # 
        # Corresponds to the JSON property `givenName`
        # @return [String]
        attr_accessor :given_name
      
        # 
        # Corresponds to the JSON property `postalCode`
        # @return [String]
        attr_accessor :postal_code
      
        # 
        # Corresponds to the JSON property `regionCode`
        # @return [String]
        attr_accessor :region_code
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @address_line = args[:address_line] if args.key?(:address_line)
          @administrative_area = args[:administrative_area] if args.key?(:administrative_area)
          @city = args[:city] if args.key?(:city)
          @family_name = args[:family_name] if args.key?(:family_name)
          @given_name = args[:given_name] if args.key?(:given_name)
          @postal_code = args[:postal_code] if args.key?(:postal_code)
          @region_code = args[:region_code] if args.key?(:region_code)
        end
      end
      
      # 
      class AudienceMember
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `compositeData`
        # @return [Google::Apis::DatamanagerV1::CompositeData]
        attr_accessor :composite_data
      
        # 
        # Corresponds to the JSON property `consent`
        # @return [Google::Apis::DatamanagerV1::Consent]
        attr_accessor :consent
      
        # 
        # Corresponds to the JSON property `destinationReferences`
        # @return [Array<String>]
        attr_accessor :destination_references
      
        # 
        # Corresponds to the JSON property `googleUserIdData`
        # @return [Google::Apis::DatamanagerV1::GoogleUserIdData]
        attr_accessor :google_user_id_data
      
        # 
        # Corresponds to the JSON property `mobileData`
        # @return [Google::Apis::DatamanagerV1::MobileData]
        attr_accessor :mobile_data
      
        # 
        # Corresponds to the JSON property `pairData`
        # @return [Google::Apis::DatamanagerV1::PairData]
        attr_accessor :pair_data
      
        # 
        # Corresponds to the JSON property `partnerProvidedIdData`
        # @return [Google::Apis::DatamanagerV1::PartnerProvidedIdData]
        attr_accessor :partner_provided_id_data
      
        # 
        # Corresponds to the JSON property `ppidData`
        # @return [Google::Apis::DatamanagerV1::PpidData]
        attr_accessor :ppid_data
      
        # 
        # Corresponds to the JSON property `userData`
        # @return [Google::Apis::DatamanagerV1::UserData]
        attr_accessor :user_data
      
        # 
        # Corresponds to the JSON property `userIdData`
        # @return [Google::Apis::DatamanagerV1::UserIdData]
        attr_accessor :user_id_data
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @composite_data = args[:composite_data] if args.key?(:composite_data)
          @consent = args[:consent] if args.key?(:consent)
          @destination_references = args[:destination_references] if args.key?(:destination_references)
          @google_user_id_data = args[:google_user_id_data] if args.key?(:google_user_id_data)
          @mobile_data = args[:mobile_data] if args.key?(:mobile_data)
          @pair_data = args[:pair_data] if args.key?(:pair_data)
          @partner_provided_id_data = args[:partner_provided_id_data] if args.key?(:partner_provided_id_data)
          @ppid_data = args[:ppid_data] if args.key?(:ppid_data)
          @user_data = args[:user_data] if args.key?(:user_data)
          @user_id_data = args[:user_id_data] if args.key?(:user_id_data)
        end
      end
      
      # 
      class AwsWrappedKeyInfo
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `encryptedDek`
        # @return [String]
        attr_accessor :encrypted_dek
      
        # 
        # Corresponds to the JSON property `kekUri`
        # @return [String]
        attr_accessor :kek_uri
      
        # 
        # Corresponds to the JSON property `keyType`
        # @return [String]
        attr_accessor :key_type
      
        # 
        # Corresponds to the JSON property `roleArn`
        # @return [String]
        attr_accessor :role_arn
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @encrypted_dek = args[:encrypted_dek] if args.key?(:encrypted_dek)
          @kek_uri = args[:kek_uri] if args.key?(:kek_uri)
          @key_type = args[:key_type] if args.key?(:key_type)
          @role_arn = args[:role_arn] if args.key?(:role_arn)
        end
      end
      
      # 
      class Baseline
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `baselineLocation`
        # @return [Google::Apis::DatamanagerV1::Location]
        attr_accessor :baseline_location
      
        # 
        # Corresponds to the JSON property `locationAutoDetectionEnabled`
        # @return [Boolean]
        attr_accessor :location_auto_detection_enabled
        alias_method :location_auto_detection_enabled?, :location_auto_detection_enabled
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @baseline_location = args[:baseline_location] if args.key?(:baseline_location)
          @location_auto_detection_enabled = args[:location_auto_detection_enabled] if args.key?(:location_auto_detection_enabled)
        end
      end
      
      # 
      class CartData
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `couponCodes`
        # @return [Array<String>]
        attr_accessor :coupon_codes
      
        # 
        # Corresponds to the JSON property `items`
        # @return [Array<Google::Apis::DatamanagerV1::Item>]
        attr_accessor :items
      
        # 
        # Corresponds to the JSON property `merchantFeedLabel`
        # @return [String]
        attr_accessor :merchant_feed_label
      
        # 
        # Corresponds to the JSON property `merchantFeedLanguageCode`
        # @return [String]
        attr_accessor :merchant_feed_language_code
      
        # 
        # Corresponds to the JSON property `merchantId`
        # @return [String]
        attr_accessor :merchant_id
      
        # 
        # Corresponds to the JSON property `transactionDiscount`
        # @return [Float]
        attr_accessor :transaction_discount
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @coupon_codes = args[:coupon_codes] if args.key?(:coupon_codes)
          @items = args[:items] if args.key?(:items)
          @merchant_feed_label = args[:merchant_feed_label] if args.key?(:merchant_feed_label)
          @merchant_feed_language_code = args[:merchant_feed_language_code] if args.key?(:merchant_feed_language_code)
          @merchant_id = args[:merchant_id] if args.key?(:merchant_id)
          @transaction_discount = args[:transaction_discount] if args.key?(:transaction_discount)
        end
      end
      
      # 
      class CompositeData
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `ipData`
        # @return [Array<Google::Apis::DatamanagerV1::IpData>]
        attr_accessor :ip_data
      
        # 
        # Corresponds to the JSON property `userData`
        # @return [Google::Apis::DatamanagerV1::UserData]
        attr_accessor :user_data
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @ip_data = args[:ip_data] if args.key?(:ip_data)
          @user_data = args[:user_data] if args.key?(:user_data)
        end
      end
      
      # 
      class Consent
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `adPersonalization`
        # @return [String]
        attr_accessor :ad_personalization
      
        # 
        # Corresponds to the JSON property `adUserData`
        # @return [String]
        attr_accessor :ad_user_data
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @ad_personalization = args[:ad_personalization] if args.key?(:ad_personalization)
          @ad_user_data = args[:ad_user_data] if args.key?(:ad_user_data)
        end
      end
      
      # 
      class ContactIdInfo
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `dataSourceType`
        # @return [String]
        attr_accessor :data_source_type
      
        # 
        # Corresponds to the JSON property `matchRatePercentage`
        # @return [Fixnum]
        attr_accessor :match_rate_percentage
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @data_source_type = args[:data_source_type] if args.key?(:data_source_type)
          @match_rate_percentage = args[:match_rate_percentage] if args.key?(:match_rate_percentage)
        end
      end
      
      # 
      class CoordinatorKeyInfo
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `keyId`
        # @return [String]
        attr_accessor :key_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @key_id = args[:key_id] if args.key?(:key_id)
        end
      end
      
      # 
      class CustomVariable
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `destinationReferences`
        # @return [Array<String>]
        attr_accessor :destination_references
      
        # 
        # Corresponds to the JSON property `value`
        # @return [String]
        attr_accessor :value
      
        # 
        # Corresponds to the JSON property `variable`
        # @return [String]
        attr_accessor :variable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @destination_references = args[:destination_references] if args.key?(:destination_references)
          @value = args[:value] if args.key?(:value)
          @variable = args[:variable] if args.key?(:variable)
        end
      end
      
      # 
      class DataTypeCount
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `count`
        # @return [Fixnum]
        attr_accessor :count
      
        # 
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @count = args[:count] if args.key?(:count)
          @type = args[:type] if args.key?(:type)
        end
      end
      
      # 
      class Destination
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `linkedAccount`
        # @return [Google::Apis::DatamanagerV1::ProductAccount]
        attr_accessor :linked_account
      
        # 
        # Corresponds to the JSON property `loginAccount`
        # @return [Google::Apis::DatamanagerV1::ProductAccount]
        attr_accessor :login_account
      
        # 
        # Corresponds to the JSON property `operatingAccount`
        # @return [Google::Apis::DatamanagerV1::ProductAccount]
        attr_accessor :operating_account
      
        # 
        # Corresponds to the JSON property `productDestinationId`
        # @return [String]
        attr_accessor :product_destination_id
      
        # 
        # Corresponds to the JSON property `reference`
        # @return [String]
        attr_accessor :reference
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @linked_account = args[:linked_account] if args.key?(:linked_account)
          @login_account = args[:login_account] if args.key?(:login_account)
          @operating_account = args[:operating_account] if args.key?(:operating_account)
          @product_destination_id = args[:product_destination_id] if args.key?(:product_destination_id)
          @reference = args[:reference] if args.key?(:reference)
        end
      end
      
      # 
      class DeviceInfo
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `brand`
        # @return [String]
        attr_accessor :brand
      
        # 
        # Corresponds to the JSON property `browser`
        # @return [String]
        attr_accessor :browser
      
        # 
        # Corresponds to the JSON property `browserVersion`
        # @return [String]
        attr_accessor :browser_version
      
        # 
        # Corresponds to the JSON property `category`
        # @return [String]
        attr_accessor :category
      
        # 
        # Corresponds to the JSON property `ipAddress`
        # @return [String]
        attr_accessor :ip_address
      
        # 
        # Corresponds to the JSON property `languageCode`
        # @return [String]
        attr_accessor :language_code
      
        # 
        # Corresponds to the JSON property `model`
        # @return [String]
        attr_accessor :model
      
        # 
        # Corresponds to the JSON property `operatingSystem`
        # @return [String]
        attr_accessor :operating_system
      
        # 
        # Corresponds to the JSON property `operatingSystemVersion`
        # @return [String]
        attr_accessor :operating_system_version
      
        # 
        # Corresponds to the JSON property `screenHeight`
        # @return [Fixnum]
        attr_accessor :screen_height
      
        # 
        # Corresponds to the JSON property `screenWidth`
        # @return [Fixnum]
        attr_accessor :screen_width
      
        # 
        # Corresponds to the JSON property `userAgent`
        # @return [String]
        attr_accessor :user_agent
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @brand = args[:brand] if args.key?(:brand)
          @browser = args[:browser] if args.key?(:browser)
          @browser_version = args[:browser_version] if args.key?(:browser_version)
          @category = args[:category] if args.key?(:category)
          @ip_address = args[:ip_address] if args.key?(:ip_address)
          @language_code = args[:language_code] if args.key?(:language_code)
          @model = args[:model] if args.key?(:model)
          @operating_system = args[:operating_system] if args.key?(:operating_system)
          @operating_system_version = args[:operating_system_version] if args.key?(:operating_system_version)
          @screen_height = args[:screen_height] if args.key?(:screen_height)
          @screen_width = args[:screen_width] if args.key?(:screen_width)
          @user_agent = args[:user_agent] if args.key?(:user_agent)
        end
      end
      
      # 
      class Empty
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # 
      class EncryptedUserId
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `encryptedId`
        # @return [String]
        attr_accessor :encrypted_id
      
        # 
        # Corresponds to the JSON property `entityId`
        # @return [Fixnum]
        attr_accessor :entity_id
      
        # 
        # Corresponds to the JSON property `entityType`
        # @return [String]
        attr_accessor :entity_type
      
        # 
        # Corresponds to the JSON property `source`
        # @return [String]
        attr_accessor :source
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @encrypted_id = args[:encrypted_id] if args.key?(:encrypted_id)
          @entity_id = args[:entity_id] if args.key?(:entity_id)
          @entity_type = args[:entity_type] if args.key?(:entity_type)
          @source = args[:source] if args.key?(:source)
        end
      end
      
      # 
      class EncryptionInfo
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `awsWrappedKeyInfo`
        # @return [Google::Apis::DatamanagerV1::AwsWrappedKeyInfo]
        attr_accessor :aws_wrapped_key_info
      
        # 
        # Corresponds to the JSON property `coordinatorKeyInfo`
        # @return [Google::Apis::DatamanagerV1::CoordinatorKeyInfo]
        attr_accessor :coordinator_key_info
      
        # 
        # Corresponds to the JSON property `gcpWrappedKeyInfo`
        # @return [Google::Apis::DatamanagerV1::GcpWrappedKeyInfo]
        attr_accessor :gcp_wrapped_key_info
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @aws_wrapped_key_info = args[:aws_wrapped_key_info] if args.key?(:aws_wrapped_key_info)
          @coordinator_key_info = args[:coordinator_key_info] if args.key?(:coordinator_key_info)
          @gcp_wrapped_key_info = args[:gcp_wrapped_key_info] if args.key?(:gcp_wrapped_key_info)
        end
      end
      
      # 
      class ErrorCount
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `reason`
        # @return [String]
        attr_accessor :reason
      
        # 
        # Corresponds to the JSON property `recordCount`
        # @return [Fixnum]
        attr_accessor :record_count
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @reason = args[:reason] if args.key?(:reason)
          @record_count = args[:record_count] if args.key?(:record_count)
        end
      end
      
      # 
      class ErrorInfo
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `errorCounts`
        # @return [Array<Google::Apis::DatamanagerV1::ErrorCount>]
        attr_accessor :error_counts
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @error_counts = args[:error_counts] if args.key?(:error_counts)
        end
      end
      
      # 
      class Event
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `adIdentifiers`
        # @return [Google::Apis::DatamanagerV1::AdIdentifiers]
        attr_accessor :ad_identifiers
      
        # 
        # Corresponds to the JSON property `additionalEventParameters`
        # @return [Array<Google::Apis::DatamanagerV1::EventParameter>]
        attr_accessor :additional_event_parameters
      
        # 
        # Corresponds to the JSON property `appInstanceId`
        # @return [String]
        attr_accessor :app_instance_id
      
        # 
        # Corresponds to the JSON property `cartData`
        # @return [Google::Apis::DatamanagerV1::CartData]
        attr_accessor :cart_data
      
        # 
        # Corresponds to the JSON property `clientId`
        # @return [String]
        attr_accessor :client_id
      
        # 
        # Corresponds to the JSON property `consent`
        # @return [Google::Apis::DatamanagerV1::Consent]
        attr_accessor :consent
      
        # 
        # Corresponds to the JSON property `conversionCount`
        # @return [Float]
        attr_accessor :conversion_count
      
        # 
        # Corresponds to the JSON property `conversionValue`
        # @return [Float]
        attr_accessor :conversion_value
      
        # 
        # Corresponds to the JSON property `currency`
        # @return [String]
        attr_accessor :currency
      
        # 
        # Corresponds to the JSON property `customVariables`
        # @return [Array<Google::Apis::DatamanagerV1::CustomVariable>]
        attr_accessor :custom_variables
      
        # 
        # Corresponds to the JSON property `destinationReferences`
        # @return [Array<String>]
        attr_accessor :destination_references
      
        # 
        # Corresponds to the JSON property `eventDeviceInfo`
        # @return [Google::Apis::DatamanagerV1::DeviceInfo]
        attr_accessor :event_device_info
      
        # 
        # Corresponds to the JSON property `eventLocation`
        # @return [Google::Apis::DatamanagerV1::EventLocation]
        attr_accessor :event_location
      
        # 
        # Corresponds to the JSON property `eventName`
        # @return [String]
        attr_accessor :event_name
      
        # 
        # Corresponds to the JSON property `eventSource`
        # @return [String]
        attr_accessor :event_source
      
        # 
        # Corresponds to the JSON property `eventTimestamp`
        # @return [String]
        attr_accessor :event_timestamp
      
        # 
        # Corresponds to the JSON property `experimentalFields`
        # @return [Array<Google::Apis::DatamanagerV1::ExperimentalField>]
        attr_accessor :experimental_fields
      
        # 
        # Corresponds to the JSON property `lastUpdatedTimestamp`
        # @return [String]
        attr_accessor :last_updated_timestamp
      
        # 
        # Corresponds to the JSON property `thirdPartyUserData`
        # @return [Google::Apis::DatamanagerV1::UserData]
        attr_accessor :third_party_user_data
      
        # 
        # Corresponds to the JSON property `transactionId`
        # @return [String]
        attr_accessor :transaction_id
      
        # 
        # Corresponds to the JSON property `userData`
        # @return [Google::Apis::DatamanagerV1::UserData]
        attr_accessor :user_data
      
        # 
        # Corresponds to the JSON property `userId`
        # @return [String]
        attr_accessor :user_id
      
        # 
        # Corresponds to the JSON property `userProperties`
        # @return [Google::Apis::DatamanagerV1::UserProperties]
        attr_accessor :user_properties
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @ad_identifiers = args[:ad_identifiers] if args.key?(:ad_identifiers)
          @additional_event_parameters = args[:additional_event_parameters] if args.key?(:additional_event_parameters)
          @app_instance_id = args[:app_instance_id] if args.key?(:app_instance_id)
          @cart_data = args[:cart_data] if args.key?(:cart_data)
          @client_id = args[:client_id] if args.key?(:client_id)
          @consent = args[:consent] if args.key?(:consent)
          @conversion_count = args[:conversion_count] if args.key?(:conversion_count)
          @conversion_value = args[:conversion_value] if args.key?(:conversion_value)
          @currency = args[:currency] if args.key?(:currency)
          @custom_variables = args[:custom_variables] if args.key?(:custom_variables)
          @destination_references = args[:destination_references] if args.key?(:destination_references)
          @event_device_info = args[:event_device_info] if args.key?(:event_device_info)
          @event_location = args[:event_location] if args.key?(:event_location)
          @event_name = args[:event_name] if args.key?(:event_name)
          @event_source = args[:event_source] if args.key?(:event_source)
          @event_timestamp = args[:event_timestamp] if args.key?(:event_timestamp)
          @experimental_fields = args[:experimental_fields] if args.key?(:experimental_fields)
          @last_updated_timestamp = args[:last_updated_timestamp] if args.key?(:last_updated_timestamp)
          @third_party_user_data = args[:third_party_user_data] if args.key?(:third_party_user_data)
          @transaction_id = args[:transaction_id] if args.key?(:transaction_id)
          @user_data = args[:user_data] if args.key?(:user_data)
          @user_id = args[:user_id] if args.key?(:user_id)
          @user_properties = args[:user_properties] if args.key?(:user_properties)
        end
      end
      
      # 
      class EventLocation
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `city`
        # @return [String]
        attr_accessor :city
      
        # 
        # Corresponds to the JSON property `continentCode`
        # @return [String]
        attr_accessor :continent_code
      
        # 
        # Corresponds to the JSON property `regionCode`
        # @return [String]
        attr_accessor :region_code
      
        # 
        # Corresponds to the JSON property `storeId`
        # @return [String]
        attr_accessor :store_id
      
        # 
        # Corresponds to the JSON property `subcontinentCode`
        # @return [String]
        attr_accessor :subcontinent_code
      
        # 
        # Corresponds to the JSON property `subdivisionCode`
        # @return [String]
        attr_accessor :subdivision_code
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @city = args[:city] if args.key?(:city)
          @continent_code = args[:continent_code] if args.key?(:continent_code)
          @region_code = args[:region_code] if args.key?(:region_code)
          @store_id = args[:store_id] if args.key?(:store_id)
          @subcontinent_code = args[:subcontinent_code] if args.key?(:subcontinent_code)
          @subdivision_code = args[:subdivision_code] if args.key?(:subdivision_code)
        end
      end
      
      # 
      class EventParameter
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `parameterName`
        # @return [String]
        attr_accessor :parameter_name
      
        # 
        # Corresponds to the JSON property `value`
        # @return [String]
        attr_accessor :value
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @parameter_name = args[:parameter_name] if args.key?(:parameter_name)
          @value = args[:value] if args.key?(:value)
        end
      end
      
      # 
      class ExperimentalField
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `field`
        # @return [String]
        attr_accessor :field
      
        # 
        # Corresponds to the JSON property `value`
        # @return [String]
        attr_accessor :value
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @field = args[:field] if args.key?(:field)
          @value = args[:value] if args.key?(:value)
        end
      end
      
      # 
      class FieldWarning
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # 
        # Corresponds to the JSON property `field`
        # @return [String]
        attr_accessor :field
      
        # 
        # Corresponds to the JSON property `reason`
        # @return [String]
        attr_accessor :reason
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @description = args[:description] if args.key?(:description)
          @field = args[:field] if args.key?(:field)
          @reason = args[:reason] if args.key?(:reason)
        end
      end
      
      # 
      class GcpWrappedKeyInfo
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `encryptedDek`
        # @return [String]
        attr_accessor :encrypted_dek
      
        # 
        # Corresponds to the JSON property `kekUri`
        # @return [String]
        attr_accessor :kek_uri
      
        # 
        # Corresponds to the JSON property `keyType`
        # @return [String]
        attr_accessor :key_type
      
        # 
        # Corresponds to the JSON property `wipProvider`
        # @return [String]
        attr_accessor :wip_provider
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @encrypted_dek = args[:encrypted_dek] if args.key?(:encrypted_dek)
          @kek_uri = args[:kek_uri] if args.key?(:kek_uri)
          @key_type = args[:key_type] if args.key?(:key_type)
          @wip_provider = args[:wip_provider] if args.key?(:wip_provider)
        end
      end
      
      # 
      class GoogleUserIdData
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `googleUserIds`
        # @return [Array<String>]
        attr_accessor :google_user_ids
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @google_user_ids = args[:google_user_ids] if args.key?(:google_user_ids)
        end
      end
      
      # 
      class IngestAdEventsRequest
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `adEvents`
        # @return [Array<Google::Apis::DatamanagerV1::AdEvent>]
        attr_accessor :ad_events
      
        # 
        # Corresponds to the JSON property `encryptionInfo`
        # @return [Google::Apis::DatamanagerV1::EncryptionInfo]
        attr_accessor :encryption_info
      
        # 
        # Corresponds to the JSON property `validateOnly`
        # @return [Boolean]
        attr_accessor :validate_only
        alias_method :validate_only?, :validate_only
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @ad_events = args[:ad_events] if args.key?(:ad_events)
          @encryption_info = args[:encryption_info] if args.key?(:encryption_info)
          @validate_only = args[:validate_only] if args.key?(:validate_only)
        end
      end
      
      # 
      class IngestAdEventsResponse
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # 
      class IngestAudienceMembersRequest
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `audienceMembers`
        # @return [Array<Google::Apis::DatamanagerV1::AudienceMember>]
        attr_accessor :audience_members
      
        # 
        # Corresponds to the JSON property `consent`
        # @return [Google::Apis::DatamanagerV1::Consent]
        attr_accessor :consent
      
        # 
        # Corresponds to the JSON property `destinations`
        # @return [Array<Google::Apis::DatamanagerV1::Destination>]
        attr_accessor :destinations
      
        # 
        # Corresponds to the JSON property `encoding`
        # @return [String]
        attr_accessor :encoding
      
        # 
        # Corresponds to the JSON property `encryptionInfo`
        # @return [Google::Apis::DatamanagerV1::EncryptionInfo]
        attr_accessor :encryption_info
      
        # 
        # Corresponds to the JSON property `termsOfService`
        # @return [Google::Apis::DatamanagerV1::TermsOfService]
        attr_accessor :terms_of_service
      
        # 
        # Corresponds to the JSON property `validateOnly`
        # @return [Boolean]
        attr_accessor :validate_only
        alias_method :validate_only?, :validate_only
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @audience_members = args[:audience_members] if args.key?(:audience_members)
          @consent = args[:consent] if args.key?(:consent)
          @destinations = args[:destinations] if args.key?(:destinations)
          @encoding = args[:encoding] if args.key?(:encoding)
          @encryption_info = args[:encryption_info] if args.key?(:encryption_info)
          @terms_of_service = args[:terms_of_service] if args.key?(:terms_of_service)
          @validate_only = args[:validate_only] if args.key?(:validate_only)
        end
      end
      
      # 
      class IngestAudienceMembersResponse
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `fieldWarnings`
        # @return [Array<Google::Apis::DatamanagerV1::FieldWarning>]
        attr_accessor :field_warnings
      
        # 
        # Corresponds to the JSON property `requestId`
        # @return [String]
        attr_accessor :request_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @field_warnings = args[:field_warnings] if args.key?(:field_warnings)
          @request_id = args[:request_id] if args.key?(:request_id)
        end
      end
      
      # 
      class IngestAudienceMembersStatus
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `compositeDataIngestionStatus`
        # @return [Google::Apis::DatamanagerV1::IngestCompositeDataStatus]
        attr_accessor :composite_data_ingestion_status
      
        # 
        # Corresponds to the JSON property `googleUserIdDataIngestionStatus`
        # @return [Google::Apis::DatamanagerV1::IngestGoogleUserIdDataStatus]
        attr_accessor :google_user_id_data_ingestion_status
      
        # 
        # Corresponds to the JSON property `mobileDataIngestionStatus`
        # @return [Google::Apis::DatamanagerV1::IngestMobileDataStatus]
        attr_accessor :mobile_data_ingestion_status
      
        # 
        # Corresponds to the JSON property `pairDataIngestionStatus`
        # @return [Google::Apis::DatamanagerV1::IngestPairDataStatus]
        attr_accessor :pair_data_ingestion_status
      
        # 
        # Corresponds to the JSON property `partnerProvidedIdDataIngestionStatus`
        # @return [Google::Apis::DatamanagerV1::IngestPartnerProvidedIdDataStatus]
        attr_accessor :partner_provided_id_data_ingestion_status
      
        # 
        # Corresponds to the JSON property `ppidDataIngestionStatus`
        # @return [Google::Apis::DatamanagerV1::IngestPpidDataStatus]
        attr_accessor :ppid_data_ingestion_status
      
        # 
        # Corresponds to the JSON property `userDataIngestionStatus`
        # @return [Google::Apis::DatamanagerV1::IngestUserDataStatus]
        attr_accessor :user_data_ingestion_status
      
        # 
        # Corresponds to the JSON property `userIdDataIngestionStatus`
        # @return [Google::Apis::DatamanagerV1::IngestUserIdDataStatus]
        attr_accessor :user_id_data_ingestion_status
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @composite_data_ingestion_status = args[:composite_data_ingestion_status] if args.key?(:composite_data_ingestion_status)
          @google_user_id_data_ingestion_status = args[:google_user_id_data_ingestion_status] if args.key?(:google_user_id_data_ingestion_status)
          @mobile_data_ingestion_status = args[:mobile_data_ingestion_status] if args.key?(:mobile_data_ingestion_status)
          @pair_data_ingestion_status = args[:pair_data_ingestion_status] if args.key?(:pair_data_ingestion_status)
          @partner_provided_id_data_ingestion_status = args[:partner_provided_id_data_ingestion_status] if args.key?(:partner_provided_id_data_ingestion_status)
          @ppid_data_ingestion_status = args[:ppid_data_ingestion_status] if args.key?(:ppid_data_ingestion_status)
          @user_data_ingestion_status = args[:user_data_ingestion_status] if args.key?(:user_data_ingestion_status)
          @user_id_data_ingestion_status = args[:user_id_data_ingestion_status] if args.key?(:user_id_data_ingestion_status)
        end
      end
      
      # 
      class IngestCompositeDataStatus
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `dataTypeCounts`
        # @return [Array<Google::Apis::DatamanagerV1::DataTypeCount>]
        attr_accessor :data_type_counts
      
        # 
        # Corresponds to the JSON property `recordCount`
        # @return [Fixnum]
        attr_accessor :record_count
      
        # 
        # Corresponds to the JSON property `uploadMatchRateRange`
        # @return [String]
        attr_accessor :upload_match_rate_range
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @data_type_counts = args[:data_type_counts] if args.key?(:data_type_counts)
          @record_count = args[:record_count] if args.key?(:record_count)
          @upload_match_rate_range = args[:upload_match_rate_range] if args.key?(:upload_match_rate_range)
        end
      end
      
      # 
      class IngestEventsRequest
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `consent`
        # @return [Google::Apis::DatamanagerV1::Consent]
        attr_accessor :consent
      
        # 
        # Corresponds to the JSON property `destinations`
        # @return [Array<Google::Apis::DatamanagerV1::Destination>]
        attr_accessor :destinations
      
        # 
        # Corresponds to the JSON property `encoding`
        # @return [String]
        attr_accessor :encoding
      
        # 
        # Corresponds to the JSON property `encryptionInfo`
        # @return [Google::Apis::DatamanagerV1::EncryptionInfo]
        attr_accessor :encryption_info
      
        # 
        # Corresponds to the JSON property `events`
        # @return [Array<Google::Apis::DatamanagerV1::Event>]
        attr_accessor :events
      
        # 
        # Corresponds to the JSON property `validateOnly`
        # @return [Boolean]
        attr_accessor :validate_only
        alias_method :validate_only?, :validate_only
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @consent = args[:consent] if args.key?(:consent)
          @destinations = args[:destinations] if args.key?(:destinations)
          @encoding = args[:encoding] if args.key?(:encoding)
          @encryption_info = args[:encryption_info] if args.key?(:encryption_info)
          @events = args[:events] if args.key?(:events)
          @validate_only = args[:validate_only] if args.key?(:validate_only)
        end
      end
      
      # 
      class IngestEventsResponse
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `fieldWarnings`
        # @return [Array<Google::Apis::DatamanagerV1::FieldWarning>]
        attr_accessor :field_warnings
      
        # 
        # Corresponds to the JSON property `requestId`
        # @return [String]
        attr_accessor :request_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @field_warnings = args[:field_warnings] if args.key?(:field_warnings)
          @request_id = args[:request_id] if args.key?(:request_id)
        end
      end
      
      # 
      class IngestEventsStatus
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `recordCount`
        # @return [Fixnum]
        attr_accessor :record_count
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @record_count = args[:record_count] if args.key?(:record_count)
        end
      end
      
      # 
      class IngestGoogleUserIdDataStatus
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `googleUserIdCount`
        # @return [Fixnum]
        attr_accessor :google_user_id_count
      
        # 
        # Corresponds to the JSON property `recordCount`
        # @return [Fixnum]
        attr_accessor :record_count
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @google_user_id_count = args[:google_user_id_count] if args.key?(:google_user_id_count)
          @record_count = args[:record_count] if args.key?(:record_count)
        end
      end
      
      # 
      class IngestMobileDataStatus
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `mobileIdCount`
        # @return [Fixnum]
        attr_accessor :mobile_id_count
      
        # 
        # Corresponds to the JSON property `recordCount`
        # @return [Fixnum]
        attr_accessor :record_count
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @mobile_id_count = args[:mobile_id_count] if args.key?(:mobile_id_count)
          @record_count = args[:record_count] if args.key?(:record_count)
        end
      end
      
      # 
      class IngestPairDataStatus
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `pairIdCount`
        # @return [Fixnum]
        attr_accessor :pair_id_count
      
        # 
        # Corresponds to the JSON property `recordCount`
        # @return [Fixnum]
        attr_accessor :record_count
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @pair_id_count = args[:pair_id_count] if args.key?(:pair_id_count)
          @record_count = args[:record_count] if args.key?(:record_count)
        end
      end
      
      # 
      class IngestPartnerProvidedIdDataStatus
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `partnerProvidedIdCount`
        # @return [Fixnum]
        attr_accessor :partner_provided_id_count
      
        # 
        # Corresponds to the JSON property `recordCount`
        # @return [Fixnum]
        attr_accessor :record_count
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @partner_provided_id_count = args[:partner_provided_id_count] if args.key?(:partner_provided_id_count)
          @record_count = args[:record_count] if args.key?(:record_count)
        end
      end
      
      # 
      class IngestPpidDataStatus
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `ppidCount`
        # @return [Fixnum]
        attr_accessor :ppid_count
      
        # 
        # Corresponds to the JSON property `recordCount`
        # @return [Fixnum]
        attr_accessor :record_count
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @ppid_count = args[:ppid_count] if args.key?(:ppid_count)
          @record_count = args[:record_count] if args.key?(:record_count)
        end
      end
      
      # 
      class IngestUserDataStatus
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `recordCount`
        # @return [Fixnum]
        attr_accessor :record_count
      
        # 
        # Corresponds to the JSON property `uploadMatchRateRange`
        # @return [String]
        attr_accessor :upload_match_rate_range
      
        # 
        # Corresponds to the JSON property `userIdentifierCount`
        # @return [Fixnum]
        attr_accessor :user_identifier_count
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @record_count = args[:record_count] if args.key?(:record_count)
          @upload_match_rate_range = args[:upload_match_rate_range] if args.key?(:upload_match_rate_range)
          @user_identifier_count = args[:user_identifier_count] if args.key?(:user_identifier_count)
        end
      end
      
      # 
      class IngestUserIdDataStatus
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `recordCount`
        # @return [Fixnum]
        attr_accessor :record_count
      
        # 
        # Corresponds to the JSON property `userIdCount`
        # @return [Fixnum]
        attr_accessor :user_id_count
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @record_count = args[:record_count] if args.key?(:record_count)
          @user_id_count = args[:user_id_count] if args.key?(:user_id_count)
        end
      end
      
      # 
      class IngestedUserListInfo
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `contactIdInfo`
        # @return [Google::Apis::DatamanagerV1::ContactIdInfo]
        attr_accessor :contact_id_info
      
        # 
        # Corresponds to the JSON property `mobileIdInfo`
        # @return [Google::Apis::DatamanagerV1::MobileIdInfo]
        attr_accessor :mobile_id_info
      
        # 
        # Corresponds to the JSON property `pairIdInfo`
        # @return [Google::Apis::DatamanagerV1::PairIdInfo]
        attr_accessor :pair_id_info
      
        # 
        # Corresponds to the JSON property `partnerAudienceInfo`
        # @return [Google::Apis::DatamanagerV1::PartnerAudienceInfo]
        attr_accessor :partner_audience_info
      
        # 
        # Corresponds to the JSON property `pseudonymousIdInfo`
        # @return [Google::Apis::DatamanagerV1::PseudonymousIdInfo]
        attr_accessor :pseudonymous_id_info
      
        # 
        # Corresponds to the JSON property `uploadKeyTypes`
        # @return [Array<String>]
        attr_accessor :upload_key_types
      
        # 
        # Corresponds to the JSON property `userIdInfo`
        # @return [Google::Apis::DatamanagerV1::UserIdInfo]
        attr_accessor :user_id_info
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @contact_id_info = args[:contact_id_info] if args.key?(:contact_id_info)
          @mobile_id_info = args[:mobile_id_info] if args.key?(:mobile_id_info)
          @pair_id_info = args[:pair_id_info] if args.key?(:pair_id_info)
          @partner_audience_info = args[:partner_audience_info] if args.key?(:partner_audience_info)
          @pseudonymous_id_info = args[:pseudonymous_id_info] if args.key?(:pseudonymous_id_info)
          @upload_key_types = args[:upload_key_types] if args.key?(:upload_key_types)
          @user_id_info = args[:user_id_info] if args.key?(:user_id_info)
        end
      end
      
      # 
      class IpData
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `ipAddress`
        # @return [String]
        attr_accessor :ip_address
      
        # 
        # Corresponds to the JSON property `observeEndTime`
        # @return [String]
        attr_accessor :observe_end_time
      
        # 
        # Corresponds to the JSON property `observeStartTime`
        # @return [String]
        attr_accessor :observe_start_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @ip_address = args[:ip_address] if args.key?(:ip_address)
          @observe_end_time = args[:observe_end_time] if args.key?(:observe_end_time)
          @observe_start_time = args[:observe_start_time] if args.key?(:observe_start_time)
        end
      end
      
      # 
      class Item
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `additionalItemParameters`
        # @return [Array<Google::Apis::DatamanagerV1::ItemParameter>]
        attr_accessor :additional_item_parameters
      
        # 
        # Corresponds to the JSON property `conversionValue`
        # @return [Float]
        attr_accessor :conversion_value
      
        # 
        # Corresponds to the JSON property `customVariables`
        # @return [Array<Google::Apis::DatamanagerV1::ItemCustomVariable>]
        attr_accessor :custom_variables
      
        # 
        # Corresponds to the JSON property `itemId`
        # @return [String]
        attr_accessor :item_id
      
        # 
        # Corresponds to the JSON property `merchantFeedLabel`
        # @return [String]
        attr_accessor :merchant_feed_label
      
        # 
        # Corresponds to the JSON property `merchantFeedLanguageCode`
        # @return [String]
        attr_accessor :merchant_feed_language_code
      
        # 
        # Corresponds to the JSON property `merchantId`
        # @return [String]
        attr_accessor :merchant_id
      
        # 
        # Corresponds to the JSON property `merchantProductId`
        # @return [String]
        attr_accessor :merchant_product_id
      
        # 
        # Corresponds to the JSON property `quantity`
        # @return [Fixnum]
        attr_accessor :quantity
      
        # 
        # Corresponds to the JSON property `unitPrice`
        # @return [Float]
        attr_accessor :unit_price
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @additional_item_parameters = args[:additional_item_parameters] if args.key?(:additional_item_parameters)
          @conversion_value = args[:conversion_value] if args.key?(:conversion_value)
          @custom_variables = args[:custom_variables] if args.key?(:custom_variables)
          @item_id = args[:item_id] if args.key?(:item_id)
          @merchant_feed_label = args[:merchant_feed_label] if args.key?(:merchant_feed_label)
          @merchant_feed_language_code = args[:merchant_feed_language_code] if args.key?(:merchant_feed_language_code)
          @merchant_id = args[:merchant_id] if args.key?(:merchant_id)
          @merchant_product_id = args[:merchant_product_id] if args.key?(:merchant_product_id)
          @quantity = args[:quantity] if args.key?(:quantity)
          @unit_price = args[:unit_price] if args.key?(:unit_price)
        end
      end
      
      # 
      class ItemCustomVariable
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `destinationReferences`
        # @return [Array<String>]
        attr_accessor :destination_references
      
        # 
        # Corresponds to the JSON property `value`
        # @return [String]
        attr_accessor :value
      
        # 
        # Corresponds to the JSON property `variable`
        # @return [String]
        attr_accessor :variable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @destination_references = args[:destination_references] if args.key?(:destination_references)
          @value = args[:value] if args.key?(:value)
          @variable = args[:variable] if args.key?(:variable)
        end
      end
      
      # 
      class ItemParameter
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `parameterName`
        # @return [String]
        attr_accessor :parameter_name
      
        # 
        # Corresponds to the JSON property `value`
        # @return [String]
        attr_accessor :value
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @parameter_name = args[:parameter_name] if args.key?(:parameter_name)
          @value = args[:value] if args.key?(:value)
        end
      end
      
      # 
      class ListUserListDirectLicensesResponse
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # 
        # Corresponds to the JSON property `userListDirectLicenses`
        # @return [Array<Google::Apis::DatamanagerV1::UserListDirectLicense>]
        attr_accessor :user_list_direct_licenses
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @user_list_direct_licenses = args[:user_list_direct_licenses] if args.key?(:user_list_direct_licenses)
        end
      end
      
      # 
      class ListUserListGlobalLicenseCustomerInfosResponse
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # 
        # Corresponds to the JSON property `userListGlobalLicenseCustomerInfos`
        # @return [Array<Google::Apis::DatamanagerV1::UserListGlobalLicenseCustomerInfo>]
        attr_accessor :user_list_global_license_customer_infos
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @user_list_global_license_customer_infos = args[:user_list_global_license_customer_infos] if args.key?(:user_list_global_license_customer_infos)
        end
      end
      
      # 
      class ListUserListGlobalLicensesResponse
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # 
        # Corresponds to the JSON property `userListGlobalLicenses`
        # @return [Array<Google::Apis::DatamanagerV1::UserListGlobalLicense>]
        attr_accessor :user_list_global_licenses
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @user_list_global_licenses = args[:user_list_global_licenses] if args.key?(:user_list_global_licenses)
        end
      end
      
      # 
      class ListUserListsResponse
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # 
        # Corresponds to the JSON property `userLists`
        # @return [Array<Google::Apis::DatamanagerV1::UserList>]
        attr_accessor :user_lists
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @user_lists = args[:user_lists] if args.key?(:user_lists)
        end
      end
      
      # 
      class Location
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `regionCodes`
        # @return [Array<String>]
        attr_accessor :region_codes
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @region_codes = args[:region_codes] if args.key?(:region_codes)
        end
      end
      
      # 
      class MarketingDataInsight
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `attributes`
        # @return [Array<Google::Apis::DatamanagerV1::MarketingDataInsightsAttribute>]
        attr_accessor :attributes
      
        # 
        # Corresponds to the JSON property `dimension`
        # @return [String]
        attr_accessor :dimension
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @attributes = args[:attributes] if args.key?(:attributes)
          @dimension = args[:dimension] if args.key?(:dimension)
        end
      end
      
      # 
      class MarketingDataInsightsAttribute
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `ageRange`
        # @return [String]
        attr_accessor :age_range
      
        # 
        # Corresponds to the JSON property `gender`
        # @return [String]
        attr_accessor :gender
      
        # 
        # Corresponds to the JSON property `lift`
        # @return [Float]
        attr_accessor :lift
      
        # 
        # Corresponds to the JSON property `userInterestId`
        # @return [Fixnum]
        attr_accessor :user_interest_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @age_range = args[:age_range] if args.key?(:age_range)
          @gender = args[:gender] if args.key?(:gender)
          @lift = args[:lift] if args.key?(:lift)
          @user_interest_id = args[:user_interest_id] if args.key?(:user_interest_id)
        end
      end
      
      # 
      class MobileData
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `mobileIds`
        # @return [Array<String>]
        attr_accessor :mobile_ids
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @mobile_ids = args[:mobile_ids] if args.key?(:mobile_ids)
        end
      end
      
      # 
      class MobileIdInfo
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `appId`
        # @return [String]
        attr_accessor :app_id
      
        # 
        # Corresponds to the JSON property `dataSourceType`
        # @return [String]
        attr_accessor :data_source_type
      
        # 
        # Corresponds to the JSON property `keySpace`
        # @return [String]
        attr_accessor :key_space
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @app_id = args[:app_id] if args.key?(:app_id)
          @data_source_type = args[:data_source_type] if args.key?(:data_source_type)
          @key_space = args[:key_space] if args.key?(:key_space)
        end
      end
      
      # 
      class PairData
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `pairIds`
        # @return [Array<String>]
        attr_accessor :pair_ids
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @pair_ids = args[:pair_ids] if args.key?(:pair_ids)
        end
      end
      
      # 
      class PairIdInfo
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `advertiserIdentifierCount`
        # @return [Fixnum]
        attr_accessor :advertiser_identifier_count
      
        # 
        # Corresponds to the JSON property `cleanRoomIdentifier`
        # @return [String]
        attr_accessor :clean_room_identifier
      
        # 
        # Corresponds to the JSON property `matchRatePercentage`
        # @return [Fixnum]
        attr_accessor :match_rate_percentage
      
        # 
        # Corresponds to the JSON property `publisherId`
        # @return [Fixnum]
        attr_accessor :publisher_id
      
        # 
        # Corresponds to the JSON property `publisherName`
        # @return [String]
        attr_accessor :publisher_name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @advertiser_identifier_count = args[:advertiser_identifier_count] if args.key?(:advertiser_identifier_count)
          @clean_room_identifier = args[:clean_room_identifier] if args.key?(:clean_room_identifier)
          @match_rate_percentage = args[:match_rate_percentage] if args.key?(:match_rate_percentage)
          @publisher_id = args[:publisher_id] if args.key?(:publisher_id)
          @publisher_name = args[:publisher_name] if args.key?(:publisher_name)
        end
      end
      
      # 
      class PartnerAudienceInfo
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `commercePartner`
        # @return [String]
        attr_accessor :commerce_partner
      
        # 
        # Corresponds to the JSON property `partnerAudienceSource`
        # @return [String]
        attr_accessor :partner_audience_source
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @commerce_partner = args[:commerce_partner] if args.key?(:commerce_partner)
          @partner_audience_source = args[:partner_audience_source] if args.key?(:partner_audience_source)
        end
      end
      
      # 
      class PartnerCustomerAccount
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `accountId`
        # @return [String]
        attr_accessor :account_id
      
        # 
        # Corresponds to the JSON property `accountName`
        # @return [String]
        attr_accessor :account_name
      
        # 
        # Corresponds to the JSON property `accountType`
        # @return [String]
        attr_accessor :account_type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @account_id = args[:account_id] if args.key?(:account_id)
          @account_name = args[:account_name] if args.key?(:account_name)
          @account_type = args[:account_type] if args.key?(:account_type)
        end
      end
      
      # 
      class PartnerLink
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `featureSet`
        # @return [String]
        attr_accessor :feature_set
      
        # 
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # 
        # Corresponds to the JSON property `owningAccount`
        # @return [Google::Apis::DatamanagerV1::ProductAccount]
        attr_accessor :owning_account
      
        # 
        # Corresponds to the JSON property `partnerAccount`
        # @return [Google::Apis::DatamanagerV1::ProductAccount]
        attr_accessor :partner_account
      
        # 
        # Corresponds to the JSON property `partnerCustomerAccount`
        # @return [Google::Apis::DatamanagerV1::PartnerCustomerAccount]
        attr_accessor :partner_customer_account
      
        # 
        # Corresponds to the JSON property `partnerLinkId`
        # @return [String]
        attr_accessor :partner_link_id
      
        # 
        # Corresponds to the JSON property `partnerLinkMetadata`
        # @return [Google::Apis::DatamanagerV1::PartnerLinkMetadata]
        attr_accessor :partner_link_metadata
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @feature_set = args[:feature_set] if args.key?(:feature_set)
          @name = args[:name] if args.key?(:name)
          @owning_account = args[:owning_account] if args.key?(:owning_account)
          @partner_account = args[:partner_account] if args.key?(:partner_account)
          @partner_customer_account = args[:partner_customer_account] if args.key?(:partner_customer_account)
          @partner_link_id = args[:partner_link_id] if args.key?(:partner_link_id)
          @partner_link_metadata = args[:partner_link_metadata] if args.key?(:partner_link_metadata)
        end
      end
      
      # 
      class PartnerLinkMetadata
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `implicitAccounts`
        # @return [Array<Google::Apis::DatamanagerV1::PartnerCustomerAccount>]
        attr_accessor :implicit_accounts
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @implicit_accounts = args[:implicit_accounts] if args.key?(:implicit_accounts)
        end
      end
      
      # 
      class PartnerProvidedIdData
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `partnerProvidedIds`
        # @return [Array<String>]
        attr_accessor :partner_provided_ids
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @partner_provided_ids = args[:partner_provided_ids] if args.key?(:partner_provided_ids)
        end
      end
      
      # 
      class PpidData
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `ppids`
        # @return [Array<String>]
        attr_accessor :ppids
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @ppids = args[:ppids] if args.key?(:ppids)
        end
      end
      
      # 
      class ProductAccount
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `accountId`
        # @return [String]
        attr_accessor :account_id
      
        # 
        # Corresponds to the JSON property `accountType`
        # @return [String]
        attr_accessor :account_type
      
        # 
        # Corresponds to the JSON property `product`
        # @return [String]
        attr_accessor :product
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @account_id = args[:account_id] if args.key?(:account_id)
          @account_type = args[:account_type] if args.key?(:account_type)
          @product = args[:product] if args.key?(:product)
        end
      end
      
      # 
      class PseudonymousIdInfo
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `billableRecordCount`
        # @return [Fixnum]
        attr_accessor :billable_record_count
      
        # 
        # Corresponds to the JSON property `syncStatus`
        # @return [String]
        attr_accessor :sync_status
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @billable_record_count = args[:billable_record_count] if args.key?(:billable_record_count)
          @sync_status = args[:sync_status] if args.key?(:sync_status)
        end
      end
      
      # 
      class RemoveAllAudienceMembersRequest
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `destinations`
        # @return [Array<Google::Apis::DatamanagerV1::Destination>]
        attr_accessor :destinations
      
        # 
        # Corresponds to the JSON property `removeAsOfTime`
        # @return [String]
        attr_accessor :remove_as_of_time
      
        # 
        # Corresponds to the JSON property `validateOnly`
        # @return [Boolean]
        attr_accessor :validate_only
        alias_method :validate_only?, :validate_only
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @destinations = args[:destinations] if args.key?(:destinations)
          @remove_as_of_time = args[:remove_as_of_time] if args.key?(:remove_as_of_time)
          @validate_only = args[:validate_only] if args.key?(:validate_only)
        end
      end
      
      # 
      class RemoveAllAudienceMembersResponse
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `requestId`
        # @return [String]
        attr_accessor :request_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @request_id = args[:request_id] if args.key?(:request_id)
        end
      end
      
      # 
      class RemoveAllAudienceMembersStatus
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # 
      class RemoveAudienceMembersRequest
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `audienceMembers`
        # @return [Array<Google::Apis::DatamanagerV1::AudienceMember>]
        attr_accessor :audience_members
      
        # 
        # Corresponds to the JSON property `destinations`
        # @return [Array<Google::Apis::DatamanagerV1::Destination>]
        attr_accessor :destinations
      
        # 
        # Corresponds to the JSON property `encoding`
        # @return [String]
        attr_accessor :encoding
      
        # 
        # Corresponds to the JSON property `encryptionInfo`
        # @return [Google::Apis::DatamanagerV1::EncryptionInfo]
        attr_accessor :encryption_info
      
        # 
        # Corresponds to the JSON property `validateOnly`
        # @return [Boolean]
        attr_accessor :validate_only
        alias_method :validate_only?, :validate_only
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @audience_members = args[:audience_members] if args.key?(:audience_members)
          @destinations = args[:destinations] if args.key?(:destinations)
          @encoding = args[:encoding] if args.key?(:encoding)
          @encryption_info = args[:encryption_info] if args.key?(:encryption_info)
          @validate_only = args[:validate_only] if args.key?(:validate_only)
        end
      end
      
      # 
      class RemoveAudienceMembersResponse
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `requestId`
        # @return [String]
        attr_accessor :request_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @request_id = args[:request_id] if args.key?(:request_id)
        end
      end
      
      # 
      class RemoveAudienceMembersStatus
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `compositeDataRemovalStatus`
        # @return [Google::Apis::DatamanagerV1::RemoveCompositeDataStatus]
        attr_accessor :composite_data_removal_status
      
        # 
        # Corresponds to the JSON property `googleUserIdDataRemovalStatus`
        # @return [Google::Apis::DatamanagerV1::RemoveGoogleUserIdDataStatus]
        attr_accessor :google_user_id_data_removal_status
      
        # 
        # Corresponds to the JSON property `mobileDataRemovalStatus`
        # @return [Google::Apis::DatamanagerV1::RemoveMobileDataStatus]
        attr_accessor :mobile_data_removal_status
      
        # 
        # Corresponds to the JSON property `pairDataRemovalStatus`
        # @return [Google::Apis::DatamanagerV1::RemovePairDataStatus]
        attr_accessor :pair_data_removal_status
      
        # 
        # Corresponds to the JSON property `partnerProvidedIdDataRemovalStatus`
        # @return [Google::Apis::DatamanagerV1::RemovePartnerProvidedIdDataStatus]
        attr_accessor :partner_provided_id_data_removal_status
      
        # 
        # Corresponds to the JSON property `ppidDataRemovalStatus`
        # @return [Google::Apis::DatamanagerV1::RemovePpidDataStatus]
        attr_accessor :ppid_data_removal_status
      
        # 
        # Corresponds to the JSON property `userDataRemovalStatus`
        # @return [Google::Apis::DatamanagerV1::RemoveUserDataStatus]
        attr_accessor :user_data_removal_status
      
        # 
        # Corresponds to the JSON property `userIdDataRemovalStatus`
        # @return [Google::Apis::DatamanagerV1::RemoveUserIdDataStatus]
        attr_accessor :user_id_data_removal_status
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @composite_data_removal_status = args[:composite_data_removal_status] if args.key?(:composite_data_removal_status)
          @google_user_id_data_removal_status = args[:google_user_id_data_removal_status] if args.key?(:google_user_id_data_removal_status)
          @mobile_data_removal_status = args[:mobile_data_removal_status] if args.key?(:mobile_data_removal_status)
          @pair_data_removal_status = args[:pair_data_removal_status] if args.key?(:pair_data_removal_status)
          @partner_provided_id_data_removal_status = args[:partner_provided_id_data_removal_status] if args.key?(:partner_provided_id_data_removal_status)
          @ppid_data_removal_status = args[:ppid_data_removal_status] if args.key?(:ppid_data_removal_status)
          @user_data_removal_status = args[:user_data_removal_status] if args.key?(:user_data_removal_status)
          @user_id_data_removal_status = args[:user_id_data_removal_status] if args.key?(:user_id_data_removal_status)
        end
      end
      
      # 
      class RemoveCompositeDataStatus
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `dataTypeCounts`
        # @return [Array<Google::Apis::DatamanagerV1::DataTypeCount>]
        attr_accessor :data_type_counts
      
        # 
        # Corresponds to the JSON property `recordCount`
        # @return [Fixnum]
        attr_accessor :record_count
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @data_type_counts = args[:data_type_counts] if args.key?(:data_type_counts)
          @record_count = args[:record_count] if args.key?(:record_count)
        end
      end
      
      # 
      class RemoveGoogleUserIdDataStatus
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `googleUserIdCount`
        # @return [Fixnum]
        attr_accessor :google_user_id_count
      
        # 
        # Corresponds to the JSON property `recordCount`
        # @return [Fixnum]
        attr_accessor :record_count
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @google_user_id_count = args[:google_user_id_count] if args.key?(:google_user_id_count)
          @record_count = args[:record_count] if args.key?(:record_count)
        end
      end
      
      # 
      class RemoveMobileDataStatus
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `mobileIdCount`
        # @return [Fixnum]
        attr_accessor :mobile_id_count
      
        # 
        # Corresponds to the JSON property `recordCount`
        # @return [Fixnum]
        attr_accessor :record_count
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @mobile_id_count = args[:mobile_id_count] if args.key?(:mobile_id_count)
          @record_count = args[:record_count] if args.key?(:record_count)
        end
      end
      
      # 
      class RemovePairDataStatus
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `pairIdCount`
        # @return [Fixnum]
        attr_accessor :pair_id_count
      
        # 
        # Corresponds to the JSON property `recordCount`
        # @return [Fixnum]
        attr_accessor :record_count
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @pair_id_count = args[:pair_id_count] if args.key?(:pair_id_count)
          @record_count = args[:record_count] if args.key?(:record_count)
        end
      end
      
      # 
      class RemovePartnerProvidedIdDataStatus
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `partnerProvidedIdCount`
        # @return [Fixnum]
        attr_accessor :partner_provided_id_count
      
        # 
        # Corresponds to the JSON property `recordCount`
        # @return [Fixnum]
        attr_accessor :record_count
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @partner_provided_id_count = args[:partner_provided_id_count] if args.key?(:partner_provided_id_count)
          @record_count = args[:record_count] if args.key?(:record_count)
        end
      end
      
      # 
      class RemovePpidDataStatus
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `ppidCount`
        # @return [Fixnum]
        attr_accessor :ppid_count
      
        # 
        # Corresponds to the JSON property `recordCount`
        # @return [Fixnum]
        attr_accessor :record_count
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @ppid_count = args[:ppid_count] if args.key?(:ppid_count)
          @record_count = args[:record_count] if args.key?(:record_count)
        end
      end
      
      # 
      class RemoveUserDataStatus
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `recordCount`
        # @return [Fixnum]
        attr_accessor :record_count
      
        # 
        # Corresponds to the JSON property `userIdentifierCount`
        # @return [Fixnum]
        attr_accessor :user_identifier_count
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @record_count = args[:record_count] if args.key?(:record_count)
          @user_identifier_count = args[:user_identifier_count] if args.key?(:user_identifier_count)
        end
      end
      
      # 
      class RemoveUserIdDataStatus
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `recordCount`
        # @return [Fixnum]
        attr_accessor :record_count
      
        # 
        # Corresponds to the JSON property `userIdCount`
        # @return [Fixnum]
        attr_accessor :user_id_count
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @record_count = args[:record_count] if args.key?(:record_count)
          @user_id_count = args[:user_id_count] if args.key?(:user_id_count)
        end
      end
      
      # 
      class RequestStatusPerDestination
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `audienceMembersIngestionStatus`
        # @return [Google::Apis::DatamanagerV1::IngestAudienceMembersStatus]
        attr_accessor :audience_members_ingestion_status
      
        # 
        # Corresponds to the JSON property `audienceMembersRemovalStatus`
        # @return [Google::Apis::DatamanagerV1::RemoveAudienceMembersStatus]
        attr_accessor :audience_members_removal_status
      
        # 
        # Corresponds to the JSON property `destination`
        # @return [Google::Apis::DatamanagerV1::Destination]
        attr_accessor :destination
      
        # 
        # Corresponds to the JSON property `errorInfo`
        # @return [Google::Apis::DatamanagerV1::ErrorInfo]
        attr_accessor :error_info
      
        # 
        # Corresponds to the JSON property `eventsIngestionStatus`
        # @return [Google::Apis::DatamanagerV1::IngestEventsStatus]
        attr_accessor :events_ingestion_status
      
        # 
        # Corresponds to the JSON property `removeAllAudienceMembersStatus`
        # @return [Google::Apis::DatamanagerV1::RemoveAllAudienceMembersStatus]
        attr_accessor :remove_all_audience_members_status
      
        # 
        # Corresponds to the JSON property `requestStatus`
        # @return [String]
        attr_accessor :request_status
      
        # 
        # Corresponds to the JSON property `warningInfo`
        # @return [Google::Apis::DatamanagerV1::WarningInfo]
        attr_accessor :warning_info
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @audience_members_ingestion_status = args[:audience_members_ingestion_status] if args.key?(:audience_members_ingestion_status)
          @audience_members_removal_status = args[:audience_members_removal_status] if args.key?(:audience_members_removal_status)
          @destination = args[:destination] if args.key?(:destination)
          @error_info = args[:error_info] if args.key?(:error_info)
          @events_ingestion_status = args[:events_ingestion_status] if args.key?(:events_ingestion_status)
          @remove_all_audience_members_status = args[:remove_all_audience_members_status] if args.key?(:remove_all_audience_members_status)
          @request_status = args[:request_status] if args.key?(:request_status)
          @warning_info = args[:warning_info] if args.key?(:warning_info)
        end
      end
      
      # 
      class RetrieveInsightsRequest
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `baseline`
        # @return [Google::Apis::DatamanagerV1::Baseline]
        attr_accessor :baseline
      
        # 
        # Corresponds to the JSON property `userListId`
        # @return [String]
        attr_accessor :user_list_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @baseline = args[:baseline] if args.key?(:baseline)
          @user_list_id = args[:user_list_id] if args.key?(:user_list_id)
        end
      end
      
      # 
      class RetrieveInsightsResponse
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `marketingDataInsights`
        # @return [Array<Google::Apis::DatamanagerV1::MarketingDataInsight>]
        attr_accessor :marketing_data_insights
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @marketing_data_insights = args[:marketing_data_insights] if args.key?(:marketing_data_insights)
        end
      end
      
      # 
      class RetrieveRequestStatusResponse
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `requestStatusPerDestination`
        # @return [Array<Google::Apis::DatamanagerV1::RequestStatusPerDestination>]
        attr_accessor :request_status_per_destination
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @request_status_per_destination = args[:request_status_per_destination] if args.key?(:request_status_per_destination)
        end
      end
      
      # 
      class SearchPartnerLinksResponse
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # 
        # Corresponds to the JSON property `partnerLinks`
        # @return [Array<Google::Apis::DatamanagerV1::PartnerLink>]
        attr_accessor :partner_links
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @partner_links = args[:partner_links] if args.key?(:partner_links)
        end
      end
      
      # 
      class SizeInfo
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `displayNetworkMembersCount`
        # @return [Fixnum]
        attr_accessor :display_network_members_count
      
        # 
        # Corresponds to the JSON property `gmailMembersCount`
        # @return [Fixnum]
        attr_accessor :gmail_members_count
      
        # 
        # Corresponds to the JSON property `searchNetworkMembersCount`
        # @return [Fixnum]
        attr_accessor :search_network_members_count
      
        # 
        # Corresponds to the JSON property `youtubeMembersCount`
        # @return [Fixnum]
        attr_accessor :youtube_members_count
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @display_network_members_count = args[:display_network_members_count] if args.key?(:display_network_members_count)
          @gmail_members_count = args[:gmail_members_count] if args.key?(:gmail_members_count)
          @search_network_members_count = args[:search_network_members_count] if args.key?(:search_network_members_count)
          @youtube_members_count = args[:youtube_members_count] if args.key?(:youtube_members_count)
        end
      end
      
      # 
      class Status
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `code`
        # @return [Fixnum]
        attr_accessor :code
      
        # 
        # Corresponds to the JSON property `details`
        # @return [Array<Hash<String,Object>>]
        attr_accessor :details
      
        # 
        # Corresponds to the JSON property `message`
        # @return [String]
        attr_accessor :message
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @code = args[:code] if args.key?(:code)
          @details = args[:details] if args.key?(:details)
          @message = args[:message] if args.key?(:message)
        end
      end
      
      # 
      class TargetNetworkInfo
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `eligibleForDisplay`
        # @return [Boolean]
        attr_accessor :eligible_for_display
        alias_method :eligible_for_display?, :eligible_for_display
      
        # 
        # Corresponds to the JSON property `eligibleForSearch`
        # @return [Boolean]
        attr_accessor :eligible_for_search
        alias_method :eligible_for_search?, :eligible_for_search
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @eligible_for_display = args[:eligible_for_display] if args.key?(:eligible_for_display)
          @eligible_for_search = args[:eligible_for_search] if args.key?(:eligible_for_search)
        end
      end
      
      # 
      class TermsOfService
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `customerMatchTermsOfServiceStatus`
        # @return [String]
        attr_accessor :customer_match_terms_of_service_status
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @customer_match_terms_of_service_status = args[:customer_match_terms_of_service_status] if args.key?(:customer_match_terms_of_service_status)
        end
      end
      
      # 
      class UserData
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `userIdentifiers`
        # @return [Array<Google::Apis::DatamanagerV1::UserIdentifier>]
        attr_accessor :user_identifiers
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @user_identifiers = args[:user_identifiers] if args.key?(:user_identifiers)
        end
      end
      
      # 
      class UserIdData
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `userId`
        # @return [String]
        attr_accessor :user_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @user_id = args[:user_id] if args.key?(:user_id)
        end
      end
      
      # 
      class UserIdInfo
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `dataSourceType`
        # @return [String]
        attr_accessor :data_source_type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @data_source_type = args[:data_source_type] if args.key?(:data_source_type)
        end
      end
      
      # 
      class UserIdentifier
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `address`
        # @return [Google::Apis::DatamanagerV1::AddressInfo]
        attr_accessor :address
      
        # 
        # Corresponds to the JSON property `emailAddress`
        # @return [String]
        attr_accessor :email_address
      
        # 
        # Corresponds to the JSON property `phoneNumber`
        # @return [String]
        attr_accessor :phone_number
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @address = args[:address] if args.key?(:address)
          @email_address = args[:email_address] if args.key?(:email_address)
          @phone_number = args[:phone_number] if args.key?(:phone_number)
        end
      end
      
      # 
      class UserList
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `accessReason`
        # @return [String]
        attr_accessor :access_reason
      
        # 
        # Corresponds to the JSON property `accountAccessStatus`
        # @return [String]
        attr_accessor :account_access_status
      
        # 
        # Corresponds to the JSON property `closingReason`
        # @return [String]
        attr_accessor :closing_reason
      
        # 
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # 
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # 
        # Corresponds to the JSON property `id`
        # @return [Fixnum]
        attr_accessor :id
      
        # 
        # Corresponds to the JSON property `ingestedUserListInfo`
        # @return [Google::Apis::DatamanagerV1::IngestedUserListInfo]
        attr_accessor :ingested_user_list_info
      
        # 
        # Corresponds to the JSON property `integrationCode`
        # @return [String]
        attr_accessor :integration_code
      
        # 
        # Corresponds to the JSON property `membershipDuration`
        # @return [String]
        attr_accessor :membership_duration
      
        # 
        # Corresponds to the JSON property `membershipStatus`
        # @return [String]
        attr_accessor :membership_status
      
        # 
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # 
        # Corresponds to the JSON property `readOnly`
        # @return [Boolean]
        attr_accessor :read_only
        alias_method :read_only?, :read_only
      
        # 
        # Corresponds to the JSON property `sizeInfo`
        # @return [Google::Apis::DatamanagerV1::SizeInfo]
        attr_accessor :size_info
      
        # 
        # Corresponds to the JSON property `targetNetworkInfo`
        # @return [Google::Apis::DatamanagerV1::TargetNetworkInfo]
        attr_accessor :target_network_info
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @access_reason = args[:access_reason] if args.key?(:access_reason)
          @account_access_status = args[:account_access_status] if args.key?(:account_access_status)
          @closing_reason = args[:closing_reason] if args.key?(:closing_reason)
          @description = args[:description] if args.key?(:description)
          @display_name = args[:display_name] if args.key?(:display_name)
          @id = args[:id] if args.key?(:id)
          @ingested_user_list_info = args[:ingested_user_list_info] if args.key?(:ingested_user_list_info)
          @integration_code = args[:integration_code] if args.key?(:integration_code)
          @membership_duration = args[:membership_duration] if args.key?(:membership_duration)
          @membership_status = args[:membership_status] if args.key?(:membership_status)
          @name = args[:name] if args.key?(:name)
          @read_only = args[:read_only] if args.key?(:read_only)
          @size_info = args[:size_info] if args.key?(:size_info)
          @target_network_info = args[:target_network_info] if args.key?(:target_network_info)
        end
      end
      
      # 
      class UserListDirectLicense
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `clientAccountDisplayName`
        # @return [String]
        attr_accessor :client_account_display_name
      
        # 
        # Corresponds to the JSON property `clientAccountId`
        # @return [Fixnum]
        attr_accessor :client_account_id
      
        # 
        # Corresponds to the JSON property `clientAccountType`
        # @return [String]
        attr_accessor :client_account_type
      
        # 
        # Corresponds to the JSON property `historicalPricings`
        # @return [Array<Google::Apis::DatamanagerV1::UserListLicensePricing>]
        attr_accessor :historical_pricings
      
        # 
        # Corresponds to the JSON property `metrics`
        # @return [Google::Apis::DatamanagerV1::UserListLicenseMetrics]
        attr_accessor :metrics
      
        # 
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # 
        # Corresponds to the JSON property `pricing`
        # @return [Google::Apis::DatamanagerV1::UserListLicensePricing]
        attr_accessor :pricing
      
        # 
        # Corresponds to the JSON property `status`
        # @return [String]
        attr_accessor :status
      
        # 
        # Corresponds to the JSON property `userListDisplayName`
        # @return [String]
        attr_accessor :user_list_display_name
      
        # 
        # Corresponds to the JSON property `userListId`
        # @return [Fixnum]
        attr_accessor :user_list_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @client_account_display_name = args[:client_account_display_name] if args.key?(:client_account_display_name)
          @client_account_id = args[:client_account_id] if args.key?(:client_account_id)
          @client_account_type = args[:client_account_type] if args.key?(:client_account_type)
          @historical_pricings = args[:historical_pricings] if args.key?(:historical_pricings)
          @metrics = args[:metrics] if args.key?(:metrics)
          @name = args[:name] if args.key?(:name)
          @pricing = args[:pricing] if args.key?(:pricing)
          @status = args[:status] if args.key?(:status)
          @user_list_display_name = args[:user_list_display_name] if args.key?(:user_list_display_name)
          @user_list_id = args[:user_list_id] if args.key?(:user_list_id)
        end
      end
      
      # 
      class UserListGlobalLicense
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `historicalPricings`
        # @return [Array<Google::Apis::DatamanagerV1::UserListLicensePricing>]
        attr_accessor :historical_pricings
      
        # 
        # Corresponds to the JSON property `licenseType`
        # @return [String]
        attr_accessor :license_type
      
        # 
        # Corresponds to the JSON property `metrics`
        # @return [Google::Apis::DatamanagerV1::UserListLicenseMetrics]
        attr_accessor :metrics
      
        # 
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # 
        # Corresponds to the JSON property `pricing`
        # @return [Google::Apis::DatamanagerV1::UserListLicensePricing]
        attr_accessor :pricing
      
        # 
        # Corresponds to the JSON property `status`
        # @return [String]
        attr_accessor :status
      
        # 
        # Corresponds to the JSON property `userListDisplayName`
        # @return [String]
        attr_accessor :user_list_display_name
      
        # 
        # Corresponds to the JSON property `userListId`
        # @return [Fixnum]
        attr_accessor :user_list_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @historical_pricings = args[:historical_pricings] if args.key?(:historical_pricings)
          @license_type = args[:license_type] if args.key?(:license_type)
          @metrics = args[:metrics] if args.key?(:metrics)
          @name = args[:name] if args.key?(:name)
          @pricing = args[:pricing] if args.key?(:pricing)
          @status = args[:status] if args.key?(:status)
          @user_list_display_name = args[:user_list_display_name] if args.key?(:user_list_display_name)
          @user_list_id = args[:user_list_id] if args.key?(:user_list_id)
        end
      end
      
      # 
      class UserListGlobalLicenseCustomerInfo
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `clientAccountDisplayName`
        # @return [String]
        attr_accessor :client_account_display_name
      
        # 
        # Corresponds to the JSON property `clientAccountId`
        # @return [Fixnum]
        attr_accessor :client_account_id
      
        # 
        # Corresponds to the JSON property `clientAccountType`
        # @return [String]
        attr_accessor :client_account_type
      
        # 
        # Corresponds to the JSON property `historicalPricings`
        # @return [Array<Google::Apis::DatamanagerV1::UserListLicensePricing>]
        attr_accessor :historical_pricings
      
        # 
        # Corresponds to the JSON property `licenseType`
        # @return [String]
        attr_accessor :license_type
      
        # 
        # Corresponds to the JSON property `metrics`
        # @return [Google::Apis::DatamanagerV1::UserListLicenseMetrics]
        attr_accessor :metrics
      
        # 
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # 
        # Corresponds to the JSON property `pricing`
        # @return [Google::Apis::DatamanagerV1::UserListLicensePricing]
        attr_accessor :pricing
      
        # 
        # Corresponds to the JSON property `status`
        # @return [String]
        attr_accessor :status
      
        # 
        # Corresponds to the JSON property `userListDisplayName`
        # @return [String]
        attr_accessor :user_list_display_name
      
        # 
        # Corresponds to the JSON property `userListId`
        # @return [Fixnum]
        attr_accessor :user_list_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @client_account_display_name = args[:client_account_display_name] if args.key?(:client_account_display_name)
          @client_account_id = args[:client_account_id] if args.key?(:client_account_id)
          @client_account_type = args[:client_account_type] if args.key?(:client_account_type)
          @historical_pricings = args[:historical_pricings] if args.key?(:historical_pricings)
          @license_type = args[:license_type] if args.key?(:license_type)
          @metrics = args[:metrics] if args.key?(:metrics)
          @name = args[:name] if args.key?(:name)
          @pricing = args[:pricing] if args.key?(:pricing)
          @status = args[:status] if args.key?(:status)
          @user_list_display_name = args[:user_list_display_name] if args.key?(:user_list_display_name)
          @user_list_id = args[:user_list_id] if args.key?(:user_list_id)
        end
      end
      
      # 
      class UserListLicenseMetrics
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `clickCount`
        # @return [Fixnum]
        attr_accessor :click_count
      
        # 
        # Corresponds to the JSON property `endDate`
        # @return [Fixnum]
        attr_accessor :end_date
      
        # 
        # Corresponds to the JSON property `impressionCount`
        # @return [Fixnum]
        attr_accessor :impression_count
      
        # 
        # Corresponds to the JSON property `revenueUsdMicros`
        # @return [Fixnum]
        attr_accessor :revenue_usd_micros
      
        # 
        # Corresponds to the JSON property `startDate`
        # @return [Fixnum]
        attr_accessor :start_date
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @click_count = args[:click_count] if args.key?(:click_count)
          @end_date = args[:end_date] if args.key?(:end_date)
          @impression_count = args[:impression_count] if args.key?(:impression_count)
          @revenue_usd_micros = args[:revenue_usd_micros] if args.key?(:revenue_usd_micros)
          @start_date = args[:start_date] if args.key?(:start_date)
        end
      end
      
      # 
      class UserListLicensePricing
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `buyerApprovalState`
        # @return [String]
        attr_accessor :buyer_approval_state
      
        # 
        # Corresponds to the JSON property `costMicros`
        # @return [Fixnum]
        attr_accessor :cost_micros
      
        # 
        # Corresponds to the JSON property `costType`
        # @return [String]
        attr_accessor :cost_type
      
        # 
        # Corresponds to the JSON property `currencyCode`
        # @return [String]
        attr_accessor :currency_code
      
        # 
        # Corresponds to the JSON property `endTime`
        # @return [String]
        attr_accessor :end_time
      
        # 
        # Corresponds to the JSON property `maxCostMicros`
        # @return [Fixnum]
        attr_accessor :max_cost_micros
      
        # 
        # Corresponds to the JSON property `pricingActive`
        # @return [Boolean]
        attr_accessor :pricing_active
        alias_method :pricing_active?, :pricing_active
      
        # 
        # Corresponds to the JSON property `pricingId`
        # @return [Fixnum]
        attr_accessor :pricing_id
      
        # 
        # Corresponds to the JSON property `startTime`
        # @return [String]
        attr_accessor :start_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @buyer_approval_state = args[:buyer_approval_state] if args.key?(:buyer_approval_state)
          @cost_micros = args[:cost_micros] if args.key?(:cost_micros)
          @cost_type = args[:cost_type] if args.key?(:cost_type)
          @currency_code = args[:currency_code] if args.key?(:currency_code)
          @end_time = args[:end_time] if args.key?(:end_time)
          @max_cost_micros = args[:max_cost_micros] if args.key?(:max_cost_micros)
          @pricing_active = args[:pricing_active] if args.key?(:pricing_active)
          @pricing_id = args[:pricing_id] if args.key?(:pricing_id)
          @start_time = args[:start_time] if args.key?(:start_time)
        end
      end
      
      # 
      class UserProperties
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `additionalUserProperties`
        # @return [Array<Google::Apis::DatamanagerV1::UserProperty>]
        attr_accessor :additional_user_properties
      
        # 
        # Corresponds to the JSON property `customerType`
        # @return [String]
        attr_accessor :customer_type
      
        # 
        # Corresponds to the JSON property `customerValueBucket`
        # @return [String]
        attr_accessor :customer_value_bucket
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @additional_user_properties = args[:additional_user_properties] if args.key?(:additional_user_properties)
          @customer_type = args[:customer_type] if args.key?(:customer_type)
          @customer_value_bucket = args[:customer_value_bucket] if args.key?(:customer_value_bucket)
        end
      end
      
      # 
      class UserProperty
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `propertyName`
        # @return [String]
        attr_accessor :property_name
      
        # 
        # Corresponds to the JSON property `value`
        # @return [String]
        attr_accessor :value
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @property_name = args[:property_name] if args.key?(:property_name)
          @value = args[:value] if args.key?(:value)
        end
      end
      
      # 
      class ViewabilityInfo
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `mediaDuration`
        # @return [String]
        attr_accessor :media_duration
      
        # 
        # Corresponds to the JSON property `mediaQuartile`
        # @return [String]
        attr_accessor :media_quartile
      
        # 
        # Corresponds to the JSON property `mediaSkippable`
        # @return [Boolean]
        attr_accessor :media_skippable
        alias_method :media_skippable?, :media_skippable
      
        # 
        # Corresponds to the JSON property `mediaVolumePercent`
        # @return [Fixnum]
        attr_accessor :media_volume_percent
      
        # 
        # Corresponds to the JSON property `playbackDuration`
        # @return [String]
        attr_accessor :playback_duration
      
        # 
        # Corresponds to the JSON property `viewType`
        # @return [String]
        attr_accessor :view_type
      
        # 
        # Corresponds to the JSON property `viewableDuration`
        # @return [String]
        attr_accessor :viewable_duration
      
        # 
        # Corresponds to the JSON property `viewablePercent`
        # @return [Fixnum]
        attr_accessor :viewable_percent
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @media_duration = args[:media_duration] if args.key?(:media_duration)
          @media_quartile = args[:media_quartile] if args.key?(:media_quartile)
          @media_skippable = args[:media_skippable] if args.key?(:media_skippable)
          @media_volume_percent = args[:media_volume_percent] if args.key?(:media_volume_percent)
          @playback_duration = args[:playback_duration] if args.key?(:playback_duration)
          @view_type = args[:view_type] if args.key?(:view_type)
          @viewable_duration = args[:viewable_duration] if args.key?(:viewable_duration)
          @viewable_percent = args[:viewable_percent] if args.key?(:viewable_percent)
        end
      end
      
      # 
      class WarningCount
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `reason`
        # @return [String]
        attr_accessor :reason
      
        # 
        # Corresponds to the JSON property `recordCount`
        # @return [Fixnum]
        attr_accessor :record_count
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @reason = args[:reason] if args.key?(:reason)
          @record_count = args[:record_count] if args.key?(:record_count)
        end
      end
      
      # 
      class WarningInfo
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `warningCounts`
        # @return [Array<Google::Apis::DatamanagerV1::WarningCount>]
        attr_accessor :warning_counts
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @warning_counts = args[:warning_counts] if args.key?(:warning_counts)
        end
      end
    end
  end
end
