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
    module DisplayvideoV1
      
      # Request message for ManualTriggerService.ActivateManualTrigger.
      class ActivateManualTriggerRequest
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # Configuration for custom Active View video viewability metrics.
      class ActiveViewVideoViewabilityMetricConfig
        include Google::Apis::Core::Hashable
      
        # Required. The display name of the custom metric.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # The minimum visible video duration required (in seconds) in order for an
        # impression to be recorded. You must specify minimum_duration, minimum_quartile
        # or both. If both are specified, an impression meets the metric criteria if
        # either requirement is met (whichever happens first).
        # Corresponds to the JSON property `minimumDuration`
        # @return [String]
        attr_accessor :minimum_duration
      
        # The minimum visible video duration required, based on the video quartiles, in
        # order for an impression to be recorded. You must specify minimum_duration,
        # minimum_quartile or both. If both are specified, an impression meets the
        # metric criteria if either requirement is met (whichever happens first).
        # Corresponds to the JSON property `minimumQuartile`
        # @return [String]
        attr_accessor :minimum_quartile
      
        # Required. The minimum percentage of the video ad's pixels visible on the
        # screen in order for an impression to be recorded.
        # Corresponds to the JSON property `minimumViewability`
        # @return [String]
        attr_accessor :minimum_viewability
      
        # Required. The minimum percentage of the video ad's volume required in order
        # for an impression to be recorded.
        # Corresponds to the JSON property `minimumVolume`
        # @return [String]
        attr_accessor :minimum_volume
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @display_name = args[:display_name] if args.key?(:display_name)
          @minimum_duration = args[:minimum_duration] if args.key?(:minimum_duration)
          @minimum_quartile = args[:minimum_quartile] if args.key?(:minimum_quartile)
          @minimum_viewability = args[:minimum_viewability] if args.key?(:minimum_viewability)
          @minimum_volume = args[:minimum_volume] if args.key?(:minimum_volume)
        end
      end
      
      # Details of Adloox settings.
      class Adloox
        include Google::Apis::Core::Hashable
      
        # Adloox's brand safety settings.
        # Corresponds to the JSON property `excludedAdlooxCategories`
        # @return [Array<String>]
        attr_accessor :excluded_adloox_categories
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @excluded_adloox_categories = args[:excluded_adloox_categories] if args.key?(:excluded_adloox_categories)
        end
      end
      
      # A single advertiser in Display & Video 360 (DV360).
      class Advertiser
        include Google::Apis::Core::Hashable
      
        # Ad server related settings of an advertiser.
        # Corresponds to the JSON property `adServerConfig`
        # @return [Google::Apis::DisplayvideoV1::AdvertiserAdServerConfig]
        attr_accessor :ad_server_config
      
        # Output only. The unique ID of the advertiser. Assigned by the system.
        # Corresponds to the JSON property `advertiserId`
        # @return [Fixnum]
        attr_accessor :advertiser_id
      
        # Creatives related settings of an advertiser.
        # Corresponds to the JSON property `creativeConfig`
        # @return [Google::Apis::DisplayvideoV1::AdvertiserCreativeConfig]
        attr_accessor :creative_config
      
        # Settings that control how advertiser related data may be accessed.
        # Corresponds to the JSON property `dataAccessConfig`
        # @return [Google::Apis::DisplayvideoV1::AdvertiserDataAccessConfig]
        attr_accessor :data_access_config
      
        # Required. The display name of the advertiser. Must be UTF-8 encoded with a
        # maximum size of 240 bytes.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # Required. Controls whether or not insertion orders and line items of the
        # advertiser can spend their budgets and bid on inventory. * Accepted values are
        # `ENTITY_STATUS_ACTIVE` and `ENTITY_STATUS_SCHEDULED_FOR_DELETION`. * If set to
        # `ENTITY_STATUS_SCHEDULED_FOR_DELETION`, the advertiser will be deleted 30 days
        # from when it was first scheduled for deletion.
        # Corresponds to the JSON property `entityStatus`
        # @return [String]
        attr_accessor :entity_status
      
        # General settings of an advertiser.
        # Corresponds to the JSON property `generalConfig`
        # @return [Google::Apis::DisplayvideoV1::AdvertiserGeneralConfig]
        attr_accessor :general_config
      
        # Integration details of an entry.
        # Corresponds to the JSON property `integrationDetails`
        # @return [Google::Apis::DisplayvideoV1::IntegrationDetails]
        attr_accessor :integration_details
      
        # Output only. The resource name of the advertiser.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Required. Immutable. The unique ID of the partner that the advertiser belongs
        # to.
        # Corresponds to the JSON property `partnerId`
        # @return [Fixnum]
        attr_accessor :partner_id
      
        # Targeting settings related to ad serving of an advertiser.
        # Corresponds to the JSON property `servingConfig`
        # @return [Google::Apis::DisplayvideoV1::AdvertiserTargetingConfig]
        attr_accessor :serving_config
      
        # Output only. The timestamp when the advertiser was last updated. Assigned by
        # the system.
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @ad_server_config = args[:ad_server_config] if args.key?(:ad_server_config)
          @advertiser_id = args[:advertiser_id] if args.key?(:advertiser_id)
          @creative_config = args[:creative_config] if args.key?(:creative_config)
          @data_access_config = args[:data_access_config] if args.key?(:data_access_config)
          @display_name = args[:display_name] if args.key?(:display_name)
          @entity_status = args[:entity_status] if args.key?(:entity_status)
          @general_config = args[:general_config] if args.key?(:general_config)
          @integration_details = args[:integration_details] if args.key?(:integration_details)
          @name = args[:name] if args.key?(:name)
          @partner_id = args[:partner_id] if args.key?(:partner_id)
          @serving_config = args[:serving_config] if args.key?(:serving_config)
          @update_time = args[:update_time] if args.key?(:update_time)
        end
      end
      
      # Ad server related settings of an advertiser.
      class AdvertiserAdServerConfig
        include Google::Apis::Core::Hashable
      
        # Settings for advertisers that use both Campaign Manager 360 (CM360) and third-
        # party ad servers.
        # Corresponds to the JSON property `cmHybridConfig`
        # @return [Google::Apis::DisplayvideoV1::CmHybridConfig]
        attr_accessor :cm_hybrid_config
      
        # Settings for advertisers that use third-party ad servers only.
        # Corresponds to the JSON property `thirdPartyOnlyConfig`
        # @return [Google::Apis::DisplayvideoV1::ThirdPartyOnlyConfig]
        attr_accessor :third_party_only_config
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @cm_hybrid_config = args[:cm_hybrid_config] if args.key?(:cm_hybrid_config)
          @third_party_only_config = args[:third_party_only_config] if args.key?(:third_party_only_config)
        end
      end
      
      # Creatives related settings of an advertiser.
      class AdvertiserCreativeConfig
        include Google::Apis::Core::Hashable
      
        # Whether or not the advertiser is enabled for dynamic creatives.
        # Corresponds to the JSON property `dynamicCreativeEnabled`
        # @return [Boolean]
        attr_accessor :dynamic_creative_enabled
        alias_method :dynamic_creative_enabled?, :dynamic_creative_enabled
      
        # An ID for configuring campaign monitoring provided by Integral Ad Service (IAS)
        # . The DV360 system will append an IAS "Campaign Monitor" tag containing this
        # ID to the creative tag.
        # Corresponds to the JSON property `iasClientId`
        # @return [Fixnum]
        attr_accessor :ias_client_id
      
        # Whether or not to use DV360's Online Behavioral Advertising (OBA) compliance.
        # Warning: Changing OBA settings may cause the audit status of your creatives to
        # be reset by some ad exchanges, making them ineligible to serve until they are
        # re-approved.
        # Corresponds to the JSON property `obaComplianceDisabled`
        # @return [Boolean]
        attr_accessor :oba_compliance_disabled
        alias_method :oba_compliance_disabled?, :oba_compliance_disabled
      
        # By setting this field to `true`, you, on behalf of your company, authorize
        # Google to use video creatives associated with this Display & Video 360
        # advertiser to provide reporting and features related to the advertiser's
        # television campaigns. Applicable only when the advertiser has a CM360 hybrid
        # ad server configuration.
        # Corresponds to the JSON property `videoCreativeDataSharingAuthorized`
        # @return [Boolean]
        attr_accessor :video_creative_data_sharing_authorized
        alias_method :video_creative_data_sharing_authorized?, :video_creative_data_sharing_authorized
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @dynamic_creative_enabled = args[:dynamic_creative_enabled] if args.key?(:dynamic_creative_enabled)
          @ias_client_id = args[:ias_client_id] if args.key?(:ias_client_id)
          @oba_compliance_disabled = args[:oba_compliance_disabled] if args.key?(:oba_compliance_disabled)
          @video_creative_data_sharing_authorized = args[:video_creative_data_sharing_authorized] if args.key?(:video_creative_data_sharing_authorized)
        end
      end
      
      # Settings that control how advertiser related data may be accessed.
      class AdvertiserDataAccessConfig
        include Google::Apis::Core::Hashable
      
        # Structured Data Files (SDF) settings of an advertiser.
        # Corresponds to the JSON property `sdfConfig`
        # @return [Google::Apis::DisplayvideoV1::AdvertiserSdfConfig]
        attr_accessor :sdf_config
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @sdf_config = args[:sdf_config] if args.key?(:sdf_config)
        end
      end
      
      # General settings of an advertiser.
      class AdvertiserGeneralConfig
        include Google::Apis::Core::Hashable
      
        # Required. Immutable. Advertiser's currency in ISO 4217 format. Accepted codes
        # and the currencies they represent are: Currency Code : Currency Name * `ARS` :
        # Argentine Peso * `AUD` : Australian Dollar * `BRL` : Brazilian Real * `CAD` :
        # Canadian Dollar * `CHF` : Swiss Franc * `CLP` : Chilean Peso * `CNY` : Chinese
        # Yuan * `COP` : Colombian Peso * `CZK` : Czech Koruna * `DKK` : Danish Krone * `
        # EGP` : Egyption Pound * `EUR` : Euro * `GBP` : British Pound * `HKD` : Hong
        # Kong Dollar * `HUF` : Hungarian Forint * `IDR` : Indonesian Rupiah * `ILS` :
        # Israeli Shekel * `INR` : Indian Rupee * `JPY` : Japanese Yen * `KRW` : South
        # Korean Won * `MXN` : Mexican Pesos * `MYR` : Malaysian Ringgit * `NGN` :
        # Nigerian Naira * `NOK` : Norwegian Krone * `NZD` : New Zealand Dollar * `PEN` :
        # Peruvian Nuevo Sol * `PLN` : Polish Zloty * `RON` : New Romanian Leu * `RUB` :
        # Russian Ruble * `SEK` : Swedish Krona * `TRY` : Turkish Lira * `TWD` : New
        # Taiwan Dollar * `USD` : US Dollar * `ZAR` : South African Rand
        # Corresponds to the JSON property `currencyCode`
        # @return [String]
        attr_accessor :currency_code
      
        # Required. The domain URL of the advertiser's primary website. The system will
        # send this information to publishers that require website URL to associate a
        # campaign with an advertiser. Provide a URL with no path or query string,
        # beginning with `http:` or `https:`. For example, http://www.example.com
        # Corresponds to the JSON property `domainUrl`
        # @return [String]
        attr_accessor :domain_url
      
        # Output only. The standard TZ database name of the advertiser's time zone. For
        # example, `America/New_York`. See more at: https://en.wikipedia.org/wiki/
        # List_of_tz_database_time_zones For CM360 hybrid advertisers, the time zone is
        # the same as that of the associated CM360 account; for third-party only
        # advertisers, the time zone is the same as that of the parent partner.
        # Corresponds to the JSON property `timeZone`
        # @return [String]
        attr_accessor :time_zone
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @currency_code = args[:currency_code] if args.key?(:currency_code)
          @domain_url = args[:domain_url] if args.key?(:domain_url)
          @time_zone = args[:time_zone] if args.key?(:time_zone)
        end
      end
      
      # Structured Data Files (SDF) settings of an advertiser.
      class AdvertiserSdfConfig
        include Google::Apis::Core::Hashable
      
        # Whether or not this advertiser overrides the SDF configuration of its parent
        # partner. By default, an advertiser inherits the SDF configuration from the
        # parent partner. To override the partner configuration, set this field to `true`
        # and provide the new configuration in sdfConfig.
        # Corresponds to the JSON property `overridePartnerSdfConfig`
        # @return [Boolean]
        attr_accessor :override_partner_sdf_config
        alias_method :override_partner_sdf_config?, :override_partner_sdf_config
      
        # Structured Data File (SDF) related settings.
        # Corresponds to the JSON property `sdfConfig`
        # @return [Google::Apis::DisplayvideoV1::SdfConfig]
        attr_accessor :sdf_config
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @override_partner_sdf_config = args[:override_partner_sdf_config] if args.key?(:override_partner_sdf_config)
          @sdf_config = args[:sdf_config] if args.key?(:sdf_config)
        end
      end
      
      # Targeting settings related to ad serving of an advertiser.
      class AdvertiserTargetingConfig
        include Google::Apis::Core::Hashable
      
        # Whether or not connected TV devices are exempt from viewability targeting for
        # all video line items under the advertiser.
        # Corresponds to the JSON property `exemptTvFromViewabilityTargeting`
        # @return [Boolean]
        attr_accessor :exempt_tv_from_viewability_targeting
        alias_method :exempt_tv_from_viewability_targeting?, :exempt_tv_from_viewability_targeting
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @exempt_tv_from_viewability_targeting = args[:exempt_tv_from_viewability_targeting] if args.key?(:exempt_tv_from_viewability_targeting)
        end
      end
      
      # Represents a targetable age range. This will be populated in the details field
      # of an AssignedTargetingOption when targeting_type is `TARGETING_TYPE_AGE_RANGE`
      # .
      class AgeRangeAssignedTargetingOptionDetails
        include Google::Apis::Core::Hashable
      
        # Output only. The age range of an audience. We only support targeting a
        # continuous age range of an audience. Thus, the age range represented in this
        # field can be 1) targeted solely, or, 2) part of a larger continuous age range.
        # The reach of a continuous age range targeting can be expanded by also
        # targeting an audience of an unknown age.
        # Corresponds to the JSON property `ageRange`
        # @return [String]
        attr_accessor :age_range
      
        # Required. The targeting_option_id of a TargetingOption of type `
        # TARGETING_TYPE_AGE_RANGE`.
        # Corresponds to the JSON property `targetingOptionId`
        # @return [String]
        attr_accessor :targeting_option_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @age_range = args[:age_range] if args.key?(:age_range)
          @targeting_option_id = args[:targeting_option_id] if args.key?(:targeting_option_id)
        end
      end
      
      # Represents a targetable age range. This will be populated in the
      # age_range_details field when targeting_type is `TARGETING_TYPE_AGE_RANGE`.
      class AgeRangeTargetingOptionDetails
        include Google::Apis::Core::Hashable
      
        # Output only. The age range of an audience.
        # Corresponds to the JSON property `ageRange`
        # @return [String]
        attr_accessor :age_range
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @age_range = args[:age_range] if args.key?(:age_range)
        end
      end
      
      # Details for assigned app targeting option. This will be populated in the
      # details field of an AssignedTargetingOption when targeting_type is `
      # TARGETING_TYPE_APP`.
      class AppAssignedTargetingOptionDetails
        include Google::Apis::Core::Hashable
      
        # Required. The ID of the app. Android's Play store app uses bundle ID, for
        # example `com.google.android.gm`. Apple's App store app ID uses 9 digit string,
        # for example `422689480`.
        # Corresponds to the JSON property `appId`
        # @return [String]
        attr_accessor :app_id
      
        # Output only. The display name of the app.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # Indicates if this option is being negatively targeted.
        # Corresponds to the JSON property `negative`
        # @return [Boolean]
        attr_accessor :negative
        alias_method :negative?, :negative
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @app_id = args[:app_id] if args.key?(:app_id)
          @display_name = args[:display_name] if args.key?(:display_name)
          @negative = args[:negative] if args.key?(:negative)
        end
      end
      
      # Details for assigned app category targeting option. This will be populated in
      # the app_category_details field of an AssignedTargetingOption when
      # targeting_type is `TARGETING_TYPE_APP_CATEGORY`.
      class AppCategoryAssignedTargetingOptionDetails
        include Google::Apis::Core::Hashable
      
        # Output only. The display name of the app category.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # Indicates if this option is being negatively targeted.
        # Corresponds to the JSON property `negative`
        # @return [Boolean]
        attr_accessor :negative
        alias_method :negative?, :negative
      
        # Required. The targeting_option_id field when targeting_type is `
        # TARGETING_TYPE_APP_CATEGORY`.
        # Corresponds to the JSON property `targetingOptionId`
        # @return [String]
        attr_accessor :targeting_option_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @display_name = args[:display_name] if args.key?(:display_name)
          @negative = args[:negative] if args.key?(:negative)
          @targeting_option_id = args[:targeting_option_id] if args.key?(:targeting_option_id)
        end
      end
      
      # Represents a targetable collection of apps. A collection lets you target
      # dynamic groups of related apps that are maintained by the platform, for
      # example `All Apps/Google Play/Games`. This will be populated in the
      # app_category_details field when targeting_type is `TARGETING_TYPE_APP_CATEGORY`
      # .
      class AppCategoryTargetingOptionDetails
        include Google::Apis::Core::Hashable
      
        # Output only. The name of the app collection.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @display_name = args[:display_name] if args.key?(:display_name)
        end
      end
      
      # A single asset.
      class Asset
        include Google::Apis::Core::Hashable
      
        # The asset content. For uploaded assets, the content is the serving path.
        # Corresponds to the JSON property `content`
        # @return [String]
        attr_accessor :content
      
        # Media ID of the uploaded asset. This is a unique identifier for the asset.
        # This ID can be passed to other API calls, e.g. CreateCreative to associate the
        # asset with a creative.
        # Corresponds to the JSON property `mediaId`
        # @return [Fixnum]
        attr_accessor :media_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @content = args[:content] if args.key?(:content)
          @media_id = args[:media_id] if args.key?(:media_id)
        end
      end
      
      # Asset association for the creative.
      class AssetAssociation
        include Google::Apis::Core::Hashable
      
        # A single asset.
        # Corresponds to the JSON property `asset`
        # @return [Google::Apis::DisplayvideoV1::Asset]
        attr_accessor :asset
      
        # The role of this asset for the creative.
        # Corresponds to the JSON property `role`
        # @return [String]
        attr_accessor :role
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @asset = args[:asset] if args.key?(:asset)
          @role = args[:role] if args.key?(:role)
        end
      end
      
      # An assignment between a targetable inventory source and an inventory source
      # group.
      class AssignedInventorySource
        include Google::Apis::Core::Hashable
      
        # Output only. The unique ID of the assigned inventory source. The ID is only
        # unique within a given inventory source group. It may be reused in other
        # contexts.
        # Corresponds to the JSON property `assignedInventorySourceId`
        # @return [Fixnum]
        attr_accessor :assigned_inventory_source_id
      
        # Required. The ID of the inventory source entity being targeted.
        # Corresponds to the JSON property `inventorySourceId`
        # @return [String]
        attr_accessor :inventory_source_id
      
        # Output only. The resource name of the assigned inventory source.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @assigned_inventory_source_id = args[:assigned_inventory_source_id] if args.key?(:assigned_inventory_source_id)
          @inventory_source_id = args[:inventory_source_id] if args.key?(:inventory_source_id)
          @name = args[:name] if args.key?(:name)
        end
      end
      
      # An assignment between a location list and a relevant targeting option.
      # Currently, geo region targeting options are the only supported option for
      # assignment.
      class AssignedLocation
        include Google::Apis::Core::Hashable
      
        # Output only. The unique ID of the assigned location. The ID is only unique
        # within a location list. It may be reused in other contexts.
        # Corresponds to the JSON property `assignedLocationId`
        # @return [Fixnum]
        attr_accessor :assigned_location_id
      
        # Output only. The resource name of the assigned location.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Required. The ID of the targeting option assigned to the location list. Must
        # be of type TARGETING_TYPE_GEO_REGION.
        # Corresponds to the JSON property `targetingOptionId`
        # @return [String]
        attr_accessor :targeting_option_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @assigned_location_id = args[:assigned_location_id] if args.key?(:assigned_location_id)
          @name = args[:name] if args.key?(:name)
          @targeting_option_id = args[:targeting_option_id] if args.key?(:targeting_option_id)
        end
      end
      
      # A single assigned targeting option, which defines the state of a targeting
      # option for an entity with targeting settings.
      class AssignedTargetingOption
        include Google::Apis::Core::Hashable
      
        # Represents a targetable age range. This will be populated in the details field
        # of an AssignedTargetingOption when targeting_type is `TARGETING_TYPE_AGE_RANGE`
        # .
        # Corresponds to the JSON property `ageRangeDetails`
        # @return [Google::Apis::DisplayvideoV1::AgeRangeAssignedTargetingOptionDetails]
        attr_accessor :age_range_details
      
        # Details for assigned app category targeting option. This will be populated in
        # the app_category_details field of an AssignedTargetingOption when
        # targeting_type is `TARGETING_TYPE_APP_CATEGORY`.
        # Corresponds to the JSON property `appCategoryDetails`
        # @return [Google::Apis::DisplayvideoV1::AppCategoryAssignedTargetingOptionDetails]
        attr_accessor :app_category_details
      
        # Details for assigned app targeting option. This will be populated in the
        # details field of an AssignedTargetingOption when targeting_type is `
        # TARGETING_TYPE_APP`.
        # Corresponds to the JSON property `appDetails`
        # @return [Google::Apis::DisplayvideoV1::AppAssignedTargetingOptionDetails]
        attr_accessor :app_details
      
        # Output only. The unique ID of the assigned targeting option. The ID is only
        # unique within a given line item and targeting type. It may be reused in other
        # contexts.
        # Corresponds to the JSON property `assignedTargetingOptionId`
        # @return [String]
        attr_accessor :assigned_targeting_option_id
      
        # Assigned audience group targeting option details. This will be populated in
        # the details field of an AssignedTargetingOption when targeting_type is `
        # TARGETING_TYPE_AUDIENCE_GROUP`. The relation between each group is UNION,
        # except for excluded_first_and_third_party_audience_group and
        # excluded_google_audience_group, of which COMPLEMENT is UNION'ed with other
        # groups.
        # Corresponds to the JSON property `audienceGroupDetails`
        # @return [Google::Apis::DisplayvideoV1::AudienceGroupAssignedTargetingOptionDetails]
        attr_accessor :audience_group_details
      
        # Represents an assigned authorized seller status. This will be populated in the
        # details field of an AssignedTargetingOption when targeting_type is `
        # TARGETING_TYPE_AUTHORIZED_SELLER_STATUS`.
        # Corresponds to the JSON property `authorizedSellerStatusDetails`
        # @return [Google::Apis::DisplayvideoV1::AuthorizedSellerStatusAssignedTargetingOptionDetails]
        attr_accessor :authorized_seller_status_details
      
        # Details for assigned browser targeting option. This will be populated in the
        # details field of an AssignedTargetingOption when targeting_type is `
        # TARGETING_TYPE_BROWSER`.
        # Corresponds to the JSON property `browserDetails`
        # @return [Google::Apis::DisplayvideoV1::BrowserAssignedTargetingOptionDetails]
        attr_accessor :browser_details
      
        # Details for assigned carrier and ISP targeting option. This will be populated
        # in the details field of an AssignedTargetingOption when targeting_type is `
        # TARGETING_TYPE_CARRIER_AND_ISP`.
        # Corresponds to the JSON property `carrierAndIspDetails`
        # @return [Google::Apis::DisplayvideoV1::CarrierAndIspAssignedTargetingOptionDetails]
        attr_accessor :carrier_and_isp_details
      
        # Assigned category targeting option details. This will be populated in the
        # category_details field when targeting_type is `TARGETING_TYPE_CATEGORY`.
        # Corresponds to the JSON property `categoryDetails`
        # @return [Google::Apis::DisplayvideoV1::CategoryAssignedTargetingOptionDetails]
        attr_accessor :category_details
      
        # Details for assigned channel targeting option. This will be populated in the
        # details field of an AssignedTargetingOption when targeting_type is `
        # TARGETING_TYPE_CHANNEL`.
        # Corresponds to the JSON property `channelDetails`
        # @return [Google::Apis::DisplayvideoV1::ChannelAssignedTargetingOptionDetails]
        attr_accessor :channel_details
      
        # Assigned content instream position targeting option details. This will be
        # populated in the content_instream_position_details field when targeting_type
        # is `TARGETING_TYPE_CONTENT_INSTREAM_POSITION`.
        # Corresponds to the JSON property `contentInstreamPositionDetails`
        # @return [Google::Apis::DisplayvideoV1::ContentInstreamPositionAssignedTargetingOptionDetails]
        attr_accessor :content_instream_position_details
      
        # Assigned content outstream position targeting option details. This will be
        # populated in the content_outstream_position_details field when targeting_type
        # is `TARGETING_TYPE_CONTENT_OUTSTREAM_POSITION`.
        # Corresponds to the JSON property `contentOutstreamPositionDetails`
        # @return [Google::Apis::DisplayvideoV1::ContentOutstreamPositionAssignedTargetingOptionDetails]
        attr_accessor :content_outstream_position_details
      
        # Representation of a segment of time defined on a specific day of the week and
        # with a start and end time. The time represented by `start_hour` must be before
        # the time represented by `end_hour`.
        # Corresponds to the JSON property `dayAndTimeDetails`
        # @return [Google::Apis::DisplayvideoV1::DayAndTimeAssignedTargetingOptionDetails]
        attr_accessor :day_and_time_details
      
        # Assigned device make and model targeting option details. This will be
        # populated in the device_make_model_details field when targeting_type is `
        # TARGETING_TYPE_DEVICE_MAKE_MODEL`.
        # Corresponds to the JSON property `deviceMakeModelDetails`
        # @return [Google::Apis::DisplayvideoV1::DeviceMakeModelAssignedTargetingOptionDetails]
        attr_accessor :device_make_model_details
      
        # Targeting details for device type. This will be populated in the details field
        # of an AssignedTargetingOption when targeting_type is `
        # TARGETING_TYPE_DEVICE_TYPE`.
        # Corresponds to the JSON property `deviceTypeDetails`
        # @return [Google::Apis::DisplayvideoV1::DeviceTypeAssignedTargetingOptionDetails]
        attr_accessor :device_type_details
      
        # Targeting details for digital content label. This will be populated in the
        # details field of an AssignedTargetingOption when targeting_type is `
        # TARGETING_TYPE_DIGITAL_CONTENT_LABEL_EXCLUSION`.
        # Corresponds to the JSON property `digitalContentLabelExclusionDetails`
        # @return [Google::Apis::DisplayvideoV1::DigitalContentLabelAssignedTargetingOptionDetails]
        attr_accessor :digital_content_label_exclusion_details
      
        # Assigned environment targeting option details. This will be populated in the
        # details field of an AssignedTargetingOption when targeting_type is `
        # TARGETING_TYPE_ENVIRONMENT`.
        # Corresponds to the JSON property `environmentDetails`
        # @return [Google::Apis::DisplayvideoV1::EnvironmentAssignedTargetingOptionDetails]
        attr_accessor :environment_details
      
        # Details for assigned exchange targeting option. This will be populated in the
        # details field of an AssignedTargetingOption when targeting_type is `
        # TARGETING_TYPE_EXCHANGE`.
        # Corresponds to the JSON property `exchangeDetails`
        # @return [Google::Apis::DisplayvideoV1::ExchangeAssignedTargetingOptionDetails]
        attr_accessor :exchange_details
      
        # Details for assigned gender targeting option. This will be populated in the
        # details field of an AssignedTargetingOption when targeting_type is `
        # TARTGETING_TYPE_GENDER`.
        # Corresponds to the JSON property `genderDetails`
        # @return [Google::Apis::DisplayvideoV1::GenderAssignedTargetingOptionDetails]
        attr_accessor :gender_details
      
        # Details for assigned geographic region targeting option. This will be
        # populated in the details field of an AssignedTargetingOption when
        # targeting_type is `TARGETING_TYPE_GEO_REGION`.
        # Corresponds to the JSON property `geoRegionDetails`
        # @return [Google::Apis::DisplayvideoV1::GeoRegionAssignedTargetingOptionDetails]
        attr_accessor :geo_region_details
      
        # Details for assigned household income targeting option. This will be populated
        # in the details field of an AssignedTargetingOption when targeting_type is `
        # TARGETING_TYPE_HOUSEHOLD_INCOME`.
        # Corresponds to the JSON property `householdIncomeDetails`
        # @return [Google::Apis::DisplayvideoV1::HouseholdIncomeAssignedTargetingOptionDetails]
        attr_accessor :household_income_details
      
        # Output only. The inheritance status of the assigned targeting option.
        # Corresponds to the JSON property `inheritance`
        # @return [String]
        attr_accessor :inheritance
      
        # Targeting details for inventory source. This will be populated in the details
        # field of an AssignedTargetingOption when targeting_type is `
        # TARGETING_TYPE_INVENTORY_SOURCE`.
        # Corresponds to the JSON property `inventorySourceDetails`
        # @return [Google::Apis::DisplayvideoV1::InventorySourceAssignedTargetingOptionDetails]
        attr_accessor :inventory_source_details
      
        # Targeting details for inventory source group. This will be populated in the
        # details field of an AssignedTargetingOption when targeting_type is `
        # TARGETING_TYPE_INVENTORY_SOURCE_GROUP`.
        # Corresponds to the JSON property `inventorySourceGroupDetails`
        # @return [Google::Apis::DisplayvideoV1::InventorySourceGroupAssignedTargetingOptionDetails]
        attr_accessor :inventory_source_group_details
      
        # Details for assigned keyword targeting option. This will be populated in the
        # details field of an AssignedTargetingOption when targeting_type is `
        # TARGETING_TYPE_KEYWORD`.
        # Corresponds to the JSON property `keywordDetails`
        # @return [Google::Apis::DisplayvideoV1::KeywordAssignedTargetingOptionDetails]
        attr_accessor :keyword_details
      
        # Details for assigned language targeting option. This will be populated in the
        # details field of an AssignedTargetingOption when targeting_type is `
        # TARGETING_TYPE_LANGUAGE`.
        # Corresponds to the JSON property `languageDetails`
        # @return [Google::Apis::DisplayvideoV1::LanguageAssignedTargetingOptionDetails]
        attr_accessor :language_details
      
        # Output only. The resource name for this assigned targeting option.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Targeting details for negative keyword list. This will be populated in the
        # details field of an AssignedTargetingOption when targeting_type is `
        # TARGETING_TYPE_NEGATIVE_KEYWORD_LIST`.
        # Corresponds to the JSON property `negativeKeywordListDetails`
        # @return [Google::Apis::DisplayvideoV1::NegativeKeywordListAssignedTargetingOptionDetails]
        attr_accessor :negative_keyword_list_details
      
        # On screen position targeting option details. This will be populated in the
        # on_screen_position_details field when targeting_type is `
        # TARGETING_TYPE_ON_SCREEN_POSITION`.
        # Corresponds to the JSON property `onScreenPositionDetails`
        # @return [Google::Apis::DisplayvideoV1::OnScreenPositionAssignedTargetingOptionDetails]
        attr_accessor :on_screen_position_details
      
        # Assigned operating system targeting option details. This will be populated in
        # the operating_system_details field when targeting_type is `
        # TARGETING_TYPE_OPERATING_SYSTEM`.
        # Corresponds to the JSON property `operatingSystemDetails`
        # @return [Google::Apis::DisplayvideoV1::OperatingSystemAssignedTargetingOptionDetails]
        attr_accessor :operating_system_details
      
        # Details for assigned parental status targeting option. This will be populated
        # in the details field of an AssignedTargetingOption when targeting_type is `
        # TARTGETING_TYPE_PARENTAL_STATUS`.
        # Corresponds to the JSON property `parentalStatusDetails`
        # @return [Google::Apis::DisplayvideoV1::ParentalStatusAssignedTargetingOptionDetails]
        attr_accessor :parental_status_details
      
        # Targeting details for proximity location list. This will be populated in the
        # details field of an AssignedTargetingOption when targeting_type is `
        # TARGETING_TYPE_PROXIMITY_LOCATION_LIST`.
        # Corresponds to the JSON property `proximityLocationListDetails`
        # @return [Google::Apis::DisplayvideoV1::ProximityLocationListAssignedTargetingOptionDetails]
        attr_accessor :proximity_location_list_details
      
        # Targeting details for regional location list. This will be populated in the
        # details field of an AssignedTargetingOption when targeting_type is `
        # TARGETING_TYPE_REGIONAL_LOCATION_LIST`.
        # Corresponds to the JSON property `regionalLocationListDetails`
        # @return [Google::Apis::DisplayvideoV1::RegionalLocationListAssignedTargetingOptionDetails]
        attr_accessor :regional_location_list_details
      
        # Targeting details for sensitive category. This will be populated in the
        # details field of an AssignedTargetingOption when targeting_type is `
        # TARGETING_TYPE_SENSITIVE_CATEGORY_EXCLUSION`.
        # Corresponds to the JSON property `sensitiveCategoryExclusionDetails`
        # @return [Google::Apis::DisplayvideoV1::SensitiveCategoryAssignedTargetingOptionDetails]
        attr_accessor :sensitive_category_exclusion_details
      
        # Details for assigned sub-exchange targeting option. This will be populated in
        # the details field of an AssignedTargetingOption when targeting_type is `
        # TARGETING_TYPE_SUB_EXCHANGE`.
        # Corresponds to the JSON property `subExchangeDetails`
        # @return [Google::Apis::DisplayvideoV1::SubExchangeAssignedTargetingOptionDetails]
        attr_accessor :sub_exchange_details
      
        # Output only. Identifies the type of this assigned targeting option.
        # Corresponds to the JSON property `targetingType`
        # @return [String]
        attr_accessor :targeting_type
      
        # Assigned third party verifier targeting option details. This will be populated
        # in the details field of an AssignedTargetingOption when targeting_type is `
        # TARGETING_TYPE_THIRD_PARTY_VERIFIER`.
        # Corresponds to the JSON property `thirdPartyVerifierDetails`
        # @return [Google::Apis::DisplayvideoV1::ThirdPartyVerifierAssignedTargetingOptionDetails]
        attr_accessor :third_party_verifier_details
      
        # Details for assigned URL targeting option. This will be populated in the
        # details field of an AssignedTargetingOption when targeting_type is `
        # TARGETING_TYPE_URL`.
        # Corresponds to the JSON property `urlDetails`
        # @return [Google::Apis::DisplayvideoV1::UrlAssignedTargetingOptionDetails]
        attr_accessor :url_details
      
        # User rewarded content targeting option details. This will be populated in the
        # user_rewarded_content_details field when targeting_type is `
        # TARGETING_TYPE_USER_REWARDED_CONTENT`.
        # Corresponds to the JSON property `userRewardedContentDetails`
        # @return [Google::Apis::DisplayvideoV1::UserRewardedContentAssignedTargetingOptionDetails]
        attr_accessor :user_rewarded_content_details
      
        # Video player size targeting option details. This will be populated in the
        # video_player_size_details field when targeting_type is `
        # TARGETING_TYPE_VIDEO_PLAYER_SIZE`. Explicitly targeting all options is not
        # supported. Remove all video player size targeting options to achieve this
        # effect.
        # Corresponds to the JSON property `videoPlayerSizeDetails`
        # @return [Google::Apis::DisplayvideoV1::VideoPlayerSizeAssignedTargetingOptionDetails]
        attr_accessor :video_player_size_details
      
        # Assigned viewability targeting option details. This will be populated in the
        # viewability_details field of an AssignedTargetingOption when targeting_type is
        # `TARGETING_TYPE_VIEWABILITY`.
        # Corresponds to the JSON property `viewabilityDetails`
        # @return [Google::Apis::DisplayvideoV1::ViewabilityAssignedTargetingOptionDetails]
        attr_accessor :viewability_details
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @age_range_details = args[:age_range_details] if args.key?(:age_range_details)
          @app_category_details = args[:app_category_details] if args.key?(:app_category_details)
          @app_details = args[:app_details] if args.key?(:app_details)
          @assigned_targeting_option_id = args[:assigned_targeting_option_id] if args.key?(:assigned_targeting_option_id)
          @audience_group_details = args[:audience_group_details] if args.key?(:audience_group_details)
          @authorized_seller_status_details = args[:authorized_seller_status_details] if args.key?(:authorized_seller_status_details)
          @browser_details = args[:browser_details] if args.key?(:browser_details)
          @carrier_and_isp_details = args[:carrier_and_isp_details] if args.key?(:carrier_and_isp_details)
          @category_details = args[:category_details] if args.key?(:category_details)
          @channel_details = args[:channel_details] if args.key?(:channel_details)
          @content_instream_position_details = args[:content_instream_position_details] if args.key?(:content_instream_position_details)
          @content_outstream_position_details = args[:content_outstream_position_details] if args.key?(:content_outstream_position_details)
          @day_and_time_details = args[:day_and_time_details] if args.key?(:day_and_time_details)
          @device_make_model_details = args[:device_make_model_details] if args.key?(:device_make_model_details)
          @device_type_details = args[:device_type_details] if args.key?(:device_type_details)
          @digital_content_label_exclusion_details = args[:digital_content_label_exclusion_details] if args.key?(:digital_content_label_exclusion_details)
          @environment_details = args[:environment_details] if args.key?(:environment_details)
          @exchange_details = args[:exchange_details] if args.key?(:exchange_details)
          @gender_details = args[:gender_details] if args.key?(:gender_details)
          @geo_region_details = args[:geo_region_details] if args.key?(:geo_region_details)
          @household_income_details = args[:household_income_details] if args.key?(:household_income_details)
          @inheritance = args[:inheritance] if args.key?(:inheritance)
          @inventory_source_details = args[:inventory_source_details] if args.key?(:inventory_source_details)
          @inventory_source_group_details = args[:inventory_source_group_details] if args.key?(:inventory_source_group_details)
          @keyword_details = args[:keyword_details] if args.key?(:keyword_details)
          @language_details = args[:language_details] if args.key?(:language_details)
          @name = args[:name] if args.key?(:name)
          @negative_keyword_list_details = args[:negative_keyword_list_details] if args.key?(:negative_keyword_list_details)
          @on_screen_position_details = args[:on_screen_position_details] if args.key?(:on_screen_position_details)
          @operating_system_details = args[:operating_system_details] if args.key?(:operating_system_details)
          @parental_status_details = args[:parental_status_details] if args.key?(:parental_status_details)
          @proximity_location_list_details = args[:proximity_location_list_details] if args.key?(:proximity_location_list_details)
          @regional_location_list_details = args[:regional_location_list_details] if args.key?(:regional_location_list_details)
          @sensitive_category_exclusion_details = args[:sensitive_category_exclusion_details] if args.key?(:sensitive_category_exclusion_details)
          @sub_exchange_details = args[:sub_exchange_details] if args.key?(:sub_exchange_details)
          @targeting_type = args[:targeting_type] if args.key?(:targeting_type)
          @third_party_verifier_details = args[:third_party_verifier_details] if args.key?(:third_party_verifier_details)
          @url_details = args[:url_details] if args.key?(:url_details)
          @user_rewarded_content_details = args[:user_rewarded_content_details] if args.key?(:user_rewarded_content_details)
          @video_player_size_details = args[:video_player_size_details] if args.key?(:video_player_size_details)
          @viewability_details = args[:viewability_details] if args.key?(:viewability_details)
        end
      end
      
      # A single assigned user role, which defines a user's authorized interaction
      # with a specified partner or advertiser.
      class AssignedUserRole
        include Google::Apis::Core::Hashable
      
        # The ID of the advertiser that the assigend user role applies to.
        # Corresponds to the JSON property `advertiserId`
        # @return [Fixnum]
        attr_accessor :advertiser_id
      
        # Output only. The ID of the assigned user role.
        # Corresponds to the JSON property `assignedUserRoleId`
        # @return [String]
        attr_accessor :assigned_user_role_id
      
        # The ID of the partner that the assigned user role applies to.
        # Corresponds to the JSON property `partnerId`
        # @return [Fixnum]
        attr_accessor :partner_id
      
        # Required. The user role to assign to a user for the entity.
        # Corresponds to the JSON property `userRole`
        # @return [String]
        attr_accessor :user_role
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @advertiser_id = args[:advertiser_id] if args.key?(:advertiser_id)
          @assigned_user_role_id = args[:assigned_user_role_id] if args.key?(:assigned_user_role_id)
          @partner_id = args[:partner_id] if args.key?(:partner_id)
          @user_role = args[:user_role] if args.key?(:user_role)
        end
      end
      
      # Assigned audience group targeting option details. This will be populated in
      # the details field of an AssignedTargetingOption when targeting_type is `
      # TARGETING_TYPE_AUDIENCE_GROUP`. The relation between each group is UNION,
      # except for excluded_first_and_third_party_audience_group and
      # excluded_google_audience_group, of which COMPLEMENT is UNION'ed with other
      # groups.
      class AudienceGroupAssignedTargetingOptionDetails
        include Google::Apis::Core::Hashable
      
        # Details of first and third party audience group. All first and third party
        # audience targeting settings are logically ‘OR’ of each other.
        # Corresponds to the JSON property `excludedFirstAndThirdPartyAudienceGroup`
        # @return [Google::Apis::DisplayvideoV1::FirstAndThirdPartyAudienceGroup]
        attr_accessor :excluded_first_and_third_party_audience_group
      
        # Details of Google audience group. All Google audience targeting settings are
        # logically ‘OR’ of each other.
        # Corresponds to the JSON property `excludedGoogleAudienceGroup`
        # @return [Google::Apis::DisplayvideoV1::GoogleAudienceGroup]
        attr_accessor :excluded_google_audience_group
      
        # Details of combined audience group. All combined audience targeting settings
        # are logically ‘OR’ of each other.
        # Corresponds to the JSON property `includedCombinedAudienceGroup`
        # @return [Google::Apis::DisplayvideoV1::CombinedAudienceGroup]
        attr_accessor :included_combined_audience_group
      
        # Details of custom list group. All custom list targeting settings are logically
        # ‘OR’ of each other.
        # Corresponds to the JSON property `includedCustomListGroup`
        # @return [Google::Apis::DisplayvideoV1::CustomListGroup]
        attr_accessor :included_custom_list_group
      
        # The first and third party audience ids and recencies of included first and
        # third party audience groups. Each first and third party audience group
        # contains first and third party audience ids only. The relation between each
        # first and third party audience group is INTERSECTION, and the result is UNION'
        # ed with other audience groups. Repeated groups with same settings will be
        # ignored.
        # Corresponds to the JSON property `includedFirstAndThirdPartyAudienceGroups`
        # @return [Array<Google::Apis::DisplayvideoV1::FirstAndThirdPartyAudienceGroup>]
        attr_accessor :included_first_and_third_party_audience_groups
      
        # Details of Google audience group. All Google audience targeting settings are
        # logically ‘OR’ of each other.
        # Corresponds to the JSON property `includedGoogleAudienceGroup`
        # @return [Google::Apis::DisplayvideoV1::GoogleAudienceGroup]
        attr_accessor :included_google_audience_group
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @excluded_first_and_third_party_audience_group = args[:excluded_first_and_third_party_audience_group] if args.key?(:excluded_first_and_third_party_audience_group)
          @excluded_google_audience_group = args[:excluded_google_audience_group] if args.key?(:excluded_google_audience_group)
          @included_combined_audience_group = args[:included_combined_audience_group] if args.key?(:included_combined_audience_group)
          @included_custom_list_group = args[:included_custom_list_group] if args.key?(:included_custom_list_group)
          @included_first_and_third_party_audience_groups = args[:included_first_and_third_party_audience_groups] if args.key?(:included_first_and_third_party_audience_groups)
          @included_google_audience_group = args[:included_google_audience_group] if args.key?(:included_google_audience_group)
        end
      end
      
      # The length an audio or a video has been played.
      class AudioVideoOffset
        include Google::Apis::Core::Hashable
      
        # The offset in percentage of the audio or video duration.
        # Corresponds to the JSON property `percentage`
        # @return [Fixnum]
        attr_accessor :percentage
      
        # The offset in seconds from the start of the audio or video.
        # Corresponds to the JSON property `seconds`
        # @return [Fixnum]
        attr_accessor :seconds
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @percentage = args[:percentage] if args.key?(:percentage)
          @seconds = args[:seconds] if args.key?(:seconds)
        end
      end
      
      # Response message for AdvertiserService.AuditAdvertiser.
      class AuditAdvertiserResponse
        include Google::Apis::Core::Hashable
      
        # The number of individual targeting options from the following targeting types
        # that are assigned to a line item under this advertiser. These individual
        # targeting options count towards the limit of 4500000 ad group targeting
        # options per advertiser. Qualifying Targeting types: * Channels, URLs, apps,
        # and collections * Demographic * Google Audiences, including Affinity, Custom
        # Affinity, and In-market audiences * Inventory source * Keyword * Mobile app
        # category * User lists * Video targeting * Viewability
        # Corresponds to the JSON property `adGroupCriteriaCount`
        # @return [Fixnum]
        attr_accessor :ad_group_criteria_count
      
        # The number of individual targeting options from the following targeting types
        # that are assigned to a line item under this advertiser. These individual
        # targeting options count towards the limit of 900000 campaign targeting options
        # per advertiser. Qualifying Targeting types: * Position * Browser * Connection
        # speed * Day and time * Device and operating system * Digital content label *
        # Sensitive categories * Environment * Geography, including business chains and
        # proximity * ISP * Language * Third-party verification
        # Corresponds to the JSON property `campaignCriteriaCount`
        # @return [Fixnum]
        attr_accessor :campaign_criteria_count
      
        # The number of channels created under this advertiser. These channels count
        # towards the limit of 1000 channels per advertiser.
        # Corresponds to the JSON property `channelsCount`
        # @return [Fixnum]
        attr_accessor :channels_count
      
        # The number of negative keyword lists created under this advertiser. These
        # negative keyword lists count towards the limit of 20 negative keyword lists
        # per advertiser.
        # Corresponds to the JSON property `negativeKeywordListsCount`
        # @return [Fixnum]
        attr_accessor :negative_keyword_lists_count
      
        # The number of negatively targeted channels created under this advertiser.
        # These negatively targeted channels count towards the limit of 5 negatively
        # targeted channels per advertiser.
        # Corresponds to the JSON property `negativelyTargetedChannelsCount`
        # @return [Fixnum]
        attr_accessor :negatively_targeted_channels_count
      
        # The number of ACTIVE and PAUSED campaigns under this advertiser. These
        # campaigns count towards the limit of 9999 campaigns per advertiser.
        # Corresponds to the JSON property `usedCampaignsCount`
        # @return [Fixnum]
        attr_accessor :used_campaigns_count
      
        # The number of ACTIVE, PAUSED and DRAFT insertion orders under this advertiser.
        # These insertion orders count towards the limit of 9999 insertion orders per
        # advertiser.
        # Corresponds to the JSON property `usedInsertionOrdersCount`
        # @return [Fixnum]
        attr_accessor :used_insertion_orders_count
      
        # The number of ACTIVE, PAUSED, and DRAFT line items under this advertiser.
        # These line items count towards the limit of 9999 line items per advertiser.
        # Corresponds to the JSON property `usedLineItemsCount`
        # @return [Fixnum]
        attr_accessor :used_line_items_count
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @ad_group_criteria_count = args[:ad_group_criteria_count] if args.key?(:ad_group_criteria_count)
          @campaign_criteria_count = args[:campaign_criteria_count] if args.key?(:campaign_criteria_count)
          @channels_count = args[:channels_count] if args.key?(:channels_count)
          @negative_keyword_lists_count = args[:negative_keyword_lists_count] if args.key?(:negative_keyword_lists_count)
          @negatively_targeted_channels_count = args[:negatively_targeted_channels_count] if args.key?(:negatively_targeted_channels_count)
          @used_campaigns_count = args[:used_campaigns_count] if args.key?(:used_campaigns_count)
          @used_insertion_orders_count = args[:used_insertion_orders_count] if args.key?(:used_insertion_orders_count)
          @used_line_items_count = args[:used_line_items_count] if args.key?(:used_line_items_count)
        end
      end
      
      # Represents an assigned authorized seller status. This will be populated in the
      # details field of an AssignedTargetingOption when targeting_type is `
      # TARGETING_TYPE_AUTHORIZED_SELLER_STATUS`.
      class AuthorizedSellerStatusAssignedTargetingOptionDetails
        include Google::Apis::Core::Hashable
      
        # Output only. The authorized seller status to target.
        # Corresponds to the JSON property `authorizedSellerStatus`
        # @return [String]
        attr_accessor :authorized_seller_status
      
        # Required. The targeting_option_id of a TargetingOption of type `
        # TARGETING_TYPE_AUTHORIZED_SELLER_STATUS`.
        # Corresponds to the JSON property `targetingOptionId`
        # @return [String]
        attr_accessor :targeting_option_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @authorized_seller_status = args[:authorized_seller_status] if args.key?(:authorized_seller_status)
          @targeting_option_id = args[:targeting_option_id] if args.key?(:targeting_option_id)
        end
      end
      
      # Represents a targetable authorized seller status. This will be populated in
      # the authorized_seller_status_details field when targeting_type is `
      # TARGETING_TYPE_AUTHORIZED_SELLER_STATUS`.
      class AuthorizedSellerStatusTargetingOptionDetails
        include Google::Apis::Core::Hashable
      
        # Output only. The authorized seller status.
        # Corresponds to the JSON property `authorizedSellerStatus`
        # @return [String]
        attr_accessor :authorized_seller_status
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @authorized_seller_status = args[:authorized_seller_status] if args.key?(:authorized_seller_status)
        end
      end
      
      # Settings that control the bid strategy. Bid strategy determines the bid price.
      class BiddingStrategy
        include Google::Apis::Core::Hashable
      
        # A strategy that uses a fixed bidding price.
        # Corresponds to the JSON property `fixedBid`
        # @return [Google::Apis::DisplayvideoV1::FixedBidStrategy]
        attr_accessor :fixed_bid
      
        # A strategy that automatically adjusts the bid to optimize a specified
        # performance goal while spending the full budget.
        # Corresponds to the JSON property `maximizeSpendAutoBid`
        # @return [Google::Apis::DisplayvideoV1::MaximizeSpendBidStrategy]
        attr_accessor :maximize_spend_auto_bid
      
        # A strategy that automatically adjusts the bid to meet or beat a specified
        # performance goal.
        # Corresponds to the JSON property `performanceGoalAutoBid`
        # @return [Google::Apis::DisplayvideoV1::PerformanceGoalBidStrategy]
        attr_accessor :performance_goal_auto_bid
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @fixed_bid = args[:fixed_bid] if args.key?(:fixed_bid)
          @maximize_spend_auto_bid = args[:maximize_spend_auto_bid] if args.key?(:maximize_spend_auto_bid)
          @performance_goal_auto_bid = args[:performance_goal_auto_bid] if args.key?(:performance_goal_auto_bid)
        end
      end
      
      # Details for assigned browser targeting option. This will be populated in the
      # details field of an AssignedTargetingOption when targeting_type is `
      # TARGETING_TYPE_BROWSER`.
      class BrowserAssignedTargetingOptionDetails
        include Google::Apis::Core::Hashable
      
        # Output only. The display name of the browser.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # Indicates if this option is being negatively targeted. All assigned browser
        # targeting options on the same line item must have the same value for this
        # field.
        # Corresponds to the JSON property `negative`
        # @return [Boolean]
        attr_accessor :negative
        alias_method :negative?, :negative
      
        # Required. The targeting_option_id of a TargetingOption of type `
        # TARGETING_TYPE_BROWSER`.
        # Corresponds to the JSON property `targetingOptionId`
        # @return [String]
        attr_accessor :targeting_option_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @display_name = args[:display_name] if args.key?(:display_name)
          @negative = args[:negative] if args.key?(:negative)
          @targeting_option_id = args[:targeting_option_id] if args.key?(:targeting_option_id)
        end
      end
      
      # Represents a targetable browser. This will be populated in the browser_details
      # field when targeting_type is `TARGETING_TYPE_BROWSER`.
      class BrowserTargetingOptionDetails
        include Google::Apis::Core::Hashable
      
        # Output only. The display name of the browser.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @display_name = args[:display_name] if args.key?(:display_name)
        end
      end
      
      # Request message for BulkEditAdvertiserAssignedTargetingOptions.
      class BulkEditAdvertiserAssignedTargetingOptionsRequest
        include Google::Apis::Core::Hashable
      
        # The assigned targeting options to create in batch, specified as a list of `
        # CreateAssignedTargetingOptionsRequest`.
        # Corresponds to the JSON property `createRequests`
        # @return [Array<Google::Apis::DisplayvideoV1::CreateAssignedTargetingOptionsRequest>]
        attr_accessor :create_requests
      
        # The assigned targeting options to delete in batch, specified as a list of `
        # DeleteAssignedTargetingOptionsRequest`.
        # Corresponds to the JSON property `deleteRequests`
        # @return [Array<Google::Apis::DisplayvideoV1::DeleteAssignedTargetingOptionsRequest>]
        attr_accessor :delete_requests
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @create_requests = args[:create_requests] if args.key?(:create_requests)
          @delete_requests = args[:delete_requests] if args.key?(:delete_requests)
        end
      end
      
      # 
      class BulkEditAdvertiserAssignedTargetingOptionsResponse
        include Google::Apis::Core::Hashable
      
        # The list of assigned targeting options that have been successfully created.
        # This list will be absent if empty.
        # Corresponds to the JSON property `createdAssignedTargetingOptions`
        # @return [Array<Google::Apis::DisplayvideoV1::AssignedTargetingOption>]
        attr_accessor :created_assigned_targeting_options
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @created_assigned_targeting_options = args[:created_assigned_targeting_options] if args.key?(:created_assigned_targeting_options)
        end
      end
      
      # Request message for AssignedInventorySourceService.BulkEdit.
      class BulkEditAssignedInventorySourcesRequest
        include Google::Apis::Core::Hashable
      
        # The ID of the advertiser that owns the parent inventory source group. The
        # parent partner does not have access to these assigned inventory sources.
        # Corresponds to the JSON property `advertiserId`
        # @return [Fixnum]
        attr_accessor :advertiser_id
      
        # The assigned inventory sources to create in bulk, specified as a list of
        # AssignedInventorySources.
        # Corresponds to the JSON property `createdAssignedInventorySources`
        # @return [Array<Google::Apis::DisplayvideoV1::AssignedInventorySource>]
        attr_accessor :created_assigned_inventory_sources
      
        # The IDs of the assigned inventory sources to delete in bulk, specified as a
        # list of assigned_inventory_source_ids.
        # Corresponds to the JSON property `deletedAssignedInventorySources`
        # @return [Array<Fixnum>]
        attr_accessor :deleted_assigned_inventory_sources
      
        # The ID of the partner that owns the inventory source group. Only this partner
        # has write access to these assigned inventory sources.
        # Corresponds to the JSON property `partnerId`
        # @return [Fixnum]
        attr_accessor :partner_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @advertiser_id = args[:advertiser_id] if args.key?(:advertiser_id)
          @created_assigned_inventory_sources = args[:created_assigned_inventory_sources] if args.key?(:created_assigned_inventory_sources)
          @deleted_assigned_inventory_sources = args[:deleted_assigned_inventory_sources] if args.key?(:deleted_assigned_inventory_sources)
          @partner_id = args[:partner_id] if args.key?(:partner_id)
        end
      end
      
      # Response message for AssignedInventorySourceService.BulkEdit.
      class BulkEditAssignedInventorySourcesResponse
        include Google::Apis::Core::Hashable
      
        # The list of assigned inventory sources that have been successfully created.
        # This list will be absent if empty.
        # Corresponds to the JSON property `assignedInventorySources`
        # @return [Array<Google::Apis::DisplayvideoV1::AssignedInventorySource>]
        attr_accessor :assigned_inventory_sources
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @assigned_inventory_sources = args[:assigned_inventory_sources] if args.key?(:assigned_inventory_sources)
        end
      end
      
      # Request message for AssignedLocationService.BulkEditAssignedLocations.
      class BulkEditAssignedLocationsRequest
        include Google::Apis::Core::Hashable
      
        # The assigned locations to create in bulk, specified as a list of
        # AssignedLocations.
        # Corresponds to the JSON property `createdAssignedLocations`
        # @return [Array<Google::Apis::DisplayvideoV1::AssignedLocation>]
        attr_accessor :created_assigned_locations
      
        # The IDs of the assigned locations to delete in bulk, specified as a list of
        # assigned_location_ids.
        # Corresponds to the JSON property `deletedAssignedLocations`
        # @return [Array<Fixnum>]
        attr_accessor :deleted_assigned_locations
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @created_assigned_locations = args[:created_assigned_locations] if args.key?(:created_assigned_locations)
          @deleted_assigned_locations = args[:deleted_assigned_locations] if args.key?(:deleted_assigned_locations)
        end
      end
      
      # Response message for AssignedLocationService.BulkEditAssignedLocations.
      class BulkEditAssignedLocationsResponse
        include Google::Apis::Core::Hashable
      
        # The list of assigned locations that have been successfully created. This list
        # will be absent if empty.
        # Corresponds to the JSON property `assignedLocations`
        # @return [Array<Google::Apis::DisplayvideoV1::AssignedLocation>]
        attr_accessor :assigned_locations
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @assigned_locations = args[:assigned_locations] if args.key?(:assigned_locations)
        end
      end
      
      # Request message for BulkEditAssignedUserRoles.
      class BulkEditAssignedUserRolesRequest
        include Google::Apis::Core::Hashable
      
        # The assigned user roles to create in batch, specified as a list of
        # AssignedUserRoles.
        # Corresponds to the JSON property `createdAssignedUserRoles`
        # @return [Array<Google::Apis::DisplayvideoV1::AssignedUserRole>]
        attr_accessor :created_assigned_user_roles
      
        # The assigned user roles to delete in batch, specified as a list of
        # assigned_user_role_ids. The format of assigned_user_role_id is `entityType-
        # entityid`, for example `partner-123`.
        # Corresponds to the JSON property `deletedAssignedUserRoles`
        # @return [Array<String>]
        attr_accessor :deleted_assigned_user_roles
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @created_assigned_user_roles = args[:created_assigned_user_roles] if args.key?(:created_assigned_user_roles)
          @deleted_assigned_user_roles = args[:deleted_assigned_user_roles] if args.key?(:deleted_assigned_user_roles)
        end
      end
      
      # 
      class BulkEditAssignedUserRolesResponse
        include Google::Apis::Core::Hashable
      
        # The list of assigned user roles that have been successfully created. This list
        # will be absent if empty.
        # Corresponds to the JSON property `createdAssignedUserRoles`
        # @return [Array<Google::Apis::DisplayvideoV1::AssignedUserRole>]
        attr_accessor :created_assigned_user_roles
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @created_assigned_user_roles = args[:created_assigned_user_roles] if args.key?(:created_assigned_user_roles)
        end
      end
      
      # Request message for BulkEditLineItemAssignedTargetingOptions.
      class BulkEditLineItemAssignedTargetingOptionsRequest
        include Google::Apis::Core::Hashable
      
        # The assigned targeting options to create in batch, specified as a list of `
        # CreateAssignedTargetingOptionsRequest`.
        # Corresponds to the JSON property `createRequests`
        # @return [Array<Google::Apis::DisplayvideoV1::CreateAssignedTargetingOptionsRequest>]
        attr_accessor :create_requests
      
        # The assigned targeting options to delete in batch, specified as a list of `
        # DeleteAssignedTargetingOptionsRequest`.
        # Corresponds to the JSON property `deleteRequests`
        # @return [Array<Google::Apis::DisplayvideoV1::DeleteAssignedTargetingOptionsRequest>]
        attr_accessor :delete_requests
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @create_requests = args[:create_requests] if args.key?(:create_requests)
          @delete_requests = args[:delete_requests] if args.key?(:delete_requests)
        end
      end
      
      # 
      class BulkEditLineItemAssignedTargetingOptionsResponse
        include Google::Apis::Core::Hashable
      
        # The list of assigned targeting options that have been successfully created.
        # This list will be absent if empty.
        # Corresponds to the JSON property `createdAssignedTargetingOptions`
        # @return [Array<Google::Apis::DisplayvideoV1::AssignedTargetingOption>]
        attr_accessor :created_assigned_targeting_options
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @created_assigned_targeting_options = args[:created_assigned_targeting_options] if args.key?(:created_assigned_targeting_options)
        end
      end
      
      # Request message for NegativeKeywordService.BulkEditNegativeKeywords.
      class BulkEditNegativeKeywordsRequest
        include Google::Apis::Core::Hashable
      
        # The negative keywords to create in batch, specified as a list of
        # NegativeKeywords.
        # Corresponds to the JSON property `createdNegativeKeywords`
        # @return [Array<Google::Apis::DisplayvideoV1::NegativeKeyword>]
        attr_accessor :created_negative_keywords
      
        # The negative keywords to delete in batch, specified as a list of
        # keyword_values.
        # Corresponds to the JSON property `deletedNegativeKeywords`
        # @return [Array<String>]
        attr_accessor :deleted_negative_keywords
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @created_negative_keywords = args[:created_negative_keywords] if args.key?(:created_negative_keywords)
          @deleted_negative_keywords = args[:deleted_negative_keywords] if args.key?(:deleted_negative_keywords)
        end
      end
      
      # Response message for NegativeKeywordService.BulkEditNegativeKeywords.
      class BulkEditNegativeKeywordsResponse
        include Google::Apis::Core::Hashable
      
        # The list of negative keywords that have been successfully created. This list
        # will be absent if empty.
        # Corresponds to the JSON property `negativeKeywords`
        # @return [Array<Google::Apis::DisplayvideoV1::NegativeKeyword>]
        attr_accessor :negative_keywords
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @negative_keywords = args[:negative_keywords] if args.key?(:negative_keywords)
        end
      end
      
      # Request message for BulkEditPartnerAssignedTargetingOptions.
      class BulkEditPartnerAssignedTargetingOptionsRequest
        include Google::Apis::Core::Hashable
      
        # The assigned targeting options to create in batch, specified as a list of `
        # CreateAssignedTargetingOptionsRequest`. Supported targeting types: * `
        # TARGETING_TYPE_CHANNEL`
        # Corresponds to the JSON property `createRequests`
        # @return [Array<Google::Apis::DisplayvideoV1::CreateAssignedTargetingOptionsRequest>]
        attr_accessor :create_requests
      
        # The assigned targeting options to delete in batch, specified as a list of `
        # DeleteAssignedTargetingOptionsRequest`. Supported targeting types: * `
        # TARGETING_TYPE_CHANNEL`
        # Corresponds to the JSON property `deleteRequests`
        # @return [Array<Google::Apis::DisplayvideoV1::DeleteAssignedTargetingOptionsRequest>]
        attr_accessor :delete_requests
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @create_requests = args[:create_requests] if args.key?(:create_requests)
          @delete_requests = args[:delete_requests] if args.key?(:delete_requests)
        end
      end
      
      # 
      class BulkEditPartnerAssignedTargetingOptionsResponse
        include Google::Apis::Core::Hashable
      
        # The list of assigned targeting options that have been successfully created.
        # This list will be absent if empty.
        # Corresponds to the JSON property `createdAssignedTargetingOptions`
        # @return [Array<Google::Apis::DisplayvideoV1::AssignedTargetingOption>]
        attr_accessor :created_assigned_targeting_options
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @created_assigned_targeting_options = args[:created_assigned_targeting_options] if args.key?(:created_assigned_targeting_options)
        end
      end
      
      # Request message for SiteService.BulkEditSites.
      class BulkEditSitesRequest
        include Google::Apis::Core::Hashable
      
        # The ID of the advertiser that owns the parent channel.
        # Corresponds to the JSON property `advertiserId`
        # @return [Fixnum]
        attr_accessor :advertiser_id
      
        # The sites to create in batch, specified as a list of Sites.
        # Corresponds to the JSON property `createdSites`
        # @return [Array<Google::Apis::DisplayvideoV1::Site>]
        attr_accessor :created_sites
      
        # The sites to delete in batch, specified as a list of site url_or_app_ids.
        # Corresponds to the JSON property `deletedSites`
        # @return [Array<String>]
        attr_accessor :deleted_sites
      
        # The ID of the partner that owns the parent channel.
        # Corresponds to the JSON property `partnerId`
        # @return [Fixnum]
        attr_accessor :partner_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @advertiser_id = args[:advertiser_id] if args.key?(:advertiser_id)
          @created_sites = args[:created_sites] if args.key?(:created_sites)
          @deleted_sites = args[:deleted_sites] if args.key?(:deleted_sites)
          @partner_id = args[:partner_id] if args.key?(:partner_id)
        end
      end
      
      # Response message for SiteService.BulkEditSites.
      class BulkEditSitesResponse
        include Google::Apis::Core::Hashable
      
        # The list of sites that have been successfully created. This list will be
        # absent if empty.
        # Corresponds to the JSON property `sites`
        # @return [Array<Google::Apis::DisplayvideoV1::Site>]
        attr_accessor :sites
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @sites = args[:sites] if args.key?(:sites)
        end
      end
      
      # 
      class BulkListAdvertiserAssignedTargetingOptionsResponse
        include Google::Apis::Core::Hashable
      
        # The list of assigned targeting options. This list will be absent if empty.
        # Corresponds to the JSON property `assignedTargetingOptions`
        # @return [Array<Google::Apis::DisplayvideoV1::AssignedTargetingOption>]
        attr_accessor :assigned_targeting_options
      
        # A token identifying the next page of results. This value should be specified
        # as the pageToken in a subsequent
        # BulkListAdvertiserAssignedTargetingOptionsRequest to fetch the next page of
        # results. This token will be absent if there are no more
        # assigned_targeting_options to return.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @assigned_targeting_options = args[:assigned_targeting_options] if args.key?(:assigned_targeting_options)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # 
      class BulkListLineItemAssignedTargetingOptionsResponse
        include Google::Apis::Core::Hashable
      
        # The list of assigned targeting options. This list will be absent if empty.
        # Corresponds to the JSON property `assignedTargetingOptions`
        # @return [Array<Google::Apis::DisplayvideoV1::AssignedTargetingOption>]
        attr_accessor :assigned_targeting_options
      
        # A token identifying the next page of results. This value should be specified
        # as the pageToken in a subsequent
        # BulkListLineItemAssignedTargetingOptionsRequest to fetch the next page of
        # results. This token will be absent if there are no more
        # assigned_targeting_options to return.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @assigned_targeting_options = args[:assigned_targeting_options] if args.key?(:assigned_targeting_options)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # A single campaign.
      class Campaign
        include Google::Apis::Core::Hashable
      
        # Output only. The unique ID of the advertiser the campaign belongs to.
        # Corresponds to the JSON property `advertiserId`
        # @return [Fixnum]
        attr_accessor :advertiser_id
      
        # Settings that track the planned spend and duration of a campaign.
        # Corresponds to the JSON property `campaignFlight`
        # @return [Google::Apis::DisplayvideoV1::CampaignFlight]
        attr_accessor :campaign_flight
      
        # Settings that control the goal of a campaign.
        # Corresponds to the JSON property `campaignGoal`
        # @return [Google::Apis::DisplayvideoV1::CampaignGoal]
        attr_accessor :campaign_goal
      
        # Output only. The unique ID of the campaign. Assigned by the system.
        # Corresponds to the JSON property `campaignId`
        # @return [Fixnum]
        attr_accessor :campaign_id
      
        # Required. The display name of the campaign. Must be UTF-8 encoded with a
        # maximum size of 240 bytes.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # Required. Controls whether or not the insertion orders under this campaign can
        # spend their budgets and bid on inventory. * Accepted values are `
        # ENTITY_STATUS_ACTIVE`, `ENTITY_STATUS_ARCHIVED`, and `ENTITY_STATUS_PAUSED`. *
        # For CreateCampaign method, `ENTITY_STATUS_ARCHIVED` is not allowed.
        # Corresponds to the JSON property `entityStatus`
        # @return [String]
        attr_accessor :entity_status
      
        # Settings that control the number of times a user may be shown with the same ad
        # during a given time period.
        # Corresponds to the JSON property `frequencyCap`
        # @return [Google::Apis::DisplayvideoV1::FrequencyCap]
        attr_accessor :frequency_cap
      
        # Output only. The resource name of the campaign.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Output only. The timestamp when the campaign was last updated. Assigned by the
        # system.
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @advertiser_id = args[:advertiser_id] if args.key?(:advertiser_id)
          @campaign_flight = args[:campaign_flight] if args.key?(:campaign_flight)
          @campaign_goal = args[:campaign_goal] if args.key?(:campaign_goal)
          @campaign_id = args[:campaign_id] if args.key?(:campaign_id)
          @display_name = args[:display_name] if args.key?(:display_name)
          @entity_status = args[:entity_status] if args.key?(:entity_status)
          @frequency_cap = args[:frequency_cap] if args.key?(:frequency_cap)
          @name = args[:name] if args.key?(:name)
          @update_time = args[:update_time] if args.key?(:update_time)
        end
      end
      
      # Settings that track the planned spend and duration of a campaign.
      class CampaignFlight
        include Google::Apis::Core::Hashable
      
        # A date range.
        # Corresponds to the JSON property `plannedDates`
        # @return [Google::Apis::DisplayvideoV1::DateRange]
        attr_accessor :planned_dates
      
        # The amount the campaign is expected to spend for its given planned_dates. This
        # will not limit serving, but will be used for tracking spend in the DV360 UI.
        # The amount is in micros. Must be greater than or equal to 0. For example,
        # 500000000 represents 500 standard units of the currency.
        # Corresponds to the JSON property `plannedSpendAmountMicros`
        # @return [Fixnum]
        attr_accessor :planned_spend_amount_micros
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @planned_dates = args[:planned_dates] if args.key?(:planned_dates)
          @planned_spend_amount_micros = args[:planned_spend_amount_micros] if args.key?(:planned_spend_amount_micros)
        end
      end
      
      # Settings that control the goal of a campaign.
      class CampaignGoal
        include Google::Apis::Core::Hashable
      
        # Required. The type of the campaign goal.
        # Corresponds to the JSON property `campaignGoalType`
        # @return [String]
        attr_accessor :campaign_goal_type
      
        # Settings that control the performance goal of a campaign or insertion order.
        # Corresponds to the JSON property `performanceGoal`
        # @return [Google::Apis::DisplayvideoV1::PerformanceGoal]
        attr_accessor :performance_goal
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @campaign_goal_type = args[:campaign_goal_type] if args.key?(:campaign_goal_type)
          @performance_goal = args[:performance_goal] if args.key?(:performance_goal)
        end
      end
      
      # Details for assigned carrier and ISP targeting option. This will be populated
      # in the details field of an AssignedTargetingOption when targeting_type is `
      # TARGETING_TYPE_CARRIER_AND_ISP`.
      class CarrierAndIspAssignedTargetingOptionDetails
        include Google::Apis::Core::Hashable
      
        # Output only. The display name of the carrier or ISP.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # Indicates if this option is being negatively targeted. All assigned carrier
        # and ISP targeting options on the same line item must have the same value for
        # this field.
        # Corresponds to the JSON property `negative`
        # @return [Boolean]
        attr_accessor :negative
        alias_method :negative?, :negative
      
        # Required. The targeting_option_id of a TargetingOption of type `
        # TARGETING_TYPE_CARRIER_AND_ISP`.
        # Corresponds to the JSON property `targetingOptionId`
        # @return [String]
        attr_accessor :targeting_option_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @display_name = args[:display_name] if args.key?(:display_name)
          @negative = args[:negative] if args.key?(:negative)
          @targeting_option_id = args[:targeting_option_id] if args.key?(:targeting_option_id)
        end
      end
      
      # Represents a targetable carrier or ISP. This will be populated in the
      # carrier_and_isp_details field of a TargetingOption when targeting_type is `
      # TARGETING_TYPE_CARRIER_AND_ISP`.
      class CarrierAndIspTargetingOptionDetails
        include Google::Apis::Core::Hashable
      
        # Output only. The display name of the carrier or ISP.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # Output only. The type indicating if it's carrier or ISP.
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @display_name = args[:display_name] if args.key?(:display_name)
          @type = args[:type] if args.key?(:type)
        end
      end
      
      # Assigned category targeting option details. This will be populated in the
      # category_details field when targeting_type is `TARGETING_TYPE_CATEGORY`.
      class CategoryAssignedTargetingOptionDetails
        include Google::Apis::Core::Hashable
      
        # Output only. The display name of the category.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # Indicates if this option is being negatively targeted.
        # Corresponds to the JSON property `negative`
        # @return [Boolean]
        attr_accessor :negative
        alias_method :negative?, :negative
      
        # Required. The targeting_option_id field when targeting_type is `
        # TARGETING_TYPE_CATEGORY`.
        # Corresponds to the JSON property `targetingOptionId`
        # @return [String]
        attr_accessor :targeting_option_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @display_name = args[:display_name] if args.key?(:display_name)
          @negative = args[:negative] if args.key?(:negative)
          @targeting_option_id = args[:targeting_option_id] if args.key?(:targeting_option_id)
        end
      end
      
      # Represents a targetable category. This will be populated in the
      # category_details field of a TargetingOption when targeting_type is `
      # TARGETING_TYPE_CATEGORY`.
      class CategoryTargetingOptionDetails
        include Google::Apis::Core::Hashable
      
        # Output only. The display name of the category.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @display_name = args[:display_name] if args.key?(:display_name)
        end
      end
      
      # A single channel. Channels are custom groups of related websites and apps.
      class Channel
        include Google::Apis::Core::Hashable
      
        # The ID of the advertiser that owns the channel.
        # Corresponds to the JSON property `advertiserId`
        # @return [Fixnum]
        attr_accessor :advertiser_id
      
        # Output only. The unique ID of the channel. Assigned by the system.
        # Corresponds to the JSON property `channelId`
        # @return [Fixnum]
        attr_accessor :channel_id
      
        # Required. The display name of the channel. Must be UTF-8 encoded with a
        # maximum length of 240 bytes.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # Output only. The resource name of the channel.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # The ID of the partner that owns the channel.
        # Corresponds to the JSON property `partnerId`
        # @return [Fixnum]
        attr_accessor :partner_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @advertiser_id = args[:advertiser_id] if args.key?(:advertiser_id)
          @channel_id = args[:channel_id] if args.key?(:channel_id)
          @display_name = args[:display_name] if args.key?(:display_name)
          @name = args[:name] if args.key?(:name)
          @partner_id = args[:partner_id] if args.key?(:partner_id)
        end
      end
      
      # Details for assigned channel targeting option. This will be populated in the
      # details field of an AssignedTargetingOption when targeting_type is `
      # TARGETING_TYPE_CHANNEL`.
      class ChannelAssignedTargetingOptionDetails
        include Google::Apis::Core::Hashable
      
        # Required. ID of the channel. Should refer to the channel ID field on a [
        # Partner-owned channel](partners.channels#Channel.FIELDS.channel_id) or [
        # advertiser-owned channel](advertisers.channels#Channel.FIELDS.channel_id)
        # resource.
        # Corresponds to the JSON property `channelId`
        # @return [Fixnum]
        attr_accessor :channel_id
      
        # Indicates if this option is being negatively targeted. For advertiser level
        # assigned targeting option, this field must be true.
        # Corresponds to the JSON property `negative`
        # @return [Boolean]
        attr_accessor :negative
        alias_method :negative?, :negative
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @channel_id = args[:channel_id] if args.key?(:channel_id)
          @negative = args[:negative] if args.key?(:negative)
        end
      end
      
      # Settings for advertisers that use both Campaign Manager 360 (CM360) and third-
      # party ad servers.
      class CmHybridConfig
        include Google::Apis::Core::Hashable
      
        # Required. Immutable. Account ID of the CM360 Floodlight configuration linked
        # with the DV360 advertiser.
        # Corresponds to the JSON property `cmAccountId`
        # @return [Fixnum]
        attr_accessor :cm_account_id
      
        # Required. Immutable. ID of the CM360 Floodlight configuration linked with the
        # DV360 advertiser.
        # Corresponds to the JSON property `cmFloodlightConfigId`
        # @return [Fixnum]
        attr_accessor :cm_floodlight_config_id
      
        # Required. Immutable. By setting this field to `true`, you, on behalf of your
        # company, authorize the sharing of information from the given Floodlight
        # configuration to this Display & Video 360 advertiser.
        # Corresponds to the JSON property `cmFloodlightLinkingAuthorized`
        # @return [Boolean]
        attr_accessor :cm_floodlight_linking_authorized
        alias_method :cm_floodlight_linking_authorized?, :cm_floodlight_linking_authorized
      
        # A list of CM360 sites whose placements will be synced to DV360 as creatives.
        # If absent or empty in CreateAdvertiser method, the system will automatically
        # create a CM360 site. Removing sites from this list may cause DV360 creatives
        # synced from CM360 to be deleted. At least one site must be specified.
        # Corresponds to the JSON property `cmSyncableSiteIds`
        # @return [Array<Fixnum>]
        attr_accessor :cm_syncable_site_ids
      
        # Whether or not to report DV360 cost to CM360.
        # Corresponds to the JSON property `dv360ToCmCostReportingEnabled`
        # @return [Boolean]
        attr_accessor :dv360_to_cm_cost_reporting_enabled
        alias_method :dv360_to_cm_cost_reporting_enabled?, :dv360_to_cm_cost_reporting_enabled
      
        # Whether or not to include DV360 data in CM360 data transfer reports.
        # Corresponds to the JSON property `dv360ToCmDataSharingEnabled`
        # @return [Boolean]
        attr_accessor :dv360_to_cm_data_sharing_enabled
        alias_method :dv360_to_cm_data_sharing_enabled?, :dv360_to_cm_data_sharing_enabled
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @cm_account_id = args[:cm_account_id] if args.key?(:cm_account_id)
          @cm_floodlight_config_id = args[:cm_floodlight_config_id] if args.key?(:cm_floodlight_config_id)
          @cm_floodlight_linking_authorized = args[:cm_floodlight_linking_authorized] if args.key?(:cm_floodlight_linking_authorized)
          @cm_syncable_site_ids = args[:cm_syncable_site_ids] if args.key?(:cm_syncable_site_ids)
          @dv360_to_cm_cost_reporting_enabled = args[:dv360_to_cm_cost_reporting_enabled] if args.key?(:dv360_to_cm_cost_reporting_enabled)
          @dv360_to_cm_data_sharing_enabled = args[:dv360_to_cm_data_sharing_enabled] if args.key?(:dv360_to_cm_data_sharing_enabled)
        end
      end
      
      # A Campaign Manager 360 tracking ad.
      class CmTrackingAd
        include Google::Apis::Core::Hashable
      
        # The ad ID of the campaign manager 360 tracking Ad.
        # Corresponds to the JSON property `cmAdId`
        # @return [Fixnum]
        attr_accessor :cm_ad_id
      
        # The creative ID of the campaign manager 360 tracking Ad.
        # Corresponds to the JSON property `cmCreativeId`
        # @return [Fixnum]
        attr_accessor :cm_creative_id
      
        # The placement ID of the campaign manager 360 tracking Ad.
        # Corresponds to the JSON property `cmPlacementId`
        # @return [Fixnum]
        attr_accessor :cm_placement_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @cm_ad_id = args[:cm_ad_id] if args.key?(:cm_ad_id)
          @cm_creative_id = args[:cm_creative_id] if args.key?(:cm_creative_id)
          @cm_placement_id = args[:cm_placement_id] if args.key?(:cm_placement_id)
        end
      end
      
      # Describes a combined audience resource.
      class CombinedAudience
        include Google::Apis::Core::Hashable
      
        # Output only. The unique ID of the combined audience. Assigned by the system.
        # Corresponds to the JSON property `combinedAudienceId`
        # @return [Fixnum]
        attr_accessor :combined_audience_id
      
        # Output only. The display name of the combined audience. .
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # Output only. The resource name of the combined audience.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @combined_audience_id = args[:combined_audience_id] if args.key?(:combined_audience_id)
          @display_name = args[:display_name] if args.key?(:display_name)
          @name = args[:name] if args.key?(:name)
        end
      end
      
      # Details of combined audience group. All combined audience targeting settings
      # are logically ‘OR’ of each other.
      class CombinedAudienceGroup
        include Google::Apis::Core::Hashable
      
        # Required. All combined audience targeting settings in combined audience group.
        # Repeated settings with same id will be ignored. The number of combined
        # audience settings should be no more than five, error will be thrown otherwise.
        # Corresponds to the JSON property `settings`
        # @return [Array<Google::Apis::DisplayvideoV1::CombinedAudienceTargetingSetting>]
        attr_accessor :settings
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @settings = args[:settings] if args.key?(:settings)
        end
      end
      
      # Details of combined audience targeting setting.
      class CombinedAudienceTargetingSetting
        include Google::Apis::Core::Hashable
      
        # Required. Combined audience id of combined audience targeting setting. This id
        # is combined_audience_id.
        # Corresponds to the JSON property `combinedAudienceId`
        # @return [Fixnum]
        attr_accessor :combined_audience_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @combined_audience_id = args[:combined_audience_id] if args.key?(:combined_audience_id)
        end
      end
      
      # Assigned content instream position targeting option details. This will be
      # populated in the content_instream_position_details field when targeting_type
      # is `TARGETING_TYPE_CONTENT_INSTREAM_POSITION`.
      class ContentInstreamPositionAssignedTargetingOptionDetails
        include Google::Apis::Core::Hashable
      
        # Output only. The content instream position for video or audio ads.
        # Corresponds to the JSON property `contentInstreamPosition`
        # @return [String]
        attr_accessor :content_instream_position
      
        # Required. The targeting_option_id field when targeting_type is `
        # TARGETING_TYPE_CONTENT_INSTREAM_POSITION`.
        # Corresponds to the JSON property `targetingOptionId`
        # @return [String]
        attr_accessor :targeting_option_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @content_instream_position = args[:content_instream_position] if args.key?(:content_instream_position)
          @targeting_option_id = args[:targeting_option_id] if args.key?(:targeting_option_id)
        end
      end
      
      # Represents a targetable content instream position, which could be used by
      # video and audio ads. This will be populated in the
      # content_instream_position_details field when targeting_type is `
      # TARGETING_TYPE_CONTENT_INSTREAM_POSITION`.
      class ContentInstreamPositionTargetingOptionDetails
        include Google::Apis::Core::Hashable
      
        # Output only. The content instream position.
        # Corresponds to the JSON property `contentInstreamPosition`
        # @return [String]
        attr_accessor :content_instream_position
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @content_instream_position = args[:content_instream_position] if args.key?(:content_instream_position)
        end
      end
      
      # Assigned content outstream position targeting option details. This will be
      # populated in the content_outstream_position_details field when targeting_type
      # is `TARGETING_TYPE_CONTENT_OUTSTREAM_POSITION`.
      class ContentOutstreamPositionAssignedTargetingOptionDetails
        include Google::Apis::Core::Hashable
      
        # Output only. The content outstream position.
        # Corresponds to the JSON property `contentOutstreamPosition`
        # @return [String]
        attr_accessor :content_outstream_position
      
        # Required. The targeting_option_id field when targeting_type is `
        # TARGETING_TYPE_CONTENT_OUTSTREAM_POSITION`.
        # Corresponds to the JSON property `targetingOptionId`
        # @return [String]
        attr_accessor :targeting_option_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @content_outstream_position = args[:content_outstream_position] if args.key?(:content_outstream_position)
          @targeting_option_id = args[:targeting_option_id] if args.key?(:targeting_option_id)
        end
      end
      
      # Represents a targetable content outstream position, which could be used by
      # display and video ads. This will be populated in the
      # content_outstream_position_details field when targeting_type is `
      # TARGETING_TYPE_CONTENT_OUTSTREAM_POSITION`.
      class ContentOutstreamPositionTargetingOptionDetails
        include Google::Apis::Core::Hashable
      
        # Output only. The content outstream position.
        # Corresponds to the JSON property `contentOutstreamPosition`
        # @return [String]
        attr_accessor :content_outstream_position
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @content_outstream_position = args[:content_outstream_position] if args.key?(:content_outstream_position)
        end
      end
      
      # Settings that control how conversions are counted. All post-click conversions
      # will be counted. A percentage value can be set for post-view conversions
      # counting.
      class ConversionCountingConfig
        include Google::Apis::Core::Hashable
      
        # The Floodlight activity configs used to track conversions. The number of
        # conversions counted is the sum of all of the conversions counted by all of the
        # Floodlight activity IDs specified in this field.
        # Corresponds to the JSON property `floodlightActivityConfigs`
        # @return [Array<Google::Apis::DisplayvideoV1::TrackingFloodlightActivityConfig>]
        attr_accessor :floodlight_activity_configs
      
        # The percentage of post-view conversions to count, in millis (1/1000 of a
        # percent). Must be between 0 and 100000 inclusive. For example, to track 50% of
        # the post-click conversions, set a value of 50000.
        # Corresponds to the JSON property `postViewCountPercentageMillis`
        # @return [Fixnum]
        attr_accessor :post_view_count_percentage_millis
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @floodlight_activity_configs = args[:floodlight_activity_configs] if args.key?(:floodlight_activity_configs)
          @post_view_count_percentage_millis = args[:post_view_count_percentage_millis] if args.key?(:post_view_count_percentage_millis)
        end
      end
      
      # Counter event of the creative.
      class CounterEvent
        include Google::Apis::Core::Hashable
      
        # Required. The name of the counter event.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Required. The name used to identify this counter event in reports.
        # Corresponds to the JSON property `reportingName`
        # @return [String]
        attr_accessor :reporting_name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @name = args[:name] if args.key?(:name)
          @reporting_name = args[:reporting_name] if args.key?(:reporting_name)
        end
      end
      
      # A request message for CreateAsset.
      class CreateAssetRequest
        include Google::Apis::Core::Hashable
      
        # Required. The filename of the asset, including the file extension. The
        # filename must be UTF-8 encoded with a maximum size of 240 bytes.
        # Corresponds to the JSON property `filename`
        # @return [String]
        attr_accessor :filename
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @filename = args[:filename] if args.key?(:filename)
        end
      end
      
      # A response message for CreateAsset.
      class CreateAssetResponse
        include Google::Apis::Core::Hashable
      
        # A single asset.
        # Corresponds to the JSON property `asset`
        # @return [Google::Apis::DisplayvideoV1::Asset]
        attr_accessor :asset
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @asset = args[:asset] if args.key?(:asset)
        end
      end
      
      # A request listing which assigned targeting options of a given targeting type
      # should be created and added.
      class CreateAssignedTargetingOptionsRequest
        include Google::Apis::Core::Hashable
      
        # Required. The assigned targeting options to create and add.
        # Corresponds to the JSON property `assignedTargetingOptions`
        # @return [Array<Google::Apis::DisplayvideoV1::AssignedTargetingOption>]
        attr_accessor :assigned_targeting_options
      
        # Required. Identifies the type of this assigned targeting option.
        # Corresponds to the JSON property `targetingType`
        # @return [String]
        attr_accessor :targeting_type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @assigned_targeting_options = args[:assigned_targeting_options] if args.key?(:assigned_targeting_options)
          @targeting_type = args[:targeting_type] if args.key?(:targeting_type)
        end
      end
      
      # Request message for [SdfDownloadTaskService.CreateSdfDownloadTask].
      class CreateSdfDownloadTaskRequest
        include Google::Apis::Core::Hashable
      
        # The ID of the advertiser to download SDF for.
        # Corresponds to the JSON property `advertiserId`
        # @return [Fixnum]
        attr_accessor :advertiser_id
      
        # A filtering option that filters entities by their entity IDs.
        # Corresponds to the JSON property `idFilter`
        # @return [Google::Apis::DisplayvideoV1::IdFilter]
        attr_accessor :id_filter
      
        # A filtering option for filtering on Inventory Source entities.
        # Corresponds to the JSON property `inventorySourceFilter`
        # @return [Google::Apis::DisplayvideoV1::InventorySourceFilter]
        attr_accessor :inventory_source_filter
      
        # A filtering option that filters on selected file types belonging to a chosen
        # set of filter entities.
        # Corresponds to the JSON property `parentEntityFilter`
        # @return [Google::Apis::DisplayvideoV1::ParentEntityFilter]
        attr_accessor :parent_entity_filter
      
        # The ID of the partner to download SDF for.
        # Corresponds to the JSON property `partnerId`
        # @return [Fixnum]
        attr_accessor :partner_id
      
        # Required. The SDF version of the downloaded file. If set to `
        # SDF_VERSION_UNSPECIFIED`, this will default to the version specified by the
        # advertiser or partner identified by `root_id`. An advertiser inherits its SDF
        # version from its partner unless configured otherwise.
        # Corresponds to the JSON property `version`
        # @return [String]
        attr_accessor :version
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @advertiser_id = args[:advertiser_id] if args.key?(:advertiser_id)
          @id_filter = args[:id_filter] if args.key?(:id_filter)
          @inventory_source_filter = args[:inventory_source_filter] if args.key?(:inventory_source_filter)
          @parent_entity_filter = args[:parent_entity_filter] if args.key?(:parent_entity_filter)
          @partner_id = args[:partner_id] if args.key?(:partner_id)
          @version = args[:version] if args.key?(:version)
        end
      end
      
      # A single Creative.
      class Creative
        include Google::Apis::Core::Hashable
      
        # Additional dimensions. Applicable when creative_type is one of: * `
        # CREATIVE_TYPE_STANDARD` * `CREATIVE_TYPE_EXPANDABLE` * `CREATIVE_TYPE_NATIVE` *
        # `CREATIVE_TYPE_TEMPLATED_APP_INSTALL` * `CREATIVE_TYPE_NATIVE_SITE_SQUARE` * `
        # CREATIVE_TYPE_LIGHTBOX` * `CREATIVE_TYPE_NATIVE_APP_INSTALL` * `
        # CREATIVE_TYPE_NATIVE_APP_INSTALL_SQUARE` * `CREATIVE_TYPE_PUBLISHER_HOSTED` If
        # this field is specified, width_pixels and height_pixels are both required and
        # must be greater than or equal to 0.
        # Corresponds to the JSON property `additionalDimensions`
        # @return [Array<Google::Apis::DisplayvideoV1::Dimensions>]
        attr_accessor :additional_dimensions
      
        # Output only. The unique ID of the advertiser the creative belongs to.
        # Corresponds to the JSON property `advertiserId`
        # @return [Fixnum]
        attr_accessor :advertiser_id
      
        # Third-party HTML tracking tag to be appended to the creative tag.
        # Corresponds to the JSON property `appendedTag`
        # @return [String]
        attr_accessor :appended_tag
      
        # Required. Assets associated to this creative. Assets can be associated to the
        # creative in one of following roles: * `ASSET_ROLE_UNSPECIFIED` * `
        # ASSET_ROLE_MAIN` * `ASSET_ROLE_BACKUP` * `ASSET_ROLE_POLITE_LOAD`
        # Corresponds to the JSON property `assets`
        # @return [Array<Google::Apis::DisplayvideoV1::AssetAssociation>]
        attr_accessor :assets
      
        # Output only. The unique ID of the Campaign Manager 360 placement associated
        # with the creative. This field is only applicable for creatives that are synced
        # from Campaign Manager.
        # Corresponds to the JSON property `cmPlacementId`
        # @return [Fixnum]
        attr_accessor :cm_placement_id
      
        # A Campaign Manager 360 tracking ad.
        # Corresponds to the JSON property `cmTrackingAd`
        # @return [Google::Apis::DisplayvideoV1::CmTrackingAd]
        attr_accessor :cm_tracking_ad
      
        # The IDs of companion creatives for a video creative. You can assign existing
        # display creatives (with image or HTML5 assets) to serve surrounding the
        # publisher's video player. Companions display around the video player while the
        # video is playing and remain after the video has completed. Creatives contain
        # additional dimensions can not be companion creatives. This field is only
        # supported for following creative_type: * `CREATIVE_TYPE_AUDIO` * `
        # CREATIVE_TYPE_VIDEO`
        # Corresponds to the JSON property `companionCreativeIds`
        # @return [Array<Fixnum>]
        attr_accessor :companion_creative_ids
      
        # Counter events for a rich media creative. Counters track the number of times
        # that a user interacts with any part of a rich media creative in a specified
        # way (mouse-overs, mouse-outs, clicks, taps, data loading, keyboard entries,
        # etc.). Any event that can be captured in the creative can be recorded as a
        # counter. Leave it empty or unset for creatives containing image assets only.
        # Corresponds to the JSON property `counterEvents`
        # @return [Array<Google::Apis::DisplayvideoV1::CounterEvent>]
        attr_accessor :counter_events
      
        # Output only. The timestamp when the creative was created. Assigned by the
        # system.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Output only. A list of attributes of the creative that is generated by the
        # system.
        # Corresponds to the JSON property `creativeAttributes`
        # @return [Array<String>]
        attr_accessor :creative_attributes
      
        # Output only. The unique ID of the creative. Assigned by the system.
        # Corresponds to the JSON property `creativeId`
        # @return [Fixnum]
        attr_accessor :creative_id
      
        # Required. Immutable. The type of the creative.
        # Corresponds to the JSON property `creativeType`
        # @return [String]
        attr_accessor :creative_type
      
        # Dimensions.
        # Corresponds to the JSON property `dimensions`
        # @return [Google::Apis::DisplayvideoV1::Dimensions]
        attr_accessor :dimensions
      
        # Required. The display name of the creative. Must be UTF-8 encoded with a
        # maximum size of 240 bytes.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # Output only. Indicates whether the creative is dynamic.
        # Corresponds to the JSON property `dynamic`
        # @return [Boolean]
        attr_accessor :dynamic
        alias_method :dynamic?, :dynamic
      
        # Required. Controls whether or not the creative can serve. Accepted values are:
        # * `ENTITY_STATUS_ACTIVE` * `ENTITY_STATUS_ARCHIVED` * `ENTITY_STATUS_PAUSED`
        # Corresponds to the JSON property `entityStatus`
        # @return [String]
        attr_accessor :entity_status
      
        # Required. Exit events for this creative. An exit (also known as a click tag)
        # is any area in your creative that someone can click or tap to open an
        # advertiser's landing page. Every creative must include at least one exit. You
        # can add an exit to your creative in any of the following ways: * Use Google
        # Web Designer's tap area. * Define a JavaScript variable called "clickTag". *
        # Use the Enabler (Enabler.exit()) to track exits in rich media formats.
        # Corresponds to the JSON property `exitEvents`
        # @return [Array<Google::Apis::DisplayvideoV1::ExitEvent>]
        attr_accessor :exit_events
      
        # Optional. Indicates the creative will automatically expand on hover. Optional
        # and only valid for third-party expandable creatives. Third-party expandable
        # creatives are creatives with following hosting source: * `
        # HOSTING_SOURCE_THIRD_PARTY` combined with following creative_type: * `
        # CREATIVE_TYPE_EXPANDABLE`
        # Corresponds to the JSON property `expandOnHover`
        # @return [Boolean]
        attr_accessor :expand_on_hover
        alias_method :expand_on_hover?, :expand_on_hover
      
        # Optional. Specifies the expanding direction of the creative. Required and only
        # valid for third-party expandable creatives. Third-party expandable creatives
        # are creatives with following hosting source: * `HOSTING_SOURCE_THIRD_PARTY`
        # combined with following creative_type: * `CREATIVE_TYPE_EXPANDABLE`
        # Corresponds to the JSON property `expandingDirection`
        # @return [String]
        attr_accessor :expanding_direction
      
        # Required. Indicates where the creative is hosted.
        # Corresponds to the JSON property `hostingSource`
        # @return [String]
        attr_accessor :hosting_source
      
        # Output only. Indicates the third-party VAST tag creative requires HTML5 Video
        # support. Output only and only valid for third-party VAST tag creatives. Third-
        # party VAST tag creatives are creatives with following hosting_source: * `
        # HOSTING_SOURCE_THIRD_PARTY` combined with following creative_type: * `
        # CREATIVE_TYPE_VIDEO`
        # Corresponds to the JSON property `html5Video`
        # @return [Boolean]
        attr_accessor :html5_video
        alias_method :html5_video?, :html5_video
      
        # Indicates whether Integral Ad Science (IAS) campaign monitoring is enabled. To
        # enable this for the creative, make sure the Advertiser.creative_config.
        # ias_client_id has been set to your IAS client ID.
        # Corresponds to the JSON property `iasCampaignMonitoring`
        # @return [Boolean]
        attr_accessor :ias_campaign_monitoring
        alias_method :ias_campaign_monitoring?, :ias_campaign_monitoring
      
        # ID information used to link this creative to an external system. Must be UTF-8
        # encoded with a length of no more than 10,000 characters.
        # Corresponds to the JSON property `integrationCode`
        # @return [String]
        attr_accessor :integration_code
      
        # JavaScript measurement URL from supported third-party verification providers (
        # ComScore, DoubleVerify, IAS, Moat). HTML script tags are not supported. This
        # field is only supported in following creative_type: * `CREATIVE_TYPE_NATIVE` *
        # `CREATIVE_TYPE_NATIVE_SITE_SQUARE` * `CREATIVE_TYPE_NATIVE_APP_INSTALL` * `
        # CREATIVE_TYPE_NATIVE_APP_INSTALL_SQUARE` * `CREATIVE_TYPE_NATIVE_VIDEO`
        # Corresponds to the JSON property `jsTrackerUrl`
        # @return [String]
        attr_accessor :js_tracker_url
      
        # Output only. The IDs of the line items this creative is associated with. To
        # associate a creative to a line item, use LineItem.creative_ids instead.
        # Corresponds to the JSON property `lineItemIds`
        # @return [Array<Fixnum>]
        attr_accessor :line_item_ids
      
        # Output only. Media duration of the creative. Applicable when creative_type is
        # one of: * `CREATIVE_TYPE_VIDEO` * `CREATIVE_TYPE_AUDIO` * `
        # CREATIVE_TYPE_NATIVE_VIDEO` * `CREATIVE_TYPE_PUBLISHER_HOSTED`
        # Corresponds to the JSON property `mediaDuration`
        # @return [String]
        attr_accessor :media_duration
      
        # Output only. The resource name of the creative.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # User notes for this creative. Must be UTF-8 encoded with a length of no more
        # than 20,000 characters.
        # Corresponds to the JSON property `notes`
        # @return [String]
        attr_accessor :notes
      
        # OBA Icon for a Creative
        # Corresponds to the JSON property `obaIcon`
        # @return [Google::Apis::DisplayvideoV1::ObaIcon]
        attr_accessor :oba_icon
      
        # The length an audio or a video has been played.
        # Corresponds to the JSON property `progressOffset`
        # @return [Google::Apis::DisplayvideoV1::AudioVideoOffset]
        attr_accessor :progress_offset
      
        # Optional. Indicates that the creative relies on HTML5 to render properly.
        # Optional and only valid for third-party tag creatives. Third-party tag
        # creatives are creatives with following hosting_source: * `
        # HOSTING_SOURCE_THIRD_PARTY` combined with following creative_type: * `
        # CREATIVE_TYPE_STANDARD` * `CREATIVE_TYPE_EXPANDABLE`
        # Corresponds to the JSON property `requireHtml5`
        # @return [Boolean]
        attr_accessor :require_html5
        alias_method :require_html5?, :require_html5
      
        # Optional. Indicates that the creative requires MRAID (Mobile Rich Media Ad
        # Interface Definitions system). Set this if the creative relies on mobile
        # gestures for interactivity, such as swiping or tapping. Optional and only
        # valid for third-party tag creatives. Third-party tag creatives are creatives
        # with following hosting_source: * `HOSTING_SOURCE_THIRD_PARTY` combined with
        # following creative_type: * `CREATIVE_TYPE_STANDARD` * `
        # CREATIVE_TYPE_EXPANDABLE`
        # Corresponds to the JSON property `requireMraid`
        # @return [Boolean]
        attr_accessor :require_mraid
        alias_method :require_mraid?, :require_mraid
      
        # Optional. Indicates that the creative will wait for a return ping for
        # attribution. Only valid when using a Campaign Manager 360 tracking ad with a
        # third-party ad server parameter and the $`DC_DBM_TOKEN` macro. Optional and
        # only valid for third-party tag creatives or third-party VAST tag creatives.
        # Third-party tag creatives are creatives with following hosting_source: * `
        # HOSTING_SOURCE_THIRD_PARTY` combined with following creative_type: * `
        # CREATIVE_TYPE_STANDARD` * `CREATIVE_TYPE_EXPANDABLE` Third-party VAST tag
        # creatives are creatives with following hosting_source: * `
        # HOSTING_SOURCE_THIRD_PARTY` combined with following creative_type: * `
        # CREATIVE_TYPE_VIDEO`
        # Corresponds to the JSON property `requirePingForAttribution`
        # @return [Boolean]
        attr_accessor :require_ping_for_attribution
        alias_method :require_ping_for_attribution?, :require_ping_for_attribution
      
        # Review statuses for the creative.
        # Corresponds to the JSON property `reviewStatus`
        # @return [Google::Apis::DisplayvideoV1::ReviewStatusInfo]
        attr_accessor :review_status
      
        # The length an audio or a video has been played.
        # Corresponds to the JSON property `skipOffset`
        # @return [Google::Apis::DisplayvideoV1::AudioVideoOffset]
        attr_accessor :skip_offset
      
        # Whether the user can choose to skip a video creative. This field is only
        # supported for the following creative_type: * `CREATIVE_TYPE_VIDEO`
        # Corresponds to the JSON property `skippable`
        # @return [Boolean]
        attr_accessor :skippable
        alias_method :skippable?, :skippable
      
        # Optional. The original third-party tag used for the creative. Required and
        # only valid for third-party tag creatives. Third-party tag creatives are
        # creatives with following hosting_source: * `HOSTING_SOURCE_THIRD_PARTY`
        # combined with following creative_type: * `CREATIVE_TYPE_STANDARD` * `
        # CREATIVE_TYPE_EXPANDABLE`
        # Corresponds to the JSON property `thirdPartyTag`
        # @return [String]
        attr_accessor :third_party_tag
      
        # Tracking URLs from third parties to track interactions with a video creative.
        # This field is only supported for the following creative_type: * `
        # CREATIVE_TYPE_AUDIO` * `CREATIVE_TYPE_VIDEO` * `CREATIVE_TYPE_NATIVE_VIDEO`
        # Corresponds to the JSON property `thirdPartyUrls`
        # @return [Array<Google::Apis::DisplayvideoV1::ThirdPartyUrl>]
        attr_accessor :third_party_urls
      
        # Timer custom events for a rich media creative. Timers track the time during
        # which a user views and interacts with a specified part of a rich media
        # creative. A creative can have multiple timer events, each timed independently.
        # Leave it empty or unset for creatives containing image assets only.
        # Corresponds to the JSON property `timerEvents`
        # @return [Array<Google::Apis::DisplayvideoV1::TimerEvent>]
        attr_accessor :timer_events
      
        # Tracking URLs for analytics providers or third-party ad technology vendors.
        # The URLs must start with https (except on inventory that doesn't require SSL
        # compliance). If using macros in your URL, use only macros supported by Display
        # & Video 360. Standard URLs only, no IMG or SCRIPT tags. This field is only
        # supported in following creative_type: * `CREATIVE_TYPE_NATIVE` * `
        # CREATIVE_TYPE_NATIVE_SITE_SQUARE` * `CREATIVE_TYPE_NATIVE_APP_INSTALL` * `
        # CREATIVE_TYPE_NATIVE_APP_INSTALL_SQUARE` * `CREATIVE_TYPE_NATIVE_VIDEO`
        # Corresponds to the JSON property `trackerUrls`
        # @return [Array<String>]
        attr_accessor :tracker_urls
      
        # Output only. Audio/Video transcodes. Display & Video 360 transcodes the main
        # asset into a number of alternative versions that use different file formats or
        # have different properties (resolution, audio bit rate, and video bit rate),
        # each designed for specific video players or bandwidths. These transcodes give
        # a publisher's system more options to choose from for each impression on your
        # video and ensures that the appropriate file serves based on the viewer’s
        # connection and screen size. This field is only supported in following
        # creative_type: * `CREATIVE_TYPE_VIDEO` * `CREATIVE_TYPE_NATIVE_VIDEO` * `
        # CREATIVE_TYPE_AUDIO`
        # Corresponds to the JSON property `transcodes`
        # @return [Array<Google::Apis::DisplayvideoV1::Transcode>]
        attr_accessor :transcodes
      
        # A creative identifier provided by a registry that is unique across all
        # platforms. This is part of the VAST 4.0 standard.
        # Corresponds to the JSON property `universalAdId`
        # @return [Google::Apis::DisplayvideoV1::UniversalAdId]
        attr_accessor :universal_ad_id
      
        # Output only. The timestamp when the creative was last updated. Assigned by the
        # system.
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        # Optional. The URL of the VAST tag for a third-party VAST tag creative.
        # Required and only valid for third-party VAST tag creatives. Third-party VAST
        # tag creatives are creatives with following hosting_source: * `
        # HOSTING_SOURCE_THIRD_PARTY` combined with following creative_type: * `
        # CREATIVE_TYPE_VIDEO`
        # Corresponds to the JSON property `vastTagUrl`
        # @return [String]
        attr_accessor :vast_tag_url
      
        # Output only. Indicates the third-party VAST tag creative requires VPAID (
        # Digital Video Player-Ad Interface). Output only and only valid for third-party
        # VAST tag creatives. Third-party VAST tag creatives are creatives with
        # following hosting_source: * `HOSTING_SOURCE_THIRD_PARTY` combined with
        # following creative_type: * `CREATIVE_TYPE_VIDEO`
        # Corresponds to the JSON property `vpaid`
        # @return [Boolean]
        attr_accessor :vpaid
        alias_method :vpaid?, :vpaid
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @additional_dimensions = args[:additional_dimensions] if args.key?(:additional_dimensions)
          @advertiser_id = args[:advertiser_id] if args.key?(:advertiser_id)
          @appended_tag = args[:appended_tag] if args.key?(:appended_tag)
          @assets = args[:assets] if args.key?(:assets)
          @cm_placement_id = args[:cm_placement_id] if args.key?(:cm_placement_id)
          @cm_tracking_ad = args[:cm_tracking_ad] if args.key?(:cm_tracking_ad)
          @companion_creative_ids = args[:companion_creative_ids] if args.key?(:companion_creative_ids)
          @counter_events = args[:counter_events] if args.key?(:counter_events)
          @create_time = args[:create_time] if args.key?(:create_time)
          @creative_attributes = args[:creative_attributes] if args.key?(:creative_attributes)
          @creative_id = args[:creative_id] if args.key?(:creative_id)
          @creative_type = args[:creative_type] if args.key?(:creative_type)
          @dimensions = args[:dimensions] if args.key?(:dimensions)
          @display_name = args[:display_name] if args.key?(:display_name)
          @dynamic = args[:dynamic] if args.key?(:dynamic)
          @entity_status = args[:entity_status] if args.key?(:entity_status)
          @exit_events = args[:exit_events] if args.key?(:exit_events)
          @expand_on_hover = args[:expand_on_hover] if args.key?(:expand_on_hover)
          @expanding_direction = args[:expanding_direction] if args.key?(:expanding_direction)
          @hosting_source = args[:hosting_source] if args.key?(:hosting_source)
          @html5_video = args[:html5_video] if args.key?(:html5_video)
          @ias_campaign_monitoring = args[:ias_campaign_monitoring] if args.key?(:ias_campaign_monitoring)
          @integration_code = args[:integration_code] if args.key?(:integration_code)
          @js_tracker_url = args[:js_tracker_url] if args.key?(:js_tracker_url)
          @line_item_ids = args[:line_item_ids] if args.key?(:line_item_ids)
          @media_duration = args[:media_duration] if args.key?(:media_duration)
          @name = args[:name] if args.key?(:name)
          @notes = args[:notes] if args.key?(:notes)
          @oba_icon = args[:oba_icon] if args.key?(:oba_icon)
          @progress_offset = args[:progress_offset] if args.key?(:progress_offset)
          @require_html5 = args[:require_html5] if args.key?(:require_html5)
          @require_mraid = args[:require_mraid] if args.key?(:require_mraid)
          @require_ping_for_attribution = args[:require_ping_for_attribution] if args.key?(:require_ping_for_attribution)
          @review_status = args[:review_status] if args.key?(:review_status)
          @skip_offset = args[:skip_offset] if args.key?(:skip_offset)
          @skippable = args[:skippable] if args.key?(:skippable)
          @third_party_tag = args[:third_party_tag] if args.key?(:third_party_tag)
          @third_party_urls = args[:third_party_urls] if args.key?(:third_party_urls)
          @timer_events = args[:timer_events] if args.key?(:timer_events)
          @tracker_urls = args[:tracker_urls] if args.key?(:tracker_urls)
          @transcodes = args[:transcodes] if args.key?(:transcodes)
          @universal_ad_id = args[:universal_ad_id] if args.key?(:universal_ad_id)
          @update_time = args[:update_time] if args.key?(:update_time)
          @vast_tag_url = args[:vast_tag_url] if args.key?(:vast_tag_url)
          @vpaid = args[:vpaid] if args.key?(:vpaid)
        end
      end
      
      # Creative requirements configuration for the inventory source.
      class CreativeConfig
        include Google::Apis::Core::Hashable
      
        # The type of creative that can be assigned to the inventory source.
        # Corresponds to the JSON property `creativeType`
        # @return [String]
        attr_accessor :creative_type
      
        # The configuration for display creatives.
        # Corresponds to the JSON property `displayCreativeConfig`
        # @return [Google::Apis::DisplayvideoV1::InventorySourceDisplayCreativeConfig]
        attr_accessor :display_creative_config
      
        # The configuration for video creatives.
        # Corresponds to the JSON property `videoCreativeConfig`
        # @return [Google::Apis::DisplayvideoV1::InventorySourceVideoCreativeConfig]
        attr_accessor :video_creative_config
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @creative_type = args[:creative_type] if args.key?(:creative_type)
          @display_creative_config = args[:display_creative_config] if args.key?(:display_creative_config)
          @video_creative_config = args[:video_creative_config] if args.key?(:video_creative_config)
        end
      end
      
      # A single custom bidding algorithm.
      class CustomBiddingAlgorithm
        include Google::Apis::Core::Hashable
      
        # Immutable. The unique ID of the advertiser that owns the custom bidding
        # algorithm.
        # Corresponds to the JSON property `advertiserId`
        # @return [Fixnum]
        attr_accessor :advertiser_id
      
        # Output only. The unique ID of the custom bidding algorithm. Assigned by the
        # system.
        # Corresponds to the JSON property `customBiddingAlgorithmId`
        # @return [Fixnum]
        attr_accessor :custom_bidding_algorithm_id
      
        # Required. Immutable. The type of custom bidding algorithm.
        # Corresponds to the JSON property `customBiddingAlgorithmType`
        # @return [String]
        attr_accessor :custom_bidding_algorithm_type
      
        # Required. The display name of the custom bidding algorithm. Must be UTF-8
        # encoded with a maximum size of 240 bytes.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # Controls whether or not the custom bidding algorithm can be used as a bidding
        # strategy. Accepted values are: * `ENTITY_STATUS_ACTIVE` * `
        # ENTITY_STATUS_ARCHIVED`
        # Corresponds to the JSON property `entityStatus`
        # @return [String]
        attr_accessor :entity_status
      
        # Output only. The resource name of the custom bidding algorithm.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Immutable. The unique ID of the partner that owns the custom bidding algorithm.
        # Corresponds to the JSON property `partnerId`
        # @return [Fixnum]
        attr_accessor :partner_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @advertiser_id = args[:advertiser_id] if args.key?(:advertiser_id)
          @custom_bidding_algorithm_id = args[:custom_bidding_algorithm_id] if args.key?(:custom_bidding_algorithm_id)
          @custom_bidding_algorithm_type = args[:custom_bidding_algorithm_type] if args.key?(:custom_bidding_algorithm_type)
          @display_name = args[:display_name] if args.key?(:display_name)
          @entity_status = args[:entity_status] if args.key?(:entity_status)
          @name = args[:name] if args.key?(:name)
          @partner_id = args[:partner_id] if args.key?(:partner_id)
        end
      end
      
      # Describes a custom list entity, such as a custom affinity or custom intent
      # audience list.
      class CustomList
        include Google::Apis::Core::Hashable
      
        # Output only. The unique ID of the custom list. Assigned by the system.
        # Corresponds to the JSON property `customListId`
        # @return [Fixnum]
        attr_accessor :custom_list_id
      
        # Output only. The display name of the custom list. .
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # Output only. The resource name of the custom list.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @custom_list_id = args[:custom_list_id] if args.key?(:custom_list_id)
          @display_name = args[:display_name] if args.key?(:display_name)
          @name = args[:name] if args.key?(:name)
        end
      end
      
      # Details of custom list group. All custom list targeting settings are logically
      # ‘OR’ of each other.
      class CustomListGroup
        include Google::Apis::Core::Hashable
      
        # Required. All custom list targeting settings in custom list group. Repeated
        # settings with same id will be ignored.
        # Corresponds to the JSON property `settings`
        # @return [Array<Google::Apis::DisplayvideoV1::CustomListTargetingSetting>]
        attr_accessor :settings
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @settings = args[:settings] if args.key?(:settings)
        end
      end
      
      # Details of custom list targeting setting.
      class CustomListTargetingSetting
        include Google::Apis::Core::Hashable
      
        # Required. Custom id of custom list targeting setting. This id is
        # custom_list_id.
        # Corresponds to the JSON property `customListId`
        # @return [Fixnum]
        attr_accessor :custom_list_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @custom_list_id = args[:custom_list_id] if args.key?(:custom_list_id)
        end
      end
      
      # Represents a whole or partial calendar date, such as a birthday. The time of
      # day and time zone are either specified elsewhere or are insignificant. The
      # date is relative to the Gregorian Calendar. This can represent one of the
      # following: * A full date, with non-zero year, month, and day values * A month
      # and day value, with a zero year, such as an anniversary * A year on its own,
      # with zero month and day values * A year and month value, with a zero day, such
      # as a credit card expiration date Related types are google.type.TimeOfDay and `
      # google.protobuf.Timestamp`.
      class Date
        include Google::Apis::Core::Hashable
      
        # Day of a month. Must be from 1 to 31 and valid for the year and month, or 0 to
        # specify a year by itself or a year and month where the day isn't significant.
        # Corresponds to the JSON property `day`
        # @return [Fixnum]
        attr_accessor :day
      
        # Month of a year. Must be from 1 to 12, or 0 to specify a year without a month
        # and day.
        # Corresponds to the JSON property `month`
        # @return [Fixnum]
        attr_accessor :month
      
        # Year of the date. Must be from 1 to 9999, or 0 to specify a date without a
        # year.
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
      
      # A date range.
      class DateRange
        include Google::Apis::Core::Hashable
      
        # Represents a whole or partial calendar date, such as a birthday. The time of
        # day and time zone are either specified elsewhere or are insignificant. The
        # date is relative to the Gregorian Calendar. This can represent one of the
        # following: * A full date, with non-zero year, month, and day values * A month
        # and day value, with a zero year, such as an anniversary * A year on its own,
        # with zero month and day values * A year and month value, with a zero day, such
        # as a credit card expiration date Related types are google.type.TimeOfDay and `
        # google.protobuf.Timestamp`.
        # Corresponds to the JSON property `endDate`
        # @return [Google::Apis::DisplayvideoV1::Date]
        attr_accessor :end_date
      
        # Represents a whole or partial calendar date, such as a birthday. The time of
        # day and time zone are either specified elsewhere or are insignificant. The
        # date is relative to the Gregorian Calendar. This can represent one of the
        # following: * A full date, with non-zero year, month, and day values * A month
        # and day value, with a zero year, such as an anniversary * A year on its own,
        # with zero month and day values * A year and month value, with a zero day, such
        # as a credit card expiration date Related types are google.type.TimeOfDay and `
        # google.protobuf.Timestamp`.
        # Corresponds to the JSON property `startDate`
        # @return [Google::Apis::DisplayvideoV1::Date]
        attr_accessor :start_date
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @end_date = args[:end_date] if args.key?(:end_date)
          @start_date = args[:start_date] if args.key?(:start_date)
        end
      end
      
      # Representation of a segment of time defined on a specific day of the week and
      # with a start and end time. The time represented by `start_hour` must be before
      # the time represented by `end_hour`.
      class DayAndTimeAssignedTargetingOptionDetails
        include Google::Apis::Core::Hashable
      
        # Required. The day of the week for this day and time targeting setting.
        # Corresponds to the JSON property `dayOfWeek`
        # @return [String]
        attr_accessor :day_of_week
      
        # Required. The end hour for day and time targeting. Must be between 1 (1 hour
        # after start of day) and 24 (end of day).
        # Corresponds to the JSON property `endHour`
        # @return [Fixnum]
        attr_accessor :end_hour
      
        # Required. The start hour for day and time targeting. Must be between 0 (start
        # of day) and 23 (1 hour before end of day).
        # Corresponds to the JSON property `startHour`
        # @return [Fixnum]
        attr_accessor :start_hour
      
        # Required. The mechanism used to determine which timezone to use for this day
        # and time targeting setting.
        # Corresponds to the JSON property `timeZoneResolution`
        # @return [String]
        attr_accessor :time_zone_resolution
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @day_of_week = args[:day_of_week] if args.key?(:day_of_week)
          @end_hour = args[:end_hour] if args.key?(:end_hour)
          @start_hour = args[:start_hour] if args.key?(:start_hour)
          @time_zone_resolution = args[:time_zone_resolution] if args.key?(:time_zone_resolution)
        end
      end
      
      # Request message for ManualTriggerService.DeactivateManualTrigger.
      class DeactivateManualTriggerRequest
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # A request listing which assigned targeting options of a given targeting type
      # should be deleted.
      class DeleteAssignedTargetingOptionsRequest
        include Google::Apis::Core::Hashable
      
        # Required. The assigned targeting option IDs to delete.
        # Corresponds to the JSON property `assignedTargetingOptionIds`
        # @return [Array<String>]
        attr_accessor :assigned_targeting_option_ids
      
        # Required. Identifies the type of this assigned targeting option.
        # Corresponds to the JSON property `targetingType`
        # @return [String]
        attr_accessor :targeting_type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @assigned_targeting_option_ids = args[:assigned_targeting_option_ids] if args.key?(:assigned_targeting_option_ids)
          @targeting_type = args[:targeting_type] if args.key?(:targeting_type)
        end
      end
      
      # Assigned device make and model targeting option details. This will be
      # populated in the device_make_model_details field when targeting_type is `
      # TARGETING_TYPE_DEVICE_MAKE_MODEL`.
      class DeviceMakeModelAssignedTargetingOptionDetails
        include Google::Apis::Core::Hashable
      
        # Output only. The display name of the device make and model.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # Indicates if this option is being negatively targeted.
        # Corresponds to the JSON property `negative`
        # @return [Boolean]
        attr_accessor :negative
        alias_method :negative?, :negative
      
        # Required. The targeting_option_id field when targeting_type is `
        # TARGETING_TYPE_DEVICE_MAKE_MODEL`.
        # Corresponds to the JSON property `targetingOptionId`
        # @return [String]
        attr_accessor :targeting_option_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @display_name = args[:display_name] if args.key?(:display_name)
          @negative = args[:negative] if args.key?(:negative)
          @targeting_option_id = args[:targeting_option_id] if args.key?(:targeting_option_id)
        end
      end
      
      # Represents a targetable device make and model. This will be populated in the
      # device_make_model_details field of a TargetingOption when targeting_type is `
      # TARGETING_TYPE_DEVICE_MAKE_MODEL`.
      class DeviceMakeModelTargetingOptionDetails
        include Google::Apis::Core::Hashable
      
        # Output only. The display name of the device make and model.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @display_name = args[:display_name] if args.key?(:display_name)
        end
      end
      
      # Targeting details for device type. This will be populated in the details field
      # of an AssignedTargetingOption when targeting_type is `
      # TARGETING_TYPE_DEVICE_TYPE`.
      class DeviceTypeAssignedTargetingOptionDetails
        include Google::Apis::Core::Hashable
      
        # Output only. The display name of the device type.
        # Corresponds to the JSON property `deviceType`
        # @return [String]
        attr_accessor :device_type
      
        # Required. ID of the device type.
        # Corresponds to the JSON property `targetingOptionId`
        # @return [String]
        attr_accessor :targeting_option_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @device_type = args[:device_type] if args.key?(:device_type)
          @targeting_option_id = args[:targeting_option_id] if args.key?(:targeting_option_id)
        end
      end
      
      # Represents a targetable device type. This will be populated in the
      # device_type_details field of a TargetingOption when targeting_type is `
      # TARGETING_TYPE_DEVICE_TYPE`.
      class DeviceTypeTargetingOptionDetails
        include Google::Apis::Core::Hashable
      
        # Output only. The device type that is used to be targeted.
        # Corresponds to the JSON property `deviceType`
        # @return [String]
        attr_accessor :device_type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @device_type = args[:device_type] if args.key?(:device_type)
        end
      end
      
      # Targeting details for digital content label. This will be populated in the
      # details field of an AssignedTargetingOption when targeting_type is `
      # TARGETING_TYPE_DIGITAL_CONTENT_LABEL_EXCLUSION`.
      class DigitalContentLabelAssignedTargetingOptionDetails
        include Google::Apis::Core::Hashable
      
        # Output only. The display name of the digital content label rating tier.
        # Corresponds to the JSON property `contentRatingTier`
        # @return [String]
        attr_accessor :content_rating_tier
      
        # Required. ID of the digital content label to be EXCLUDED.
        # Corresponds to the JSON property `excludedTargetingOptionId`
        # @return [String]
        attr_accessor :excluded_targeting_option_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @content_rating_tier = args[:content_rating_tier] if args.key?(:content_rating_tier)
          @excluded_targeting_option_id = args[:excluded_targeting_option_id] if args.key?(:excluded_targeting_option_id)
        end
      end
      
      # Represents a targetable digital content label rating tier. This will be
      # populated in the digital_content_label_details field of the TargetingOption
      # when targeting_type is `TARGETING_TYPE_DIGITAL_CONTENT_LABEL_EXCLUSION`.
      class DigitalContentLabelTargetingOptionDetails
        include Google::Apis::Core::Hashable
      
        # Output only. An enum for the content label brand safety tiers.
        # Corresponds to the JSON property `contentRatingTier`
        # @return [String]
        attr_accessor :content_rating_tier
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @content_rating_tier = args[:content_rating_tier] if args.key?(:content_rating_tier)
        end
      end
      
      # Dimensions.
      class Dimensions
        include Google::Apis::Core::Hashable
      
        # The height in pixels.
        # Corresponds to the JSON property `heightPixels`
        # @return [Fixnum]
        attr_accessor :height_pixels
      
        # The width in pixels.
        # Corresponds to the JSON property `widthPixels`
        # @return [Fixnum]
        attr_accessor :width_pixels
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @height_pixels = args[:height_pixels] if args.key?(:height_pixels)
          @width_pixels = args[:width_pixels] if args.key?(:width_pixels)
        end
      end
      
      # Details of DoubleVerify settings.
      class DoubleVerify
        include Google::Apis::Core::Hashable
      
        # Details of DoubleVerify star ratings settings.
        # Corresponds to the JSON property `appStarRating`
        # @return [Google::Apis::DisplayvideoV1::DoubleVerifyAppStarRating]
        attr_accessor :app_star_rating
      
        # Avoid bidding on apps with the age rating.
        # Corresponds to the JSON property `avoidedAgeRatings`
        # @return [Array<String>]
        attr_accessor :avoided_age_ratings
      
        # Settings for brand safety controls.
        # Corresponds to the JSON property `brandSafetyCategories`
        # @return [Google::Apis::DisplayvideoV1::DoubleVerifyBrandSafetyCategories]
        attr_accessor :brand_safety_categories
      
        # The custom segment ID provided by DoubleVerify. The ID must start with "51"
        # and consist of eight digits. Custom segment ID cannot be specified along with
        # any of the following fields: * brand_safety_categories * avoided_age_ratings *
        # app_star_rating * fraud_invalid_traffic
        # Corresponds to the JSON property `customSegmentId`
        # @return [Fixnum]
        attr_accessor :custom_segment_id
      
        # Details of DoubleVerify display viewability settings.
        # Corresponds to the JSON property `displayViewability`
        # @return [Google::Apis::DisplayvideoV1::DoubleVerifyDisplayViewability]
        attr_accessor :display_viewability
      
        # DoubleVerify Fraud & Invalid Traffic settings.
        # Corresponds to the JSON property `fraudInvalidTraffic`
        # @return [Google::Apis::DisplayvideoV1::DoubleVerifyFraudInvalidTraffic]
        attr_accessor :fraud_invalid_traffic
      
        # Details of DoubleVerify video viewability settings.
        # Corresponds to the JSON property `videoViewability`
        # @return [Google::Apis::DisplayvideoV1::DoubleVerifyVideoViewability]
        attr_accessor :video_viewability
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @app_star_rating = args[:app_star_rating] if args.key?(:app_star_rating)
          @avoided_age_ratings = args[:avoided_age_ratings] if args.key?(:avoided_age_ratings)
          @brand_safety_categories = args[:brand_safety_categories] if args.key?(:brand_safety_categories)
          @custom_segment_id = args[:custom_segment_id] if args.key?(:custom_segment_id)
          @display_viewability = args[:display_viewability] if args.key?(:display_viewability)
          @fraud_invalid_traffic = args[:fraud_invalid_traffic] if args.key?(:fraud_invalid_traffic)
          @video_viewability = args[:video_viewability] if args.key?(:video_viewability)
        end
      end
      
      # Details of DoubleVerify star ratings settings.
      class DoubleVerifyAppStarRating
        include Google::Apis::Core::Hashable
      
        # Avoid bidding on apps with insufficient star ratings.
        # Corresponds to the JSON property `avoidInsufficientStarRating`
        # @return [Boolean]
        attr_accessor :avoid_insufficient_star_rating
        alias_method :avoid_insufficient_star_rating?, :avoid_insufficient_star_rating
      
        # Avoid bidding on apps with the star ratings.
        # Corresponds to the JSON property `avoidedStarRating`
        # @return [String]
        attr_accessor :avoided_star_rating
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @avoid_insufficient_star_rating = args[:avoid_insufficient_star_rating] if args.key?(:avoid_insufficient_star_rating)
          @avoided_star_rating = args[:avoided_star_rating] if args.key?(:avoided_star_rating)
        end
      end
      
      # Settings for brand safety controls.
      class DoubleVerifyBrandSafetyCategories
        include Google::Apis::Core::Hashable
      
        # Unknown or unrateable.
        # Corresponds to the JSON property `avoidUnknownBrandSafetyCategory`
        # @return [Boolean]
        attr_accessor :avoid_unknown_brand_safety_category
        alias_method :avoid_unknown_brand_safety_category?, :avoid_unknown_brand_safety_category
      
        # Brand safety high severity avoidance categories.
        # Corresponds to the JSON property `avoidedHighSeverityCategories`
        # @return [Array<String>]
        attr_accessor :avoided_high_severity_categories
      
        # Brand safety medium severity avoidance categories.
        # Corresponds to the JSON property `avoidedMediumSeverityCategories`
        # @return [Array<String>]
        attr_accessor :avoided_medium_severity_categories
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @avoid_unknown_brand_safety_category = args[:avoid_unknown_brand_safety_category] if args.key?(:avoid_unknown_brand_safety_category)
          @avoided_high_severity_categories = args[:avoided_high_severity_categories] if args.key?(:avoided_high_severity_categories)
          @avoided_medium_severity_categories = args[:avoided_medium_severity_categories] if args.key?(:avoided_medium_severity_categories)
        end
      end
      
      # Details of DoubleVerify display viewability settings.
      class DoubleVerifyDisplayViewability
        include Google::Apis::Core::Hashable
      
        # Target web and app inventory to maximize IAB viewable rate.
        # Corresponds to the JSON property `iab`
        # @return [String]
        attr_accessor :iab
      
        # Target web and app inventory to maximize 100% viewable duration.
        # Corresponds to the JSON property `viewableDuring`
        # @return [String]
        attr_accessor :viewable_during
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @iab = args[:iab] if args.key?(:iab)
          @viewable_during = args[:viewable_during] if args.key?(:viewable_during)
        end
      end
      
      # DoubleVerify Fraud & Invalid Traffic settings.
      class DoubleVerifyFraudInvalidTraffic
        include Google::Apis::Core::Hashable
      
        # Insufficient Historical Fraud & IVT Stats.
        # Corresponds to the JSON property `avoidInsufficientOption`
        # @return [Boolean]
        attr_accessor :avoid_insufficient_option
        alias_method :avoid_insufficient_option?, :avoid_insufficient_option
      
        # Avoid Sites and Apps with historical Fraud & IVT.
        # Corresponds to the JSON property `avoidedFraudOption`
        # @return [String]
        attr_accessor :avoided_fraud_option
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @avoid_insufficient_option = args[:avoid_insufficient_option] if args.key?(:avoid_insufficient_option)
          @avoided_fraud_option = args[:avoided_fraud_option] if args.key?(:avoided_fraud_option)
        end
      end
      
      # Details of DoubleVerify video viewability settings.
      class DoubleVerifyVideoViewability
        include Google::Apis::Core::Hashable
      
        # Target inventory to maximize impressions with 400x300 or greater player size.
        # Corresponds to the JSON property `playerImpressionRate`
        # @return [String]
        attr_accessor :player_impression_rate
      
        # Target web inventory to maximize IAB viewable rate.
        # Corresponds to the JSON property `videoIab`
        # @return [String]
        attr_accessor :video_iab
      
        # Target web inventory to maximize fully viewable rate.
        # Corresponds to the JSON property `videoViewableRate`
        # @return [String]
        attr_accessor :video_viewable_rate
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @player_impression_rate = args[:player_impression_rate] if args.key?(:player_impression_rate)
          @video_iab = args[:video_iab] if args.key?(:video_iab)
          @video_viewable_rate = args[:video_viewable_rate] if args.key?(:video_viewable_rate)
        end
      end
      
      # A generic empty message that you can re-use to avoid defining duplicated empty
      # messages in your APIs. A typical example is to use it as the request or the
      # response type of an API method. For instance: service Foo ` rpc Bar(google.
      # protobuf.Empty) returns (google.protobuf.Empty); ` The JSON representation for
      # `Empty` is empty JSON object ````.
      class Empty
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # Assigned environment targeting option details. This will be populated in the
      # details field of an AssignedTargetingOption when targeting_type is `
      # TARGETING_TYPE_ENVIRONMENT`.
      class EnvironmentAssignedTargetingOptionDetails
        include Google::Apis::Core::Hashable
      
        # Output only. The serving environment.
        # Corresponds to the JSON property `environment`
        # @return [String]
        attr_accessor :environment
      
        # Required. The targeting_option_id of a TargetingOption of type `
        # TARGETING_TYPE_ENVIRONMENT` (e.g., "508010" for targeting the `
        # ENVIRONMENT_WEB_OPTIMIZED` option).
        # Corresponds to the JSON property `targetingOptionId`
        # @return [String]
        attr_accessor :targeting_option_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @environment = args[:environment] if args.key?(:environment)
          @targeting_option_id = args[:targeting_option_id] if args.key?(:targeting_option_id)
        end
      end
      
      # Represents a targetable environment. This will be populated in the
      # environment_details field of a TargetingOption when targeting_type is `
      # TARGETING_TYPE_ENVIRONMENT`.
      class EnvironmentTargetingOptionDetails
        include Google::Apis::Core::Hashable
      
        # Output only. The serving environment.
        # Corresponds to the JSON property `environment`
        # @return [String]
        attr_accessor :environment
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @environment = args[:environment] if args.key?(:environment)
        end
      end
      
      # Details for assigned exchange targeting option. This will be populated in the
      # details field of an AssignedTargetingOption when targeting_type is `
      # TARGETING_TYPE_EXCHANGE`.
      class ExchangeAssignedTargetingOptionDetails
        include Google::Apis::Core::Hashable
      
        # Required. The targeting_option_id of a TargetingOption of type `
        # TARGETING_TYPE_EXCHANGE`.
        # Corresponds to the JSON property `targetingOptionId`
        # @return [String]
        attr_accessor :targeting_option_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @targeting_option_id = args[:targeting_option_id] if args.key?(:targeting_option_id)
        end
      end
      
      # Settings that control which exchanges are enabled for a partner.
      class ExchangeConfig
        include Google::Apis::Core::Hashable
      
        # All enabled exchanges in the partner. Duplicate enabled exchanges will be
        # ignored.
        # Corresponds to the JSON property `enabledExchanges`
        # @return [Array<Google::Apis::DisplayvideoV1::ExchangeConfigEnabledExchange>]
        attr_accessor :enabled_exchanges
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @enabled_exchanges = args[:enabled_exchanges] if args.key?(:enabled_exchanges)
        end
      end
      
      # An enabled exchange in the partner.
      class ExchangeConfigEnabledExchange
        include Google::Apis::Core::Hashable
      
        # The enabled exchange.
        # Corresponds to the JSON property `exchange`
        # @return [String]
        attr_accessor :exchange
      
        # Output only. Agency ID of Google Ad Manager. The field is only relevant when
        # Google Ad Manager is the enabled exchange.
        # Corresponds to the JSON property `googleAdManagerAgencyId`
        # @return [String]
        attr_accessor :google_ad_manager_agency_id
      
        # Output only. Network ID of Google Ad Manager. The field is only relevant when
        # Google Ad Manager is the enabled exchange.
        # Corresponds to the JSON property `googleAdManagerBuyerNetworkId`
        # @return [String]
        attr_accessor :google_ad_manager_buyer_network_id
      
        # Output only. Seat ID of the enabled exchange.
        # Corresponds to the JSON property `seatId`
        # @return [String]
        attr_accessor :seat_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @exchange = args[:exchange] if args.key?(:exchange)
          @google_ad_manager_agency_id = args[:google_ad_manager_agency_id] if args.key?(:google_ad_manager_agency_id)
          @google_ad_manager_buyer_network_id = args[:google_ad_manager_buyer_network_id] if args.key?(:google_ad_manager_buyer_network_id)
          @seat_id = args[:seat_id] if args.key?(:seat_id)
        end
      end
      
      # Exchange review status for the creative.
      class ExchangeReviewStatus
        include Google::Apis::Core::Hashable
      
        # The exchange reviewing the creative.
        # Corresponds to the JSON property `exchange`
        # @return [String]
        attr_accessor :exchange
      
        # Status of the exchange review.
        # Corresponds to the JSON property `status`
        # @return [String]
        attr_accessor :status
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @exchange = args[:exchange] if args.key?(:exchange)
          @status = args[:status] if args.key?(:status)
        end
      end
      
      # Represents a targetable exchange. This will be populated in the
      # exchange_details field of a TargetingOption when targeting_type is `
      # TARGETING_TYPE_EXCHANGE`.
      class ExchangeTargetingOptionDetails
        include Google::Apis::Core::Hashable
      
        # Output only. The type of exchange.
        # Corresponds to the JSON property `exchange`
        # @return [String]
        attr_accessor :exchange
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @exchange = args[:exchange] if args.key?(:exchange)
        end
      end
      
      # Exit event of the creative.
      class ExitEvent
        include Google::Apis::Core::Hashable
      
        # The name of the click tag of the exit event. The name must be unique within
        # one creative. Leave it empty or unset for creatives containing image assets
        # only.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # The name used to identify this event in reports. Leave it empty or unset for
        # creatives containing image assets only.
        # Corresponds to the JSON property `reportingName`
        # @return [String]
        attr_accessor :reporting_name
      
        # Required. The type of the exit event.
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        # Required. The click through URL of the exit event. This is required when type
        # is: * `EXIT_EVENT_TYPE_DEFAULT` * `EXIT_EVENT_TYPE_BACKUP`
        # Corresponds to the JSON property `url`
        # @return [String]
        attr_accessor :url
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @name = args[:name] if args.key?(:name)
          @reporting_name = args[:reporting_name] if args.key?(:reporting_name)
          @type = args[:type] if args.key?(:type)
          @url = args[:url] if args.key?(:url)
        end
      end
      
      # Describes a first or third party audience list used for targeting. First party
      # audiences are created via usage of client data. Third party audiences are
      # provided by Third Party data providers and can only be licensed to customers.
      class FirstAndThirdPartyAudience
        include Google::Apis::Core::Hashable
      
        # Output only. The estimated audience size for the Display network in the past
        # month. If the size is less than 1000, the number will be hidden and 0 will be
        # returned due to privacy reasons. Otherwise, the number will be rounded off to
        # two significant digits. Only returned in GET request.
        # Corresponds to the JSON property `activeDisplayAudienceSize`
        # @return [Fixnum]
        attr_accessor :active_display_audience_size
      
        # Output only. The source of the audience.
        # Corresponds to the JSON property `audienceSource`
        # @return [String]
        attr_accessor :audience_source
      
        # Output only. The type of the audience.
        # Corresponds to the JSON property `audienceType`
        # @return [String]
        attr_accessor :audience_type
      
        # The user-provided description of the audience. Only applicable to first party
        # audiences.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # Output only. The estimated audience size for the Display network. If the size
        # is less than 1000, the number will be hidden and 0 will be returned due to
        # privacy reasons. Otherwise, the number will be rounded off to two significant
        # digits. Only returned in GET request.
        # Corresponds to the JSON property `displayAudienceSize`
        # @return [Fixnum]
        attr_accessor :display_audience_size
      
        # Output only. The estimated desktop audience size in Display network. If the
        # size is less than 1000, the number will be hidden and 0 will be returned due
        # to privacy reasons. Otherwise, the number will be rounded off to two
        # significant digits. Only applicable to first party audiences. Only returned in
        # GET request.
        # Corresponds to the JSON property `displayDesktopAudienceSize`
        # @return [Fixnum]
        attr_accessor :display_desktop_audience_size
      
        # Output only. The estimated mobile app audience size in Display network. If the
        # size is less than 1000, the number will be hidden and 0 will be returned due
        # to privacy reasons. Otherwise, the number will be rounded off to two
        # significant digits. Only applicable to first party audiences. Only returned in
        # GET request.
        # Corresponds to the JSON property `displayMobileAppAudienceSize`
        # @return [Fixnum]
        attr_accessor :display_mobile_app_audience_size
      
        # Output only. The estimated mobile web audience size in Display network. If the
        # size is less than 1000, the number will be hidden and 0 will be returned due
        # to privacy reasons. Otherwise, the number will be rounded off to two
        # significant digits. Only applicable to first party audiences. Only returned in
        # GET request.
        # Corresponds to the JSON property `displayMobileWebAudienceSize`
        # @return [Fixnum]
        attr_accessor :display_mobile_web_audience_size
      
        # The display name of the first and third party audience.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # Output only. The unique ID of the first and third party audience. Assigned by
        # the system.
        # Corresponds to the JSON property `firstAndThirdPartyAudienceId`
        # @return [Fixnum]
        attr_accessor :first_and_third_party_audience_id
      
        # Output only. Whether the audience is a first or third party audience.
        # Corresponds to the JSON property `firstAndThirdPartyAudienceType`
        # @return [String]
        attr_accessor :first_and_third_party_audience_type
      
        # Output only. The estimated audience size for Gmail network. If the size is
        # less than 1000, the number will be hidden and 0 will be returned due to
        # privacy reasons. Otherwise, the number will be rounded off to two significant
        # digits. Only applicable to first party audiences. Only returned in GET request.
        # Corresponds to the JSON property `gmailAudienceSize`
        # @return [Fixnum]
        attr_accessor :gmail_audience_size
      
        # The duration in days that an entry remains in the audience after the
        # qualifying event. Only applicable to first party audiences.
        # Corresponds to the JSON property `membershipDurationDays`
        # @return [Fixnum]
        attr_accessor :membership_duration_days
      
        # Output only. The resource name of the first and third party audience.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Output only. The estimated audience size for YouTube network. If the size is
        # less than 1000, the number will be hidden and 0 will be returned due to
        # privacy reasons. Otherwise, the number will be rounded off to two significant
        # digits. Only applicable to first party audiences. Only returned in GET request.
        # Corresponds to the JSON property `youtubeAudienceSize`
        # @return [Fixnum]
        attr_accessor :youtube_audience_size
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @active_display_audience_size = args[:active_display_audience_size] if args.key?(:active_display_audience_size)
          @audience_source = args[:audience_source] if args.key?(:audience_source)
          @audience_type = args[:audience_type] if args.key?(:audience_type)
          @description = args[:description] if args.key?(:description)
          @display_audience_size = args[:display_audience_size] if args.key?(:display_audience_size)
          @display_desktop_audience_size = args[:display_desktop_audience_size] if args.key?(:display_desktop_audience_size)
          @display_mobile_app_audience_size = args[:display_mobile_app_audience_size] if args.key?(:display_mobile_app_audience_size)
          @display_mobile_web_audience_size = args[:display_mobile_web_audience_size] if args.key?(:display_mobile_web_audience_size)
          @display_name = args[:display_name] if args.key?(:display_name)
          @first_and_third_party_audience_id = args[:first_and_third_party_audience_id] if args.key?(:first_and_third_party_audience_id)
          @first_and_third_party_audience_type = args[:first_and_third_party_audience_type] if args.key?(:first_and_third_party_audience_type)
          @gmail_audience_size = args[:gmail_audience_size] if args.key?(:gmail_audience_size)
          @membership_duration_days = args[:membership_duration_days] if args.key?(:membership_duration_days)
          @name = args[:name] if args.key?(:name)
          @youtube_audience_size = args[:youtube_audience_size] if args.key?(:youtube_audience_size)
        end
      end
      
      # Details of first and third party audience group. All first and third party
      # audience targeting settings are logically ‘OR’ of each other.
      class FirstAndThirdPartyAudienceGroup
        include Google::Apis::Core::Hashable
      
        # Required. All first and third party audience targeting settings in first and
        # third party audience group. Repeated settings with same id are not allowed.
        # Corresponds to the JSON property `settings`
        # @return [Array<Google::Apis::DisplayvideoV1::FirstAndThirdPartyAudienceTargetingSetting>]
        attr_accessor :settings
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @settings = args[:settings] if args.key?(:settings)
        end
      end
      
      # Details of first and third party audience targeting setting.
      class FirstAndThirdPartyAudienceTargetingSetting
        include Google::Apis::Core::Hashable
      
        # Required. First and third party audience id of the first and third party
        # audience targeting setting. This id is first_and_third_party_audience_id.
        # Corresponds to the JSON property `firstAndThirdPartyAudienceId`
        # @return [Fixnum]
        attr_accessor :first_and_third_party_audience_id
      
        # The recency of the first and third party audience targeting setting. Only
        # applicable to first party audiences, otherwise will be ignored. For more info,
        # refer to https://support.google.com/displayvideo/answer/2949947#recency When
        # unspecified, no recency limit will be used.
        # Corresponds to the JSON property `recency`
        # @return [String]
        attr_accessor :recency
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @first_and_third_party_audience_id = args[:first_and_third_party_audience_id] if args.key?(:first_and_third_party_audience_id)
          @recency = args[:recency] if args.key?(:recency)
        end
      end
      
      # A strategy that uses a fixed bidding price.
      class FixedBidStrategy
        include Google::Apis::Core::Hashable
      
        # The fixed bid amount, in micros of the advertiser's currency. For insertion
        # order entity, bid_amount_micros should be set as 0. For line item entity,
        # bid_amount_micros must be greater than or equal to billable unit of the given
        # currency and smaller than or equal to the upper limit 1000000000. For example,
        # 1500000 represents 1.5 standard units of the currency.
        # Corresponds to the JSON property `bidAmountMicros`
        # @return [Fixnum]
        attr_accessor :bid_amount_micros
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @bid_amount_micros = args[:bid_amount_micros] if args.key?(:bid_amount_micros)
        end
      end
      
      # A single Floodlight group.
      class FloodlightGroup
        include Google::Apis::Core::Hashable
      
        # Configuration for custom Active View video viewability metrics.
        # Corresponds to the JSON property `activeViewConfig`
        # @return [Google::Apis::DisplayvideoV1::ActiveViewVideoViewabilityMetricConfig]
        attr_accessor :active_view_config
      
        # User-defined custom variables owned by the Floodlight group. Use custom
        # Floodlight variables to create reporting data that is tailored to your unique
        # business needs. Custom Floodlight variables use the keys `U1=`, `U2=`, and so
        # on, and can take any values that you choose to pass to them. You can use them
        # to track virtually any type of data that you collect about your customers,
        # such as the genre of movie that a customer purchases, the country to which the
        # item is shipped, and so on. Custom Floodlight variables may not be used to
        # pass any data that could be used or recognized as personally identifiable
        # information (PII). Example: `custom_variables ` fields ` "U1": value `
        # number_value: 123.4 `, "U2": value ` string_value: "MyVariable2" `, "U3":
        # value ` string_value: "MyVariable3" ` ` `` Acceptable values for keys are "U1"
        # through "U100", inclusive. String values must be less than 64 characters long,
        # and cannot contain the following characters: `"<>`.
        # Corresponds to the JSON property `customVariables`
        # @return [Hash<String,Object>]
        attr_accessor :custom_variables
      
        # Required. The display name of the Floodlight group.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # Output only. The unique ID of the Floodlight group. Assigned by the system.
        # Corresponds to the JSON property `floodlightGroupId`
        # @return [Fixnum]
        attr_accessor :floodlight_group_id
      
        # Specifies how many days into the past to look when determining whether to
        # record a conversion.
        # Corresponds to the JSON property `lookbackWindow`
        # @return [Google::Apis::DisplayvideoV1::LookbackWindow]
        attr_accessor :lookback_window
      
        # Output only. The resource name of the Floodlight group.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Required. The web tag type enabled for the Floodlight group.
        # Corresponds to the JSON property `webTagType`
        # @return [String]
        attr_accessor :web_tag_type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @active_view_config = args[:active_view_config] if args.key?(:active_view_config)
          @custom_variables = args[:custom_variables] if args.key?(:custom_variables)
          @display_name = args[:display_name] if args.key?(:display_name)
          @floodlight_group_id = args[:floodlight_group_id] if args.key?(:floodlight_group_id)
          @lookback_window = args[:lookback_window] if args.key?(:lookback_window)
          @name = args[:name] if args.key?(:name)
          @web_tag_type = args[:web_tag_type] if args.key?(:web_tag_type)
        end
      end
      
      # Settings that control the number of times a user may be shown with the same ad
      # during a given time period.
      class FrequencyCap
        include Google::Apis::Core::Hashable
      
        # The maximum number of times a user may be shown with the same ad during this
        # period. Must be greater than 0. Applicable when unlimited is `false`.
        # Corresponds to the JSON property `maxImpressions`
        # @return [Fixnum]
        attr_accessor :max_impressions
      
        # The time unit in which the frequency cap will be applied. Applicable when
        # unlimited is `false`.
        # Corresponds to the JSON property `timeUnit`
        # @return [String]
        attr_accessor :time_unit
      
        # The number of time_unit the frequency cap will last. Applicable when unlimited
        # is `false`. The following restrictions apply based on the value of time_unit: *
        # `TIME_UNIT_LIFETIME` - this field is output only and will default to 1 * `
        # TIME_UNIT_MONTHS` - must be between 1 and 2 * `TIME_UNIT_WEEKS` - must be
        # between 1 and 4 * `TIME_UNIT_DAYS` - must be between 1 and 6 * `
        # TIME_UNIT_HOURS` - must be between 1 and 23 * `TIME_UNIT_MINUTES` - must be
        # between 1 and 59
        # Corresponds to the JSON property `timeUnitCount`
        # @return [Fixnum]
        attr_accessor :time_unit_count
      
        # Whether unlimited frequency capping is applied. When this field is set to `
        # true`, the remaining frequency cap fields are not applicable.
        # Corresponds to the JSON property `unlimited`
        # @return [Boolean]
        attr_accessor :unlimited
        alias_method :unlimited?, :unlimited
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @max_impressions = args[:max_impressions] if args.key?(:max_impressions)
          @time_unit = args[:time_unit] if args.key?(:time_unit)
          @time_unit_count = args[:time_unit_count] if args.key?(:time_unit_count)
          @unlimited = args[:unlimited] if args.key?(:unlimited)
        end
      end
      
      # Details for assigned gender targeting option. This will be populated in the
      # details field of an AssignedTargetingOption when targeting_type is `
      # TARTGETING_TYPE_GENDER`.
      class GenderAssignedTargetingOptionDetails
        include Google::Apis::Core::Hashable
      
        # Output only. The gender of the audience.
        # Corresponds to the JSON property `gender`
        # @return [String]
        attr_accessor :gender
      
        # Required. The targeting_option_id of a TargetingOption of type `
        # TARGETING_TYPE_GENDER`.
        # Corresponds to the JSON property `targetingOptionId`
        # @return [String]
        attr_accessor :targeting_option_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @gender = args[:gender] if args.key?(:gender)
          @targeting_option_id = args[:targeting_option_id] if args.key?(:targeting_option_id)
        end
      end
      
      # Represents a targetable gender. This will be populated in the gender_details
      # field of a TargetingOption when targeting_type is `TARGETING_TYPE_GENDER`.
      class GenderTargetingOptionDetails
        include Google::Apis::Core::Hashable
      
        # Output only. The gender of an audience.
        # Corresponds to the JSON property `gender`
        # @return [String]
        attr_accessor :gender
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @gender = args[:gender] if args.key?(:gender)
        end
      end
      
      # Details for assigned geographic region targeting option. This will be
      # populated in the details field of an AssignedTargetingOption when
      # targeting_type is `TARGETING_TYPE_GEO_REGION`.
      class GeoRegionAssignedTargetingOptionDetails
        include Google::Apis::Core::Hashable
      
        # Output only. The display name of the geographic region (e.g., "Ontario, Canada"
        # ).
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # Output only. The type of geographic region targeting.
        # Corresponds to the JSON property `geoRegionType`
        # @return [String]
        attr_accessor :geo_region_type
      
        # Indicates if this option is being negatively targeted.
        # Corresponds to the JSON property `negative`
        # @return [Boolean]
        attr_accessor :negative
        alias_method :negative?, :negative
      
        # Required. The targeting_option_id of a TargetingOption of type `
        # TARGETING_TYPE_GEO_REGION`.
        # Corresponds to the JSON property `targetingOptionId`
        # @return [String]
        attr_accessor :targeting_option_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @display_name = args[:display_name] if args.key?(:display_name)
          @geo_region_type = args[:geo_region_type] if args.key?(:geo_region_type)
          @negative = args[:negative] if args.key?(:negative)
          @targeting_option_id = args[:targeting_option_id] if args.key?(:targeting_option_id)
        end
      end
      
      # Represents a targetable geographic region. This will be populated in the
      # geo_region_details field when targeting_type is `TARGETING_TYPE_GEO_REGION`.
      class GeoRegionTargetingOptionDetails
        include Google::Apis::Core::Hashable
      
        # Output only. The display name of the geographic region (e.g., "Ontario, Canada"
        # ).
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # Output only. The type of geographic region targeting.
        # Corresponds to the JSON property `geoRegionType`
        # @return [String]
        attr_accessor :geo_region_type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @display_name = args[:display_name] if args.key?(:display_name)
          @geo_region_type = args[:geo_region_type] if args.key?(:geo_region_type)
        end
      end
      
      # Describes a Google audience resource. Includes Google audience lists.
      class GoogleAudience
        include Google::Apis::Core::Hashable
      
        # Output only. The display name of the Google audience. .
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # Output only. The unique ID of the Google audience. Assigned by the system.
        # Corresponds to the JSON property `googleAudienceId`
        # @return [Fixnum]
        attr_accessor :google_audience_id
      
        # Output only. The type of Google audience. .
        # Corresponds to the JSON property `googleAudienceType`
        # @return [String]
        attr_accessor :google_audience_type
      
        # Output only. The resource name of the google audience.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @display_name = args[:display_name] if args.key?(:display_name)
          @google_audience_id = args[:google_audience_id] if args.key?(:google_audience_id)
          @google_audience_type = args[:google_audience_type] if args.key?(:google_audience_type)
          @name = args[:name] if args.key?(:name)
        end
      end
      
      # Details of Google audience group. All Google audience targeting settings are
      # logically ‘OR’ of each other.
      class GoogleAudienceGroup
        include Google::Apis::Core::Hashable
      
        # Required. All Google audience targeting settings in Google audience group.
        # Repeated settings with same id will be ignored.
        # Corresponds to the JSON property `settings`
        # @return [Array<Google::Apis::DisplayvideoV1::GoogleAudienceTargetingSetting>]
        attr_accessor :settings
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @settings = args[:settings] if args.key?(:settings)
        end
      end
      
      # Details of Google audience targeting setting.
      class GoogleAudienceTargetingSetting
        include Google::Apis::Core::Hashable
      
        # Required. Google audience id of the Google audience targeting setting. This id
        # is google_audience_id.
        # Corresponds to the JSON property `googleAudienceId`
        # @return [Fixnum]
        attr_accessor :google_audience_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @google_audience_id = args[:google_audience_id] if args.key?(:google_audience_id)
        end
      end
      
      # Media resource.
      class GoogleBytestreamMedia
        include Google::Apis::Core::Hashable
      
        # Name of the media resource.
        # Corresponds to the JSON property `resourceName`
        # @return [String]
        attr_accessor :resource_name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @resource_name = args[:resource_name] if args.key?(:resource_name)
        end
      end
      
      # Details for assigned household income targeting option. This will be populated
      # in the details field of an AssignedTargetingOption when targeting_type is `
      # TARGETING_TYPE_HOUSEHOLD_INCOME`.
      class HouseholdIncomeAssignedTargetingOptionDetails
        include Google::Apis::Core::Hashable
      
        # Output only. The household income of the audience.
        # Corresponds to the JSON property `householdIncome`
        # @return [String]
        attr_accessor :household_income
      
        # Required. The targeting_option_id of a TargetingOption of type `
        # TARGETING_TYPE_HOUSEHOLD_INCOME`.
        # Corresponds to the JSON property `targetingOptionId`
        # @return [String]
        attr_accessor :targeting_option_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @household_income = args[:household_income] if args.key?(:household_income)
          @targeting_option_id = args[:targeting_option_id] if args.key?(:targeting_option_id)
        end
      end
      
      # Represents a targetable household income. This will be populated in the
      # household_income_details field of a TargetingOption when targeting_type is `
      # TARGETING_TYPE_HOUSEHOLD_INCOME`.
      class HouseholdIncomeTargetingOptionDetails
        include Google::Apis::Core::Hashable
      
        # Output only. The household income of an audience.
        # Corresponds to the JSON property `householdIncome`
        # @return [String]
        attr_accessor :household_income
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @household_income = args[:household_income] if args.key?(:household_income)
        end
      end
      
      # A filtering option that filters entities by their entity IDs.
      class IdFilter
        include Google::Apis::Core::Hashable
      
        # YouTube Ads to download by ID. All IDs must belong to the same Advertiser or
        # Partner specified in CreateSdfDownloadTaskRequest.
        # Corresponds to the JSON property `adGroupAdIds`
        # @return [Array<Fixnum>]
        attr_accessor :ad_group_ad_ids
      
        # YouTube Ad Groups to download by ID. All IDs must belong to the same
        # Advertiser or Partner specified in CreateSdfDownloadTaskRequest.
        # Corresponds to the JSON property `adGroupIds`
        # @return [Array<Fixnum>]
        attr_accessor :ad_group_ids
      
        # Campaigns to download by ID. All IDs must belong to the same Advertiser or
        # Partner specified in CreateSdfDownloadTaskRequest.
        # Corresponds to the JSON property `campaignIds`
        # @return [Array<Fixnum>]
        attr_accessor :campaign_ids
      
        # Insertion Orders to download by ID. All IDs must belong to the same Advertiser
        # or Partner specified in CreateSdfDownloadTaskRequest.
        # Corresponds to the JSON property `insertionOrderIds`
        # @return [Array<Fixnum>]
        attr_accessor :insertion_order_ids
      
        # Line Items to download by ID. All IDs must belong to the same Advertiser or
        # Partner specified in CreateSdfDownloadTaskRequest.
        # Corresponds to the JSON property `lineItemIds`
        # @return [Array<Fixnum>]
        attr_accessor :line_item_ids
      
        # Media Products to download by ID. All IDs must belong to the same Advertiser
        # or Partner specified in CreateSdfDownloadTaskRequest.
        # Corresponds to the JSON property `mediaProductIds`
        # @return [Array<Fixnum>]
        attr_accessor :media_product_ids
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @ad_group_ad_ids = args[:ad_group_ad_ids] if args.key?(:ad_group_ad_ids)
          @ad_group_ids = args[:ad_group_ids] if args.key?(:ad_group_ids)
          @campaign_ids = args[:campaign_ids] if args.key?(:campaign_ids)
          @insertion_order_ids = args[:insertion_order_ids] if args.key?(:insertion_order_ids)
          @line_item_ids = args[:line_item_ids] if args.key?(:line_item_ids)
          @media_product_ids = args[:media_product_ids] if args.key?(:media_product_ids)
        end
      end
      
      # A single insertion order.
      class InsertionOrder
        include Google::Apis::Core::Hashable
      
        # Output only. The unique ID of the advertiser the insertion order belongs to.
        # Corresponds to the JSON property `advertiserId`
        # @return [Fixnum]
        attr_accessor :advertiser_id
      
        # Settings that control the bid strategy. Bid strategy determines the bid price.
        # Corresponds to the JSON property `bidStrategy`
        # @return [Google::Apis::DisplayvideoV1::BiddingStrategy]
        attr_accessor :bid_strategy
      
        # Settings that control how insertion order budget is allocated.
        # Corresponds to the JSON property `budget`
        # @return [Google::Apis::DisplayvideoV1::InsertionOrderBudget]
        attr_accessor :budget
      
        # Required. Immutable. The unique ID of the campaign that the insertion order
        # belongs to.
        # Corresponds to the JSON property `campaignId`
        # @return [Fixnum]
        attr_accessor :campaign_id
      
        # Required. The display name of the insertion order. Must be UTF-8 encoded with
        # a maximum size of 240 bytes.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # Required. Controls whether or not the insertion order can spend its budget and
        # bid on inventory. * For CreateInsertionOrder method, only `ENTITY_STATUS_DRAFT`
        # is allowed. To activate an insertion order, use UpdateInsertionOrder method
        # and update the status to `ENTITY_STATUS_ACTIVE` after creation. * An insertion
        # order cannot be changed back to `ENTITY_STATUS_DRAFT` status from any other
        # status. * An insertion order cannot be set to `ENTITY_STATUS_ACTIVE` if its
        # parent campaign is not active.
        # Corresponds to the JSON property `entityStatus`
        # @return [String]
        attr_accessor :entity_status
      
        # Settings that control the number of times a user may be shown with the same ad
        # during a given time period.
        # Corresponds to the JSON property `frequencyCap`
        # @return [Google::Apis::DisplayvideoV1::FrequencyCap]
        attr_accessor :frequency_cap
      
        # Output only. The unique ID of the insertion order. Assigned by the system.
        # Corresponds to the JSON property `insertionOrderId`
        # @return [Fixnum]
        attr_accessor :insertion_order_id
      
        # Integration details of an entry.
        # Corresponds to the JSON property `integrationDetails`
        # @return [Google::Apis::DisplayvideoV1::IntegrationDetails]
        attr_accessor :integration_details
      
        # Output only. The resource name of the insertion order.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Settings that control the rate at which a budget is spent.
        # Corresponds to the JSON property `pacing`
        # @return [Google::Apis::DisplayvideoV1::Pacing]
        attr_accessor :pacing
      
        # The partner costs associated with the insertion order. If absent or empty in
        # CreateInsertionOrder method, the newly created insertion order will inherit
        # partner costs from the partner settings.
        # Corresponds to the JSON property `partnerCosts`
        # @return [Array<Google::Apis::DisplayvideoV1::PartnerCost>]
        attr_accessor :partner_costs
      
        # Settings that control the performance goal of a campaign or insertion order.
        # Corresponds to the JSON property `performanceGoal`
        # @return [Google::Apis::DisplayvideoV1::PerformanceGoal]
        attr_accessor :performance_goal
      
        # Output only. The timestamp when the insertion order was last updated. Assigned
        # by the system.
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @advertiser_id = args[:advertiser_id] if args.key?(:advertiser_id)
          @bid_strategy = args[:bid_strategy] if args.key?(:bid_strategy)
          @budget = args[:budget] if args.key?(:budget)
          @campaign_id = args[:campaign_id] if args.key?(:campaign_id)
          @display_name = args[:display_name] if args.key?(:display_name)
          @entity_status = args[:entity_status] if args.key?(:entity_status)
          @frequency_cap = args[:frequency_cap] if args.key?(:frequency_cap)
          @insertion_order_id = args[:insertion_order_id] if args.key?(:insertion_order_id)
          @integration_details = args[:integration_details] if args.key?(:integration_details)
          @name = args[:name] if args.key?(:name)
          @pacing = args[:pacing] if args.key?(:pacing)
          @partner_costs = args[:partner_costs] if args.key?(:partner_costs)
          @performance_goal = args[:performance_goal] if args.key?(:performance_goal)
          @update_time = args[:update_time] if args.key?(:update_time)
        end
      end
      
      # Settings that control how insertion order budget is allocated.
      class InsertionOrderBudget
        include Google::Apis::Core::Hashable
      
        # The type of automation used to manage bid and budget for the insertion order.
        # If this field is unspecified in creation, the value defaults to `
        # INSERTION_ORDER_AUTOMATION_TYPE_NONE`.
        # Corresponds to the JSON property `automationType`
        # @return [String]
        attr_accessor :automation_type
      
        # Required. The list of budget segments. Use a budget segment to specify a
        # specific budget for a given period of time an insertion order is running.
        # Corresponds to the JSON property `budgetSegments`
        # @return [Array<Google::Apis::DisplayvideoV1::InsertionOrderBudgetSegment>]
        attr_accessor :budget_segments
      
        # Required. Immutable. The budget unit specifies whether the budget is currency
        # based or impression based.
        # Corresponds to the JSON property `budgetUnit`
        # @return [String]
        attr_accessor :budget_unit
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @automation_type = args[:automation_type] if args.key?(:automation_type)
          @budget_segments = args[:budget_segments] if args.key?(:budget_segments)
          @budget_unit = args[:budget_unit] if args.key?(:budget_unit)
        end
      end
      
      # Settings that control the budget of a single budget segment.
      class InsertionOrderBudgetSegment
        include Google::Apis::Core::Hashable
      
        # Required. The budget amount the insertion order will spend for the given
        # date_range. The amount is in micros. Must be greater than 0. For example,
        # 500000000 represents 500 standard units of the currency.
        # Corresponds to the JSON property `budgetAmountMicros`
        # @return [Fixnum]
        attr_accessor :budget_amount_micros
      
        # The ID of the campaign budget linked to this insertion order budget segment.
        # Corresponds to the JSON property `campaignBudgetId`
        # @return [Fixnum]
        attr_accessor :campaign_budget_id
      
        # A date range.
        # Corresponds to the JSON property `dateRange`
        # @return [Google::Apis::DisplayvideoV1::DateRange]
        attr_accessor :date_range
      
        # The budget segment description. It can be used to enter Purchase Order
        # information for each budget segment and have that information printed on the
        # invoices. Must be UTF-8 encoded with a length of no more than 80 characters.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @budget_amount_micros = args[:budget_amount_micros] if args.key?(:budget_amount_micros)
          @campaign_budget_id = args[:campaign_budget_id] if args.key?(:campaign_budget_id)
          @date_range = args[:date_range] if args.key?(:date_range)
          @description = args[:description] if args.key?(:description)
        end
      end
      
      # Details of Integral Ad Science settings.
      class IntegralAdScience
        include Google::Apis::Core::Hashable
      
        # The custom segment ID provided by Integral Ad Science. The ID must be between `
        # 1000001` and `1999999`, inclusive.
        # Corresponds to the JSON property `customSegmentId`
        # @return [Array<Fixnum>]
        attr_accessor :custom_segment_id
      
        # Display Viewability section (applicable to display line items only).
        # Corresponds to the JSON property `displayViewability`
        # @return [String]
        attr_accessor :display_viewability
      
        # Brand Safety - **Unrateable**.
        # Corresponds to the JSON property `excludeUnrateable`
        # @return [Boolean]
        attr_accessor :exclude_unrateable
        alias_method :exclude_unrateable?, :exclude_unrateable
      
        # Ad Fraud settings.
        # Corresponds to the JSON property `excludedAdFraudRisk`
        # @return [String]
        attr_accessor :excluded_ad_fraud_risk
      
        # Brand Safety - **Adult content**.
        # Corresponds to the JSON property `excludedAdultRisk`
        # @return [String]
        attr_accessor :excluded_adult_risk
      
        # Brand Safety - **Alcohol**.
        # Corresponds to the JSON property `excludedAlcoholRisk`
        # @return [String]
        attr_accessor :excluded_alcohol_risk
      
        # Brand Safety - **Drugs**.
        # Corresponds to the JSON property `excludedDrugsRisk`
        # @return [String]
        attr_accessor :excluded_drugs_risk
      
        # Brand Safety - **Gambling**.
        # Corresponds to the JSON property `excludedGamblingRisk`
        # @return [String]
        attr_accessor :excluded_gambling_risk
      
        # Brand Safety - **Hate speech**.
        # Corresponds to the JSON property `excludedHateSpeechRisk`
        # @return [String]
        attr_accessor :excluded_hate_speech_risk
      
        # Brand Safety - **Illegal downloads**.
        # Corresponds to the JSON property `excludedIllegalDownloadsRisk`
        # @return [String]
        attr_accessor :excluded_illegal_downloads_risk
      
        # Brand Safety - **Offensive language**.
        # Corresponds to the JSON property `excludedOffensiveLanguageRisk`
        # @return [String]
        attr_accessor :excluded_offensive_language_risk
      
        # Brand Safety - **Violence**.
        # Corresponds to the JSON property `excludedViolenceRisk`
        # @return [String]
        attr_accessor :excluded_violence_risk
      
        # True advertising quality (applicable to Display line items only).
        # Corresponds to the JSON property `traqScoreOption`
        # @return [String]
        attr_accessor :traq_score_option
      
        # Video Viewability Section (applicable to video line items only).
        # Corresponds to the JSON property `videoViewability`
        # @return [String]
        attr_accessor :video_viewability
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @custom_segment_id = args[:custom_segment_id] if args.key?(:custom_segment_id)
          @display_viewability = args[:display_viewability] if args.key?(:display_viewability)
          @exclude_unrateable = args[:exclude_unrateable] if args.key?(:exclude_unrateable)
          @excluded_ad_fraud_risk = args[:excluded_ad_fraud_risk] if args.key?(:excluded_ad_fraud_risk)
          @excluded_adult_risk = args[:excluded_adult_risk] if args.key?(:excluded_adult_risk)
          @excluded_alcohol_risk = args[:excluded_alcohol_risk] if args.key?(:excluded_alcohol_risk)
          @excluded_drugs_risk = args[:excluded_drugs_risk] if args.key?(:excluded_drugs_risk)
          @excluded_gambling_risk = args[:excluded_gambling_risk] if args.key?(:excluded_gambling_risk)
          @excluded_hate_speech_risk = args[:excluded_hate_speech_risk] if args.key?(:excluded_hate_speech_risk)
          @excluded_illegal_downloads_risk = args[:excluded_illegal_downloads_risk] if args.key?(:excluded_illegal_downloads_risk)
          @excluded_offensive_language_risk = args[:excluded_offensive_language_risk] if args.key?(:excluded_offensive_language_risk)
          @excluded_violence_risk = args[:excluded_violence_risk] if args.key?(:excluded_violence_risk)
          @traq_score_option = args[:traq_score_option] if args.key?(:traq_score_option)
          @video_viewability = args[:video_viewability] if args.key?(:video_viewability)
        end
      end
      
      # Integration details of an entry.
      class IntegrationDetails
        include Google::Apis::Core::Hashable
      
        # Additional details of the entry in string format. Must be UTF-8 encoded with a
        # length of no more than 1000 characters.
        # Corresponds to the JSON property `details`
        # @return [String]
        attr_accessor :details
      
        # An external identifier to be associated with the entry. The integration code
        # will show up together with the entry in many places in the system, for example,
        # reporting. Must be UTF-8 encoded with a length of no more than 500 characters.
        # Corresponds to the JSON property `integrationCode`
        # @return [String]
        attr_accessor :integration_code
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @details = args[:details] if args.key?(:details)
          @integration_code = args[:integration_code] if args.key?(:integration_code)
        end
      end
      
      # An inventory source.
      class InventorySource
        include Google::Apis::Core::Hashable
      
        # Whether the inventory source has a guaranteed or non-guaranteed delivery.
        # Corresponds to the JSON property `commitment`
        # @return [String]
        attr_accessor :commitment
      
        # The creative requirements of the inventory source. Not applicable for auction
        # packages.
        # Corresponds to the JSON property `creativeConfigs`
        # @return [Array<Google::Apis::DisplayvideoV1::CreativeConfig>]
        attr_accessor :creative_configs
      
        # The ID in the exchange space that uniquely identifies the inventory source.
        # Must be unique across buyers within each exchange but not necessarily unique
        # across exchanges.
        # Corresponds to the JSON property `dealId`
        # @return [String]
        attr_accessor :deal_id
      
        # The delivery method of the inventory source. * For non-guaranteed inventory
        # sources, the only acceptable value is `
        # INVENTORY_SOURCE_DELIVERY_METHOD_PROGRAMMATIC`. * For guaranteed inventory
        # sources, acceptable values are `INVENTORY_SOURCE_DELIVERY_METHOD_TAG` and `
        # INVENTORY_SOURCE_DELIVERY_METHOD_PROGRAMMATIC`.
        # Corresponds to the JSON property `deliveryMethod`
        # @return [String]
        attr_accessor :delivery_method
      
        # The display name of the inventory source. Must be UTF-8 encoded with a maximum
        # size of 240 bytes.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # The exchange to which the inventory source belongs.
        # Corresponds to the JSON property `exchange`
        # @return [String]
        attr_accessor :exchange
      
        # Output only. The unique ID of the inventory source. Assigned by the system.
        # Corresponds to the JSON property `inventorySourceId`
        # @return [Fixnum]
        attr_accessor :inventory_source_id
      
        # Denotes the type of the inventory source.
        # Corresponds to the JSON property `inventorySourceType`
        # @return [String]
        attr_accessor :inventory_source_type
      
        # Output only. The resource name of the inventory source.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # The publisher/seller name of the inventory source.
        # Corresponds to the JSON property `publisherName`
        # @return [String]
        attr_accessor :publisher_name
      
        # The rate related settings of the inventory source.
        # Corresponds to the JSON property `rateDetails`
        # @return [Google::Apis::DisplayvideoV1::RateDetails]
        attr_accessor :rate_details
      
        # The status related settings of the inventory source.
        # Corresponds to the JSON property `status`
        # @return [Google::Apis::DisplayvideoV1::InventorySourceStatus]
        attr_accessor :status
      
        # A time range.
        # Corresponds to the JSON property `timeRange`
        # @return [Google::Apis::DisplayvideoV1::TimeRange]
        attr_accessor :time_range
      
        # Output only. The timestamp when the inventory source was last updated.
        # Assigned by the system.
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @commitment = args[:commitment] if args.key?(:commitment)
          @creative_configs = args[:creative_configs] if args.key?(:creative_configs)
          @deal_id = args[:deal_id] if args.key?(:deal_id)
          @delivery_method = args[:delivery_method] if args.key?(:delivery_method)
          @display_name = args[:display_name] if args.key?(:display_name)
          @exchange = args[:exchange] if args.key?(:exchange)
          @inventory_source_id = args[:inventory_source_id] if args.key?(:inventory_source_id)
          @inventory_source_type = args[:inventory_source_type] if args.key?(:inventory_source_type)
          @name = args[:name] if args.key?(:name)
          @publisher_name = args[:publisher_name] if args.key?(:publisher_name)
          @rate_details = args[:rate_details] if args.key?(:rate_details)
          @status = args[:status] if args.key?(:status)
          @time_range = args[:time_range] if args.key?(:time_range)
          @update_time = args[:update_time] if args.key?(:update_time)
        end
      end
      
      # Targeting details for inventory source. This will be populated in the details
      # field of an AssignedTargetingOption when targeting_type is `
      # TARGETING_TYPE_INVENTORY_SOURCE`.
      class InventorySourceAssignedTargetingOptionDetails
        include Google::Apis::Core::Hashable
      
        # Required. ID of the inventory source. Should refer to the inventory_source_id
        # field of an InventorySource resource.
        # Corresponds to the JSON property `inventorySourceId`
        # @return [Fixnum]
        attr_accessor :inventory_source_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @inventory_source_id = args[:inventory_source_id] if args.key?(:inventory_source_id)
        end
      end
      
      # The configuration for display creatives.
      class InventorySourceDisplayCreativeConfig
        include Google::Apis::Core::Hashable
      
        # Dimensions.
        # Corresponds to the JSON property `creativeSize`
        # @return [Google::Apis::DisplayvideoV1::Dimensions]
        attr_accessor :creative_size
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @creative_size = args[:creative_size] if args.key?(:creative_size)
        end
      end
      
      # A filtering option for filtering on Inventory Source entities.
      class InventorySourceFilter
        include Google::Apis::Core::Hashable
      
        # Inventory Sources to download by ID. All IDs must belong to the same
        # Advertiser or Partner specified in CreateSdfDownloadTaskRequest. Leave empty
        # to download all Inventory Sources for the selected Advertiser or Partner.
        # Corresponds to the JSON property `inventorySourceIds`
        # @return [Array<Fixnum>]
        attr_accessor :inventory_source_ids
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @inventory_source_ids = args[:inventory_source_ids] if args.key?(:inventory_source_ids)
        end
      end
      
      # A collection of targetable inventory sources.
      class InventorySourceGroup
        include Google::Apis::Core::Hashable
      
        # Required. The display name of the inventory source group. Must be UTF-8
        # encoded with a maximum size of 240 bytes.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # Output only. The unique ID of the inventory source group. Assigned by the
        # system.
        # Corresponds to the JSON property `inventorySourceGroupId`
        # @return [Fixnum]
        attr_accessor :inventory_source_group_id
      
        # Output only. The resource name of the inventory source group.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @display_name = args[:display_name] if args.key?(:display_name)
          @inventory_source_group_id = args[:inventory_source_group_id] if args.key?(:inventory_source_group_id)
          @name = args[:name] if args.key?(:name)
        end
      end
      
      # Targeting details for inventory source group. This will be populated in the
      # details field of an AssignedTargetingOption when targeting_type is `
      # TARGETING_TYPE_INVENTORY_SOURCE_GROUP`.
      class InventorySourceGroupAssignedTargetingOptionDetails
        include Google::Apis::Core::Hashable
      
        # Required. ID of the inventory source group. Should refer to the
        # inventory_source_group_id field of an InventorySourceGroup resource.
        # Corresponds to the JSON property `inventorySourceGroupId`
        # @return [Fixnum]
        attr_accessor :inventory_source_group_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @inventory_source_group_id = args[:inventory_source_group_id] if args.key?(:inventory_source_group_id)
        end
      end
      
      # The status related settings of the inventory source.
      class InventorySourceStatus
        include Google::Apis::Core::Hashable
      
        # Output only. The configuration status of the inventory source. Only applicable
        # for guaranteed inventory sources. Acceptable values are `
        # INVENTORY_SOURCE_CONFIG_STATUS_PENDING` and `
        # INVENTORY_SOURCE_CONFIG_STATUS_COMPLETED`. An inventory source must be
        # configured (fill in the required fields, choose creatives, and select a
        # default campaign) before it can serve.
        # Corresponds to the JSON property `configStatus`
        # @return [String]
        attr_accessor :config_status
      
        # The user-provided reason for pausing this inventory source. Must not exceed
        # 100 characters. Only applicable when entity_status is set to `
        # ENTITY_STATUS_PAUSED`.
        # Corresponds to the JSON property `entityPauseReason`
        # @return [String]
        attr_accessor :entity_pause_reason
      
        # Whether or not the inventory source is servable. Acceptable values are `
        # ENTITY_STATUS_ACTIVE`, `ENTITY_STATUS_ARCHIVED`, and `ENTITY_STATUS_PAUSED`.
        # Default value is `ENTITY_STATUS_ACTIVE`.
        # Corresponds to the JSON property `entityStatus`
        # @return [String]
        attr_accessor :entity_status
      
        # Output only. The seller-provided reason for pausing this inventory source.
        # Only applicable for inventory sources synced directly from the publishers and
        # when seller_status is set to `ENTITY_STATUS_PAUSED`.
        # Corresponds to the JSON property `sellerPauseReason`
        # @return [String]
        attr_accessor :seller_pause_reason
      
        # Output only. The status set by the seller for the inventory source. Only
        # applicable for inventory sources synced directly from the publishers.
        # Acceptable values are `ENTITY_STATUS_ACTIVE` and `ENTITY_STATUS_PAUSED`.
        # Corresponds to the JSON property `sellerStatus`
        # @return [String]
        attr_accessor :seller_status
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @config_status = args[:config_status] if args.key?(:config_status)
          @entity_pause_reason = args[:entity_pause_reason] if args.key?(:entity_pause_reason)
          @entity_status = args[:entity_status] if args.key?(:entity_status)
          @seller_pause_reason = args[:seller_pause_reason] if args.key?(:seller_pause_reason)
          @seller_status = args[:seller_status] if args.key?(:seller_status)
        end
      end
      
      # The configuration for video creatives.
      class InventorySourceVideoCreativeConfig
        include Google::Apis::Core::Hashable
      
        # The duration requirements for the video creatives that can be assigned to the
        # inventory source.
        # Corresponds to the JSON property `duration`
        # @return [String]
        attr_accessor :duration
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @duration = args[:duration] if args.key?(:duration)
        end
      end
      
      # Details for assigned keyword targeting option. This will be populated in the
      # details field of an AssignedTargetingOption when targeting_type is `
      # TARGETING_TYPE_KEYWORD`.
      class KeywordAssignedTargetingOptionDetails
        include Google::Apis::Core::Hashable
      
        # Required. The keyword, for example `car insurance`. Positive keyword cannot be
        # offensive word. Must be UTF-8 encoded with a maximum size of 255 bytes.
        # Maximum number of characters is 80. Maximum number of words is 10.
        # Corresponds to the JSON property `keyword`
        # @return [String]
        attr_accessor :keyword
      
        # Indicates if this option is being negatively targeted.
        # Corresponds to the JSON property `negative`
        # @return [Boolean]
        attr_accessor :negative
        alias_method :negative?, :negative
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @keyword = args[:keyword] if args.key?(:keyword)
          @negative = args[:negative] if args.key?(:negative)
        end
      end
      
      # Details for assigned language targeting option. This will be populated in the
      # details field of an AssignedTargetingOption when targeting_type is `
      # TARGETING_TYPE_LANGUAGE`.
      class LanguageAssignedTargetingOptionDetails
        include Google::Apis::Core::Hashable
      
        # Output only. The display name of the language (e.g., "French").
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # Indicates if this option is being negatively targeted. All assigned language
        # targeting options on the same line item must have the same value for this
        # field.
        # Corresponds to the JSON property `negative`
        # @return [Boolean]
        attr_accessor :negative
        alias_method :negative?, :negative
      
        # Required. The targeting_option_id of a TargetingOption of type `
        # TARGETING_TYPE_LANGUAGE`.
        # Corresponds to the JSON property `targetingOptionId`
        # @return [String]
        attr_accessor :targeting_option_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @display_name = args[:display_name] if args.key?(:display_name)
          @negative = args[:negative] if args.key?(:negative)
          @targeting_option_id = args[:targeting_option_id] if args.key?(:targeting_option_id)
        end
      end
      
      # Represents a targetable language. This will be populated in the
      # language_details field when targeting_type is `TARGETING_TYPE_LANGUAGE`.
      class LanguageTargetingOptionDetails
        include Google::Apis::Core::Hashable
      
        # Output only. The display name of the language (e.g., "French").
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @display_name = args[:display_name] if args.key?(:display_name)
        end
      end
      
      # A single line item. Next id: 24
      class LineItem
        include Google::Apis::Core::Hashable
      
        # Output only. The unique ID of the advertiser the line item belongs to.
        # Corresponds to the JSON property `advertiserId`
        # @return [Fixnum]
        attr_accessor :advertiser_id
      
        # Settings that control the bid strategy. Bid strategy determines the bid price.
        # Corresponds to the JSON property `bidStrategy`
        # @return [Google::Apis::DisplayvideoV1::BiddingStrategy]
        attr_accessor :bid_strategy
      
        # Settings that control how budget is allocated.
        # Corresponds to the JSON property `budget`
        # @return [Google::Apis::DisplayvideoV1::LineItemBudget]
        attr_accessor :budget
      
        # Output only. The unique ID of the campaign that the line item belongs to.
        # Corresponds to the JSON property `campaignId`
        # @return [Fixnum]
        attr_accessor :campaign_id
      
        # Settings that control how conversions are counted. All post-click conversions
        # will be counted. A percentage value can be set for post-view conversions
        # counting.
        # Corresponds to the JSON property `conversionCounting`
        # @return [Google::Apis::DisplayvideoV1::ConversionCountingConfig]
        attr_accessor :conversion_counting
      
        # The IDs of the creatives associated with the line item.
        # Corresponds to the JSON property `creativeIds`
        # @return [Array<Fixnum>]
        attr_accessor :creative_ids
      
        # Required. The display name of the line item. Must be UTF-8 encoded with a
        # maximum size of 240 bytes.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # Required. Controls whether or not the line item can spend its budget and bid
        # on inventory. * For CreateLineItem method, only `ENTITY_STATUS_DRAFT` is
        # allowed. To activate a line item, use UpdateLineItem method and update the
        # status to `ENTITY_STATUS_ACTIVE` after creation. * A line item cannot be
        # changed back to `ENTITY_STATUS_DRAFT` status from any other status. * If the
        # line item's parent insertion order is not active, the line item can't spend
        # its budget even if its own status is `ENTITY_STATUS_ACTIVE`.
        # Corresponds to the JSON property `entityStatus`
        # @return [String]
        attr_accessor :entity_status
      
        # Settings that control the active duration of a line item.
        # Corresponds to the JSON property `flight`
        # @return [Google::Apis::DisplayvideoV1::LineItemFlight]
        attr_accessor :flight
      
        # Settings that control the number of times a user may be shown with the same ad
        # during a given time period.
        # Corresponds to the JSON property `frequencyCap`
        # @return [Google::Apis::DisplayvideoV1::FrequencyCap]
        attr_accessor :frequency_cap
      
        # Required. Immutable. The unique ID of the insertion order that the line item
        # belongs to.
        # Corresponds to the JSON property `insertionOrderId`
        # @return [Fixnum]
        attr_accessor :insertion_order_id
      
        # Integration details of an entry.
        # Corresponds to the JSON property `integrationDetails`
        # @return [Google::Apis::DisplayvideoV1::IntegrationDetails]
        attr_accessor :integration_details
      
        # The IDs of the private inventory sources assigned to the line item.
        # Corresponds to the JSON property `inventorySourceIds`
        # @return [Array<Fixnum>]
        attr_accessor :inventory_source_ids
      
        # Output only. The unique ID of the line item. Assigned by the system.
        # Corresponds to the JSON property `lineItemId`
        # @return [Fixnum]
        attr_accessor :line_item_id
      
        # Required. Immutable. The type of the line item.
        # Corresponds to the JSON property `lineItemType`
        # @return [String]
        attr_accessor :line_item_type
      
        # Output only. The resource name of the line item.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Settings that control the rate at which a budget is spent.
        # Corresponds to the JSON property `pacing`
        # @return [Google::Apis::DisplayvideoV1::Pacing]
        attr_accessor :pacing
      
        # The partner costs associated with the line item. If absent or empty in
        # CreateLineItem method, the newly created line item will inherit partner costs
        # from its parent insertion order.
        # Corresponds to the JSON property `partnerCosts`
        # @return [Array<Google::Apis::DisplayvideoV1::PartnerCost>]
        attr_accessor :partner_costs
      
        # Settings that control how partner revenue is calculated.
        # Corresponds to the JSON property `partnerRevenueModel`
        # @return [Google::Apis::DisplayvideoV1::PartnerRevenueModel]
        attr_accessor :partner_revenue_model
      
        # Settings that control the targeting expansion of the line item. Targeting
        # expansion allows the line item to reach a larger audience based on the
        # original audience list and the targeting expansion level.
        # Corresponds to the JSON property `targetingExpansion`
        # @return [Google::Apis::DisplayvideoV1::TargetingExpansionConfig]
        attr_accessor :targeting_expansion
      
        # Output only. The timestamp when the line item was last updated. Assigned by
        # the system.
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        # Output only. The warning messages generated by the line item. These warnings
        # do not block saving the line item, but some may block the line item from
        # running.
        # Corresponds to the JSON property `warningMessages`
        # @return [Array<String>]
        attr_accessor :warning_messages
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @advertiser_id = args[:advertiser_id] if args.key?(:advertiser_id)
          @bid_strategy = args[:bid_strategy] if args.key?(:bid_strategy)
          @budget = args[:budget] if args.key?(:budget)
          @campaign_id = args[:campaign_id] if args.key?(:campaign_id)
          @conversion_counting = args[:conversion_counting] if args.key?(:conversion_counting)
          @creative_ids = args[:creative_ids] if args.key?(:creative_ids)
          @display_name = args[:display_name] if args.key?(:display_name)
          @entity_status = args[:entity_status] if args.key?(:entity_status)
          @flight = args[:flight] if args.key?(:flight)
          @frequency_cap = args[:frequency_cap] if args.key?(:frequency_cap)
          @insertion_order_id = args[:insertion_order_id] if args.key?(:insertion_order_id)
          @integration_details = args[:integration_details] if args.key?(:integration_details)
          @inventory_source_ids = args[:inventory_source_ids] if args.key?(:inventory_source_ids)
          @line_item_id = args[:line_item_id] if args.key?(:line_item_id)
          @line_item_type = args[:line_item_type] if args.key?(:line_item_type)
          @name = args[:name] if args.key?(:name)
          @pacing = args[:pacing] if args.key?(:pacing)
          @partner_costs = args[:partner_costs] if args.key?(:partner_costs)
          @partner_revenue_model = args[:partner_revenue_model] if args.key?(:partner_revenue_model)
          @targeting_expansion = args[:targeting_expansion] if args.key?(:targeting_expansion)
          @update_time = args[:update_time] if args.key?(:update_time)
          @warning_messages = args[:warning_messages] if args.key?(:warning_messages)
        end
      end
      
      # Settings that control how budget is allocated.
      class LineItemBudget
        include Google::Apis::Core::Hashable
      
        # Required. The type of the budget allocation. `
        # LINE_ITEM_BUDGET_ALLOCATION_TYPE_AUTOMATIC` is only applicable when automatic
        # budget allocation is enabled for the parent insertion order.
        # Corresponds to the JSON property `budgetAllocationType`
        # @return [String]
        attr_accessor :budget_allocation_type
      
        # Output only. The budget unit specifies whether the budget is currency based or
        # impression based. This value is inherited from the parent insertion order.
        # Corresponds to the JSON property `budgetUnit`
        # @return [String]
        attr_accessor :budget_unit
      
        # The maximum budget amount the line item will spend. Must be greater than 0.
        # When budget_allocation_type is: * `LINE_ITEM_BUDGET_ALLOCATION_TYPE_AUTOMATIC`,
        # this field is immutable and is set by the system. * `
        # LINE_ITEM_BUDGET_ALLOCATION_TYPE_FIXED`, if budget_unit is: - `
        # BUDGET_UNIT_CURRENCY`, this field represents maximum budget amount to spend,
        # in micros of the advertiser's currency. For example, 1500000 represents 1.5
        # standard units of the currency. - `BUDGET_UNIT_IMPRESSIONS`, this field
        # represents the maximum number of impressions to serve. * `
        # LINE_ITEM_BUDGET_ALLOCATION_TYPE_UNLIMITED`, this field is not applicable and
        # will be ignored by the system.
        # Corresponds to the JSON property `maxAmount`
        # @return [Fixnum]
        attr_accessor :max_amount
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @budget_allocation_type = args[:budget_allocation_type] if args.key?(:budget_allocation_type)
          @budget_unit = args[:budget_unit] if args.key?(:budget_unit)
          @max_amount = args[:max_amount] if args.key?(:max_amount)
        end
      end
      
      # Settings that control the active duration of a line item.
      class LineItemFlight
        include Google::Apis::Core::Hashable
      
        # A date range.
        # Corresponds to the JSON property `dateRange`
        # @return [Google::Apis::DisplayvideoV1::DateRange]
        attr_accessor :date_range
      
        # Required. The type of the line item's flight dates.
        # Corresponds to the JSON property `flightDateType`
        # @return [String]
        attr_accessor :flight_date_type
      
        # The ID of the manual trigger associated with the line item. * Required when
        # flight_date_type is `LINE_ITEM_FLIGHT_DATE_TYPE_TRIGGER`. Must not be set
        # otherwise. * When set, the line item's flight dates are inherited from its
        # parent insertion order. * Active line items will spend when the selected
        # trigger is activated within the parent insertion order's flight dates.
        # Corresponds to the JSON property `triggerId`
        # @return [Fixnum]
        attr_accessor :trigger_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @date_range = args[:date_range] if args.key?(:date_range)
          @flight_date_type = args[:flight_date_type] if args.key?(:flight_date_type)
          @trigger_id = args[:trigger_id] if args.key?(:trigger_id)
        end
      end
      
      # Response message for ListAdvertiserAssignedTargetingOptions.
      class ListAdvertiserAssignedTargetingOptionsResponse
        include Google::Apis::Core::Hashable
      
        # The list of assigned targeting options. This list will be absent if empty.
        # Corresponds to the JSON property `assignedTargetingOptions`
        # @return [Array<Google::Apis::DisplayvideoV1::AssignedTargetingOption>]
        attr_accessor :assigned_targeting_options
      
        # A token identifying the next page of results. This value should be specified
        # as the pageToken in a subsequent ListAdvertiserAssignedTargetingOptionsRequest
        # to fetch the next page of results. This token will be absent if there are no
        # more assigned_targeting_options to return.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @assigned_targeting_options = args[:assigned_targeting_options] if args.key?(:assigned_targeting_options)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # 
      class ListAdvertisersResponse
        include Google::Apis::Core::Hashable
      
        # The list of advertisers. This list will be absent if empty.
        # Corresponds to the JSON property `advertisers`
        # @return [Array<Google::Apis::DisplayvideoV1::Advertiser>]
        attr_accessor :advertisers
      
        # A token to retrieve the next page of results. Pass this value in the
        # page_token field in the subsequent call to `ListAdvertisers` method to
        # retrieve the next page of results.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @advertisers = args[:advertisers] if args.key?(:advertisers)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # Response message for AssignedInventorySourceService.
      # ListAssignedInventorySources.
      class ListAssignedInventorySourcesResponse
        include Google::Apis::Core::Hashable
      
        # The list of assigned inventory sources. This list will be absent if empty.
        # Corresponds to the JSON property `assignedInventorySources`
        # @return [Array<Google::Apis::DisplayvideoV1::AssignedInventorySource>]
        attr_accessor :assigned_inventory_sources
      
        # A token to retrieve the next page of results. Pass this value in the
        # page_token field in the subsequent call to `ListAssignedInventorySources`
        # method to retrieve the next page of results.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @assigned_inventory_sources = args[:assigned_inventory_sources] if args.key?(:assigned_inventory_sources)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # Response message for AssignedLocationService.ListAssignedLocations.
      class ListAssignedLocationsResponse
        include Google::Apis::Core::Hashable
      
        # The list of assigned locations. This list will be absent if empty.
        # Corresponds to the JSON property `assignedLocations`
        # @return [Array<Google::Apis::DisplayvideoV1::AssignedLocation>]
        attr_accessor :assigned_locations
      
        # A token to retrieve the next page of results. Pass this value in the
        # page_token field in the subsequent call to `ListAssignedLocations` method to
        # retrieve the next page of results.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @assigned_locations = args[:assigned_locations] if args.key?(:assigned_locations)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # 
      class ListCampaignsResponse
        include Google::Apis::Core::Hashable
      
        # The list of campaigns. This list will be absent if empty.
        # Corresponds to the JSON property `campaigns`
        # @return [Array<Google::Apis::DisplayvideoV1::Campaign>]
        attr_accessor :campaigns
      
        # A token to retrieve the next page of results. Pass this value in the
        # page_token field in the subsequent call to `ListCampaigns` method to retrieve
        # the next page of results.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @campaigns = args[:campaigns] if args.key?(:campaigns)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # 
      class ListChannelsResponse
        include Google::Apis::Core::Hashable
      
        # The list of channels. This list will be absent if empty.
        # Corresponds to the JSON property `channels`
        # @return [Array<Google::Apis::DisplayvideoV1::Channel>]
        attr_accessor :channels
      
        # A token to retrieve the next page of results. Pass this value in the
        # page_token field in the subsequent call to `ListChannels` method to retrieve
        # the next page of results.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @channels = args[:channels] if args.key?(:channels)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # 
      class ListCombinedAudiencesResponse
        include Google::Apis::Core::Hashable
      
        # The list of combined audiences. This list will be absent if empty.
        # Corresponds to the JSON property `combinedAudiences`
        # @return [Array<Google::Apis::DisplayvideoV1::CombinedAudience>]
        attr_accessor :combined_audiences
      
        # A token to retrieve the next page of results. Pass this value in the
        # page_token field in the subsequent call to `ListCombinedAudiences` method to
        # retrieve the next page of results.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @combined_audiences = args[:combined_audiences] if args.key?(:combined_audiences)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # 
      class ListCreativesResponse
        include Google::Apis::Core::Hashable
      
        # The list of creatives. This list will be absent if empty.
        # Corresponds to the JSON property `creatives`
        # @return [Array<Google::Apis::DisplayvideoV1::Creative>]
        attr_accessor :creatives
      
        # A token to retrieve the next page of results. Pass this value in the
        # page_token field in the subsequent call to `ListCreativesRequest` method to
        # retrieve the next page of results. If this field is null, it means this is the
        # last page.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @creatives = args[:creatives] if args.key?(:creatives)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # 
      class ListCustomBiddingAlgorithmsResponse
        include Google::Apis::Core::Hashable
      
        # The list of custom bidding algorithms. This list will be absent if empty.
        # Corresponds to the JSON property `customBiddingAlgorithms`
        # @return [Array<Google::Apis::DisplayvideoV1::CustomBiddingAlgorithm>]
        attr_accessor :custom_bidding_algorithms
      
        # A token to retrieve the next page of results. Pass this value in the
        # page_token field in the subsequent call to `ListCustomBiddingAlgorithmsRequest`
        # method to retrieve the next page of results. If this field is null, it means
        # this is the last page.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @custom_bidding_algorithms = args[:custom_bidding_algorithms] if args.key?(:custom_bidding_algorithms)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # 
      class ListCustomListsResponse
        include Google::Apis::Core::Hashable
      
        # The list of custom lists. This list will be absent if empty.
        # Corresponds to the JSON property `customLists`
        # @return [Array<Google::Apis::DisplayvideoV1::CustomList>]
        attr_accessor :custom_lists
      
        # A token to retrieve the next page of results. Pass this value in the
        # page_token field in the subsequent call to `ListCustomLists` method to
        # retrieve the next page of results.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @custom_lists = args[:custom_lists] if args.key?(:custom_lists)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # 
      class ListFirstAndThirdPartyAudiencesResponse
        include Google::Apis::Core::Hashable
      
        # The list of first and third party audiences. Audience size properties will not
        # be included. This list will be absent if empty.
        # Corresponds to the JSON property `firstAndThirdPartyAudiences`
        # @return [Array<Google::Apis::DisplayvideoV1::FirstAndThirdPartyAudience>]
        attr_accessor :first_and_third_party_audiences
      
        # A token to retrieve the next page of results. Pass this value in the
        # page_token field in the subsequent call to `ListFirstAndThirdPartyAudiences`
        # method to retrieve the next page of results.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @first_and_third_party_audiences = args[:first_and_third_party_audiences] if args.key?(:first_and_third_party_audiences)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # 
      class ListGoogleAudiencesResponse
        include Google::Apis::Core::Hashable
      
        # The list of Google audiences. This list will be absent if empty.
        # Corresponds to the JSON property `googleAudiences`
        # @return [Array<Google::Apis::DisplayvideoV1::GoogleAudience>]
        attr_accessor :google_audiences
      
        # A token to retrieve the next page of results. Pass this value in the
        # page_token field in the subsequent call to `ListGoogleAudiences` method to
        # retrieve the next page of results.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @google_audiences = args[:google_audiences] if args.key?(:google_audiences)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # 
      class ListInsertionOrdersResponse
        include Google::Apis::Core::Hashable
      
        # The list of insertion orders. This list will be absent if empty.
        # Corresponds to the JSON property `insertionOrders`
        # @return [Array<Google::Apis::DisplayvideoV1::InsertionOrder>]
        attr_accessor :insertion_orders
      
        # A token to retrieve the next page of results. Pass this value in the
        # page_token field in the subsequent call to `ListInsertionOrders` method to
        # retrieve the next page of results.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @insertion_orders = args[:insertion_orders] if args.key?(:insertion_orders)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # Response message for InventorySourceGroupService.ListInventorySourceGroups.
      class ListInventorySourceGroupsResponse
        include Google::Apis::Core::Hashable
      
        # The list of inventory source groups. This list will be absent if empty.
        # Corresponds to the JSON property `inventorySourceGroups`
        # @return [Array<Google::Apis::DisplayvideoV1::InventorySourceGroup>]
        attr_accessor :inventory_source_groups
      
        # A token to retrieve the next page of results. Pass this value in the
        # page_token field in the subsequent call to `ListInventorySourceGroups` method
        # to retrieve the next page of results.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @inventory_source_groups = args[:inventory_source_groups] if args.key?(:inventory_source_groups)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # 
      class ListInventorySourcesResponse
        include Google::Apis::Core::Hashable
      
        # The list of inventory sources. This list will be absent if empty.
        # Corresponds to the JSON property `inventorySources`
        # @return [Array<Google::Apis::DisplayvideoV1::InventorySource>]
        attr_accessor :inventory_sources
      
        # A token to retrieve the next page of results. Pass this value in the
        # page_token field in the subsequent call to `ListInventorySources` method to
        # retrieve the next page of results.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @inventory_sources = args[:inventory_sources] if args.key?(:inventory_sources)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # Response message for ListLineItemAssignedTargetingOptions.
      class ListLineItemAssignedTargetingOptionsResponse
        include Google::Apis::Core::Hashable
      
        # The list of assigned targeting options. This list will be absent if empty.
        # Corresponds to the JSON property `assignedTargetingOptions`
        # @return [Array<Google::Apis::DisplayvideoV1::AssignedTargetingOption>]
        attr_accessor :assigned_targeting_options
      
        # A token identifying the next page of results. This value should be specified
        # as the pageToken in a subsequent ListLineItemAssignedTargetingOptionsRequest
        # to fetch the next page of results. This token will be absent if there are no
        # more assigned_targeting_options to return.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @assigned_targeting_options = args[:assigned_targeting_options] if args.key?(:assigned_targeting_options)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # 
      class ListLineItemsResponse
        include Google::Apis::Core::Hashable
      
        # The list of line items. This list will be absent if empty.
        # Corresponds to the JSON property `lineItems`
        # @return [Array<Google::Apis::DisplayvideoV1::LineItem>]
        attr_accessor :line_items
      
        # A token to retrieve the next page of results. Pass this value in the
        # page_token field in the subsequent call to `ListLineItems` method to retrieve
        # the next page of results.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @line_items = args[:line_items] if args.key?(:line_items)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # 
      class ListLocationListsResponse
        include Google::Apis::Core::Hashable
      
        # The list of location lists. This list will be absent if empty.
        # Corresponds to the JSON property `locationLists`
        # @return [Array<Google::Apis::DisplayvideoV1::LocationList>]
        attr_accessor :location_lists
      
        # A token to retrieve the next page of results. Pass this value in the
        # page_token field in the subsequent call to `ListLocationLists` method to
        # retrieve the next page of results.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @location_lists = args[:location_lists] if args.key?(:location_lists)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # 
      class ListManualTriggersResponse
        include Google::Apis::Core::Hashable
      
        # The list of manual triggers. This list will be absent if empty.
        # Corresponds to the JSON property `manualTriggers`
        # @return [Array<Google::Apis::DisplayvideoV1::ManualTrigger>]
        attr_accessor :manual_triggers
      
        # A token to retrieve the next page of results. Pass this value in the
        # page_token field in the subsequent call to `ListManualTriggers` method to
        # retrieve the next page of results.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @manual_triggers = args[:manual_triggers] if args.key?(:manual_triggers)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # Response message for NegativeKeywordListService.ListNegativeKeywordLists.
      class ListNegativeKeywordListsResponse
        include Google::Apis::Core::Hashable
      
        # The list of negative keyword lists. This list will be absent if empty.
        # Corresponds to the JSON property `negativeKeywordLists`
        # @return [Array<Google::Apis::DisplayvideoV1::NegativeKeywordList>]
        attr_accessor :negative_keyword_lists
      
        # A token to retrieve the next page of results. Pass this value in the
        # page_token field in the subsequent call to `ListNegativeKeywordLists` method
        # to retrieve the next page of results.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @negative_keyword_lists = args[:negative_keyword_lists] if args.key?(:negative_keyword_lists)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # Response message for NegativeKeywordService.ListNegativeKeywords.
      class ListNegativeKeywordsResponse
        include Google::Apis::Core::Hashable
      
        # The list of negative keywords. This list will be absent if empty.
        # Corresponds to the JSON property `negativeKeywords`
        # @return [Array<Google::Apis::DisplayvideoV1::NegativeKeyword>]
        attr_accessor :negative_keywords
      
        # A token to retrieve the next page of results. Pass this value in the
        # page_token field in the subsequent call to `ListNegativeKeywords` method to
        # retrieve the next page of results.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @negative_keywords = args[:negative_keywords] if args.key?(:negative_keywords)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # 
      class ListPartnerAssignedTargetingOptionsResponse
        include Google::Apis::Core::Hashable
      
        # The list of assigned targeting options. This list will be absent if empty.
        # Corresponds to the JSON property `assignedTargetingOptions`
        # @return [Array<Google::Apis::DisplayvideoV1::AssignedTargetingOption>]
        attr_accessor :assigned_targeting_options
      
        # A token identifying the next page of results. This value should be specified
        # as the pageToken in a subsequent ListPartnerAssignedTargetingOptionsRequest to
        # fetch the next page of results. This token will be absent if there are no more
        # assigned_targeting_options to return.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @assigned_targeting_options = args[:assigned_targeting_options] if args.key?(:assigned_targeting_options)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # 
      class ListPartnersResponse
        include Google::Apis::Core::Hashable
      
        # A token to retrieve the next page of results. Pass this value in the
        # page_token field in the subsequent call to `ListPartners` method to retrieve
        # the next page of results.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # The list of partners. This list will be absent if empty.
        # Corresponds to the JSON property `partners`
        # @return [Array<Google::Apis::DisplayvideoV1::Partner>]
        attr_accessor :partners
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @partners = args[:partners] if args.key?(:partners)
        end
      end
      
      # Response message for SiteService.ListSites.
      class ListSitesResponse
        include Google::Apis::Core::Hashable
      
        # A token to retrieve the next page of results. Pass this value in the
        # page_token field in the subsequent call to `ListSites` method to retrieve the
        # next page of results.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # The list of sites. This list will be absent if empty.
        # Corresponds to the JSON property `sites`
        # @return [Array<Google::Apis::DisplayvideoV1::Site>]
        attr_accessor :sites
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @sites = args[:sites] if args.key?(:sites)
        end
      end
      
      # Response message for ListTargetingOptions.
      class ListTargetingOptionsResponse
        include Google::Apis::Core::Hashable
      
        # A token to retrieve the next page of results. Pass this value in the
        # page_token field in the subsequent call to `ListTargetingOptions` method to
        # retrieve the next page of results.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # The list of targeting options. This list will be absent if empty.
        # Corresponds to the JSON property `targetingOptions`
        # @return [Array<Google::Apis::DisplayvideoV1::TargetingOption>]
        attr_accessor :targeting_options
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @targeting_options = args[:targeting_options] if args.key?(:targeting_options)
        end
      end
      
      # 
      class ListUsersResponse
        include Google::Apis::Core::Hashable
      
        # A token to retrieve the next page of results. Pass this value in the
        # page_token field in the subsequent call to `ListUsers` method to retrieve the
        # next page of results. This token will be absent if there are no more results
        # to return.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # The list of users. This list will be absent if empty.
        # Corresponds to the JSON property `users`
        # @return [Array<Google::Apis::DisplayvideoV1::User>]
        attr_accessor :users
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @users = args[:users] if args.key?(:users)
        end
      end
      
      # A list of locations used for targeting.
      class LocationList
        include Google::Apis::Core::Hashable
      
        # Required. Immutable. The unique ID of the advertiser the location list belongs
        # to.
        # Corresponds to the JSON property `advertiserId`
        # @return [Fixnum]
        attr_accessor :advertiser_id
      
        # Required. The display name of the location list. Must be UTF-8 encoded with a
        # maximum size of 240 bytes.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # Output only. The unique ID of the location list. Assigned by the system.
        # Corresponds to the JSON property `locationListId`
        # @return [Fixnum]
        attr_accessor :location_list_id
      
        # Required. Immutable. The type of location. All locations in the list will
        # share this type.
        # Corresponds to the JSON property `locationType`
        # @return [String]
        attr_accessor :location_type
      
        # Output only. The resource name of the location list.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @advertiser_id = args[:advertiser_id] if args.key?(:advertiser_id)
          @display_name = args[:display_name] if args.key?(:display_name)
          @location_list_id = args[:location_list_id] if args.key?(:location_list_id)
          @location_type = args[:location_type] if args.key?(:location_type)
          @name = args[:name] if args.key?(:name)
        end
      end
      
      # Specifies how many days into the past to look when determining whether to
      # record a conversion.
      class LookbackWindow
        include Google::Apis::Core::Hashable
      
        # Lookback window, in days, from the last time a given user clicked on one of
        # your ads.
        # Corresponds to the JSON property `clickDays`
        # @return [Fixnum]
        attr_accessor :click_days
      
        # Lookback window, in days, from the last time a given user viewed one of your
        # ads.
        # Corresponds to the JSON property `impressionDays`
        # @return [Fixnum]
        attr_accessor :impression_days
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @click_days = args[:click_days] if args.key?(:click_days)
          @impression_days = args[:impression_days] if args.key?(:impression_days)
        end
      end
      
      # A single manual trigger in Display & Video 360.
      class ManualTrigger
        include Google::Apis::Core::Hashable
      
        # Required. The maximum duration of each activation in minutes. Must be between
        # 1 and 360 inclusive. After this duration, the trigger will be automatically
        # deactivated.
        # Corresponds to the JSON property `activationDurationMinutes`
        # @return [Fixnum]
        attr_accessor :activation_duration_minutes
      
        # Required. Immutable. The unique ID of the advertiser that the manual trigger
        # belongs to.
        # Corresponds to the JSON property `advertiserId`
        # @return [Fixnum]
        attr_accessor :advertiser_id
      
        # Required. The display name of the manual trigger. Must be UTF-8 encoded with a
        # maximum size of 240 bytes.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # Output only. The timestamp of the trigger's latest activation.
        # Corresponds to the JSON property `latestActivationTime`
        # @return [String]
        attr_accessor :latest_activation_time
      
        # Output only. The resource name of the manual trigger.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Output only. The state of the manual trigger. Will be set to the `INACTIVE`
        # state upon creation.
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        # Output only. The unique ID of the manual trigger.
        # Corresponds to the JSON property `triggerId`
        # @return [Fixnum]
        attr_accessor :trigger_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @activation_duration_minutes = args[:activation_duration_minutes] if args.key?(:activation_duration_minutes)
          @advertiser_id = args[:advertiser_id] if args.key?(:advertiser_id)
          @display_name = args[:display_name] if args.key?(:display_name)
          @latest_activation_time = args[:latest_activation_time] if args.key?(:latest_activation_time)
          @name = args[:name] if args.key?(:name)
          @state = args[:state] if args.key?(:state)
          @trigger_id = args[:trigger_id] if args.key?(:trigger_id)
        end
      end
      
      # A strategy that automatically adjusts the bid to optimize a specified
      # performance goal while spending the full budget.
      class MaximizeSpendBidStrategy
        include Google::Apis::Core::Hashable
      
        # The ID of the Custom Bidding Algorithm used by this strategy. Only applicable
        # when performance_goal_type is set to `
        # BIDDING_STRATEGY_PERFORMANCE_GOAL_TYPE_CUSTOM_ALGO`.
        # Corresponds to the JSON property `customBiddingAlgorithmId`
        # @return [Fixnum]
        attr_accessor :custom_bidding_algorithm_id
      
        # The maximum average CPM that may be bid, in micros of the advertiser's
        # currency. Must be greater than or equal to a billable unit of the given
        # currency. For example, 1500000 represents 1.5 standard units of the currency.
        # Corresponds to the JSON property `maxAverageCpmBidAmountMicros`
        # @return [Fixnum]
        attr_accessor :max_average_cpm_bid_amount_micros
      
        # Required. The type of the performance goal that the bidding strategy tries to
        # minimize while spending the full budget. `
        # BIDDING_STRATEGY_PERFORMANCE_GOAL_TYPE_VIEWABLE_CPM` is not supported for this
        # strategy.
        # Corresponds to the JSON property `performanceGoalType`
        # @return [String]
        attr_accessor :performance_goal_type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @custom_bidding_algorithm_id = args[:custom_bidding_algorithm_id] if args.key?(:custom_bidding_algorithm_id)
          @max_average_cpm_bid_amount_micros = args[:max_average_cpm_bid_amount_micros] if args.key?(:max_average_cpm_bid_amount_micros)
          @performance_goal_type = args[:performance_goal_type] if args.key?(:performance_goal_type)
        end
      end
      
      # Measurement settings of a partner.
      class MeasurementConfig
        include Google::Apis::Core::Hashable
      
        # Whether or not to report DV360 cost to CM360.
        # Corresponds to the JSON property `dv360ToCmCostReportingEnabled`
        # @return [Boolean]
        attr_accessor :dv360_to_cm_cost_reporting_enabled
        alias_method :dv360_to_cm_cost_reporting_enabled?, :dv360_to_cm_cost_reporting_enabled
      
        # Whether or not to include DV360 data in CM360 data transfer reports.
        # Corresponds to the JSON property `dv360ToCmDataSharingEnabled`
        # @return [Boolean]
        attr_accessor :dv360_to_cm_data_sharing_enabled
        alias_method :dv360_to_cm_data_sharing_enabled?, :dv360_to_cm_data_sharing_enabled
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @dv360_to_cm_cost_reporting_enabled = args[:dv360_to_cm_cost_reporting_enabled] if args.key?(:dv360_to_cm_cost_reporting_enabled)
          @dv360_to_cm_data_sharing_enabled = args[:dv360_to_cm_data_sharing_enabled] if args.key?(:dv360_to_cm_data_sharing_enabled)
        end
      end
      
      # Represents an amount of money with its currency type.
      class Money
        include Google::Apis::Core::Hashable
      
        # The three-letter currency code defined in ISO 4217.
        # Corresponds to the JSON property `currencyCode`
        # @return [String]
        attr_accessor :currency_code
      
        # Number of nano (10^-9) units of the amount. The value must be between -999,999,
        # 999 and +999,999,999 inclusive. If `units` is positive, `nanos` must be
        # positive or zero. If `units` is zero, `nanos` can be positive, zero, or
        # negative. If `units` is negative, `nanos` must be negative or zero. For
        # example $-1.75 is represented as `units`=-1 and `nanos`=-750,000,000.
        # Corresponds to the JSON property `nanos`
        # @return [Fixnum]
        attr_accessor :nanos
      
        # The whole units of the amount. For example if `currencyCode` is `"USD"`, then
        # 1 unit is one US dollar.
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
      
      # A negatively targeted keyword that belongs to a negative keyword list.
      class NegativeKeyword
        include Google::Apis::Core::Hashable
      
        # Required. Immutable. The negatively targeted keyword, for example `car
        # insurance`. Must be UTF-8 encoded with a maximum size of 255 bytes. Maximum
        # number of characters is 80. Maximum number of words is 10. Valid characters
        # are restricted to ASCII characters only. The only URL-escaping permitted is
        # for representing whitespace between words. Leading or trailing whitespace is
        # ignored.
        # Corresponds to the JSON property `keywordValue`
        # @return [String]
        attr_accessor :keyword_value
      
        # Output only. The resource name of the negative keyword.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @keyword_value = args[:keyword_value] if args.key?(:keyword_value)
          @name = args[:name] if args.key?(:name)
        end
      end
      
      # A list of negative keywords used for targeting.
      class NegativeKeywordList
        include Google::Apis::Core::Hashable
      
        # Output only. The unique ID of the advertiser the negative keyword list belongs
        # to.
        # Corresponds to the JSON property `advertiserId`
        # @return [Fixnum]
        attr_accessor :advertiser_id
      
        # Required. The display name of the negative keyword list. Must be UTF-8 encoded
        # with a maximum size of 255 bytes.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # Output only. The resource name of the negative keyword list.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Output only. The unique ID of the negative keyword list. Assigned by the
        # system.
        # Corresponds to the JSON property `negativeKeywordListId`
        # @return [Fixnum]
        attr_accessor :negative_keyword_list_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @advertiser_id = args[:advertiser_id] if args.key?(:advertiser_id)
          @display_name = args[:display_name] if args.key?(:display_name)
          @name = args[:name] if args.key?(:name)
          @negative_keyword_list_id = args[:negative_keyword_list_id] if args.key?(:negative_keyword_list_id)
        end
      end
      
      # Targeting details for negative keyword list. This will be populated in the
      # details field of an AssignedTargetingOption when targeting_type is `
      # TARGETING_TYPE_NEGATIVE_KEYWORD_LIST`.
      class NegativeKeywordListAssignedTargetingOptionDetails
        include Google::Apis::Core::Hashable
      
        # Required. ID of the negative keyword list. Should refer to the
        # negative_keyword_list_id field of a NegativeKeywordList resource.
        # Corresponds to the JSON property `negativeKeywordListId`
        # @return [Fixnum]
        attr_accessor :negative_keyword_list_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @negative_keyword_list_id = args[:negative_keyword_list_id] if args.key?(:negative_keyword_list_id)
        end
      end
      
      # OBA Icon for a Creative
      class ObaIcon
        include Google::Apis::Core::Hashable
      
        # Required. The click tracking URL of the OBA icon. Only URLs of the following
        # domains are allowed: * https://info.evidon.com * https://l.betrad.com
        # Corresponds to the JSON property `clickTrackingUrl`
        # @return [String]
        attr_accessor :click_tracking_url
      
        # Dimensions.
        # Corresponds to the JSON property `dimensions`
        # @return [Google::Apis::DisplayvideoV1::Dimensions]
        attr_accessor :dimensions
      
        # Required. The landing page URL of the OBA icon. Only URLs of the following
        # domains are allowed: * https://info.evidon.com * https://l.betrad.com
        # Corresponds to the JSON property `landingPageUrl`
        # @return [String]
        attr_accessor :landing_page_url
      
        # The position of the OBA icon on the creative.
        # Corresponds to the JSON property `position`
        # @return [String]
        attr_accessor :position
      
        # The program of the OBA icon. For example: “AdChoices”.
        # Corresponds to the JSON property `program`
        # @return [String]
        attr_accessor :program
      
        # The MIME type of the OBA icon resource.
        # Corresponds to the JSON property `resourceMimeType`
        # @return [String]
        attr_accessor :resource_mime_type
      
        # The URL of the OBA icon resource.
        # Corresponds to the JSON property `resourceUrl`
        # @return [String]
        attr_accessor :resource_url
      
        # Required. The view tracking URL of the OBA icon. Only URLs of the following
        # domains are allowed: * https://info.evidon.com * https://l.betrad.com
        # Corresponds to the JSON property `viewTrackingUrl`
        # @return [String]
        attr_accessor :view_tracking_url
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @click_tracking_url = args[:click_tracking_url] if args.key?(:click_tracking_url)
          @dimensions = args[:dimensions] if args.key?(:dimensions)
          @landing_page_url = args[:landing_page_url] if args.key?(:landing_page_url)
          @position = args[:position] if args.key?(:position)
          @program = args[:program] if args.key?(:program)
          @resource_mime_type = args[:resource_mime_type] if args.key?(:resource_mime_type)
          @resource_url = args[:resource_url] if args.key?(:resource_url)
          @view_tracking_url = args[:view_tracking_url] if args.key?(:view_tracking_url)
        end
      end
      
      # On screen position targeting option details. This will be populated in the
      # on_screen_position_details field when targeting_type is `
      # TARGETING_TYPE_ON_SCREEN_POSITION`.
      class OnScreenPositionAssignedTargetingOptionDetails
        include Google::Apis::Core::Hashable
      
        # Output only. The on screen position.
        # Corresponds to the JSON property `onScreenPosition`
        # @return [String]
        attr_accessor :on_screen_position
      
        # Required. The targeting_option_id field when targeting_type is `
        # TARGETING_TYPE_ON_SCREEN_POSITION`.
        # Corresponds to the JSON property `targetingOptionId`
        # @return [String]
        attr_accessor :targeting_option_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @on_screen_position = args[:on_screen_position] if args.key?(:on_screen_position)
          @targeting_option_id = args[:targeting_option_id] if args.key?(:targeting_option_id)
        end
      end
      
      # Represents a targetable on screen position, which could be used by display and
      # video ads. This will be populated in the on_screen_position_details field when
      # targeting_type is `TARGETING_TYPE_ON_SCREEN_POSITION`.
      class OnScreenPositionTargetingOptionDetails
        include Google::Apis::Core::Hashable
      
        # Output only. The on screen position.
        # Corresponds to the JSON property `onScreenPosition`
        # @return [String]
        attr_accessor :on_screen_position
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @on_screen_position = args[:on_screen_position] if args.key?(:on_screen_position)
        end
      end
      
      # Assigned operating system targeting option details. This will be populated in
      # the operating_system_details field when targeting_type is `
      # TARGETING_TYPE_OPERATING_SYSTEM`.
      class OperatingSystemAssignedTargetingOptionDetails
        include Google::Apis::Core::Hashable
      
        # Output only. The display name of the operating system.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # Indicates if this option is being negatively targeted.
        # Corresponds to the JSON property `negative`
        # @return [Boolean]
        attr_accessor :negative
        alias_method :negative?, :negative
      
        # Required. The targeting option ID populated in targeting_option_id field when
        # targeting_type is `TARGETING_TYPE_OPERATING_SYSTEM`.
        # Corresponds to the JSON property `targetingOptionId`
        # @return [String]
        attr_accessor :targeting_option_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @display_name = args[:display_name] if args.key?(:display_name)
          @negative = args[:negative] if args.key?(:negative)
          @targeting_option_id = args[:targeting_option_id] if args.key?(:targeting_option_id)
        end
      end
      
      # Represents a targetable operating system. This will be populated in the
      # operating_system_details field of a TargetingOption when targeting_type is `
      # TARGETING_TYPE_OPERATING_SYSTEM`.
      class OperatingSystemTargetingOptionDetails
        include Google::Apis::Core::Hashable
      
        # Output only. The display name of the operating system.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @display_name = args[:display_name] if args.key?(:display_name)
        end
      end
      
      # This resource represents a long-running operation that is the result of a
      # network API call.
      class Operation
        include Google::Apis::Core::Hashable
      
        # If the value is `false`, it means the operation is still in progress. If `true`
        # , the operation is completed, and either `error` or `response` is available.
        # Corresponds to the JSON property `done`
        # @return [Boolean]
        attr_accessor :done
        alias_method :done?, :done
      
        # The `Status` type defines a logical error model that is suitable for different
        # programming environments, including REST APIs and RPC APIs. It is used by [
        # gRPC](https://github.com/grpc). Each `Status` message contains three pieces of
        # data: error code, error message, and error details. You can find out more
        # about this error model and how to work with it in the [API Design Guide](https:
        # //cloud.google.com/apis/design/errors).
        # Corresponds to the JSON property `error`
        # @return [Google::Apis::DisplayvideoV1::Status]
        attr_accessor :error
      
        # Service-specific metadata associated with the operation. It typically contains
        # progress information and common metadata such as create time. Some services
        # might not provide such metadata. Any method that returns a long-running
        # operation should document the metadata type, if any.
        # Corresponds to the JSON property `metadata`
        # @return [Hash<String,Object>]
        attr_accessor :metadata
      
        # The server-assigned name, which is only unique within the same service that
        # originally returns it. If you use the default HTTP mapping, the `name` should
        # be a resource name ending with `operations/`unique_id``.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # The normal response of the operation in case of success. If the original
        # method returns no data on success, such as `Delete`, the response is `google.
        # protobuf.Empty`. If the original method is standard `Get`/`Create`/`Update`,
        # the response should be the resource. For other methods, the response should
        # have the type `XxxResponse`, where `Xxx` is the original method name. For
        # example, if the original method name is `TakeSnapshot()`, the inferred
        # response type is `TakeSnapshotResponse`.
        # Corresponds to the JSON property `response`
        # @return [Hash<String,Object>]
        attr_accessor :response
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @done = args[:done] if args.key?(:done)
          @error = args[:error] if args.key?(:error)
          @metadata = args[:metadata] if args.key?(:metadata)
          @name = args[:name] if args.key?(:name)
          @response = args[:response] if args.key?(:response)
        end
      end
      
      # Settings that control the rate at which a budget is spent.
      class Pacing
        include Google::Apis::Core::Hashable
      
        # Maximum number of impressions to serve every day. Applicable when the budget
        # is impression based. Must be greater than 0.
        # Corresponds to the JSON property `dailyMaxImpressions`
        # @return [Fixnum]
        attr_accessor :daily_max_impressions
      
        # Maximum currency amount to spend every day in micros of advertiser's currency.
        # Applicable when the budget is currency based. Must be greater than 0. For
        # example, for 1.5 standard unit of the currency, set this field to 1500000. The
        # value assigned will be rounded to whole billable units for the relevant
        # currency by the following rules: any positive value less than a single
        # billable unit will be rounded up to one billable unit and any value larger
        # than a single billable unit will be rounded down to the nearest billable value.
        # For example, if the currency's billable unit is 0.01, and this field is set
        # to 10257770, it will round down to 10250000, a value of 10.25. If set to 505,
        # it will round up to 10000, a value of 0.01.
        # Corresponds to the JSON property `dailyMaxMicros`
        # @return [Fixnum]
        attr_accessor :daily_max_micros
      
        # Required. The time period in which the pacing budget will be spent. When
        # automatic budget allocation is enabled at the insertion order via
        # auto_budget_allocation, this field is output only and defaults to `
        # PACING_PERIOD_FLIGHT`.
        # Corresponds to the JSON property `pacingPeriod`
        # @return [String]
        attr_accessor :pacing_period
      
        # Required. The type of pacing that defines how the budget amount will be spent
        # across the pacing_period.
        # Corresponds to the JSON property `pacingType`
        # @return [String]
        attr_accessor :pacing_type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @daily_max_impressions = args[:daily_max_impressions] if args.key?(:daily_max_impressions)
          @daily_max_micros = args[:daily_max_micros] if args.key?(:daily_max_micros)
          @pacing_period = args[:pacing_period] if args.key?(:pacing_period)
          @pacing_type = args[:pacing_type] if args.key?(:pacing_type)
        end
      end
      
      # A filtering option that filters on selected file types belonging to a chosen
      # set of filter entities.
      class ParentEntityFilter
        include Google::Apis::Core::Hashable
      
        # Required. File types that will be returned.
        # Corresponds to the JSON property `fileType`
        # @return [Array<String>]
        attr_accessor :file_type
      
        # The IDs of the specified filter type. This is used to filter entities to fetch.
        # If filter type is not `FILTER_TYPE_NONE`, at least one ID must be specified.
        # Corresponds to the JSON property `filterIds`
        # @return [Array<Fixnum>]
        attr_accessor :filter_ids
      
        # Required. Filter type used to filter fetched entities.
        # Corresponds to the JSON property `filterType`
        # @return [String]
        attr_accessor :filter_type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @file_type = args[:file_type] if args.key?(:file_type)
          @filter_ids = args[:filter_ids] if args.key?(:filter_ids)
          @filter_type = args[:filter_type] if args.key?(:filter_type)
        end
      end
      
      # Details for assigned parental status targeting option. This will be populated
      # in the details field of an AssignedTargetingOption when targeting_type is `
      # TARTGETING_TYPE_PARENTAL_STATUS`.
      class ParentalStatusAssignedTargetingOptionDetails
        include Google::Apis::Core::Hashable
      
        # Output only. The parental status of the audience.
        # Corresponds to the JSON property `parentalStatus`
        # @return [String]
        attr_accessor :parental_status
      
        # Required. The targeting_option_id of a TargetingOption of type `
        # TARGETING_TYPE_PARENTAL_STATUS`.
        # Corresponds to the JSON property `targetingOptionId`
        # @return [String]
        attr_accessor :targeting_option_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @parental_status = args[:parental_status] if args.key?(:parental_status)
          @targeting_option_id = args[:targeting_option_id] if args.key?(:targeting_option_id)
        end
      end
      
      # Represents a targetable parental status. This will be populated in the
      # parental_status_details field of a TargetingOption when targeting_type is `
      # TARGETING_TYPE_PARENTAL_STATUS`.
      class ParentalStatusTargetingOptionDetails
        include Google::Apis::Core::Hashable
      
        # Output only. The parental status of an audience.
        # Corresponds to the JSON property `parentalStatus`
        # @return [String]
        attr_accessor :parental_status
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @parental_status = args[:parental_status] if args.key?(:parental_status)
        end
      end
      
      # A single partner in Display & Video 360 (DV360).
      class Partner
        include Google::Apis::Core::Hashable
      
        # Ad server related settings of a partner.
        # Corresponds to the JSON property `adServerConfig`
        # @return [Google::Apis::DisplayvideoV1::PartnerAdServerConfig]
        attr_accessor :ad_server_config
      
        # Settings that control how partner related data may be accessed.
        # Corresponds to the JSON property `dataAccessConfig`
        # @return [Google::Apis::DisplayvideoV1::PartnerDataAccessConfig]
        attr_accessor :data_access_config
      
        # The display name of the partner. Must be UTF-8 encoded with a maximum size of
        # 240 bytes.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # Output only. The status of the partner.
        # Corresponds to the JSON property `entityStatus`
        # @return [String]
        attr_accessor :entity_status
      
        # Settings that control which exchanges are enabled for a partner.
        # Corresponds to the JSON property `exchangeConfig`
        # @return [Google::Apis::DisplayvideoV1::ExchangeConfig]
        attr_accessor :exchange_config
      
        # General settings of a partner.
        # Corresponds to the JSON property `generalConfig`
        # @return [Google::Apis::DisplayvideoV1::PartnerGeneralConfig]
        attr_accessor :general_config
      
        # Output only. The resource name of the partner.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Output only. The unique ID of the partner. Assigned by the system.
        # Corresponds to the JSON property `partnerId`
        # @return [Fixnum]
        attr_accessor :partner_id
      
        # Output only. The timestamp when the partner was last updated. Assigned by the
        # system.
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @ad_server_config = args[:ad_server_config] if args.key?(:ad_server_config)
          @data_access_config = args[:data_access_config] if args.key?(:data_access_config)
          @display_name = args[:display_name] if args.key?(:display_name)
          @entity_status = args[:entity_status] if args.key?(:entity_status)
          @exchange_config = args[:exchange_config] if args.key?(:exchange_config)
          @general_config = args[:general_config] if args.key?(:general_config)
          @name = args[:name] if args.key?(:name)
          @partner_id = args[:partner_id] if args.key?(:partner_id)
          @update_time = args[:update_time] if args.key?(:update_time)
        end
      end
      
      # Ad server related settings of a partner.
      class PartnerAdServerConfig
        include Google::Apis::Core::Hashable
      
        # Measurement settings of a partner.
        # Corresponds to the JSON property `measurementConfig`
        # @return [Google::Apis::DisplayvideoV1::MeasurementConfig]
        attr_accessor :measurement_config
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @measurement_config = args[:measurement_config] if args.key?(:measurement_config)
        end
      end
      
      # Settings that control a partner cost. A partner cost is any type of expense
      # involved in running a campaign, other than the costs of purchasing impressions
      # (which is called the media cost) and using third-party audience segment data (
      # data fee). Some examples of partner costs include the fees for using DV360, a
      # third-party ad server, or a third-party ad serving verification service.
      class PartnerCost
        include Google::Apis::Core::Hashable
      
        # Required. The type of the partner cost.
        # Corresponds to the JSON property `costType`
        # @return [String]
        attr_accessor :cost_type
      
        # The CPM fee amount in micros of advertiser's currency. Applicable when the
        # fee_type is `PARTNER_FEE_TYPE_CPM_FEE`. Must be greater than or equal to 0.
        # For example, for 1.5 standard unit of the advertiser's currency, set this
        # field to 1500000.
        # Corresponds to the JSON property `feeAmount`
        # @return [Fixnum]
        attr_accessor :fee_amount
      
        # The media fee percentage in millis (1/1000 of a percent). Applicable when the
        # fee_type is `PARTNER_FEE_TYPE_MEDIA_FEE`. Must be greater than or equal to 0.
        # For example: 100 represents 0.1%.
        # Corresponds to the JSON property `feePercentageMillis`
        # @return [Fixnum]
        attr_accessor :fee_percentage_millis
      
        # Required. The fee type for this partner cost.
        # Corresponds to the JSON property `feeType`
        # @return [String]
        attr_accessor :fee_type
      
        # The invoice type for this partner cost. * Required when cost_type is one of: -
        # `PARTNER_COST_TYPE_ADLOOX` - `PARTNER_COST_TYPE_DOUBLE_VERIFY` - `
        # PARTNER_COST_TYPE_INTEGRAL_AD_SCIENCE`. * Output only for other types.
        # Corresponds to the JSON property `invoiceType`
        # @return [String]
        attr_accessor :invoice_type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @cost_type = args[:cost_type] if args.key?(:cost_type)
          @fee_amount = args[:fee_amount] if args.key?(:fee_amount)
          @fee_percentage_millis = args[:fee_percentage_millis] if args.key?(:fee_percentage_millis)
          @fee_type = args[:fee_type] if args.key?(:fee_type)
          @invoice_type = args[:invoice_type] if args.key?(:invoice_type)
        end
      end
      
      # Settings that control how partner related data may be accessed.
      class PartnerDataAccessConfig
        include Google::Apis::Core::Hashable
      
        # Structured Data File (SDF) related settings.
        # Corresponds to the JSON property `sdfConfig`
        # @return [Google::Apis::DisplayvideoV1::SdfConfig]
        attr_accessor :sdf_config
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @sdf_config = args[:sdf_config] if args.key?(:sdf_config)
        end
      end
      
      # General settings of a partner.
      class PartnerGeneralConfig
        include Google::Apis::Core::Hashable
      
        # Immutable. Partner's currency in ISO 4217 format.
        # Corresponds to the JSON property `currencyCode`
        # @return [String]
        attr_accessor :currency_code
      
        # Immutable. The standard TZ database name of the partner's time zone. For
        # example, `America/New_York`. See more at: https://en.wikipedia.org/wiki/
        # List_of_tz_database_time_zones
        # Corresponds to the JSON property `timeZone`
        # @return [String]
        attr_accessor :time_zone
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @currency_code = args[:currency_code] if args.key?(:currency_code)
          @time_zone = args[:time_zone] if args.key?(:time_zone)
        end
      end
      
      # Settings that control how partner revenue is calculated.
      class PartnerRevenueModel
        include Google::Apis::Core::Hashable
      
        # Required. The markup amount of the partner revenue model. Must be greater than
        # or equal to 0. * When the markup_type is set to be `
        # PARTNER_REVENUE_MODEL_MARKUP_TYPE_CPM`, this field represents the CPM markup
        # in micros of advertiser's currency. For example, 1500000 represents 1.5
        # standard units of the currency. * When the markup_type is set to be `
        # PARTNER_REVENUE_MODEL_MARKUP_TYPE_MEDIA_COST_MARKUP`, this field represents
        # the media cost percent markup in millis. For example, 100 represents 0.1% (
        # decimal 0.001). * When the markup_type is set to be `
        # PARTNER_REVENUE_MODEL_MARKUP_TYPE_TOTAL_MEDIA_COST_MARKUP`, this field
        # represents the total media cost percent markup in millis. For example, 100
        # represents 0.1% (decimal 0.001).
        # Corresponds to the JSON property `markupAmount`
        # @return [Fixnum]
        attr_accessor :markup_amount
      
        # Required. The markup type of the partner revenue model.
        # Corresponds to the JSON property `markupType`
        # @return [String]
        attr_accessor :markup_type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @markup_amount = args[:markup_amount] if args.key?(:markup_amount)
          @markup_type = args[:markup_type] if args.key?(:markup_type)
        end
      end
      
      # Settings that control the performance goal of a campaign or insertion order.
      class PerformanceGoal
        include Google::Apis::Core::Hashable
      
        # The goal amount, in micros of the advertiser's currency. Applicable when
        # performance_goal_type is one of: * `PERFORMANCE_GOAL_TYPE_CPM` * `
        # PERFORMANCE_GOAL_TYPE_CPC` * `PERFORMANCE_GOAL_TYPE_CPA` * `
        # PERFORMANCE_GOAL_TYPE_CPIAVC` For example 1500000 represents 1.5 standard
        # units of the currency.
        # Corresponds to the JSON property `performanceGoalAmountMicros`
        # @return [Fixnum]
        attr_accessor :performance_goal_amount_micros
      
        # The decimal representation of the goal percentage in micros. Applicable when
        # performance_goal_type is one of: * `PERFORMANCE_GOAL_TYPE_CTR` * `
        # PERFORMANCE_GOAL_TYPE_VIEWABILITY` For example, 70000 represents 7% (decimal 0.
        # 07).
        # Corresponds to the JSON property `performanceGoalPercentageMicros`
        # @return [Fixnum]
        attr_accessor :performance_goal_percentage_micros
      
        # A key performance indicator (KPI) string, which can be empty. Must be UTF-8
        # encoded with a length of no more than 100 characters. Applicable when
        # performance_goal_type is set to `PERFORMANCE_GOAL_TYPE_OTHER`.
        # Corresponds to the JSON property `performanceGoalString`
        # @return [String]
        attr_accessor :performance_goal_string
      
        # Required. The type of the performance goal.
        # Corresponds to the JSON property `performanceGoalType`
        # @return [String]
        attr_accessor :performance_goal_type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @performance_goal_amount_micros = args[:performance_goal_amount_micros] if args.key?(:performance_goal_amount_micros)
          @performance_goal_percentage_micros = args[:performance_goal_percentage_micros] if args.key?(:performance_goal_percentage_micros)
          @performance_goal_string = args[:performance_goal_string] if args.key?(:performance_goal_string)
          @performance_goal_type = args[:performance_goal_type] if args.key?(:performance_goal_type)
        end
      end
      
      # A strategy that automatically adjusts the bid to meet or beat a specified
      # performance goal.
      class PerformanceGoalBidStrategy
        include Google::Apis::Core::Hashable
      
        # The ID of the Custom Bidding Algorithm used by this strategy. Only applicable
        # when performance_goal_type is set to `
        # BIDDING_STRATEGY_PERFORMANCE_GOAL_TYPE_CUSTOM_ALGO`.
        # Corresponds to the JSON property `customBiddingAlgorithmId`
        # @return [Fixnum]
        attr_accessor :custom_bidding_algorithm_id
      
        # The maximum average CPM that may be bid, in micros of the advertiser's
        # currency. Must be greater than or equal to a billable unit of the given
        # currency. Not applicable when performance_goal_type is set to `
        # BIDDING_STRATEGY_PERFORMANCE_GOAL_TYPE_VIEWABLE_CPM`. For example, 1500000
        # represents 1.5 standard units of the currency.
        # Corresponds to the JSON property `maxAverageCpmBidAmountMicros`
        # @return [Fixnum]
        attr_accessor :max_average_cpm_bid_amount_micros
      
        # Required. The performance goal the bidding strategy will attempt to meet or
        # beat, in micros of the advertiser's currency or in micro of the ROAS (Return
        # On Advertising Spend) value which is also based on advertiser's currency. Must
        # be greater than or equal to a billable unit of the given currency and smaller
        # or equal to upper bounds. Each performance_goal_type has its upper bound: *
        # when performance_goal_type is `BIDDING_STRATEGY_PERFORMANCE_GOAL_TYPE_CPA`,
        # upper bound is 10000.00 USD. * when performance_goal_type is `
        # BIDDING_STRATEGY_PERFORMANCE_GOAL_TYPE_CPC`, upper bound is 1000.00 USD. *
        # when performance_goal_type is `
        # BIDDING_STRATEGY_PERFORMANCE_GOAL_TYPE_VIEWABLE_CPM`, upper bound is 1000.00
        # USD. * when performance_goal_type is `
        # BIDDING_STRATEGY_PERFORMANCE_GOAL_TYPE_CUSTOM_ALGO`, upper bound is 1000.00
        # and lower bound is 0.01. Example: If set to `
        # BIDDING_STRATEGY_PERFORMANCE_GOAL_TYPE_VIEWABLE_CPM`, the bid price will be
        # based on the probability that each available impression will be viewable. For
        # example, if viewable CPM target is $2 and an impression is 40% likely to be
        # viewable, the bid price will be $0.80 CPM (40% of $2). For example, 1500000
        # represents 1.5 standard units of the currency or ROAS value.
        # Corresponds to the JSON property `performanceGoalAmountMicros`
        # @return [Fixnum]
        attr_accessor :performance_goal_amount_micros
      
        # Required. The type of the performance goal that the bidding strategy will try
        # to meet or beat. For line item level usage, the value must be one of: * `
        # BIDDING_STRATEGY_PERFORMANCE_GOAL_TYPE_CPA` * `
        # BIDDING_STRATEGY_PERFORMANCE_GOAL_TYPE_CPC` * `
        # BIDDING_STRATEGY_PERFORMANCE_GOAL_TYPE_VIEWABLE_CPM` * `
        # BIDDING_STRATEGY_PERFORMANCE_GOAL_TYPE_CUSTOM_ALGO`.
        # Corresponds to the JSON property `performanceGoalType`
        # @return [String]
        attr_accessor :performance_goal_type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @custom_bidding_algorithm_id = args[:custom_bidding_algorithm_id] if args.key?(:custom_bidding_algorithm_id)
          @max_average_cpm_bid_amount_micros = args[:max_average_cpm_bid_amount_micros] if args.key?(:max_average_cpm_bid_amount_micros)
          @performance_goal_amount_micros = args[:performance_goal_amount_micros] if args.key?(:performance_goal_amount_micros)
          @performance_goal_type = args[:performance_goal_type] if args.key?(:performance_goal_type)
        end
      end
      
      # Targeting details for proximity location list. This will be populated in the
      # details field of an AssignedTargetingOption when targeting_type is `
      # TARGETING_TYPE_PROXIMITY_LOCATION_LIST`.
      class ProximityLocationListAssignedTargetingOptionDetails
        include Google::Apis::Core::Hashable
      
        # Required. ID of the proximity location list. Should refer to the
        # location_list_id field of a LocationList resource whose type is `
        # TARGETING_LOCATION_TYPE_PROXIMITY`.
        # Corresponds to the JSON property `proximityLocationListId`
        # @return [Fixnum]
        attr_accessor :proximity_location_list_id
      
        # Required. Radius range for proximity location list. This represents the size
        # of the area around a chosen location that will be targeted. `All` proximity
        # location targeting under a single line item must have the same radius range
        # value. Set this value to match any existing targeting. If updated, this field
        # will change the radius range for all proximity targeting under the line item.
        # Corresponds to the JSON property `proximityRadiusRange`
        # @return [String]
        attr_accessor :proximity_radius_range
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @proximity_location_list_id = args[:proximity_location_list_id] if args.key?(:proximity_location_list_id)
          @proximity_radius_range = args[:proximity_radius_range] if args.key?(:proximity_radius_range)
        end
      end
      
      # Publisher review status for the creative.
      class PublisherReviewStatus
        include Google::Apis::Core::Hashable
      
        # The publisher reviewing the creative.
        # Corresponds to the JSON property `publisherName`
        # @return [String]
        attr_accessor :publisher_name
      
        # Status of the publisher review.
        # Corresponds to the JSON property `status`
        # @return [String]
        attr_accessor :status
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @publisher_name = args[:publisher_name] if args.key?(:publisher_name)
          @status = args[:status] if args.key?(:status)
        end
      end
      
      # The rate related settings of the inventory source.
      class RateDetails
        include Google::Apis::Core::Hashable
      
        # The rate type. Acceptable values are `INVENTORY_SOURCE_RATE_TYPE_CPM_FIXED`, `
        # INVENTORY_SOURCE_RATE_TYPE_CPM_FLOOR`, and `INVENTORY_SOURCE_RATE_TYPE_CPD`.
        # Corresponds to the JSON property `inventorySourceRateType`
        # @return [String]
        attr_accessor :inventory_source_rate_type
      
        # Represents an amount of money with its currency type.
        # Corresponds to the JSON property `minimumSpend`
        # @return [Google::Apis::DisplayvideoV1::Money]
        attr_accessor :minimum_spend
      
        # Represents an amount of money with its currency type.
        # Corresponds to the JSON property `rate`
        # @return [Google::Apis::DisplayvideoV1::Money]
        attr_accessor :rate
      
        # Required for guaranteed inventory sources. The number of impressions
        # guaranteed by the seller.
        # Corresponds to the JSON property `unitsPurchased`
        # @return [Fixnum]
        attr_accessor :units_purchased
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @inventory_source_rate_type = args[:inventory_source_rate_type] if args.key?(:inventory_source_rate_type)
          @minimum_spend = args[:minimum_spend] if args.key?(:minimum_spend)
          @rate = args[:rate] if args.key?(:rate)
          @units_purchased = args[:units_purchased] if args.key?(:units_purchased)
        end
      end
      
      # Targeting details for regional location list. This will be populated in the
      # details field of an AssignedTargetingOption when targeting_type is `
      # TARGETING_TYPE_REGIONAL_LOCATION_LIST`.
      class RegionalLocationListAssignedTargetingOptionDetails
        include Google::Apis::Core::Hashable
      
        # Indicates if this option is being negatively targeted.
        # Corresponds to the JSON property `negative`
        # @return [Boolean]
        attr_accessor :negative
        alias_method :negative?, :negative
      
        # Required. ID of the regional location list. Should refer to the
        # location_list_id field of a LocationList resource whose type is `
        # TARGETING_LOCATION_TYPE_REGIONAL`.
        # Corresponds to the JSON property `regionalLocationListId`
        # @return [Fixnum]
        attr_accessor :regional_location_list_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @negative = args[:negative] if args.key?(:negative)
          @regional_location_list_id = args[:regional_location_list_id] if args.key?(:regional_location_list_id)
        end
      end
      
      # Review statuses for the creative.
      class ReviewStatusInfo
        include Google::Apis::Core::Hashable
      
        # Represents the basic approval needed for a creative to begin serving. Summary
        # of creative_and_landing_page_review_status and
        # content_and_policy_review_status.
        # Corresponds to the JSON property `approvalStatus`
        # @return [String]
        attr_accessor :approval_status
      
        # Content and policy review status for the creative.
        # Corresponds to the JSON property `contentAndPolicyReviewStatus`
        # @return [String]
        attr_accessor :content_and_policy_review_status
      
        # Creative and landing page review status for the creative.
        # Corresponds to the JSON property `creativeAndLandingPageReviewStatus`
        # @return [String]
        attr_accessor :creative_and_landing_page_review_status
      
        # Exchange review statuses for the creative.
        # Corresponds to the JSON property `exchangeReviewStatuses`
        # @return [Array<Google::Apis::DisplayvideoV1::ExchangeReviewStatus>]
        attr_accessor :exchange_review_statuses
      
        # Publisher review statuses for the creative.
        # Corresponds to the JSON property `publisherReviewStatuses`
        # @return [Array<Google::Apis::DisplayvideoV1::PublisherReviewStatus>]
        attr_accessor :publisher_review_statuses
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @approval_status = args[:approval_status] if args.key?(:approval_status)
          @content_and_policy_review_status = args[:content_and_policy_review_status] if args.key?(:content_and_policy_review_status)
          @creative_and_landing_page_review_status = args[:creative_and_landing_page_review_status] if args.key?(:creative_and_landing_page_review_status)
          @exchange_review_statuses = args[:exchange_review_statuses] if args.key?(:exchange_review_statuses)
          @publisher_review_statuses = args[:publisher_review_statuses] if args.key?(:publisher_review_statuses)
        end
      end
      
      # Structured Data File (SDF) related settings.
      class SdfConfig
        include Google::Apis::Core::Hashable
      
        # An administrator email address to which the SDF processing status reports will
        # be sent.
        # Corresponds to the JSON property `adminEmail`
        # @return [String]
        attr_accessor :admin_email
      
        # Required. The version of SDF being used.
        # Corresponds to the JSON property `version`
        # @return [String]
        attr_accessor :version
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @admin_email = args[:admin_email] if args.key?(:admin_email)
          @version = args[:version] if args.key?(:version)
        end
      end
      
      # Type for the response returned by [SdfDownloadTaskService.
      # CreateSdfDownloadTask].
      class SdfDownloadTask
        include Google::Apis::Core::Hashable
      
        # A resource name to be used in media.download to Download the prepared files.
        # Resource names have the format `download/sdfdownloadtasks/media/`media_id``. `
        # media_id` will be made available by the long running operation service once
        # the task status is done.
        # Corresponds to the JSON property `resourceName`
        # @return [String]
        attr_accessor :resource_name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @resource_name = args[:resource_name] if args.key?(:resource_name)
        end
      end
      
      # Type for the metadata returned by [SdfDownloadTaskService.
      # CreateSdfDownloadTask].
      class SdfDownloadTaskMetadata
        include Google::Apis::Core::Hashable
      
        # The time when the operation was created.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # The time when execution was completed.
        # Corresponds to the JSON property `endTime`
        # @return [String]
        attr_accessor :end_time
      
        # The SDF version used to execute this download task.
        # Corresponds to the JSON property `version`
        # @return [String]
        attr_accessor :version
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @create_time = args[:create_time] if args.key?(:create_time)
          @end_time = args[:end_time] if args.key?(:end_time)
          @version = args[:version] if args.key?(:version)
        end
      end
      
      # Targeting details for sensitive category. This will be populated in the
      # details field of an AssignedTargetingOption when targeting_type is `
      # TARGETING_TYPE_SENSITIVE_CATEGORY_EXCLUSION`.
      class SensitiveCategoryAssignedTargetingOptionDetails
        include Google::Apis::Core::Hashable
      
        # Required. ID of the sensitive category to be EXCLUDED.
        # Corresponds to the JSON property `excludedTargetingOptionId`
        # @return [String]
        attr_accessor :excluded_targeting_option_id
      
        # Output only. An enum for the DV360 Sensitive category content classifier.
        # Corresponds to the JSON property `sensitiveCategory`
        # @return [String]
        attr_accessor :sensitive_category
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @excluded_targeting_option_id = args[:excluded_targeting_option_id] if args.key?(:excluded_targeting_option_id)
          @sensitive_category = args[:sensitive_category] if args.key?(:sensitive_category)
        end
      end
      
      # Represents a targetable sensitive category. This will be populated in the
      # sensitive_category_details field of the TargetingOption when targeting_type is
      # `TARGETING_TYPE_SENSITIVE_CATEGORY_EXCLUSION`.
      class SensitiveCategoryTargetingOptionDetails
        include Google::Apis::Core::Hashable
      
        # Output only. An enum for the DV360 Sensitive category content classifier.
        # Corresponds to the JSON property `sensitiveCategory`
        # @return [String]
        attr_accessor :sensitive_category
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @sensitive_category = args[:sensitive_category] if args.key?(:sensitive_category)
        end
      end
      
      # A single site. Sites are apps or websites belonging to a channel.
      class Site
        include Google::Apis::Core::Hashable
      
        # Output only. The resource name of the site.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Required. The URL or app ID of the site. Must be UTF-8 encoded with a maximum
        # length of 240 bytes.
        # Corresponds to the JSON property `urlOrAppId`
        # @return [String]
        attr_accessor :url_or_app_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @name = args[:name] if args.key?(:name)
          @url_or_app_id = args[:url_or_app_id] if args.key?(:url_or_app_id)
        end
      end
      
      # The `Status` type defines a logical error model that is suitable for different
      # programming environments, including REST APIs and RPC APIs. It is used by [
      # gRPC](https://github.com/grpc). Each `Status` message contains three pieces of
      # data: error code, error message, and error details. You can find out more
      # about this error model and how to work with it in the [API Design Guide](https:
      # //cloud.google.com/apis/design/errors).
      class Status
        include Google::Apis::Core::Hashable
      
        # The status code, which should be an enum value of google.rpc.Code.
        # Corresponds to the JSON property `code`
        # @return [Fixnum]
        attr_accessor :code
      
        # A list of messages that carry the error details. There is a common set of
        # message types for APIs to use.
        # Corresponds to the JSON property `details`
        # @return [Array<Hash<String,Object>>]
        attr_accessor :details
      
        # A developer-facing error message, which should be in English. Any user-facing
        # error message should be localized and sent in the google.rpc.Status.details
        # field, or localized by the client.
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
      
      # Details for assigned sub-exchange targeting option. This will be populated in
      # the details field of an AssignedTargetingOption when targeting_type is `
      # TARGETING_TYPE_SUB_EXCHANGE`.
      class SubExchangeAssignedTargetingOptionDetails
        include Google::Apis::Core::Hashable
      
        # Required. The targeting_option_id of a TargetingOption of type `
        # TARGETING_TYPE_SUB_EXCHANGE`.
        # Corresponds to the JSON property `targetingOptionId`
        # @return [String]
        attr_accessor :targeting_option_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @targeting_option_id = args[:targeting_option_id] if args.key?(:targeting_option_id)
        end
      end
      
      # Represents a targetable sub-exchange. This will be populated in the
      # sub_exchange_details field of a TargetingOption when targeting_type is `
      # TARGETING_TYPE_SUB_EXCHANGE`.
      class SubExchangeTargetingOptionDetails
        include Google::Apis::Core::Hashable
      
        # Output only. The display name of the sub-exchange.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @display_name = args[:display_name] if args.key?(:display_name)
        end
      end
      
      # Settings that control the targeting expansion of the line item. Targeting
      # expansion allows the line item to reach a larger audience based on the
      # original audience list and the targeting expansion level.
      class TargetingExpansionConfig
        include Google::Apis::Core::Hashable
      
        # Required. Whether to exclude first party audiences from targeting. Similar
        # audiences of the excluded first party lists will not be excluded. Only
        # applicable when a first-party audience is positively targeted (directly or
        # included in a combined audience), otherwise this selection will be ignored.
        # Corresponds to the JSON property `excludeFirstPartyAudience`
        # @return [Boolean]
        attr_accessor :exclude_first_party_audience
        alias_method :exclude_first_party_audience?, :exclude_first_party_audience
      
        # Required. Magnitude of expansion for applicable targeting under this line item.
        # Corresponds to the JSON property `targetingExpansionLevel`
        # @return [String]
        attr_accessor :targeting_expansion_level
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @exclude_first_party_audience = args[:exclude_first_party_audience] if args.key?(:exclude_first_party_audience)
          @targeting_expansion_level = args[:targeting_expansion_level] if args.key?(:targeting_expansion_level)
        end
      end
      
      # Represents a single targeting option, which is a targetable concept in DV360.
      class TargetingOption
        include Google::Apis::Core::Hashable
      
        # Represents a targetable age range. This will be populated in the
        # age_range_details field when targeting_type is `TARGETING_TYPE_AGE_RANGE`.
        # Corresponds to the JSON property `ageRangeDetails`
        # @return [Google::Apis::DisplayvideoV1::AgeRangeTargetingOptionDetails]
        attr_accessor :age_range_details
      
        # Represents a targetable collection of apps. A collection lets you target
        # dynamic groups of related apps that are maintained by the platform, for
        # example `All Apps/Google Play/Games`. This will be populated in the
        # app_category_details field when targeting_type is `TARGETING_TYPE_APP_CATEGORY`
        # .
        # Corresponds to the JSON property `appCategoryDetails`
        # @return [Google::Apis::DisplayvideoV1::AppCategoryTargetingOptionDetails]
        attr_accessor :app_category_details
      
        # Represents a targetable authorized seller status. This will be populated in
        # the authorized_seller_status_details field when targeting_type is `
        # TARGETING_TYPE_AUTHORIZED_SELLER_STATUS`.
        # Corresponds to the JSON property `authorizedSellerStatusDetails`
        # @return [Google::Apis::DisplayvideoV1::AuthorizedSellerStatusTargetingOptionDetails]
        attr_accessor :authorized_seller_status_details
      
        # Represents a targetable browser. This will be populated in the browser_details
        # field when targeting_type is `TARGETING_TYPE_BROWSER`.
        # Corresponds to the JSON property `browserDetails`
        # @return [Google::Apis::DisplayvideoV1::BrowserTargetingOptionDetails]
        attr_accessor :browser_details
      
        # Represents a targetable carrier or ISP. This will be populated in the
        # carrier_and_isp_details field of a TargetingOption when targeting_type is `
        # TARGETING_TYPE_CARRIER_AND_ISP`.
        # Corresponds to the JSON property `carrierAndIspDetails`
        # @return [Google::Apis::DisplayvideoV1::CarrierAndIspTargetingOptionDetails]
        attr_accessor :carrier_and_isp_details
      
        # Represents a targetable category. This will be populated in the
        # category_details field of a TargetingOption when targeting_type is `
        # TARGETING_TYPE_CATEGORY`.
        # Corresponds to the JSON property `categoryDetails`
        # @return [Google::Apis::DisplayvideoV1::CategoryTargetingOptionDetails]
        attr_accessor :category_details
      
        # Represents a targetable content instream position, which could be used by
        # video and audio ads. This will be populated in the
        # content_instream_position_details field when targeting_type is `
        # TARGETING_TYPE_CONTENT_INSTREAM_POSITION`.
        # Corresponds to the JSON property `contentInstreamPositionDetails`
        # @return [Google::Apis::DisplayvideoV1::ContentInstreamPositionTargetingOptionDetails]
        attr_accessor :content_instream_position_details
      
        # Represents a targetable content outstream position, which could be used by
        # display and video ads. This will be populated in the
        # content_outstream_position_details field when targeting_type is `
        # TARGETING_TYPE_CONTENT_OUTSTREAM_POSITION`.
        # Corresponds to the JSON property `contentOutstreamPositionDetails`
        # @return [Google::Apis::DisplayvideoV1::ContentOutstreamPositionTargetingOptionDetails]
        attr_accessor :content_outstream_position_details
      
        # Represents a targetable device make and model. This will be populated in the
        # device_make_model_details field of a TargetingOption when targeting_type is `
        # TARGETING_TYPE_DEVICE_MAKE_MODEL`.
        # Corresponds to the JSON property `deviceMakeModelDetails`
        # @return [Google::Apis::DisplayvideoV1::DeviceMakeModelTargetingOptionDetails]
        attr_accessor :device_make_model_details
      
        # Represents a targetable device type. This will be populated in the
        # device_type_details field of a TargetingOption when targeting_type is `
        # TARGETING_TYPE_DEVICE_TYPE`.
        # Corresponds to the JSON property `deviceTypeDetails`
        # @return [Google::Apis::DisplayvideoV1::DeviceTypeTargetingOptionDetails]
        attr_accessor :device_type_details
      
        # Represents a targetable digital content label rating tier. This will be
        # populated in the digital_content_label_details field of the TargetingOption
        # when targeting_type is `TARGETING_TYPE_DIGITAL_CONTENT_LABEL_EXCLUSION`.
        # Corresponds to the JSON property `digitalContentLabelDetails`
        # @return [Google::Apis::DisplayvideoV1::DigitalContentLabelTargetingOptionDetails]
        attr_accessor :digital_content_label_details
      
        # Represents a targetable environment. This will be populated in the
        # environment_details field of a TargetingOption when targeting_type is `
        # TARGETING_TYPE_ENVIRONMENT`.
        # Corresponds to the JSON property `environmentDetails`
        # @return [Google::Apis::DisplayvideoV1::EnvironmentTargetingOptionDetails]
        attr_accessor :environment_details
      
        # Represents a targetable exchange. This will be populated in the
        # exchange_details field of a TargetingOption when targeting_type is `
        # TARGETING_TYPE_EXCHANGE`.
        # Corresponds to the JSON property `exchangeDetails`
        # @return [Google::Apis::DisplayvideoV1::ExchangeTargetingOptionDetails]
        attr_accessor :exchange_details
      
        # Represents a targetable gender. This will be populated in the gender_details
        # field of a TargetingOption when targeting_type is `TARGETING_TYPE_GENDER`.
        # Corresponds to the JSON property `genderDetails`
        # @return [Google::Apis::DisplayvideoV1::GenderTargetingOptionDetails]
        attr_accessor :gender_details
      
        # Represents a targetable geographic region. This will be populated in the
        # geo_region_details field when targeting_type is `TARGETING_TYPE_GEO_REGION`.
        # Corresponds to the JSON property `geoRegionDetails`
        # @return [Google::Apis::DisplayvideoV1::GeoRegionTargetingOptionDetails]
        attr_accessor :geo_region_details
      
        # Represents a targetable household income. This will be populated in the
        # household_income_details field of a TargetingOption when targeting_type is `
        # TARGETING_TYPE_HOUSEHOLD_INCOME`.
        # Corresponds to the JSON property `householdIncomeDetails`
        # @return [Google::Apis::DisplayvideoV1::HouseholdIncomeTargetingOptionDetails]
        attr_accessor :household_income_details
      
        # Represents a targetable language. This will be populated in the
        # language_details field when targeting_type is `TARGETING_TYPE_LANGUAGE`.
        # Corresponds to the JSON property `languageDetails`
        # @return [Google::Apis::DisplayvideoV1::LanguageTargetingOptionDetails]
        attr_accessor :language_details
      
        # Output only. The resource name for this targeting option.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Represents a targetable on screen position, which could be used by display and
        # video ads. This will be populated in the on_screen_position_details field when
        # targeting_type is `TARGETING_TYPE_ON_SCREEN_POSITION`.
        # Corresponds to the JSON property `onScreenPositionDetails`
        # @return [Google::Apis::DisplayvideoV1::OnScreenPositionTargetingOptionDetails]
        attr_accessor :on_screen_position_details
      
        # Represents a targetable operating system. This will be populated in the
        # operating_system_details field of a TargetingOption when targeting_type is `
        # TARGETING_TYPE_OPERATING_SYSTEM`.
        # Corresponds to the JSON property `operatingSystemDetails`
        # @return [Google::Apis::DisplayvideoV1::OperatingSystemTargetingOptionDetails]
        attr_accessor :operating_system_details
      
        # Represents a targetable parental status. This will be populated in the
        # parental_status_details field of a TargetingOption when targeting_type is `
        # TARGETING_TYPE_PARENTAL_STATUS`.
        # Corresponds to the JSON property `parentalStatusDetails`
        # @return [Google::Apis::DisplayvideoV1::ParentalStatusTargetingOptionDetails]
        attr_accessor :parental_status_details
      
        # Represents a targetable sensitive category. This will be populated in the
        # sensitive_category_details field of the TargetingOption when targeting_type is
        # `TARGETING_TYPE_SENSITIVE_CATEGORY_EXCLUSION`.
        # Corresponds to the JSON property `sensitiveCategoryDetails`
        # @return [Google::Apis::DisplayvideoV1::SensitiveCategoryTargetingOptionDetails]
        attr_accessor :sensitive_category_details
      
        # Represents a targetable sub-exchange. This will be populated in the
        # sub_exchange_details field of a TargetingOption when targeting_type is `
        # TARGETING_TYPE_SUB_EXCHANGE`.
        # Corresponds to the JSON property `subExchangeDetails`
        # @return [Google::Apis::DisplayvideoV1::SubExchangeTargetingOptionDetails]
        attr_accessor :sub_exchange_details
      
        # Output only. A unique identifier for this targeting option. The tuple ``
        # targeting_type`, `targeting_option_id`` will be unique.
        # Corresponds to the JSON property `targetingOptionId`
        # @return [String]
        attr_accessor :targeting_option_id
      
        # Output only. The type of this targeting option.
        # Corresponds to the JSON property `targetingType`
        # @return [String]
        attr_accessor :targeting_type
      
        # Represents a targetable user rewarded content status for video ads only. This
        # will be populated in the user_rewarded_content_details field when
        # targeting_type is `TARGETING_TYPE_USER_REWARDED_CONTENT`.
        # Corresponds to the JSON property `userRewardedContentDetails`
        # @return [Google::Apis::DisplayvideoV1::UserRewardedContentTargetingOptionDetails]
        attr_accessor :user_rewarded_content_details
      
        # Represents a targetable video player size. This will be populated in the
        # video_player_size_details field when targeting_type is `
        # TARGETING_TYPE_VIDEO_PLAYER_SIZE`.
        # Corresponds to the JSON property `videoPlayerSizeDetails`
        # @return [Google::Apis::DisplayvideoV1::VideoPlayerSizeTargetingOptionDetails]
        attr_accessor :video_player_size_details
      
        # Represents a targetable viewability. This will be populated in the
        # viewability_details field of a TargetingOption when targeting_type is `
        # TARGETING_TYPE_VIEWABILITY`.
        # Corresponds to the JSON property `viewabilityDetails`
        # @return [Google::Apis::DisplayvideoV1::ViewabilityTargetingOptionDetails]
        attr_accessor :viewability_details
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @age_range_details = args[:age_range_details] if args.key?(:age_range_details)
          @app_category_details = args[:app_category_details] if args.key?(:app_category_details)
          @authorized_seller_status_details = args[:authorized_seller_status_details] if args.key?(:authorized_seller_status_details)
          @browser_details = args[:browser_details] if args.key?(:browser_details)
          @carrier_and_isp_details = args[:carrier_and_isp_details] if args.key?(:carrier_and_isp_details)
          @category_details = args[:category_details] if args.key?(:category_details)
          @content_instream_position_details = args[:content_instream_position_details] if args.key?(:content_instream_position_details)
          @content_outstream_position_details = args[:content_outstream_position_details] if args.key?(:content_outstream_position_details)
          @device_make_model_details = args[:device_make_model_details] if args.key?(:device_make_model_details)
          @device_type_details = args[:device_type_details] if args.key?(:device_type_details)
          @digital_content_label_details = args[:digital_content_label_details] if args.key?(:digital_content_label_details)
          @environment_details = args[:environment_details] if args.key?(:environment_details)
          @exchange_details = args[:exchange_details] if args.key?(:exchange_details)
          @gender_details = args[:gender_details] if args.key?(:gender_details)
          @geo_region_details = args[:geo_region_details] if args.key?(:geo_region_details)
          @household_income_details = args[:household_income_details] if args.key?(:household_income_details)
          @language_details = args[:language_details] if args.key?(:language_details)
          @name = args[:name] if args.key?(:name)
          @on_screen_position_details = args[:on_screen_position_details] if args.key?(:on_screen_position_details)
          @operating_system_details = args[:operating_system_details] if args.key?(:operating_system_details)
          @parental_status_details = args[:parental_status_details] if args.key?(:parental_status_details)
          @sensitive_category_details = args[:sensitive_category_details] if args.key?(:sensitive_category_details)
          @sub_exchange_details = args[:sub_exchange_details] if args.key?(:sub_exchange_details)
          @targeting_option_id = args[:targeting_option_id] if args.key?(:targeting_option_id)
          @targeting_type = args[:targeting_type] if args.key?(:targeting_type)
          @user_rewarded_content_details = args[:user_rewarded_content_details] if args.key?(:user_rewarded_content_details)
          @video_player_size_details = args[:video_player_size_details] if args.key?(:video_player_size_details)
          @viewability_details = args[:viewability_details] if args.key?(:viewability_details)
        end
      end
      
      # Settings for advertisers that use third-party ad servers only.
      class ThirdPartyOnlyConfig
        include Google::Apis::Core::Hashable
      
        # Whether or not order ID reporting for pixels is enabled. This value cannot be
        # changed once set to `true`.
        # Corresponds to the JSON property `pixelOrderIdReportingEnabled`
        # @return [Boolean]
        attr_accessor :pixel_order_id_reporting_enabled
        alias_method :pixel_order_id_reporting_enabled?, :pixel_order_id_reporting_enabled
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @pixel_order_id_reporting_enabled = args[:pixel_order_id_reporting_enabled] if args.key?(:pixel_order_id_reporting_enabled)
        end
      end
      
      # Tracking URLs from third parties to track interactions with an audio or a
      # video creative.
      class ThirdPartyUrl
        include Google::Apis::Core::Hashable
      
        # The type of interaction needs to be tracked by the tracking URL
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        # Tracking URL used to track the interaction. Provide a URL with optional path
        # or query string, beginning with `https:`. For example, https://www.example.com/
        # path
        # Corresponds to the JSON property `url`
        # @return [String]
        attr_accessor :url
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @type = args[:type] if args.key?(:type)
          @url = args[:url] if args.key?(:url)
        end
      end
      
      # Assigned third party verifier targeting option details. This will be populated
      # in the details field of an AssignedTargetingOption when targeting_type is `
      # TARGETING_TYPE_THIRD_PARTY_VERIFIER`.
      class ThirdPartyVerifierAssignedTargetingOptionDetails
        include Google::Apis::Core::Hashable
      
        # Details of Adloox settings.
        # Corresponds to the JSON property `adloox`
        # @return [Google::Apis::DisplayvideoV1::Adloox]
        attr_accessor :adloox
      
        # Details of DoubleVerify settings.
        # Corresponds to the JSON property `doubleVerify`
        # @return [Google::Apis::DisplayvideoV1::DoubleVerify]
        attr_accessor :double_verify
      
        # Details of Integral Ad Science settings.
        # Corresponds to the JSON property `integralAdScience`
        # @return [Google::Apis::DisplayvideoV1::IntegralAdScience]
        attr_accessor :integral_ad_science
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @adloox = args[:adloox] if args.key?(:adloox)
          @double_verify = args[:double_verify] if args.key?(:double_verify)
          @integral_ad_science = args[:integral_ad_science] if args.key?(:integral_ad_science)
        end
      end
      
      # A time range.
      class TimeRange
        include Google::Apis::Core::Hashable
      
        # Required. The upper bound of a time range, inclusive.
        # Corresponds to the JSON property `endTime`
        # @return [String]
        attr_accessor :end_time
      
        # Required. The lower bound of a time range, inclusive.
        # Corresponds to the JSON property `startTime`
        # @return [String]
        attr_accessor :start_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @end_time = args[:end_time] if args.key?(:end_time)
          @start_time = args[:start_time] if args.key?(:start_time)
        end
      end
      
      # Timer event of the creative.
      class TimerEvent
        include Google::Apis::Core::Hashable
      
        # Required. The name of the timer event.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Required. The name used to identify this timer event in reports.
        # Corresponds to the JSON property `reportingName`
        # @return [String]
        attr_accessor :reporting_name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @name = args[:name] if args.key?(:name)
          @reporting_name = args[:reporting_name] if args.key?(:reporting_name)
        end
      end
      
      # Settings that control the behavior of a single Floodlight activity config.
      class TrackingFloodlightActivityConfig
        include Google::Apis::Core::Hashable
      
        # Required. The ID of the Floodlight activity.
        # Corresponds to the JSON property `floodlightActivityId`
        # @return [Fixnum]
        attr_accessor :floodlight_activity_id
      
        # Required. The number of days after an ad has been clicked in which a
        # conversion may be counted. Must be between 0 and 90 inclusive.
        # Corresponds to the JSON property `postClickLookbackWindowDays`
        # @return [Fixnum]
        attr_accessor :post_click_lookback_window_days
      
        # Required. The number of days after an ad has been viewed in which a conversion
        # may be counted. Must be between 0 and 90 inclusive.
        # Corresponds to the JSON property `postViewLookbackWindowDays`
        # @return [Fixnum]
        attr_accessor :post_view_lookback_window_days
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @floodlight_activity_id = args[:floodlight_activity_id] if args.key?(:floodlight_activity_id)
          @post_click_lookback_window_days = args[:post_click_lookback_window_days] if args.key?(:post_click_lookback_window_days)
          @post_view_lookback_window_days = args[:post_view_lookback_window_days] if args.key?(:post_view_lookback_window_days)
        end
      end
      
      # Represents information about the transcoded audio or video file.
      class Transcode
        include Google::Apis::Core::Hashable
      
        # The bit rate for the audio stream of the transcoded video, or the bit rate for
        # the transcoded audio, in kilobits per second.
        # Corresponds to the JSON property `audioBitRateKbps`
        # @return [Fixnum]
        attr_accessor :audio_bit_rate_kbps
      
        # The sample rate for the audio stream of the transcoded video, or the sample
        # rate for the transcoded audio, in hertz.
        # Corresponds to the JSON property `audioSampleRateHz`
        # @return [Fixnum]
        attr_accessor :audio_sample_rate_hz
      
        # The transcoding bit rate of the transcoded video, in kilobits per second.
        # Corresponds to the JSON property `bitRateKbps`
        # @return [Fixnum]
        attr_accessor :bit_rate_kbps
      
        # Dimensions.
        # Corresponds to the JSON property `dimensions`
        # @return [Google::Apis::DisplayvideoV1::Dimensions]
        attr_accessor :dimensions
      
        # The size of the transcoded file, in bytes.
        # Corresponds to the JSON property `fileSizeBytes`
        # @return [Fixnum]
        attr_accessor :file_size_bytes
      
        # The frame rate of the transcoded video, in frames per second.
        # Corresponds to the JSON property `frameRate`
        # @return [Float]
        attr_accessor :frame_rate
      
        # The MIME type of the transcoded file.
        # Corresponds to the JSON property `mimeType`
        # @return [String]
        attr_accessor :mime_type
      
        # The name of the transcoded file.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Indicates if the transcoding was successful.
        # Corresponds to the JSON property `transcoded`
        # @return [Boolean]
        attr_accessor :transcoded
        alias_method :transcoded?, :transcoded
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @audio_bit_rate_kbps = args[:audio_bit_rate_kbps] if args.key?(:audio_bit_rate_kbps)
          @audio_sample_rate_hz = args[:audio_sample_rate_hz] if args.key?(:audio_sample_rate_hz)
          @bit_rate_kbps = args[:bit_rate_kbps] if args.key?(:bit_rate_kbps)
          @dimensions = args[:dimensions] if args.key?(:dimensions)
          @file_size_bytes = args[:file_size_bytes] if args.key?(:file_size_bytes)
          @frame_rate = args[:frame_rate] if args.key?(:frame_rate)
          @mime_type = args[:mime_type] if args.key?(:mime_type)
          @name = args[:name] if args.key?(:name)
          @transcoded = args[:transcoded] if args.key?(:transcoded)
        end
      end
      
      # A creative identifier provided by a registry that is unique across all
      # platforms. This is part of the VAST 4.0 standard.
      class UniversalAdId
        include Google::Apis::Core::Hashable
      
        # The unique creative identifier.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # The registry provides unique creative identifiers.
        # Corresponds to the JSON property `registry`
        # @return [String]
        attr_accessor :registry
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @id = args[:id] if args.key?(:id)
          @registry = args[:registry] if args.key?(:registry)
        end
      end
      
      # Details for assigned URL targeting option. This will be populated in the
      # details field of an AssignedTargetingOption when targeting_type is `
      # TARGETING_TYPE_URL`.
      class UrlAssignedTargetingOptionDetails
        include Google::Apis::Core::Hashable
      
        # Indicates if this option is being negatively targeted.
        # Corresponds to the JSON property `negative`
        # @return [Boolean]
        attr_accessor :negative
        alias_method :negative?, :negative
      
        # Required. The URL, for example `example.com`. DV360 supports two levels of
        # subdirectory targeting, for example `www.example.com/one-subdirectory-level/
        # second-level`, and five levels of subdomain targeting, for example `five.four.
        # three.two.one.example.com`.
        # Corresponds to the JSON property `url`
        # @return [String]
        attr_accessor :url
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @negative = args[:negative] if args.key?(:negative)
          @url = args[:url] if args.key?(:url)
        end
      end
      
      # A single user in Display & Video 360.
      class User
        include Google::Apis::Core::Hashable
      
        # The assigned user roles. Required in CreateUser. Output only in UpdateUser.
        # Can only be updated through BulkEditAssignedUserRoles.
        # Corresponds to the JSON property `assignedUserRoles`
        # @return [Array<Google::Apis::DisplayvideoV1::AssignedUserRole>]
        attr_accessor :assigned_user_roles
      
        # Required. The display name of the user. Must be UTF-8 encoded with a maximum
        # size of 240 bytes.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # Required. Immutable. The email address used to identify the user.
        # Corresponds to the JSON property `email`
        # @return [String]
        attr_accessor :email
      
        # Output only. The resource name of the user.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Output only. The unique ID of the user. Assigned by the system.
        # Corresponds to the JSON property `userId`
        # @return [Fixnum]
        attr_accessor :user_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @assigned_user_roles = args[:assigned_user_roles] if args.key?(:assigned_user_roles)
          @display_name = args[:display_name] if args.key?(:display_name)
          @email = args[:email] if args.key?(:email)
          @name = args[:name] if args.key?(:name)
          @user_id = args[:user_id] if args.key?(:user_id)
        end
      end
      
      # User rewarded content targeting option details. This will be populated in the
      # user_rewarded_content_details field when targeting_type is `
      # TARGETING_TYPE_USER_REWARDED_CONTENT`.
      class UserRewardedContentAssignedTargetingOptionDetails
        include Google::Apis::Core::Hashable
      
        # Required. The targeting_option_id field when targeting_type is `
        # TARGETING_TYPE_USER_REWARDED_CONTENT`.
        # Corresponds to the JSON property `targetingOptionId`
        # @return [String]
        attr_accessor :targeting_option_id
      
        # Output only. User rewarded content status for video ads.
        # Corresponds to the JSON property `userRewardedContent`
        # @return [String]
        attr_accessor :user_rewarded_content
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @targeting_option_id = args[:targeting_option_id] if args.key?(:targeting_option_id)
          @user_rewarded_content = args[:user_rewarded_content] if args.key?(:user_rewarded_content)
        end
      end
      
      # Represents a targetable user rewarded content status for video ads only. This
      # will be populated in the user_rewarded_content_details field when
      # targeting_type is `TARGETING_TYPE_USER_REWARDED_CONTENT`.
      class UserRewardedContentTargetingOptionDetails
        include Google::Apis::Core::Hashable
      
        # Output only. User rewarded content status for video ads.
        # Corresponds to the JSON property `userRewardedContent`
        # @return [String]
        attr_accessor :user_rewarded_content
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @user_rewarded_content = args[:user_rewarded_content] if args.key?(:user_rewarded_content)
        end
      end
      
      # Video player size targeting option details. This will be populated in the
      # video_player_size_details field when targeting_type is `
      # TARGETING_TYPE_VIDEO_PLAYER_SIZE`. Explicitly targeting all options is not
      # supported. Remove all video player size targeting options to achieve this
      # effect.
      class VideoPlayerSizeAssignedTargetingOptionDetails
        include Google::Apis::Core::Hashable
      
        # Required. The targeting_option_id field when targeting_type is `
        # TARGETING_TYPE_VIDEO_PLAYER_SIZE`.
        # Corresponds to the JSON property `targetingOptionId`
        # @return [String]
        attr_accessor :targeting_option_id
      
        # Output only. The video player size.
        # Corresponds to the JSON property `videoPlayerSize`
        # @return [String]
        attr_accessor :video_player_size
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @targeting_option_id = args[:targeting_option_id] if args.key?(:targeting_option_id)
          @video_player_size = args[:video_player_size] if args.key?(:video_player_size)
        end
      end
      
      # Represents a targetable video player size. This will be populated in the
      # video_player_size_details field when targeting_type is `
      # TARGETING_TYPE_VIDEO_PLAYER_SIZE`.
      class VideoPlayerSizeTargetingOptionDetails
        include Google::Apis::Core::Hashable
      
        # Output only. The video player size.
        # Corresponds to the JSON property `videoPlayerSize`
        # @return [String]
        attr_accessor :video_player_size
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @video_player_size = args[:video_player_size] if args.key?(:video_player_size)
        end
      end
      
      # Assigned viewability targeting option details. This will be populated in the
      # viewability_details field of an AssignedTargetingOption when targeting_type is
      # `TARGETING_TYPE_VIEWABILITY`.
      class ViewabilityAssignedTargetingOptionDetails
        include Google::Apis::Core::Hashable
      
        # Required. The targeting_option_id of a TargetingOption of type `
        # TARGETING_TYPE_VIEWABILITY` (e.g., "509010" for targeting the `
        # VIEWABILITY_10_PERCENT_OR_MORE` option).
        # Corresponds to the JSON property `targetingOptionId`
        # @return [String]
        attr_accessor :targeting_option_id
      
        # Output only. The predicted viewability percentage.
        # Corresponds to the JSON property `viewability`
        # @return [String]
        attr_accessor :viewability
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @targeting_option_id = args[:targeting_option_id] if args.key?(:targeting_option_id)
          @viewability = args[:viewability] if args.key?(:viewability)
        end
      end
      
      # Represents a targetable viewability. This will be populated in the
      # viewability_details field of a TargetingOption when targeting_type is `
      # TARGETING_TYPE_VIEWABILITY`.
      class ViewabilityTargetingOptionDetails
        include Google::Apis::Core::Hashable
      
        # Output only. The predicted viewability percentage.
        # Corresponds to the JSON property `viewability`
        # @return [String]
        attr_accessor :viewability
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @viewability = args[:viewability] if args.key?(:viewability)
        end
      end
    end
  end
end
