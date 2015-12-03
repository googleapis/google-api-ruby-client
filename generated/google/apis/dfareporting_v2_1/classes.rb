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
    module DfareportingV2_1
      
      # Contains properties of a DCM account.
      class Account
        include Google::Apis::Core::Hashable
      
        # Account permissions assigned to this account.
        # Corresponds to the JSON property `accountPermissionIds`
        # @return [Array<String>]
        attr_accessor :account_permission_ids
      
        # Profile for this account. This is a read-only field that can be left blank.
        # Corresponds to the JSON property `accountProfile`
        # @return [String]
        attr_accessor :account_profile
      
        # Whether this account is active.
        # Corresponds to the JSON property `active`
        # @return [Boolean]
        attr_accessor :active
        alias_method :active?, :active
      
        # Maximum number of active ads allowed for this account.
        # Corresponds to the JSON property `activeAdsLimitTier`
        # @return [String]
        attr_accessor :active_ads_limit_tier
      
        # Whether to serve creatives with Active View tags. If disabled, viewability
        # data will not be available for any impressions.
        # Corresponds to the JSON property `activeViewOptOut`
        # @return [Boolean]
        attr_accessor :active_view_opt_out
        alias_method :active_view_opt_out?, :active_view_opt_out
      
        # User role permissions available to the user roles of this account.
        # Corresponds to the JSON property `availablePermissionIds`
        # @return [Array<String>]
        attr_accessor :available_permission_ids
      
        # Whether campaigns created in this account will be enabled for comScore vCE by
        # default.
        # Corresponds to the JSON property `comscoreVceEnabled`
        # @return [Boolean]
        attr_accessor :comscore_vce_enabled
        alias_method :comscore_vce_enabled?, :comscore_vce_enabled
      
        # ID of the country associated with this account.
        # Corresponds to the JSON property `countryId`
        # @return [String]
        attr_accessor :country_id
      
        # ID of currency associated with this account. This is a required field.
        # Acceptable values are:
        # - "1" for USD
        # - "2" for GBP
        # - "3" for ESP
        # - "4" for SEK
        # - "5" for CAD
        # - "6" for JPY
        # - "7" for DEM
        # - "8" for AUD
        # - "9" for FRF
        # - "10" for ITL
        # - "11" for DKK
        # - "12" for NOK
        # - "13" for FIM
        # - "14" for ZAR
        # - "15" for IEP
        # - "16" for NLG
        # - "17" for EUR
        # - "18" for KRW
        # - "19" for TWD
        # - "20" for SGD
        # - "21" for CNY
        # - "22" for HKD
        # - "23" for NZD
        # - "24" for MYR
        # - "25" for BRL
        # - "26" for PTE
        # - "27" for MXP
        # - "28" for CLP
        # - "29" for TRY
        # - "30" for ARS
        # - "31" for PEN
        # - "32" for ILS
        # - "33" for CHF
        # - "34" for VEF
        # - "35" for COP
        # - "36" for GTQ
        # - "37" for PLN
        # - "39" for INR
        # - "40" for THB
        # Corresponds to the JSON property `currencyId`
        # @return [String]
        attr_accessor :currency_id
      
        # Default placement dimensions for this account.
        # Corresponds to the JSON property `defaultCreativeSizeId`
        # @return [String]
        attr_accessor :default_creative_size_id
      
        # Description of this account.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # ID of this account. This is a read-only, auto-generated field.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # Identifies what kind of resource this is. Value: the fixed string "
        # dfareporting#account".
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # Locale of this account.
        # Acceptable values are:
        # - "cs" (Czech)
        # - "de" (German)
        # - "en" (English)
        # - "en-GB" (English United Kingdom)
        # - "es" (Spanish)
        # - "fr" (French)
        # - "it" (Italian)
        # - "ja" (Japanese)
        # - "ko" (Korean)
        # - "pl" (Polish)
        # - "pt-BR" (Portuguese Brazil)
        # - "ru" (Russian)
        # - "sv" (Swedish)
        # - "tr" (Turkish)
        # - "zh-CN" (Chinese Simplified)
        # - "zh-TW" (Chinese Traditional)
        # Corresponds to the JSON property `locale`
        # @return [String]
        attr_accessor :locale
      
        # Maximum image size allowed for this account.
        # Corresponds to the JSON property `maximumImageSize`
        # @return [String]
        attr_accessor :maximum_image_size
      
        # Name of this account. This is a required field, and must be less than 128
        # characters long and be globally unique.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Whether campaigns created in this account will be enabled for Nielsen OCR
        # reach ratings by default.
        # Corresponds to the JSON property `nielsenOcrEnabled`
        # @return [Boolean]
        attr_accessor :nielsen_ocr_enabled
        alias_method :nielsen_ocr_enabled?, :nielsen_ocr_enabled
      
        # Reporting Configuration
        # Corresponds to the JSON property `reportsConfiguration`
        # @return [Google::Apis::DfareportingV2_1::ReportsConfiguration]
        attr_accessor :reports_configuration
      
        # File size limit in kilobytes of Rich Media teaser creatives. Must be between 1
        # and 10240.
        # Corresponds to the JSON property `teaserSizeLimit`
        # @return [String]
        attr_accessor :teaser_size_limit
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @account_permission_ids = args[:account_permission_ids] unless args[:account_permission_ids].nil?
          @account_profile = args[:account_profile] unless args[:account_profile].nil?
          @active = args[:active] unless args[:active].nil?
          @active_ads_limit_tier = args[:active_ads_limit_tier] unless args[:active_ads_limit_tier].nil?
          @active_view_opt_out = args[:active_view_opt_out] unless args[:active_view_opt_out].nil?
          @available_permission_ids = args[:available_permission_ids] unless args[:available_permission_ids].nil?
          @comscore_vce_enabled = args[:comscore_vce_enabled] unless args[:comscore_vce_enabled].nil?
          @country_id = args[:country_id] unless args[:country_id].nil?
          @currency_id = args[:currency_id] unless args[:currency_id].nil?
          @default_creative_size_id = args[:default_creative_size_id] unless args[:default_creative_size_id].nil?
          @description = args[:description] unless args[:description].nil?
          @id = args[:id] unless args[:id].nil?
          @kind = args[:kind] unless args[:kind].nil?
          @locale = args[:locale] unless args[:locale].nil?
          @maximum_image_size = args[:maximum_image_size] unless args[:maximum_image_size].nil?
          @name = args[:name] unless args[:name].nil?
          @nielsen_ocr_enabled = args[:nielsen_ocr_enabled] unless args[:nielsen_ocr_enabled].nil?
          @reports_configuration = args[:reports_configuration] unless args[:reports_configuration].nil?
          @teaser_size_limit = args[:teaser_size_limit] unless args[:teaser_size_limit].nil?
        end
      end
      
      # Gets a summary of active ads in an account.
      class AccountActiveAdSummary
        include Google::Apis::Core::Hashable
      
        # ID of the account.
        # Corresponds to the JSON property `accountId`
        # @return [String]
        attr_accessor :account_id
      
        # Ads that have been activated for the account
        # Corresponds to the JSON property `activeAds`
        # @return [String]
        attr_accessor :active_ads
      
        # Maximum number of active ads allowed for the account.
        # Corresponds to the JSON property `activeAdsLimitTier`
        # @return [String]
        attr_accessor :active_ads_limit_tier
      
        # Ads that can be activated for the account.
        # Corresponds to the JSON property `availableAds`
        # @return [String]
        attr_accessor :available_ads
      
        # Identifies what kind of resource this is. Value: the fixed string "
        # dfareporting#accountActiveAdSummary".
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @account_id = args[:account_id] unless args[:account_id].nil?
          @active_ads = args[:active_ads] unless args[:active_ads].nil?
          @active_ads_limit_tier = args[:active_ads_limit_tier] unless args[:active_ads_limit_tier].nil?
          @available_ads = args[:available_ads] unless args[:available_ads].nil?
          @kind = args[:kind] unless args[:kind].nil?
        end
      end
      
      # AccountPermissions contains information about a particular account permission.
      # Some features of DCM require an account permission to be present in the
      # account.
      class AccountPermission
        include Google::Apis::Core::Hashable
      
        # Account profiles associated with this account permission.
        # Possible values are:
        # - "ACCOUNT_PROFILE_BASIC"
        # - "ACCOUNT_PROFILE_STANDARD"
        # Corresponds to the JSON property `accountProfiles`
        # @return [Array<String>]
        attr_accessor :account_profiles
      
        # ID of this account permission.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # Identifies what kind of resource this is. Value: the fixed string "
        # dfareporting#accountPermission".
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # Administrative level required to enable this account permission.
        # Corresponds to the JSON property `level`
        # @return [String]
        attr_accessor :level
      
        # Name of this account permission.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Permission group of this account permission.
        # Corresponds to the JSON property `permissionGroupId`
        # @return [String]
        attr_accessor :permission_group_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @account_profiles = args[:account_profiles] unless args[:account_profiles].nil?
          @id = args[:id] unless args[:id].nil?
          @kind = args[:kind] unless args[:kind].nil?
          @level = args[:level] unless args[:level].nil?
          @name = args[:name] unless args[:name].nil?
          @permission_group_id = args[:permission_group_id] unless args[:permission_group_id].nil?
        end
      end
      
      # AccountPermissionGroups contains a mapping of permission group IDs to names. A
      # permission group is a grouping of account permissions.
      class AccountPermissionGroup
        include Google::Apis::Core::Hashable
      
        # ID of this account permission group.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # Identifies what kind of resource this is. Value: the fixed string "
        # dfareporting#accountPermissionGroup".
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # Name of this account permission group.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @id = args[:id] unless args[:id].nil?
          @kind = args[:kind] unless args[:kind].nil?
          @name = args[:name] unless args[:name].nil?
        end
      end
      
      # Account Permission Group List Response
      class ListAccountPermissionGroupsResponse
        include Google::Apis::Core::Hashable
      
        # Account permission group collection.
        # Corresponds to the JSON property `accountPermissionGroups`
        # @return [Array<Google::Apis::DfareportingV2_1::AccountPermissionGroup>]
        attr_accessor :account_permission_groups
      
        # Identifies what kind of resource this is. Value: the fixed string "
        # dfareporting#accountPermissionGroupsListResponse".
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @account_permission_groups = args[:account_permission_groups] unless args[:account_permission_groups].nil?
          @kind = args[:kind] unless args[:kind].nil?
        end
      end
      
      # Account Permission List Response
      class ListAccountPermissionsResponse
        include Google::Apis::Core::Hashable
      
        # Account permission collection.
        # Corresponds to the JSON property `accountPermissions`
        # @return [Array<Google::Apis::DfareportingV2_1::AccountPermission>]
        attr_accessor :account_permissions
      
        # Identifies what kind of resource this is. Value: the fixed string "
        # dfareporting#accountPermissionsListResponse".
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @account_permissions = args[:account_permissions] unless args[:account_permissions].nil?
          @kind = args[:kind] unless args[:kind].nil?
        end
      end
      
      # AccountUserProfiles contains properties of a DCM user profile. This resource
      # is specifically for managing user profiles, whereas UserProfiles is for
      # accessing the API.
      class AccountUserProfile
        include Google::Apis::Core::Hashable
      
        # Account ID of the user profile. This is a read-only field that can be left
        # blank.
        # Corresponds to the JSON property `accountId`
        # @return [String]
        attr_accessor :account_id
      
        # Whether this user profile is active. This defaults to false, and must be set
        # true on insert for the user profile to be usable.
        # Corresponds to the JSON property `active`
        # @return [Boolean]
        attr_accessor :active
        alias_method :active?, :active
      
        # Object Filter.
        # Corresponds to the JSON property `advertiserFilter`
        # @return [Google::Apis::DfareportingV2_1::ObjectFilter]
        attr_accessor :advertiser_filter
      
        # Object Filter.
        # Corresponds to the JSON property `campaignFilter`
        # @return [Google::Apis::DfareportingV2_1::ObjectFilter]
        attr_accessor :campaign_filter
      
        # Comments for this user profile.
        # Corresponds to the JSON property `comments`
        # @return [String]
        attr_accessor :comments
      
        # Email of the user profile. The email addresss must be linked to a Google
        # Account. This field is required on insertion and is read-only after insertion.
        # Corresponds to the JSON property `email`
        # @return [String]
        attr_accessor :email
      
        # ID of the user profile. This is a read-only, auto-generated field.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # Identifies what kind of resource this is. Value: the fixed string "
        # dfareporting#accountUserProfile".
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # Locale of the user profile. This is a required field.
        # Acceptable values are:
        # - "cs" (Czech)
        # - "de" (German)
        # - "en" (English)
        # - "en-GB" (English United Kingdom)
        # - "es" (Spanish)
        # - "fr" (French)
        # - "it" (Italian)
        # - "ja" (Japanese)
        # - "ko" (Korean)
        # - "pl" (Polish)
        # - "pt-BR" (Portuguese Brazil)
        # - "ru" (Russian)
        # - "sv" (Swedish)
        # - "tr" (Turkish)
        # - "zh-CN" (Chinese Simplified)
        # - "zh-TW" (Chinese Traditional)
        # Corresponds to the JSON property `locale`
        # @return [String]
        attr_accessor :locale
      
        # Name of the user profile. This is a required field. Must be less than 64
        # characters long, must be globally unique, and cannot contain whitespace or any
        # of the following characters: "&;"#%,".
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Object Filter.
        # Corresponds to the JSON property `siteFilter`
        # @return [Google::Apis::DfareportingV2_1::ObjectFilter]
        attr_accessor :site_filter
      
        # Subaccount ID of the user profile. This is a read-only field that can be left
        # blank.
        # Corresponds to the JSON property `subaccountId`
        # @return [String]
        attr_accessor :subaccount_id
      
        # Trafficker type of this user profile.
        # Corresponds to the JSON property `traffickerType`
        # @return [String]
        attr_accessor :trafficker_type
      
        # User type of the user profile. This is a read-only field that can be left
        # blank.
        # Corresponds to the JSON property `userAccessType`
        # @return [String]
        attr_accessor :user_access_type
      
        # Object Filter.
        # Corresponds to the JSON property `userRoleFilter`
        # @return [Google::Apis::DfareportingV2_1::ObjectFilter]
        attr_accessor :user_role_filter
      
        # User role ID of the user profile. This is a required field.
        # Corresponds to the JSON property `userRoleId`
        # @return [String]
        attr_accessor :user_role_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @account_id = args[:account_id] unless args[:account_id].nil?
          @active = args[:active] unless args[:active].nil?
          @advertiser_filter = args[:advertiser_filter] unless args[:advertiser_filter].nil?
          @campaign_filter = args[:campaign_filter] unless args[:campaign_filter].nil?
          @comments = args[:comments] unless args[:comments].nil?
          @email = args[:email] unless args[:email].nil?
          @id = args[:id] unless args[:id].nil?
          @kind = args[:kind] unless args[:kind].nil?
          @locale = args[:locale] unless args[:locale].nil?
          @name = args[:name] unless args[:name].nil?
          @site_filter = args[:site_filter] unless args[:site_filter].nil?
          @subaccount_id = args[:subaccount_id] unless args[:subaccount_id].nil?
          @trafficker_type = args[:trafficker_type] unless args[:trafficker_type].nil?
          @user_access_type = args[:user_access_type] unless args[:user_access_type].nil?
          @user_role_filter = args[:user_role_filter] unless args[:user_role_filter].nil?
          @user_role_id = args[:user_role_id] unless args[:user_role_id].nil?
        end
      end
      
      # Account User Profile List Response
      class ListAccountUserProfilesResponse
        include Google::Apis::Core::Hashable
      
        # Account user profile collection.
        # Corresponds to the JSON property `accountUserProfiles`
        # @return [Array<Google::Apis::DfareportingV2_1::AccountUserProfile>]
        attr_accessor :account_user_profiles
      
        # Identifies what kind of resource this is. Value: the fixed string "
        # dfareporting#accountUserProfilesListResponse".
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # Pagination token to be used for the next list operation.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @account_user_profiles = args[:account_user_profiles] unless args[:account_user_profiles].nil?
          @kind = args[:kind] unless args[:kind].nil?
          @next_page_token = args[:next_page_token] unless args[:next_page_token].nil?
        end
      end
      
      # Account List Response
      class ListAccountsResponse
        include Google::Apis::Core::Hashable
      
        # Account collection.
        # Corresponds to the JSON property `accounts`
        # @return [Array<Google::Apis::DfareportingV2_1::Account>]
        attr_accessor :accounts
      
        # Identifies what kind of resource this is. Value: the fixed string "
        # dfareporting#accountsListResponse".
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # Pagination token to be used for the next list operation.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @accounts = args[:accounts] unless args[:accounts].nil?
          @kind = args[:kind] unless args[:kind].nil?
          @next_page_token = args[:next_page_token] unless args[:next_page_token].nil?
        end
      end
      
      # Represents an activity group.
      class Activities
        include Google::Apis::Core::Hashable
      
        # List of activity filters. The dimension values need to be all either of type "
        # dfa:activity" or "dfa:activityGroup".
        # Corresponds to the JSON property `filters`
        # @return [Array<Google::Apis::DfareportingV2_1::DimensionValue>]
        attr_accessor :filters
      
        # The kind of resource this is, in this case dfareporting#activities.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # List of names of floodlight activity metrics.
        # Corresponds to the JSON property `metricNames`
        # @return [Array<String>]
        attr_accessor :metric_names
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @filters = args[:filters] unless args[:filters].nil?
          @kind = args[:kind] unless args[:kind].nil?
          @metric_names = args[:metric_names] unless args[:metric_names].nil?
        end
      end
      
      # Contains properties of a DCM ad.
      class Ad
        include Google::Apis::Core::Hashable
      
        # Account ID of this ad. This is a read-only field that can be left blank.
        # Corresponds to the JSON property `accountId`
        # @return [String]
        attr_accessor :account_id
      
        # Whether this ad is active.
        # Corresponds to the JSON property `active`
        # @return [Boolean]
        attr_accessor :active
        alias_method :active?, :active
      
        # Advertiser ID of this ad. This is a required field on insertion.
        # Corresponds to the JSON property `advertiserId`
        # @return [String]
        attr_accessor :advertiser_id
      
        # Represents a DimensionValue resource.
        # Corresponds to the JSON property `advertiserIdDimensionValue`
        # @return [Google::Apis::DfareportingV2_1::DimensionValue]
        attr_accessor :advertiser_id_dimension_value
      
        # Whether this ad is archived.
        # Corresponds to the JSON property `archived`
        # @return [Boolean]
        attr_accessor :archived
        alias_method :archived?, :archived
      
        # Audience segment ID that is being targeted for this ad. Applicable when type
        # is AD_SERVING_STANDARD_AD.
        # Corresponds to the JSON property `audienceSegmentId`
        # @return [String]
        attr_accessor :audience_segment_id
      
        # Campaign ID of this ad. This is a required field on insertion.
        # Corresponds to the JSON property `campaignId`
        # @return [String]
        attr_accessor :campaign_id
      
        # Represents a DimensionValue resource.
        # Corresponds to the JSON property `campaignIdDimensionValue`
        # @return [Google::Apis::DfareportingV2_1::DimensionValue]
        attr_accessor :campaign_id_dimension_value
      
        # Click-through URL
        # Corresponds to the JSON property `clickThroughUrl`
        # @return [Google::Apis::DfareportingV2_1::ClickThroughUrl]
        attr_accessor :click_through_url
      
        # Click Through URL Suffix settings.
        # Corresponds to the JSON property `clickThroughUrlSuffixProperties`
        # @return [Google::Apis::DfareportingV2_1::ClickThroughUrlSuffixProperties]
        attr_accessor :click_through_url_suffix_properties
      
        # Comments for this ad.
        # Corresponds to the JSON property `comments`
        # @return [String]
        attr_accessor :comments
      
        # Compatibility of this ad. Applicable when type is AD_SERVING_DEFAULT_AD. WEB
        # and WEB_INTERSTITIAL refer to rendering either on desktop or on mobile devices
        # for regular or interstitial ads, respectively. APP and APP_INTERSTITIAL are
        # for rendering in mobile apps. IN_STREAM_VIDEO refers to rendering an in-stream
        # video ads developed with the VAST standard.
        # Corresponds to the JSON property `compatibility`
        # @return [String]
        attr_accessor :compatibility
      
        # Modification timestamp.
        # Corresponds to the JSON property `createInfo`
        # @return [Google::Apis::DfareportingV2_1::LastModifiedInfo]
        attr_accessor :create_info
      
        # Creative group assignments for this ad. Applicable when type is
        # AD_SERVING_CLICK_TRACKER. Only one assignment per creative group number is
        # allowed for a maximum of two assignments.
        # Corresponds to the JSON property `creativeGroupAssignments`
        # @return [Array<Google::Apis::DfareportingV2_1::CreativeGroupAssignment>]
        attr_accessor :creative_group_assignments
      
        # Creative Rotation.
        # Corresponds to the JSON property `creativeRotation`
        # @return [Google::Apis::DfareportingV2_1::CreativeRotation]
        attr_accessor :creative_rotation
      
        # Day Part Targeting.
        # Corresponds to the JSON property `dayPartTargeting`
        # @return [Google::Apis::DfareportingV2_1::DayPartTargeting]
        attr_accessor :day_part_targeting
      
        # Properties of inheriting and overriding the default click-through event tag. A
        # campaign may override the event tag defined at the advertiser level, and an ad
        # may also override the campaign's setting further.
        # Corresponds to the JSON property `defaultClickThroughEventTagProperties`
        # @return [Google::Apis::DfareportingV2_1::DefaultClickThroughEventTagProperties]
        attr_accessor :default_click_through_event_tag_properties
      
        # Delivery Schedule.
        # Corresponds to the JSON property `deliverySchedule`
        # @return [Google::Apis::DfareportingV2_1::DeliverySchedule]
        attr_accessor :delivery_schedule
      
        # Whether this ad is a dynamic click tracker. Applicable when type is
        # AD_SERVING_CLICK_TRACKER. This is a required field on insert, and is read-only
        # after insert.
        # Corresponds to the JSON property `dynamicClickTracker`
        # @return [Boolean]
        attr_accessor :dynamic_click_tracker
        alias_method :dynamic_click_tracker?, :dynamic_click_tracker
      
        # Date and time that this ad should stop serving. Must be later than the start
        # time. This is a required field on insertion.
        # Corresponds to the JSON property `endTime`
        # @return [DateTime]
        attr_accessor :end_time
      
        # Event tag overrides for this ad.
        # Corresponds to the JSON property `eventTagOverrides`
        # @return [Array<Google::Apis::DfareportingV2_1::EventTagOverride>]
        attr_accessor :event_tag_overrides
      
        # Geographical Targeting.
        # Corresponds to the JSON property `geoTargeting`
        # @return [Google::Apis::DfareportingV2_1::GeoTargeting]
        attr_accessor :geo_targeting
      
        # ID of this ad. This is a read-only, auto-generated field.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # Represents a DimensionValue resource.
        # Corresponds to the JSON property `idDimensionValue`
        # @return [Google::Apis::DfareportingV2_1::DimensionValue]
        attr_accessor :id_dimension_value
      
        # Key Value Targeting Expression.
        # Corresponds to the JSON property `keyValueTargetingExpression`
        # @return [Google::Apis::DfareportingV2_1::KeyValueTargetingExpression]
        attr_accessor :key_value_targeting_expression
      
        # Identifies what kind of resource this is. Value: the fixed string "
        # dfareporting#ad".
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # Modification timestamp.
        # Corresponds to the JSON property `lastModifiedInfo`
        # @return [Google::Apis::DfareportingV2_1::LastModifiedInfo]
        attr_accessor :last_modified_info
      
        # Name of this ad. This is a required field and must be less than 256 characters
        # long.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Placement assignments for this ad.
        # Corresponds to the JSON property `placementAssignments`
        # @return [Array<Google::Apis::DfareportingV2_1::PlacementAssignment>]
        attr_accessor :placement_assignments
      
        # Remarketing List Targeting Expression.
        # Corresponds to the JSON property `remarketing_list_expression`
        # @return [Google::Apis::DfareportingV2_1::ListTargetingExpression]
        attr_accessor :remarketing_list_expression
      
        # Represents the dimensions of ads, placements, creatives, or creative assets.
        # Corresponds to the JSON property `size`
        # @return [Google::Apis::DfareportingV2_1::Size]
        attr_accessor :size
      
        # Whether this ad is ssl compliant. This is a read-only field that is auto-
        # generated when the ad is inserted or updated.
        # Corresponds to the JSON property `sslCompliant`
        # @return [Boolean]
        attr_accessor :ssl_compliant
        alias_method :ssl_compliant?, :ssl_compliant
      
        # Whether this ad requires ssl. This is a read-only field that is auto-generated
        # when the ad is inserted or updated.
        # Corresponds to the JSON property `sslRequired`
        # @return [Boolean]
        attr_accessor :ssl_required
        alias_method :ssl_required?, :ssl_required
      
        # Date and time that this ad should start serving. If creating an ad, this field
        # must be a time in the future. This is a required field on insertion.
        # Corresponds to the JSON property `startTime`
        # @return [DateTime]
        attr_accessor :start_time
      
        # Subaccount ID of this ad. This is a read-only field that can be left blank.
        # Corresponds to the JSON property `subaccountId`
        # @return [String]
        attr_accessor :subaccount_id
      
        # Technology Targeting.
        # Corresponds to the JSON property `technologyTargeting`
        # @return [Google::Apis::DfareportingV2_1::TechnologyTargeting]
        attr_accessor :technology_targeting
      
        # Type of ad. This is a required field on insertion. Note that default ads (
        # AD_SERVING_DEFAULT_AD) cannot be created directly (see Creative resource).
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @account_id = args[:account_id] unless args[:account_id].nil?
          @active = args[:active] unless args[:active].nil?
          @advertiser_id = args[:advertiser_id] unless args[:advertiser_id].nil?
          @advertiser_id_dimension_value = args[:advertiser_id_dimension_value] unless args[:advertiser_id_dimension_value].nil?
          @archived = args[:archived] unless args[:archived].nil?
          @audience_segment_id = args[:audience_segment_id] unless args[:audience_segment_id].nil?
          @campaign_id = args[:campaign_id] unless args[:campaign_id].nil?
          @campaign_id_dimension_value = args[:campaign_id_dimension_value] unless args[:campaign_id_dimension_value].nil?
          @click_through_url = args[:click_through_url] unless args[:click_through_url].nil?
          @click_through_url_suffix_properties = args[:click_through_url_suffix_properties] unless args[:click_through_url_suffix_properties].nil?
          @comments = args[:comments] unless args[:comments].nil?
          @compatibility = args[:compatibility] unless args[:compatibility].nil?
          @create_info = args[:create_info] unless args[:create_info].nil?
          @creative_group_assignments = args[:creative_group_assignments] unless args[:creative_group_assignments].nil?
          @creative_rotation = args[:creative_rotation] unless args[:creative_rotation].nil?
          @day_part_targeting = args[:day_part_targeting] unless args[:day_part_targeting].nil?
          @default_click_through_event_tag_properties = args[:default_click_through_event_tag_properties] unless args[:default_click_through_event_tag_properties].nil?
          @delivery_schedule = args[:delivery_schedule] unless args[:delivery_schedule].nil?
          @dynamic_click_tracker = args[:dynamic_click_tracker] unless args[:dynamic_click_tracker].nil?
          @end_time = args[:end_time] unless args[:end_time].nil?
          @event_tag_overrides = args[:event_tag_overrides] unless args[:event_tag_overrides].nil?
          @geo_targeting = args[:geo_targeting] unless args[:geo_targeting].nil?
          @id = args[:id] unless args[:id].nil?
          @id_dimension_value = args[:id_dimension_value] unless args[:id_dimension_value].nil?
          @key_value_targeting_expression = args[:key_value_targeting_expression] unless args[:key_value_targeting_expression].nil?
          @kind = args[:kind] unless args[:kind].nil?
          @last_modified_info = args[:last_modified_info] unless args[:last_modified_info].nil?
          @name = args[:name] unless args[:name].nil?
          @placement_assignments = args[:placement_assignments] unless args[:placement_assignments].nil?
          @remarketing_list_expression = args[:remarketing_list_expression] unless args[:remarketing_list_expression].nil?
          @size = args[:size] unless args[:size].nil?
          @ssl_compliant = args[:ssl_compliant] unless args[:ssl_compliant].nil?
          @ssl_required = args[:ssl_required] unless args[:ssl_required].nil?
          @start_time = args[:start_time] unless args[:start_time].nil?
          @subaccount_id = args[:subaccount_id] unless args[:subaccount_id].nil?
          @technology_targeting = args[:technology_targeting] unless args[:technology_targeting].nil?
          @type = args[:type] unless args[:type].nil?
        end
      end
      
      # Ad Slot
      class AdSlot
        include Google::Apis::Core::Hashable
      
        # Comment for this ad slot.
        # Corresponds to the JSON property `comment`
        # @return [String]
        attr_accessor :comment
      
        # Ad slot compatibility. WEB and WEB_INTERSTITIAL refer to rendering either on
        # desktop or on mobile devices for regular or interstitial ads respectively. APP
        # and APP_INTERSTITIAL are for rendering in mobile apps. IN_STREAM_VIDEO refers
        # to rendering in in-stream video ads developed with the VAST standard.
        # Corresponds to the JSON property `compatibility`
        # @return [String]
        attr_accessor :compatibility
      
        # Height of this ad slot.
        # Corresponds to the JSON property `height`
        # @return [String]
        attr_accessor :height
      
        # ID of the placement from an external platform that is linked to this ad slot.
        # Corresponds to the JSON property `linkedPlacementId`
        # @return [String]
        attr_accessor :linked_placement_id
      
        # Name of this ad slot.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Payment source type of this ad slot.
        # Corresponds to the JSON property `paymentSourceType`
        # @return [String]
        attr_accessor :payment_source_type
      
        # Primary ad slot of a roadblock inventory item.
        # Corresponds to the JSON property `primary`
        # @return [Boolean]
        attr_accessor :primary
        alias_method :primary?, :primary
      
        # Width of this ad slot.
        # Corresponds to the JSON property `width`
        # @return [String]
        attr_accessor :width
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @comment = args[:comment] unless args[:comment].nil?
          @compatibility = args[:compatibility] unless args[:compatibility].nil?
          @height = args[:height] unless args[:height].nil?
          @linked_placement_id = args[:linked_placement_id] unless args[:linked_placement_id].nil?
          @name = args[:name] unless args[:name].nil?
          @payment_source_type = args[:payment_source_type] unless args[:payment_source_type].nil?
          @primary = args[:primary] unless args[:primary].nil?
          @width = args[:width] unless args[:width].nil?
        end
      end
      
      # Ad List Response
      class ListAdsResponse
        include Google::Apis::Core::Hashable
      
        # Ad collection.
        # Corresponds to the JSON property `ads`
        # @return [Array<Google::Apis::DfareportingV2_1::Ad>]
        attr_accessor :ads
      
        # Identifies what kind of resource this is. Value: the fixed string "
        # dfareporting#adsListResponse".
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # Pagination token to be used for the next list operation.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @ads = args[:ads] unless args[:ads].nil?
          @kind = args[:kind] unless args[:kind].nil?
          @next_page_token = args[:next_page_token] unless args[:next_page_token].nil?
        end
      end
      
      # Contains properties of a DCM advertiser.
      class Advertiser
        include Google::Apis::Core::Hashable
      
        # Account ID of this advertiser.This is a read-only field that can be left blank.
        # Corresponds to the JSON property `accountId`
        # @return [String]
        attr_accessor :account_id
      
        # ID of the advertiser group this advertiser belongs to. You can group
        # advertisers for reporting purposes, allowing you to see aggregated information
        # for all advertisers in each group.
        # Corresponds to the JSON property `advertiserGroupId`
        # @return [String]
        attr_accessor :advertiser_group_id
      
        # Suffix added to click-through URL of ad creative associations under this
        # advertiser. Must be less than 129 characters long.
        # Corresponds to the JSON property `clickThroughUrlSuffix`
        # @return [String]
        attr_accessor :click_through_url_suffix
      
        # ID of the click-through event tag to apply by default to the landing pages of
        # this advertiser's campaigns.
        # Corresponds to the JSON property `defaultClickThroughEventTagId`
        # @return [String]
        attr_accessor :default_click_through_event_tag_id
      
        # Default email address used in sender field for tag emails.
        # Corresponds to the JSON property `defaultEmail`
        # @return [String]
        attr_accessor :default_email
      
        # Floodlight configuration ID of this advertiser. The floodlight configuration
        # ID will be created automatically, so on insert this field should be left blank.
        # This field can be set to another advertiser's floodlight configuration ID in
        # order to share that advertiser's floodlight configuration with this advertiser,
        # so long as:
        # - This advertiser's original floodlight configuration is not already
        # associated with floodlight activities or floodlight activity groups.
        # - This advertiser's original floodlight configuration is not already shared
        # with another advertiser.
        # Corresponds to the JSON property `floodlightConfigurationId`
        # @return [String]
        attr_accessor :floodlight_configuration_id
      
        # Represents a DimensionValue resource.
        # Corresponds to the JSON property `floodlightConfigurationIdDimensionValue`
        # @return [Google::Apis::DfareportingV2_1::DimensionValue]
        attr_accessor :floodlight_configuration_id_dimension_value
      
        # ID of this advertiser. This is a read-only, auto-generated field.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # Represents a DimensionValue resource.
        # Corresponds to the JSON property `idDimensionValue`
        # @return [Google::Apis::DfareportingV2_1::DimensionValue]
        attr_accessor :id_dimension_value
      
        # Identifies what kind of resource this is. Value: the fixed string "
        # dfareporting#advertiser".
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # Name of this advertiser. This is a required field and must be less than 256
        # characters long and unique among advertisers of the same account.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Original floodlight configuration before any sharing occurred. Set the
        # floodlightConfigurationId of this advertiser to
        # originalFloodlightConfigurationId to unshare the advertiser's current
        # floodlight configuration. You cannot unshare an advertiser's floodlight
        # configuration if the shared configuration has activities associated with any
        # campaign or placement.
        # Corresponds to the JSON property `originalFloodlightConfigurationId`
        # @return [String]
        attr_accessor :original_floodlight_configuration_id
      
        # Status of this advertiser.
        # Corresponds to the JSON property `status`
        # @return [String]
        attr_accessor :status
      
        # Subaccount ID of this advertiser.This is a read-only field that can be left
        # blank.
        # Corresponds to the JSON property `subaccountId`
        # @return [String]
        attr_accessor :subaccount_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @account_id = args[:account_id] unless args[:account_id].nil?
          @advertiser_group_id = args[:advertiser_group_id] unless args[:advertiser_group_id].nil?
          @click_through_url_suffix = args[:click_through_url_suffix] unless args[:click_through_url_suffix].nil?
          @default_click_through_event_tag_id = args[:default_click_through_event_tag_id] unless args[:default_click_through_event_tag_id].nil?
          @default_email = args[:default_email] unless args[:default_email].nil?
          @floodlight_configuration_id = args[:floodlight_configuration_id] unless args[:floodlight_configuration_id].nil?
          @floodlight_configuration_id_dimension_value = args[:floodlight_configuration_id_dimension_value] unless args[:floodlight_configuration_id_dimension_value].nil?
          @id = args[:id] unless args[:id].nil?
          @id_dimension_value = args[:id_dimension_value] unless args[:id_dimension_value].nil?
          @kind = args[:kind] unless args[:kind].nil?
          @name = args[:name] unless args[:name].nil?
          @original_floodlight_configuration_id = args[:original_floodlight_configuration_id] unless args[:original_floodlight_configuration_id].nil?
          @status = args[:status] unless args[:status].nil?
          @subaccount_id = args[:subaccount_id] unless args[:subaccount_id].nil?
        end
      end
      
      # Groups advertisers together so that reports can be generated for the entire
      # group at once.
      class AdvertiserGroup
        include Google::Apis::Core::Hashable
      
        # Account ID of this advertiser group. This is a read-only field that can be
        # left blank.
        # Corresponds to the JSON property `accountId`
        # @return [String]
        attr_accessor :account_id
      
        # ID of this advertiser group. This is a read-only, auto-generated field.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # Identifies what kind of resource this is. Value: the fixed string "
        # dfareporting#advertiserGroup".
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # Name of this advertiser group. This is a required field and must be less than
        # 256 characters long and unique among advertiser groups of the same account.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @account_id = args[:account_id] unless args[:account_id].nil?
          @id = args[:id] unless args[:id].nil?
          @kind = args[:kind] unless args[:kind].nil?
          @name = args[:name] unless args[:name].nil?
        end
      end
      
      # Advertiser Group List Response
      class ListAdvertiserGroupsResponse
        include Google::Apis::Core::Hashable
      
        # Advertiser group collection.
        # Corresponds to the JSON property `advertiserGroups`
        # @return [Array<Google::Apis::DfareportingV2_1::AdvertiserGroup>]
        attr_accessor :advertiser_groups
      
        # Identifies what kind of resource this is. Value: the fixed string "
        # dfareporting#advertiserGroupsListResponse".
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # Pagination token to be used for the next list operation.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @advertiser_groups = args[:advertiser_groups] unless args[:advertiser_groups].nil?
          @kind = args[:kind] unless args[:kind].nil?
          @next_page_token = args[:next_page_token] unless args[:next_page_token].nil?
        end
      end
      
      # Advertiser List Response
      class ListAdvertisersResponse
        include Google::Apis::Core::Hashable
      
        # Advertiser collection.
        # Corresponds to the JSON property `advertisers`
        # @return [Array<Google::Apis::DfareportingV2_1::Advertiser>]
        attr_accessor :advertisers
      
        # Identifies what kind of resource this is. Value: the fixed string "
        # dfareporting#advertisersListResponse".
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # Pagination token to be used for the next list operation.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @advertisers = args[:advertisers] unless args[:advertisers].nil?
          @kind = args[:kind] unless args[:kind].nil?
          @next_page_token = args[:next_page_token] unless args[:next_page_token].nil?
        end
      end
      
      # Audience Segment.
      class AudienceSegment
        include Google::Apis::Core::Hashable
      
        # Weight allocated to this segment. Must be between 1 and 1000. The weight
        # assigned will be understood in proportion to the weights assigned to other
        # segments in the same segment group.
        # Corresponds to the JSON property `allocation`
        # @return [Fixnum]
        attr_accessor :allocation
      
        # ID of this audience segment. This is a read-only, auto-generated field.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # Name of this audience segment. This is a required field and must be less than
        # 65 characters long.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @allocation = args[:allocation] unless args[:allocation].nil?
          @id = args[:id] unless args[:id].nil?
          @name = args[:name] unless args[:name].nil?
        end
      end
      
      # Audience Segment Group.
      class AudienceSegmentGroup
        include Google::Apis::Core::Hashable
      
        # Audience segments assigned to this group. The number of segments must be
        # between 2 and 100.
        # Corresponds to the JSON property `audienceSegments`
        # @return [Array<Google::Apis::DfareportingV2_1::AudienceSegment>]
        attr_accessor :audience_segments
      
        # ID of this audience segment group. This is a read-only, auto-generated field.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # Name of this audience segment group. This is a required field and must be less
        # than 65 characters long.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @audience_segments = args[:audience_segments] unless args[:audience_segments].nil?
          @id = args[:id] unless args[:id].nil?
          @name = args[:name] unless args[:name].nil?
        end
      end
      
      # Contains information about a browser that can be targeted by ads.
      class Browser
        include Google::Apis::Core::Hashable
      
        # ID referring to this grouping of browser and version numbers. This is the ID
        # used for targeting.
        # Corresponds to the JSON property `browserVersionId`
        # @return [String]
        attr_accessor :browser_version_id
      
        # DART ID of this browser. This is the ID used when generating reports.
        # Corresponds to the JSON property `dartId`
        # @return [String]
        attr_accessor :dart_id
      
        # Identifies what kind of resource this is. Value: the fixed string "
        # dfareporting#browser".
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # Major version number (leftmost number) of this browser. For example, for
        # Chrome 5.0.376.86 beta, this field should be set to 5. An asterisk (*) may be
        # used to target any version number, and a question mark (?) may be used to
        # target cases where the version number cannot be identified. For example,
        # Chrome *.* targets any version of Chrome: 1.2, 2.5, 3.5, and so on. Chrome 3.*
        # targets Chrome 3.1, 3.5, but not 4.0. Firefox ?.? targets cases where the ad
        # server knows the browser is Firefox but can't tell which version it is.
        # Corresponds to the JSON property `majorVersion`
        # @return [String]
        attr_accessor :major_version
      
        # Minor version number (number after first dot on left) of this browser. For
        # example, for Chrome 5.0.375.86 beta, this field should be set to 0. An
        # asterisk (*) may be used to target any version number, and a question mark (?)
        # may be used to target cases where the version number cannot be identified. For
        # example, Chrome *.* targets any version of Chrome: 1.2, 2.5, 3.5, and so on.
        # Chrome 3.* targets Chrome 3.1, 3.5, but not 4.0. Firefox ?.? targets cases
        # where the ad server knows the browser is Firefox but can't tell which version
        # it is.
        # Corresponds to the JSON property `minorVersion`
        # @return [String]
        attr_accessor :minor_version
      
        # Name of this browser.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @browser_version_id = args[:browser_version_id] unless args[:browser_version_id].nil?
          @dart_id = args[:dart_id] unless args[:dart_id].nil?
          @kind = args[:kind] unless args[:kind].nil?
          @major_version = args[:major_version] unless args[:major_version].nil?
          @minor_version = args[:minor_version] unless args[:minor_version].nil?
          @name = args[:name] unless args[:name].nil?
        end
      end
      
      # Browser List Response
      class ListBrowsersResponse
        include Google::Apis::Core::Hashable
      
        # Browser collection.
        # Corresponds to the JSON property `browsers`
        # @return [Array<Google::Apis::DfareportingV2_1::Browser>]
        attr_accessor :browsers
      
        # Identifies what kind of resource this is. Value: the fixed string "
        # dfareporting#browsersListResponse".
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @browsers = args[:browsers] unless args[:browsers].nil?
          @kind = args[:kind] unless args[:kind].nil?
        end
      end
      
      # Contains properties of a DCM campaign.
      class Campaign
        include Google::Apis::Core::Hashable
      
        # Account ID of this campaign. This is a read-only field that can be left blank.
        # Corresponds to the JSON property `accountId`
        # @return [String]
        attr_accessor :account_id
      
        # Additional creative optimization configurations for the campaign.
        # Corresponds to the JSON property `additionalCreativeOptimizationConfigurations`
        # @return [Array<Google::Apis::DfareportingV2_1::CreativeOptimizationConfiguration>]
        attr_accessor :additional_creative_optimization_configurations
      
        # Advertiser group ID of the associated advertiser.
        # Corresponds to the JSON property `advertiserGroupId`
        # @return [String]
        attr_accessor :advertiser_group_id
      
        # Advertiser ID of this campaign. This is a required field.
        # Corresponds to the JSON property `advertiserId`
        # @return [String]
        attr_accessor :advertiser_id
      
        # Represents a DimensionValue resource.
        # Corresponds to the JSON property `advertiserIdDimensionValue`
        # @return [Google::Apis::DfareportingV2_1::DimensionValue]
        attr_accessor :advertiser_id_dimension_value
      
        # Whether this campaign has been archived.
        # Corresponds to the JSON property `archived`
        # @return [Boolean]
        attr_accessor :archived
        alias_method :archived?, :archived
      
        # Audience segment groups assigned to this campaign. Cannot have more than 300
        # segment groups.
        # Corresponds to the JSON property `audienceSegmentGroups`
        # @return [Array<Google::Apis::DfareportingV2_1::AudienceSegmentGroup>]
        attr_accessor :audience_segment_groups
      
        # Billing invoice code included in the DCM client billing invoices associated
        # with the campaign.
        # Corresponds to the JSON property `billingInvoiceCode`
        # @return [String]
        attr_accessor :billing_invoice_code
      
        # Click Through URL Suffix settings.
        # Corresponds to the JSON property `clickThroughUrlSuffixProperties`
        # @return [Google::Apis::DfareportingV2_1::ClickThroughUrlSuffixProperties]
        attr_accessor :click_through_url_suffix_properties
      
        # Arbitrary comments about this campaign. Must be less than 256 characters long.
        # Corresponds to the JSON property `comment`
        # @return [String]
        attr_accessor :comment
      
        # Whether comScore vCE reports are enabled for this campaign.
        # Corresponds to the JSON property `comscoreVceEnabled`
        # @return [Boolean]
        attr_accessor :comscore_vce_enabled
        alias_method :comscore_vce_enabled?, :comscore_vce_enabled
      
        # Modification timestamp.
        # Corresponds to the JSON property `createInfo`
        # @return [Google::Apis::DfareportingV2_1::LastModifiedInfo]
        attr_accessor :create_info
      
        # List of creative group IDs that are assigned to the campaign.
        # Corresponds to the JSON property `creativeGroupIds`
        # @return [Array<String>]
        attr_accessor :creative_group_ids
      
        # Creative optimization settings.
        # Corresponds to the JSON property `creativeOptimizationConfiguration`
        # @return [Google::Apis::DfareportingV2_1::CreativeOptimizationConfiguration]
        attr_accessor :creative_optimization_configuration
      
        # Properties of inheriting and overriding the default click-through event tag. A
        # campaign may override the event tag defined at the advertiser level, and an ad
        # may also override the campaign's setting further.
        # Corresponds to the JSON property `defaultClickThroughEventTagProperties`
        # @return [Google::Apis::DfareportingV2_1::DefaultClickThroughEventTagProperties]
        attr_accessor :default_click_through_event_tag_properties
      
        # Date on which the campaign will stop running. On insert, the end date must be
        # today or a future date. The end date must be later than or be the same as the
        # start date. If, for example, you set 6/25/2015 as both the start and end dates,
        # the effective campaign run date is just that day only, 6/25/2015. The hours,
        # minutes, and seconds of the end date should not be set, as doing so will
        # result in an error. This is a required field.
        # Corresponds to the JSON property `endDate`
        # @return [Date]
        attr_accessor :end_date
      
        # Overrides that can be used to activate or deactivate advertiser event tags.
        # Corresponds to the JSON property `eventTagOverrides`
        # @return [Array<Google::Apis::DfareportingV2_1::EventTagOverride>]
        attr_accessor :event_tag_overrides
      
        # External ID for this campaign.
        # Corresponds to the JSON property `externalId`
        # @return [String]
        attr_accessor :external_id
      
        # ID of this campaign. This is a read-only auto-generated field.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # Represents a DimensionValue resource.
        # Corresponds to the JSON property `idDimensionValue`
        # @return [Google::Apis::DfareportingV2_1::DimensionValue]
        attr_accessor :id_dimension_value
      
        # Identifies what kind of resource this is. Value: the fixed string "
        # dfareporting#campaign".
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # Modification timestamp.
        # Corresponds to the JSON property `lastModifiedInfo`
        # @return [Google::Apis::DfareportingV2_1::LastModifiedInfo]
        attr_accessor :last_modified_info
      
        # Lookback configuration settings.
        # Corresponds to the JSON property `lookbackConfiguration`
        # @return [Google::Apis::DfareportingV2_1::LookbackConfiguration]
        attr_accessor :lookback_configuration
      
        # Name of this campaign. This is a required field and must be less than 256
        # characters long and unique among campaigns of the same advertiser.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Whether Nielsen reports are enabled for this campaign.
        # Corresponds to the JSON property `nielsenOcrEnabled`
        # @return [Boolean]
        attr_accessor :nielsen_ocr_enabled
        alias_method :nielsen_ocr_enabled?, :nielsen_ocr_enabled
      
        # Date on which the campaign starts running. The start date can be any date. The
        # hours, minutes, and seconds of the start date should not be set, as doing so
        # will result in an error. This is a required field.
        # Corresponds to the JSON property `startDate`
        # @return [Date]
        attr_accessor :start_date
      
        # Subaccount ID of this campaign. This is a read-only field that can be left
        # blank.
        # Corresponds to the JSON property `subaccountId`
        # @return [String]
        attr_accessor :subaccount_id
      
        # Campaign trafficker contact emails.
        # Corresponds to the JSON property `traffickerEmails`
        # @return [Array<String>]
        attr_accessor :trafficker_emails
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @account_id = args[:account_id] unless args[:account_id].nil?
          @additional_creative_optimization_configurations = args[:additional_creative_optimization_configurations] unless args[:additional_creative_optimization_configurations].nil?
          @advertiser_group_id = args[:advertiser_group_id] unless args[:advertiser_group_id].nil?
          @advertiser_id = args[:advertiser_id] unless args[:advertiser_id].nil?
          @advertiser_id_dimension_value = args[:advertiser_id_dimension_value] unless args[:advertiser_id_dimension_value].nil?
          @archived = args[:archived] unless args[:archived].nil?
          @audience_segment_groups = args[:audience_segment_groups] unless args[:audience_segment_groups].nil?
          @billing_invoice_code = args[:billing_invoice_code] unless args[:billing_invoice_code].nil?
          @click_through_url_suffix_properties = args[:click_through_url_suffix_properties] unless args[:click_through_url_suffix_properties].nil?
          @comment = args[:comment] unless args[:comment].nil?
          @comscore_vce_enabled = args[:comscore_vce_enabled] unless args[:comscore_vce_enabled].nil?
          @create_info = args[:create_info] unless args[:create_info].nil?
          @creative_group_ids = args[:creative_group_ids] unless args[:creative_group_ids].nil?
          @creative_optimization_configuration = args[:creative_optimization_configuration] unless args[:creative_optimization_configuration].nil?
          @default_click_through_event_tag_properties = args[:default_click_through_event_tag_properties] unless args[:default_click_through_event_tag_properties].nil?
          @end_date = args[:end_date] unless args[:end_date].nil?
          @event_tag_overrides = args[:event_tag_overrides] unless args[:event_tag_overrides].nil?
          @external_id = args[:external_id] unless args[:external_id].nil?
          @id = args[:id] unless args[:id].nil?
          @id_dimension_value = args[:id_dimension_value] unless args[:id_dimension_value].nil?
          @kind = args[:kind] unless args[:kind].nil?
          @last_modified_info = args[:last_modified_info] unless args[:last_modified_info].nil?
          @lookback_configuration = args[:lookback_configuration] unless args[:lookback_configuration].nil?
          @name = args[:name] unless args[:name].nil?
          @nielsen_ocr_enabled = args[:nielsen_ocr_enabled] unless args[:nielsen_ocr_enabled].nil?
          @start_date = args[:start_date] unless args[:start_date].nil?
          @subaccount_id = args[:subaccount_id] unless args[:subaccount_id].nil?
          @trafficker_emails = args[:trafficker_emails] unless args[:trafficker_emails].nil?
        end
      end
      
      # Identifies a creative which has been associated with a given campaign.
      class CampaignCreativeAssociation
        include Google::Apis::Core::Hashable
      
        # ID of the creative associated with the campaign. This is a required field.
        # Corresponds to the JSON property `creativeId`
        # @return [String]
        attr_accessor :creative_id
      
        # Identifies what kind of resource this is. Value: the fixed string "
        # dfareporting#campaignCreativeAssociation".
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @creative_id = args[:creative_id] unless args[:creative_id].nil?
          @kind = args[:kind] unless args[:kind].nil?
        end
      end
      
      # Campaign Creative Association List Response
      class ListCampaignCreativeAssociationsResponse
        include Google::Apis::Core::Hashable
      
        # Campaign creative association collection
        # Corresponds to the JSON property `campaignCreativeAssociations`
        # @return [Array<Google::Apis::DfareportingV2_1::CampaignCreativeAssociation>]
        attr_accessor :campaign_creative_associations
      
        # Identifies what kind of resource this is. Value: the fixed string "
        # dfareporting#campaignCreativeAssociationsListResponse".
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # Pagination token to be used for the next list operation.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @campaign_creative_associations = args[:campaign_creative_associations] unless args[:campaign_creative_associations].nil?
          @kind = args[:kind] unless args[:kind].nil?
          @next_page_token = args[:next_page_token] unless args[:next_page_token].nil?
        end
      end
      
      # Campaign List Response
      class ListCampaignsResponse
        include Google::Apis::Core::Hashable
      
        # Campaign collection.
        # Corresponds to the JSON property `campaigns`
        # @return [Array<Google::Apis::DfareportingV2_1::Campaign>]
        attr_accessor :campaigns
      
        # Identifies what kind of resource this is. Value: the fixed string "
        # dfareporting#campaignsListResponse".
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # Pagination token to be used for the next list operation.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @campaigns = args[:campaigns] unless args[:campaigns].nil?
          @kind = args[:kind] unless args[:kind].nil?
          @next_page_token = args[:next_page_token] unless args[:next_page_token].nil?
        end
      end
      
      # Describes a change that a user has made to a resource.
      class ChangeLog
        include Google::Apis::Core::Hashable
      
        # Account ID of the modified object.
        # Corresponds to the JSON property `accountId`
        # @return [String]
        attr_accessor :account_id
      
        # Action which caused the change.
        # Corresponds to the JSON property `action`
        # @return [String]
        attr_accessor :action
      
        # Time when the object was modified.
        # Corresponds to the JSON property `changeTime`
        # @return [DateTime]
        attr_accessor :change_time
      
        # Field name of the object which changed.
        # Corresponds to the JSON property `fieldName`
        # @return [String]
        attr_accessor :field_name
      
        # ID of this change log.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # Identifies what kind of resource this is. Value: the fixed string "
        # dfareporting#changeLog".
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # New value of the object field.
        # Corresponds to the JSON property `newValue`
        # @return [String]
        attr_accessor :new_value
      
        # ID of the object of this change log. The object could be a campaign, placement,
        # ad, or other type.
        # Corresponds to the JSON property `objectId`
        # @return [String]
        attr_accessor :obj_id
      
        # Object type of the change log.
        # Corresponds to the JSON property `objectType`
        # @return [String]
        attr_accessor :object_type
      
        # Old value of the object field.
        # Corresponds to the JSON property `oldValue`
        # @return [String]
        attr_accessor :old_value
      
        # Subaccount ID of the modified object.
        # Corresponds to the JSON property `subaccountId`
        # @return [String]
        attr_accessor :subaccount_id
      
        # Transaction ID of this change log. When a single API call results in many
        # changes, each change will have a separate ID in the change log but will share
        # the same transactionId.
        # Corresponds to the JSON property `transactionId`
        # @return [String]
        attr_accessor :transaction_id
      
        # ID of the user who modified the object.
        # Corresponds to the JSON property `userProfileId`
        # @return [String]
        attr_accessor :user_profile_id
      
        # User profile name of the user who modified the object.
        # Corresponds to the JSON property `userProfileName`
        # @return [String]
        attr_accessor :user_profile_name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @account_id = args[:account_id] unless args[:account_id].nil?
          @action = args[:action] unless args[:action].nil?
          @change_time = args[:change_time] unless args[:change_time].nil?
          @field_name = args[:field_name] unless args[:field_name].nil?
          @id = args[:id] unless args[:id].nil?
          @kind = args[:kind] unless args[:kind].nil?
          @new_value = args[:new_value] unless args[:new_value].nil?
          @obj_id = args[:obj_id] unless args[:obj_id].nil?
          @object_type = args[:object_type] unless args[:object_type].nil?
          @old_value = args[:old_value] unless args[:old_value].nil?
          @subaccount_id = args[:subaccount_id] unless args[:subaccount_id].nil?
          @transaction_id = args[:transaction_id] unless args[:transaction_id].nil?
          @user_profile_id = args[:user_profile_id] unless args[:user_profile_id].nil?
          @user_profile_name = args[:user_profile_name] unless args[:user_profile_name].nil?
        end
      end
      
      # Change Log List Response
      class ListChangeLogsResponse
        include Google::Apis::Core::Hashable
      
        # Change log collection.
        # Corresponds to the JSON property `changeLogs`
        # @return [Array<Google::Apis::DfareportingV2_1::ChangeLog>]
        attr_accessor :change_logs
      
        # Identifies what kind of resource this is. Value: the fixed string "
        # dfareporting#changeLogsListResponse".
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # Pagination token to be used for the next list operation.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @change_logs = args[:change_logs] unless args[:change_logs].nil?
          @kind = args[:kind] unless args[:kind].nil?
          @next_page_token = args[:next_page_token] unless args[:next_page_token].nil?
        end
      end
      
      # City List Response
      class ListCitiesResponse
        include Google::Apis::Core::Hashable
      
        # City collection.
        # Corresponds to the JSON property `cities`
        # @return [Array<Google::Apis::DfareportingV2_1::City>]
        attr_accessor :cities
      
        # Identifies what kind of resource this is. Value: the fixed string "
        # dfareporting#citiesListResponse".
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @cities = args[:cities] unless args[:cities].nil?
          @kind = args[:kind] unless args[:kind].nil?
        end
      end
      
      # Contains information about a city that can be targeted by ads.
      class City
        include Google::Apis::Core::Hashable
      
        # Country code of the country to which this city belongs.
        # Corresponds to the JSON property `countryCode`
        # @return [String]
        attr_accessor :country_code
      
        # DART ID of the country to which this city belongs.
        # Corresponds to the JSON property `countryDartId`
        # @return [String]
        attr_accessor :country_dart_id
      
        # DART ID of this city. This is the ID used for targeting and generating reports.
        # Corresponds to the JSON property `dartId`
        # @return [String]
        attr_accessor :dart_id
      
        # Identifies what kind of resource this is. Value: the fixed string "
        # dfareporting#city".
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # Metro region code of the metro region (DMA) to which this city belongs.
        # Corresponds to the JSON property `metroCode`
        # @return [String]
        attr_accessor :metro_code
      
        # ID of the metro region (DMA) to which this city belongs.
        # Corresponds to the JSON property `metroDmaId`
        # @return [String]
        attr_accessor :metro_dma_id
      
        # Name of this city.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Region code of the region to which this city belongs.
        # Corresponds to the JSON property `regionCode`
        # @return [String]
        attr_accessor :region_code
      
        # DART ID of the region to which this city belongs.
        # Corresponds to the JSON property `regionDartId`
        # @return [String]
        attr_accessor :region_dart_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @country_code = args[:country_code] unless args[:country_code].nil?
          @country_dart_id = args[:country_dart_id] unless args[:country_dart_id].nil?
          @dart_id = args[:dart_id] unless args[:dart_id].nil?
          @kind = args[:kind] unless args[:kind].nil?
          @metro_code = args[:metro_code] unless args[:metro_code].nil?
          @metro_dma_id = args[:metro_dma_id] unless args[:metro_dma_id].nil?
          @name = args[:name] unless args[:name].nil?
          @region_code = args[:region_code] unless args[:region_code].nil?
          @region_dart_id = args[:region_dart_id] unless args[:region_dart_id].nil?
        end
      end
      
      # Creative Click Tag.
      class ClickTag
        include Google::Apis::Core::Hashable
      
        # Advertiser event name associated with the click tag. This field is used by
        # ENHANCED_BANNER, ENHANCED_IMAGE, and HTML5_BANNER creatives.
        # Corresponds to the JSON property `eventName`
        # @return [String]
        attr_accessor :event_name
      
        # Parameter name for the specified click tag. For ENHANCED_IMAGE creative assets,
        # this field must match the value of the creative asset's creativeAssetId.name
        # field.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Parameter value for the specified click tag. This field contains a click-
        # through url.
        # Corresponds to the JSON property `value`
        # @return [String]
        attr_accessor :value
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @event_name = args[:event_name] unless args[:event_name].nil?
          @name = args[:name] unless args[:name].nil?
          @value = args[:value] unless args[:value].nil?
        end
      end
      
      # Click-through URL
      class ClickThroughUrl
        include Google::Apis::Core::Hashable
      
        # Custom click-through URL. Applicable if the defaultLandingPage field is set to
        # false and the landingPageId field is left unset.
        # Corresponds to the JSON property `customClickThroughUrl`
        # @return [String]
        attr_accessor :custom_click_through_url
      
        # Whether the campaign default landing page is used.
        # Corresponds to the JSON property `defaultLandingPage`
        # @return [Boolean]
        attr_accessor :default_landing_page
        alias_method :default_landing_page?, :default_landing_page
      
        # ID of the landing page for the click-through URL. Applicable if the
        # defaultLandingPage field is set to false.
        # Corresponds to the JSON property `landingPageId`
        # @return [String]
        attr_accessor :landing_page_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @custom_click_through_url = args[:custom_click_through_url] unless args[:custom_click_through_url].nil?
          @default_landing_page = args[:default_landing_page] unless args[:default_landing_page].nil?
          @landing_page_id = args[:landing_page_id] unless args[:landing_page_id].nil?
        end
      end
      
      # Click Through URL Suffix settings.
      class ClickThroughUrlSuffixProperties
        include Google::Apis::Core::Hashable
      
        # Click-through URL suffix to apply to all ads in this entity's scope. Must be
        # less than 128 characters long.
        # Corresponds to the JSON property `clickThroughUrlSuffix`
        # @return [String]
        attr_accessor :click_through_url_suffix
      
        # Whether this entity should override the inherited click-through URL suffix
        # with its own defined value.
        # Corresponds to the JSON property `overrideInheritedSuffix`
        # @return [Boolean]
        attr_accessor :override_inherited_suffix
        alias_method :override_inherited_suffix?, :override_inherited_suffix
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @click_through_url_suffix = args[:click_through_url_suffix] unless args[:click_through_url_suffix].nil?
          @override_inherited_suffix = args[:override_inherited_suffix] unless args[:override_inherited_suffix].nil?
        end
      end
      
      # Companion Click-through override.
      class CompanionClickThroughOverride
        include Google::Apis::Core::Hashable
      
        # Click-through URL
        # Corresponds to the JSON property `clickThroughUrl`
        # @return [Google::Apis::DfareportingV2_1::ClickThroughUrl]
        attr_accessor :click_through_url
      
        # ID of the creative for this companion click-through override.
        # Corresponds to the JSON property `creativeId`
        # @return [String]
        attr_accessor :creative_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @click_through_url = args[:click_through_url] unless args[:click_through_url].nil?
          @creative_id = args[:creative_id] unless args[:creative_id].nil?
        end
      end
      
      # Represents a response to the queryCompatibleFields method.
      class CompatibleFields
        include Google::Apis::Core::Hashable
      
        # Represents fields that are compatible to be selected for a report of type "
        # CROSS_DIMENSION_REACH".
        # Corresponds to the JSON property `crossDimensionReachReportCompatibleFields`
        # @return [Google::Apis::DfareportingV2_1::CrossDimensionReachReportCompatibleFields]
        attr_accessor :cross_dimension_reach_report_compatible_fields
      
        # Represents fields that are compatible to be selected for a report of type "
        # FlOODLIGHT".
        # Corresponds to the JSON property `floodlightReportCompatibleFields`
        # @return [Google::Apis::DfareportingV2_1::FloodlightReportCompatibleFields]
        attr_accessor :floodlight_report_compatible_fields
      
        # The kind of resource this is, in this case dfareporting#compatibleFields.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # Represents fields that are compatible to be selected for a report of type "
        # PATH_TO_CONVERSION".
        # Corresponds to the JSON property `pathToConversionReportCompatibleFields`
        # @return [Google::Apis::DfareportingV2_1::PathToConversionReportCompatibleFields]
        attr_accessor :path_to_conversion_report_compatible_fields
      
        # Represents fields that are compatible to be selected for a report of type "
        # REACH".
        # Corresponds to the JSON property `reachReportCompatibleFields`
        # @return [Google::Apis::DfareportingV2_1::ReachReportCompatibleFields]
        attr_accessor :reach_report_compatible_fields
      
        # Represents fields that are compatible to be selected for a report of type "
        # STANDARD".
        # Corresponds to the JSON property `reportCompatibleFields`
        # @return [Google::Apis::DfareportingV2_1::ReportCompatibleFields]
        attr_accessor :report_compatible_fields
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @cross_dimension_reach_report_compatible_fields = args[:cross_dimension_reach_report_compatible_fields] unless args[:cross_dimension_reach_report_compatible_fields].nil?
          @floodlight_report_compatible_fields = args[:floodlight_report_compatible_fields] unless args[:floodlight_report_compatible_fields].nil?
          @kind = args[:kind] unless args[:kind].nil?
          @path_to_conversion_report_compatible_fields = args[:path_to_conversion_report_compatible_fields] unless args[:path_to_conversion_report_compatible_fields].nil?
          @reach_report_compatible_fields = args[:reach_report_compatible_fields] unless args[:reach_report_compatible_fields].nil?
          @report_compatible_fields = args[:report_compatible_fields] unless args[:report_compatible_fields].nil?
        end
      end
      
      # Contains information about an internet connection type that can be targeted by
      # ads. Clients can use the connection type to target mobile vs. broadband users.
      class ConnectionType
        include Google::Apis::Core::Hashable
      
        # ID of this connection type.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # Identifies what kind of resource this is. Value: the fixed string "
        # dfareporting#connectionType".
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # Name of this connection type.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @id = args[:id] unless args[:id].nil?
          @kind = args[:kind] unless args[:kind].nil?
          @name = args[:name] unless args[:name].nil?
        end
      end
      
      # Connection Type List Response
      class ListConnectionTypesResponse
        include Google::Apis::Core::Hashable
      
        # Collection of connection types such as broadband and mobile.
        # Corresponds to the JSON property `connectionTypes`
        # @return [Array<Google::Apis::DfareportingV2_1::ConnectionType>]
        attr_accessor :connection_types
      
        # Identifies what kind of resource this is. Value: the fixed string "
        # dfareporting#connectionTypesListResponse".
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @connection_types = args[:connection_types] unless args[:connection_types].nil?
          @kind = args[:kind] unless args[:kind].nil?
        end
      end
      
      # Content Category List Response
      class ListContentCategoriesResponse
        include Google::Apis::Core::Hashable
      
        # Content category collection.
        # Corresponds to the JSON property `contentCategories`
        # @return [Array<Google::Apis::DfareportingV2_1::ContentCategory>]
        attr_accessor :content_categories
      
        # Identifies what kind of resource this is. Value: the fixed string "
        # dfareporting#contentCategoriesListResponse".
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # Pagination token to be used for the next list operation.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @content_categories = args[:content_categories] unless args[:content_categories].nil?
          @kind = args[:kind] unless args[:kind].nil?
          @next_page_token = args[:next_page_token] unless args[:next_page_token].nil?
        end
      end
      
      # Organizes placements according to the contents of their associated webpages.
      class ContentCategory
        include Google::Apis::Core::Hashable
      
        # Account ID of this content category. This is a read-only field that can be
        # left blank.
        # Corresponds to the JSON property `accountId`
        # @return [String]
        attr_accessor :account_id
      
        # ID of this content category. This is a read-only, auto-generated field.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # Identifies what kind of resource this is. Value: the fixed string "
        # dfareporting#contentCategory".
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # Name of this content category. This is a required field and must be less than
        # 256 characters long and unique among content categories of the same account.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @account_id = args[:account_id] unless args[:account_id].nil?
          @id = args[:id] unless args[:id].nil?
          @kind = args[:kind] unless args[:kind].nil?
          @name = args[:name] unless args[:name].nil?
        end
      end
      
      # Country List Response
      class ListCountriesResponse
        include Google::Apis::Core::Hashable
      
        # Country collection.
        # Corresponds to the JSON property `countries`
        # @return [Array<Google::Apis::DfareportingV2_1::Country>]
        attr_accessor :countries
      
        # Identifies what kind of resource this is. Value: the fixed string "
        # dfareporting#countriesListResponse".
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @countries = args[:countries] unless args[:countries].nil?
          @kind = args[:kind] unless args[:kind].nil?
        end
      end
      
      # Contains information about a country that can be targeted by ads.
      class Country
        include Google::Apis::Core::Hashable
      
        # Country code.
        # Corresponds to the JSON property `countryCode`
        # @return [String]
        attr_accessor :country_code
      
        # DART ID of this country. This is the ID used for targeting and generating
        # reports.
        # Corresponds to the JSON property `dartId`
        # @return [String]
        attr_accessor :dart_id
      
        # Identifies what kind of resource this is. Value: the fixed string "
        # dfareporting#country".
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # Name of this country.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Whether ad serving supports secure servers in this country.
        # Corresponds to the JSON property `sslEnabled`
        # @return [Boolean]
        attr_accessor :ssl_enabled
        alias_method :ssl_enabled?, :ssl_enabled
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @country_code = args[:country_code] unless args[:country_code].nil?
          @dart_id = args[:dart_id] unless args[:dart_id].nil?
          @kind = args[:kind] unless args[:kind].nil?
          @name = args[:name] unless args[:name].nil?
          @ssl_enabled = args[:ssl_enabled] unless args[:ssl_enabled].nil?
        end
      end
      
      # Contains properties of a Creative.
      class Creative
        include Google::Apis::Core::Hashable
      
        # Account ID of this creative. This field, if left unset, will be auto-generated
        # for both insert and update operations. Applicable to all creative types.
        # Corresponds to the JSON property `accountId`
        # @return [String]
        attr_accessor :account_id
      
        # Whether the creative is active. Applicable to all creative types.
        # Corresponds to the JSON property `active`
        # @return [Boolean]
        attr_accessor :active
        alias_method :active?, :active
      
        # Ad parameters user for VPAID creative. This is a read-only field. Applicable
        # to the following creative types: all VPAID.
        # Corresponds to the JSON property `adParameters`
        # @return [String]
        attr_accessor :ad_parameters
      
        # Keywords for a Rich Media creative. Keywords let you customize the creative
        # settings of a Rich Media ad running on your site without having to contact the
        # advertiser. You can use keywords to dynamically change the look or
        # functionality of a creative. Applicable to the following creative types: all
        # RICH_MEDIA, and all VPAID.
        # Corresponds to the JSON property `adTagKeys`
        # @return [Array<String>]
        attr_accessor :ad_tag_keys
      
        # Advertiser ID of this creative. This is a required field. Applicable to all
        # creative types.
        # Corresponds to the JSON property `advertiserId`
        # @return [String]
        attr_accessor :advertiser_id
      
        # Whether script access is allowed for this creative. This is a read-only and
        # deprecated field which will automatically be set to true on update. Applicable
        # to the following creative types: FLASH_INPAGE.
        # Corresponds to the JSON property `allowScriptAccess`
        # @return [Boolean]
        attr_accessor :allow_script_access
        alias_method :allow_script_access?, :allow_script_access
      
        # Whether the creative is archived. Applicable to all creative types.
        # Corresponds to the JSON property `archived`
        # @return [Boolean]
        attr_accessor :archived
        alias_method :archived?, :archived
      
        # Type of artwork used for the creative. This is a read-only field. Applicable
        # to the following creative types: all RICH_MEDIA, and all VPAID.
        # Corresponds to the JSON property `artworkType`
        # @return [String]
        attr_accessor :artwork_type
      
        # Authoring tool for HTML5 banner creatives. This is a read-only field.
        # Applicable to the following creative types: HTML5_BANNER.
        # Corresponds to the JSON property `authoringTool`
        # @return [String]
        attr_accessor :authoring_tool
      
        # Whether images are automatically advanced for enhanced image creatives.
        # Applicable to the following creative types: ENHANCED_IMAGE.
        # Corresponds to the JSON property `auto_advance_images`
        # @return [Boolean]
        attr_accessor :auto_advance_images
        alias_method :auto_advance_images?, :auto_advance_images
      
        # The 6-character HTML color code, beginning with #, for the background of the
        # window area where the Flash file is displayed. Default is white. Applicable to
        # the following creative types: FLASH_INPAGE.
        # Corresponds to the JSON property `backgroundColor`
        # @return [String]
        attr_accessor :background_color
      
        # Click-through URL for backup image. Applicable to the following creative types:
        # ENHANCED_BANNER, FLASH_INPAGE, and HTML5_BANNER.
        # Corresponds to the JSON property `backupImageClickThroughUrl`
        # @return [String]
        attr_accessor :backup_image_click_through_url
      
        # List of feature dependencies that will cause a backup image to be served if
        # the browser that serves the ad does not support them. Feature dependencies are
        # features that a browser must be able to support in order to render your HTML5
        # creative asset correctly. This field is initially auto-generated to contain
        # all features detected by DCM for all the assets of this creative and can then
        # be modified by the client. To reset this field, copy over all the
        # creativeAssets' detected features. Applicable to the following creative types:
        # ENHANCED_BANNER and HTML5_BANNER.
        # Corresponds to the JSON property `backupImageFeatures`
        # @return [Array<String>]
        attr_accessor :backup_image_features
      
        # Reporting label used for HTML5 banner backup image. Applicable to the
        # following creative types: ENHANCED_BANNER.
        # Corresponds to the JSON property `backupImageReportingLabel`
        # @return [String]
        attr_accessor :backup_image_reporting_label
      
        # Target Window.
        # Corresponds to the JSON property `backupImageTargetWindow`
        # @return [Google::Apis::DfareportingV2_1::TargetWindow]
        attr_accessor :backup_image_target_window
      
        # Click tags of the creative. For ENHANCED_BANNER, FLASH_INPAGE, and
        # HTML5_BANNER creatives, this is a subset of detected click tags for the assets
        # associated with this creative. After creating a flash asset, detected click
        # tags will be returned in the creativeAssetMetadata. When inserting the
        # creative, populate the creative clickTags field using the
        # creativeAssetMetadata.clickTags field. For ENHANCED_IMAGE creatives, there
        # should be exactly one entry in this list for each image creative asset. A
        # click tag is matched with a corresponding creative asset by matching the
        # clickTag.name field with the creativeAsset.assetIdentifier.name field.
        # Applicable to the following creative types: ENHANCED_BANNER, ENHANCED_IMAGE,
        # FLASH_INPAGE, HTML5_BANNER.
        # Corresponds to the JSON property `clickTags`
        # @return [Array<Google::Apis::DfareportingV2_1::ClickTag>]
        attr_accessor :click_tags
      
        # Industry standard ID assigned to creative for reach and frequency. Applicable
        # to the following creative types: all INSTREAM_VIDEO and all VPAID.
        # Corresponds to the JSON property `commercialId`
        # @return [String]
        attr_accessor :commercial_id
      
        # List of companion creatives assigned to an in-Stream videocreative. Acceptable
        # values include IDs of existing flash and image creatives. Applicable to the
        # following creative types: all INSTREAM_VIDEO and all VPAID.
        # Corresponds to the JSON property `companionCreatives`
        # @return [Array<String>]
        attr_accessor :companion_creatives
      
        # Compatibilities associated with this creative. This is a read-only field. WEB
        # and WEB_INTERSTITIAL refer to rendering either on desktop or on mobile devices
        # for regular or interstitial ads, respectively. APP and APP_INTERSTITIAL are
        # for rendering in mobile apps. IN_STREAM_VIDEO refers to rendering in in-stream
        # video ads developed with the VAST standard. Applicable to all creative types.
        # Acceptable values are:
        # - "APP"
        # - "APP_INTERSTITIAL"
        # - "IN_STREAM_VIDEO"
        # - "WEB"
        # - "WEB_INTERSTITIAL"
        # Corresponds to the JSON property `compatibility`
        # @return [Array<String>]
        attr_accessor :compatibility
      
        # Whether Flash assets associated with the creative need to be automatically
        # converted to HTML5. This flag is enabled by default and users can choose to
        # disable it if they don't want the system to generate and use HTML5 asset for
        # this creative. Applicable to the following creative types: ENHANCED_BANNER and
        # FLASH_INPAGE.
        # Corresponds to the JSON property `convertFlashToHtml5`
        # @return [Boolean]
        attr_accessor :convert_flash_to_html5
        alias_method :convert_flash_to_html5?, :convert_flash_to_html5
      
        # List of counter events configured for the creative. For ENHANCED_IMAGE
        # creatives, these are read-only and auto-generated from clickTags. Applicable
        # to the following creative types: ENHANCED_IMAGE, all RICH_MEDIA, and all VPAID.
        # Corresponds to the JSON property `counterCustomEvents`
        # @return [Array<Google::Apis::DfareportingV2_1::CreativeCustomEvent>]
        attr_accessor :counter_custom_events
      
        # Assets associated with a creative. Applicable to all but the following
        # creative types: INTERNAL_REDIRECT, INTERSTITIAL_INTERNAL_REDIRECT, and
        # REDIRECT
        # Corresponds to the JSON property `creativeAssets`
        # @return [Array<Google::Apis::DfareportingV2_1::CreativeAsset>]
        attr_accessor :creative_assets
      
        # Creative field assignments for this creative. Applicable to all creative types.
        # Corresponds to the JSON property `creativeFieldAssignments`
        # @return [Array<Google::Apis::DfareportingV2_1::CreativeFieldAssignment>]
        attr_accessor :creative_field_assignments
      
        # Custom key-values for a Rich Media creative. Key-values let you customize the
        # creative settings of a Rich Media ad running on your site without having to
        # contact the advertiser. You can use key-values to dynamically change the look
        # or functionality of a creative. Applicable to the following creative types:
        # all RICH_MEDIA, and all VPAID.
        # Corresponds to the JSON property `customKeyValues`
        # @return [Array<String>]
        attr_accessor :custom_key_values
      
        # List of exit events configured for the creative. For ENHANCED_BANNER and
        # ENHANCED_IMAGE creatives, these are read-only and auto-generated from
        # clickTags, For ENHANCED_BANNER, an event is also created from the
        # backupImageReportingLabel. Applicable to the following creative types:
        # ENHANCED_BANNER, ENHANCED_IMAGE, all RICH_MEDIA, and all VPAID.
        # Corresponds to the JSON property `exitCustomEvents`
        # @return [Array<Google::Apis::DfareportingV2_1::CreativeCustomEvent>]
        attr_accessor :exit_custom_events
      
        # FsCommand.
        # Corresponds to the JSON property `fsCommand`
        # @return [Google::Apis::DfareportingV2_1::FsCommand]
        attr_accessor :fs_command
      
        # HTML code for the creative. This is a required field when applicable. This
        # field is ignored if htmlCodeLocked is false. Applicable to the following
        # creative types: all CUSTOM, FLASH_INPAGE, and HTML5_BANNER, and all RICH_MEDIA.
        # Corresponds to the JSON property `htmlCode`
        # @return [String]
        attr_accessor :html_code
      
        # Whether HTML code is DCM-generated or manually entered. Set to true to ignore
        # changes to htmlCode. Applicable to the following creative types: FLASH_INPAGE
        # and HTML5_BANNER.
        # Corresponds to the JSON property `htmlCodeLocked`
        # @return [Boolean]
        attr_accessor :html_code_locked
        alias_method :html_code_locked?, :html_code_locked
      
        # ID of this creative. This is a read-only, auto-generated field. Applicable to
        # all creative types.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # Represents a DimensionValue resource.
        # Corresponds to the JSON property `idDimensionValue`
        # @return [Google::Apis::DfareportingV2_1::DimensionValue]
        attr_accessor :id_dimension_value
      
        # Identifies what kind of resource this is. Value: the fixed string "
        # dfareporting#creative".
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # Modification timestamp.
        # Corresponds to the JSON property `lastModifiedInfo`
        # @return [Google::Apis::DfareportingV2_1::LastModifiedInfo]
        attr_accessor :last_modified_info
      
        # Latest Studio trafficked creative ID associated with rich media and VPAID
        # creatives. This is a read-only field. Applicable to the following creative
        # types: all RICH_MEDIA, and all VPAID.
        # Corresponds to the JSON property `latestTraffickedCreativeId`
        # @return [String]
        attr_accessor :latest_trafficked_creative_id
      
        # Name of the creative. This is a required field and must be less than 256
        # characters long. Applicable to all creative types.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Override CSS value for rich media creatives. Applicable to the following
        # creative types: all RICH_MEDIA.
        # Corresponds to the JSON property `overrideCss`
        # @return [String]
        attr_accessor :override_css
      
        # URL of hosted image or hosted video or another ad tag. For
        # INSTREAM_VIDEO_REDIRECT creatives this is the in-stream video redirect URL.
        # The standard for a VAST (Video Ad Serving Template) ad response allows for a
        # redirect link to another VAST 2.0 or 3.0 call. This is a required field when
        # applicable. Applicable to the following creative types: INTERNAL_REDIRECT,
        # INTERSTITIAL_INTERNAL_REDIRECT, REDIRECT, and INSTREAM_VIDEO_REDIRECT
        # Corresponds to the JSON property `redirectUrl`
        # @return [String]
        attr_accessor :redirect_url
      
        # ID of current rendering version. This is a read-only field. Applicable to all
        # creative types.
        # Corresponds to the JSON property `renderingId`
        # @return [String]
        attr_accessor :rendering_id
      
        # Represents a DimensionValue resource.
        # Corresponds to the JSON property `renderingIdDimensionValue`
        # @return [Google::Apis::DfareportingV2_1::DimensionValue]
        attr_accessor :rendering_id_dimension_value
      
        # The minimum required Flash plugin version for this creative. For example, 11.2.
        # 202.235. This is a read-only field. Applicable to the following creative types:
        # all RICH_MEDIA, and all VPAID.
        # Corresponds to the JSON property `requiredFlashPluginVersion`
        # @return [String]
        attr_accessor :required_flash_plugin_version
      
        # The internal Flash version for this creative as calculated by DoubleClick
        # Studio. This is a read-only field. Applicable to the following creative types:
        # FLASH_INPAGE, ENHANCED_BANNER, all RICH_MEDIA, and all VPAID.
        # Corresponds to the JSON property `requiredFlashVersion`
        # @return [Fixnum]
        attr_accessor :required_flash_version
      
        # Represents the dimensions of ads, placements, creatives, or creative assets.
        # Corresponds to the JSON property `size`
        # @return [Google::Apis::DfareportingV2_1::Size]
        attr_accessor :size
      
        # Whether the user can choose to skip the creative. Applicable to the following
        # creative types: all INSTREAM_VIDEO and all VPAID.
        # Corresponds to the JSON property `skippable`
        # @return [Boolean]
        attr_accessor :skippable
        alias_method :skippable?, :skippable
      
        # Whether the creative is SSL-compliant. This is a read-only field. Applicable
        # to all creative types.
        # Corresponds to the JSON property `sslCompliant`
        # @return [Boolean]
        attr_accessor :ssl_compliant
        alias_method :ssl_compliant?, :ssl_compliant
      
        # Studio advertiser ID associated with rich media and VPAID creatives. This is a
        # read-only field. Applicable to the following creative types: all RICH_MEDIA,
        # and all VPAID.
        # Corresponds to the JSON property `studioAdvertiserId`
        # @return [String]
        attr_accessor :studio_advertiser_id
      
        # Studio creative ID associated with rich media and VPAID creatives. This is a
        # read-only field. Applicable to the following creative types: all RICH_MEDIA,
        # and all VPAID.
        # Corresponds to the JSON property `studioCreativeId`
        # @return [String]
        attr_accessor :studio_creative_id
      
        # Studio trafficked creative ID associated with rich media and VPAID creatives.
        # This is a read-only field. Applicable to the following creative types: all
        # RICH_MEDIA, and all VPAID.
        # Corresponds to the JSON property `studioTraffickedCreativeId`
        # @return [String]
        attr_accessor :studio_trafficked_creative_id
      
        # Subaccount ID of this creative. This field, if left unset, will be auto-
        # generated for both insert and update operations. Applicable to all creative
        # types.
        # Corresponds to the JSON property `subaccountId`
        # @return [String]
        attr_accessor :subaccount_id
      
        # Third-party URL used to record backup image impressions. Applicable to the
        # following creative types: all RICH_MEDIA
        # Corresponds to the JSON property `thirdPartyBackupImageImpressionsUrl`
        # @return [String]
        attr_accessor :third_party_backup_image_impressions_url
      
        # Third-party URL used to record rich media impressions. Applicable to the
        # following creative types: all RICH_MEDIA
        # Corresponds to the JSON property `thirdPartyRichMediaImpressionsUrl`
        # @return [String]
        attr_accessor :third_party_rich_media_impressions_url
      
        # Third-party URLs for tracking in-stream video creative events. Applicable to
        # the following creative types: all INSTREAM_VIDEO and all VPAID.
        # Corresponds to the JSON property `thirdPartyUrls`
        # @return [Array<Google::Apis::DfareportingV2_1::ThirdPartyTrackingUrl>]
        attr_accessor :third_party_urls
      
        # List of timer events configured for the creative. For ENHANCED_IMAGE creatives,
        # these are read-only and auto-generated from clickTags. Applicable to the
        # following creative types: ENHANCED_IMAGE, all RICH_MEDIA, and all VPAID.
        # Corresponds to the JSON property `timerCustomEvents`
        # @return [Array<Google::Apis::DfareportingV2_1::CreativeCustomEvent>]
        attr_accessor :timer_custom_events
      
        # Combined size of all creative assets. This is a read-only field. Applicable to
        # the following creative types: all RICH_MEDIA, and all VPAID.
        # Corresponds to the JSON property `totalFileSize`
        # @return [String]
        attr_accessor :total_file_size
      
        # Type of this creative.This is a required field. Applicable to all creative
        # types.
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        # The version number helps you keep track of multiple versions of your creative
        # in your reports. The version number will always be auto-generated during
        # insert operations to start at 1. For tracking creatives the version cannot be
        # incremented and will always remain at 1. For all other creative types the
        # version can be incremented only by 1 during update operations. In addition,
        # the version will be automatically incremented by 1 when undergoing Rich Media
        # creative merging. Applicable to all creative types.
        # Corresponds to the JSON property `version`
        # @return [Fixnum]
        attr_accessor :version
      
        # Description of the video ad. Applicable to the following creative types: all
        # INSTREAM_VIDEO and all VPAID.
        # Corresponds to the JSON property `videoDescription`
        # @return [String]
        attr_accessor :video_description
      
        # Creative video duration in seconds. This is a read-only field. Applicable to
        # the following creative types: INSTREAM_VIDEO, all RICH_MEDIA, and all VPAID.
        # Corresponds to the JSON property `videoDuration`
        # @return [Float]
        attr_accessor :video_duration
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @account_id = args[:account_id] unless args[:account_id].nil?
          @active = args[:active] unless args[:active].nil?
          @ad_parameters = args[:ad_parameters] unless args[:ad_parameters].nil?
          @ad_tag_keys = args[:ad_tag_keys] unless args[:ad_tag_keys].nil?
          @advertiser_id = args[:advertiser_id] unless args[:advertiser_id].nil?
          @allow_script_access = args[:allow_script_access] unless args[:allow_script_access].nil?
          @archived = args[:archived] unless args[:archived].nil?
          @artwork_type = args[:artwork_type] unless args[:artwork_type].nil?
          @authoring_tool = args[:authoring_tool] unless args[:authoring_tool].nil?
          @auto_advance_images = args[:auto_advance_images] unless args[:auto_advance_images].nil?
          @background_color = args[:background_color] unless args[:background_color].nil?
          @backup_image_click_through_url = args[:backup_image_click_through_url] unless args[:backup_image_click_through_url].nil?
          @backup_image_features = args[:backup_image_features] unless args[:backup_image_features].nil?
          @backup_image_reporting_label = args[:backup_image_reporting_label] unless args[:backup_image_reporting_label].nil?
          @backup_image_target_window = args[:backup_image_target_window] unless args[:backup_image_target_window].nil?
          @click_tags = args[:click_tags] unless args[:click_tags].nil?
          @commercial_id = args[:commercial_id] unless args[:commercial_id].nil?
          @companion_creatives = args[:companion_creatives] unless args[:companion_creatives].nil?
          @compatibility = args[:compatibility] unless args[:compatibility].nil?
          @convert_flash_to_html5 = args[:convert_flash_to_html5] unless args[:convert_flash_to_html5].nil?
          @counter_custom_events = args[:counter_custom_events] unless args[:counter_custom_events].nil?
          @creative_assets = args[:creative_assets] unless args[:creative_assets].nil?
          @creative_field_assignments = args[:creative_field_assignments] unless args[:creative_field_assignments].nil?
          @custom_key_values = args[:custom_key_values] unless args[:custom_key_values].nil?
          @exit_custom_events = args[:exit_custom_events] unless args[:exit_custom_events].nil?
          @fs_command = args[:fs_command] unless args[:fs_command].nil?
          @html_code = args[:html_code] unless args[:html_code].nil?
          @html_code_locked = args[:html_code_locked] unless args[:html_code_locked].nil?
          @id = args[:id] unless args[:id].nil?
          @id_dimension_value = args[:id_dimension_value] unless args[:id_dimension_value].nil?
          @kind = args[:kind] unless args[:kind].nil?
          @last_modified_info = args[:last_modified_info] unless args[:last_modified_info].nil?
          @latest_trafficked_creative_id = args[:latest_trafficked_creative_id] unless args[:latest_trafficked_creative_id].nil?
          @name = args[:name] unless args[:name].nil?
          @override_css = args[:override_css] unless args[:override_css].nil?
          @redirect_url = args[:redirect_url] unless args[:redirect_url].nil?
          @rendering_id = args[:rendering_id] unless args[:rendering_id].nil?
          @rendering_id_dimension_value = args[:rendering_id_dimension_value] unless args[:rendering_id_dimension_value].nil?
          @required_flash_plugin_version = args[:required_flash_plugin_version] unless args[:required_flash_plugin_version].nil?
          @required_flash_version = args[:required_flash_version] unless args[:required_flash_version].nil?
          @size = args[:size] unless args[:size].nil?
          @skippable = args[:skippable] unless args[:skippable].nil?
          @ssl_compliant = args[:ssl_compliant] unless args[:ssl_compliant].nil?
          @studio_advertiser_id = args[:studio_advertiser_id] unless args[:studio_advertiser_id].nil?
          @studio_creative_id = args[:studio_creative_id] unless args[:studio_creative_id].nil?
          @studio_trafficked_creative_id = args[:studio_trafficked_creative_id] unless args[:studio_trafficked_creative_id].nil?
          @subaccount_id = args[:subaccount_id] unless args[:subaccount_id].nil?
          @third_party_backup_image_impressions_url = args[:third_party_backup_image_impressions_url] unless args[:third_party_backup_image_impressions_url].nil?
          @third_party_rich_media_impressions_url = args[:third_party_rich_media_impressions_url] unless args[:third_party_rich_media_impressions_url].nil?
          @third_party_urls = args[:third_party_urls] unless args[:third_party_urls].nil?
          @timer_custom_events = args[:timer_custom_events] unless args[:timer_custom_events].nil?
          @total_file_size = args[:total_file_size] unless args[:total_file_size].nil?
          @type = args[:type] unless args[:type].nil?
          @version = args[:version] unless args[:version].nil?
          @video_description = args[:video_description] unless args[:video_description].nil?
          @video_duration = args[:video_duration] unless args[:video_duration].nil?
        end
      end
      
      # Creative Asset.
      class CreativeAsset
        include Google::Apis::Core::Hashable
      
        # Whether ActionScript3 is enabled for the flash asset. This is a read-only
        # field. Applicable to the following creative types: FLASH_INPAGE and
        # ENHANCED_BANNER.
        # Corresponds to the JSON property `actionScript3`
        # @return [Boolean]
        attr_accessor :action_script3
        alias_method :action_script3?, :action_script3
      
        # Whether the video asset is active. This is a read-only field for
        # VPAID_NON_LINEAR assets. Applicable to the following creative types:
        # INSTREAM_VIDEO and all VPAID.
        # Corresponds to the JSON property `active`
        # @return [Boolean]
        attr_accessor :active
        alias_method :active?, :active
      
        # Possible alignments for an asset. This is a read-only field. Applicable to the
        # following creative types: RICH_MEDIA_MULTI_FLOATING.
        # Corresponds to the JSON property `alignment`
        # @return [String]
        attr_accessor :alignment
      
        # Artwork type of rich media creative. This is a read-only field. Applicable to
        # the following creative types: all RICH_MEDIA.
        # Corresponds to the JSON property `artworkType`
        # @return [String]
        attr_accessor :artwork_type
      
        # Creative Asset ID.
        # Corresponds to the JSON property `assetIdentifier`
        # @return [Google::Apis::DfareportingV2_1::CreativeAssetId]
        attr_accessor :asset_identifier
      
        # Creative Custom Event.
        # Corresponds to the JSON property `backupImageExit`
        # @return [Google::Apis::DfareportingV2_1::CreativeCustomEvent]
        attr_accessor :backup_image_exit
      
        # Detected bit-rate for video asset. This is a read-only field. Applicable to
        # the following creative types: INSTREAM_VIDEO and all VPAID.
        # Corresponds to the JSON property `bitRate`
        # @return [Fixnum]
        attr_accessor :bit_rate
      
        # Rich media child asset type. This is a read-only field. Applicable to the
        # following creative types: all VPAID.
        # Corresponds to the JSON property `childAssetType`
        # @return [String]
        attr_accessor :child_asset_type
      
        # Represents the dimensions of ads, placements, creatives, or creative assets.
        # Corresponds to the JSON property `collapsedSize`
        # @return [Google::Apis::DfareportingV2_1::Size]
        attr_accessor :collapsed_size
      
        # Custom start time in seconds for making the asset visible. Applicable to the
        # following creative types: all RICH_MEDIA.
        # Corresponds to the JSON property `customStartTimeValue`
        # @return [Fixnum]
        attr_accessor :custom_start_time_value
      
        # List of feature dependencies for the creative asset that are detected by DCM.
        # Feature dependencies are features that a browser must be able to support in
        # order to render your HTML5 creative correctly. This is a read-only, auto-
        # generated field. Applicable to the following creative types: ENHANCED_BANNER
        # and HTML5_BANNER.
        # Corresponds to the JSON property `detectedFeatures`
        # @return [Array<String>]
        attr_accessor :detected_features
      
        # Type of rich media asset. This is a read-only field. Applicable to the
        # following creative types: all RICH_MEDIA.
        # Corresponds to the JSON property `displayType`
        # @return [String]
        attr_accessor :display_type
      
        # Duration in seconds for which an asset will be displayed. Applicable to the
        # following creative types: INSTREAM_VIDEO and VPAID_LINEAR.
        # Corresponds to the JSON property `duration`
        # @return [Fixnum]
        attr_accessor :duration
      
        # Duration type for which an asset will be displayed. Applicable to the
        # following creative types: all RICH_MEDIA.
        # Corresponds to the JSON property `durationType`
        # @return [String]
        attr_accessor :duration_type
      
        # Represents the dimensions of ads, placements, creatives, or creative assets.
        # Corresponds to the JSON property `expandedDimension`
        # @return [Google::Apis::DfareportingV2_1::Size]
        attr_accessor :expanded_dimension
      
        # File size associated with this creative asset. This is a read-only field.
        # Applicable to all but the following creative types: all REDIRECT and
        # TRACKING_TEXT.
        # Corresponds to the JSON property `fileSize`
        # @return [String]
        attr_accessor :file_size
      
        # Flash version of the asset. This is a read-only field. Applicable to the
        # following creative types: FLASH_INPAGE, ENHANCED_BANNER, all RICH_MEDIA, and
        # all VPAID.
        # Corresponds to the JSON property `flashVersion`
        # @return [Fixnum]
        attr_accessor :flash_version
      
        # Whether to hide Flash objects flag for an asset. Applicable to the following
        # creative types: all RICH_MEDIA.
        # Corresponds to the JSON property `hideFlashObjects`
        # @return [Boolean]
        attr_accessor :hide_flash_objects
        alias_method :hide_flash_objects?, :hide_flash_objects
      
        # Whether to hide selection boxes flag for an asset. Applicable to the following
        # creative types: all RICH_MEDIA.
        # Corresponds to the JSON property `hideSelectionBoxes`
        # @return [Boolean]
        attr_accessor :hide_selection_boxes
        alias_method :hide_selection_boxes?, :hide_selection_boxes
      
        # Whether the asset is horizontally locked. This is a read-only field.
        # Applicable to the following creative types: all RICH_MEDIA.
        # Corresponds to the JSON property `horizontallyLocked`
        # @return [Boolean]
        attr_accessor :horizontally_locked
        alias_method :horizontally_locked?, :horizontally_locked
      
        # Numeric ID of this creative asset. This is a required field and should not be
        # modified. Applicable to all but the following creative types: all REDIRECT and
        # TRACKING_TEXT.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # Detected MIME type for video asset. This is a read-only field. Applicable to
        # the following creative types: INSTREAM_VIDEO and all VPAID.
        # Corresponds to the JSON property `mimeType`
        # @return [String]
        attr_accessor :mime_type
      
        # Offset Position.
        # Corresponds to the JSON property `offset`
        # @return [Google::Apis::DfareportingV2_1::OffsetPosition]
        attr_accessor :offset
      
        # Whether the backup asset is original or changed by the user in DCM. Applicable
        # to the following creative types: all RICH_MEDIA.
        # Corresponds to the JSON property `originalBackup`
        # @return [Boolean]
        attr_accessor :original_backup
        alias_method :original_backup?, :original_backup
      
        # Offset Position.
        # Corresponds to the JSON property `position`
        # @return [Google::Apis::DfareportingV2_1::OffsetPosition]
        attr_accessor :position
      
        # Offset left unit for an asset. This is a read-only field. Applicable to the
        # following creative types: all RICH_MEDIA.
        # Corresponds to the JSON property `positionLeftUnit`
        # @return [String]
        attr_accessor :position_left_unit
      
        # Offset top unit for an asset. This is a read-only field if the asset
        # displayType is ASSET_DISPLAY_TYPE_OVERLAY. Applicable to the following
        # creative types: all RICH_MEDIA.
        # Corresponds to the JSON property `positionTopUnit`
        # @return [String]
        attr_accessor :position_top_unit
      
        # Progressive URL for video asset. This is a read-only field. Applicable to the
        # following creative types: INSTREAM_VIDEO and all VPAID.
        # Corresponds to the JSON property `progressiveServingUrl`
        # @return [String]
        attr_accessor :progressive_serving_url
      
        # Whether the asset pushes down other content. Applicable to the following
        # creative types: all RICH_MEDIA. Additionally, only applicable when the asset
        # offsets are 0, the collapsedSize.width matches size.width, and the
        # collapsedSize.height is less than size.height.
        # Corresponds to the JSON property `pushdown`
        # @return [Boolean]
        attr_accessor :pushdown
        alias_method :pushdown?, :pushdown
      
        # Pushdown duration in seconds for an asset. Must be between 0 and 9.99.
        # Applicable to the following creative types: all RICH_MEDIA.Additionally, only
        # applicable when the asset pushdown field is true, the offsets are 0, the
        # collapsedSize.width matches size.width, and the collapsedSize.height is less
        # than size.height.
        # Corresponds to the JSON property `pushdownDuration`
        # @return [Float]
        attr_accessor :pushdown_duration
      
        # Role of the asset in relation to creative. Applicable to all but the following
        # creative types: all REDIRECT and TRACKING_TEXT. This is a required field.
        # PRIMARY applies to ENHANCED_BANNER, FLASH_INPAGE, HTML5_BANNER, IMAGE,
        # IMAGE_GALLERY, all RICH_MEDIA (which may contain multiple primary assets), and
        # all VPAID creatives.
        # BACKUP_IMAGE applies to ENHANCED_BANNER, FLASH_INPAGE, HTML5_BANNER, all
        # RICH_MEDIA, and all VPAID creatives.
        # ADDITIONAL_IMAGE and ADDITIONAL_FLASH apply to FLASH_INPAGE creatives.
        # OTHER refers to assets from sources other than DCM, such as Studio uploaded
        # assets, applicable to all RICH_MEDIA and all VPAID creatives.
        # PARENT_VIDEO refers to videos uploaded by the user in DCM and is applicable to
        # INSTREAM_VIDEO and VPAID_LINEAR creatives.
        # TRANSCODED_VIDEO refers to videos transcoded by DCM from PARENT_VIDEO assets
        # and is applicable to INSTREAM_VIDEO and VPAID_LINEAR creatives.
        # ALTERNATE_VIDEO refers to the DCM representation of child asset videos from
        # Studio, and is applicable to VPAID_LINEAR creatives. These cannot be added or
        # removed within DCM.
        # For VPAID_LINEAR creatives, PARENT_VIDEO, TRANSCODED_VIDEO and ALTERNATE_VIDEO
        # assets that are marked active serve as backup in case the VPAID creative
        # cannot be served. Only PARENT_VIDEO assets can be added or removed for an
        # INSTREAM_VIDEO or VPAID_LINEAR creative.
        # Corresponds to the JSON property `role`
        # @return [String]
        attr_accessor :role
      
        # Represents the dimensions of ads, placements, creatives, or creative assets.
        # Corresponds to the JSON property `size`
        # @return [Google::Apis::DfareportingV2_1::Size]
        attr_accessor :size
      
        # Whether the asset is SSL-compliant. This is a read-only field. Applicable to
        # all but the following creative types: all REDIRECT and TRACKING_TEXT.
        # Corresponds to the JSON property `sslCompliant`
        # @return [Boolean]
        attr_accessor :ssl_compliant
        alias_method :ssl_compliant?, :ssl_compliant
      
        # Initial wait time type before making the asset visible. Applicable to the
        # following creative types: all RICH_MEDIA.
        # Corresponds to the JSON property `startTimeType`
        # @return [String]
        attr_accessor :start_time_type
      
        # Streaming URL for video asset. This is a read-only field. Applicable to the
        # following creative types: INSTREAM_VIDEO and all VPAID.
        # Corresponds to the JSON property `streamingServingUrl`
        # @return [String]
        attr_accessor :streaming_serving_url
      
        # Whether the asset is transparent. Applicable to the following creative types:
        # all RICH_MEDIA. Additionally, only applicable to HTML5 assets.
        # Corresponds to the JSON property `transparency`
        # @return [Boolean]
        attr_accessor :transparency
        alias_method :transparency?, :transparency
      
        # Whether the asset is vertically locked. This is a read-only field. Applicable
        # to the following creative types: all RICH_MEDIA.
        # Corresponds to the JSON property `verticallyLocked`
        # @return [Boolean]
        attr_accessor :vertically_locked
        alias_method :vertically_locked?, :vertically_locked
      
        # Detected video duration for video asset. This is a read-only field. Applicable
        # to the following creative types: INSTREAM_VIDEO and all VPAID.
        # Corresponds to the JSON property `videoDuration`
        # @return [Float]
        attr_accessor :video_duration
      
        # Window mode options for flash assets. Applicable to the following creative
        # types: FLASH_INPAGE, RICH_MEDIA_EXPANDING, RICH_MEDIA_IM_EXPAND,
        # RICH_MEDIA_INPAGE, and RICH_MEDIA_INPAGE_FLOATING.
        # Corresponds to the JSON property `windowMode`
        # @return [String]
        attr_accessor :window_mode
      
        # zIndex value of an asset. This is a read-only field. Applicable to the
        # following creative types: all RICH_MEDIA.Additionally, only applicable to
        # assets whose displayType is NOT one of the following types:
        # ASSET_DISPLAY_TYPE_INPAGE or ASSET_DISPLAY_TYPE_OVERLAY.
        # Corresponds to the JSON property `zIndex`
        # @return [Fixnum]
        attr_accessor :z_index
      
        # File name of zip file. This is a read-only field. Applicable to the following
        # creative types: HTML5_BANNER.
        # Corresponds to the JSON property `zipFilename`
        # @return [String]
        attr_accessor :zip_filename
      
        # Size of zip file. This is a read-only field. Applicable to the following
        # creative types: HTML5_BANNER.
        # Corresponds to the JSON property `zipFilesize`
        # @return [String]
        attr_accessor :zip_filesize
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @action_script3 = args[:action_script3] unless args[:action_script3].nil?
          @active = args[:active] unless args[:active].nil?
          @alignment = args[:alignment] unless args[:alignment].nil?
          @artwork_type = args[:artwork_type] unless args[:artwork_type].nil?
          @asset_identifier = args[:asset_identifier] unless args[:asset_identifier].nil?
          @backup_image_exit = args[:backup_image_exit] unless args[:backup_image_exit].nil?
          @bit_rate = args[:bit_rate] unless args[:bit_rate].nil?
          @child_asset_type = args[:child_asset_type] unless args[:child_asset_type].nil?
          @collapsed_size = args[:collapsed_size] unless args[:collapsed_size].nil?
          @custom_start_time_value = args[:custom_start_time_value] unless args[:custom_start_time_value].nil?
          @detected_features = args[:detected_features] unless args[:detected_features].nil?
          @display_type = args[:display_type] unless args[:display_type].nil?
          @duration = args[:duration] unless args[:duration].nil?
          @duration_type = args[:duration_type] unless args[:duration_type].nil?
          @expanded_dimension = args[:expanded_dimension] unless args[:expanded_dimension].nil?
          @file_size = args[:file_size] unless args[:file_size].nil?
          @flash_version = args[:flash_version] unless args[:flash_version].nil?
          @hide_flash_objects = args[:hide_flash_objects] unless args[:hide_flash_objects].nil?
          @hide_selection_boxes = args[:hide_selection_boxes] unless args[:hide_selection_boxes].nil?
          @horizontally_locked = args[:horizontally_locked] unless args[:horizontally_locked].nil?
          @id = args[:id] unless args[:id].nil?
          @mime_type = args[:mime_type] unless args[:mime_type].nil?
          @offset = args[:offset] unless args[:offset].nil?
          @original_backup = args[:original_backup] unless args[:original_backup].nil?
          @position = args[:position] unless args[:position].nil?
          @position_left_unit = args[:position_left_unit] unless args[:position_left_unit].nil?
          @position_top_unit = args[:position_top_unit] unless args[:position_top_unit].nil?
          @progressive_serving_url = args[:progressive_serving_url] unless args[:progressive_serving_url].nil?
          @pushdown = args[:pushdown] unless args[:pushdown].nil?
          @pushdown_duration = args[:pushdown_duration] unless args[:pushdown_duration].nil?
          @role = args[:role] unless args[:role].nil?
          @size = args[:size] unless args[:size].nil?
          @ssl_compliant = args[:ssl_compliant] unless args[:ssl_compliant].nil?
          @start_time_type = args[:start_time_type] unless args[:start_time_type].nil?
          @streaming_serving_url = args[:streaming_serving_url] unless args[:streaming_serving_url].nil?
          @transparency = args[:transparency] unless args[:transparency].nil?
          @vertically_locked = args[:vertically_locked] unless args[:vertically_locked].nil?
          @video_duration = args[:video_duration] unless args[:video_duration].nil?
          @window_mode = args[:window_mode] unless args[:window_mode].nil?
          @z_index = args[:z_index] unless args[:z_index].nil?
          @zip_filename = args[:zip_filename] unless args[:zip_filename].nil?
          @zip_filesize = args[:zip_filesize] unless args[:zip_filesize].nil?
        end
      end
      
      # Creative Asset ID.
      class CreativeAssetId
        include Google::Apis::Core::Hashable
      
        # Name of the creative asset. This is a required field while inserting an asset.
        # After insertion, this assetIdentifier is used to identify the uploaded asset.
        # Characters in the name must be alphanumeric or one of the following: ".-_ ".
        # Spaces are allowed.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Type of asset to upload. This is a required field. IMAGE is solely used for
        # IMAGE creatives. Other image assets should use HTML_IMAGE.
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @name = args[:name] unless args[:name].nil?
          @type = args[:type] unless args[:type].nil?
        end
      end
      
      # CreativeAssets contains properties of a creative asset file which will be
      # uploaded or has already been uploaded. Refer to the creative sample code for
      # how to upload assets and insert a creative.
      class CreativeAssetMetadata
        include Google::Apis::Core::Hashable
      
        # Creative Asset ID.
        # Corresponds to the JSON property `assetIdentifier`
        # @return [Google::Apis::DfareportingV2_1::CreativeAssetId]
        attr_accessor :asset_identifier
      
        # List of detected click tags for assets. This is a read-only auto-generated
        # field.
        # Corresponds to the JSON property `clickTags`
        # @return [Array<Google::Apis::DfareportingV2_1::ClickTag>]
        attr_accessor :click_tags
      
        # List of feature dependencies for the creative asset that are detected by DCM.
        # Feature dependencies are features that a browser must be able to support in
        # order to render your HTML5 creative correctly. This is a read-only, auto-
        # generated field.
        # Corresponds to the JSON property `detectedFeatures`
        # @return [Array<String>]
        attr_accessor :detected_features
      
        # Identifies what kind of resource this is. Value: the fixed string "
        # dfareporting#creativeAssetMetadata".
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # Rules validated during code generation that generated a warning. This is a
        # read-only, auto-generated field.
        # Possible values are:
        # - "CLICK_TAG_NON_TOP_LEVEL"
        # - "CLICK_TAG_MISSING"
        # - "CLICK_TAG_MORE_THAN_ONE"
        # - "CLICK_TAG_INVALID"
        # - "ORPHANED_ASSET"
        # - "PRIMARY_HTML_MISSING"
        # - "EXTERNAL_FILE_REFERENCED"
        # - "MRAID_REFERENCED"
        # - "ADMOB_REFERENCED"
        # - "FILE_TYPE_INVALID"
        # - "ZIP_INVALID"
        # - "LINKED_FILE_NOT_FOUND"
        # - "MAX_FLASH_VERSION_11"
        # - "NOT_SSL_COMPLIANT"
        # - "FILE_DETAIL_EMPTY"
        # - "ASSET_INVALID"
        # - "GWD_PROPERTIES_INVALID"
        # - "ENABLER_UNSUPPORTED_METHOD_DCM"
        # - "ASSET_FORMAT_UNSUPPORTED_DCM"
        # - "COMPONENT_UNSUPPORTED_DCM"
        # - "HTML5_FEATURE_UNSUPPORTED' "
        # Corresponds to the JSON property `warnedValidationRules`
        # @return [Array<String>]
        attr_accessor :warned_validation_rules
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @asset_identifier = args[:asset_identifier] unless args[:asset_identifier].nil?
          @click_tags = args[:click_tags] unless args[:click_tags].nil?
          @detected_features = args[:detected_features] unless args[:detected_features].nil?
          @kind = args[:kind] unless args[:kind].nil?
          @warned_validation_rules = args[:warned_validation_rules] unless args[:warned_validation_rules].nil?
        end
      end
      
      # Creative Assignment.
      class CreativeAssignment
        include Google::Apis::Core::Hashable
      
        # Whether this creative assignment is active. When true, the creative will be
        # included in the ad's rotation.
        # Corresponds to the JSON property `active`
        # @return [Boolean]
        attr_accessor :active
        alias_method :active?, :active
      
        # Whether applicable event tags should fire when this creative assignment is
        # rendered. If this value is unset when the ad is inserted or updated, it will
        # default to true for all creative types EXCEPT for INTERNAL_REDIRECT,
        # INTERSTITIAL_INTERNAL_REDIRECT, and INSTREAM_VIDEO.
        # Corresponds to the JSON property `applyEventTags`
        # @return [Boolean]
        attr_accessor :apply_event_tags
        alias_method :apply_event_tags?, :apply_event_tags
      
        # Click-through URL
        # Corresponds to the JSON property `clickThroughUrl`
        # @return [Google::Apis::DfareportingV2_1::ClickThroughUrl]
        attr_accessor :click_through_url
      
        # Companion creative overrides for this creative assignment. Applicable to video
        # ads.
        # Corresponds to the JSON property `companionCreativeOverrides`
        # @return [Array<Google::Apis::DfareportingV2_1::CompanionClickThroughOverride>]
        attr_accessor :companion_creative_overrides
      
        # Creative group assignments for this creative assignment. Only one assignment
        # per creative group number is allowed for a maximum of two assignments.
        # Corresponds to the JSON property `creativeGroupAssignments`
        # @return [Array<Google::Apis::DfareportingV2_1::CreativeGroupAssignment>]
        attr_accessor :creative_group_assignments
      
        # ID of the creative to be assigned. This is a required field.
        # Corresponds to the JSON property `creativeId`
        # @return [String]
        attr_accessor :creative_id
      
        # Represents a DimensionValue resource.
        # Corresponds to the JSON property `creativeIdDimensionValue`
        # @return [Google::Apis::DfareportingV2_1::DimensionValue]
        attr_accessor :creative_id_dimension_value
      
        # Date and time that the assigned creative should stop serving. Must be later
        # than the start time.
        # Corresponds to the JSON property `endTime`
        # @return [DateTime]
        attr_accessor :end_time
      
        # Rich media exit overrides for this creative assignment.
        # Applicable when the creative type is any of the following:
        # - RICH_MEDIA_INPAGE
        # - RICH_MEDIA_INPAGE_FLOATING
        # - RICH_MEDIA_IM_EXPAND
        # - RICH_MEDIA_EXPANDING
        # - RICH_MEDIA_INTERSTITIAL_FLOAT
        # - RICH_MEDIA_MOBILE_IN_APP
        # - RICH_MEDIA_MULTI_FLOATING
        # - RICH_MEDIA_PEEL_DOWN
        # - ADVANCED_BANNER
        # - VPAID_LINEAR
        # - VPAID_NON_LINEAR
        # Corresponds to the JSON property `richMediaExitOverrides`
        # @return [Array<Google::Apis::DfareportingV2_1::RichMediaExitOverride>]
        attr_accessor :rich_media_exit_overrides
      
        # Sequence number of the creative assignment, applicable when the rotation type
        # is CREATIVE_ROTATION_TYPE_SEQUENTIAL.
        # Corresponds to the JSON property `sequence`
        # @return [Fixnum]
        attr_accessor :sequence
      
        # Whether the creative to be assigned is SSL-compliant. This is a read-only
        # field that is auto-generated when the ad is inserted or updated.
        # Corresponds to the JSON property `sslCompliant`
        # @return [Boolean]
        attr_accessor :ssl_compliant
        alias_method :ssl_compliant?, :ssl_compliant
      
        # Date and time that the assigned creative should start serving.
        # Corresponds to the JSON property `startTime`
        # @return [DateTime]
        attr_accessor :start_time
      
        # Weight of the creative assignment, applicable when the rotation type is
        # CREATIVE_ROTATION_TYPE_RANDOM.
        # Corresponds to the JSON property `weight`
        # @return [Fixnum]
        attr_accessor :weight
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @active = args[:active] unless args[:active].nil?
          @apply_event_tags = args[:apply_event_tags] unless args[:apply_event_tags].nil?
          @click_through_url = args[:click_through_url] unless args[:click_through_url].nil?
          @companion_creative_overrides = args[:companion_creative_overrides] unless args[:companion_creative_overrides].nil?
          @creative_group_assignments = args[:creative_group_assignments] unless args[:creative_group_assignments].nil?
          @creative_id = args[:creative_id] unless args[:creative_id].nil?
          @creative_id_dimension_value = args[:creative_id_dimension_value] unless args[:creative_id_dimension_value].nil?
          @end_time = args[:end_time] unless args[:end_time].nil?
          @rich_media_exit_overrides = args[:rich_media_exit_overrides] unless args[:rich_media_exit_overrides].nil?
          @sequence = args[:sequence] unless args[:sequence].nil?
          @ssl_compliant = args[:ssl_compliant] unless args[:ssl_compliant].nil?
          @start_time = args[:start_time] unless args[:start_time].nil?
          @weight = args[:weight] unless args[:weight].nil?
        end
      end
      
      # Creative Custom Event.
      class CreativeCustomEvent
        include Google::Apis::Core::Hashable
      
        # Whether the event is active.
        # Corresponds to the JSON property `active`
        # @return [Boolean]
        attr_accessor :active
        alias_method :active?, :active
      
        # User-entered name for the event.
        # Corresponds to the JSON property `advertiserCustomEventName`
        # @return [String]
        attr_accessor :advertiser_custom_event_name
      
        # Type of the event. This is a read-only field.
        # Corresponds to the JSON property `advertiserCustomEventType`
        # @return [String]
        attr_accessor :advertiser_custom_event_type
      
        # Artwork label column, used to link events in DCM back to events in Studio.
        # This is a required field and should not be modified after insertion.
        # Corresponds to the JSON property `artworkLabel`
        # @return [String]
        attr_accessor :artwork_label
      
        # Artwork type used by the creative.This is a read-only field.
        # Corresponds to the JSON property `artworkType`
        # @return [String]
        attr_accessor :artwork_type
      
        # Exit URL of the event. This field is used only for exit events.
        # Corresponds to the JSON property `exitUrl`
        # @return [String]
        attr_accessor :exit_url
      
        # ID of this event. This is a required field and should not be modified after
        # insertion.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # Popup Window Properties.
        # Corresponds to the JSON property `popupWindowProperties`
        # @return [Google::Apis::DfareportingV2_1::PopupWindowProperties]
        attr_accessor :popup_window_properties
      
        # Target type used by the event.
        # Corresponds to the JSON property `targetType`
        # @return [String]
        attr_accessor :target_type
      
        # Video reporting ID, used to differentiate multiple videos in a single creative.
        # This is a read-only field.
        # Corresponds to the JSON property `videoReportingId`
        # @return [String]
        attr_accessor :video_reporting_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @active = args[:active] unless args[:active].nil?
          @advertiser_custom_event_name = args[:advertiser_custom_event_name] unless args[:advertiser_custom_event_name].nil?
          @advertiser_custom_event_type = args[:advertiser_custom_event_type] unless args[:advertiser_custom_event_type].nil?
          @artwork_label = args[:artwork_label] unless args[:artwork_label].nil?
          @artwork_type = args[:artwork_type] unless args[:artwork_type].nil?
          @exit_url = args[:exit_url] unless args[:exit_url].nil?
          @id = args[:id] unless args[:id].nil?
          @popup_window_properties = args[:popup_window_properties] unless args[:popup_window_properties].nil?
          @target_type = args[:target_type] unless args[:target_type].nil?
          @video_reporting_id = args[:video_reporting_id] unless args[:video_reporting_id].nil?
        end
      end
      
      # Contains properties of a creative field.
      class CreativeField
        include Google::Apis::Core::Hashable
      
        # Account ID of this creative field. This is a read-only field that can be left
        # blank.
        # Corresponds to the JSON property `accountId`
        # @return [String]
        attr_accessor :account_id
      
        # Advertiser ID of this creative field. This is a required field on insertion.
        # Corresponds to the JSON property `advertiserId`
        # @return [String]
        attr_accessor :advertiser_id
      
        # Represents a DimensionValue resource.
        # Corresponds to the JSON property `advertiserIdDimensionValue`
        # @return [Google::Apis::DfareportingV2_1::DimensionValue]
        attr_accessor :advertiser_id_dimension_value
      
        # ID of this creative field. This is a read-only, auto-generated field.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # Identifies what kind of resource this is. Value: the fixed string "
        # dfareporting#creativeField".
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # Name of this creative field. This is a required field and must be less than
        # 256 characters long and unique among creative fields of the same advertiser.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Subaccount ID of this creative field. This is a read-only field that can be
        # left blank.
        # Corresponds to the JSON property `subaccountId`
        # @return [String]
        attr_accessor :subaccount_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @account_id = args[:account_id] unless args[:account_id].nil?
          @advertiser_id = args[:advertiser_id] unless args[:advertiser_id].nil?
          @advertiser_id_dimension_value = args[:advertiser_id_dimension_value] unless args[:advertiser_id_dimension_value].nil?
          @id = args[:id] unless args[:id].nil?
          @kind = args[:kind] unless args[:kind].nil?
          @name = args[:name] unless args[:name].nil?
          @subaccount_id = args[:subaccount_id] unless args[:subaccount_id].nil?
        end
      end
      
      # Creative Field Assignment.
      class CreativeFieldAssignment
        include Google::Apis::Core::Hashable
      
        # ID of the creative field.
        # Corresponds to the JSON property `creativeFieldId`
        # @return [String]
        attr_accessor :creative_field_id
      
        # ID of the creative field value.
        # Corresponds to the JSON property `creativeFieldValueId`
        # @return [String]
        attr_accessor :creative_field_value_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @creative_field_id = args[:creative_field_id] unless args[:creative_field_id].nil?
          @creative_field_value_id = args[:creative_field_value_id] unless args[:creative_field_value_id].nil?
        end
      end
      
      # Contains properties of a creative field value.
      class CreativeFieldValue
        include Google::Apis::Core::Hashable
      
        # ID of this creative field value. This is a read-only, auto-generated field.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # Identifies what kind of resource this is. Value: the fixed string "
        # dfareporting#creativeFieldValue".
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # Value of this creative field value. It needs to be less than 256 characters in
        # length and unique per creative field.
        # Corresponds to the JSON property `value`
        # @return [String]
        attr_accessor :value
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @id = args[:id] unless args[:id].nil?
          @kind = args[:kind] unless args[:kind].nil?
          @value = args[:value] unless args[:value].nil?
        end
      end
      
      # Creative Field Value List Response
      class ListCreativeFieldValuesResponse
        include Google::Apis::Core::Hashable
      
        # Creative field value collection.
        # Corresponds to the JSON property `creativeFieldValues`
        # @return [Array<Google::Apis::DfareportingV2_1::CreativeFieldValue>]
        attr_accessor :creative_field_values
      
        # Identifies what kind of resource this is. Value: the fixed string "
        # dfareporting#creativeFieldValuesListResponse".
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # Pagination token to be used for the next list operation.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @creative_field_values = args[:creative_field_values] unless args[:creative_field_values].nil?
          @kind = args[:kind] unless args[:kind].nil?
          @next_page_token = args[:next_page_token] unless args[:next_page_token].nil?
        end
      end
      
      # Creative Field List Response
      class ListCreativeFieldsResponse
        include Google::Apis::Core::Hashable
      
        # Creative field collection.
        # Corresponds to the JSON property `creativeFields`
        # @return [Array<Google::Apis::DfareportingV2_1::CreativeField>]
        attr_accessor :creative_fields
      
        # Identifies what kind of resource this is. Value: the fixed string "
        # dfareporting#creativeFieldsListResponse".
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # Pagination token to be used for the next list operation.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @creative_fields = args[:creative_fields] unless args[:creative_fields].nil?
          @kind = args[:kind] unless args[:kind].nil?
          @next_page_token = args[:next_page_token] unless args[:next_page_token].nil?
        end
      end
      
      # Contains properties of a creative group.
      class CreativeGroup
        include Google::Apis::Core::Hashable
      
        # Account ID of this creative group. This is a read-only field that can be left
        # blank.
        # Corresponds to the JSON property `accountId`
        # @return [String]
        attr_accessor :account_id
      
        # Advertiser ID of this creative group. This is a required field on insertion.
        # Corresponds to the JSON property `advertiserId`
        # @return [String]
        attr_accessor :advertiser_id
      
        # Represents a DimensionValue resource.
        # Corresponds to the JSON property `advertiserIdDimensionValue`
        # @return [Google::Apis::DfareportingV2_1::DimensionValue]
        attr_accessor :advertiser_id_dimension_value
      
        # Subgroup of the creative group. Assign your creative groups to one of the
        # following subgroups in order to filter or manage them more easily. This field
        # is required on insertion and is read-only after insertion.
        # Acceptable values are:
        # - 1
        # - 2
        # Corresponds to the JSON property `groupNumber`
        # @return [Fixnum]
        attr_accessor :group_number
      
        # ID of this creative group. This is a read-only, auto-generated field.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # Identifies what kind of resource this is. Value: the fixed string "
        # dfareporting#creativeGroup".
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # Name of this creative group. This is a required field and must be less than
        # 256 characters long and unique among creative groups of the same advertiser.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Subaccount ID of this creative group. This is a read-only field that can be
        # left blank.
        # Corresponds to the JSON property `subaccountId`
        # @return [String]
        attr_accessor :subaccount_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @account_id = args[:account_id] unless args[:account_id].nil?
          @advertiser_id = args[:advertiser_id] unless args[:advertiser_id].nil?
          @advertiser_id_dimension_value = args[:advertiser_id_dimension_value] unless args[:advertiser_id_dimension_value].nil?
          @group_number = args[:group_number] unless args[:group_number].nil?
          @id = args[:id] unless args[:id].nil?
          @kind = args[:kind] unless args[:kind].nil?
          @name = args[:name] unless args[:name].nil?
          @subaccount_id = args[:subaccount_id] unless args[:subaccount_id].nil?
        end
      end
      
      # Creative Group Assignment.
      class CreativeGroupAssignment
        include Google::Apis::Core::Hashable
      
        # ID of the creative group to be assigned.
        # Corresponds to the JSON property `creativeGroupId`
        # @return [String]
        attr_accessor :creative_group_id
      
        # Creative group number of the creative group assignment.
        # Corresponds to the JSON property `creativeGroupNumber`
        # @return [String]
        attr_accessor :creative_group_number
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @creative_group_id = args[:creative_group_id] unless args[:creative_group_id].nil?
          @creative_group_number = args[:creative_group_number] unless args[:creative_group_number].nil?
        end
      end
      
      # Creative Group List Response
      class ListCreativeGroupsResponse
        include Google::Apis::Core::Hashable
      
        # Creative group collection.
        # Corresponds to the JSON property `creativeGroups`
        # @return [Array<Google::Apis::DfareportingV2_1::CreativeGroup>]
        attr_accessor :creative_groups
      
        # Identifies what kind of resource this is. Value: the fixed string "
        # dfareporting#creativeGroupsListResponse".
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # Pagination token to be used for the next list operation.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @creative_groups = args[:creative_groups] unless args[:creative_groups].nil?
          @kind = args[:kind] unless args[:kind].nil?
          @next_page_token = args[:next_page_token] unless args[:next_page_token].nil?
        end
      end
      
      # Creative optimization settings.
      class CreativeOptimizationConfiguration
        include Google::Apis::Core::Hashable
      
        # ID of this creative optimization config. This field is auto-generated when the
        # campaign is inserted or updated. It can be null for existing campaigns.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # Name of this creative optimization config. This is a required field and must
        # be less than 129 characters long.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # List of optimization activities associated with this configuration.
        # Corresponds to the JSON property `optimizationActivitys`
        # @return [Array<Google::Apis::DfareportingV2_1::OptimizationActivity>]
        attr_accessor :optimization_activitys
      
        # Optimization model for this configuration.
        # Corresponds to the JSON property `optimizationModel`
        # @return [String]
        attr_accessor :optimization_model
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @id = args[:id] unless args[:id].nil?
          @name = args[:name] unless args[:name].nil?
          @optimization_activitys = args[:optimization_activitys] unless args[:optimization_activitys].nil?
          @optimization_model = args[:optimization_model] unless args[:optimization_model].nil?
        end
      end
      
      # Creative Rotation.
      class CreativeRotation
        include Google::Apis::Core::Hashable
      
        # Creative assignments in this creative rotation.
        # Corresponds to the JSON property `creativeAssignments`
        # @return [Array<Google::Apis::DfareportingV2_1::CreativeAssignment>]
        attr_accessor :creative_assignments
      
        # Creative optimization configuration that is used by this ad. It should refer
        # to one of the existing optimization configurations in the ad's campaign. If it
        # is unset or set to 0, then the campaign's default optimization configuration
        # will be used for this ad.
        # Corresponds to the JSON property `creativeOptimizationConfigurationId`
        # @return [String]
        attr_accessor :creative_optimization_configuration_id
      
        # Type of creative rotation. Can be used to specify whether to use sequential or
        # random rotation.
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        # Strategy for calculating weights. Used with CREATIVE_ROTATION_TYPE_RANDOM.
        # Corresponds to the JSON property `weightCalculationStrategy`
        # @return [String]
        attr_accessor :weight_calculation_strategy
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @creative_assignments = args[:creative_assignments] unless args[:creative_assignments].nil?
          @creative_optimization_configuration_id = args[:creative_optimization_configuration_id] unless args[:creative_optimization_configuration_id].nil?
          @type = args[:type] unless args[:type].nil?
          @weight_calculation_strategy = args[:weight_calculation_strategy] unless args[:weight_calculation_strategy].nil?
        end
      end
      
      # Creative Settings
      class CreativeSettings
        include Google::Apis::Core::Hashable
      
        # Header text for iFrames for this site. Must be less than or equal to 2000
        # characters long.
        # Corresponds to the JSON property `iFrameFooter`
        # @return [String]
        attr_accessor :i_frame_footer
      
        # Header text for iFrames for this site. Must be less than or equal to 2000
        # characters long.
        # Corresponds to the JSON property `iFrameHeader`
        # @return [String]
        attr_accessor :i_frame_header
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @i_frame_footer = args[:i_frame_footer] unless args[:i_frame_footer].nil?
          @i_frame_header = args[:i_frame_header] unless args[:i_frame_header].nil?
        end
      end
      
      # Creative List Response
      class ListCreativesResponse
        include Google::Apis::Core::Hashable
      
        # Creative collection.
        # Corresponds to the JSON property `creatives`
        # @return [Array<Google::Apis::DfareportingV2_1::Creative>]
        attr_accessor :creatives
      
        # Identifies what kind of resource this is. Value: the fixed string "
        # dfareporting#creativesListResponse".
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # Pagination token to be used for the next list operation.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @creatives = args[:creatives] unless args[:creatives].nil?
          @kind = args[:kind] unless args[:kind].nil?
          @next_page_token = args[:next_page_token] unless args[:next_page_token].nil?
        end
      end
      
      # Represents fields that are compatible to be selected for a report of type "
      # CROSS_DIMENSION_REACH".
      class CrossDimensionReachReportCompatibleFields
        include Google::Apis::Core::Hashable
      
        # Dimensions which are compatible to be selected in the "breakdown" section of
        # the report.
        # Corresponds to the JSON property `breakdown`
        # @return [Array<Google::Apis::DfareportingV2_1::Dimension>]
        attr_accessor :breakdown
      
        # Dimensions which are compatible to be selected in the "dimensionFilters"
        # section of the report.
        # Corresponds to the JSON property `dimensionFilters`
        # @return [Array<Google::Apis::DfareportingV2_1::Dimension>]
        attr_accessor :dimension_filters
      
        # The kind of resource this is, in this case dfareporting#
        # crossDimensionReachReportCompatibleFields.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # Metrics which are compatible to be selected in the "metricNames" section of
        # the report.
        # Corresponds to the JSON property `metrics`
        # @return [Array<Google::Apis::DfareportingV2_1::Metric>]
        attr_accessor :metrics
      
        # Metrics which are compatible to be selected in the "overlapMetricNames"
        # section of the report.
        # Corresponds to the JSON property `overlapMetrics`
        # @return [Array<Google::Apis::DfareportingV2_1::Metric>]
        attr_accessor :overlap_metrics
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @breakdown = args[:breakdown] unless args[:breakdown].nil?
          @dimension_filters = args[:dimension_filters] unless args[:dimension_filters].nil?
          @kind = args[:kind] unless args[:kind].nil?
          @metrics = args[:metrics] unless args[:metrics].nil?
          @overlap_metrics = args[:overlap_metrics] unless args[:overlap_metrics].nil?
        end
      end
      
      # Represents a Custom Rich Media Events group.
      class CustomRichMediaEvents
        include Google::Apis::Core::Hashable
      
        # List of custom rich media event IDs. Dimension values must be all of type dfa:
        # richMediaEventTypeIdAndName.
        # Corresponds to the JSON property `filteredEventIds`
        # @return [Array<Google::Apis::DfareportingV2_1::DimensionValue>]
        attr_accessor :filtered_event_ids
      
        # The kind of resource this is, in this case dfareporting#customRichMediaEvents.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @filtered_event_ids = args[:filtered_event_ids] unless args[:filtered_event_ids].nil?
          @kind = args[:kind] unless args[:kind].nil?
        end
      end
      
      # Represents a date range.
      class DateRange
        include Google::Apis::Core::Hashable
      
        # The end date of the date range, inclusive. A string of the format: "yyyy-MM-dd"
        # .
        # Corresponds to the JSON property `endDate`
        # @return [Date]
        attr_accessor :end_date
      
        # The kind of resource this is, in this case dfareporting#dateRange.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # The date range relative to the date of when the report is run.
        # Corresponds to the JSON property `relativeDateRange`
        # @return [String]
        attr_accessor :relative_date_range
      
        # The start date of the date range, inclusive. A string of the format: "yyyy-MM-
        # dd".
        # Corresponds to the JSON property `startDate`
        # @return [Date]
        attr_accessor :start_date
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @end_date = args[:end_date] unless args[:end_date].nil?
          @kind = args[:kind] unless args[:kind].nil?
          @relative_date_range = args[:relative_date_range] unless args[:relative_date_range].nil?
          @start_date = args[:start_date] unless args[:start_date].nil?
        end
      end
      
      # Day Part Targeting.
      class DayPartTargeting
        include Google::Apis::Core::Hashable
      
        # Days of the week when the ad will serve.
        # Acceptable values are:
        # - "SUNDAY"
        # - "MONDAY"
        # - "TUESDAY"
        # - "WEDNESDAY"
        # - "THURSDAY"
        # - "FRIDAY"
        # - "SATURDAY"
        # Corresponds to the JSON property `daysOfWeek`
        # @return [Array<String>]
        attr_accessor :days_of_week
      
        # Hours of the day when the ad will serve. Must be an integer between 0 and 23 (
        # inclusive), where 0 is midnight to 1 AM, and 23 is 11 PM to midnight. Can be
        # specified with days of week, in which case the ad would serve during these
        # hours on the specified days. For example, if Monday, Wednesday, Friday are the
        # days of week specified and 9-10am, 3-5pm (hours 9, 15, and 16) is specified,
        # the ad would serve Monday, Wednesdays, and Fridays at 9-10am and 3-5pm.
        # Corresponds to the JSON property `hoursOfDay`
        # @return [Array<Fixnum>]
        attr_accessor :hours_of_day
      
        # Whether or not to use the user's local time. If false, the America/New York
        # time zone applies.
        # Corresponds to the JSON property `userLocalTime`
        # @return [Boolean]
        attr_accessor :user_local_time
        alias_method :user_local_time?, :user_local_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @days_of_week = args[:days_of_week] unless args[:days_of_week].nil?
          @hours_of_day = args[:hours_of_day] unless args[:hours_of_day].nil?
          @user_local_time = args[:user_local_time] unless args[:user_local_time].nil?
        end
      end
      
      # Properties of inheriting and overriding the default click-through event tag. A
      # campaign may override the event tag defined at the advertiser level, and an ad
      # may also override the campaign's setting further.
      class DefaultClickThroughEventTagProperties
        include Google::Apis::Core::Hashable
      
        # ID of the click-through event tag to apply to all ads in this entity's scope.
        # Corresponds to the JSON property `defaultClickThroughEventTagId`
        # @return [String]
        attr_accessor :default_click_through_event_tag_id
      
        # Whether this entity should override the inherited default click-through event
        # tag with its own defined value.
        # Corresponds to the JSON property `overrideInheritedEventTag`
        # @return [Boolean]
        attr_accessor :override_inherited_event_tag
        alias_method :override_inherited_event_tag?, :override_inherited_event_tag
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @default_click_through_event_tag_id = args[:default_click_through_event_tag_id] unless args[:default_click_through_event_tag_id].nil?
          @override_inherited_event_tag = args[:override_inherited_event_tag] unless args[:override_inherited_event_tag].nil?
        end
      end
      
      # Delivery Schedule.
      class DeliverySchedule
        include Google::Apis::Core::Hashable
      
        # Frequency Cap.
        # Corresponds to the JSON property `frequencyCap`
        # @return [Google::Apis::DfareportingV2_1::FrequencyCap]
        attr_accessor :frequency_cap
      
        # Whether or not hard cutoff is enabled. If true, the ad will not serve after
        # the end date and time. Otherwise the ad will continue to be served until it
        # has reached its delivery goals.
        # Corresponds to the JSON property `hardCutoff`
        # @return [Boolean]
        attr_accessor :hard_cutoff
        alias_method :hard_cutoff?, :hard_cutoff
      
        # Impression ratio for this ad. This ratio determines how often each ad is
        # served relative to the others. For example, if ad A has an impression ratio of
        # 1 and ad B has an impression ratio of 3, then DCM will serve ad B three times
        # as often as ad A. Must be between 1 and 10.
        # Corresponds to the JSON property `impressionRatio`
        # @return [String]
        attr_accessor :impression_ratio
      
        # Serving priority of an ad, with respect to other ads. The lower the priority
        # number, the greater the priority with which it is served.
        # Corresponds to the JSON property `priority`
        # @return [String]
        attr_accessor :priority
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @frequency_cap = args[:frequency_cap] unless args[:frequency_cap].nil?
          @hard_cutoff = args[:hard_cutoff] unless args[:hard_cutoff].nil?
          @impression_ratio = args[:impression_ratio] unless args[:impression_ratio].nil?
          @priority = args[:priority] unless args[:priority].nil?
        end
      end
      
      # DFP Settings
      class DfpSettings
        include Google::Apis::Core::Hashable
      
        # DFP network code for this directory site.
        # Corresponds to the JSON property `dfp_network_code`
        # @return [String]
        attr_accessor :dfp_network_code
      
        # DFP network name for this directory site.
        # Corresponds to the JSON property `dfp_network_name`
        # @return [String]
        attr_accessor :dfp_network_name
      
        # Whether this directory site accepts programmatic placements.
        # Corresponds to the JSON property `programmaticPlacementAccepted`
        # @return [Boolean]
        attr_accessor :programmatic_placement_accepted
        alias_method :programmatic_placement_accepted?, :programmatic_placement_accepted
      
        # Whether this directory site accepts publisher-paid tags.
        # Corresponds to the JSON property `pubPaidPlacementAccepted`
        # @return [Boolean]
        attr_accessor :pub_paid_placement_accepted
        alias_method :pub_paid_placement_accepted?, :pub_paid_placement_accepted
      
        # Whether this directory site is available only via DoubleClick Publisher Portal.
        # Corresponds to the JSON property `publisherPortalOnly`
        # @return [Boolean]
        attr_accessor :publisher_portal_only
        alias_method :publisher_portal_only?, :publisher_portal_only
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @dfp_network_code = args[:dfp_network_code] unless args[:dfp_network_code].nil?
          @dfp_network_name = args[:dfp_network_name] unless args[:dfp_network_name].nil?
          @programmatic_placement_accepted = args[:programmatic_placement_accepted] unless args[:programmatic_placement_accepted].nil?
          @pub_paid_placement_accepted = args[:pub_paid_placement_accepted] unless args[:pub_paid_placement_accepted].nil?
          @publisher_portal_only = args[:publisher_portal_only] unless args[:publisher_portal_only].nil?
        end
      end
      
      # Represents a dimension.
      class Dimension
        include Google::Apis::Core::Hashable
      
        # The kind of resource this is, in this case dfareporting#dimension.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # The dimension name, e.g. dfa:advertiser
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @kind = args[:kind] unless args[:kind].nil?
          @name = args[:name] unless args[:name].nil?
        end
      end
      
      # Represents a dimension filter.
      class DimensionFilter
        include Google::Apis::Core::Hashable
      
        # The name of the dimension to filter.
        # Corresponds to the JSON property `dimensionName`
        # @return [String]
        attr_accessor :dimension_name
      
        # The kind of resource this is, in this case dfareporting#dimensionFilter.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # The value of the dimension to filter.
        # Corresponds to the JSON property `value`
        # @return [String]
        attr_accessor :value
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @dimension_name = args[:dimension_name] unless args[:dimension_name].nil?
          @kind = args[:kind] unless args[:kind].nil?
          @value = args[:value] unless args[:value].nil?
        end
      end
      
      # Represents a DimensionValue resource.
      class DimensionValue
        include Google::Apis::Core::Hashable
      
        # The name of the dimension.
        # Corresponds to the JSON property `dimensionName`
        # @return [String]
        attr_accessor :dimension_name
      
        # The eTag of this response for caching purposes.
        # Corresponds to the JSON property `etag`
        # @return [String]
        attr_accessor :etag
      
        # The ID associated with the value if available.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # The kind of resource this is, in this case dfareporting#dimensionValue.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # Determines how the 'value' field is matched when filtering. If not specified,
        # defaults to EXACT. If set to WILDCARD_EXPRESSION, '*' is allowed as a
        # placeholder for variable length character sequences, and it can be escaped
        # with a backslash. Note, only paid search dimensions ('dfa:paidSearch*') allow
        # a matchType other than EXACT.
        # Corresponds to the JSON property `matchType`
        # @return [String]
        attr_accessor :match_type
      
        # The value of the dimension.
        # Corresponds to the JSON property `value`
        # @return [String]
        attr_accessor :value
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @dimension_name = args[:dimension_name] unless args[:dimension_name].nil?
          @etag = args[:etag] unless args[:etag].nil?
          @id = args[:id] unless args[:id].nil?
          @kind = args[:kind] unless args[:kind].nil?
          @match_type = args[:match_type] unless args[:match_type].nil?
          @value = args[:value] unless args[:value].nil?
        end
      end
      
      # Represents the list of DimensionValue resources.
      class DimensionValueList
        include Google::Apis::Core::Hashable
      
        # The eTag of this response for caching purposes.
        # Corresponds to the JSON property `etag`
        # @return [String]
        attr_accessor :etag
      
        # The dimension values returned in this response.
        # Corresponds to the JSON property `items`
        # @return [Array<Google::Apis::DfareportingV2_1::DimensionValue>]
        attr_accessor :items
      
        # The kind of list this is, in this case dfareporting#dimensionValueList.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # Continuation token used to page through dimension values. To retrieve the next
        # page of results, set the next request's "pageToken" to the value of this field.
        # The page token is only valid for a limited amount of time and should not be
        # persisted.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @etag = args[:etag] unless args[:etag].nil?
          @items = args[:items] unless args[:items].nil?
          @kind = args[:kind] unless args[:kind].nil?
          @next_page_token = args[:next_page_token] unless args[:next_page_token].nil?
        end
      end
      
      # Represents a DimensionValuesRequest.
      class DimensionValueRequest
        include Google::Apis::Core::Hashable
      
        # The name of the dimension for which values should be requested.
        # Corresponds to the JSON property `dimensionName`
        # @return [String]
        attr_accessor :dimension_name
      
        # The end date of the date range for which to retrieve dimension values. A
        # string of the format "yyyy-MM-dd".
        # Corresponds to the JSON property `endDate`
        # @return [Date]
        attr_accessor :end_date
      
        # The list of filters by which to filter values. The filters are ANDed.
        # Corresponds to the JSON property `filters`
        # @return [Array<Google::Apis::DfareportingV2_1::DimensionFilter>]
        attr_accessor :filters
      
        # The kind of request this is, in this case dfareporting#dimensionValueRequest.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # The start date of the date range for which to retrieve dimension values. A
        # string of the format "yyyy-MM-dd".
        # Corresponds to the JSON property `startDate`
        # @return [Date]
        attr_accessor :start_date
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @dimension_name = args[:dimension_name] unless args[:dimension_name].nil?
          @end_date = args[:end_date] unless args[:end_date].nil?
          @filters = args[:filters] unless args[:filters].nil?
          @kind = args[:kind] unless args[:kind].nil?
          @start_date = args[:start_date] unless args[:start_date].nil?
        end
      end
      
      # DirectorySites contains properties of a website from the Site Directory. Sites
      # need to be added to an account via the Sites resource before they can be
      # assigned to a placement.
      class DirectorySite
        include Google::Apis::Core::Hashable
      
        # Whether this directory site is active.
        # Corresponds to the JSON property `active`
        # @return [Boolean]
        attr_accessor :active
        alias_method :active?, :active
      
        # Directory site contacts.
        # Corresponds to the JSON property `contactAssignments`
        # @return [Array<Google::Apis::DfareportingV2_1::DirectorySiteContactAssignment>]
        attr_accessor :contact_assignments
      
        # Country ID of this directory site.
        # Corresponds to the JSON property `countryId`
        # @return [String]
        attr_accessor :country_id
      
        # Currency ID of this directory site.
        # Possible values are:
        # - "1" for USD
        # - "2" for GBP
        # - "3" for ESP
        # - "4" for SEK
        # - "5" for CAD
        # - "6" for JPY
        # - "7" for DEM
        # - "8" for AUD
        # - "9" for FRF
        # - "10" for ITL
        # - "11" for DKK
        # - "12" for NOK
        # - "13" for FIM
        # - "14" for ZAR
        # - "15" for IEP
        # - "16" for NLG
        # - "17" for EUR
        # - "18" for KRW
        # - "19" for TWD
        # - "20" for SGD
        # - "21" for CNY
        # - "22" for HKD
        # - "23" for NZD
        # - "24" for MYR
        # - "25" for BRL
        # - "26" for PTE
        # - "27" for MXP
        # - "28" for CLP
        # - "29" for TRY
        # - "30" for ARS
        # - "31" for PEN
        # - "32" for ILS
        # - "33" for CHF
        # - "34" for VEF
        # - "35" for COP
        # - "36" for GTQ
        # - "37" for PLN
        # - "39" for INR
        # - "40" for THB
        # Corresponds to the JSON property `currencyId`
        # @return [String]
        attr_accessor :currency_id
      
        # Description of this directory site.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # ID of this directory site. This is a read-only, auto-generated field.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # Represents a DimensionValue resource.
        # Corresponds to the JSON property `idDimensionValue`
        # @return [Google::Apis::DfareportingV2_1::DimensionValue]
        attr_accessor :id_dimension_value
      
        # Tag types for regular placements.
        # Acceptable values are:
        # - "STANDARD"
        # - "IFRAME_JAVASCRIPT_INPAGE"
        # - "INTERNAL_REDIRECT_INPAGE"
        # - "JAVASCRIPT_INPAGE"
        # Corresponds to the JSON property `inpageTagFormats`
        # @return [Array<String>]
        attr_accessor :inpage_tag_formats
      
        # Tag types for interstitial placements.
        # Acceptable values are:
        # - "IFRAME_JAVASCRIPT_INTERSTITIAL"
        # - "INTERNAL_REDIRECT_INTERSTITIAL"
        # - "JAVASCRIPT_INTERSTITIAL"
        # Corresponds to the JSON property `interstitialTagFormats`
        # @return [Array<String>]
        attr_accessor :interstitial_tag_formats
      
        # Identifies what kind of resource this is. Value: the fixed string "
        # dfareporting#directorySite".
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # Name of this directory site.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Parent directory site ID.
        # Corresponds to the JSON property `parentId`
        # @return [String]
        attr_accessor :parent_id
      
        # Directory Site Settings
        # Corresponds to the JSON property `settings`
        # @return [Google::Apis::DfareportingV2_1::DirectorySiteSettings]
        attr_accessor :settings
      
        # URL of this directory site.
        # Corresponds to the JSON property `url`
        # @return [String]
        attr_accessor :url
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @active = args[:active] unless args[:active].nil?
          @contact_assignments = args[:contact_assignments] unless args[:contact_assignments].nil?
          @country_id = args[:country_id] unless args[:country_id].nil?
          @currency_id = args[:currency_id] unless args[:currency_id].nil?
          @description = args[:description] unless args[:description].nil?
          @id = args[:id] unless args[:id].nil?
          @id_dimension_value = args[:id_dimension_value] unless args[:id_dimension_value].nil?
          @inpage_tag_formats = args[:inpage_tag_formats] unless args[:inpage_tag_formats].nil?
          @interstitial_tag_formats = args[:interstitial_tag_formats] unless args[:interstitial_tag_formats].nil?
          @kind = args[:kind] unless args[:kind].nil?
          @name = args[:name] unless args[:name].nil?
          @parent_id = args[:parent_id] unless args[:parent_id].nil?
          @settings = args[:settings] unless args[:settings].nil?
          @url = args[:url] unless args[:url].nil?
        end
      end
      
      # Contains properties of a Site Directory contact.
      class DirectorySiteContact
        include Google::Apis::Core::Hashable
      
        # Address of this directory site contact.
        # Corresponds to the JSON property `address`
        # @return [String]
        attr_accessor :address
      
        # Email address of this directory site contact.
        # Corresponds to the JSON property `email`
        # @return [String]
        attr_accessor :email
      
        # First name of this directory site contact.
        # Corresponds to the JSON property `firstName`
        # @return [String]
        attr_accessor :first_name
      
        # ID of this directory site contact. This is a read-only, auto-generated field.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # Identifies what kind of resource this is. Value: the fixed string "
        # dfareporting#directorySiteContact".
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # Last name of this directory site contact.
        # Corresponds to the JSON property `lastName`
        # @return [String]
        attr_accessor :last_name
      
        # Phone number of this directory site contact.
        # Corresponds to the JSON property `phone`
        # @return [String]
        attr_accessor :phone
      
        # Directory site contact role.
        # Corresponds to the JSON property `role`
        # @return [String]
        attr_accessor :role
      
        # Title or designation of this directory site contact.
        # Corresponds to the JSON property `title`
        # @return [String]
        attr_accessor :title
      
        # Directory site contact type.
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @address = args[:address] unless args[:address].nil?
          @email = args[:email] unless args[:email].nil?
          @first_name = args[:first_name] unless args[:first_name].nil?
          @id = args[:id] unless args[:id].nil?
          @kind = args[:kind] unless args[:kind].nil?
          @last_name = args[:last_name] unless args[:last_name].nil?
          @phone = args[:phone] unless args[:phone].nil?
          @role = args[:role] unless args[:role].nil?
          @title = args[:title] unless args[:title].nil?
          @type = args[:type] unless args[:type].nil?
        end
      end
      
      # Directory Site Contact Assignment
      class DirectorySiteContactAssignment
        include Google::Apis::Core::Hashable
      
        # ID of this directory site contact. This is a read-only, auto-generated field.
        # Corresponds to the JSON property `contactId`
        # @return [String]
        attr_accessor :contact_id
      
        # Visibility of this directory site contact assignment. When set to PUBLIC this
        # contact assignment is visible to all account and agency users; when set to
        # PRIVATE it is visible only to the site.
        # Corresponds to the JSON property `visibility`
        # @return [String]
        attr_accessor :visibility
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @contact_id = args[:contact_id] unless args[:contact_id].nil?
          @visibility = args[:visibility] unless args[:visibility].nil?
        end
      end
      
      # Directory Site Contact List Response
      class ListDirectorySiteContactsResponse
        include Google::Apis::Core::Hashable
      
        # Directory site contact collection
        # Corresponds to the JSON property `directorySiteContacts`
        # @return [Array<Google::Apis::DfareportingV2_1::DirectorySiteContact>]
        attr_accessor :directory_site_contacts
      
        # Identifies what kind of resource this is. Value: the fixed string "
        # dfareporting#directorySiteContactsListResponse".
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # Pagination token to be used for the next list operation.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @directory_site_contacts = args[:directory_site_contacts] unless args[:directory_site_contacts].nil?
          @kind = args[:kind] unless args[:kind].nil?
          @next_page_token = args[:next_page_token] unless args[:next_page_token].nil?
        end
      end
      
      # Directory Site Settings
      class DirectorySiteSettings
        include Google::Apis::Core::Hashable
      
        # Whether this directory site has disabled active view creatives.
        # Corresponds to the JSON property `activeViewOptOut`
        # @return [Boolean]
        attr_accessor :active_view_opt_out
        alias_method :active_view_opt_out?, :active_view_opt_out
      
        # DFP Settings
        # Corresponds to the JSON property `dfp_settings`
        # @return [Google::Apis::DfareportingV2_1::DfpSettings]
        attr_accessor :dfp_settings
      
        # Whether this site accepts in-stream video ads.
        # Corresponds to the JSON property `instream_video_placement_accepted`
        # @return [Boolean]
        attr_accessor :instream_video_placement_accepted
        alias_method :instream_video_placement_accepted?, :instream_video_placement_accepted
      
        # Whether this site accepts interstitial ads.
        # Corresponds to the JSON property `interstitialPlacementAccepted`
        # @return [Boolean]
        attr_accessor :interstitial_placement_accepted
        alias_method :interstitial_placement_accepted?, :interstitial_placement_accepted
      
        # Whether this directory site has disabled Nielsen OCR reach ratings.
        # Corresponds to the JSON property `nielsenOcrOptOut`
        # @return [Boolean]
        attr_accessor :nielsen_ocr_opt_out
        alias_method :nielsen_ocr_opt_out?, :nielsen_ocr_opt_out
      
        # Whether this directory site has disabled generation of Verification ins tags.
        # Corresponds to the JSON property `verificationTagOptOut`
        # @return [Boolean]
        attr_accessor :verification_tag_opt_out
        alias_method :verification_tag_opt_out?, :verification_tag_opt_out
      
        # Whether this directory site has disabled active view for in-stream video
        # creatives.
        # Corresponds to the JSON property `videoActiveViewOptOut`
        # @return [Boolean]
        attr_accessor :video_active_view_opt_out
        alias_method :video_active_view_opt_out?, :video_active_view_opt_out
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @active_view_opt_out = args[:active_view_opt_out] unless args[:active_view_opt_out].nil?
          @dfp_settings = args[:dfp_settings] unless args[:dfp_settings].nil?
          @instream_video_placement_accepted = args[:instream_video_placement_accepted] unless args[:instream_video_placement_accepted].nil?
          @interstitial_placement_accepted = args[:interstitial_placement_accepted] unless args[:interstitial_placement_accepted].nil?
          @nielsen_ocr_opt_out = args[:nielsen_ocr_opt_out] unless args[:nielsen_ocr_opt_out].nil?
          @verification_tag_opt_out = args[:verification_tag_opt_out] unless args[:verification_tag_opt_out].nil?
          @video_active_view_opt_out = args[:video_active_view_opt_out] unless args[:video_active_view_opt_out].nil?
        end
      end
      
      # Directory Site List Response
      class ListDirectorySitesResponse
        include Google::Apis::Core::Hashable
      
        # Directory site collection.
        # Corresponds to the JSON property `directorySites`
        # @return [Array<Google::Apis::DfareportingV2_1::DirectorySite>]
        attr_accessor :directory_sites
      
        # Identifies what kind of resource this is. Value: the fixed string "
        # dfareporting#directorySitesListResponse".
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # Pagination token to be used for the next list operation.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @directory_sites = args[:directory_sites] unless args[:directory_sites].nil?
          @kind = args[:kind] unless args[:kind].nil?
          @next_page_token = args[:next_page_token] unless args[:next_page_token].nil?
        end
      end
      
      # Contains properties of an event tag.
      class EventTag
        include Google::Apis::Core::Hashable
      
        # Account ID of this event tag. This is a read-only field that can be left blank.
        # Corresponds to the JSON property `accountId`
        # @return [String]
        attr_accessor :account_id
      
        # Advertiser ID of this event tag. This field or the campaignId field is
        # required on insertion.
        # Corresponds to the JSON property `advertiserId`
        # @return [String]
        attr_accessor :advertiser_id
      
        # Represents a DimensionValue resource.
        # Corresponds to the JSON property `advertiserIdDimensionValue`
        # @return [Google::Apis::DfareportingV2_1::DimensionValue]
        attr_accessor :advertiser_id_dimension_value
      
        # Campaign ID of this event tag. This field or the advertiserId field is
        # required on insertion.
        # Corresponds to the JSON property `campaignId`
        # @return [String]
        attr_accessor :campaign_id
      
        # Represents a DimensionValue resource.
        # Corresponds to the JSON property `campaignIdDimensionValue`
        # @return [Google::Apis::DfareportingV2_1::DimensionValue]
        attr_accessor :campaign_id_dimension_value
      
        # Whether this event tag should be automatically enabled for all of the
        # advertiser's campaigns and ads.
        # Corresponds to the JSON property `enabledByDefault`
        # @return [Boolean]
        attr_accessor :enabled_by_default
        alias_method :enabled_by_default?, :enabled_by_default
      
        # ID of this event tag. This is a read-only, auto-generated field.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # Identifies what kind of resource this is. Value: the fixed string "
        # dfareporting#eventTag".
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # Name of this event tag. This is a required field and must be less than 256
        # characters long.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Site filter type for this event tag. If no type is specified then the event
        # tag will be applied to all sites.
        # Corresponds to the JSON property `siteFilterType`
        # @return [String]
        attr_accessor :site_filter_type
      
        # Filter list of site IDs associated with this event tag. The siteFilterType
        # determines whether this is a whitelist or blacklist filter.
        # Corresponds to the JSON property `siteIds`
        # @return [Array<String>]
        attr_accessor :site_ids
      
        # Whether this tag is SSL-compliant or not. This is a read-only field.
        # Corresponds to the JSON property `sslCompliant`
        # @return [Boolean]
        attr_accessor :ssl_compliant
        alias_method :ssl_compliant?, :ssl_compliant
      
        # Status of this event tag. Must be ENABLED for this event tag to fire. This is
        # a required field.
        # Corresponds to the JSON property `status`
        # @return [String]
        attr_accessor :status
      
        # Subaccount ID of this event tag. This is a read-only field that can be left
        # blank.
        # Corresponds to the JSON property `subaccountId`
        # @return [String]
        attr_accessor :subaccount_id
      
        # Event tag type. Can be used to specify whether to use a third-party pixel, a
        # third-party JavaScript URL, or a third-party click-through URL for either
        # impression or click tracking. This is a required field.
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        # Payload URL for this event tag. The URL on a click-through event tag should
        # have a landing page URL appended to the end of it. This field is required on
        # insertion.
        # Corresponds to the JSON property `url`
        # @return [String]
        attr_accessor :url
      
        # Number of times the landing page URL should be URL-escaped before being
        # appended to the click-through event tag URL. Only applies to click-through
        # event tags as specified by the event tag type.
        # Corresponds to the JSON property `urlEscapeLevels`
        # @return [Fixnum]
        attr_accessor :url_escape_levels
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @account_id = args[:account_id] unless args[:account_id].nil?
          @advertiser_id = args[:advertiser_id] unless args[:advertiser_id].nil?
          @advertiser_id_dimension_value = args[:advertiser_id_dimension_value] unless args[:advertiser_id_dimension_value].nil?
          @campaign_id = args[:campaign_id] unless args[:campaign_id].nil?
          @campaign_id_dimension_value = args[:campaign_id_dimension_value] unless args[:campaign_id_dimension_value].nil?
          @enabled_by_default = args[:enabled_by_default] unless args[:enabled_by_default].nil?
          @id = args[:id] unless args[:id].nil?
          @kind = args[:kind] unless args[:kind].nil?
          @name = args[:name] unless args[:name].nil?
          @site_filter_type = args[:site_filter_type] unless args[:site_filter_type].nil?
          @site_ids = args[:site_ids] unless args[:site_ids].nil?
          @ssl_compliant = args[:ssl_compliant] unless args[:ssl_compliant].nil?
          @status = args[:status] unless args[:status].nil?
          @subaccount_id = args[:subaccount_id] unless args[:subaccount_id].nil?
          @type = args[:type] unless args[:type].nil?
          @url = args[:url] unless args[:url].nil?
          @url_escape_levels = args[:url_escape_levels] unless args[:url_escape_levels].nil?
        end
      end
      
      # Event tag override information.
      class EventTagOverride
        include Google::Apis::Core::Hashable
      
        # Whether this override is enabled.
        # Corresponds to the JSON property `enabled`
        # @return [Boolean]
        attr_accessor :enabled
        alias_method :enabled?, :enabled
      
        # ID of this event tag override. This is a read-only, auto-generated field.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @enabled = args[:enabled] unless args[:enabled].nil?
          @id = args[:id] unless args[:id].nil?
        end
      end
      
      # Event Tag List Response
      class ListEventTagsResponse
        include Google::Apis::Core::Hashable
      
        # Event tag collection.
        # Corresponds to the JSON property `eventTags`
        # @return [Array<Google::Apis::DfareportingV2_1::EventTag>]
        attr_accessor :event_tags
      
        # Identifies what kind of resource this is. Value: the fixed string "
        # dfareporting#eventTagsListResponse".
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @event_tags = args[:event_tags] unless args[:event_tags].nil?
          @kind = args[:kind] unless args[:kind].nil?
        end
      end
      
      # Represents a File resource. A file contains the metadata for a report run. It
      # shows the status of the run and holds the URLs to the generated report data if
      # the run is finished and the status is "REPORT_AVAILABLE".
      class File
        include Google::Apis::Core::Hashable
      
        # Represents a date range.
        # Corresponds to the JSON property `dateRange`
        # @return [Google::Apis::DfareportingV2_1::DateRange]
        attr_accessor :date_range
      
        # The eTag of this response for caching purposes.
        # Corresponds to the JSON property `etag`
        # @return [String]
        attr_accessor :etag
      
        # The filename of the file.
        # Corresponds to the JSON property `fileName`
        # @return [String]
        attr_accessor :file_name
      
        # The output format of the report. Only available once the file is available.
        # Corresponds to the JSON property `format`
        # @return [String]
        attr_accessor :format
      
        # The unique ID of this report file.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # The kind of resource this is, in this case dfareporting#file.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # The timestamp in milliseconds since epoch when this file was last modified.
        # Corresponds to the JSON property `lastModifiedTime`
        # @return [String]
        attr_accessor :last_modified_time
      
        # The ID of the report this file was generated from.
        # Corresponds to the JSON property `reportId`
        # @return [String]
        attr_accessor :report_id
      
        # The status of the report file.
        # Corresponds to the JSON property `status`
        # @return [String]
        attr_accessor :status
      
        # The URLs where the completed report file can be downloaded.
        # Corresponds to the JSON property `urls`
        # @return [Google::Apis::DfareportingV2_1::File::Urls]
        attr_accessor :urls
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @date_range = args[:date_range] unless args[:date_range].nil?
          @etag = args[:etag] unless args[:etag].nil?
          @file_name = args[:file_name] unless args[:file_name].nil?
          @format = args[:format] unless args[:format].nil?
          @id = args[:id] unless args[:id].nil?
          @kind = args[:kind] unless args[:kind].nil?
          @last_modified_time = args[:last_modified_time] unless args[:last_modified_time].nil?
          @report_id = args[:report_id] unless args[:report_id].nil?
          @status = args[:status] unless args[:status].nil?
          @urls = args[:urls] unless args[:urls].nil?
        end
        
        # The URLs where the completed report file can be downloaded.
        class Urls
          include Google::Apis::Core::Hashable
        
          # The URL for downloading the report data through the API.
          # Corresponds to the JSON property `apiUrl`
          # @return [String]
          attr_accessor :api_url
        
          # The URL for downloading the report data through a browser.
          # Corresponds to the JSON property `browserUrl`
          # @return [String]
          attr_accessor :browser_url
        
          def initialize(**args)
             update!(**args)
          end
        
          # Update properties of this object
          def update!(**args)
            @api_url = args[:api_url] unless args[:api_url].nil?
            @browser_url = args[:browser_url] unless args[:browser_url].nil?
          end
        end
      end
      
      # Represents the list of File resources.
      class FileList
        include Google::Apis::Core::Hashable
      
        # The eTag of this response for caching purposes.
        # Corresponds to the JSON property `etag`
        # @return [String]
        attr_accessor :etag
      
        # The files returned in this response.
        # Corresponds to the JSON property `items`
        # @return [Array<Google::Apis::DfareportingV2_1::File>]
        attr_accessor :items
      
        # The kind of list this is, in this case dfareporting#fileList.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # Continuation token used to page through files. To retrieve the next page of
        # results, set the next request's "pageToken" to the value of this field. The
        # page token is only valid for a limited amount of time and should not be
        # persisted.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @etag = args[:etag] unless args[:etag].nil?
          @items = args[:items] unless args[:items].nil?
          @kind = args[:kind] unless args[:kind].nil?
          @next_page_token = args[:next_page_token] unless args[:next_page_token].nil?
        end
      end
      
      # Flight
      class Flight
        include Google::Apis::Core::Hashable
      
        # Inventory item flight end date.
        # Corresponds to the JSON property `endDate`
        # @return [Date]
        attr_accessor :end_date
      
        # Rate or cost of this flight.
        # Corresponds to the JSON property `rateOrCost`
        # @return [String]
        attr_accessor :rate_or_cost
      
        # Inventory item flight start date.
        # Corresponds to the JSON property `startDate`
        # @return [Date]
        attr_accessor :start_date
      
        # Units of this flight.
        # Corresponds to the JSON property `units`
        # @return [String]
        attr_accessor :units
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @end_date = args[:end_date] unless args[:end_date].nil?
          @rate_or_cost = args[:rate_or_cost] unless args[:rate_or_cost].nil?
          @start_date = args[:start_date] unless args[:start_date].nil?
          @units = args[:units] unless args[:units].nil?
        end
      end
      
      # Floodlight Activity GenerateTag Response
      class FloodlightActivitiesGenerateTagResponse
        include Google::Apis::Core::Hashable
      
        # Generated tag for this floodlight activity.
        # Corresponds to the JSON property `floodlightActivityTag`
        # @return [String]
        attr_accessor :floodlight_activity_tag
      
        # Identifies what kind of resource this is. Value: the fixed string "
        # dfareporting#floodlightActivitiesGenerateTagResponse".
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @floodlight_activity_tag = args[:floodlight_activity_tag] unless args[:floodlight_activity_tag].nil?
          @kind = args[:kind] unless args[:kind].nil?
        end
      end
      
      # Floodlight Activity List Response
      class ListFloodlightActivitiesResponse
        include Google::Apis::Core::Hashable
      
        # Floodlight activity collection.
        # Corresponds to the JSON property `floodlightActivities`
        # @return [Array<Google::Apis::DfareportingV2_1::FloodlightActivity>]
        attr_accessor :floodlight_activities
      
        # Identifies what kind of resource this is. Value: the fixed string "
        # dfareporting#floodlightActivitiesListResponse".
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # Pagination token to be used for the next list operation.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @floodlight_activities = args[:floodlight_activities] unless args[:floodlight_activities].nil?
          @kind = args[:kind] unless args[:kind].nil?
          @next_page_token = args[:next_page_token] unless args[:next_page_token].nil?
        end
      end
      
      # Contains properties of a Floodlight activity.
      class FloodlightActivity
        include Google::Apis::Core::Hashable
      
        # Account ID of this floodlight activity. This is a read-only field that can be
        # left blank.
        # Corresponds to the JSON property `accountId`
        # @return [String]
        attr_accessor :account_id
      
        # Advertiser ID of this floodlight activity. If this field is left blank, the
        # value will be copied over either from the activity group's advertiser or the
        # existing activity's advertiser.
        # Corresponds to the JSON property `advertiserId`
        # @return [String]
        attr_accessor :advertiser_id
      
        # Represents a DimensionValue resource.
        # Corresponds to the JSON property `advertiserIdDimensionValue`
        # @return [Google::Apis::DfareportingV2_1::DimensionValue]
        attr_accessor :advertiser_id_dimension_value
      
        # Code type used for cache busting in the generated tag.
        # Corresponds to the JSON property `cacheBustingType`
        # @return [String]
        attr_accessor :cache_busting_type
      
        # Counting method for conversions for this floodlight activity. This is a
        # required field.
        # Corresponds to the JSON property `countingMethod`
        # @return [String]
        attr_accessor :counting_method
      
        # Dynamic floodlight tags.
        # Corresponds to the JSON property `defaultTags`
        # @return [Array<Google::Apis::DfareportingV2_1::FloodlightActivityDynamicTag>]
        attr_accessor :default_tags
      
        # URL where this tag will be deployed. If specified, must be less than 256
        # characters long.
        # Corresponds to the JSON property `expectedUrl`
        # @return [String]
        attr_accessor :expected_url
      
        # Floodlight activity group ID of this floodlight activity. This is a required
        # field.
        # Corresponds to the JSON property `floodlightActivityGroupId`
        # @return [String]
        attr_accessor :floodlight_activity_group_id
      
        # Name of the associated floodlight activity group. This is a read-only field.
        # Corresponds to the JSON property `floodlightActivityGroupName`
        # @return [String]
        attr_accessor :floodlight_activity_group_name
      
        # Tag string of the associated floodlight activity group. This is a read-only
        # field.
        # Corresponds to the JSON property `floodlightActivityGroupTagString`
        # @return [String]
        attr_accessor :floodlight_activity_group_tag_string
      
        # Type of the associated floodlight activity group. This is a read-only field.
        # Corresponds to the JSON property `floodlightActivityGroupType`
        # @return [String]
        attr_accessor :floodlight_activity_group_type
      
        # Floodlight configuration ID of this floodlight activity. If this field is left
        # blank, the value will be copied over either from the activity group's
        # floodlight configuration or from the existing activity's floodlight
        # configuration.
        # Corresponds to the JSON property `floodlightConfigurationId`
        # @return [String]
        attr_accessor :floodlight_configuration_id
      
        # Represents a DimensionValue resource.
        # Corresponds to the JSON property `floodlightConfigurationIdDimensionValue`
        # @return [Google::Apis::DfareportingV2_1::DimensionValue]
        attr_accessor :floodlight_configuration_id_dimension_value
      
        # Whether this activity is archived.
        # Corresponds to the JSON property `hidden`
        # @return [Boolean]
        attr_accessor :hidden
        alias_method :hidden?, :hidden
      
        # ID of this floodlight activity. This is a read-only, auto-generated field.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # Represents a DimensionValue resource.
        # Corresponds to the JSON property `idDimensionValue`
        # @return [Google::Apis::DfareportingV2_1::DimensionValue]
        attr_accessor :id_dimension_value
      
        # Whether the image tag is enabled for this activity.
        # Corresponds to the JSON property `imageTagEnabled`
        # @return [Boolean]
        attr_accessor :image_tag_enabled
        alias_method :image_tag_enabled?, :image_tag_enabled
      
        # Identifies what kind of resource this is. Value: the fixed string "
        # dfareporting#floodlightActivity".
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # Name of this floodlight activity. This is a required field. Must be less than
        # 129 characters long and cannot contain quotes.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # General notes or implementation instructions for the tag.
        # Corresponds to the JSON property `notes`
        # @return [String]
        attr_accessor :notes
      
        # Publisher dynamic floodlight tags.
        # Corresponds to the JSON property `publisherTags`
        # @return [Array<Google::Apis::DfareportingV2_1::FloodlightActivityPublisherDynamicTag>]
        attr_accessor :publisher_tags
      
        # Whether this tag should use SSL.
        # Corresponds to the JSON property `secure`
        # @return [Boolean]
        attr_accessor :secure
        alias_method :secure?, :secure
      
        # Whether the floodlight activity is SSL-compliant. This is a read-only field,
        # its value detected by the system from the floodlight tags.
        # Corresponds to the JSON property `sslCompliant`
        # @return [Boolean]
        attr_accessor :ssl_compliant
        alias_method :ssl_compliant?, :ssl_compliant
      
        # Whether this floodlight activity must be SSL-compliant.
        # Corresponds to the JSON property `sslRequired`
        # @return [Boolean]
        attr_accessor :ssl_required
        alias_method :ssl_required?, :ssl_required
      
        # Subaccount ID of this floodlight activity. This is a read-only field that can
        # be left blank.
        # Corresponds to the JSON property `subaccountId`
        # @return [String]
        attr_accessor :subaccount_id
      
        # Tag format type for the floodlight activity. If left blank, the tag format
        # will default to HTML.
        # Corresponds to the JSON property `tagFormat`
        # @return [String]
        attr_accessor :tag_format
      
        # Value of the cat= paramter in the floodlight tag, which the ad servers use to
        # identify the activity. This is optional: if empty, a new tag string will be
        # generated for you. This string must be 1 to 8 characters long, with valid
        # characters being [a-z][A-Z][0-9][-][ _ ]. This tag string must also be unique
        # among activities of the same activity group. This field is read-only after
        # insertion.
        # Corresponds to the JSON property `tagString`
        # @return [String]
        attr_accessor :tag_string
      
        # List of the user-defined variables used by this conversion tag. These map to
        # the "u[1-20]=" in the tags. Each of these can have a user defined type.
        # Acceptable values are:
        # - "U1"
        # - "U2"
        # - "U3"
        # - "U4"
        # - "U5"
        # - "U6"
        # - "U7"
        # - "U8"
        # - "U9"
        # - "U10"
        # - "U11"
        # - "U12"
        # - "U13"
        # - "U14"
        # - "U15"
        # - "U16"
        # - "U17"
        # - "U18"
        # - "U19"
        # - "U20"
        # Corresponds to the JSON property `userDefinedVariableTypes`
        # @return [Array<String>]
        attr_accessor :user_defined_variable_types
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @account_id = args[:account_id] unless args[:account_id].nil?
          @advertiser_id = args[:advertiser_id] unless args[:advertiser_id].nil?
          @advertiser_id_dimension_value = args[:advertiser_id_dimension_value] unless args[:advertiser_id_dimension_value].nil?
          @cache_busting_type = args[:cache_busting_type] unless args[:cache_busting_type].nil?
          @counting_method = args[:counting_method] unless args[:counting_method].nil?
          @default_tags = args[:default_tags] unless args[:default_tags].nil?
          @expected_url = args[:expected_url] unless args[:expected_url].nil?
          @floodlight_activity_group_id = args[:floodlight_activity_group_id] unless args[:floodlight_activity_group_id].nil?
          @floodlight_activity_group_name = args[:floodlight_activity_group_name] unless args[:floodlight_activity_group_name].nil?
          @floodlight_activity_group_tag_string = args[:floodlight_activity_group_tag_string] unless args[:floodlight_activity_group_tag_string].nil?
          @floodlight_activity_group_type = args[:floodlight_activity_group_type] unless args[:floodlight_activity_group_type].nil?
          @floodlight_configuration_id = args[:floodlight_configuration_id] unless args[:floodlight_configuration_id].nil?
          @floodlight_configuration_id_dimension_value = args[:floodlight_configuration_id_dimension_value] unless args[:floodlight_configuration_id_dimension_value].nil?
          @hidden = args[:hidden] unless args[:hidden].nil?
          @id = args[:id] unless args[:id].nil?
          @id_dimension_value = args[:id_dimension_value] unless args[:id_dimension_value].nil?
          @image_tag_enabled = args[:image_tag_enabled] unless args[:image_tag_enabled].nil?
          @kind = args[:kind] unless args[:kind].nil?
          @name = args[:name] unless args[:name].nil?
          @notes = args[:notes] unless args[:notes].nil?
          @publisher_tags = args[:publisher_tags] unless args[:publisher_tags].nil?
          @secure = args[:secure] unless args[:secure].nil?
          @ssl_compliant = args[:ssl_compliant] unless args[:ssl_compliant].nil?
          @ssl_required = args[:ssl_required] unless args[:ssl_required].nil?
          @subaccount_id = args[:subaccount_id] unless args[:subaccount_id].nil?
          @tag_format = args[:tag_format] unless args[:tag_format].nil?
          @tag_string = args[:tag_string] unless args[:tag_string].nil?
          @user_defined_variable_types = args[:user_defined_variable_types] unless args[:user_defined_variable_types].nil?
        end
      end
      
      # Dynamic Tag
      class FloodlightActivityDynamicTag
        include Google::Apis::Core::Hashable
      
        # ID of this dynamic tag. This is a read-only, auto-generated field.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # Name of this tag.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Tag code.
        # Corresponds to the JSON property `tag`
        # @return [String]
        attr_accessor :tag
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @id = args[:id] unless args[:id].nil?
          @name = args[:name] unless args[:name].nil?
          @tag = args[:tag] unless args[:tag].nil?
        end
      end
      
      # Contains properties of a Floodlight activity group.
      class FloodlightActivityGroup
        include Google::Apis::Core::Hashable
      
        # Account ID of this floodlight activity group. This is a read-only field that
        # can be left blank.
        # Corresponds to the JSON property `accountId`
        # @return [String]
        attr_accessor :account_id
      
        # Advertiser ID of this floodlight activity group. If this field is left blank,
        # the value will be copied over either from the floodlight configuration's
        # advertiser or from the existing activity group's advertiser.
        # Corresponds to the JSON property `advertiserId`
        # @return [String]
        attr_accessor :advertiser_id
      
        # Represents a DimensionValue resource.
        # Corresponds to the JSON property `advertiserIdDimensionValue`
        # @return [Google::Apis::DfareportingV2_1::DimensionValue]
        attr_accessor :advertiser_id_dimension_value
      
        # Floodlight configuration ID of this floodlight activity group. This is a
        # required field.
        # Corresponds to the JSON property `floodlightConfigurationId`
        # @return [String]
        attr_accessor :floodlight_configuration_id
      
        # Represents a DimensionValue resource.
        # Corresponds to the JSON property `floodlightConfigurationIdDimensionValue`
        # @return [Google::Apis::DfareportingV2_1::DimensionValue]
        attr_accessor :floodlight_configuration_id_dimension_value
      
        # ID of this floodlight activity group. This is a read-only, auto-generated
        # field.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # Represents a DimensionValue resource.
        # Corresponds to the JSON property `idDimensionValue`
        # @return [Google::Apis::DfareportingV2_1::DimensionValue]
        attr_accessor :id_dimension_value
      
        # Identifies what kind of resource this is. Value: the fixed string "
        # dfareporting#floodlightActivityGroup".
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # Name of this floodlight activity group. This is a required field. Must be less
        # than 65 characters long and cannot contain quotes.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Subaccount ID of this floodlight activity group. This is a read-only field
        # that can be left blank.
        # Corresponds to the JSON property `subaccountId`
        # @return [String]
        attr_accessor :subaccount_id
      
        # Value of the type= parameter in the floodlight tag, which the ad servers use
        # to identify the activity group that the activity belongs to. This is optional:
        # if empty, a new tag string will be generated for you. This string must be 1 to
        # 8 characters long, with valid characters being [a-z][A-Z][0-9][-][ _ ]. This
        # tag string must also be unique among activity groups of the same floodlight
        # configuration. This field is read-only after insertion.
        # Corresponds to the JSON property `tagString`
        # @return [String]
        attr_accessor :tag_string
      
        # Type of the floodlight activity group. This is a required field that is read-
        # only after insertion.
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @account_id = args[:account_id] unless args[:account_id].nil?
          @advertiser_id = args[:advertiser_id] unless args[:advertiser_id].nil?
          @advertiser_id_dimension_value = args[:advertiser_id_dimension_value] unless args[:advertiser_id_dimension_value].nil?
          @floodlight_configuration_id = args[:floodlight_configuration_id] unless args[:floodlight_configuration_id].nil?
          @floodlight_configuration_id_dimension_value = args[:floodlight_configuration_id_dimension_value] unless args[:floodlight_configuration_id_dimension_value].nil?
          @id = args[:id] unless args[:id].nil?
          @id_dimension_value = args[:id_dimension_value] unless args[:id_dimension_value].nil?
          @kind = args[:kind] unless args[:kind].nil?
          @name = args[:name] unless args[:name].nil?
          @subaccount_id = args[:subaccount_id] unless args[:subaccount_id].nil?
          @tag_string = args[:tag_string] unless args[:tag_string].nil?
          @type = args[:type] unless args[:type].nil?
        end
      end
      
      # Floodlight Activity Group List Response
      class ListFloodlightActivityGroupsResponse
        include Google::Apis::Core::Hashable
      
        # Floodlight activity group collection.
        # Corresponds to the JSON property `floodlightActivityGroups`
        # @return [Array<Google::Apis::DfareportingV2_1::FloodlightActivityGroup>]
        attr_accessor :floodlight_activity_groups
      
        # Identifies what kind of resource this is. Value: the fixed string "
        # dfareporting#floodlightActivityGroupsListResponse".
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # Pagination token to be used for the next list operation.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @floodlight_activity_groups = args[:floodlight_activity_groups] unless args[:floodlight_activity_groups].nil?
          @kind = args[:kind] unless args[:kind].nil?
          @next_page_token = args[:next_page_token] unless args[:next_page_token].nil?
        end
      end
      
      # Publisher Dynamic Tag
      class FloodlightActivityPublisherDynamicTag
        include Google::Apis::Core::Hashable
      
        # Whether this tag is applicable only for click-throughs.
        # Corresponds to the JSON property `clickThrough`
        # @return [Boolean]
        attr_accessor :click_through
        alias_method :click_through?, :click_through
      
        # Directory site ID of this dynamic tag. This is a write-only field that can be
        # used as an alternative to the siteId field. When this resource is retrieved,
        # only the siteId field will be populated.
        # Corresponds to the JSON property `directorySiteId`
        # @return [String]
        attr_accessor :directory_site_id
      
        # Dynamic Tag
        # Corresponds to the JSON property `dynamicTag`
        # @return [Google::Apis::DfareportingV2_1::FloodlightActivityDynamicTag]
        attr_accessor :dynamic_tag
      
        # Site ID of this dynamic tag.
        # Corresponds to the JSON property `siteId`
        # @return [String]
        attr_accessor :site_id
      
        # Represents a DimensionValue resource.
        # Corresponds to the JSON property `siteIdDimensionValue`
        # @return [Google::Apis::DfareportingV2_1::DimensionValue]
        attr_accessor :site_id_dimension_value
      
        # Whether this tag is applicable only for view-throughs.
        # Corresponds to the JSON property `viewThrough`
        # @return [Boolean]
        attr_accessor :view_through
        alias_method :view_through?, :view_through
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @click_through = args[:click_through] unless args[:click_through].nil?
          @directory_site_id = args[:directory_site_id] unless args[:directory_site_id].nil?
          @dynamic_tag = args[:dynamic_tag] unless args[:dynamic_tag].nil?
          @site_id = args[:site_id] unless args[:site_id].nil?
          @site_id_dimension_value = args[:site_id_dimension_value] unless args[:site_id_dimension_value].nil?
          @view_through = args[:view_through] unless args[:view_through].nil?
        end
      end
      
      # Contains properties of a Floodlight configuration.
      class FloodlightConfiguration
        include Google::Apis::Core::Hashable
      
        # Account ID of this floodlight configuration. This is a read-only field that
        # can be left blank.
        # Corresponds to the JSON property `accountId`
        # @return [String]
        attr_accessor :account_id
      
        # Advertiser ID of the parent advertiser of this floodlight configuration.
        # Corresponds to the JSON property `advertiserId`
        # @return [String]
        attr_accessor :advertiser_id
      
        # Represents a DimensionValue resource.
        # Corresponds to the JSON property `advertiserIdDimensionValue`
        # @return [Google::Apis::DfareportingV2_1::DimensionValue]
        attr_accessor :advertiser_id_dimension_value
      
        # Whether advertiser data is shared with Google Analytics.
        # Corresponds to the JSON property `analyticsDataSharingEnabled`
        # @return [Boolean]
        attr_accessor :analytics_data_sharing_enabled
        alias_method :analytics_data_sharing_enabled?, :analytics_data_sharing_enabled
      
        # Whether the exposure-to-conversion report is enabled. This report shows
        # detailed pathway information on up to 10 of the most recent ad exposures seen
        # by a user before converting.
        # Corresponds to the JSON property `exposureToConversionEnabled`
        # @return [Boolean]
        attr_accessor :exposure_to_conversion_enabled
        alias_method :exposure_to_conversion_enabled?, :exposure_to_conversion_enabled
      
        # Day that will be counted as the first day of the week in reports. This is a
        # required field.
        # Corresponds to the JSON property `firstDayOfWeek`
        # @return [String]
        attr_accessor :first_day_of_week
      
        # ID of this floodlight configuration. This is a read-only, auto-generated field.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # Represents a DimensionValue resource.
        # Corresponds to the JSON property `idDimensionValue`
        # @return [Google::Apis::DfareportingV2_1::DimensionValue]
        attr_accessor :id_dimension_value
      
        # Identifies what kind of resource this is. Value: the fixed string "
        # dfareporting#floodlightConfiguration".
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # Lookback configuration settings.
        # Corresponds to the JSON property `lookbackConfiguration`
        # @return [Google::Apis::DfareportingV2_1::LookbackConfiguration]
        attr_accessor :lookback_configuration
      
        # Types of attribution options for natural search conversions.
        # Corresponds to the JSON property `naturalSearchConversionAttributionOption`
        # @return [String]
        attr_accessor :natural_search_conversion_attribution_option
      
        # Omniture Integration Settings.
        # Corresponds to the JSON property `omnitureSettings`
        # @return [Google::Apis::DfareportingV2_1::OmnitureSettings]
        attr_accessor :omniture_settings
      
        # Whether floodlight activities owned by this configuration are required to be
        # SSL-compliant.
        # Corresponds to the JSON property `sslRequired`
        # @return [Boolean]
        attr_accessor :ssl_required
        alias_method :ssl_required?, :ssl_required
      
        # List of standard variables enabled for this configuration.
        # Acceptable values are:
        # - "ORD"
        # - "NUM"
        # Corresponds to the JSON property `standardVariableTypes`
        # @return [Array<String>]
        attr_accessor :standard_variable_types
      
        # Subaccount ID of this floodlight configuration. This is a read-only field that
        # can be left blank.
        # Corresponds to the JSON property `subaccountId`
        # @return [String]
        attr_accessor :subaccount_id
      
        # Dynamic and Image Tag Settings.
        # Corresponds to the JSON property `tagSettings`
        # @return [Google::Apis::DfareportingV2_1::TagSettings]
        attr_accessor :tag_settings
      
        # List of user defined variables enabled for this configuration.
        # Corresponds to the JSON property `userDefinedVariableConfigurations`
        # @return [Array<Google::Apis::DfareportingV2_1::UserDefinedVariableConfiguration>]
        attr_accessor :user_defined_variable_configurations
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @account_id = args[:account_id] unless args[:account_id].nil?
          @advertiser_id = args[:advertiser_id] unless args[:advertiser_id].nil?
          @advertiser_id_dimension_value = args[:advertiser_id_dimension_value] unless args[:advertiser_id_dimension_value].nil?
          @analytics_data_sharing_enabled = args[:analytics_data_sharing_enabled] unless args[:analytics_data_sharing_enabled].nil?
          @exposure_to_conversion_enabled = args[:exposure_to_conversion_enabled] unless args[:exposure_to_conversion_enabled].nil?
          @first_day_of_week = args[:first_day_of_week] unless args[:first_day_of_week].nil?
          @id = args[:id] unless args[:id].nil?
          @id_dimension_value = args[:id_dimension_value] unless args[:id_dimension_value].nil?
          @kind = args[:kind] unless args[:kind].nil?
          @lookback_configuration = args[:lookback_configuration] unless args[:lookback_configuration].nil?
          @natural_search_conversion_attribution_option = args[:natural_search_conversion_attribution_option] unless args[:natural_search_conversion_attribution_option].nil?
          @omniture_settings = args[:omniture_settings] unless args[:omniture_settings].nil?
          @ssl_required = args[:ssl_required] unless args[:ssl_required].nil?
          @standard_variable_types = args[:standard_variable_types] unless args[:standard_variable_types].nil?
          @subaccount_id = args[:subaccount_id] unless args[:subaccount_id].nil?
          @tag_settings = args[:tag_settings] unless args[:tag_settings].nil?
          @user_defined_variable_configurations = args[:user_defined_variable_configurations] unless args[:user_defined_variable_configurations].nil?
        end
      end
      
      # Floodlight Configuration List Response
      class ListFloodlightConfigurationsResponse
        include Google::Apis::Core::Hashable
      
        # Floodlight configuration collection.
        # Corresponds to the JSON property `floodlightConfigurations`
        # @return [Array<Google::Apis::DfareportingV2_1::FloodlightConfiguration>]
        attr_accessor :floodlight_configurations
      
        # Identifies what kind of resource this is. Value: the fixed string "
        # dfareporting#floodlightConfigurationsListResponse".
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @floodlight_configurations = args[:floodlight_configurations] unless args[:floodlight_configurations].nil?
          @kind = args[:kind] unless args[:kind].nil?
        end
      end
      
      # Represents fields that are compatible to be selected for a report of type "
      # FlOODLIGHT".
      class FloodlightReportCompatibleFields
        include Google::Apis::Core::Hashable
      
        # Dimensions which are compatible to be selected in the "dimensionFilters"
        # section of the report.
        # Corresponds to the JSON property `dimensionFilters`
        # @return [Array<Google::Apis::DfareportingV2_1::Dimension>]
        attr_accessor :dimension_filters
      
        # Dimensions which are compatible to be selected in the "dimensions" section of
        # the report.
        # Corresponds to the JSON property `dimensions`
        # @return [Array<Google::Apis::DfareportingV2_1::Dimension>]
        attr_accessor :dimensions
      
        # The kind of resource this is, in this case dfareporting#
        # floodlightReportCompatibleFields.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # Metrics which are compatible to be selected in the "metricNames" section of
        # the report.
        # Corresponds to the JSON property `metrics`
        # @return [Array<Google::Apis::DfareportingV2_1::Metric>]
        attr_accessor :metrics
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @dimension_filters = args[:dimension_filters] unless args[:dimension_filters].nil?
          @dimensions = args[:dimensions] unless args[:dimensions].nil?
          @kind = args[:kind] unless args[:kind].nil?
          @metrics = args[:metrics] unless args[:metrics].nil?
        end
      end
      
      # Frequency Cap.
      class FrequencyCap
        include Google::Apis::Core::Hashable
      
        # Duration of time, in seconds, for this frequency cap. The maximum duration is
        # 90 days in seconds, or 7,776,000.
        # Corresponds to the JSON property `duration`
        # @return [String]
        attr_accessor :duration
      
        # Number of times an individual user can be served the ad within the specified
        # duration. The maximum allowed is 15.
        # Corresponds to the JSON property `impressions`
        # @return [String]
        attr_accessor :impressions
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @duration = args[:duration] unless args[:duration].nil?
          @impressions = args[:impressions] unless args[:impressions].nil?
        end
      end
      
      # FsCommand.
      class FsCommand
        include Google::Apis::Core::Hashable
      
        # Distance from the left of the browser.Applicable when positionOption is
        # DISTANCE_FROM_TOP_LEFT_CORNER.
        # Corresponds to the JSON property `left`
        # @return [Fixnum]
        attr_accessor :left
      
        # Position in the browser where the window will open.
        # Corresponds to the JSON property `positionOption`
        # @return [String]
        attr_accessor :position_option
      
        # Distance from the top of the browser. Applicable when positionOption is
        # DISTANCE_FROM_TOP_LEFT_CORNER.
        # Corresponds to the JSON property `top`
        # @return [Fixnum]
        attr_accessor :top
      
        # Height of the window.
        # Corresponds to the JSON property `windowHeight`
        # @return [Fixnum]
        attr_accessor :window_height
      
        # Width of the window.
        # Corresponds to the JSON property `windowWidth`
        # @return [Fixnum]
        attr_accessor :window_width
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @left = args[:left] unless args[:left].nil?
          @position_option = args[:position_option] unless args[:position_option].nil?
          @top = args[:top] unless args[:top].nil?
          @window_height = args[:window_height] unless args[:window_height].nil?
          @window_width = args[:window_width] unless args[:window_width].nil?
        end
      end
      
      # Geographical Targeting.
      class GeoTargeting
        include Google::Apis::Core::Hashable
      
        # Cities to be targeted. For each city only dartId is required. The other fields
        # are populated automatically when the ad is inserted or updated. If targeting a
        # city, do not target or exclude the country of the city, and do not target the
        # metro or region of the city.
        # Corresponds to the JSON property `cities`
        # @return [Array<Google::Apis::DfareportingV2_1::City>]
        attr_accessor :cities
      
        # Countries to be targeted or excluded from targeting, depending on the setting
        # of the excludeCountries field. For each country only dartId is required. The
        # other fields are populated automatically when the ad is inserted or updated.
        # If targeting or excluding a country, do not target regions, cities, metros, or
        # postal codes in the same country.
        # Corresponds to the JSON property `countries`
        # @return [Array<Google::Apis::DfareportingV2_1::Country>]
        attr_accessor :countries
      
        # Whether or not to exclude the countries in the countries field from targeting.
        # If false, the countries field refers to countries which will be targeted by
        # the ad.
        # Corresponds to the JSON property `excludeCountries`
        # @return [Boolean]
        attr_accessor :exclude_countries
        alias_method :exclude_countries?, :exclude_countries
      
        # Metros to be targeted. For each metro only dmaId is required. The other fields
        # are populated automatically when the ad is inserted or updated. If targeting a
        # metro, do not target or exclude the country of the metro.
        # Corresponds to the JSON property `metros`
        # @return [Array<Google::Apis::DfareportingV2_1::Metro>]
        attr_accessor :metros
      
        # Postal codes to be targeted. For each postal code only id is required. The
        # other fields are populated automatically when the ad is inserted or updated.
        # If targeting a postal code, do not target or exclude the country of the postal
        # code.
        # Corresponds to the JSON property `postalCodes`
        # @return [Array<Google::Apis::DfareportingV2_1::PostalCode>]
        attr_accessor :postal_codes
      
        # Regions to be targeted. For each region only dartId is required. The other
        # fields are populated automatically when the ad is inserted or updated. If
        # targeting a region, do not target or exclude the country of the region.
        # Corresponds to the JSON property `regions`
        # @return [Array<Google::Apis::DfareportingV2_1::Region>]
        attr_accessor :regions
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @cities = args[:cities] unless args[:cities].nil?
          @countries = args[:countries] unless args[:countries].nil?
          @exclude_countries = args[:exclude_countries] unless args[:exclude_countries].nil?
          @metros = args[:metros] unless args[:metros].nil?
          @postal_codes = args[:postal_codes] unless args[:postal_codes].nil?
          @regions = args[:regions] unless args[:regions].nil?
        end
      end
      
      # Represents a buy from the DoubleClick Planning inventory store.
      class InventoryItem
        include Google::Apis::Core::Hashable
      
        # Account ID of this inventory item.
        # Corresponds to the JSON property `accountId`
        # @return [String]
        attr_accessor :account_id
      
        # Ad slots of this inventory item. If this inventory item represents a
        # standalone placement, there will be exactly one ad slot. If this inventory
        # item represents a placement group, there will be more than one ad slot, each
        # representing one child placement in that placement group.
        # Corresponds to the JSON property `adSlots`
        # @return [Array<Google::Apis::DfareportingV2_1::AdSlot>]
        attr_accessor :ad_slots
      
        # Advertiser ID of this inventory item.
        # Corresponds to the JSON property `advertiserId`
        # @return [String]
        attr_accessor :advertiser_id
      
        # Content category ID of this inventory item.
        # Corresponds to the JSON property `contentCategoryId`
        # @return [String]
        attr_accessor :content_category_id
      
        # Estimated click-through rate of this inventory item.
        # Corresponds to the JSON property `estimatedClickThroughRate`
        # @return [String]
        attr_accessor :estimated_click_through_rate
      
        # Estimated conversion rate of this inventory item.
        # Corresponds to the JSON property `estimatedConversionRate`
        # @return [String]
        attr_accessor :estimated_conversion_rate
      
        # ID of this inventory item.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # Whether this inventory item is in plan.
        # Corresponds to the JSON property `inPlan`
        # @return [Boolean]
        attr_accessor :in_plan
        alias_method :in_plan?, :in_plan
      
        # Identifies what kind of resource this is. Value: the fixed string "
        # dfareporting#inventoryItem".
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # Modification timestamp.
        # Corresponds to the JSON property `lastModifiedInfo`
        # @return [Google::Apis::DfareportingV2_1::LastModifiedInfo]
        attr_accessor :last_modified_info
      
        # Name of this inventory item. For standalone inventory items, this is the same
        # name as that of its only ad slot. For group inventory items, this can differ
        # from the name of any of its ad slots.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Negotiation channel ID of this inventory item.
        # Corresponds to the JSON property `negotiationChannelId`
        # @return [String]
        attr_accessor :negotiation_channel_id
      
        # Order ID of this inventory item.
        # Corresponds to the JSON property `orderId`
        # @return [String]
        attr_accessor :order_id
      
        # Placement strategy ID of this inventory item.
        # Corresponds to the JSON property `placementStrategyId`
        # @return [String]
        attr_accessor :placement_strategy_id
      
        # Pricing Information
        # Corresponds to the JSON property `pricing`
        # @return [Google::Apis::DfareportingV2_1::Pricing]
        attr_accessor :pricing
      
        # Project ID of this inventory item.
        # Corresponds to the JSON property `projectId`
        # @return [String]
        attr_accessor :project_id
      
        # RFP ID of this inventory item.
        # Corresponds to the JSON property `rfpId`
        # @return [String]
        attr_accessor :rfp_id
      
        # ID of the site this inventory item is associated with.
        # Corresponds to the JSON property `siteId`
        # @return [String]
        attr_accessor :site_id
      
        # Subaccount ID of this inventory item.
        # Corresponds to the JSON property `subaccountId`
        # @return [String]
        attr_accessor :subaccount_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @account_id = args[:account_id] unless args[:account_id].nil?
          @ad_slots = args[:ad_slots] unless args[:ad_slots].nil?
          @advertiser_id = args[:advertiser_id] unless args[:advertiser_id].nil?
          @content_category_id = args[:content_category_id] unless args[:content_category_id].nil?
          @estimated_click_through_rate = args[:estimated_click_through_rate] unless args[:estimated_click_through_rate].nil?
          @estimated_conversion_rate = args[:estimated_conversion_rate] unless args[:estimated_conversion_rate].nil?
          @id = args[:id] unless args[:id].nil?
          @in_plan = args[:in_plan] unless args[:in_plan].nil?
          @kind = args[:kind] unless args[:kind].nil?
          @last_modified_info = args[:last_modified_info] unless args[:last_modified_info].nil?
          @name = args[:name] unless args[:name].nil?
          @negotiation_channel_id = args[:negotiation_channel_id] unless args[:negotiation_channel_id].nil?
          @order_id = args[:order_id] unless args[:order_id].nil?
          @placement_strategy_id = args[:placement_strategy_id] unless args[:placement_strategy_id].nil?
          @pricing = args[:pricing] unless args[:pricing].nil?
          @project_id = args[:project_id] unless args[:project_id].nil?
          @rfp_id = args[:rfp_id] unless args[:rfp_id].nil?
          @site_id = args[:site_id] unless args[:site_id].nil?
          @subaccount_id = args[:subaccount_id] unless args[:subaccount_id].nil?
        end
      end
      
      # Inventory item List Response
      class ListInventoryItemsResponse
        include Google::Apis::Core::Hashable
      
        # Inventory item collection
        # Corresponds to the JSON property `inventoryItems`
        # @return [Array<Google::Apis::DfareportingV2_1::InventoryItem>]
        attr_accessor :inventory_items
      
        # Identifies what kind of resource this is. Value: the fixed string "
        # dfareporting#inventoryItemsListResponse".
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # Pagination token to be used for the next list operation.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @inventory_items = args[:inventory_items] unless args[:inventory_items].nil?
          @kind = args[:kind] unless args[:kind].nil?
          @next_page_token = args[:next_page_token] unless args[:next_page_token].nil?
        end
      end
      
      # Key Value Targeting Expression.
      class KeyValueTargetingExpression
        include Google::Apis::Core::Hashable
      
        # Keyword expression being targeted by the ad.
        # Corresponds to the JSON property `expression`
        # @return [String]
        attr_accessor :expression
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @expression = args[:expression] unless args[:expression].nil?
        end
      end
      
      # Contains information about where a user's browser is taken after the user
      # clicks an ad.
      class LandingPage
        include Google::Apis::Core::Hashable
      
        # Whether or not this landing page will be assigned to any ads or creatives that
        # do not have a landing page assigned explicitly. Only one default landing page
        # is allowed per campaign.
        # Corresponds to the JSON property `default`
        # @return [Boolean]
        attr_accessor :default
        alias_method :default?, :default
      
        # ID of this landing page. This is a read-only, auto-generated field.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # Identifies what kind of resource this is. Value: the fixed string "
        # dfareporting#landingPage".
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # Name of this landing page. This is a required field. It must be less than 256
        # characters long, and must be unique among landing pages of the same campaign.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # URL of this landing page. This is a required field.
        # Corresponds to the JSON property `url`
        # @return [String]
        attr_accessor :url
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @default = args[:default] unless args[:default].nil?
          @id = args[:id] unless args[:id].nil?
          @kind = args[:kind] unless args[:kind].nil?
          @name = args[:name] unless args[:name].nil?
          @url = args[:url] unless args[:url].nil?
        end
      end
      
      # Landing Page List Response
      class ListLandingPagesResponse
        include Google::Apis::Core::Hashable
      
        # Identifies what kind of resource this is. Value: the fixed string "
        # dfareporting#landingPagesListResponse".
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # Landing page collection
        # Corresponds to the JSON property `landingPages`
        # @return [Array<Google::Apis::DfareportingV2_1::LandingPage>]
        attr_accessor :landing_pages
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @kind = args[:kind] unless args[:kind].nil?
          @landing_pages = args[:landing_pages] unless args[:landing_pages].nil?
        end
      end
      
      # Modification timestamp.
      class LastModifiedInfo
        include Google::Apis::Core::Hashable
      
        # Timestamp of the last change in milliseconds since epoch.
        # Corresponds to the JSON property `time`
        # @return [String]
        attr_accessor :time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @time = args[:time] unless args[:time].nil?
        end
      end
      
      # A group clause made up of list population terms representing constraints
      # joined by ORs.
      class ListPopulationClause
        include Google::Apis::Core::Hashable
      
        # Terms of this list population clause. Each clause is made up of list
        # population terms representing constraints and are joined by ORs.
        # Corresponds to the JSON property `terms`
        # @return [Array<Google::Apis::DfareportingV2_1::ListPopulationTerm>]
        attr_accessor :terms
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @terms = args[:terms] unless args[:terms].nil?
        end
      end
      
      # Remarketing List Population Rule.
      class ListPopulationRule
        include Google::Apis::Core::Hashable
      
        # Floodlight activity ID associated with this rule. This field can be left blank.
        # Corresponds to the JSON property `floodlightActivityId`
        # @return [String]
        attr_accessor :floodlight_activity_id
      
        # Name of floodlight activity associated with this rule. This is a read-only,
        # auto-generated field.
        # Corresponds to the JSON property `floodlightActivityName`
        # @return [String]
        attr_accessor :floodlight_activity_name
      
        # Clauses that make up this list population rule. Clauses are joined by ANDs,
        # and the clauses themselves are made up of list population terms which are
        # joined by ORs.
        # Corresponds to the JSON property `listPopulationClauses`
        # @return [Array<Google::Apis::DfareportingV2_1::ListPopulationClause>]
        attr_accessor :list_population_clauses
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @floodlight_activity_id = args[:floodlight_activity_id] unless args[:floodlight_activity_id].nil?
          @floodlight_activity_name = args[:floodlight_activity_name] unless args[:floodlight_activity_name].nil?
          @list_population_clauses = args[:list_population_clauses] unless args[:list_population_clauses].nil?
        end
      end
      
      # Remarketing List Population Rule Term.
      class ListPopulationTerm
        include Google::Apis::Core::Hashable
      
        # Will be true if the term should check if the user is in the list and false if
        # the term should check if the user is not in the list. This field is only
        # relevant when type is set to LIST_MEMBERSHIP_TERM. False by default.
        # Corresponds to the JSON property `contains`
        # @return [Boolean]
        attr_accessor :contains
        alias_method :contains?, :contains
      
        # Whether to negate the comparison result of this term during rule evaluation.
        # This field is only relevant when type is left unset or set to
        # CUSTOM_VARIABLE_TERM or REFERRER_TERM.
        # Corresponds to the JSON property `negation`
        # @return [Boolean]
        attr_accessor :negation
        alias_method :negation?, :negation
      
        # Comparison operator of this term. This field is only relevant when type is
        # left unset or set to CUSTOM_VARIABLE_TERM or REFERRER_TERM.
        # Corresponds to the JSON property `operator`
        # @return [String]
        attr_accessor :operator
      
        # ID of the list in question. This field is only relevant when type is set to
        # LIST_MEMBERSHIP_TERM.
        # Corresponds to the JSON property `remarketingListId`
        # @return [String]
        attr_accessor :remarketing_list_id
      
        # List population term type determines the applicable fields in this object. If
        # left unset or set to CUSTOM_VARIABLE_TERM, then variableName,
        # variableFriendlyName, operator, value, and negation are applicable. If set to
        # LIST_MEMBERSHIP_TERM then remarketingListId and contains are applicable. If
        # set to REFERRER_TERM then operator, value, and negation are applicable.
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        # Literal to compare the variable to. This field is only relevant when type is
        # left unset or set to CUSTOM_VARIABLE_TERM or REFERRER_TERM.
        # Corresponds to the JSON property `value`
        # @return [String]
        attr_accessor :value
      
        # Friendly name of this term's variable. This is a read-only, auto-generated
        # field. This field is only relevant when type is left unset or set to
        # CUSTOM_VARIABLE_TERM.
        # Corresponds to the JSON property `variableFriendlyName`
        # @return [String]
        attr_accessor :variable_friendly_name
      
        # Name of the variable (U1, U2, etc.) being compared in this term. This field is
        # only relevant when type is set to null, CUSTOM_VARIABLE_TERM or REFERRER_TERM.
        # Corresponds to the JSON property `variableName`
        # @return [String]
        attr_accessor :variable_name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @contains = args[:contains] unless args[:contains].nil?
          @negation = args[:negation] unless args[:negation].nil?
          @operator = args[:operator] unless args[:operator].nil?
          @remarketing_list_id = args[:remarketing_list_id] unless args[:remarketing_list_id].nil?
          @type = args[:type] unless args[:type].nil?
          @value = args[:value] unless args[:value].nil?
          @variable_friendly_name = args[:variable_friendly_name] unless args[:variable_friendly_name].nil?
          @variable_name = args[:variable_name] unless args[:variable_name].nil?
        end
      end
      
      # Remarketing List Targeting Expression.
      class ListTargetingExpression
        include Google::Apis::Core::Hashable
      
        # Expression describing which lists are being targeted by the ad.
        # Corresponds to the JSON property `expression`
        # @return [String]
        attr_accessor :expression
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @expression = args[:expression] unless args[:expression].nil?
        end
      end
      
      # Lookback configuration settings.
      class LookbackConfiguration
        include Google::Apis::Core::Hashable
      
        # Lookback window, in days, from the last time a given user clicked on one of
        # your ads. If you enter 0, clicks will not be considered as triggering events
        # for floodlight tracking. If you leave this field blank, the default value for
        # your account will be used.
        # Corresponds to the JSON property `clickDuration`
        # @return [Fixnum]
        attr_accessor :click_duration
      
        # Lookback window, in days, from the last time a given user viewed one of your
        # ads. If you enter 0, impressions will not be considered as triggering events
        # for floodlight tracking. If you leave this field blank, the default value for
        # your account will be used.
        # Corresponds to the JSON property `postImpressionActivitiesDuration`
        # @return [Fixnum]
        attr_accessor :post_impression_activities_duration
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @click_duration = args[:click_duration] unless args[:click_duration].nil?
          @post_impression_activities_duration = args[:post_impression_activities_duration] unless args[:post_impression_activities_duration].nil?
        end
      end
      
      # Represents a metric.
      class Metric
        include Google::Apis::Core::Hashable
      
        # The kind of resource this is, in this case dfareporting#metric.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # The metric name, e.g. dfa:impressions
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @kind = args[:kind] unless args[:kind].nil?
          @name = args[:name] unless args[:name].nil?
        end
      end
      
      # Contains information about a metro region that can be targeted by ads.
      class Metro
        include Google::Apis::Core::Hashable
      
        # Country code of the country to which this metro region belongs.
        # Corresponds to the JSON property `countryCode`
        # @return [String]
        attr_accessor :country_code
      
        # DART ID of the country to which this metro region belongs.
        # Corresponds to the JSON property `countryDartId`
        # @return [String]
        attr_accessor :country_dart_id
      
        # DART ID of this metro region.
        # Corresponds to the JSON property `dartId`
        # @return [String]
        attr_accessor :dart_id
      
        # DMA ID of this metro region. This is the ID used for targeting and generating
        # reports, and is equivalent to metro_code.
        # Corresponds to the JSON property `dmaId`
        # @return [String]
        attr_accessor :dma_id
      
        # Identifies what kind of resource this is. Value: the fixed string "
        # dfareporting#metro".
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # Metro code of this metro region. This is equivalent to dma_id.
        # Corresponds to the JSON property `metroCode`
        # @return [String]
        attr_accessor :metro_code
      
        # Name of this metro region.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @country_code = args[:country_code] unless args[:country_code].nil?
          @country_dart_id = args[:country_dart_id] unless args[:country_dart_id].nil?
          @dart_id = args[:dart_id] unless args[:dart_id].nil?
          @dma_id = args[:dma_id] unless args[:dma_id].nil?
          @kind = args[:kind] unless args[:kind].nil?
          @metro_code = args[:metro_code] unless args[:metro_code].nil?
          @name = args[:name] unless args[:name].nil?
        end
      end
      
      # Metro List Response
      class ListMetrosResponse
        include Google::Apis::Core::Hashable
      
        # Identifies what kind of resource this is. Value: the fixed string "
        # dfareporting#metrosListResponse".
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # Metro collection.
        # Corresponds to the JSON property `metros`
        # @return [Array<Google::Apis::DfareportingV2_1::Metro>]
        attr_accessor :metros
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @kind = args[:kind] unless args[:kind].nil?
          @metros = args[:metros] unless args[:metros].nil?
        end
      end
      
      # Contains information about a mobile carrier that can be targeted by ads.
      class MobileCarrier
        include Google::Apis::Core::Hashable
      
        # Country code of the country to which this mobile carrier belongs.
        # Corresponds to the JSON property `countryCode`
        # @return [String]
        attr_accessor :country_code
      
        # DART ID of the country to which this mobile carrier belongs.
        # Corresponds to the JSON property `countryDartId`
        # @return [String]
        attr_accessor :country_dart_id
      
        # ID of this mobile carrier.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # Identifies what kind of resource this is. Value: the fixed string "
        # dfareporting#mobileCarrier".
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # Name of this mobile carrier.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @country_code = args[:country_code] unless args[:country_code].nil?
          @country_dart_id = args[:country_dart_id] unless args[:country_dart_id].nil?
          @id = args[:id] unless args[:id].nil?
          @kind = args[:kind] unless args[:kind].nil?
          @name = args[:name] unless args[:name].nil?
        end
      end
      
      # Mobile Carrier List Response
      class ListMobileCarriersResponse
        include Google::Apis::Core::Hashable
      
        # Identifies what kind of resource this is. Value: the fixed string "
        # dfareporting#mobileCarriersListResponse".
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # Mobile carrier collection.
        # Corresponds to the JSON property `mobileCarriers`
        # @return [Array<Google::Apis::DfareportingV2_1::MobileCarrier>]
        attr_accessor :mobile_carriers
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @kind = args[:kind] unless args[:kind].nil?
          @mobile_carriers = args[:mobile_carriers] unless args[:mobile_carriers].nil?
        end
      end
      
      # Object Filter.
      class ObjectFilter
        include Google::Apis::Core::Hashable
      
        # Identifies what kind of resource this is. Value: the fixed string "
        # dfareporting#objectFilter".
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # Applicable when status is ASSIGNED. The user has access to objects with these
        # object IDs.
        # Corresponds to the JSON property `objectIds`
        # @return [Array<String>]
        attr_accessor :object_ids
      
        # Status of the filter. NONE means the user has access to none of the objects.
        # ALL means the user has access to all objects. ASSIGNED means the user has
        # access to the objects with IDs in the objectIds list.
        # Corresponds to the JSON property `status`
        # @return [String]
        attr_accessor :status
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @kind = args[:kind] unless args[:kind].nil?
          @object_ids = args[:object_ids] unless args[:object_ids].nil?
          @status = args[:status] unless args[:status].nil?
        end
      end
      
      # Offset Position.
      class OffsetPosition
        include Google::Apis::Core::Hashable
      
        # Offset distance from left side of an asset or a window.
        # Corresponds to the JSON property `left`
        # @return [Fixnum]
        attr_accessor :left
      
        # Offset distance from top side of an asset or a window.
        # Corresponds to the JSON property `top`
        # @return [Fixnum]
        attr_accessor :top
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @left = args[:left] unless args[:left].nil?
          @top = args[:top] unless args[:top].nil?
        end
      end
      
      # Omniture Integration Settings.
      class OmnitureSettings
        include Google::Apis::Core::Hashable
      
        # Whether placement cost data will be sent to Omniture. This property can be
        # enabled only if omnitureIntegrationEnabled is true.
        # Corresponds to the JSON property `omnitureCostDataEnabled`
        # @return [Boolean]
        attr_accessor :omniture_cost_data_enabled
        alias_method :omniture_cost_data_enabled?, :omniture_cost_data_enabled
      
        # Whether Omniture integration is enabled. This property can be enabled only
        # when the "Advanced Ad Serving" account setting is enabled.
        # Corresponds to the JSON property `omnitureIntegrationEnabled`
        # @return [Boolean]
        attr_accessor :omniture_integration_enabled
        alias_method :omniture_integration_enabled?, :omniture_integration_enabled
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @omniture_cost_data_enabled = args[:omniture_cost_data_enabled] unless args[:omniture_cost_data_enabled].nil?
          @omniture_integration_enabled = args[:omniture_integration_enabled] unless args[:omniture_integration_enabled].nil?
        end
      end
      
      # Contains information about an operating system that can be targeted by ads.
      class OperatingSystem
        include Google::Apis::Core::Hashable
      
        # DART ID of this operating system. This is the ID used for targeting.
        # Corresponds to the JSON property `dartId`
        # @return [String]
        attr_accessor :dart_id
      
        # Whether this operating system is for desktop.
        # Corresponds to the JSON property `desktop`
        # @return [Boolean]
        attr_accessor :desktop
        alias_method :desktop?, :desktop
      
        # Identifies what kind of resource this is. Value: the fixed string "
        # dfareporting#operatingSystem".
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # Whether this operating system is for mobile.
        # Corresponds to the JSON property `mobile`
        # @return [Boolean]
        attr_accessor :mobile
        alias_method :mobile?, :mobile
      
        # Name of this operating system.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @dart_id = args[:dart_id] unless args[:dart_id].nil?
          @desktop = args[:desktop] unless args[:desktop].nil?
          @kind = args[:kind] unless args[:kind].nil?
          @mobile = args[:mobile] unless args[:mobile].nil?
          @name = args[:name] unless args[:name].nil?
        end
      end
      
      # Contains information about a particular version of an operating system that
      # can be targeted by ads.
      class OperatingSystemVersion
        include Google::Apis::Core::Hashable
      
        # ID of this operating system version.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # Identifies what kind of resource this is. Value: the fixed string "
        # dfareporting#operatingSystemVersion".
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # Major version (leftmost number) of this operating system version.
        # Corresponds to the JSON property `majorVersion`
        # @return [String]
        attr_accessor :major_version
      
        # Minor version (number after the first dot) of this operating system version.
        # Corresponds to the JSON property `minorVersion`
        # @return [String]
        attr_accessor :minor_version
      
        # Name of this operating system version.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Contains information about an operating system that can be targeted by ads.
        # Corresponds to the JSON property `operatingSystem`
        # @return [Google::Apis::DfareportingV2_1::OperatingSystem]
        attr_accessor :operating_system
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @id = args[:id] unless args[:id].nil?
          @kind = args[:kind] unless args[:kind].nil?
          @major_version = args[:major_version] unless args[:major_version].nil?
          @minor_version = args[:minor_version] unless args[:minor_version].nil?
          @name = args[:name] unless args[:name].nil?
          @operating_system = args[:operating_system] unless args[:operating_system].nil?
        end
      end
      
      # Operating System Version List Response
      class ListOperatingSystemVersionsResponse
        include Google::Apis::Core::Hashable
      
        # Identifies what kind of resource this is. Value: the fixed string "
        # dfareporting#operatingSystemVersionsListResponse".
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # Operating system version collection.
        # Corresponds to the JSON property `operatingSystemVersions`
        # @return [Array<Google::Apis::DfareportingV2_1::OperatingSystemVersion>]
        attr_accessor :operating_system_versions
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @kind = args[:kind] unless args[:kind].nil?
          @operating_system_versions = args[:operating_system_versions] unless args[:operating_system_versions].nil?
        end
      end
      
      # Operating System List Response
      class ListOperatingSystemsResponse
        include Google::Apis::Core::Hashable
      
        # Identifies what kind of resource this is. Value: the fixed string "
        # dfareporting#operatingSystemsListResponse".
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # Operating system collection.
        # Corresponds to the JSON property `operatingSystems`
        # @return [Array<Google::Apis::DfareportingV2_1::OperatingSystem>]
        attr_accessor :operating_systems
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @kind = args[:kind] unless args[:kind].nil?
          @operating_systems = args[:operating_systems] unless args[:operating_systems].nil?
        end
      end
      
      # Creative optimization activity.
      class OptimizationActivity
        include Google::Apis::Core::Hashable
      
        # Floodlight activity ID of this optimization activity. This is a required field.
        # Corresponds to the JSON property `floodlightActivityId`
        # @return [String]
        attr_accessor :floodlight_activity_id
      
        # Represents a DimensionValue resource.
        # Corresponds to the JSON property `floodlightActivityIdDimensionValue`
        # @return [Google::Apis::DfareportingV2_1::DimensionValue]
        attr_accessor :floodlight_activity_id_dimension_value
      
        # Weight associated with this optimization. Must be greater than 1. The weight
        # assigned will be understood in proportion to the weights assigned to the other
        # optimization activities.
        # Corresponds to the JSON property `weight`
        # @return [Fixnum]
        attr_accessor :weight
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @floodlight_activity_id = args[:floodlight_activity_id] unless args[:floodlight_activity_id].nil?
          @floodlight_activity_id_dimension_value = args[:floodlight_activity_id_dimension_value] unless args[:floodlight_activity_id_dimension_value].nil?
          @weight = args[:weight] unless args[:weight].nil?
        end
      end
      
      # Describes properties of a DoubleClick Planning order.
      class Order
        include Google::Apis::Core::Hashable
      
        # Account ID of this order.
        # Corresponds to the JSON property `accountId`
        # @return [String]
        attr_accessor :account_id
      
        # Advertiser ID of this order.
        # Corresponds to the JSON property `advertiserId`
        # @return [String]
        attr_accessor :advertiser_id
      
        # IDs for users that have to approve documents created for this order.
        # Corresponds to the JSON property `approverUserProfileIds`
        # @return [Array<String>]
        attr_accessor :approver_user_profile_ids
      
        # Buyer invoice ID associated with this order.
        # Corresponds to the JSON property `buyerInvoiceId`
        # @return [String]
        attr_accessor :buyer_invoice_id
      
        # Name of the buyer organization.
        # Corresponds to the JSON property `buyerOrganizationName`
        # @return [String]
        attr_accessor :buyer_organization_name
      
        # Comments in this order.
        # Corresponds to the JSON property `comments`
        # @return [String]
        attr_accessor :comments
      
        # Contacts for this order.
        # Corresponds to the JSON property `contacts`
        # @return [Array<Google::Apis::DfareportingV2_1::OrderContact>]
        attr_accessor :contacts
      
        # ID of this order. This is a read-only, auto-generated field.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # Identifies what kind of resource this is. Value: the fixed string "
        # dfareporting#order".
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # Modification timestamp.
        # Corresponds to the JSON property `lastModifiedInfo`
        # @return [Google::Apis::DfareportingV2_1::LastModifiedInfo]
        attr_accessor :last_modified_info
      
        # Name of this order.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Notes of this order.
        # Corresponds to the JSON property `notes`
        # @return [String]
        attr_accessor :notes
      
        # ID of the terms and conditions template used in this order.
        # Corresponds to the JSON property `planningTermId`
        # @return [String]
        attr_accessor :planning_term_id
      
        # Project ID of this order.
        # Corresponds to the JSON property `projectId`
        # @return [String]
        attr_accessor :project_id
      
        # Seller order ID associated with this order.
        # Corresponds to the JSON property `sellerOrderId`
        # @return [String]
        attr_accessor :seller_order_id
      
        # Name of the seller organization.
        # Corresponds to the JSON property `sellerOrganizationName`
        # @return [String]
        attr_accessor :seller_organization_name
      
        # Site IDs this order is associated with.
        # Corresponds to the JSON property `siteId`
        # @return [Array<String>]
        attr_accessor :site_id
      
        # Free-form site names this order is associated with.
        # Corresponds to the JSON property `siteNames`
        # @return [Array<String>]
        attr_accessor :site_names
      
        # Subaccount ID of this order.
        # Corresponds to the JSON property `subaccountId`
        # @return [String]
        attr_accessor :subaccount_id
      
        # Terms and conditions of this order.
        # Corresponds to the JSON property `termsAndConditions`
        # @return [String]
        attr_accessor :terms_and_conditions
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @account_id = args[:account_id] unless args[:account_id].nil?
          @advertiser_id = args[:advertiser_id] unless args[:advertiser_id].nil?
          @approver_user_profile_ids = args[:approver_user_profile_ids] unless args[:approver_user_profile_ids].nil?
          @buyer_invoice_id = args[:buyer_invoice_id] unless args[:buyer_invoice_id].nil?
          @buyer_organization_name = args[:buyer_organization_name] unless args[:buyer_organization_name].nil?
          @comments = args[:comments] unless args[:comments].nil?
          @contacts = args[:contacts] unless args[:contacts].nil?
          @id = args[:id] unless args[:id].nil?
          @kind = args[:kind] unless args[:kind].nil?
          @last_modified_info = args[:last_modified_info] unless args[:last_modified_info].nil?
          @name = args[:name] unless args[:name].nil?
          @notes = args[:notes] unless args[:notes].nil?
          @planning_term_id = args[:planning_term_id] unless args[:planning_term_id].nil?
          @project_id = args[:project_id] unless args[:project_id].nil?
          @seller_order_id = args[:seller_order_id] unless args[:seller_order_id].nil?
          @seller_organization_name = args[:seller_organization_name] unless args[:seller_organization_name].nil?
          @site_id = args[:site_id] unless args[:site_id].nil?
          @site_names = args[:site_names] unless args[:site_names].nil?
          @subaccount_id = args[:subaccount_id] unless args[:subaccount_id].nil?
          @terms_and_conditions = args[:terms_and_conditions] unless args[:terms_and_conditions].nil?
        end
      end
      
      # Contact of an order.
      class OrderContact
        include Google::Apis::Core::Hashable
      
        # Free-form information about this contact. It could be any information related
        # to this contact in addition to type, title, name, and signature user profile
        # ID.
        # Corresponds to the JSON property `contactInfo`
        # @return [String]
        attr_accessor :contact_info
      
        # Name of this contact.
        # Corresponds to the JSON property `contactName`
        # @return [String]
        attr_accessor :contact_name
      
        # Title of this contact.
        # Corresponds to the JSON property `contactTitle`
        # @return [String]
        attr_accessor :contact_title
      
        # Type of this contact.
        # Corresponds to the JSON property `contactType`
        # @return [String]
        attr_accessor :contact_type
      
        # ID of the user profile containing the signature that will be embedded into
        # order documents.
        # Corresponds to the JSON property `signatureUserProfileId`
        # @return [String]
        attr_accessor :signature_user_profile_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @contact_info = args[:contact_info] unless args[:contact_info].nil?
          @contact_name = args[:contact_name] unless args[:contact_name].nil?
          @contact_title = args[:contact_title] unless args[:contact_title].nil?
          @contact_type = args[:contact_type] unless args[:contact_type].nil?
          @signature_user_profile_id = args[:signature_user_profile_id] unless args[:signature_user_profile_id].nil?
        end
      end
      
      # Contains properties of a DoubleClick Planning order document.
      class OrderDocument
        include Google::Apis::Core::Hashable
      
        # Account ID of this order document.
        # Corresponds to the JSON property `accountId`
        # @return [String]
        attr_accessor :account_id
      
        # Advertiser ID of this order document.
        # Corresponds to the JSON property `advertiserId`
        # @return [String]
        attr_accessor :advertiser_id
      
        # The amended order document ID of this order document. An order document can be
        # created by optionally amending another order document so that the change
        # history can be preserved.
        # Corresponds to the JSON property `amendedOrderDocumentId`
        # @return [String]
        attr_accessor :amended_order_document_id
      
        # IDs of users who have approved this order document.
        # Corresponds to the JSON property `approvedByUserProfileIds`
        # @return [Array<String>]
        attr_accessor :approved_by_user_profile_ids
      
        # Whether this order document is cancelled.
        # Corresponds to the JSON property `cancelled`
        # @return [Boolean]
        attr_accessor :cancelled
        alias_method :cancelled?, :cancelled
      
        # Modification timestamp.
        # Corresponds to the JSON property `createdInfo`
        # @return [Google::Apis::DfareportingV2_1::LastModifiedInfo]
        attr_accessor :created_info
      
        # Effective date of this order document.
        # Corresponds to the JSON property `effectiveDate`
        # @return [Date]
        attr_accessor :effective_date
      
        # ID of this order document.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # Identifies what kind of resource this is. Value: the fixed string "
        # dfareporting#orderDocument".
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # ID of the order from which this order document is created.
        # Corresponds to the JSON property `orderId`
        # @return [String]
        attr_accessor :order_id
      
        # Project ID of this order document.
        # Corresponds to the JSON property `projectId`
        # @return [String]
        attr_accessor :project_id
      
        # Whether this order document has been signed.
        # Corresponds to the JSON property `signed`
        # @return [Boolean]
        attr_accessor :signed
        alias_method :signed?, :signed
      
        # Subaccount ID of this order document.
        # Corresponds to the JSON property `subaccountId`
        # @return [String]
        attr_accessor :subaccount_id
      
        # Title of this order document.
        # Corresponds to the JSON property `title`
        # @return [String]
        attr_accessor :title
      
        # Type of this order document
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @account_id = args[:account_id] unless args[:account_id].nil?
          @advertiser_id = args[:advertiser_id] unless args[:advertiser_id].nil?
          @amended_order_document_id = args[:amended_order_document_id] unless args[:amended_order_document_id].nil?
          @approved_by_user_profile_ids = args[:approved_by_user_profile_ids] unless args[:approved_by_user_profile_ids].nil?
          @cancelled = args[:cancelled] unless args[:cancelled].nil?
          @created_info = args[:created_info] unless args[:created_info].nil?
          @effective_date = args[:effective_date] unless args[:effective_date].nil?
          @id = args[:id] unless args[:id].nil?
          @kind = args[:kind] unless args[:kind].nil?
          @order_id = args[:order_id] unless args[:order_id].nil?
          @project_id = args[:project_id] unless args[:project_id].nil?
          @signed = args[:signed] unless args[:signed].nil?
          @subaccount_id = args[:subaccount_id] unless args[:subaccount_id].nil?
          @title = args[:title] unless args[:title].nil?
          @type = args[:type] unless args[:type].nil?
        end
      end
      
      # Order document List Response
      class ListOrderDocumentsResponse
        include Google::Apis::Core::Hashable
      
        # Identifies what kind of resource this is. Value: the fixed string "
        # dfareporting#orderDocumentsListResponse".
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # Pagination token to be used for the next list operation.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # Order document collection
        # Corresponds to the JSON property `orderDocuments`
        # @return [Array<Google::Apis::DfareportingV2_1::OrderDocument>]
        attr_accessor :order_documents
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @kind = args[:kind] unless args[:kind].nil?
          @next_page_token = args[:next_page_token] unless args[:next_page_token].nil?
          @order_documents = args[:order_documents] unless args[:order_documents].nil?
        end
      end
      
      # Order List Response
      class ListOrdersResponse
        include Google::Apis::Core::Hashable
      
        # Identifies what kind of resource this is. Value: the fixed string "
        # dfareporting#ordersListResponse".
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # Pagination token to be used for the next list operation.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # Order collection.
        # Corresponds to the JSON property `orders`
        # @return [Array<Google::Apis::DfareportingV2_1::Order>]
        attr_accessor :orders
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @kind = args[:kind] unless args[:kind].nil?
          @next_page_token = args[:next_page_token] unless args[:next_page_token].nil?
          @orders = args[:orders] unless args[:orders].nil?
        end
      end
      
      # Represents fields that are compatible to be selected for a report of type "
      # PATH_TO_CONVERSION".
      class PathToConversionReportCompatibleFields
        include Google::Apis::Core::Hashable
      
        # Conversion dimensions which are compatible to be selected in the "
        # conversionDimensions" section of the report.
        # Corresponds to the JSON property `conversionDimensions`
        # @return [Array<Google::Apis::DfareportingV2_1::Dimension>]
        attr_accessor :conversion_dimensions
      
        # Custom floodlight variables which are compatible to be selected in the "
        # customFloodlightVariables" section of the report.
        # Corresponds to the JSON property `customFloodlightVariables`
        # @return [Array<Google::Apis::DfareportingV2_1::Dimension>]
        attr_accessor :custom_floodlight_variables
      
        # The kind of resource this is, in this case dfareporting#
        # pathToConversionReportCompatibleFields.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # Metrics which are compatible to be selected in the "metricNames" section of
        # the report.
        # Corresponds to the JSON property `metrics`
        # @return [Array<Google::Apis::DfareportingV2_1::Metric>]
        attr_accessor :metrics
      
        # Per-interaction dimensions which are compatible to be selected in the "
        # perInteractionDimensions" section of the report.
        # Corresponds to the JSON property `perInteractionDimensions`
        # @return [Array<Google::Apis::DfareportingV2_1::Dimension>]
        attr_accessor :per_interaction_dimensions
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @conversion_dimensions = args[:conversion_dimensions] unless args[:conversion_dimensions].nil?
          @custom_floodlight_variables = args[:custom_floodlight_variables] unless args[:custom_floodlight_variables].nil?
          @kind = args[:kind] unless args[:kind].nil?
          @metrics = args[:metrics] unless args[:metrics].nil?
          @per_interaction_dimensions = args[:per_interaction_dimensions] unless args[:per_interaction_dimensions].nil?
        end
      end
      
      # Contains properties of a placement.
      class Placement
        include Google::Apis::Core::Hashable
      
        # Account ID of this placement. This field can be left blank.
        # Corresponds to the JSON property `accountId`
        # @return [String]
        attr_accessor :account_id
      
        # Advertiser ID of this placement. This field can be left blank.
        # Corresponds to the JSON property `advertiserId`
        # @return [String]
        attr_accessor :advertiser_id
      
        # Represents a DimensionValue resource.
        # Corresponds to the JSON property `advertiserIdDimensionValue`
        # @return [Google::Apis::DfareportingV2_1::DimensionValue]
        attr_accessor :advertiser_id_dimension_value
      
        # Whether this placement is archived.
        # Corresponds to the JSON property `archived`
        # @return [Boolean]
        attr_accessor :archived
        alias_method :archived?, :archived
      
        # Campaign ID of this placement. This field is a required field on insertion.
        # Corresponds to the JSON property `campaignId`
        # @return [String]
        attr_accessor :campaign_id
      
        # Represents a DimensionValue resource.
        # Corresponds to the JSON property `campaignIdDimensionValue`
        # @return [Google::Apis::DfareportingV2_1::DimensionValue]
        attr_accessor :campaign_id_dimension_value
      
        # Comments for this placement.
        # Corresponds to the JSON property `comment`
        # @return [String]
        attr_accessor :comment
      
        # Placement compatibility. WEB and WEB_INTERSTITIAL refer to rendering either on
        # desktop or on mobile devices for regular or interstitial ads, respectively.
        # APP and APP_INTERSTITIAL are for rendering in mobile apps.IN_STREAM_VIDEO
        # refers to rendering in in-stream video ads developed with the VAST standard.
        # This field is required on insertion.
        # Corresponds to the JSON property `compatibility`
        # @return [String]
        attr_accessor :compatibility
      
        # ID of the content category assigned to this placement.
        # Corresponds to the JSON property `contentCategoryId`
        # @return [String]
        attr_accessor :content_category_id
      
        # Modification timestamp.
        # Corresponds to the JSON property `createInfo`
        # @return [Google::Apis::DfareportingV2_1::LastModifiedInfo]
        attr_accessor :create_info
      
        # Directory site ID of this placement. On insert, you must set either this field
        # or the siteId field to specify the site associated with this placement. This
        # is a required field that is read-only after insertion.
        # Corresponds to the JSON property `directorySiteId`
        # @return [String]
        attr_accessor :directory_site_id
      
        # Represents a DimensionValue resource.
        # Corresponds to the JSON property `directorySiteIdDimensionValue`
        # @return [Google::Apis::DfareportingV2_1::DimensionValue]
        attr_accessor :directory_site_id_dimension_value
      
        # External ID for this placement.
        # Corresponds to the JSON property `externalId`
        # @return [String]
        attr_accessor :external_id
      
        # ID of this placement. This is a read-only, auto-generated field.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # Represents a DimensionValue resource.
        # Corresponds to the JSON property `idDimensionValue`
        # @return [Google::Apis::DfareportingV2_1::DimensionValue]
        attr_accessor :id_dimension_value
      
        # Key name of this placement. This is a read-only, auto-generated field.
        # Corresponds to the JSON property `keyName`
        # @return [String]
        attr_accessor :key_name
      
        # Identifies what kind of resource this is. Value: the fixed string "
        # dfareporting#placement".
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # Modification timestamp.
        # Corresponds to the JSON property `lastModifiedInfo`
        # @return [Google::Apis::DfareportingV2_1::LastModifiedInfo]
        attr_accessor :last_modified_info
      
        # Lookback configuration settings.
        # Corresponds to the JSON property `lookbackConfiguration`
        # @return [Google::Apis::DfareportingV2_1::LookbackConfiguration]
        attr_accessor :lookback_configuration
      
        # Name of this placement.This is a required field and must be less than 256
        # characters long.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Whether payment was approved for this placement. This is a read-only field
        # relevant only to publisher-paid placements.
        # Corresponds to the JSON property `paymentApproved`
        # @return [Boolean]
        attr_accessor :payment_approved
        alias_method :payment_approved?, :payment_approved
      
        # Payment source for this placement. This is a required field that is read-only
        # after insertion.
        # Corresponds to the JSON property `paymentSource`
        # @return [String]
        attr_accessor :payment_source
      
        # ID of this placement's group, if applicable.
        # Corresponds to the JSON property `placementGroupId`
        # @return [String]
        attr_accessor :placement_group_id
      
        # Represents a DimensionValue resource.
        # Corresponds to the JSON property `placementGroupIdDimensionValue`
        # @return [Google::Apis::DfareportingV2_1::DimensionValue]
        attr_accessor :placement_group_id_dimension_value
      
        # ID of the placement strategy assigned to this placement.
        # Corresponds to the JSON property `placementStrategyId`
        # @return [String]
        attr_accessor :placement_strategy_id
      
        # Pricing Schedule
        # Corresponds to the JSON property `pricingSchedule`
        # @return [Google::Apis::DfareportingV2_1::PricingSchedule]
        attr_accessor :pricing_schedule
      
        # Whether this placement is the primary placement of a roadblock (placement
        # group). You cannot change this field from true to false. Setting this field to
        # true will automatically set the primary field on the original primary
        # placement of the roadblock to false, and it will automatically set the
        # roadblock's primaryPlacementId field to the ID of this placement.
        # Corresponds to the JSON property `primary`
        # @return [Boolean]
        attr_accessor :primary
        alias_method :primary?, :primary
      
        # Modification timestamp.
        # Corresponds to the JSON property `publisherUpdateInfo`
        # @return [Google::Apis::DfareportingV2_1::LastModifiedInfo]
        attr_accessor :publisher_update_info
      
        # Site ID associated with this placement. On insert, you must set either this
        # field or the directorySiteId field to specify the site associated with this
        # placement. This is a required field that is read-only after insertion.
        # Corresponds to the JSON property `siteId`
        # @return [String]
        attr_accessor :site_id
      
        # Represents a DimensionValue resource.
        # Corresponds to the JSON property `siteIdDimensionValue`
        # @return [Google::Apis::DfareportingV2_1::DimensionValue]
        attr_accessor :site_id_dimension_value
      
        # Represents the dimensions of ads, placements, creatives, or creative assets.
        # Corresponds to the JSON property `size`
        # @return [Google::Apis::DfareportingV2_1::Size]
        attr_accessor :size
      
        # Whether creatives assigned to this placement must be SSL-compliant.
        # Corresponds to the JSON property `sslRequired`
        # @return [Boolean]
        attr_accessor :ssl_required
        alias_method :ssl_required?, :ssl_required
      
        # Third-party placement status.
        # Corresponds to the JSON property `status`
        # @return [String]
        attr_accessor :status
      
        # Subaccount ID of this placement. This field can be left blank.
        # Corresponds to the JSON property `subaccountId`
        # @return [String]
        attr_accessor :subaccount_id
      
        # Tag formats to generate for this placement. This field is required on
        # insertion.
        # Acceptable values are:
        # - "PLACEMENT_TAG_STANDARD"
        # - "PLACEMENT_TAG_IFRAME_JAVASCRIPT"
        # - "PLACEMENT_TAG_IFRAME_ILAYER"
        # - "PLACEMENT_TAG_INTERNAL_REDIRECT"
        # - "PLACEMENT_TAG_JAVASCRIPT"
        # - "PLACEMENT_TAG_INTERSTITIAL_IFRAME_JAVASCRIPT"
        # - "PLACEMENT_TAG_INTERSTITIAL_INTERNAL_REDIRECT"
        # - "PLACEMENT_TAG_INTERSTITIAL_JAVASCRIPT"
        # - "PLACEMENT_TAG_CLICK_COMMANDS"
        # - "PLACEMENT_TAG_INSTREAM_VIDEO_PREFETCH"
        # - "PLACEMENT_TAG_TRACKING"
        # - "PLACEMENT_TAG_TRACKING_IFRAME"
        # - "PLACEMENT_TAG_TRACKING_JAVASCRIPT"
        # Corresponds to the JSON property `tagFormats`
        # @return [Array<String>]
        attr_accessor :tag_formats
      
        # Tag Settings
        # Corresponds to the JSON property `tagSetting`
        # @return [Google::Apis::DfareportingV2_1::TagSetting]
        attr_accessor :tag_setting
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @account_id = args[:account_id] unless args[:account_id].nil?
          @advertiser_id = args[:advertiser_id] unless args[:advertiser_id].nil?
          @advertiser_id_dimension_value = args[:advertiser_id_dimension_value] unless args[:advertiser_id_dimension_value].nil?
          @archived = args[:archived] unless args[:archived].nil?
          @campaign_id = args[:campaign_id] unless args[:campaign_id].nil?
          @campaign_id_dimension_value = args[:campaign_id_dimension_value] unless args[:campaign_id_dimension_value].nil?
          @comment = args[:comment] unless args[:comment].nil?
          @compatibility = args[:compatibility] unless args[:compatibility].nil?
          @content_category_id = args[:content_category_id] unless args[:content_category_id].nil?
          @create_info = args[:create_info] unless args[:create_info].nil?
          @directory_site_id = args[:directory_site_id] unless args[:directory_site_id].nil?
          @directory_site_id_dimension_value = args[:directory_site_id_dimension_value] unless args[:directory_site_id_dimension_value].nil?
          @external_id = args[:external_id] unless args[:external_id].nil?
          @id = args[:id] unless args[:id].nil?
          @id_dimension_value = args[:id_dimension_value] unless args[:id_dimension_value].nil?
          @key_name = args[:key_name] unless args[:key_name].nil?
          @kind = args[:kind] unless args[:kind].nil?
          @last_modified_info = args[:last_modified_info] unless args[:last_modified_info].nil?
          @lookback_configuration = args[:lookback_configuration] unless args[:lookback_configuration].nil?
          @name = args[:name] unless args[:name].nil?
          @payment_approved = args[:payment_approved] unless args[:payment_approved].nil?
          @payment_source = args[:payment_source] unless args[:payment_source].nil?
          @placement_group_id = args[:placement_group_id] unless args[:placement_group_id].nil?
          @placement_group_id_dimension_value = args[:placement_group_id_dimension_value] unless args[:placement_group_id_dimension_value].nil?
          @placement_strategy_id = args[:placement_strategy_id] unless args[:placement_strategy_id].nil?
          @pricing_schedule = args[:pricing_schedule] unless args[:pricing_schedule].nil?
          @primary = args[:primary] unless args[:primary].nil?
          @publisher_update_info = args[:publisher_update_info] unless args[:publisher_update_info].nil?
          @site_id = args[:site_id] unless args[:site_id].nil?
          @site_id_dimension_value = args[:site_id_dimension_value] unless args[:site_id_dimension_value].nil?
          @size = args[:size] unless args[:size].nil?
          @ssl_required = args[:ssl_required] unless args[:ssl_required].nil?
          @status = args[:status] unless args[:status].nil?
          @subaccount_id = args[:subaccount_id] unless args[:subaccount_id].nil?
          @tag_formats = args[:tag_formats] unless args[:tag_formats].nil?
          @tag_setting = args[:tag_setting] unless args[:tag_setting].nil?
        end
      end
      
      # Placement Assignment.
      class PlacementAssignment
        include Google::Apis::Core::Hashable
      
        # Whether this placement assignment is active. When true, the placement will be
        # included in the ad's rotation.
        # Corresponds to the JSON property `active`
        # @return [Boolean]
        attr_accessor :active
        alias_method :active?, :active
      
        # ID of the placement to be assigned. This is a required field.
        # Corresponds to the JSON property `placementId`
        # @return [String]
        attr_accessor :placement_id
      
        # Represents a DimensionValue resource.
        # Corresponds to the JSON property `placementIdDimensionValue`
        # @return [Google::Apis::DfareportingV2_1::DimensionValue]
        attr_accessor :placement_id_dimension_value
      
        # Whether the placement to be assigned requires SSL. This is a read-only field
        # that is auto-generated when the ad is inserted or updated.
        # Corresponds to the JSON property `sslRequired`
        # @return [Boolean]
        attr_accessor :ssl_required
        alias_method :ssl_required?, :ssl_required
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @active = args[:active] unless args[:active].nil?
          @placement_id = args[:placement_id] unless args[:placement_id].nil?
          @placement_id_dimension_value = args[:placement_id_dimension_value] unless args[:placement_id_dimension_value].nil?
          @ssl_required = args[:ssl_required] unless args[:ssl_required].nil?
        end
      end
      
      # Contains properties of a package or roadblock.
      class PlacementGroup
        include Google::Apis::Core::Hashable
      
        # Account ID of this placement group. This is a read-only field that can be left
        # blank.
        # Corresponds to the JSON property `accountId`
        # @return [String]
        attr_accessor :account_id
      
        # Advertiser ID of this placement group. This is a required field on insertion.
        # Corresponds to the JSON property `advertiserId`
        # @return [String]
        attr_accessor :advertiser_id
      
        # Represents a DimensionValue resource.
        # Corresponds to the JSON property `advertiserIdDimensionValue`
        # @return [Google::Apis::DfareportingV2_1::DimensionValue]
        attr_accessor :advertiser_id_dimension_value
      
        # Whether this placement group is archived.
        # Corresponds to the JSON property `archived`
        # @return [Boolean]
        attr_accessor :archived
        alias_method :archived?, :archived
      
        # Campaign ID of this placement group. This field is required on insertion.
        # Corresponds to the JSON property `campaignId`
        # @return [String]
        attr_accessor :campaign_id
      
        # Represents a DimensionValue resource.
        # Corresponds to the JSON property `campaignIdDimensionValue`
        # @return [Google::Apis::DfareportingV2_1::DimensionValue]
        attr_accessor :campaign_id_dimension_value
      
        # IDs of placements which are assigned to this placement group. This is a read-
        # only, auto-generated field.
        # Corresponds to the JSON property `childPlacementIds`
        # @return [Array<String>]
        attr_accessor :child_placement_ids
      
        # Comments for this placement group.
        # Corresponds to the JSON property `comment`
        # @return [String]
        attr_accessor :comment
      
        # ID of the content category assigned to this placement group.
        # Corresponds to the JSON property `contentCategoryId`
        # @return [String]
        attr_accessor :content_category_id
      
        # Modification timestamp.
        # Corresponds to the JSON property `createInfo`
        # @return [Google::Apis::DfareportingV2_1::LastModifiedInfo]
        attr_accessor :create_info
      
        # Directory site ID associated with this placement group. On insert, you must
        # set either this field or the site_id field to specify the site associated with
        # this placement group. This is a required field that is read-only after
        # insertion.
        # Corresponds to the JSON property `directorySiteId`
        # @return [String]
        attr_accessor :directory_site_id
      
        # Represents a DimensionValue resource.
        # Corresponds to the JSON property `directorySiteIdDimensionValue`
        # @return [Google::Apis::DfareportingV2_1::DimensionValue]
        attr_accessor :directory_site_id_dimension_value
      
        # External ID for this placement.
        # Corresponds to the JSON property `externalId`
        # @return [String]
        attr_accessor :external_id
      
        # ID of this placement group. This is a read-only, auto-generated field.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # Represents a DimensionValue resource.
        # Corresponds to the JSON property `idDimensionValue`
        # @return [Google::Apis::DfareportingV2_1::DimensionValue]
        attr_accessor :id_dimension_value
      
        # Identifies what kind of resource this is. Value: the fixed string "
        # dfareporting#placementGroup".
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # Modification timestamp.
        # Corresponds to the JSON property `lastModifiedInfo`
        # @return [Google::Apis::DfareportingV2_1::LastModifiedInfo]
        attr_accessor :last_modified_info
      
        # Name of this placement group. This is a required field and must be less than
        # 256 characters long.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Type of this placement group. A package is a simple group of placements that
        # acts as a single pricing point for a group of tags. A roadblock is a group of
        # placements that not only acts as a single pricing point, but also assumes that
        # all the tags in it will be served at the same time. A roadblock requires one
        # of its assigned placements to be marked as primary for reporting. This field
        # is required on insertion.
        # Corresponds to the JSON property `placementGroupType`
        # @return [String]
        attr_accessor :placement_group_type
      
        # ID of the placement strategy assigned to this placement group.
        # Corresponds to the JSON property `placementStrategyId`
        # @return [String]
        attr_accessor :placement_strategy_id
      
        # Pricing Schedule
        # Corresponds to the JSON property `pricingSchedule`
        # @return [Google::Apis::DfareportingV2_1::PricingSchedule]
        attr_accessor :pricing_schedule
      
        # ID of the primary placement, used to calculate the media cost of a roadblock (
        # placement group). Modifying this field will automatically modify the primary
        # field on all affected roadblock child placements.
        # Corresponds to the JSON property `primaryPlacementId`
        # @return [String]
        attr_accessor :primary_placement_id
      
        # Represents a DimensionValue resource.
        # Corresponds to the JSON property `primaryPlacementIdDimensionValue`
        # @return [Google::Apis::DfareportingV2_1::DimensionValue]
        attr_accessor :primary_placement_id_dimension_value
      
        # Programmatic Setting
        # Corresponds to the JSON property `programmaticSetting`
        # @return [Google::Apis::DfareportingV2_1::ProgrammaticSetting]
        attr_accessor :programmatic_setting
      
        # Site ID associated with this placement group. On insert, you must set either
        # this field or the directorySiteId field to specify the site associated with
        # this placement group. This is a required field that is read-only after
        # insertion.
        # Corresponds to the JSON property `siteId`
        # @return [String]
        attr_accessor :site_id
      
        # Represents a DimensionValue resource.
        # Corresponds to the JSON property `siteIdDimensionValue`
        # @return [Google::Apis::DfareportingV2_1::DimensionValue]
        attr_accessor :site_id_dimension_value
      
        # Subaccount ID of this placement group. This is a read-only field that can be
        # left blank.
        # Corresponds to the JSON property `subaccountId`
        # @return [String]
        attr_accessor :subaccount_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @account_id = args[:account_id] unless args[:account_id].nil?
          @advertiser_id = args[:advertiser_id] unless args[:advertiser_id].nil?
          @advertiser_id_dimension_value = args[:advertiser_id_dimension_value] unless args[:advertiser_id_dimension_value].nil?
          @archived = args[:archived] unless args[:archived].nil?
          @campaign_id = args[:campaign_id] unless args[:campaign_id].nil?
          @campaign_id_dimension_value = args[:campaign_id_dimension_value] unless args[:campaign_id_dimension_value].nil?
          @child_placement_ids = args[:child_placement_ids] unless args[:child_placement_ids].nil?
          @comment = args[:comment] unless args[:comment].nil?
          @content_category_id = args[:content_category_id] unless args[:content_category_id].nil?
          @create_info = args[:create_info] unless args[:create_info].nil?
          @directory_site_id = args[:directory_site_id] unless args[:directory_site_id].nil?
          @directory_site_id_dimension_value = args[:directory_site_id_dimension_value] unless args[:directory_site_id_dimension_value].nil?
          @external_id = args[:external_id] unless args[:external_id].nil?
          @id = args[:id] unless args[:id].nil?
          @id_dimension_value = args[:id_dimension_value] unless args[:id_dimension_value].nil?
          @kind = args[:kind] unless args[:kind].nil?
          @last_modified_info = args[:last_modified_info] unless args[:last_modified_info].nil?
          @name = args[:name] unless args[:name].nil?
          @placement_group_type = args[:placement_group_type] unless args[:placement_group_type].nil?
          @placement_strategy_id = args[:placement_strategy_id] unless args[:placement_strategy_id].nil?
          @pricing_schedule = args[:pricing_schedule] unless args[:pricing_schedule].nil?
          @primary_placement_id = args[:primary_placement_id] unless args[:primary_placement_id].nil?
          @primary_placement_id_dimension_value = args[:primary_placement_id_dimension_value] unless args[:primary_placement_id_dimension_value].nil?
          @programmatic_setting = args[:programmatic_setting] unless args[:programmatic_setting].nil?
          @site_id = args[:site_id] unless args[:site_id].nil?
          @site_id_dimension_value = args[:site_id_dimension_value] unless args[:site_id_dimension_value].nil?
          @subaccount_id = args[:subaccount_id] unless args[:subaccount_id].nil?
        end
      end
      
      # Placement Group List Response
      class ListPlacementGroupsResponse
        include Google::Apis::Core::Hashable
      
        # Identifies what kind of resource this is. Value: the fixed string "
        # dfareporting#placementGroupsListResponse".
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # Pagination token to be used for the next list operation.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # Placement group collection.
        # Corresponds to the JSON property `placementGroups`
        # @return [Array<Google::Apis::DfareportingV2_1::PlacementGroup>]
        attr_accessor :placement_groups
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @kind = args[:kind] unless args[:kind].nil?
          @next_page_token = args[:next_page_token] unless args[:next_page_token].nil?
          @placement_groups = args[:placement_groups] unless args[:placement_groups].nil?
        end
      end
      
      # Placement Strategy List Response
      class ListPlacementStrategiesResponse
        include Google::Apis::Core::Hashable
      
        # Identifies what kind of resource this is. Value: the fixed string "
        # dfareporting#placementStrategiesListResponse".
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # Pagination token to be used for the next list operation.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # Placement strategy collection.
        # Corresponds to the JSON property `placementStrategies`
        # @return [Array<Google::Apis::DfareportingV2_1::PlacementStrategy>]
        attr_accessor :placement_strategies
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @kind = args[:kind] unless args[:kind].nil?
          @next_page_token = args[:next_page_token] unless args[:next_page_token].nil?
          @placement_strategies = args[:placement_strategies] unless args[:placement_strategies].nil?
        end
      end
      
      # Contains properties of a placement strategy.
      class PlacementStrategy
        include Google::Apis::Core::Hashable
      
        # Account ID of this placement strategy.This is a read-only field that can be
        # left blank.
        # Corresponds to the JSON property `accountId`
        # @return [String]
        attr_accessor :account_id
      
        # ID of this placement strategy. This is a read-only, auto-generated field.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # Identifies what kind of resource this is. Value: the fixed string "
        # dfareporting#placementStrategy".
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # Name of this placement strategy. This is a required field. It must be less
        # than 256 characters long and unique among placement strategies of the same
        # account.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @account_id = args[:account_id] unless args[:account_id].nil?
          @id = args[:id] unless args[:id].nil?
          @kind = args[:kind] unless args[:kind].nil?
          @name = args[:name] unless args[:name].nil?
        end
      end
      
      # Placement Tag
      class PlacementTag
        include Google::Apis::Core::Hashable
      
        # Placement ID
        # Corresponds to the JSON property `placementId`
        # @return [String]
        attr_accessor :placement_id
      
        # Tags generated for this placement.
        # Corresponds to the JSON property `tagDatas`
        # @return [Array<Google::Apis::DfareportingV2_1::TagData>]
        attr_accessor :tag_datas
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @placement_id = args[:placement_id] unless args[:placement_id].nil?
          @tag_datas = args[:tag_datas] unless args[:tag_datas].nil?
        end
      end
      
      # Placement GenerateTags Response
      class GeneratePlacementsTagsResponse
        include Google::Apis::Core::Hashable
      
        # Identifies what kind of resource this is. Value: the fixed string "
        # dfareporting#placementsGenerateTagsResponse".
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # Set of generated tags for the specified placements.
        # Corresponds to the JSON property `placementTags`
        # @return [Array<Google::Apis::DfareportingV2_1::PlacementTag>]
        attr_accessor :placement_tags
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @kind = args[:kind] unless args[:kind].nil?
          @placement_tags = args[:placement_tags] unless args[:placement_tags].nil?
        end
      end
      
      # Placement List Response
      class ListPlacementsResponse
        include Google::Apis::Core::Hashable
      
        # Identifies what kind of resource this is. Value: the fixed string "
        # dfareporting#placementsListResponse".
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # Pagination token to be used for the next list operation.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # Placement collection.
        # Corresponds to the JSON property `placements`
        # @return [Array<Google::Apis::DfareportingV2_1::Placement>]
        attr_accessor :placements
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @kind = args[:kind] unless args[:kind].nil?
          @next_page_token = args[:next_page_token] unless args[:next_page_token].nil?
          @placements = args[:placements] unless args[:placements].nil?
        end
      end
      
      # Contains information about a platform type that can be targeted by ads.
      class PlatformType
        include Google::Apis::Core::Hashable
      
        # ID of this platform type.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # Identifies what kind of resource this is. Value: the fixed string "
        # dfareporting#platformType".
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # Name of this platform type.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @id = args[:id] unless args[:id].nil?
          @kind = args[:kind] unless args[:kind].nil?
          @name = args[:name] unless args[:name].nil?
        end
      end
      
      # Platform Type List Response
      class ListPlatformTypesResponse
        include Google::Apis::Core::Hashable
      
        # Identifies what kind of resource this is. Value: the fixed string "
        # dfareporting#platformTypesListResponse".
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # Platform type collection.
        # Corresponds to the JSON property `platformTypes`
        # @return [Array<Google::Apis::DfareportingV2_1::PlatformType>]
        attr_accessor :platform_types
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @kind = args[:kind] unless args[:kind].nil?
          @platform_types = args[:platform_types] unless args[:platform_types].nil?
        end
      end
      
      # Popup Window Properties.
      class PopupWindowProperties
        include Google::Apis::Core::Hashable
      
        # Represents the dimensions of ads, placements, creatives, or creative assets.
        # Corresponds to the JSON property `dimension`
        # @return [Google::Apis::DfareportingV2_1::Size]
        attr_accessor :dimension
      
        # Offset Position.
        # Corresponds to the JSON property `offset`
        # @return [Google::Apis::DfareportingV2_1::OffsetPosition]
        attr_accessor :offset
      
        # Popup window position either centered or at specific coordinate.
        # Corresponds to the JSON property `positionType`
        # @return [String]
        attr_accessor :position_type
      
        # Whether to display the browser address bar.
        # Corresponds to the JSON property `showAddressBar`
        # @return [Boolean]
        attr_accessor :show_address_bar
        alias_method :show_address_bar?, :show_address_bar
      
        # Whether to display the browser menu bar.
        # Corresponds to the JSON property `showMenuBar`
        # @return [Boolean]
        attr_accessor :show_menu_bar
        alias_method :show_menu_bar?, :show_menu_bar
      
        # Whether to display the browser scroll bar.
        # Corresponds to the JSON property `showScrollBar`
        # @return [Boolean]
        attr_accessor :show_scroll_bar
        alias_method :show_scroll_bar?, :show_scroll_bar
      
        # Whether to display the browser status bar.
        # Corresponds to the JSON property `showStatusBar`
        # @return [Boolean]
        attr_accessor :show_status_bar
        alias_method :show_status_bar?, :show_status_bar
      
        # Whether to display the browser tool bar.
        # Corresponds to the JSON property `showToolBar`
        # @return [Boolean]
        attr_accessor :show_tool_bar
        alias_method :show_tool_bar?, :show_tool_bar
      
        # Title of popup window.
        # Corresponds to the JSON property `title`
        # @return [String]
        attr_accessor :title
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @dimension = args[:dimension] unless args[:dimension].nil?
          @offset = args[:offset] unless args[:offset].nil?
          @position_type = args[:position_type] unless args[:position_type].nil?
          @show_address_bar = args[:show_address_bar] unless args[:show_address_bar].nil?
          @show_menu_bar = args[:show_menu_bar] unless args[:show_menu_bar].nil?
          @show_scroll_bar = args[:show_scroll_bar] unless args[:show_scroll_bar].nil?
          @show_status_bar = args[:show_status_bar] unless args[:show_status_bar].nil?
          @show_tool_bar = args[:show_tool_bar] unless args[:show_tool_bar].nil?
          @title = args[:title] unless args[:title].nil?
        end
      end
      
      # Contains information about a postal code that can be targeted by ads.
      class PostalCode
        include Google::Apis::Core::Hashable
      
        # Postal code. This is equivalent to the id field.
        # Corresponds to the JSON property `code`
        # @return [String]
        attr_accessor :code
      
        # Country code of the country to which this postal code belongs.
        # Corresponds to the JSON property `countryCode`
        # @return [String]
        attr_accessor :country_code
      
        # DART ID of the country to which this postal code belongs.
        # Corresponds to the JSON property `countryDartId`
        # @return [String]
        attr_accessor :country_dart_id
      
        # ID of this postal code.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # Identifies what kind of resource this is. Value: the fixed string "
        # dfareporting#postalCode".
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @code = args[:code] unless args[:code].nil?
          @country_code = args[:country_code] unless args[:country_code].nil?
          @country_dart_id = args[:country_dart_id] unless args[:country_dart_id].nil?
          @id = args[:id] unless args[:id].nil?
          @kind = args[:kind] unless args[:kind].nil?
        end
      end
      
      # Postal Code List Response
      class ListPostalCodesResponse
        include Google::Apis::Core::Hashable
      
        # Identifies what kind of resource this is. Value: the fixed string "
        # dfareporting#postalCodesListResponse".
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # Postal code collection.
        # Corresponds to the JSON property `postalCodes`
        # @return [Array<Google::Apis::DfareportingV2_1::PostalCode>]
        attr_accessor :postal_codes
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @kind = args[:kind] unless args[:kind].nil?
          @postal_codes = args[:postal_codes] unless args[:postal_codes].nil?
        end
      end
      
      # Pricing Information
      class Pricing
        include Google::Apis::Core::Hashable
      
        # Cap cost type of this inventory item.
        # Corresponds to the JSON property `capCostType`
        # @return [String]
        attr_accessor :cap_cost_type
      
        # End date of this inventory item.
        # Corresponds to the JSON property `endDate`
        # @return [Date]
        attr_accessor :end_date
      
        # Flights of this inventory item. A flight (a.k.a. pricing period) represents
        # the inventory item pricing information for a specific period of time.
        # Corresponds to the JSON property `flights`
        # @return [Array<Google::Apis::DfareportingV2_1::Flight>]
        attr_accessor :flights
      
        # Group type of this inventory item if it represents a placement group. Is null
        # otherwise. There are two type of placement groups:
        # PLANNING_PLACEMENT_GROUP_TYPE_PACKAGE is a simple group of inventory items
        # that acts as a single pricing point for a group of tags.
        # PLANNING_PLACEMENT_GROUP_TYPE_ROADBLOCK is a group of inventory items that not
        # only acts as a single pricing point, but also assumes that all the tags in it
        # will be served at the same time. A roadblock requires one of its assigned
        # inventory items to be marked as primary.
        # Corresponds to the JSON property `groupType`
        # @return [String]
        attr_accessor :group_type
      
        # Pricing type of this inventory item.
        # Corresponds to the JSON property `pricingType`
        # @return [String]
        attr_accessor :pricing_type
      
        # Start date of this inventory item.
        # Corresponds to the JSON property `startDate`
        # @return [Date]
        attr_accessor :start_date
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @cap_cost_type = args[:cap_cost_type] unless args[:cap_cost_type].nil?
          @end_date = args[:end_date] unless args[:end_date].nil?
          @flights = args[:flights] unless args[:flights].nil?
          @group_type = args[:group_type] unless args[:group_type].nil?
          @pricing_type = args[:pricing_type] unless args[:pricing_type].nil?
          @start_date = args[:start_date] unless args[:start_date].nil?
        end
      end
      
      # Pricing Schedule
      class PricingSchedule
        include Google::Apis::Core::Hashable
      
        # Placement cap cost option.
        # Corresponds to the JSON property `capCostOption`
        # @return [String]
        attr_accessor :cap_cost_option
      
        # Whether cap costs are ignored by ad serving.
        # Corresponds to the JSON property `disregardOverdelivery`
        # @return [Boolean]
        attr_accessor :disregard_overdelivery
        alias_method :disregard_overdelivery?, :disregard_overdelivery
      
        # Placement end date. This date must be later than, or the same day as, the
        # placement start date, but not later than the campaign end date. If, for
        # example, you set 6/25/2015 as both the start and end dates, the effective
        # placement date is just that day only, 6/25/2015. The hours, minutes, and
        # seconds of the end date should not be set, as doing so will result in an error.
        # This field is required on insertion.
        # Corresponds to the JSON property `endDate`
        # @return [Date]
        attr_accessor :end_date
      
        # Whether this placement is flighted. If true, pricing periods will be computed
        # automatically.
        # Corresponds to the JSON property `flighted`
        # @return [Boolean]
        attr_accessor :flighted
        alias_method :flighted?, :flighted
      
        # Floodlight activity ID associated with this placement. This field should be
        # set when placement pricing type is set to PRICING_TYPE_CPA.
        # Corresponds to the JSON property `floodlightActivityId`
        # @return [String]
        attr_accessor :floodlight_activity_id
      
        # Pricing periods for this placement.
        # Corresponds to the JSON property `pricingPeriods`
        # @return [Array<Google::Apis::DfareportingV2_1::PricingSchedulePricingPeriod>]
        attr_accessor :pricing_periods
      
        # Placement pricing type. This field is required on insertion.
        # Corresponds to the JSON property `pricingType`
        # @return [String]
        attr_accessor :pricing_type
      
        # Placement start date. This date must be later than, or the same day as, the
        # campaign start date. The hours, minutes, and seconds of the start date should
        # not be set, as doing so will result in an error. This field is required on
        # insertion.
        # Corresponds to the JSON property `startDate`
        # @return [Date]
        attr_accessor :start_date
      
        # Testing start date of this placement. The hours, minutes, and seconds of the
        # start date should not be set, as doing so will result in an error.
        # Corresponds to the JSON property `testingStartDate`
        # @return [Date]
        attr_accessor :testing_start_date
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @cap_cost_option = args[:cap_cost_option] unless args[:cap_cost_option].nil?
          @disregard_overdelivery = args[:disregard_overdelivery] unless args[:disregard_overdelivery].nil?
          @end_date = args[:end_date] unless args[:end_date].nil?
          @flighted = args[:flighted] unless args[:flighted].nil?
          @floodlight_activity_id = args[:floodlight_activity_id] unless args[:floodlight_activity_id].nil?
          @pricing_periods = args[:pricing_periods] unless args[:pricing_periods].nil?
          @pricing_type = args[:pricing_type] unless args[:pricing_type].nil?
          @start_date = args[:start_date] unless args[:start_date].nil?
          @testing_start_date = args[:testing_start_date] unless args[:testing_start_date].nil?
        end
      end
      
      # Pricing Period
      class PricingSchedulePricingPeriod
        include Google::Apis::Core::Hashable
      
        # Pricing period end date. This date must be later than, or the same day as, the
        # pricing period start date, but not later than the placement end date. The
        # period end date can be the same date as the period start date. If, for example,
        # you set 6/25/2015 as both the start and end dates, the effective pricing
        # period date is just that day only, 6/25/2015. The hours, minutes, and seconds
        # of the end date should not be set, as doing so will result in an error.
        # Corresponds to the JSON property `endDate`
        # @return [Date]
        attr_accessor :end_date
      
        # Comments for this pricing period.
        # Corresponds to the JSON property `pricingComment`
        # @return [String]
        attr_accessor :pricing_comment
      
        # Rate or cost of this pricing period.
        # Corresponds to the JSON property `rateOrCostNanos`
        # @return [String]
        attr_accessor :rate_or_cost_nanos
      
        # Pricing period start date. This date must be later than, or the same day as,
        # the placement start date. The hours, minutes, and seconds of the start date
        # should not be set, as doing so will result in an error.
        # Corresponds to the JSON property `startDate`
        # @return [Date]
        attr_accessor :start_date
      
        # Units of this pricing period.
        # Corresponds to the JSON property `units`
        # @return [String]
        attr_accessor :units
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @end_date = args[:end_date] unless args[:end_date].nil?
          @pricing_comment = args[:pricing_comment] unless args[:pricing_comment].nil?
          @rate_or_cost_nanos = args[:rate_or_cost_nanos] unless args[:rate_or_cost_nanos].nil?
          @start_date = args[:start_date] unless args[:start_date].nil?
          @units = args[:units] unless args[:units].nil?
        end
      end
      
      # Programmatic Setting
      class ProgrammaticSetting
        include Google::Apis::Core::Hashable
      
        # Adx deal IDs assigned to the placement.
        # Corresponds to the JSON property `adxDealIds`
        # @return [Array<String>]
        attr_accessor :adx_deal_ids
      
        # Insertion order ID.
        # Corresponds to the JSON property `insertionOrderId`
        # @return [String]
        attr_accessor :insertion_order_id
      
        # Whether insertion order ID has been placed in DFP. This is a read-only field.
        # Corresponds to the JSON property `insertionOrderIdStatus`
        # @return [Boolean]
        attr_accessor :insertion_order_id_status
        alias_method :insertion_order_id_status?, :insertion_order_id_status
      
        # Media cost for the programmatic placement.
        # Corresponds to the JSON property `mediaCostNanos`
        # @return [String]
        attr_accessor :media_cost_nanos
      
        # Whether programmatic is enabled.
        # Corresponds to the JSON property `programmatic`
        # @return [Boolean]
        attr_accessor :programmatic
        alias_method :programmatic?, :programmatic
      
        # Trafficker emails assigned to the placement.
        # Corresponds to the JSON property `traffickerEmails`
        # @return [Array<String>]
        attr_accessor :trafficker_emails
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @adx_deal_ids = args[:adx_deal_ids] unless args[:adx_deal_ids].nil?
          @insertion_order_id = args[:insertion_order_id] unless args[:insertion_order_id].nil?
          @insertion_order_id_status = args[:insertion_order_id_status] unless args[:insertion_order_id_status].nil?
          @media_cost_nanos = args[:media_cost_nanos] unless args[:media_cost_nanos].nil?
          @programmatic = args[:programmatic] unless args[:programmatic].nil?
          @trafficker_emails = args[:trafficker_emails] unless args[:trafficker_emails].nil?
        end
      end
      
      # Contains properties of a DoubleClick Planning project.
      class Project
        include Google::Apis::Core::Hashable
      
        # Account ID of this project.
        # Corresponds to the JSON property `accountId`
        # @return [String]
        attr_accessor :account_id
      
        # Advertiser ID of this project.
        # Corresponds to the JSON property `advertiserId`
        # @return [String]
        attr_accessor :advertiser_id
      
        # Audience age group of this project.
        # Corresponds to the JSON property `audienceAgeGroup`
        # @return [String]
        attr_accessor :audience_age_group
      
        # Audience gender of this project.
        # Corresponds to the JSON property `audienceGender`
        # @return [String]
        attr_accessor :audience_gender
      
        # Budget of this project in the currency specified by the current account. The
        # value stored in this field represents only the non-fractional amount. For
        # example, for USD, the smallest value that can be represented by this field is
        # 1 US dollar.
        # Corresponds to the JSON property `budget`
        # @return [String]
        attr_accessor :budget
      
        # Client billing code of this project.
        # Corresponds to the JSON property `clientBillingCode`
        # @return [String]
        attr_accessor :client_billing_code
      
        # Name of the project client.
        # Corresponds to the JSON property `clientName`
        # @return [String]
        attr_accessor :client_name
      
        # End date of the project.
        # Corresponds to the JSON property `endDate`
        # @return [Date]
        attr_accessor :end_date
      
        # ID of this project. This is a read-only, auto-generated field.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # Identifies what kind of resource this is. Value: the fixed string "
        # dfareporting#project".
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # Modification timestamp.
        # Corresponds to the JSON property `lastModifiedInfo`
        # @return [Google::Apis::DfareportingV2_1::LastModifiedInfo]
        attr_accessor :last_modified_info
      
        # Name of this project.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Overview of this project.
        # Corresponds to the JSON property `overview`
        # @return [String]
        attr_accessor :overview
      
        # Start date of the project.
        # Corresponds to the JSON property `startDate`
        # @return [Date]
        attr_accessor :start_date
      
        # Subaccount ID of this project.
        # Corresponds to the JSON property `subaccountId`
        # @return [String]
        attr_accessor :subaccount_id
      
        # Number of clicks that the advertiser is targeting.
        # Corresponds to the JSON property `targetClicks`
        # @return [String]
        attr_accessor :target_clicks
      
        # Number of conversions that the advertiser is targeting.
        # Corresponds to the JSON property `targetConversions`
        # @return [String]
        attr_accessor :target_conversions
      
        # CPA that the advertiser is targeting.
        # Corresponds to the JSON property `targetCpaNanos`
        # @return [String]
        attr_accessor :target_cpa_nanos
      
        # CPC that the advertiser is targeting.
        # Corresponds to the JSON property `targetCpcNanos`
        # @return [String]
        attr_accessor :target_cpc_nanos
      
        # CPM that the advertiser is targeting.
        # Corresponds to the JSON property `targetCpmNanos`
        # @return [String]
        attr_accessor :target_cpm_nanos
      
        # Number of impressions that the advertiser is targeting.
        # Corresponds to the JSON property `targetImpressions`
        # @return [String]
        attr_accessor :target_impressions
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @account_id = args[:account_id] unless args[:account_id].nil?
          @advertiser_id = args[:advertiser_id] unless args[:advertiser_id].nil?
          @audience_age_group = args[:audience_age_group] unless args[:audience_age_group].nil?
          @audience_gender = args[:audience_gender] unless args[:audience_gender].nil?
          @budget = args[:budget] unless args[:budget].nil?
          @client_billing_code = args[:client_billing_code] unless args[:client_billing_code].nil?
          @client_name = args[:client_name] unless args[:client_name].nil?
          @end_date = args[:end_date] unless args[:end_date].nil?
          @id = args[:id] unless args[:id].nil?
          @kind = args[:kind] unless args[:kind].nil?
          @last_modified_info = args[:last_modified_info] unless args[:last_modified_info].nil?
          @name = args[:name] unless args[:name].nil?
          @overview = args[:overview] unless args[:overview].nil?
          @start_date = args[:start_date] unless args[:start_date].nil?
          @subaccount_id = args[:subaccount_id] unless args[:subaccount_id].nil?
          @target_clicks = args[:target_clicks] unless args[:target_clicks].nil?
          @target_conversions = args[:target_conversions] unless args[:target_conversions].nil?
          @target_cpa_nanos = args[:target_cpa_nanos] unless args[:target_cpa_nanos].nil?
          @target_cpc_nanos = args[:target_cpc_nanos] unless args[:target_cpc_nanos].nil?
          @target_cpm_nanos = args[:target_cpm_nanos] unless args[:target_cpm_nanos].nil?
          @target_impressions = args[:target_impressions] unless args[:target_impressions].nil?
        end
      end
      
      # Project List Response
      class ListProjectsResponse
        include Google::Apis::Core::Hashable
      
        # Identifies what kind of resource this is. Value: the fixed string "
        # dfareporting#projectsListResponse".
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # Pagination token to be used for the next list operation.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # Project collection.
        # Corresponds to the JSON property `projects`
        # @return [Array<Google::Apis::DfareportingV2_1::Project>]
        attr_accessor :projects
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @kind = args[:kind] unless args[:kind].nil?
          @next_page_token = args[:next_page_token] unless args[:next_page_token].nil?
          @projects = args[:projects] unless args[:projects].nil?
        end
      end
      
      # Represents fields that are compatible to be selected for a report of type "
      # REACH".
      class ReachReportCompatibleFields
        include Google::Apis::Core::Hashable
      
        # Dimensions which are compatible to be selected in the "dimensionFilters"
        # section of the report.
        # Corresponds to the JSON property `dimensionFilters`
        # @return [Array<Google::Apis::DfareportingV2_1::Dimension>]
        attr_accessor :dimension_filters
      
        # Dimensions which are compatible to be selected in the "dimensions" section of
        # the report.
        # Corresponds to the JSON property `dimensions`
        # @return [Array<Google::Apis::DfareportingV2_1::Dimension>]
        attr_accessor :dimensions
      
        # The kind of resource this is, in this case dfareporting#
        # reachReportCompatibleFields.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # Metrics which are compatible to be selected in the "metricNames" section of
        # the report.
        # Corresponds to the JSON property `metrics`
        # @return [Array<Google::Apis::DfareportingV2_1::Metric>]
        attr_accessor :metrics
      
        # Metrics which are compatible to be selected as activity metrics to pivot on in
        # the "activities" section of the report.
        # Corresponds to the JSON property `pivotedActivityMetrics`
        # @return [Array<Google::Apis::DfareportingV2_1::Metric>]
        attr_accessor :pivoted_activity_metrics
      
        # Metrics which are compatible to be selected in the "
        # reachByFrequencyMetricNames" section of the report.
        # Corresponds to the JSON property `reachByFrequencyMetrics`
        # @return [Array<Google::Apis::DfareportingV2_1::Metric>]
        attr_accessor :reach_by_frequency_metrics
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @dimension_filters = args[:dimension_filters] unless args[:dimension_filters].nil?
          @dimensions = args[:dimensions] unless args[:dimensions].nil?
          @kind = args[:kind] unless args[:kind].nil?
          @metrics = args[:metrics] unless args[:metrics].nil?
          @pivoted_activity_metrics = args[:pivoted_activity_metrics] unless args[:pivoted_activity_metrics].nil?
          @reach_by_frequency_metrics = args[:reach_by_frequency_metrics] unless args[:reach_by_frequency_metrics].nil?
        end
      end
      
      # Represents a recipient.
      class Recipient
        include Google::Apis::Core::Hashable
      
        # The delivery type for the recipient.
        # Corresponds to the JSON property `deliveryType`
        # @return [String]
        attr_accessor :delivery_type
      
        # The email address of the recipient.
        # Corresponds to the JSON property `email`
        # @return [String]
        attr_accessor :email
      
        # The kind of resource this is, in this case dfareporting#recipient.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @delivery_type = args[:delivery_type] unless args[:delivery_type].nil?
          @email = args[:email] unless args[:email].nil?
          @kind = args[:kind] unless args[:kind].nil?
        end
      end
      
      # Contains information about a region that can be targeted by ads.
      class Region
        include Google::Apis::Core::Hashable
      
        # Country code of the country to which this region belongs.
        # Corresponds to the JSON property `countryCode`
        # @return [String]
        attr_accessor :country_code
      
        # DART ID of the country to which this region belongs.
        # Corresponds to the JSON property `countryDartId`
        # @return [String]
        attr_accessor :country_dart_id
      
        # DART ID of this region.
        # Corresponds to the JSON property `dartId`
        # @return [String]
        attr_accessor :dart_id
      
        # Identifies what kind of resource this is. Value: the fixed string "
        # dfareporting#region".
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # Name of this region.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Region code.
        # Corresponds to the JSON property `regionCode`
        # @return [String]
        attr_accessor :region_code
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @country_code = args[:country_code] unless args[:country_code].nil?
          @country_dart_id = args[:country_dart_id] unless args[:country_dart_id].nil?
          @dart_id = args[:dart_id] unless args[:dart_id].nil?
          @kind = args[:kind] unless args[:kind].nil?
          @name = args[:name] unless args[:name].nil?
          @region_code = args[:region_code] unless args[:region_code].nil?
        end
      end
      
      # Region List Response
      class ListRegionsResponse
        include Google::Apis::Core::Hashable
      
        # Identifies what kind of resource this is. Value: the fixed string "
        # dfareporting#regionsListResponse".
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # Region collection.
        # Corresponds to the JSON property `regions`
        # @return [Array<Google::Apis::DfareportingV2_1::Region>]
        attr_accessor :regions
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @kind = args[:kind] unless args[:kind].nil?
          @regions = args[:regions] unless args[:regions].nil?
        end
      end
      
      # Contains properties of a remarketing list. Remarketing enables you to create
      # lists of users who have performed specific actions on a site, then target ads
      # to members of those lists. This resource can be used to manage remarketing
      # lists that are owned by your advertisers. To see all remarketing lists that
      # are visible to your advertisers, including those that are shared to your
      # advertiser or account, use the TargetableRemarketingLists resource.
      class RemarketingList
        include Google::Apis::Core::Hashable
      
        # Account ID of this remarketing list. This is a read-only, auto-generated field
        # that is only returned in GET requests.
        # Corresponds to the JSON property `accountId`
        # @return [String]
        attr_accessor :account_id
      
        # Whether this remarketing list is active.
        # Corresponds to the JSON property `active`
        # @return [Boolean]
        attr_accessor :active
        alias_method :active?, :active
      
        # Dimension value for the advertiser ID that owns this remarketing list. This is
        # a required field.
        # Corresponds to the JSON property `advertiserId`
        # @return [String]
        attr_accessor :advertiser_id
      
        # Represents a DimensionValue resource.
        # Corresponds to the JSON property `advertiserIdDimensionValue`
        # @return [Google::Apis::DfareportingV2_1::DimensionValue]
        attr_accessor :advertiser_id_dimension_value
      
        # Remarketing list description.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # Remarketing list ID. This is a read-only, auto-generated field.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # Identifies what kind of resource this is. Value: the fixed string "
        # dfareporting#remarketingList".
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # Number of days that a user should remain in the remarketing list without an
        # impression.
        # Corresponds to the JSON property `lifeSpan`
        # @return [String]
        attr_accessor :life_span
      
        # Remarketing List Population Rule.
        # Corresponds to the JSON property `listPopulationRule`
        # @return [Google::Apis::DfareportingV2_1::ListPopulationRule]
        attr_accessor :list_population_rule
      
        # Number of users currently in the list. This is a read-only field.
        # Corresponds to the JSON property `listSize`
        # @return [String]
        attr_accessor :list_size
      
        # Product from which this remarketing list was originated.
        # Corresponds to the JSON property `listSource`
        # @return [String]
        attr_accessor :list_source
      
        # Name of the remarketing list. This is a required field. Must be no greater
        # than 128 characters long.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Subaccount ID of this remarketing list. This is a read-only, auto-generated
        # field that is only returned in GET requests.
        # Corresponds to the JSON property `subaccountId`
        # @return [String]
        attr_accessor :subaccount_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @account_id = args[:account_id] unless args[:account_id].nil?
          @active = args[:active] unless args[:active].nil?
          @advertiser_id = args[:advertiser_id] unless args[:advertiser_id].nil?
          @advertiser_id_dimension_value = args[:advertiser_id_dimension_value] unless args[:advertiser_id_dimension_value].nil?
          @description = args[:description] unless args[:description].nil?
          @id = args[:id] unless args[:id].nil?
          @kind = args[:kind] unless args[:kind].nil?
          @life_span = args[:life_span] unless args[:life_span].nil?
          @list_population_rule = args[:list_population_rule] unless args[:list_population_rule].nil?
          @list_size = args[:list_size] unless args[:list_size].nil?
          @list_source = args[:list_source] unless args[:list_source].nil?
          @name = args[:name] unless args[:name].nil?
          @subaccount_id = args[:subaccount_id] unless args[:subaccount_id].nil?
        end
      end
      
      # Contains properties of a remarketing list's sharing information. Sharing
      # allows other accounts or advertisers to target to your remarketing lists. This
      # resource can be used to manage remarketing list sharing to other accounts and
      # advertisers.
      class RemarketingListShare
        include Google::Apis::Core::Hashable
      
        # Identifies what kind of resource this is. Value: the fixed string "
        # dfareporting#remarketingListShare".
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # Remarketing list ID. This is a read-only, auto-generated field.
        # Corresponds to the JSON property `remarketingListId`
        # @return [String]
        attr_accessor :remarketing_list_id
      
        # Accounts that the remarketing list is shared with.
        # Corresponds to the JSON property `sharedAccountIds`
        # @return [Array<String>]
        attr_accessor :shared_account_ids
      
        # Advertisers that the remarketing list is shared with.
        # Corresponds to the JSON property `sharedAdvertiserIds`
        # @return [Array<String>]
        attr_accessor :shared_advertiser_ids
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @kind = args[:kind] unless args[:kind].nil?
          @remarketing_list_id = args[:remarketing_list_id] unless args[:remarketing_list_id].nil?
          @shared_account_ids = args[:shared_account_ids] unless args[:shared_account_ids].nil?
          @shared_advertiser_ids = args[:shared_advertiser_ids] unless args[:shared_advertiser_ids].nil?
        end
      end
      
      # Remarketing list response
      class ListRemarketingListsResponse
        include Google::Apis::Core::Hashable
      
        # Identifies what kind of resource this is. Value: the fixed string "
        # dfareporting#remarketingListsListResponse".
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # Pagination token to be used for the next list operation.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # Remarketing list collection.
        # Corresponds to the JSON property `remarketingLists`
        # @return [Array<Google::Apis::DfareportingV2_1::RemarketingList>]
        attr_accessor :remarketing_lists
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @kind = args[:kind] unless args[:kind].nil?
          @next_page_token = args[:next_page_token] unless args[:next_page_token].nil?
          @remarketing_lists = args[:remarketing_lists] unless args[:remarketing_lists].nil?
        end
      end
      
      # Represents a Report resource.
      class Report
        include Google::Apis::Core::Hashable
      
        # The account ID to which this report belongs.
        # Corresponds to the JSON property `accountId`
        # @return [String]
        attr_accessor :account_id
      
        # The report criteria for a report of type "STANDARD".
        # Corresponds to the JSON property `criteria`
        # @return [Google::Apis::DfareportingV2_1::Report::Criteria]
        attr_accessor :criteria
      
        # The report criteria for a report of type "CROSS_DIMENSION_REACH".
        # Corresponds to the JSON property `crossDimensionReachCriteria`
        # @return [Google::Apis::DfareportingV2_1::Report::CrossDimensionReachCriteria]
        attr_accessor :cross_dimension_reach_criteria
      
        # The report's email delivery settings.
        # Corresponds to the JSON property `delivery`
        # @return [Google::Apis::DfareportingV2_1::Report::Delivery]
        attr_accessor :delivery
      
        # The eTag of this response for caching purposes.
        # Corresponds to the JSON property `etag`
        # @return [String]
        attr_accessor :etag
      
        # The filename used when generating report files for this report.
        # Corresponds to the JSON property `fileName`
        # @return [String]
        attr_accessor :file_name
      
        # The report criteria for a report of type "FLOODLIGHT".
        # Corresponds to the JSON property `floodlightCriteria`
        # @return [Google::Apis::DfareportingV2_1::Report::FloodlightCriteria]
        attr_accessor :floodlight_criteria
      
        # The output format of the report. If not specified, default format is "CSV".
        # Note that the actual format in the completed report file might differ if for
        # instance the report's size exceeds the format's capabilities. "CSV" will then
        # be the fallback format.
        # Corresponds to the JSON property `format`
        # @return [String]
        attr_accessor :format
      
        # The unique ID identifying this report resource.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # The kind of resource this is, in this case dfareporting#report.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # The timestamp (in milliseconds since epoch) of when this report was last
        # modified.
        # Corresponds to the JSON property `lastModifiedTime`
        # @return [String]
        attr_accessor :last_modified_time
      
        # The name of the report.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # The user profile id of the owner of this report.
        # Corresponds to the JSON property `ownerProfileId`
        # @return [String]
        attr_accessor :owner_profile_id
      
        # The report criteria for a report of type "PATH_TO_CONVERSION".
        # Corresponds to the JSON property `pathToConversionCriteria`
        # @return [Google::Apis::DfareportingV2_1::Report::PathToConversionCriteria]
        attr_accessor :path_to_conversion_criteria
      
        # The report criteria for a report of type "REACH".
        # Corresponds to the JSON property `reachCriteria`
        # @return [Google::Apis::DfareportingV2_1::Report::ReachCriteria]
        attr_accessor :reach_criteria
      
        # The report's schedule. Can only be set if the report's 'dateRange' is a
        # relative date range and the relative date range is not "TODAY".
        # Corresponds to the JSON property `schedule`
        # @return [Google::Apis::DfareportingV2_1::Report::Schedule]
        attr_accessor :schedule
      
        # The subaccount ID to which this report belongs if applicable.
        # Corresponds to the JSON property `subAccountId`
        # @return [String]
        attr_accessor :sub_account_id
      
        # The type of the report.
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @account_id = args[:account_id] unless args[:account_id].nil?
          @criteria = args[:criteria] unless args[:criteria].nil?
          @cross_dimension_reach_criteria = args[:cross_dimension_reach_criteria] unless args[:cross_dimension_reach_criteria].nil?
          @delivery = args[:delivery] unless args[:delivery].nil?
          @etag = args[:etag] unless args[:etag].nil?
          @file_name = args[:file_name] unless args[:file_name].nil?
          @floodlight_criteria = args[:floodlight_criteria] unless args[:floodlight_criteria].nil?
          @format = args[:format] unless args[:format].nil?
          @id = args[:id] unless args[:id].nil?
          @kind = args[:kind] unless args[:kind].nil?
          @last_modified_time = args[:last_modified_time] unless args[:last_modified_time].nil?
          @name = args[:name] unless args[:name].nil?
          @owner_profile_id = args[:owner_profile_id] unless args[:owner_profile_id].nil?
          @path_to_conversion_criteria = args[:path_to_conversion_criteria] unless args[:path_to_conversion_criteria].nil?
          @reach_criteria = args[:reach_criteria] unless args[:reach_criteria].nil?
          @schedule = args[:schedule] unless args[:schedule].nil?
          @sub_account_id = args[:sub_account_id] unless args[:sub_account_id].nil?
          @type = args[:type] unless args[:type].nil?
        end
        
        # The report criteria for a report of type "STANDARD".
        class Criteria
          include Google::Apis::Core::Hashable
        
          # Represents an activity group.
          # Corresponds to the JSON property `activities`
          # @return [Google::Apis::DfareportingV2_1::Activities]
          attr_accessor :activities
        
          # Represents a Custom Rich Media Events group.
          # Corresponds to the JSON property `customRichMediaEvents`
          # @return [Google::Apis::DfareportingV2_1::CustomRichMediaEvents]
          attr_accessor :custom_rich_media_events
        
          # Represents a date range.
          # Corresponds to the JSON property `dateRange`
          # @return [Google::Apis::DfareportingV2_1::DateRange]
          attr_accessor :date_range
        
          # The list of filters on which dimensions are filtered.
          # Filters for different dimensions are ANDed, filters for the same dimension are
          # grouped together and ORed.
          # Corresponds to the JSON property `dimensionFilters`
          # @return [Array<Google::Apis::DfareportingV2_1::DimensionValue>]
          attr_accessor :dimension_filters
        
          # The list of standard dimensions the report should include.
          # Corresponds to the JSON property `dimensions`
          # @return [Array<Google::Apis::DfareportingV2_1::SortedDimension>]
          attr_accessor :dimensions
        
          # The list of names of metrics the report should include.
          # Corresponds to the JSON property `metricNames`
          # @return [Array<String>]
          attr_accessor :metric_names
        
          def initialize(**args)
             update!(**args)
          end
        
          # Update properties of this object
          def update!(**args)
            @activities = args[:activities] unless args[:activities].nil?
            @custom_rich_media_events = args[:custom_rich_media_events] unless args[:custom_rich_media_events].nil?
            @date_range = args[:date_range] unless args[:date_range].nil?
            @dimension_filters = args[:dimension_filters] unless args[:dimension_filters].nil?
            @dimensions = args[:dimensions] unless args[:dimensions].nil?
            @metric_names = args[:metric_names] unless args[:metric_names].nil?
          end
        end
        
        # The report criteria for a report of type "CROSS_DIMENSION_REACH".
        class CrossDimensionReachCriteria
          include Google::Apis::Core::Hashable
        
          # The list of dimensions the report should include.
          # Corresponds to the JSON property `breakdown`
          # @return [Array<Google::Apis::DfareportingV2_1::SortedDimension>]
          attr_accessor :breakdown
        
          # Represents a date range.
          # Corresponds to the JSON property `dateRange`
          # @return [Google::Apis::DfareportingV2_1::DateRange]
          attr_accessor :date_range
        
          # The dimension option.
          # Corresponds to the JSON property `dimension`
          # @return [String]
          attr_accessor :dimension
        
          # The list of filters on which dimensions are filtered.
          # Corresponds to the JSON property `dimensionFilters`
          # @return [Array<Google::Apis::DfareportingV2_1::DimensionValue>]
          attr_accessor :dimension_filters
        
          # The list of names of metrics the report should include.
          # Corresponds to the JSON property `metricNames`
          # @return [Array<String>]
          attr_accessor :metric_names
        
          # The list of names of overlap metrics the report should include.
          # Corresponds to the JSON property `overlapMetricNames`
          # @return [Array<String>]
          attr_accessor :overlap_metric_names
        
          # Whether the report is pivoted or not. Defaults to true.
          # Corresponds to the JSON property `pivoted`
          # @return [Boolean]
          attr_accessor :pivoted
          alias_method :pivoted?, :pivoted
        
          def initialize(**args)
             update!(**args)
          end
        
          # Update properties of this object
          def update!(**args)
            @breakdown = args[:breakdown] unless args[:breakdown].nil?
            @date_range = args[:date_range] unless args[:date_range].nil?
            @dimension = args[:dimension] unless args[:dimension].nil?
            @dimension_filters = args[:dimension_filters] unless args[:dimension_filters].nil?
            @metric_names = args[:metric_names] unless args[:metric_names].nil?
            @overlap_metric_names = args[:overlap_metric_names] unless args[:overlap_metric_names].nil?
            @pivoted = args[:pivoted] unless args[:pivoted].nil?
          end
        end
        
        # The report's email delivery settings.
        class Delivery
          include Google::Apis::Core::Hashable
        
          # Whether the report should be emailed to the report owner.
          # Corresponds to the JSON property `emailOwner`
          # @return [Boolean]
          attr_accessor :email_owner
          alias_method :email_owner?, :email_owner
        
          # The type of delivery for the owner to receive, if enabled.
          # Corresponds to the JSON property `emailOwnerDeliveryType`
          # @return [String]
          attr_accessor :email_owner_delivery_type
        
          # The message to be sent with each email.
          # Corresponds to the JSON property `message`
          # @return [String]
          attr_accessor :message
        
          # The list of recipients to which to email the report.
          # Corresponds to the JSON property `recipients`
          # @return [Array<Google::Apis::DfareportingV2_1::Recipient>]
          attr_accessor :recipients
        
          def initialize(**args)
             update!(**args)
          end
        
          # Update properties of this object
          def update!(**args)
            @email_owner = args[:email_owner] unless args[:email_owner].nil?
            @email_owner_delivery_type = args[:email_owner_delivery_type] unless args[:email_owner_delivery_type].nil?
            @message = args[:message] unless args[:message].nil?
            @recipients = args[:recipients] unless args[:recipients].nil?
          end
        end
        
        # The report criteria for a report of type "FLOODLIGHT".
        class FloodlightCriteria
          include Google::Apis::Core::Hashable
        
          # The list of custom rich media events to include.
          # Corresponds to the JSON property `customRichMediaEvents`
          # @return [Array<Google::Apis::DfareportingV2_1::DimensionValue>]
          attr_accessor :custom_rich_media_events
        
          # Represents a date range.
          # Corresponds to the JSON property `dateRange`
          # @return [Google::Apis::DfareportingV2_1::DateRange]
          attr_accessor :date_range
        
          # The list of filters on which dimensions are filtered.
          # Filters for different dimensions are ANDed, filters for the same dimension are
          # grouped together and ORed.
          # Corresponds to the JSON property `dimensionFilters`
          # @return [Array<Google::Apis::DfareportingV2_1::DimensionValue>]
          attr_accessor :dimension_filters
        
          # The list of dimensions the report should include.
          # Corresponds to the JSON property `dimensions`
          # @return [Array<Google::Apis::DfareportingV2_1::SortedDimension>]
          attr_accessor :dimensions
        
          # Represents a DimensionValue resource.
          # Corresponds to the JSON property `floodlightConfigId`
          # @return [Google::Apis::DfareportingV2_1::DimensionValue]
          attr_accessor :floodlight_config_id
        
          # The list of names of metrics the report should include.
          # Corresponds to the JSON property `metricNames`
          # @return [Array<String>]
          attr_accessor :metric_names
        
          # The properties of the report.
          # Corresponds to the JSON property `reportProperties`
          # @return [Google::Apis::DfareportingV2_1::Report::FloodlightCriteria::ReportProperties]
          attr_accessor :report_properties
        
          def initialize(**args)
             update!(**args)
          end
        
          # Update properties of this object
          def update!(**args)
            @custom_rich_media_events = args[:custom_rich_media_events] unless args[:custom_rich_media_events].nil?
            @date_range = args[:date_range] unless args[:date_range].nil?
            @dimension_filters = args[:dimension_filters] unless args[:dimension_filters].nil?
            @dimensions = args[:dimensions] unless args[:dimensions].nil?
            @floodlight_config_id = args[:floodlight_config_id] unless args[:floodlight_config_id].nil?
            @metric_names = args[:metric_names] unless args[:metric_names].nil?
            @report_properties = args[:report_properties] unless args[:report_properties].nil?
          end
          
          # The properties of the report.
          class ReportProperties
            include Google::Apis::Core::Hashable
          
            # Include conversions that have no cookie, but do have an exposure path.
            # Corresponds to the JSON property `includeAttributedIPConversions`
            # @return [Boolean]
            attr_accessor :include_attributed_ip_conversions
            alias_method :include_attributed_ip_conversions?, :include_attributed_ip_conversions
          
            # Include conversions of users with a DoubleClick cookie but without an exposure.
            # That means the user did not click or see an ad from the advertiser within the
            # Floodlight group, or that the interaction happened outside the lookback window.
            # Corresponds to the JSON property `includeUnattributedCookieConversions`
            # @return [Boolean]
            attr_accessor :include_unattributed_cookie_conversions
            alias_method :include_unattributed_cookie_conversions?, :include_unattributed_cookie_conversions
          
            # Include conversions that have no associated cookies and no exposures. It’s
            # therefore impossible to know how the user was exposed to your ads during the
            # lookback window prior to a conversion.
            # Corresponds to the JSON property `includeUnattributedIPConversions`
            # @return [Boolean]
            attr_accessor :include_unattributed_ip_conversions
            alias_method :include_unattributed_ip_conversions?, :include_unattributed_ip_conversions
          
            def initialize(**args)
               update!(**args)
            end
          
            # Update properties of this object
            def update!(**args)
              @include_attributed_ip_conversions = args[:include_attributed_ip_conversions] unless args[:include_attributed_ip_conversions].nil?
              @include_unattributed_cookie_conversions = args[:include_unattributed_cookie_conversions] unless args[:include_unattributed_cookie_conversions].nil?
              @include_unattributed_ip_conversions = args[:include_unattributed_ip_conversions] unless args[:include_unattributed_ip_conversions].nil?
            end
          end
        end
        
        # The report criteria for a report of type "PATH_TO_CONVERSION".
        class PathToConversionCriteria
          include Google::Apis::Core::Hashable
        
          # The list of 'dfa:activity' values to filter on.
          # Corresponds to the JSON property `activityFilters`
          # @return [Array<Google::Apis::DfareportingV2_1::DimensionValue>]
          attr_accessor :activity_filters
        
          # The list of conversion dimensions the report should include.
          # Corresponds to the JSON property `conversionDimensions`
          # @return [Array<Google::Apis::DfareportingV2_1::SortedDimension>]
          attr_accessor :conversion_dimensions
        
          # The list of custom floodlight variables the report should include.
          # Corresponds to the JSON property `customFloodlightVariables`
          # @return [Array<Google::Apis::DfareportingV2_1::SortedDimension>]
          attr_accessor :custom_floodlight_variables
        
          # The list of custom rich media events to include.
          # Corresponds to the JSON property `customRichMediaEvents`
          # @return [Array<Google::Apis::DfareportingV2_1::DimensionValue>]
          attr_accessor :custom_rich_media_events
        
          # Represents a date range.
          # Corresponds to the JSON property `dateRange`
          # @return [Google::Apis::DfareportingV2_1::DateRange]
          attr_accessor :date_range
        
          # Represents a DimensionValue resource.
          # Corresponds to the JSON property `floodlightConfigId`
          # @return [Google::Apis::DfareportingV2_1::DimensionValue]
          attr_accessor :floodlight_config_id
        
          # The list of names of metrics the report should include.
          # Corresponds to the JSON property `metricNames`
          # @return [Array<String>]
          attr_accessor :metric_names
        
          # The list of per interaction dimensions the report should include.
          # Corresponds to the JSON property `perInteractionDimensions`
          # @return [Array<Google::Apis::DfareportingV2_1::SortedDimension>]
          attr_accessor :per_interaction_dimensions
        
          # The properties of the report.
          # Corresponds to the JSON property `reportProperties`
          # @return [Google::Apis::DfareportingV2_1::Report::PathToConversionCriteria::ReportProperties]
          attr_accessor :report_properties
        
          def initialize(**args)
             update!(**args)
          end
        
          # Update properties of this object
          def update!(**args)
            @activity_filters = args[:activity_filters] unless args[:activity_filters].nil?
            @conversion_dimensions = args[:conversion_dimensions] unless args[:conversion_dimensions].nil?
            @custom_floodlight_variables = args[:custom_floodlight_variables] unless args[:custom_floodlight_variables].nil?
            @custom_rich_media_events = args[:custom_rich_media_events] unless args[:custom_rich_media_events].nil?
            @date_range = args[:date_range] unless args[:date_range].nil?
            @floodlight_config_id = args[:floodlight_config_id] unless args[:floodlight_config_id].nil?
            @metric_names = args[:metric_names] unless args[:metric_names].nil?
            @per_interaction_dimensions = args[:per_interaction_dimensions] unless args[:per_interaction_dimensions].nil?
            @report_properties = args[:report_properties] unless args[:report_properties].nil?
          end
          
          # The properties of the report.
          class ReportProperties
            include Google::Apis::Core::Hashable
          
            # DFA checks to see if a click interaction occurred within the specified period
            # of time before a conversion. By default the value is pulled from Floodlight or
            # you can manually enter a custom value. Valid values: 1-90.
            # Corresponds to the JSON property `clicksLookbackWindow`
            # @return [Fixnum]
            attr_accessor :clicks_lookback_window
          
            # DFA checks to see if an impression interaction occurred within the specified
            # period of time before a conversion. By default the value is pulled from
            # Floodlight or you can manually enter a custom value. Valid values: 1-90.
            # Corresponds to the JSON property `impressionsLookbackWindow`
            # @return [Fixnum]
            attr_accessor :impressions_lookback_window
          
            # Deprecated: has no effect.
            # Corresponds to the JSON property `includeAttributedIPConversions`
            # @return [Boolean]
            attr_accessor :include_attributed_ip_conversions
            alias_method :include_attributed_ip_conversions?, :include_attributed_ip_conversions
          
            # Include conversions of users with a DoubleClick cookie but without an exposure.
            # That means the user did not click or see an ad from the advertiser within the
            # Floodlight group, or that the interaction happened outside the lookback window.
            # Corresponds to the JSON property `includeUnattributedCookieConversions`
            # @return [Boolean]
            attr_accessor :include_unattributed_cookie_conversions
            alias_method :include_unattributed_cookie_conversions?, :include_unattributed_cookie_conversions
          
            # Include conversions that have no associated cookies and no exposures. It’s
            # therefore impossible to know how the user was exposed to your ads during the
            # lookback window prior to a conversion.
            # Corresponds to the JSON property `includeUnattributedIPConversions`
            # @return [Boolean]
            attr_accessor :include_unattributed_ip_conversions
            alias_method :include_unattributed_ip_conversions?, :include_unattributed_ip_conversions
          
            # The maximum number of click interactions to include in the report. Advertisers
            # currently paying for E2C reports get up to 200 (100 clicks, 100 impressions).
            # If another advertiser in your network is paying for E2C, you can have up to 5
            # total exposures per report.
            # Corresponds to the JSON property `maximumClickInteractions`
            # @return [Fixnum]
            attr_accessor :maximum_click_interactions
          
            # The maximum number of click interactions to include in the report. Advertisers
            # currently paying for E2C reports get up to 200 (100 clicks, 100 impressions).
            # If another advertiser in your network is paying for E2C, you can have up to 5
            # total exposures per report.
            # Corresponds to the JSON property `maximumImpressionInteractions`
            # @return [Fixnum]
            attr_accessor :maximum_impression_interactions
          
            # The maximum amount of time that can take place between interactions (clicks or
            # impressions) by the same user. Valid values: 1-90.
            # Corresponds to the JSON property `maximumInteractionGap`
            # @return [Fixnum]
            attr_accessor :maximum_interaction_gap
          
            # Enable pivoting on interaction path.
            # Corresponds to the JSON property `pivotOnInteractionPath`
            # @return [Boolean]
            attr_accessor :pivot_on_interaction_path
            alias_method :pivot_on_interaction_path?, :pivot_on_interaction_path
          
            def initialize(**args)
               update!(**args)
            end
          
            # Update properties of this object
            def update!(**args)
              @clicks_lookback_window = args[:clicks_lookback_window] unless args[:clicks_lookback_window].nil?
              @impressions_lookback_window = args[:impressions_lookback_window] unless args[:impressions_lookback_window].nil?
              @include_attributed_ip_conversions = args[:include_attributed_ip_conversions] unless args[:include_attributed_ip_conversions].nil?
              @include_unattributed_cookie_conversions = args[:include_unattributed_cookie_conversions] unless args[:include_unattributed_cookie_conversions].nil?
              @include_unattributed_ip_conversions = args[:include_unattributed_ip_conversions] unless args[:include_unattributed_ip_conversions].nil?
              @maximum_click_interactions = args[:maximum_click_interactions] unless args[:maximum_click_interactions].nil?
              @maximum_impression_interactions = args[:maximum_impression_interactions] unless args[:maximum_impression_interactions].nil?
              @maximum_interaction_gap = args[:maximum_interaction_gap] unless args[:maximum_interaction_gap].nil?
              @pivot_on_interaction_path = args[:pivot_on_interaction_path] unless args[:pivot_on_interaction_path].nil?
            end
          end
        end
        
        # The report criteria for a report of type "REACH".
        class ReachCriteria
          include Google::Apis::Core::Hashable
        
          # Represents an activity group.
          # Corresponds to the JSON property `activities`
          # @return [Google::Apis::DfareportingV2_1::Activities]
          attr_accessor :activities
        
          # Represents a Custom Rich Media Events group.
          # Corresponds to the JSON property `customRichMediaEvents`
          # @return [Google::Apis::DfareportingV2_1::CustomRichMediaEvents]
          attr_accessor :custom_rich_media_events
        
          # Represents a date range.
          # Corresponds to the JSON property `dateRange`
          # @return [Google::Apis::DfareportingV2_1::DateRange]
          attr_accessor :date_range
        
          # The list of filters on which dimensions are filtered.
          # Filters for different dimensions are ANDed, filters for the same dimension are
          # grouped together and ORed.
          # Corresponds to the JSON property `dimensionFilters`
          # @return [Array<Google::Apis::DfareportingV2_1::DimensionValue>]
          attr_accessor :dimension_filters
        
          # The list of dimensions the report should include.
          # Corresponds to the JSON property `dimensions`
          # @return [Array<Google::Apis::DfareportingV2_1::SortedDimension>]
          attr_accessor :dimensions
        
          # Whether to enable all reach dimension combinations in the report. Defaults to
          # false. If enabled, the date range of the report should be within the last
          # three months.
          # Corresponds to the JSON property `enableAllDimensionCombinations`
          # @return [Boolean]
          attr_accessor :enable_all_dimension_combinations
          alias_method :enable_all_dimension_combinations?, :enable_all_dimension_combinations
        
          # The list of names of metrics the report should include.
          # Corresponds to the JSON property `metricNames`
          # @return [Array<String>]
          attr_accessor :metric_names
        
          # The list of names of  Reach By Frequency metrics the report should include.
          # Corresponds to the JSON property `reachByFrequencyMetricNames`
          # @return [Array<String>]
          attr_accessor :reach_by_frequency_metric_names
        
          def initialize(**args)
             update!(**args)
          end
        
          # Update properties of this object
          def update!(**args)
            @activities = args[:activities] unless args[:activities].nil?
            @custom_rich_media_events = args[:custom_rich_media_events] unless args[:custom_rich_media_events].nil?
            @date_range = args[:date_range] unless args[:date_range].nil?
            @dimension_filters = args[:dimension_filters] unless args[:dimension_filters].nil?
            @dimensions = args[:dimensions] unless args[:dimensions].nil?
            @enable_all_dimension_combinations = args[:enable_all_dimension_combinations] unless args[:enable_all_dimension_combinations].nil?
            @metric_names = args[:metric_names] unless args[:metric_names].nil?
            @reach_by_frequency_metric_names = args[:reach_by_frequency_metric_names] unless args[:reach_by_frequency_metric_names].nil?
          end
        end
        
        # The report's schedule. Can only be set if the report's 'dateRange' is a
        # relative date range and the relative date range is not "TODAY".
        class Schedule
          include Google::Apis::Core::Hashable
        
          # Whether the schedule is active or not. Must be set to either true or false.
          # Corresponds to the JSON property `active`
          # @return [Boolean]
          attr_accessor :active
          alias_method :active?, :active
        
          # Defines every how many days, weeks or months the report should be run. Needs
          # to be set when "repeats" is either "DAILY", "WEEKLY" or "MONTHLY".
          # Corresponds to the JSON property `every`
          # @return [Fixnum]
          attr_accessor :every
        
          # The expiration date when the scheduled report stops running.
          # Corresponds to the JSON property `expirationDate`
          # @return [Date]
          attr_accessor :expiration_date
        
          # The interval for which the report is repeated. Note:
          # - "DAILY" also requires field "every" to be set.
          # - "WEEKLY" also requires fields "every" and "repeatsOnWeekDays" to be set.
          # - "MONTHLY" also requires fields "every" and "runsOnDayOfMonth" to be set.
          # Corresponds to the JSON property `repeats`
          # @return [String]
          attr_accessor :repeats
        
          # List of week days "WEEKLY" on which scheduled reports should run.
          # Corresponds to the JSON property `repeatsOnWeekDays`
          # @return [Array<String>]
          attr_accessor :repeats_on_week_days
        
          # Enum to define for "MONTHLY" scheduled reports whether reports should be
          # repeated on the same day of the month as "startDate" or the same day of the
          # week of the month.
          # Example: If 'startDate' is Monday, April 2nd 2012 (2012-04-02), "DAY_OF_MONTH"
          # would run subsequent reports on the 2nd of every Month, and "WEEK_OF_MONTH"
          # would run subsequent reports on the first Monday of the month.
          # Corresponds to the JSON property `runsOnDayOfMonth`
          # @return [String]
          attr_accessor :runs_on_day_of_month
        
          # Start date of date range for which scheduled reports should be run.
          # Corresponds to the JSON property `startDate`
          # @return [Date]
          attr_accessor :start_date
        
          def initialize(**args)
             update!(**args)
          end
        
          # Update properties of this object
          def update!(**args)
            @active = args[:active] unless args[:active].nil?
            @every = args[:every] unless args[:every].nil?
            @expiration_date = args[:expiration_date] unless args[:expiration_date].nil?
            @repeats = args[:repeats] unless args[:repeats].nil?
            @repeats_on_week_days = args[:repeats_on_week_days] unless args[:repeats_on_week_days].nil?
            @runs_on_day_of_month = args[:runs_on_day_of_month] unless args[:runs_on_day_of_month].nil?
            @start_date = args[:start_date] unless args[:start_date].nil?
          end
        end
      end
      
      # Represents fields that are compatible to be selected for a report of type "
      # STANDARD".
      class ReportCompatibleFields
        include Google::Apis::Core::Hashable
      
        # Dimensions which are compatible to be selected in the "dimensionFilters"
        # section of the report.
        # Corresponds to the JSON property `dimensionFilters`
        # @return [Array<Google::Apis::DfareportingV2_1::Dimension>]
        attr_accessor :dimension_filters
      
        # Dimensions which are compatible to be selected in the "dimensions" section of
        # the report.
        # Corresponds to the JSON property `dimensions`
        # @return [Array<Google::Apis::DfareportingV2_1::Dimension>]
        attr_accessor :dimensions
      
        # The kind of resource this is, in this case dfareporting#reportCompatibleFields.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # Metrics which are compatible to be selected in the "metricNames" section of
        # the report.
        # Corresponds to the JSON property `metrics`
        # @return [Array<Google::Apis::DfareportingV2_1::Metric>]
        attr_accessor :metrics
      
        # Metrics which are compatible to be selected as activity metrics to pivot on in
        # the "activities" section of the report.
        # Corresponds to the JSON property `pivotedActivityMetrics`
        # @return [Array<Google::Apis::DfareportingV2_1::Metric>]
        attr_accessor :pivoted_activity_metrics
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @dimension_filters = args[:dimension_filters] unless args[:dimension_filters].nil?
          @dimensions = args[:dimensions] unless args[:dimensions].nil?
          @kind = args[:kind] unless args[:kind].nil?
          @metrics = args[:metrics] unless args[:metrics].nil?
          @pivoted_activity_metrics = args[:pivoted_activity_metrics] unless args[:pivoted_activity_metrics].nil?
        end
      end
      
      # Represents the list of reports.
      class ReportList
        include Google::Apis::Core::Hashable
      
        # The eTag of this response for caching purposes.
        # Corresponds to the JSON property `etag`
        # @return [String]
        attr_accessor :etag
      
        # The reports returned in this response.
        # Corresponds to the JSON property `items`
        # @return [Array<Google::Apis::DfareportingV2_1::Report>]
        attr_accessor :items
      
        # The kind of list this is, in this case dfareporting#reportList.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # Continuation token used to page through reports. To retrieve the next page of
        # results, set the next request's "pageToken" to the value of this field. The
        # page token is only valid for a limited amount of time and should not be
        # persisted.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @etag = args[:etag] unless args[:etag].nil?
          @items = args[:items] unless args[:items].nil?
          @kind = args[:kind] unless args[:kind].nil?
          @next_page_token = args[:next_page_token] unless args[:next_page_token].nil?
        end
      end
      
      # Reporting Configuration
      class ReportsConfiguration
        include Google::Apis::Core::Hashable
      
        # Whether the exposure to conversion report is enabled. This report shows
        # detailed pathway information on up to 10 of the most recent ad exposures seen
        # by a user before converting.
        # Corresponds to the JSON property `exposureToConversionEnabled`
        # @return [Boolean]
        attr_accessor :exposure_to_conversion_enabled
        alias_method :exposure_to_conversion_enabled?, :exposure_to_conversion_enabled
      
        # Lookback configuration settings.
        # Corresponds to the JSON property `lookbackConfiguration`
        # @return [Google::Apis::DfareportingV2_1::LookbackConfiguration]
        attr_accessor :lookback_configuration
      
        # Report generation time zone ID of this account. This is a required field that
        # can only be changed by a superuser.
        # Acceptable values are:
        # - "1" for "America/New_York"
        # - "2" for "Europe/London"
        # - "3" for "Europe/Paris"
        # - "4" for "Africa/Johannesburg"
        # - "5" for "Asia/Jerusalem"
        # - "6" for "Asia/Shanghai"
        # - "7" for "Asia/Hong_Kong"
        # - "8" for "Asia/Tokyo"
        # - "9" for "Australia/Sydney"
        # - "10" for "Asia/Dubai"
        # - "11" for "America/Los_Angeles"
        # - "12" for "Pacific/Auckland"
        # - "13" for "America/Sao_Paulo"
        # Corresponds to the JSON property `reportGenerationTimeZoneId`
        # @return [String]
        attr_accessor :report_generation_time_zone_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @exposure_to_conversion_enabled = args[:exposure_to_conversion_enabled] unless args[:exposure_to_conversion_enabled].nil?
          @lookback_configuration = args[:lookback_configuration] unless args[:lookback_configuration].nil?
          @report_generation_time_zone_id = args[:report_generation_time_zone_id] unless args[:report_generation_time_zone_id].nil?
        end
      end
      
      # Rich Media Exit Override.
      class RichMediaExitOverride
        include Google::Apis::Core::Hashable
      
        # Click-through URL to override the default exit URL. Applicable if the
        # useCustomExitUrl field is set to true.
        # Corresponds to the JSON property `customExitUrl`
        # @return [String]
        attr_accessor :custom_exit_url
      
        # ID for the override to refer to a specific exit in the creative.
        # Corresponds to the JSON property `exitId`
        # @return [String]
        attr_accessor :exit_id
      
        # Whether to use the custom exit URL.
        # Corresponds to the JSON property `useCustomExitUrl`
        # @return [Boolean]
        attr_accessor :use_custom_exit_url
        alias_method :use_custom_exit_url?, :use_custom_exit_url
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @custom_exit_url = args[:custom_exit_url] unless args[:custom_exit_url].nil?
          @exit_id = args[:exit_id] unless args[:exit_id].nil?
          @use_custom_exit_url = args[:use_custom_exit_url] unless args[:use_custom_exit_url].nil?
        end
      end
      
      # Contains properties of a site.
      class Site
        include Google::Apis::Core::Hashable
      
        # Account ID of this site. This is a read-only field that can be left blank.
        # Corresponds to the JSON property `accountId`
        # @return [String]
        attr_accessor :account_id
      
        # Whether this site is approved.
        # Corresponds to the JSON property `approved`
        # @return [Boolean]
        attr_accessor :approved
        alias_method :approved?, :approved
      
        # Directory site associated with this site. This is a required field that is
        # read-only after insertion.
        # Corresponds to the JSON property `directorySiteId`
        # @return [String]
        attr_accessor :directory_site_id
      
        # Represents a DimensionValue resource.
        # Corresponds to the JSON property `directorySiteIdDimensionValue`
        # @return [Google::Apis::DfareportingV2_1::DimensionValue]
        attr_accessor :directory_site_id_dimension_value
      
        # ID of this site. This is a read-only, auto-generated field.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # Represents a DimensionValue resource.
        # Corresponds to the JSON property `idDimensionValue`
        # @return [Google::Apis::DfareportingV2_1::DimensionValue]
        attr_accessor :id_dimension_value
      
        # Key name of this site. This is a read-only, auto-generated field.
        # Corresponds to the JSON property `keyName`
        # @return [String]
        attr_accessor :key_name
      
        # Identifies what kind of resource this is. Value: the fixed string "
        # dfareporting#site".
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # Name of this site.This is a required field. Must be less than 128 characters
        # long. If this site is under a subaccount, the name must be unique among sites
        # of the same subaccount. Otherwise, this site is a top-level site, and the name
        # must be unique among top-level sites of the same account.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Site contacts.
        # Corresponds to the JSON property `siteContacts`
        # @return [Array<Google::Apis::DfareportingV2_1::SiteContact>]
        attr_accessor :site_contacts
      
        # Site Settings
        # Corresponds to the JSON property `siteSettings`
        # @return [Google::Apis::DfareportingV2_1::SiteSettings]
        attr_accessor :site_settings
      
        # Subaccount ID of this site. This is a read-only field that can be left blank.
        # Corresponds to the JSON property `subaccountId`
        # @return [String]
        attr_accessor :subaccount_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @account_id = args[:account_id] unless args[:account_id].nil?
          @approved = args[:approved] unless args[:approved].nil?
          @directory_site_id = args[:directory_site_id] unless args[:directory_site_id].nil?
          @directory_site_id_dimension_value = args[:directory_site_id_dimension_value] unless args[:directory_site_id_dimension_value].nil?
          @id = args[:id] unless args[:id].nil?
          @id_dimension_value = args[:id_dimension_value] unless args[:id_dimension_value].nil?
          @key_name = args[:key_name] unless args[:key_name].nil?
          @kind = args[:kind] unless args[:kind].nil?
          @name = args[:name] unless args[:name].nil?
          @site_contacts = args[:site_contacts] unless args[:site_contacts].nil?
          @site_settings = args[:site_settings] unless args[:site_settings].nil?
          @subaccount_id = args[:subaccount_id] unless args[:subaccount_id].nil?
        end
      end
      
      # Site Contact
      class SiteContact
        include Google::Apis::Core::Hashable
      
        # Address of this site contact.
        # Corresponds to the JSON property `address`
        # @return [String]
        attr_accessor :address
      
        # Site contact type.
        # Corresponds to the JSON property `contactType`
        # @return [String]
        attr_accessor :contact_type
      
        # Email address of this site contact. This is a required field.
        # Corresponds to the JSON property `email`
        # @return [String]
        attr_accessor :email
      
        # First name of this site contact.
        # Corresponds to the JSON property `firstName`
        # @return [String]
        attr_accessor :first_name
      
        # ID of this site contact. This is a read-only, auto-generated field.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # Last name of this site contact.
        # Corresponds to the JSON property `lastName`
        # @return [String]
        attr_accessor :last_name
      
        # Primary phone number of this site contact.
        # Corresponds to the JSON property `phone`
        # @return [String]
        attr_accessor :phone
      
        # Title or designation of this site contact.
        # Corresponds to the JSON property `title`
        # @return [String]
        attr_accessor :title
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @address = args[:address] unless args[:address].nil?
          @contact_type = args[:contact_type] unless args[:contact_type].nil?
          @email = args[:email] unless args[:email].nil?
          @first_name = args[:first_name] unless args[:first_name].nil?
          @id = args[:id] unless args[:id].nil?
          @last_name = args[:last_name] unless args[:last_name].nil?
          @phone = args[:phone] unless args[:phone].nil?
          @title = args[:title] unless args[:title].nil?
        end
      end
      
      # Site Settings
      class SiteSettings
        include Google::Apis::Core::Hashable
      
        # Whether active view creatives are disabled for this site.
        # Corresponds to the JSON property `activeViewOptOut`
        # @return [Boolean]
        attr_accessor :active_view_opt_out
        alias_method :active_view_opt_out?, :active_view_opt_out
      
        # Creative Settings
        # Corresponds to the JSON property `creativeSettings`
        # @return [Google::Apis::DfareportingV2_1::CreativeSettings]
        attr_accessor :creative_settings
      
        # Whether brand safe ads are disabled for this site.
        # Corresponds to the JSON property `disableBrandSafeAds`
        # @return [Boolean]
        attr_accessor :disable_brand_safe_ads
        alias_method :disable_brand_safe_ads?, :disable_brand_safe_ads
      
        # Whether new cookies are disabled for this site.
        # Corresponds to the JSON property `disableNewCookie`
        # @return [Boolean]
        attr_accessor :disable_new_cookie
        alias_method :disable_new_cookie?, :disable_new_cookie
      
        # Lookback configuration settings.
        # Corresponds to the JSON property `lookbackConfiguration`
        # @return [Google::Apis::DfareportingV2_1::LookbackConfiguration]
        attr_accessor :lookback_configuration
      
        # Tag Settings
        # Corresponds to the JSON property `tagSetting`
        # @return [Google::Apis::DfareportingV2_1::TagSetting]
        attr_accessor :tag_setting
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @active_view_opt_out = args[:active_view_opt_out] unless args[:active_view_opt_out].nil?
          @creative_settings = args[:creative_settings] unless args[:creative_settings].nil?
          @disable_brand_safe_ads = args[:disable_brand_safe_ads] unless args[:disable_brand_safe_ads].nil?
          @disable_new_cookie = args[:disable_new_cookie] unless args[:disable_new_cookie].nil?
          @lookback_configuration = args[:lookback_configuration] unless args[:lookback_configuration].nil?
          @tag_setting = args[:tag_setting] unless args[:tag_setting].nil?
        end
      end
      
      # Site List Response
      class ListSitesResponse
        include Google::Apis::Core::Hashable
      
        # Identifies what kind of resource this is. Value: the fixed string "
        # dfareporting#sitesListResponse".
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # Pagination token to be used for the next list operation.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # Site collection.
        # Corresponds to the JSON property `sites`
        # @return [Array<Google::Apis::DfareportingV2_1::Site>]
        attr_accessor :sites
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @kind = args[:kind] unless args[:kind].nil?
          @next_page_token = args[:next_page_token] unless args[:next_page_token].nil?
          @sites = args[:sites] unless args[:sites].nil?
        end
      end
      
      # Represents the dimensions of ads, placements, creatives, or creative assets.
      class Size
        include Google::Apis::Core::Hashable
      
        # Height of this size.
        # Corresponds to the JSON property `height`
        # @return [Fixnum]
        attr_accessor :height
      
        # IAB standard size. This is a read-only, auto-generated field.
        # Corresponds to the JSON property `iab`
        # @return [Boolean]
        attr_accessor :iab
        alias_method :iab?, :iab
      
        # ID of this size. This is a read-only, auto-generated field.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # Identifies what kind of resource this is. Value: the fixed string "
        # dfareporting#size".
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # Width of this size.
        # Corresponds to the JSON property `width`
        # @return [Fixnum]
        attr_accessor :width
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @height = args[:height] unless args[:height].nil?
          @iab = args[:iab] unless args[:iab].nil?
          @id = args[:id] unless args[:id].nil?
          @kind = args[:kind] unless args[:kind].nil?
          @width = args[:width] unless args[:width].nil?
        end
      end
      
      # Size List Response
      class ListSizesResponse
        include Google::Apis::Core::Hashable
      
        # Identifies what kind of resource this is. Value: the fixed string "
        # dfareporting#sizesListResponse".
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # Size collection.
        # Corresponds to the JSON property `sizes`
        # @return [Array<Google::Apis::DfareportingV2_1::Size>]
        attr_accessor :sizes
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @kind = args[:kind] unless args[:kind].nil?
          @sizes = args[:sizes] unless args[:sizes].nil?
        end
      end
      
      # Represents a sorted dimension.
      class SortedDimension
        include Google::Apis::Core::Hashable
      
        # The kind of resource this is, in this case dfareporting#sortedDimension.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # The name of the dimension.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # An optional sort order for the dimension column.
        # Corresponds to the JSON property `sortOrder`
        # @return [String]
        attr_accessor :sort_order
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @kind = args[:kind] unless args[:kind].nil?
          @name = args[:name] unless args[:name].nil?
          @sort_order = args[:sort_order] unless args[:sort_order].nil?
        end
      end
      
      # Contains properties of a DCM subaccount.
      class Subaccount
        include Google::Apis::Core::Hashable
      
        # ID of the account that contains this subaccount. This is a read-only field
        # that can be left blank.
        # Corresponds to the JSON property `accountId`
        # @return [String]
        attr_accessor :account_id
      
        # IDs of the available user role permissions for this subaccount.
        # Corresponds to the JSON property `availablePermissionIds`
        # @return [Array<String>]
        attr_accessor :available_permission_ids
      
        # ID of this subaccount. This is a read-only, auto-generated field.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # Identifies what kind of resource this is. Value: the fixed string "
        # dfareporting#subaccount".
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # Name of this subaccount. This is a required field. Must be less than 128
        # characters long and be unique among subaccounts of the same account.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @account_id = args[:account_id] unless args[:account_id].nil?
          @available_permission_ids = args[:available_permission_ids] unless args[:available_permission_ids].nil?
          @id = args[:id] unless args[:id].nil?
          @kind = args[:kind] unless args[:kind].nil?
          @name = args[:name] unless args[:name].nil?
        end
      end
      
      # Subaccount List Response
      class ListSubaccountsResponse
        include Google::Apis::Core::Hashable
      
        # Identifies what kind of resource this is. Value: the fixed string "
        # dfareporting#subaccountsListResponse".
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # Pagination token to be used for the next list operation.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # Subaccount collection.
        # Corresponds to the JSON property `subaccounts`
        # @return [Array<Google::Apis::DfareportingV2_1::Subaccount>]
        attr_accessor :subaccounts
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @kind = args[:kind] unless args[:kind].nil?
          @next_page_token = args[:next_page_token] unless args[:next_page_token].nil?
          @subaccounts = args[:subaccounts] unless args[:subaccounts].nil?
        end
      end
      
      # Placement Tag Data
      class TagData
        include Google::Apis::Core::Hashable
      
        # Ad associated with this placement tag.
        # Corresponds to the JSON property `adId`
        # @return [String]
        attr_accessor :ad_id
      
        # Tag string to record a click.
        # Corresponds to the JSON property `clickTag`
        # @return [String]
        attr_accessor :click_tag
      
        # Creative associated with this placement tag.
        # Corresponds to the JSON property `creativeId`
        # @return [String]
        attr_accessor :creative_id
      
        # TagData tag format of this tag.
        # Corresponds to the JSON property `format`
        # @return [String]
        attr_accessor :format
      
        # Tag string for serving an ad.
        # Corresponds to the JSON property `impressionTag`
        # @return [String]
        attr_accessor :impression_tag
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @ad_id = args[:ad_id] unless args[:ad_id].nil?
          @click_tag = args[:click_tag] unless args[:click_tag].nil?
          @creative_id = args[:creative_id] unless args[:creative_id].nil?
          @format = args[:format] unless args[:format].nil?
          @impression_tag = args[:impression_tag] unless args[:impression_tag].nil?
        end
      end
      
      # Tag Settings
      class TagSetting
        include Google::Apis::Core::Hashable
      
        # Additional key-values to be included in tags. Each key-value pair must be of
        # the form key=value, and pairs must be separated by a semicolon (;). Keys and
        # values must not contain commas. For example, id=2;color=red is a valid value
        # for this field.
        # Corresponds to the JSON property `additionalKeyValues`
        # @return [String]
        attr_accessor :additional_key_values
      
        # Whether static landing page URLs should be included in the tags. This setting
        # applies only to placements.
        # Corresponds to the JSON property `includeClickThroughUrls`
        # @return [Boolean]
        attr_accessor :include_click_through_urls
        alias_method :include_click_through_urls?, :include_click_through_urls
      
        # Whether click-tracking string should be included in the tags.
        # Corresponds to the JSON property `includeClickTracking`
        # @return [Boolean]
        attr_accessor :include_click_tracking
        alias_method :include_click_tracking?, :include_click_tracking
      
        # Option specifying how keywords are embedded in ad tags. This setting can be
        # used to specify whether keyword placeholders are inserted in placement tags
        # for this site. Publishers can then add keywords to those placeholders.
        # Corresponds to the JSON property `keywordOption`
        # @return [String]
        attr_accessor :keyword_option
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @additional_key_values = args[:additional_key_values] unless args[:additional_key_values].nil?
          @include_click_through_urls = args[:include_click_through_urls] unless args[:include_click_through_urls].nil?
          @include_click_tracking = args[:include_click_tracking] unless args[:include_click_tracking].nil?
          @keyword_option = args[:keyword_option] unless args[:keyword_option].nil?
        end
      end
      
      # Dynamic and Image Tag Settings.
      class TagSettings
        include Google::Apis::Core::Hashable
      
        # Whether dynamic floodlight tags are enabled.
        # Corresponds to the JSON property `dynamicTagEnabled`
        # @return [Boolean]
        attr_accessor :dynamic_tag_enabled
        alias_method :dynamic_tag_enabled?, :dynamic_tag_enabled
      
        # Whether image tags are enabled.
        # Corresponds to the JSON property `imageTagEnabled`
        # @return [Boolean]
        attr_accessor :image_tag_enabled
        alias_method :image_tag_enabled?, :image_tag_enabled
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @dynamic_tag_enabled = args[:dynamic_tag_enabled] unless args[:dynamic_tag_enabled].nil?
          @image_tag_enabled = args[:image_tag_enabled] unless args[:image_tag_enabled].nil?
        end
      end
      
      # Target Window.
      class TargetWindow
        include Google::Apis::Core::Hashable
      
        # User-entered value.
        # Corresponds to the JSON property `customHtml`
        # @return [String]
        attr_accessor :custom_html
      
        # Type of browser window for which the backup image of the flash creative can be
        # displayed.
        # Corresponds to the JSON property `targetWindowOption`
        # @return [String]
        attr_accessor :target_window_option
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @custom_html = args[:custom_html] unless args[:custom_html].nil?
          @target_window_option = args[:target_window_option] unless args[:target_window_option].nil?
        end
      end
      
      # Contains properties of a targetable remarketing list. Remarketing enables you
      # to create lists of users who have performed specific actions on a site, then
      # target ads to members of those lists. This resource is a read-only view of a
      # remarketing list to be used to faciliate targeting ads to specific lists.
      # Remarketing lists that are owned by your advertisers and those that are shared
      # to your advertisers or account are accessible via this resource. To manage
      # remarketing lists that are owned by your advertisers, use the RemarketingLists
      # resource.
      class TargetableRemarketingList
        include Google::Apis::Core::Hashable
      
        # Account ID of this remarketing list. This is a read-only, auto-generated field
        # that is only returned in GET requests.
        # Corresponds to the JSON property `accountId`
        # @return [String]
        attr_accessor :account_id
      
        # Whether this targetable remarketing list is active.
        # Corresponds to the JSON property `active`
        # @return [Boolean]
        attr_accessor :active
        alias_method :active?, :active
      
        # Dimension value for the advertiser ID that owns this targetable remarketing
        # list.
        # Corresponds to the JSON property `advertiserId`
        # @return [String]
        attr_accessor :advertiser_id
      
        # Represents a DimensionValue resource.
        # Corresponds to the JSON property `advertiserIdDimensionValue`
        # @return [Google::Apis::DfareportingV2_1::DimensionValue]
        attr_accessor :advertiser_id_dimension_value
      
        # Targetable remarketing list description.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # Targetable remarketing list ID.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # Identifies what kind of resource this is. Value: the fixed string "
        # dfareporting#targetableRemarketingList".
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # Number of days that a user should remain in the targetable remarketing list
        # without an impression.
        # Corresponds to the JSON property `lifeSpan`
        # @return [String]
        attr_accessor :life_span
      
        # Number of users currently in the list. This is a read-only field.
        # Corresponds to the JSON property `listSize`
        # @return [String]
        attr_accessor :list_size
      
        # Product from which this targetable remarketing list was originated.
        # Corresponds to the JSON property `listSource`
        # @return [String]
        attr_accessor :list_source
      
        # Name of the targetable remarketing list. Is no greater than 128 characters
        # long.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Subaccount ID of this remarketing list. This is a read-only, auto-generated
        # field that is only returned in GET requests.
        # Corresponds to the JSON property `subaccountId`
        # @return [String]
        attr_accessor :subaccount_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @account_id = args[:account_id] unless args[:account_id].nil?
          @active = args[:active] unless args[:active].nil?
          @advertiser_id = args[:advertiser_id] unless args[:advertiser_id].nil?
          @advertiser_id_dimension_value = args[:advertiser_id_dimension_value] unless args[:advertiser_id_dimension_value].nil?
          @description = args[:description] unless args[:description].nil?
          @id = args[:id] unless args[:id].nil?
          @kind = args[:kind] unless args[:kind].nil?
          @life_span = args[:life_span] unless args[:life_span].nil?
          @list_size = args[:list_size] unless args[:list_size].nil?
          @list_source = args[:list_source] unless args[:list_source].nil?
          @name = args[:name] unless args[:name].nil?
          @subaccount_id = args[:subaccount_id] unless args[:subaccount_id].nil?
        end
      end
      
      # Targetable remarketing list response
      class ListTargetableRemarketingListsResponse
        include Google::Apis::Core::Hashable
      
        # Identifies what kind of resource this is. Value: the fixed string "
        # dfareporting#targetableRemarketingListsListResponse".
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # Pagination token to be used for the next list operation.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # Targetable remarketing list collection.
        # Corresponds to the JSON property `targetableRemarketingLists`
        # @return [Array<Google::Apis::DfareportingV2_1::TargetableRemarketingList>]
        attr_accessor :targetable_remarketing_lists
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @kind = args[:kind] unless args[:kind].nil?
          @next_page_token = args[:next_page_token] unless args[:next_page_token].nil?
          @targetable_remarketing_lists = args[:targetable_remarketing_lists] unless args[:targetable_remarketing_lists].nil?
        end
      end
      
      # Technology Targeting.
      class TechnologyTargeting
        include Google::Apis::Core::Hashable
      
        # Browsers that this ad targets. For each browser either set browserVersionId or
        # dartId along with the version numbers. If both are specified, only
        # browserVersionId will be used.The other fields are populated automatically
        # when the ad is inserted or updated.
        # Corresponds to the JSON property `browsers`
        # @return [Array<Google::Apis::DfareportingV2_1::Browser>]
        attr_accessor :browsers
      
        # Connection types that this ad targets. For each connection type only id is
        # required.The other fields are populated automatically when the ad is inserted
        # or updated.
        # Corresponds to the JSON property `connectionTypes`
        # @return [Array<Google::Apis::DfareportingV2_1::ConnectionType>]
        attr_accessor :connection_types
      
        # Mobile carriers that this ad targets. For each mobile carrier only id is
        # required, and the other fields are populated automatically when the ad is
        # inserted or updated. If targeting a mobile carrier, do not set targeting for
        # any zip codes.
        # Corresponds to the JSON property `mobileCarriers`
        # @return [Array<Google::Apis::DfareportingV2_1::MobileCarrier>]
        attr_accessor :mobile_carriers
      
        # Operating system versions that this ad targets. To target all versions, use
        # operatingSystems. For each operating system version, only id is required. The
        # other fields are populated automatically when the ad is inserted or updated.
        # If targeting an operating system version, do not set targeting for the
        # corresponding operating system in operatingSystems.
        # Corresponds to the JSON property `operatingSystemVersions`
        # @return [Array<Google::Apis::DfareportingV2_1::OperatingSystemVersion>]
        attr_accessor :operating_system_versions
      
        # Operating systems that this ad targets. To target specific versions, use
        # operatingSystemVersions. For each operating system only dartId is required.
        # The other fields are populated automatically when the ad is inserted or
        # updated. If targeting an operating system, do not set targeting for operating
        # system versions for the same operating system.
        # Corresponds to the JSON property `operatingSystems`
        # @return [Array<Google::Apis::DfareportingV2_1::OperatingSystem>]
        attr_accessor :operating_systems
      
        # Platform types that this ad targets. For example, desktop, mobile, or tablet.
        # For each platform type, only id is required, and the other fields are
        # populated automatically when the ad is inserted or updated.
        # Corresponds to the JSON property `platformTypes`
        # @return [Array<Google::Apis::DfareportingV2_1::PlatformType>]
        attr_accessor :platform_types
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @browsers = args[:browsers] unless args[:browsers].nil?
          @connection_types = args[:connection_types] unless args[:connection_types].nil?
          @mobile_carriers = args[:mobile_carriers] unless args[:mobile_carriers].nil?
          @operating_system_versions = args[:operating_system_versions] unless args[:operating_system_versions].nil?
          @operating_systems = args[:operating_systems] unless args[:operating_systems].nil?
          @platform_types = args[:platform_types] unless args[:platform_types].nil?
        end
      end
      
      # Third-party Tracking URL.
      class ThirdPartyTrackingUrl
        include Google::Apis::Core::Hashable
      
        # Third-party URL type for in-stream video creatives.
        # Corresponds to the JSON property `thirdPartyUrlType`
        # @return [String]
        attr_accessor :third_party_url_type
      
        # URL for the specified third-party URL type.
        # Corresponds to the JSON property `url`
        # @return [String]
        attr_accessor :url
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @third_party_url_type = args[:third_party_url_type] unless args[:third_party_url_type].nil?
          @url = args[:url] unless args[:url].nil?
        end
      end
      
      # User Defined Variable configuration.
      class UserDefinedVariableConfiguration
        include Google::Apis::Core::Hashable
      
        # Data type for the variable. This is a required field.
        # Corresponds to the JSON property `dataType`
        # @return [String]
        attr_accessor :data_type
      
        # User-friendly name for the variable which will appear in reports. This is a
        # required field, must be less than 64 characters long, and cannot contain the
        # following characters: ""<>".
        # Corresponds to the JSON property `reportName`
        # @return [String]
        attr_accessor :report_name
      
        # Variable name in the tag. This is a required field.
        # Corresponds to the JSON property `variableType`
        # @return [String]
        attr_accessor :variable_type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @data_type = args[:data_type] unless args[:data_type].nil?
          @report_name = args[:report_name] unless args[:report_name].nil?
          @variable_type = args[:variable_type] unless args[:variable_type].nil?
        end
      end
      
      # Represents a UserProfile resource.
      class UserProfile
        include Google::Apis::Core::Hashable
      
        # The account ID to which this profile belongs.
        # Corresponds to the JSON property `accountId`
        # @return [String]
        attr_accessor :account_id
      
        # The account name this profile belongs to.
        # Corresponds to the JSON property `accountName`
        # @return [String]
        attr_accessor :account_name
      
        # The eTag of this response for caching purposes.
        # Corresponds to the JSON property `etag`
        # @return [String]
        attr_accessor :etag
      
        # The kind of resource this is, in this case dfareporting#userProfile.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # The unique ID of the user profile.
        # Corresponds to the JSON property `profileId`
        # @return [String]
        attr_accessor :profile_id
      
        # The sub account ID this profile belongs to if applicable.
        # Corresponds to the JSON property `subAccountId`
        # @return [String]
        attr_accessor :sub_account_id
      
        # The sub account name this profile belongs to if applicable.
        # Corresponds to the JSON property `subAccountName`
        # @return [String]
        attr_accessor :sub_account_name
      
        # The user name.
        # Corresponds to the JSON property `userName`
        # @return [String]
        attr_accessor :user_name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @account_id = args[:account_id] unless args[:account_id].nil?
          @account_name = args[:account_name] unless args[:account_name].nil?
          @etag = args[:etag] unless args[:etag].nil?
          @kind = args[:kind] unless args[:kind].nil?
          @profile_id = args[:profile_id] unless args[:profile_id].nil?
          @sub_account_id = args[:sub_account_id] unless args[:sub_account_id].nil?
          @sub_account_name = args[:sub_account_name] unless args[:sub_account_name].nil?
          @user_name = args[:user_name] unless args[:user_name].nil?
        end
      end
      
      # Represents the list of user profiles.
      class UserProfileList
        include Google::Apis::Core::Hashable
      
        # The eTag of this response for caching purposes.
        # Corresponds to the JSON property `etag`
        # @return [String]
        attr_accessor :etag
      
        # The user profiles returned in this response.
        # Corresponds to the JSON property `items`
        # @return [Array<Google::Apis::DfareportingV2_1::UserProfile>]
        attr_accessor :items
      
        # The kind of list this is, in this case dfareporting#userProfileList.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @etag = args[:etag] unless args[:etag].nil?
          @items = args[:items] unless args[:items].nil?
          @kind = args[:kind] unless args[:kind].nil?
        end
      end
      
      # Contains properties of auser role, which is used to manage user access.
      class UserRole
        include Google::Apis::Core::Hashable
      
        # Account ID of this user role. This is a read-only field that can be left blank.
        # Corresponds to the JSON property `accountId`
        # @return [String]
        attr_accessor :account_id
      
        # Whether this is a default user role. Default user roles are created by the
        # system for the account/subaccount and cannot be modified or deleted. Each
        # default user role comes with a basic set of preassigned permissions.
        # Corresponds to the JSON property `defaultUserRole`
        # @return [Boolean]
        attr_accessor :default_user_role
        alias_method :default_user_role?, :default_user_role
      
        # ID of this user role. This is a read-only, auto-generated field.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # Identifies what kind of resource this is. Value: the fixed string "
        # dfareporting#userRole".
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # Name of this user role. This is a required field. Must be less than 256
        # characters long. If this user role is under a subaccount, the name must be
        # unique among sites of the same subaccount. Otherwise, this user role is a top-
        # level user role, and the name must be unique among top-level user roles of the
        # same account.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # ID of the user role that this user role is based on or copied from. This is a
        # required field.
        # Corresponds to the JSON property `parentUserRoleId`
        # @return [String]
        attr_accessor :parent_user_role_id
      
        # List of permissions associated with this user role.
        # Corresponds to the JSON property `permissions`
        # @return [Array<Google::Apis::DfareportingV2_1::UserRolePermission>]
        attr_accessor :permissions
      
        # Subaccount ID of this user role. This is a read-only field that can be left
        # blank.
        # Corresponds to the JSON property `subaccountId`
        # @return [String]
        attr_accessor :subaccount_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @account_id = args[:account_id] unless args[:account_id].nil?
          @default_user_role = args[:default_user_role] unless args[:default_user_role].nil?
          @id = args[:id] unless args[:id].nil?
          @kind = args[:kind] unless args[:kind].nil?
          @name = args[:name] unless args[:name].nil?
          @parent_user_role_id = args[:parent_user_role_id] unless args[:parent_user_role_id].nil?
          @permissions = args[:permissions] unless args[:permissions].nil?
          @subaccount_id = args[:subaccount_id] unless args[:subaccount_id].nil?
        end
      end
      
      # Contains properties of a user role permission.
      class UserRolePermission
        include Google::Apis::Core::Hashable
      
        # Levels of availability for a user role permission.
        # Corresponds to the JSON property `availability`
        # @return [String]
        attr_accessor :availability
      
        # ID of this user role permission.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # Identifies what kind of resource this is. Value: the fixed string "
        # dfareporting#userRolePermission".
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # Name of this user role permission.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # ID of the permission group that this user role permission belongs to.
        # Corresponds to the JSON property `permissionGroupId`
        # @return [String]
        attr_accessor :permission_group_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @availability = args[:availability] unless args[:availability].nil?
          @id = args[:id] unless args[:id].nil?
          @kind = args[:kind] unless args[:kind].nil?
          @name = args[:name] unless args[:name].nil?
          @permission_group_id = args[:permission_group_id] unless args[:permission_group_id].nil?
        end
      end
      
      # Represents a grouping of related user role permissions.
      class UserRolePermissionGroup
        include Google::Apis::Core::Hashable
      
        # ID of this user role permission.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # Identifies what kind of resource this is. Value: the fixed string "
        # dfareporting#userRolePermissionGroup".
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # Name of this user role permission group.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @id = args[:id] unless args[:id].nil?
          @kind = args[:kind] unless args[:kind].nil?
          @name = args[:name] unless args[:name].nil?
        end
      end
      
      # User Role Permission Group List Response
      class ListUserRolePermissionGroupsResponse
        include Google::Apis::Core::Hashable
      
        # Identifies what kind of resource this is. Value: the fixed string "
        # dfareporting#userRolePermissionGroupsListResponse".
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # User role permission group collection.
        # Corresponds to the JSON property `userRolePermissionGroups`
        # @return [Array<Google::Apis::DfareportingV2_1::UserRolePermissionGroup>]
        attr_accessor :user_role_permission_groups
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @kind = args[:kind] unless args[:kind].nil?
          @user_role_permission_groups = args[:user_role_permission_groups] unless args[:user_role_permission_groups].nil?
        end
      end
      
      # User Role Permission List Response
      class ListUserRolePermissionsResponse
        include Google::Apis::Core::Hashable
      
        # Identifies what kind of resource this is. Value: the fixed string "
        # dfareporting#userRolePermissionsListResponse".
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # User role permission collection.
        # Corresponds to the JSON property `userRolePermissions`
        # @return [Array<Google::Apis::DfareportingV2_1::UserRolePermission>]
        attr_accessor :user_role_permissions
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @kind = args[:kind] unless args[:kind].nil?
          @user_role_permissions = args[:user_role_permissions] unless args[:user_role_permissions].nil?
        end
      end
      
      # User Role List Response
      class ListUserRolesResponse
        include Google::Apis::Core::Hashable
      
        # Identifies what kind of resource this is. Value: the fixed string "
        # dfareporting#userRolesListResponse".
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # Pagination token to be used for the next list operation.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # User role collection.
        # Corresponds to the JSON property `userRoles`
        # @return [Array<Google::Apis::DfareportingV2_1::UserRole>]
        attr_accessor :user_roles
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @kind = args[:kind] unless args[:kind].nil?
          @next_page_token = args[:next_page_token] unless args[:next_page_token].nil?
          @user_roles = args[:user_roles] unless args[:user_roles].nil?
        end
      end
    end
  end
end
