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
    module AdmobV1beta
      
      # Definition of a mediation ad source.
      class AdSource
        include Google::Apis::Core::Hashable
      
        # ID of this ad source.
        # Corresponds to the JSON property `adSourceId`
        # @return [String]
        attr_accessor :ad_source_id
      
        # Resource name of this ad source. Format is: accounts/`publisher_id`/adSources/`
        # ad_source_id`
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Display name of this ad source.
        # Corresponds to the JSON property `title`
        # @return [String]
        attr_accessor :title
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @ad_source_id = args[:ad_source_id] if args.key?(:ad_source_id)
          @name = args[:name] if args.key?(:name)
          @title = args[:title] if args.key?(:title)
        end
      end
      
      # Describes an AdMob ad unit.
      class AdUnit
        include Google::Apis::Core::Hashable
      
        # AdFormat of the ad unit. Possible values are as follows: "APP_OPEN" - App Open
        # ad format. "BANNER" - Banner ad format. "BANNER_INTERSTITIAL" - Legacy format
        # that can be used as either banner or interstitial. This format can no longer
        # be created but can be targeted by mediation groups. "INTERSTITIAL" - A full
        # screen ad. Supported ad types are "RICH_MEDIA" and "VIDEO". "NATIVE" - Native
        # ad format. "REWARDED" - An ad that, once viewed, gets a callback verifying the
        # view so that a reward can be given to the user. Supported ad types are "
        # RICH_MEDIA" (interactive) and video where video can not be excluded. "
        # REWARDED_INTERSTITIAL" - Rewarded Interstitial ad format. Only supports video
        # ad type. See https://support.google.com/admob/answer/9884467.
        # Corresponds to the JSON property `adFormat`
        # @return [String]
        attr_accessor :ad_format
      
        # Ad media type supported by this ad unit. Possible values as follows: "
        # RICH_MEDIA" - Text, image, and other non-video media. "VIDEO" - Video media.
        # Corresponds to the JSON property `adTypes`
        # @return [Array<String>]
        attr_accessor :ad_types
      
        # The externally visible ID of the ad unit which can be used to integrate with
        # the AdMob SDK. This is a read only property. Example: ca-app-pub-
        # 9876543210987654/0123456789
        # Corresponds to the JSON property `adUnitId`
        # @return [String]
        attr_accessor :ad_unit_id
      
        # The externally visible ID of the app this ad unit is associated with. Example:
        # ca-app-pub-9876543210987654~0123456789
        # Corresponds to the JSON property `appId`
        # @return [String]
        attr_accessor :app_id
      
        # The display name of the ad unit as shown in the AdMob UI, which is provided by
        # the user. The maximum length allowed is 80 characters.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # Resource name for this ad unit. Format is accounts/`publisher_id`/adUnits/`
        # ad_unit_id_fragment` Example: accounts/pub-9876543210987654/adUnits/0123456789
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Settings for a rewarded ad unit.
        # Corresponds to the JSON property `rewardSettings`
        # @return [Google::Apis::AdmobV1beta::AdUnitRewardSettings]
        attr_accessor :reward_settings
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @ad_format = args[:ad_format] if args.key?(:ad_format)
          @ad_types = args[:ad_types] if args.key?(:ad_types)
          @ad_unit_id = args[:ad_unit_id] if args.key?(:ad_unit_id)
          @app_id = args[:app_id] if args.key?(:app_id)
          @display_name = args[:display_name] if args.key?(:display_name)
          @name = args[:name] if args.key?(:name)
          @reward_settings = args[:reward_settings] if args.key?(:reward_settings)
        end
      end
      
      # Settings to map an AdMob ad unit to a 3rd party ad unit.
      class AdUnitMapping
        include Google::Apis::Core::Hashable
      
        # Settings for the specified ad unit to make an ad request to 3rd party ad
        # network. Key-value pairs with values set by the user for the keys requested by
        # the ad network. Please see https://support.google.com/admob/answer/3245073 for
        # details on how to configure the network settings.
        # Corresponds to the JSON property `adUnitConfigurations`
        # @return [Hash<String,String>]
        attr_accessor :ad_unit_configurations
      
        # The ID of mediation ad source adapter used by this ad unit mapping. The
        # adapter determines the information needed in the ad_network_settings.
        # Corresponds to the JSON property `adapterId`
        # @return [Fixnum]
        attr_accessor :adapter_id
      
        # Optional. The display name of this ad unit mapping instance.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # Resource name of this ad unit mapping. Format is: accounts/`publisher_id`/
        # adUnits/`ad_unit_id_fragment`/adUnitMappings/`ad_unit_mapping_id` Example:
        # accounts/pub-1234567890123456/adUnits/0123456789/adUnitMappings/987654321
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Output only. The status of this ad unit mapping.
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @ad_unit_configurations = args[:ad_unit_configurations] if args.key?(:ad_unit_configurations)
          @adapter_id = args[:adapter_id] if args.key?(:adapter_id)
          @display_name = args[:display_name] if args.key?(:display_name)
          @name = args[:name] if args.key?(:name)
          @state = args[:state] if args.key?(:state)
        end
      end
      
      # Settings for a rewarded ad unit.
      class AdUnitRewardSettings
        include Google::Apis::Core::Hashable
      
        # Reward amount for this ad unit.
        # Corresponds to the JSON property `unitAmount`
        # @return [Fixnum]
        attr_accessor :unit_amount
      
        # Reward item for this ad unit.
        # Corresponds to the JSON property `unitType`
        # @return [String]
        attr_accessor :unit_type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @unit_amount = args[:unit_amount] if args.key?(:unit_amount)
          @unit_type = args[:unit_type] if args.key?(:unit_type)
        end
      end
      
      # Describes adapters supported by each mediation ad source. Adapters correspond
      # to a specific SDK implementation of the ad source, and are each associated
      # with a single platform and a list of supported ad unit formats. Adapters may
      # also require setting some configurations to perform ad requests.
      # Configurations can be specified in the AdUnitMapping by setting the [
      # ad_unit_configurations](#AdUnitMapping.ad_unit_configurations) key/value pairs.
      # For example, the ad_unit_configurations can be used to pass various IDs to
      # the adapter's third-party SDK.
      class Adapter
        include Google::Apis::Core::Hashable
      
        # Output only. Configuration metadata associated with this adapter.
        # Corresponds to the JSON property `adapterConfigMetadata`
        # @return [Array<Google::Apis::AdmobV1beta::AdapterAdapterConfigMetadata>]
        attr_accessor :adapter_config_metadata
      
        # Output only. ID of this adapter. It is used to set [adapter_id](#AdUnitMapping.
        # adapter_id).
        # Corresponds to the JSON property `adapterId`
        # @return [String]
        attr_accessor :adapter_id
      
        # Output only. Indicates the formats of the ad units supported by this adapter.
        # Corresponds to the JSON property `formats`
        # @return [Array<String>]
        attr_accessor :formats
      
        # Output only. Resource name of the adapter. Format is: accounts/`publisher_id`/
        # adSources/`ad_source_id`/adapters/`adapter_id`.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Output only. Mobile application platform supported by this adapter. Supported
        # values are: IOS, ANDROID, WINDOWS_PHONE
        # Corresponds to the JSON property `platform`
        # @return [String]
        attr_accessor :platform
      
        # Output only. The display name of this adapter.
        # Corresponds to the JSON property `title`
        # @return [String]
        attr_accessor :title
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @adapter_config_metadata = args[:adapter_config_metadata] if args.key?(:adapter_config_metadata)
          @adapter_id = args[:adapter_id] if args.key?(:adapter_id)
          @formats = args[:formats] if args.key?(:formats)
          @name = args[:name] if args.key?(:name)
          @platform = args[:platform] if args.key?(:platform)
          @title = args[:title] if args.key?(:title)
        end
      end
      
      # Configuration metadata associated with this adapter. They are used to define
      # the ad_unit_configurations associated with AdUnitMappings for the this adapter.
      class AdapterAdapterConfigMetadata
        include Google::Apis::Core::Hashable
      
        # This is used to fill the key of the [ad_unit_configurations](#AdUnitMapping.
        # ad_unit_configurations).
        # Corresponds to the JSON property `adapterConfigMetadataId`
        # @return [String]
        attr_accessor :adapter_config_metadata_id
      
        # Name of the adapter configuration metadata.
        # Corresponds to the JSON property `adapterConfigMetadataLabel`
        # @return [String]
        attr_accessor :adapter_config_metadata_label
      
        # Whether this metadata is required for configuring the AdUnitMappings.
        # Corresponds to the JSON property `isRequired`
        # @return [Boolean]
        attr_accessor :is_required
        alias_method :is_required?, :is_required
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @adapter_config_metadata_id = args[:adapter_config_metadata_id] if args.key?(:adapter_config_metadata_id)
          @adapter_config_metadata_label = args[:adapter_config_metadata_label] if args.key?(:adapter_config_metadata_label)
          @is_required = args[:is_required] if args.key?(:is_required)
        end
      end
      
      # Describes an AdMob app for a specific platform (For example: Android or iOS).
      class App
        include Google::Apis::Core::Hashable
      
        # Output only. The approval state for the app. The field is read-only.
        # Corresponds to the JSON property `appApprovalState`
        # @return [String]
        attr_accessor :app_approval_state
      
        # The externally visible ID of the app which can be used to integrate with the
        # AdMob SDK. This is a read only property. Example: ca-app-pub-9876543210987654~
        # 0123456789
        # Corresponds to the JSON property `appId`
        # @return [String]
        attr_accessor :app_id
      
        # Information from the app store if the app is linked to an app store.
        # Corresponds to the JSON property `linkedAppInfo`
        # @return [Google::Apis::AdmobV1beta::AppLinkedAppInfo]
        attr_accessor :linked_app_info
      
        # Information provided for manual apps which are not linked to an application
        # store (Example: Google Play, App Store).
        # Corresponds to the JSON property `manualAppInfo`
        # @return [Google::Apis::AdmobV1beta::AppManualAppInfo]
        attr_accessor :manual_app_info
      
        # Resource name for this app. Format is accounts/`publisher_id`/apps/`
        # app_id_fragment` Example: accounts/pub-9876543210987654/apps/0123456789
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Describes the platform of the app. Limited to "IOS" and "ANDROID".
        # Corresponds to the JSON property `platform`
        # @return [String]
        attr_accessor :platform
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @app_approval_state = args[:app_approval_state] if args.key?(:app_approval_state)
          @app_id = args[:app_id] if args.key?(:app_id)
          @linked_app_info = args[:linked_app_info] if args.key?(:linked_app_info)
          @manual_app_info = args[:manual_app_info] if args.key?(:manual_app_info)
          @name = args[:name] if args.key?(:name)
          @platform = args[:platform] if args.key?(:platform)
        end
      end
      
      # Information from the app store if the app is linked to an app store.
      class AppLinkedAppInfo
        include Google::Apis::Core::Hashable
      
        # Optional. The app store information for published Android apps. This field is
        # only used for apps on the Android platform and will be ignored if the PLATFORM
        # is set to iOS. The default value is the Google Play App store. This field can
        # be updated after app is created. If the app is not published, this field will
        # not be included in the response.
        # Corresponds to the JSON property `androidAppStores`
        # @return [Array<String>]
        attr_accessor :android_app_stores
      
        # The app store ID of the app; present if and only if the app is linked to an
        # app store. If the app is added to the Google Play store, it will be the
        # application ID of the app. For example: "com.example.myapp". See https://
        # developer.android.com/studio/build/application-id. If the app is added to the
        # Apple App Store, it will be app store ID. For example "105169111". Note that
        # setting the app store id is considered an irreversible action. Once an app is
        # linked, it cannot be unlinked.
        # Corresponds to the JSON property `appStoreId`
        # @return [String]
        attr_accessor :app_store_id
      
        # Output only. Display name of the app as it appears in the app store. This is
        # an output-only field, and may be empty if the app cannot be found in the store.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @android_app_stores = args[:android_app_stores] if args.key?(:android_app_stores)
          @app_store_id = args[:app_store_id] if args.key?(:app_store_id)
          @display_name = args[:display_name] if args.key?(:display_name)
        end
      end
      
      # Information provided for manual apps which are not linked to an application
      # store (Example: Google Play, App Store).
      class AppManualAppInfo
        include Google::Apis::Core::Hashable
      
        # The display name of the app as shown in the AdMob UI, which is provided by the
        # user. The maximum length allowed is 80 characters.
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
      
      # Request to create a batch of ad unit mappings under the specific AdMob account.
      class BatchCreateAdUnitMappingsRequest
        include Google::Apis::Core::Hashable
      
        # Required. The request message specifying the ad unit mappings to create. A
        # maximum of 100 ad unit mappings can be created in a batch. If the number of ad
        # unit mappings in the batch request exceed 100, the entire request will be
        # rejected and no ad unit mappings will be created.
        # Corresponds to the JSON property `requests`
        # @return [Array<Google::Apis::AdmobV1beta::CreateAdUnitMappingRequest>]
        attr_accessor :requests
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @requests = args[:requests] if args.key?(:requests)
        end
      end
      
      # Response containing a batch of created ad unit mappings.
      class BatchCreateAdUnitMappingsResponse
        include Google::Apis::Core::Hashable
      
        # The Ad units mappings created under the requested account.
        # Corresponds to the JSON property `adUnitMappings`
        # @return [Array<Google::Apis::AdmobV1beta::AdUnitMapping>]
        attr_accessor :ad_unit_mappings
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @ad_unit_mappings = args[:ad_unit_mappings] if args.key?(:ad_unit_mappings)
        end
      end
      
      # The specification for generating a Campaign report. For example, the
      # specification to get IMPRESSIONS and CLICKS sliced by CAMPAIGN_ID can look
      # like the following example: ` "date_range": ` "start_date": `"year": 2021, "
      # month": 12, "day": 1`, "end_date": `"year": 2021, "month": 12, "day": 30` `, "
      # dimensions": ["CAMPAIGN_ID"], "metrics": ["IMPRESSIONS", "CLICKS"], `
      class CampaignReportSpec
        include Google::Apis::Core::Hashable
      
        # Specification of a single date range. Both dates are inclusive.
        # Corresponds to the JSON property `dateRange`
        # @return [Google::Apis::AdmobV1beta::DateRange]
        attr_accessor :date_range
      
        # List of dimensions of the report. The value combination of these dimensions
        # determines the row of the report. If no dimensions are specified, the report
        # returns a single row of requested metrics for the entire account.
        # Corresponds to the JSON property `dimensions`
        # @return [Array<String>]
        attr_accessor :dimensions
      
        # Language used for any localized text, such as certain applicable dimension
        # values. The language tag is defined in the IETF BCP47. Defaults to 'en-US' if
        # unspecified or invalid.
        # Corresponds to the JSON property `languageCode`
        # @return [String]
        attr_accessor :language_code
      
        # List of metrics of the report. A report must specify at least one metric.
        # Corresponds to the JSON property `metrics`
        # @return [Array<String>]
        attr_accessor :metrics
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @date_range = args[:date_range] if args.key?(:date_range)
          @dimensions = args[:dimensions] if args.key?(:dimensions)
          @language_code = args[:language_code] if args.key?(:language_code)
          @metrics = args[:metrics] if args.key?(:metrics)
        end
      end
      
      # Request to create an ad unit mapping under the specific AdMob account and ad
      # unit.
      class CreateAdUnitMappingRequest
        include Google::Apis::Core::Hashable
      
        # Settings to map an AdMob ad unit to a 3rd party ad unit.
        # Corresponds to the JSON property `adUnitMapping`
        # @return [Google::Apis::AdmobV1beta::AdUnitMapping]
        attr_accessor :ad_unit_mapping
      
        # Required. The parent which owns the ad unit mapping. Format: accounts/`
        # publisher_id`/adUnits/`ad_unit_id`
        # Corresponds to the JSON property `parent`
        # @return [String]
        attr_accessor :parent
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @ad_unit_mapping = args[:ad_unit_mapping] if args.key?(:ad_unit_mapping)
          @parent = args[:parent] if args.key?(:parent)
        end
      end
      
      # Represents a whole or partial calendar date, such as a birthday. The time of
      # day and time zone are either specified elsewhere or are insignificant. The
      # date is relative to the Gregorian Calendar. This can represent one of the
      # following: * A full date, with non-zero year, month, and day values. * A month
      # and day, with a zero year (for example, an anniversary). * A year on its own,
      # with a zero month and a zero day. * A year and month, with a zero day (for
      # example, a credit card expiration date). Related types: * google.type.
      # TimeOfDay * google.type.DateTime * google.protobuf.Timestamp
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
      
      # Specification of a single date range. Both dates are inclusive.
      class DateRange
        include Google::Apis::Core::Hashable
      
        # Represents a whole or partial calendar date, such as a birthday. The time of
        # day and time zone are either specified elsewhere or are insignificant. The
        # date is relative to the Gregorian Calendar. This can represent one of the
        # following: * A full date, with non-zero year, month, and day values. * A month
        # and day, with a zero year (for example, an anniversary). * A year on its own,
        # with a zero month and a zero day. * A year and month, with a zero day (for
        # example, a credit card expiration date). Related types: * google.type.
        # TimeOfDay * google.type.DateTime * google.protobuf.Timestamp
        # Corresponds to the JSON property `endDate`
        # @return [Google::Apis::AdmobV1beta::Date]
        attr_accessor :end_date
      
        # Represents a whole or partial calendar date, such as a birthday. The time of
        # day and time zone are either specified elsewhere or are insignificant. The
        # date is relative to the Gregorian Calendar. This can represent one of the
        # following: * A full date, with non-zero year, month, and day values. * A month
        # and day, with a zero year (for example, an anniversary). * A year on its own,
        # with a zero month and a zero day. * A year and month, with a zero day (for
        # example, a credit card expiration date). Related types: * google.type.
        # TimeOfDay * google.type.DateTime * google.protobuf.Timestamp
        # Corresponds to the JSON property `startDate`
        # @return [Google::Apis::AdmobV1beta::Date]
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
      
      # Request to generate campaign report.
      class GenerateCampaignReportRequest
        include Google::Apis::Core::Hashable
      
        # The specification for generating a Campaign report. For example, the
        # specification to get IMPRESSIONS and CLICKS sliced by CAMPAIGN_ID can look
        # like the following example: ` "date_range": ` "start_date": `"year": 2021, "
        # month": 12, "day": 1`, "end_date": `"year": 2021, "month": 12, "day": 30` `, "
        # dimensions": ["CAMPAIGN_ID"], "metrics": ["IMPRESSIONS", "CLICKS"], `
        # Corresponds to the JSON property `reportSpec`
        # @return [Google::Apis::AdmobV1beta::CampaignReportSpec]
        attr_accessor :report_spec
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @report_spec = args[:report_spec] if args.key?(:report_spec)
        end
      end
      
      # Campaign Report API response.
      class GenerateCampaignReportResponse
        include Google::Apis::Core::Hashable
      
        # The campaign report data from the specified publisher. At most 100000 rows
        # will be returned from the API.
        # Corresponds to the JSON property `rows`
        # @return [Array<Google::Apis::AdmobV1beta::ReportRow>]
        attr_accessor :rows
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @rows = args[:rows] if args.key?(:rows)
        end
      end
      
      # Request to generate an AdMob mediation report.
      class GenerateMediationReportRequest
        include Google::Apis::Core::Hashable
      
        # The specification for generating an AdMob Mediation report. For example, the
        # specification to get observed ECPM sliced by ad source and app for the 'US'
        # and 'CN' countries can look like the following example: ` "date_range": ` "
        # start_date": `"year": 2021, "month": 9, "day": 1`, "end_date": `"year": 2021, "
        # month": 9, "day": 30` `, "dimensions": ["AD_SOURCE", "APP", "COUNTRY"], "
        # metrics": ["OBSERVED_ECPM"], "dimension_filters": [ ` "dimension": "COUNTRY", "
        # matches_any": `"values": [`"value": "US", "value": "CN"`]` ` ], "
        # sort_conditions": [ `"dimension":"APP", order: "ASCENDING"` ], "
        # localization_settings": ` "currency_code": "USD", "language_code": "en-US" ` `
        # For a better understanding, you can treat the preceding specification like the
        # following pseudo SQL: SELECT AD_SOURCE, APP, COUNTRY, OBSERVED_ECPM FROM
        # MEDIATION_REPORT WHERE DATE >= '2021-09-01' AND DATE <= '2021-09-30' AND
        # COUNTRY IN ('US', 'CN') GROUP BY AD_SOURCE, APP, COUNTRY ORDER BY APP ASC;
        # Corresponds to the JSON property `reportSpec`
        # @return [Google::Apis::AdmobV1beta::MediationReportSpec]
        attr_accessor :report_spec
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @report_spec = args[:report_spec] if args.key?(:report_spec)
        end
      end
      
      # The streaming response for the AdMob mediation report where the first response
      # contains the report header, then a stream of row responses, and finally a
      # footer as the last response message. For example: [` "header": ` "date_range":
      # ` "start_date": `"year": 2018, "month": 9, "day": 1`, "end_date": `"year":
      # 2018, "month": 9, "day": 1` `, "localization_settings": ` "currency_code": "
      # USD", "language_code": "en-US" ` ` `, ` "row": ` "dimension_values": ` "DATE":
      # `"value": "20180918"`, "APP": ` "value": "ca-app-pub-8123415297019784~
      # 1001342552", "display_label": "My app name!" ` `, "metric_values": ` "
      # ESTIMATED_EARNINGS": `"decimal_value": "1324746"` ` ` `, ` "footer": `"
      # matching_row_count": 1` `]
      class GenerateMediationReportResponse
        include Google::Apis::Core::Hashable
      
        # Groups data available after report generation, for example, warnings and row
        # counts. Always sent as the last message in the stream response.
        # Corresponds to the JSON property `footer`
        # @return [Google::Apis::AdmobV1beta::ReportFooter]
        attr_accessor :footer
      
        # Groups data helps to treat the generated report. Always sent as a first
        # message in the stream response.
        # Corresponds to the JSON property `header`
        # @return [Google::Apis::AdmobV1beta::ReportHeader]
        attr_accessor :header
      
        # A row of the returning report.
        # Corresponds to the JSON property `row`
        # @return [Google::Apis::AdmobV1beta::ReportRow]
        attr_accessor :row
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @footer = args[:footer] if args.key?(:footer)
          @header = args[:header] if args.key?(:header)
          @row = args[:row] if args.key?(:row)
        end
      end
      
      # Request to generate an AdMob Network report.
      class GenerateNetworkReportRequest
        include Google::Apis::Core::Hashable
      
        # The specification for generating an AdMob Network report. For example, the
        # specification to get clicks and estimated earnings for only the 'US' and 'CN'
        # countries can look like the following example: ` 'date_range': ` 'start_date':
        # `'year': 2021, 'month': 9, 'day': 1`, 'end_date': `'year': 2021, 'month': 9, '
        # day': 30` `, 'dimensions': ['DATE', 'APP', 'COUNTRY'], 'metrics': ['CLICKS', '
        # ESTIMATED_EARNINGS'], 'dimension_filters': [ ` 'dimension': 'COUNTRY', '
        # matches_any': `'values': [`'value': 'US', 'value': 'CN'`]` ` ], '
        # sort_conditions': [ `'dimension':'APP', order: 'ASCENDING'`, `'metric':'CLICKS'
        # , order: 'DESCENDING'` ], 'localization_settings': ` 'currency_code': 'USD', '
        # language_code': 'en-US' ` ` For a better understanding, you can treat the
        # preceding specification like the following pseudo SQL: SELECT DATE, APP,
        # COUNTRY, CLICKS, ESTIMATED_EARNINGS FROM NETWORK_REPORT WHERE DATE >= '2021-09-
        # 01' AND DATE <= '2021-09-30' AND COUNTRY IN ('US', 'CN') GROUP BY DATE, APP,
        # COUNTRY ORDER BY APP ASC, CLICKS DESC;
        # Corresponds to the JSON property `reportSpec`
        # @return [Google::Apis::AdmobV1beta::NetworkReportSpec]
        attr_accessor :report_spec
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @report_spec = args[:report_spec] if args.key?(:report_spec)
        end
      end
      
      # The streaming response for the AdMob Network report where the first response
      # contains the report header, then a stream of row responses, and finally a
      # footer as the last response message. For example: [` "header": ` "dateRange": `
      # "startDate": `"year": 2018, "month": 9, "day": 1`, "endDate": `"year": 2018, "
      # month": 9, "day": 1` `, "localizationSettings": ` "currencyCode": "USD", "
      # languageCode": "en-US" ` ` `, ` "row": ` "dimensionValues": ` "DATE": `"value":
      # "20180918"`, "APP": ` "value": "ca-app-pub-8123415297019784~1001342552",
      # displayLabel: "My app name!" ` `, "metricValues": ` "ESTIMATED_EARNINGS": `"
      # microsValue": 6500000` ` ` `, ` "footer": `"matchingRowCount": 1` `]
      class GenerateNetworkReportResponse
        include Google::Apis::Core::Hashable
      
        # Groups data available after report generation, for example, warnings and row
        # counts. Always sent as the last message in the stream response.
        # Corresponds to the JSON property `footer`
        # @return [Google::Apis::AdmobV1beta::ReportFooter]
        attr_accessor :footer
      
        # Groups data helps to treat the generated report. Always sent as a first
        # message in the stream response.
        # Corresponds to the JSON property `header`
        # @return [Google::Apis::AdmobV1beta::ReportHeader]
        attr_accessor :header
      
        # A row of the returning report.
        # Corresponds to the JSON property `row`
        # @return [Google::Apis::AdmobV1beta::ReportRow]
        attr_accessor :row
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @footer = args[:footer] if args.key?(:footer)
          @header = args[:header] if args.key?(:header)
          @row = args[:row] if args.key?(:row)
        end
      end
      
      # Response for the ListAdSourcesRequest.
      class ListAdSourcesResponse
        include Google::Apis::Core::Hashable
      
        # The ad sources.
        # Corresponds to the JSON property `adSources`
        # @return [Array<Google::Apis::AdmobV1beta::AdSource>]
        attr_accessor :ad_sources
      
        # Used to set the `page_token` in the `ListAdSourcesRequest` to retrieve the
        # next page. If this field is omitted, there are no subsequent pages.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @ad_sources = args[:ad_sources] if args.key?(:ad_sources)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # Response for the ListAdUnitMappingsRequest.
      class ListAdUnitMappingsResponse
        include Google::Apis::Core::Hashable
      
        # The ad unit mappings from the specified account and ad unit.
        # Corresponds to the JSON property `adUnitMappings`
        # @return [Array<Google::Apis::AdmobV1beta::AdUnitMapping>]
        attr_accessor :ad_unit_mappings
      
        # Used to set the `page_token` in the `ListAdUnitMappingsRequest` to retrieve
        # the next page. If this field is omitted, there are no subsequent pages.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @ad_unit_mappings = args[:ad_unit_mappings] if args.key?(:ad_unit_mappings)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # Response for the ad units list request.
      class ListAdUnitsResponse
        include Google::Apis::Core::Hashable
      
        # The resulting ad units for the requested account.
        # Corresponds to the JSON property `adUnits`
        # @return [Array<Google::Apis::AdmobV1beta::AdUnit>]
        attr_accessor :ad_units
      
        # If not empty, indicates that there may be more ad units for the request; this
        # value should be passed in a new `ListAdUnitsRequest`.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @ad_units = args[:ad_units] if args.key?(:ad_units)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # Response for the ListAdaptersRequest.
      class ListAdaptersResponse
        include Google::Apis::Core::Hashable
      
        # The adapter.
        # Corresponds to the JSON property `adapters`
        # @return [Array<Google::Apis::AdmobV1beta::Adapter>]
        attr_accessor :adapters
      
        # Used to set the `page_token` in the `ListAdapterRequest` to retrieve the next
        # page. If this field is omitted, there are no subsequent pages.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @adapters = args[:adapters] if args.key?(:adapters)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # Response for the apps list request.
      class ListAppsResponse
        include Google::Apis::Core::Hashable
      
        # The resulting apps for the requested account.
        # Corresponds to the JSON property `apps`
        # @return [Array<Google::Apis::AdmobV1beta::App>]
        attr_accessor :apps
      
        # If not empty, indicates that there may be more apps for the request; this
        # value should be passed in a new `ListAppsRequest`.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @apps = args[:apps] if args.key?(:apps)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # Response for the mediation groups list request.
      class ListMediationGroupsResponse
        include Google::Apis::Core::Hashable
      
        # The resulting mediation groups for the requested account.
        # Corresponds to the JSON property `mediationGroups`
        # @return [Array<Google::Apis::AdmobV1beta::MediationGroup>]
        attr_accessor :mediation_groups
      
        # If not empty, indicates that there may be more mediation groups for the
        # request; this value should be passed in a new `ListMediationGroupsRequest`.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @mediation_groups = args[:mediation_groups] if args.key?(:mediation_groups)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # Response for the publisher account list request.
      class ListPublisherAccountsResponse
        include Google::Apis::Core::Hashable
      
        # Publisher that the client credentials can access.
        # Corresponds to the JSON property `account`
        # @return [Array<Google::Apis::AdmobV1beta::PublisherAccount>]
        attr_accessor :account
      
        # If not empty, indicates that there might be more accounts for the request; you
        # must pass this value in a new `ListPublisherAccountsRequest`.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @account = args[:account] if args.key?(:account)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # Localization settings for reports, such as currency and language. It affects
      # how metrics are calculated.
      class LocalizationSettings
        include Google::Apis::Core::Hashable
      
        # Currency code of the earning related metrics, which is the 3-letter code
        # defined in ISO 4217. The daily average rate is used for the currency
        # conversion. Defaults to the account currency code if unspecified.
        # Corresponds to the JSON property `currencyCode`
        # @return [String]
        attr_accessor :currency_code
      
        # Language used for any localized text, such as some dimension value display
        # labels. The language tag defined in the IETF BCP47. Defaults to 'en-US' if
        # unspecified.
        # Corresponds to the JSON property `languageCode`
        # @return [String]
        attr_accessor :language_code
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @currency_code = args[:currency_code] if args.key?(:currency_code)
          @language_code = args[:language_code] if args.key?(:language_code)
        end
      end
      
      # The mediation A/B experiment.
      class MediationAbExperiment
        include Google::Apis::Core::Hashable
      
        # Output only. The experiment mediation lines for control. They are inherited
        # from the parent mediation group. It is an output only field.
        # Corresponds to the JSON property `controlMediationLines`
        # @return [Array<Google::Apis::AdmobV1beta::MediationAbExperimentExperimentMediationLine>]
        attr_accessor :control_mediation_lines
      
        # The display name for the mediation A/B experiment.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # Output only. Unique identifier for the mediation A/B experiment. It is an
        # output only property.
        # Corresponds to the JSON property `experimentId`
        # @return [String]
        attr_accessor :experiment_id
      
        # Resource name for this experiment. The format is accounts/`publisher_id`/
        # mediationGroups/`mediation_group_id`/mediationAbExperiment/ `
        # mediation_group_experiment_id`. For example: accounts/pub-9876543210987654/
        # mediationGroups/0123456789/ mediationAbExperiment/12345
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Output only. The state of the experiment. It is an output only field.
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        # The experiment mediation lines created for the treatment. They will be used
        # for serving when the experiment status is RUNNING.
        # Corresponds to the JSON property `treatmentMediationLines`
        # @return [Array<Google::Apis::AdmobV1beta::MediationAbExperimentExperimentMediationLine>]
        attr_accessor :treatment_mediation_lines
      
        # The percentage of the mediation A/B experiment traffic that will be send to
        # the treatment (variant B). The remainder is sent to the control (variant A).
        # The percentage is expressed as an integer in the inclusive range of [1,99].
        # See https://support.google.com/admob/answer/9572326 for details.
        # Corresponds to the JSON property `treatmentTrafficPercentage`
        # @return [Fixnum]
        attr_accessor :treatment_traffic_percentage
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @control_mediation_lines = args[:control_mediation_lines] if args.key?(:control_mediation_lines)
          @display_name = args[:display_name] if args.key?(:display_name)
          @experiment_id = args[:experiment_id] if args.key?(:experiment_id)
          @name = args[:name] if args.key?(:name)
          @state = args[:state] if args.key?(:state)
          @treatment_mediation_lines = args[:treatment_mediation_lines] if args.key?(:treatment_mediation_lines)
          @treatment_traffic_percentage = args[:treatment_traffic_percentage] if args.key?(:treatment_traffic_percentage)
        end
      end
      
      # The mediation group line for the experiment. It will be used for serving
      # during the run of the experiment.
      class MediationAbExperimentExperimentMediationLine
        include Google::Apis::Core::Hashable
      
        # Settings for an ad network used by a mediation group.
        # Corresponds to the JSON property `mediationGroupLine`
        # @return [Google::Apis::AdmobV1beta::MediationGroupMediationGroupLine]
        attr_accessor :mediation_group_line
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @mediation_group_line = args[:mediation_group_line] if args.key?(:mediation_group_line)
        end
      end
      
      # Describes an AdMob mediation group.
      class MediationGroup
        include Google::Apis::Core::Hashable
      
        # User provided name for the mediation group. The maximum length allowed is 120
        # characters.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # Output only. The state of the mediation a/b experiment that belongs to this
        # mediation group.
        # Corresponds to the JSON property `mediationAbExperimentState`
        # @return [String]
        attr_accessor :mediation_ab_experiment_state
      
        # The ID of the mediation group. Example: "0123456789". This is a read only
        # property.
        # Corresponds to the JSON property `mediationGroupId`
        # @return [String]
        attr_accessor :mediation_group_id
      
        # The mediation lines used for serving for this mediation group. Key is the ID
        # of the mediation group line. For creation, use distinct negative values as
        # placeholder.
        # Corresponds to the JSON property `mediationGroupLines`
        # @return [Hash<String,Google::Apis::AdmobV1beta::MediationGroupMediationGroupLine>]
        attr_accessor :mediation_group_lines
      
        # Resource name for this mediation group. Format is: accounts/`publisher_id`/
        # mediationGroups/`mediation_group_id` Example: accounts/pub-9876543210987654/
        # mediationGroups/0123456789
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # The status of the mediation group. Only enabled mediation groups will be
        # served.
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        # Set of criteria targeted by this mediation group. For example, a mediation
        # group can target specific ad unit IDs, platform, format and geo location.
        # Corresponds to the JSON property `targeting`
        # @return [Google::Apis::AdmobV1beta::MediationGroupTargeting]
        attr_accessor :targeting
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @display_name = args[:display_name] if args.key?(:display_name)
          @mediation_ab_experiment_state = args[:mediation_ab_experiment_state] if args.key?(:mediation_ab_experiment_state)
          @mediation_group_id = args[:mediation_group_id] if args.key?(:mediation_group_id)
          @mediation_group_lines = args[:mediation_group_lines] if args.key?(:mediation_group_lines)
          @name = args[:name] if args.key?(:name)
          @state = args[:state] if args.key?(:state)
          @targeting = args[:targeting] if args.key?(:targeting)
        end
      end
      
      # Settings for an ad network used by a mediation group.
      class MediationGroupMediationGroupLine
        include Google::Apis::Core::Hashable
      
        # The ID of the ad source this mediation line is associated with.
        # Corresponds to the JSON property `adSourceId`
        # @return [String]
        attr_accessor :ad_source_id
      
        # References of the ad unit mappings for each ad unit associated with this
        # mediation line. Key is the ad unit ID, value is resource name of the ad unit
        # mapping. For mediation lines where the ad source id is the AdMob Network, ad
        # unit mappings will be ignored.
        # Corresponds to the JSON property `adUnitMappings`
        # @return [Hash<String,String>]
        attr_accessor :ad_unit_mappings
      
        # The CPM for this allocation line. $0.01 is the minimum allowed amount. For
        # LIVE CPM modes, the default amount is $0.01. This value is ignored if `
        # cpm_mode` is `LIVE`. **Warning:** "USD" is the only supported currency at the
        # moment. The unit is in micros.
        # Corresponds to the JSON property `cpmMicros`
        # @return [Fixnum]
        attr_accessor :cpm_micros
      
        # Indicates how the CPM for this mediation line is provided. Note that `MANUAL`
        # and `LIVE` are the only fully-supported mode at the moment. Please use the
        # AdMob UI (https://admob.google.com) if you wish to create or update to other
        # cpm modes.
        # Corresponds to the JSON property `cpmMode`
        # @return [String]
        attr_accessor :cpm_mode
      
        # User-provided label for this mediation line. The maximum length allowed is 255
        # characters.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # Output only. The Mediation A/B experiment variant to which the mediation group
        # line belongs to.
        # Corresponds to the JSON property `experimentVariant`
        # @return [String]
        attr_accessor :experiment_variant
      
        # The 16 digit ID for this mediation line e.g. 0123456789012345. When creating a
        # new mediation group line, use a distinct negative integer as the ID place
        # holder.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # The status of the mediation group line. Only enabled mediation group lines
        # will be served.
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @ad_source_id = args[:ad_source_id] if args.key?(:ad_source_id)
          @ad_unit_mappings = args[:ad_unit_mappings] if args.key?(:ad_unit_mappings)
          @cpm_micros = args[:cpm_micros] if args.key?(:cpm_micros)
          @cpm_mode = args[:cpm_mode] if args.key?(:cpm_mode)
          @display_name = args[:display_name] if args.key?(:display_name)
          @experiment_variant = args[:experiment_variant] if args.key?(:experiment_variant)
          @id = args[:id] if args.key?(:id)
          @state = args[:state] if args.key?(:state)
        end
      end
      
      # Set of criteria targeted by this mediation group. For example, a mediation
      # group can target specific ad unit IDs, platform, format and geo location.
      class MediationGroupTargeting
        include Google::Apis::Core::Hashable
      
        # Ad units targeted by this mediation group. Example: "ca-app-pub-1234/8790".
        # Corresponds to the JSON property `adUnitIds`
        # @return [Array<String>]
        attr_accessor :ad_unit_ids
      
        # The Unicode country/region code (CLDR) of a location, such as "US". Unset if
        # this mediation group does not exclude any region.
        # Corresponds to the JSON property `excludedRegionCodes`
        # @return [Array<String>]
        attr_accessor :excluded_region_codes
      
        # Ad format targeted by this mediation group. Examples: "banner", "native".
        # Corresponds to the JSON property `format`
        # @return [String]
        attr_accessor :format
      
        # The parameter can be used to target ad requests based on the availability of
        # the IDFA. If set to ALL, the mediation group applies to all ad requests (with
        # or without IDFA). If set to AVAILABLE, the mediation group applies to ad
        # requests with IDFA. If set to NOT_AVAILABLE, the mediation group applies to ad
        # requests without IDFA. Doesn't need to be specified for an ANDROID device.
        # Corresponds to the JSON property `idfaTargeting`
        # @return [String]
        attr_accessor :idfa_targeting
      
        # Describes the platform of the app. Examples: "IOS", "Android".
        # Corresponds to the JSON property `platform`
        # @return [String]
        attr_accessor :platform
      
        # The Unicode country/region code (CLDR) of a location, such as "US". Unset if
        # this mediation group targets all available regions. For more information, see
        # http://www.unicode.org/reports/tr35/#unicode_region_subtag.
        # Corresponds to the JSON property `targetedRegionCodes`
        # @return [Array<String>]
        attr_accessor :targeted_region_codes
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @ad_unit_ids = args[:ad_unit_ids] if args.key?(:ad_unit_ids)
          @excluded_region_codes = args[:excluded_region_codes] if args.key?(:excluded_region_codes)
          @format = args[:format] if args.key?(:format)
          @idfa_targeting = args[:idfa_targeting] if args.key?(:idfa_targeting)
          @platform = args[:platform] if args.key?(:platform)
          @targeted_region_codes = args[:targeted_region_codes] if args.key?(:targeted_region_codes)
        end
      end
      
      # The specification for generating an AdMob Mediation report. For example, the
      # specification to get observed ECPM sliced by ad source and app for the 'US'
      # and 'CN' countries can look like the following example: ` "date_range": ` "
      # start_date": `"year": 2021, "month": 9, "day": 1`, "end_date": `"year": 2021, "
      # month": 9, "day": 30` `, "dimensions": ["AD_SOURCE", "APP", "COUNTRY"], "
      # metrics": ["OBSERVED_ECPM"], "dimension_filters": [ ` "dimension": "COUNTRY", "
      # matches_any": `"values": [`"value": "US", "value": "CN"`]` ` ], "
      # sort_conditions": [ `"dimension":"APP", order: "ASCENDING"` ], "
      # localization_settings": ` "currency_code": "USD", "language_code": "en-US" ` `
      # For a better understanding, you can treat the preceding specification like the
      # following pseudo SQL: SELECT AD_SOURCE, APP, COUNTRY, OBSERVED_ECPM FROM
      # MEDIATION_REPORT WHERE DATE >= '2021-09-01' AND DATE <= '2021-09-30' AND
      # COUNTRY IN ('US', 'CN') GROUP BY AD_SOURCE, APP, COUNTRY ORDER BY APP ASC;
      class MediationReportSpec
        include Google::Apis::Core::Hashable
      
        # Specification of a single date range. Both dates are inclusive.
        # Corresponds to the JSON property `dateRange`
        # @return [Google::Apis::AdmobV1beta::DateRange]
        attr_accessor :date_range
      
        # Describes which report rows to match based on their dimension values.
        # Corresponds to the JSON property `dimensionFilters`
        # @return [Array<Google::Apis::AdmobV1beta::MediationReportSpecDimensionFilter>]
        attr_accessor :dimension_filters
      
        # List of dimensions of the report. The value combination of these dimensions
        # determines the row of the report. If no dimensions are specified, the report
        # returns a single row of requested metrics for the entire account.
        # Corresponds to the JSON property `dimensions`
        # @return [Array<String>]
        attr_accessor :dimensions
      
        # Localization settings for reports, such as currency and language. It affects
        # how metrics are calculated.
        # Corresponds to the JSON property `localizationSettings`
        # @return [Google::Apis::AdmobV1beta::LocalizationSettings]
        attr_accessor :localization_settings
      
        # Maximum number of report data rows to return. If the value is not set, the API
        # returns as many rows as possible, up to 100000. Acceptable values are 1-100000,
        # inclusive. Values larger than 100000 return an error.
        # Corresponds to the JSON property `maxReportRows`
        # @return [Fixnum]
        attr_accessor :max_report_rows
      
        # List of metrics of the report. A report must specify at least one metric.
        # Corresponds to the JSON property `metrics`
        # @return [Array<String>]
        attr_accessor :metrics
      
        # Describes the sorting of report rows. The order of the condition in the list
        # defines its precedence; the earlier the condition, the higher its precedence.
        # If no sort conditions are specified, the row ordering is undefined.
        # Corresponds to the JSON property `sortConditions`
        # @return [Array<Google::Apis::AdmobV1beta::MediationReportSpecSortCondition>]
        attr_accessor :sort_conditions
      
        # A report time zone. Accepts an IANA TZ name values, such as "America/
        # Los_Angeles." If no time zone is defined, the account default takes effect.
        # Check default value by the get account action. **Warning:** The "America/
        # Los_Angeles" is the only supported value at the moment.
        # Corresponds to the JSON property `timeZone`
        # @return [String]
        attr_accessor :time_zone
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @date_range = args[:date_range] if args.key?(:date_range)
          @dimension_filters = args[:dimension_filters] if args.key?(:dimension_filters)
          @dimensions = args[:dimensions] if args.key?(:dimensions)
          @localization_settings = args[:localization_settings] if args.key?(:localization_settings)
          @max_report_rows = args[:max_report_rows] if args.key?(:max_report_rows)
          @metrics = args[:metrics] if args.key?(:metrics)
          @sort_conditions = args[:sort_conditions] if args.key?(:sort_conditions)
          @time_zone = args[:time_zone] if args.key?(:time_zone)
        end
      end
      
      # Describes which report rows to match based on their dimension values.
      class MediationReportSpecDimensionFilter
        include Google::Apis::Core::Hashable
      
        # Applies the filter criterion to the specified dimension.
        # Corresponds to the JSON property `dimension`
        # @return [String]
        attr_accessor :dimension
      
        # List of string values.
        # Corresponds to the JSON property `matchesAny`
        # @return [Google::Apis::AdmobV1beta::StringList]
        attr_accessor :matches_any
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @dimension = args[:dimension] if args.key?(:dimension)
          @matches_any = args[:matches_any] if args.key?(:matches_any)
        end
      end
      
      # Sorting direction to be applied on a dimension or a metric.
      class MediationReportSpecSortCondition
        include Google::Apis::Core::Hashable
      
        # Sort by the specified dimension.
        # Corresponds to the JSON property `dimension`
        # @return [String]
        attr_accessor :dimension
      
        # Sort by the specified metric.
        # Corresponds to the JSON property `metric`
        # @return [String]
        attr_accessor :metric
      
        # Sorting order of the dimension or metric.
        # Corresponds to the JSON property `order`
        # @return [String]
        attr_accessor :order
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @dimension = args[:dimension] if args.key?(:dimension)
          @metric = args[:metric] if args.key?(:metric)
          @order = args[:order] if args.key?(:order)
        end
      end
      
      # The specification for generating an AdMob Network report. For example, the
      # specification to get clicks and estimated earnings for only the 'US' and 'CN'
      # countries can look like the following example: ` 'date_range': ` 'start_date':
      # `'year': 2021, 'month': 9, 'day': 1`, 'end_date': `'year': 2021, 'month': 9, '
      # day': 30` `, 'dimensions': ['DATE', 'APP', 'COUNTRY'], 'metrics': ['CLICKS', '
      # ESTIMATED_EARNINGS'], 'dimension_filters': [ ` 'dimension': 'COUNTRY', '
      # matches_any': `'values': [`'value': 'US', 'value': 'CN'`]` ` ], '
      # sort_conditions': [ `'dimension':'APP', order: 'ASCENDING'`, `'metric':'CLICKS'
      # , order: 'DESCENDING'` ], 'localization_settings': ` 'currency_code': 'USD', '
      # language_code': 'en-US' ` ` For a better understanding, you can treat the
      # preceding specification like the following pseudo SQL: SELECT DATE, APP,
      # COUNTRY, CLICKS, ESTIMATED_EARNINGS FROM NETWORK_REPORT WHERE DATE >= '2021-09-
      # 01' AND DATE <= '2021-09-30' AND COUNTRY IN ('US', 'CN') GROUP BY DATE, APP,
      # COUNTRY ORDER BY APP ASC, CLICKS DESC;
      class NetworkReportSpec
        include Google::Apis::Core::Hashable
      
        # Specification of a single date range. Both dates are inclusive.
        # Corresponds to the JSON property `dateRange`
        # @return [Google::Apis::AdmobV1beta::DateRange]
        attr_accessor :date_range
      
        # Describes which report rows to match based on their dimension values.
        # Corresponds to the JSON property `dimensionFilters`
        # @return [Array<Google::Apis::AdmobV1beta::NetworkReportSpecDimensionFilter>]
        attr_accessor :dimension_filters
      
        # List of dimensions of the report. The value combination of these dimensions
        # determines the row of the report. If no dimensions are specified, the report
        # returns a single row of requested metrics for the entire account.
        # Corresponds to the JSON property `dimensions`
        # @return [Array<String>]
        attr_accessor :dimensions
      
        # Localization settings for reports, such as currency and language. It affects
        # how metrics are calculated.
        # Corresponds to the JSON property `localizationSettings`
        # @return [Google::Apis::AdmobV1beta::LocalizationSettings]
        attr_accessor :localization_settings
      
        # Maximum number of report data rows to return. If the value is not set, the API
        # returns as many rows as possible, up to 100000. Acceptable values are 1-100000,
        # inclusive. Values larger than 100000 return an error.
        # Corresponds to the JSON property `maxReportRows`
        # @return [Fixnum]
        attr_accessor :max_report_rows
      
        # List of metrics of the report. A report must specify at least one metric.
        # Corresponds to the JSON property `metrics`
        # @return [Array<String>]
        attr_accessor :metrics
      
        # Describes the sorting of report rows. The order of the condition in the list
        # defines its precedence; the earlier the condition, the higher its precedence.
        # If no sort conditions are specified, the row ordering is undefined.
        # Corresponds to the JSON property `sortConditions`
        # @return [Array<Google::Apis::AdmobV1beta::NetworkReportSpecSortCondition>]
        attr_accessor :sort_conditions
      
        # A report time zone. Accepts an IANA TZ name values, such as "America/
        # Los_Angeles." If no time zone is defined, the account default takes effect.
        # Check default value by the get account action. **Warning:** The "America/
        # Los_Angeles" is the only supported value at the moment.
        # Corresponds to the JSON property `timeZone`
        # @return [String]
        attr_accessor :time_zone
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @date_range = args[:date_range] if args.key?(:date_range)
          @dimension_filters = args[:dimension_filters] if args.key?(:dimension_filters)
          @dimensions = args[:dimensions] if args.key?(:dimensions)
          @localization_settings = args[:localization_settings] if args.key?(:localization_settings)
          @max_report_rows = args[:max_report_rows] if args.key?(:max_report_rows)
          @metrics = args[:metrics] if args.key?(:metrics)
          @sort_conditions = args[:sort_conditions] if args.key?(:sort_conditions)
          @time_zone = args[:time_zone] if args.key?(:time_zone)
        end
      end
      
      # Describes which report rows to match based on their dimension values.
      class NetworkReportSpecDimensionFilter
        include Google::Apis::Core::Hashable
      
        # Applies the filter criterion to the specified dimension.
        # Corresponds to the JSON property `dimension`
        # @return [String]
        attr_accessor :dimension
      
        # List of string values.
        # Corresponds to the JSON property `matchesAny`
        # @return [Google::Apis::AdmobV1beta::StringList]
        attr_accessor :matches_any
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @dimension = args[:dimension] if args.key?(:dimension)
          @matches_any = args[:matches_any] if args.key?(:matches_any)
        end
      end
      
      # Sorting direction to be applied on a dimension or a metric.
      class NetworkReportSpecSortCondition
        include Google::Apis::Core::Hashable
      
        # Sort by the specified dimension.
        # Corresponds to the JSON property `dimension`
        # @return [String]
        attr_accessor :dimension
      
        # Sort by the specified metric.
        # Corresponds to the JSON property `metric`
        # @return [String]
        attr_accessor :metric
      
        # Sorting order of the dimension or metric.
        # Corresponds to the JSON property `order`
        # @return [String]
        attr_accessor :order
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @dimension = args[:dimension] if args.key?(:dimension)
          @metric = args[:metric] if args.key?(:metric)
          @order = args[:order] if args.key?(:order)
        end
      end
      
      # A publisher account contains information relevant to the use of this API, such
      # as the time zone used for the reports.
      class PublisherAccount
        include Google::Apis::Core::Hashable
      
        # Currency code of the earning-related metrics, which is the 3-letter code
        # defined in ISO 4217. The daily average rate is used for the currency
        # conversion.
        # Corresponds to the JSON property `currencyCode`
        # @return [String]
        attr_accessor :currency_code
      
        # Resource name of this account. Format is accounts/`publisher_id`.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # The unique ID by which this publisher account can be identified in the API
        # requests (for example, pub-1234567890).
        # Corresponds to the JSON property `publisherId`
        # @return [String]
        attr_accessor :publisher_id
      
        # The time zone that is used in reports that are generated for this account. The
        # value is a time-zone ID as specified by the CLDR project, for example, "
        # America/Los_Angeles".
        # Corresponds to the JSON property `reportingTimeZone`
        # @return [String]
        attr_accessor :reporting_time_zone
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @currency_code = args[:currency_code] if args.key?(:currency_code)
          @name = args[:name] if args.key?(:name)
          @publisher_id = args[:publisher_id] if args.key?(:publisher_id)
          @reporting_time_zone = args[:reporting_time_zone] if args.key?(:reporting_time_zone)
        end
      end
      
      # Groups data available after report generation, for example, warnings and row
      # counts. Always sent as the last message in the stream response.
      class ReportFooter
        include Google::Apis::Core::Hashable
      
        # Total number of rows that matched the request. Warning: This count does NOT
        # always match the number of rows in the response. Do not make that assumption
        # when processing the response.
        # Corresponds to the JSON property `matchingRowCount`
        # @return [Fixnum]
        attr_accessor :matching_row_count
      
        # Warnings associated with generation of the report.
        # Corresponds to the JSON property `warnings`
        # @return [Array<Google::Apis::AdmobV1beta::ReportWarning>]
        attr_accessor :warnings
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @matching_row_count = args[:matching_row_count] if args.key?(:matching_row_count)
          @warnings = args[:warnings] if args.key?(:warnings)
        end
      end
      
      # Groups data helps to treat the generated report. Always sent as a first
      # message in the stream response.
      class ReportHeader
        include Google::Apis::Core::Hashable
      
        # Specification of a single date range. Both dates are inclusive.
        # Corresponds to the JSON property `dateRange`
        # @return [Google::Apis::AdmobV1beta::DateRange]
        attr_accessor :date_range
      
        # Localization settings for reports, such as currency and language. It affects
        # how metrics are calculated.
        # Corresponds to the JSON property `localizationSettings`
        # @return [Google::Apis::AdmobV1beta::LocalizationSettings]
        attr_accessor :localization_settings
      
        # The report time zone. The value is a time-zone ID as specified by the CLDR
        # project, for example, "America/Los_Angeles".
        # Corresponds to the JSON property `reportingTimeZone`
        # @return [String]
        attr_accessor :reporting_time_zone
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @date_range = args[:date_range] if args.key?(:date_range)
          @localization_settings = args[:localization_settings] if args.key?(:localization_settings)
          @reporting_time_zone = args[:reporting_time_zone] if args.key?(:reporting_time_zone)
        end
      end
      
      # A row of the returning report.
      class ReportRow
        include Google::Apis::Core::Hashable
      
        # Map of dimension values in a row, with keys as enum name of the dimensions.
        # Corresponds to the JSON property `dimensionValues`
        # @return [Hash<String,Google::Apis::AdmobV1beta::ReportRowDimensionValue>]
        attr_accessor :dimension_values
      
        # Map of metric values in a row, with keys as enum name of the metrics. If a
        # metric being requested has no value returned, the map will not include it.
        # Corresponds to the JSON property `metricValues`
        # @return [Hash<String,Google::Apis::AdmobV1beta::ReportRowMetricValue>]
        attr_accessor :metric_values
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @dimension_values = args[:dimension_values] if args.key?(:dimension_values)
          @metric_values = args[:metric_values] if args.key?(:metric_values)
        end
      end
      
      # Representation of a dimension value.
      class ReportRowDimensionValue
        include Google::Apis::Core::Hashable
      
        # The localized string representation of the value. If unspecified, the display
        # label should be derived from the value.
        # Corresponds to the JSON property `displayLabel`
        # @return [String]
        attr_accessor :display_label
      
        # Dimension value in the format specified in the report's spec Dimension enum.
        # Corresponds to the JSON property `value`
        # @return [String]
        attr_accessor :value
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @display_label = args[:display_label] if args.key?(:display_label)
          @value = args[:value] if args.key?(:value)
        end
      end
      
      # Representation of a metric value.
      class ReportRowMetricValue
        include Google::Apis::Core::Hashable
      
        # Double precision (approximate) decimal values. Rates are from 0 to 1.
        # Corresponds to the JSON property `doubleValue`
        # @return [Float]
        attr_accessor :double_value
      
        # Metric integer value.
        # Corresponds to the JSON property `integerValue`
        # @return [Fixnum]
        attr_accessor :integer_value
      
        # Amount in micros. One million is equivalent to one unit. Currency value is in
        # the unit (USD, EUR or other) specified by the request. For example, $6.50
        # whould be represented as 6500000 micros.
        # Corresponds to the JSON property `microsValue`
        # @return [Fixnum]
        attr_accessor :micros_value
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @double_value = args[:double_value] if args.key?(:double_value)
          @integer_value = args[:integer_value] if args.key?(:integer_value)
          @micros_value = args[:micros_value] if args.key?(:micros_value)
        end
      end
      
      # Warnings associated with generation of the report.
      class ReportWarning
        include Google::Apis::Core::Hashable
      
        # Describes the details of the warning message, in English.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # Type of the warning.
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @description = args[:description] if args.key?(:description)
          @type = args[:type] if args.key?(:type)
        end
      end
      
      # Request to end the mediation A/B experiment and choose a winning variant.
      class StopMediationAbExperimentRequest
        include Google::Apis::Core::Hashable
      
        # The choice for the winning variant.
        # Corresponds to the JSON property `variantChoice`
        # @return [String]
        attr_accessor :variant_choice
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @variant_choice = args[:variant_choice] if args.key?(:variant_choice)
        end
      end
      
      # List of string values.
      class StringList
        include Google::Apis::Core::Hashable
      
        # The string values.
        # Corresponds to the JSON property `values`
        # @return [Array<String>]
        attr_accessor :values
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @values = args[:values] if args.key?(:values)
        end
      end
    end
  end
end
