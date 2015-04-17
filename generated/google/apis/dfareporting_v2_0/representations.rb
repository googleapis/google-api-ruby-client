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
    module DfareportingV2_0
      class AccountRepresentation < Google::Apis::Core::JsonRepresentation; end
      class AccountActiveAdSummaryRepresentation < Google::Apis::Core::JsonRepresentation; end
      class AccountPermissionRepresentation < Google::Apis::Core::JsonRepresentation; end
      class AccountPermissionGroupRepresentation < Google::Apis::Core::JsonRepresentation; end
      class AccountPermissionGroupsListResponseRepresentation < Google::Apis::Core::JsonRepresentation; end
      class AccountPermissionsListResponseRepresentation < Google::Apis::Core::JsonRepresentation; end
      class AccountUserProfileRepresentation < Google::Apis::Core::JsonRepresentation; end
      class AccountUserProfilesListResponseRepresentation < Google::Apis::Core::JsonRepresentation; end
      class AccountsListResponseRepresentation < Google::Apis::Core::JsonRepresentation; end
      class ActivitiesRepresentation < Google::Apis::Core::JsonRepresentation; end
      class AdRepresentation < Google::Apis::Core::JsonRepresentation; end
      class AdsListResponseRepresentation < Google::Apis::Core::JsonRepresentation; end
      class AdvertiserRepresentation < Google::Apis::Core::JsonRepresentation; end
      class AdvertiserGroupRepresentation < Google::Apis::Core::JsonRepresentation; end
      class AdvertiserGroupsListResponseRepresentation < Google::Apis::Core::JsonRepresentation; end
      class AdvertisersListResponseRepresentation < Google::Apis::Core::JsonRepresentation; end
      class AudienceSegmentRepresentation < Google::Apis::Core::JsonRepresentation; end
      class AudienceSegmentGroupRepresentation < Google::Apis::Core::JsonRepresentation; end
      class BrowserRepresentation < Google::Apis::Core::JsonRepresentation; end
      class BrowsersListResponseRepresentation < Google::Apis::Core::JsonRepresentation; end
      class CampaignRepresentation < Google::Apis::Core::JsonRepresentation; end
      class CampaignCreativeAssociationRepresentation < Google::Apis::Core::JsonRepresentation; end
      class CampaignCreativeAssociationsListResponseRepresentation < Google::Apis::Core::JsonRepresentation; end
      class CampaignsListResponseRepresentation < Google::Apis::Core::JsonRepresentation; end
      class ChangeLogRepresentation < Google::Apis::Core::JsonRepresentation; end
      class ChangeLogsListResponseRepresentation < Google::Apis::Core::JsonRepresentation; end
      class CitiesListResponseRepresentation < Google::Apis::Core::JsonRepresentation; end
      class CityRepresentation < Google::Apis::Core::JsonRepresentation; end
      class ClickTagRepresentation < Google::Apis::Core::JsonRepresentation; end
      class ClickThroughUrlRepresentation < Google::Apis::Core::JsonRepresentation; end
      class ClickThroughUrlSuffixPropertiesRepresentation < Google::Apis::Core::JsonRepresentation; end
      class CompanionClickThroughOverrideRepresentation < Google::Apis::Core::JsonRepresentation; end
      class CompatibleFieldsRepresentation < Google::Apis::Core::JsonRepresentation; end
      class ConnectionTypeRepresentation < Google::Apis::Core::JsonRepresentation; end
      class ConnectionTypesListResponseRepresentation < Google::Apis::Core::JsonRepresentation; end
      class ContentCategoriesListResponseRepresentation < Google::Apis::Core::JsonRepresentation; end
      class ContentCategoryRepresentation < Google::Apis::Core::JsonRepresentation; end
      class CountriesListResponseRepresentation < Google::Apis::Core::JsonRepresentation; end
      class CountryRepresentation < Google::Apis::Core::JsonRepresentation; end
      class CreativeRepresentation < Google::Apis::Core::JsonRepresentation; end
      class CreativeAssetRepresentation < Google::Apis::Core::JsonRepresentation; end
      class CreativeAssetIdRepresentation < Google::Apis::Core::JsonRepresentation; end
      class CreativeAssetMetadataRepresentation < Google::Apis::Core::JsonRepresentation; end
      class CreativeAssignmentRepresentation < Google::Apis::Core::JsonRepresentation; end
      class CreativeCustomEventRepresentation < Google::Apis::Core::JsonRepresentation; end
      class CreativeFieldRepresentation < Google::Apis::Core::JsonRepresentation; end
      class CreativeFieldAssignmentRepresentation < Google::Apis::Core::JsonRepresentation; end
      class CreativeFieldValueRepresentation < Google::Apis::Core::JsonRepresentation; end
      class CreativeFieldValuesListResponseRepresentation < Google::Apis::Core::JsonRepresentation; end
      class CreativeFieldsListResponseRepresentation < Google::Apis::Core::JsonRepresentation; end
      class CreativeGroupRepresentation < Google::Apis::Core::JsonRepresentation; end
      class CreativeGroupAssignmentRepresentation < Google::Apis::Core::JsonRepresentation; end
      class CreativeGroupsListResponseRepresentation < Google::Apis::Core::JsonRepresentation; end
      class CreativeOptimizationConfigurationRepresentation < Google::Apis::Core::JsonRepresentation; end
      class CreativeRotationRepresentation < Google::Apis::Core::JsonRepresentation; end
      class CreativeSettingsRepresentation < Google::Apis::Core::JsonRepresentation; end
      class CreativesListResponseRepresentation < Google::Apis::Core::JsonRepresentation; end
      class CrossDimensionReachReportCompatibleFieldsRepresentation < Google::Apis::Core::JsonRepresentation; end
      class CustomRichMediaEventsRepresentation < Google::Apis::Core::JsonRepresentation; end
      class DateRangeRepresentation < Google::Apis::Core::JsonRepresentation; end
      class DayPartTargetingRepresentation < Google::Apis::Core::JsonRepresentation; end
      class DefaultClickThroughEventTagPropertiesRepresentation < Google::Apis::Core::JsonRepresentation; end
      class DeliveryScheduleRepresentation < Google::Apis::Core::JsonRepresentation; end
      class DfpSettingsRepresentation < Google::Apis::Core::JsonRepresentation; end
      class DimensionRepresentation < Google::Apis::Core::JsonRepresentation; end
      class DimensionFilterRepresentation < Google::Apis::Core::JsonRepresentation; end
      class DimensionValueRepresentation < Google::Apis::Core::JsonRepresentation; end
      class DimensionValueListRepresentation < Google::Apis::Core::JsonRepresentation; end
      class DimensionValueRequestRepresentation < Google::Apis::Core::JsonRepresentation; end
      class DirectorySiteRepresentation < Google::Apis::Core::JsonRepresentation; end
      class DirectorySiteContactRepresentation < Google::Apis::Core::JsonRepresentation; end
      class DirectorySiteContactAssignmentRepresentation < Google::Apis::Core::JsonRepresentation; end
      class DirectorySiteContactsListResponseRepresentation < Google::Apis::Core::JsonRepresentation; end
      class DirectorySiteSettingsRepresentation < Google::Apis::Core::JsonRepresentation; end
      class DirectorySitesListResponseRepresentation < Google::Apis::Core::JsonRepresentation; end
      class EventTagRepresentation < Google::Apis::Core::JsonRepresentation; end
      class EventTagOverrideRepresentation < Google::Apis::Core::JsonRepresentation; end
      class EventTagsListResponseRepresentation < Google::Apis::Core::JsonRepresentation; end
      class FileRepresentation < Google::Apis::Core::JsonRepresentation; end
      class FileListRepresentation < Google::Apis::Core::JsonRepresentation; end
      class FloodlightActivitiesGenerateTagResponseRepresentation < Google::Apis::Core::JsonRepresentation; end
      class FloodlightActivitiesListResponseRepresentation < Google::Apis::Core::JsonRepresentation; end
      class FloodlightActivityRepresentation < Google::Apis::Core::JsonRepresentation; end
      class FloodlightActivityDynamicTagRepresentation < Google::Apis::Core::JsonRepresentation; end
      class FloodlightActivityGroupRepresentation < Google::Apis::Core::JsonRepresentation; end
      class FloodlightActivityGroupsListResponseRepresentation < Google::Apis::Core::JsonRepresentation; end
      class FloodlightActivityPublisherDynamicTagRepresentation < Google::Apis::Core::JsonRepresentation; end
      class FloodlightConfigurationRepresentation < Google::Apis::Core::JsonRepresentation; end
      class FloodlightConfigurationsListResponseRepresentation < Google::Apis::Core::JsonRepresentation; end
      class FloodlightReportCompatibleFieldsRepresentation < Google::Apis::Core::JsonRepresentation; end
      class FrequencyCapRepresentation < Google::Apis::Core::JsonRepresentation; end
      class FsCommandRepresentation < Google::Apis::Core::JsonRepresentation; end
      class GeoTargetingRepresentation < Google::Apis::Core::JsonRepresentation; end
      class KeyValueTargetingExpressionRepresentation < Google::Apis::Core::JsonRepresentation; end
      class LandingPageRepresentation < Google::Apis::Core::JsonRepresentation; end
      class LandingPagesListResponseRepresentation < Google::Apis::Core::JsonRepresentation; end
      class LastModifiedInfoRepresentation < Google::Apis::Core::JsonRepresentation; end
      class ListTargetingExpressionRepresentation < Google::Apis::Core::JsonRepresentation; end
      class LookbackConfigurationRepresentation < Google::Apis::Core::JsonRepresentation; end
      class MetricRepresentation < Google::Apis::Core::JsonRepresentation; end
      class MetroRepresentation < Google::Apis::Core::JsonRepresentation; end
      class MetrosListResponseRepresentation < Google::Apis::Core::JsonRepresentation; end
      class MobileCarrierRepresentation < Google::Apis::Core::JsonRepresentation; end
      class MobileCarriersListResponseRepresentation < Google::Apis::Core::JsonRepresentation; end
      class ObjectFilterRepresentation < Google::Apis::Core::JsonRepresentation; end
      class OffsetPositionRepresentation < Google::Apis::Core::JsonRepresentation; end
      class OmnitureSettingsRepresentation < Google::Apis::Core::JsonRepresentation; end
      class OperatingSystemRepresentation < Google::Apis::Core::JsonRepresentation; end
      class OperatingSystemVersionRepresentation < Google::Apis::Core::JsonRepresentation; end
      class OperatingSystemVersionsListResponseRepresentation < Google::Apis::Core::JsonRepresentation; end
      class OperatingSystemsListResponseRepresentation < Google::Apis::Core::JsonRepresentation; end
      class OptimizationActivityRepresentation < Google::Apis::Core::JsonRepresentation; end
      class PathToConversionReportCompatibleFieldsRepresentation < Google::Apis::Core::JsonRepresentation; end
      class PlacementRepresentation < Google::Apis::Core::JsonRepresentation; end
      class PlacementAssignmentRepresentation < Google::Apis::Core::JsonRepresentation; end
      class PlacementGroupRepresentation < Google::Apis::Core::JsonRepresentation; end
      class PlacementGroupsListResponseRepresentation < Google::Apis::Core::JsonRepresentation; end
      class PlacementStrategiesListResponseRepresentation < Google::Apis::Core::JsonRepresentation; end
      class PlacementStrategyRepresentation < Google::Apis::Core::JsonRepresentation; end
      class PlacementTagRepresentation < Google::Apis::Core::JsonRepresentation; end
      class PlacementsGenerateTagsResponseRepresentation < Google::Apis::Core::JsonRepresentation; end
      class PlacementsListResponseRepresentation < Google::Apis::Core::JsonRepresentation; end
      class PlatformTypeRepresentation < Google::Apis::Core::JsonRepresentation; end
      class PlatformTypesListResponseRepresentation < Google::Apis::Core::JsonRepresentation; end
      class PopupWindowPropertiesRepresentation < Google::Apis::Core::JsonRepresentation; end
      class PostalCodeRepresentation < Google::Apis::Core::JsonRepresentation; end
      class PostalCodesListResponseRepresentation < Google::Apis::Core::JsonRepresentation; end
      class PricingScheduleRepresentation < Google::Apis::Core::JsonRepresentation; end
      class PricingSchedulePricingPeriodRepresentation < Google::Apis::Core::JsonRepresentation; end
      class ProgrammaticSettingRepresentation < Google::Apis::Core::JsonRepresentation; end
      class ReachReportCompatibleFieldsRepresentation < Google::Apis::Core::JsonRepresentation; end
      class RecipientRepresentation < Google::Apis::Core::JsonRepresentation; end
      class RegionRepresentation < Google::Apis::Core::JsonRepresentation; end
      class RegionsListResponseRepresentation < Google::Apis::Core::JsonRepresentation; end
      class ReportRepresentation < Google::Apis::Core::JsonRepresentation; end
      class ReportCompatibleFieldsRepresentation < Google::Apis::Core::JsonRepresentation; end
      class ReportListRepresentation < Google::Apis::Core::JsonRepresentation; end
      class ReportsConfigurationRepresentation < Google::Apis::Core::JsonRepresentation; end
      class RichMediaExitOverrideRepresentation < Google::Apis::Core::JsonRepresentation; end
      class SiteRepresentation < Google::Apis::Core::JsonRepresentation; end
      class SiteContactRepresentation < Google::Apis::Core::JsonRepresentation; end
      class SiteSettingsRepresentation < Google::Apis::Core::JsonRepresentation; end
      class SitesListResponseRepresentation < Google::Apis::Core::JsonRepresentation; end
      class SizeRepresentation < Google::Apis::Core::JsonRepresentation; end
      class SizesListResponseRepresentation < Google::Apis::Core::JsonRepresentation; end
      class SortedDimensionRepresentation < Google::Apis::Core::JsonRepresentation; end
      class SubaccountRepresentation < Google::Apis::Core::JsonRepresentation; end
      class SubaccountsListResponseRepresentation < Google::Apis::Core::JsonRepresentation; end
      class TagDataRepresentation < Google::Apis::Core::JsonRepresentation; end
      class TagSettingRepresentation < Google::Apis::Core::JsonRepresentation; end
      class TagSettingsRepresentation < Google::Apis::Core::JsonRepresentation; end
      class TargetWindowRepresentation < Google::Apis::Core::JsonRepresentation; end
      class TechnologyTargetingRepresentation < Google::Apis::Core::JsonRepresentation; end
      class ThirdPartyTrackingUrlRepresentation < Google::Apis::Core::JsonRepresentation; end
      class UserDefinedVariableConfigurationRepresentation < Google::Apis::Core::JsonRepresentation; end
      class UserProfileRepresentation < Google::Apis::Core::JsonRepresentation; end
      class UserProfileListRepresentation < Google::Apis::Core::JsonRepresentation; end
      class UserRoleRepresentation < Google::Apis::Core::JsonRepresentation; end
      class UserRolePermissionRepresentation < Google::Apis::Core::JsonRepresentation; end
      class UserRolePermissionGroupRepresentation < Google::Apis::Core::JsonRepresentation; end
      class UserRolePermissionGroupsListResponseRepresentation < Google::Apis::Core::JsonRepresentation; end
      class UserRolePermissionsListResponseRepresentation < Google::Apis::Core::JsonRepresentation; end
      class UserRolesListResponseRepresentation < Google::Apis::Core::JsonRepresentation; end

      # @private
      class AccountRepresentation < Google::Apis::Core::JsonRepresentation
        collection :account_permission_ids, as: 'accountPermissionIds'
        
        property :account_profile, as: 'accountProfile'
        property :active, as: 'active'
        property :active_ads_limit_tier, as: 'activeAdsLimitTier'
        property :active_view_opt_out, as: 'activeViewOptOut'
        collection :available_permission_ids, as: 'availablePermissionIds'
        
        property :comscore_vce_enabled, as: 'comscoreVceEnabled'
        property :country_id, as: 'countryId'
        property :currency_id, as: 'currencyId'
        property :default_creative_size_id, as: 'defaultCreativeSizeId'
        property :description, as: 'description'
        property :id, as: 'id'
        property :kind, as: 'kind'
        property :locale, as: 'locale'
        property :maximum_image_size, as: 'maximumImageSize'
        property :name, as: 'name'
        property :nielsen_ocr_enabled, as: 'nielsenOcrEnabled'
        property :reports_configuration, as: 'reportsConfiguration', class: Google::Apis::DfareportingV2_0::ReportsConfiguration, decorator: Google::Apis::DfareportingV2_0::ReportsConfigurationRepresentation
        
        property :teaser_size_limit, as: 'teaserSizeLimit'
      end

      # @private
      class AccountActiveAdSummaryRepresentation < Google::Apis::Core::JsonRepresentation
        property :account_id, as: 'accountId'
        property :active_ads, as: 'activeAds'
        property :active_ads_limit_tier, as: 'activeAdsLimitTier'
        property :available_ads, as: 'availableAds'
        property :kind, as: 'kind'
      end

      # @private
      class AccountPermissionRepresentation < Google::Apis::Core::JsonRepresentation
        collection :account_profiles, as: 'accountProfiles'
        
        property :id, as: 'id'
        property :kind, as: 'kind'
        property :level, as: 'level'
        property :name, as: 'name'
        property :permission_group_id, as: 'permissionGroupId'
      end

      # @private
      class AccountPermissionGroupRepresentation < Google::Apis::Core::JsonRepresentation
        property :id, as: 'id'
        property :kind, as: 'kind'
        property :name, as: 'name'
      end

      # @private
      class AccountPermissionGroupsListResponseRepresentation < Google::Apis::Core::JsonRepresentation
        collection :account_permission_groups, as: 'accountPermissionGroups', class: Google::Apis::DfareportingV2_0::AccountPermissionGroup, decorator: Google::Apis::DfareportingV2_0::AccountPermissionGroupRepresentation
        
        
        property :kind, as: 'kind'
      end

      # @private
      class AccountPermissionsListResponseRepresentation < Google::Apis::Core::JsonRepresentation
        collection :account_permissions, as: 'accountPermissions', class: Google::Apis::DfareportingV2_0::AccountPermission, decorator: Google::Apis::DfareportingV2_0::AccountPermissionRepresentation
        
        
        property :kind, as: 'kind'
      end

      # @private
      class AccountUserProfileRepresentation < Google::Apis::Core::JsonRepresentation
        property :account_id, as: 'accountId'
        property :active, as: 'active'
        property :advertiser_filter, as: 'advertiserFilter', class: Google::Apis::DfareportingV2_0::ObjectFilter, decorator: Google::Apis::DfareportingV2_0::ObjectFilterRepresentation
        
        property :campaign_filter, as: 'campaignFilter', class: Google::Apis::DfareportingV2_0::ObjectFilter, decorator: Google::Apis::DfareportingV2_0::ObjectFilterRepresentation
        
        property :comments, as: 'comments'
        property :email, as: 'email'
        property :id, as: 'id'
        property :kind, as: 'kind'
        property :locale, as: 'locale'
        property :name, as: 'name'
        property :site_filter, as: 'siteFilter', class: Google::Apis::DfareportingV2_0::ObjectFilter, decorator: Google::Apis::DfareportingV2_0::ObjectFilterRepresentation
        
        property :subaccount_id, as: 'subaccountId'
        property :trafficker_type, as: 'traffickerType'
        property :user_access_type, as: 'userAccessType'
        property :user_role_filter, as: 'userRoleFilter', class: Google::Apis::DfareportingV2_0::ObjectFilter, decorator: Google::Apis::DfareportingV2_0::ObjectFilterRepresentation
        
        property :user_role_id, as: 'userRoleId'
      end

      # @private
      class AccountUserProfilesListResponseRepresentation < Google::Apis::Core::JsonRepresentation
        collection :account_user_profiles, as: 'accountUserProfiles', class: Google::Apis::DfareportingV2_0::AccountUserProfile, decorator: Google::Apis::DfareportingV2_0::AccountUserProfileRepresentation
        
        
        property :kind, as: 'kind'
        property :next_page_token, as: 'nextPageToken'
      end

      # @private
      class AccountsListResponseRepresentation < Google::Apis::Core::JsonRepresentation
        collection :accounts, as: 'accounts', class: Google::Apis::DfareportingV2_0::Account, decorator: Google::Apis::DfareportingV2_0::AccountRepresentation
        
        
        property :kind, as: 'kind'
        property :next_page_token, as: 'nextPageToken'
      end

      # @private
      class ActivitiesRepresentation < Google::Apis::Core::JsonRepresentation
        collection :filters, as: 'filters', class: Google::Apis::DfareportingV2_0::DimensionValue, decorator: Google::Apis::DfareportingV2_0::DimensionValueRepresentation
        
        
        property :kind, as: 'kind'
        collection :metric_names, as: 'metricNames'
      end

      # @private
      class AdRepresentation < Google::Apis::Core::JsonRepresentation
        property :account_id, as: 'accountId'
        property :active, as: 'active'
        property :advertiser_id, as: 'advertiserId'
        property :advertiser_id_dimension_value, as: 'advertiserIdDimensionValue', class: Google::Apis::DfareportingV2_0::DimensionValue, decorator: Google::Apis::DfareportingV2_0::DimensionValueRepresentation
        
        property :archived, as: 'archived'
        property :audience_segment_id, as: 'audienceSegmentId'
        property :campaign_id, as: 'campaignId'
        property :campaign_id_dimension_value, as: 'campaignIdDimensionValue', class: Google::Apis::DfareportingV2_0::DimensionValue, decorator: Google::Apis::DfareportingV2_0::DimensionValueRepresentation
        
        property :click_through_url, as: 'clickThroughUrl', class: Google::Apis::DfareportingV2_0::ClickThroughUrl, decorator: Google::Apis::DfareportingV2_0::ClickThroughUrlRepresentation
        
        property :click_through_url_suffix_properties, as: 'clickThroughUrlSuffixProperties', class: Google::Apis::DfareportingV2_0::ClickThroughUrlSuffixProperties, decorator: Google::Apis::DfareportingV2_0::ClickThroughUrlSuffixPropertiesRepresentation
        
        property :comments, as: 'comments'
        property :compatibility, as: 'compatibility'
        property :create_info, as: 'createInfo', class: Google::Apis::DfareportingV2_0::LastModifiedInfo, decorator: Google::Apis::DfareportingV2_0::LastModifiedInfoRepresentation
        
        collection :creative_group_assignments, as: 'creativeGroupAssignments', class: Google::Apis::DfareportingV2_0::CreativeGroupAssignment, decorator: Google::Apis::DfareportingV2_0::CreativeGroupAssignmentRepresentation
        
        
        property :creative_rotation, as: 'creativeRotation', class: Google::Apis::DfareportingV2_0::CreativeRotation, decorator: Google::Apis::DfareportingV2_0::CreativeRotationRepresentation
        
        property :day_part_targeting, as: 'dayPartTargeting', class: Google::Apis::DfareportingV2_0::DayPartTargeting, decorator: Google::Apis::DfareportingV2_0::DayPartTargetingRepresentation
        
        property :default_click_through_event_tag_properties, as: 'defaultClickThroughEventTagProperties', class: Google::Apis::DfareportingV2_0::DefaultClickThroughEventTagProperties, decorator: Google::Apis::DfareportingV2_0::DefaultClickThroughEventTagPropertiesRepresentation
        
        property :delivery_schedule, as: 'deliverySchedule', class: Google::Apis::DfareportingV2_0::DeliverySchedule, decorator: Google::Apis::DfareportingV2_0::DeliveryScheduleRepresentation
        
        property :dynamic_click_tracker, as: 'dynamicClickTracker'
        property :end_time, as: 'endTime', type: DateTime
        collection :event_tag_overrides, as: 'eventTagOverrides', class: Google::Apis::DfareportingV2_0::EventTagOverride, decorator: Google::Apis::DfareportingV2_0::EventTagOverrideRepresentation
        
        
        property :geo_targeting, as: 'geoTargeting', class: Google::Apis::DfareportingV2_0::GeoTargeting, decorator: Google::Apis::DfareportingV2_0::GeoTargetingRepresentation
        
        property :id, as: 'id'
        property :id_dimension_value, as: 'idDimensionValue', class: Google::Apis::DfareportingV2_0::DimensionValue, decorator: Google::Apis::DfareportingV2_0::DimensionValueRepresentation
        
        property :key_value_targeting_expression, as: 'keyValueTargetingExpression', class: Google::Apis::DfareportingV2_0::KeyValueTargetingExpression, decorator: Google::Apis::DfareportingV2_0::KeyValueTargetingExpressionRepresentation
        
        property :kind, as: 'kind'
        property :last_modified_info, as: 'lastModifiedInfo', class: Google::Apis::DfareportingV2_0::LastModifiedInfo, decorator: Google::Apis::DfareportingV2_0::LastModifiedInfoRepresentation
        
        property :name, as: 'name'
        collection :placement_assignments, as: 'placementAssignments', class: Google::Apis::DfareportingV2_0::PlacementAssignment, decorator: Google::Apis::DfareportingV2_0::PlacementAssignmentRepresentation
        
        
        property :remarketing_list_expression, as: 'remarketing_list_expression', class: Google::Apis::DfareportingV2_0::ListTargetingExpression, decorator: Google::Apis::DfareportingV2_0::ListTargetingExpressionRepresentation
        
        property :size, as: 'size', class: Google::Apis::DfareportingV2_0::Size, decorator: Google::Apis::DfareportingV2_0::SizeRepresentation
        
        property :ssl_compliant, as: 'sslCompliant'
        property :ssl_required, as: 'sslRequired'
        property :start_time, as: 'startTime', type: DateTime
        property :subaccount_id, as: 'subaccountId'
        property :technology_targeting, as: 'technologyTargeting', class: Google::Apis::DfareportingV2_0::TechnologyTargeting, decorator: Google::Apis::DfareportingV2_0::TechnologyTargetingRepresentation
        
        property :type, as: 'type'
      end

      # @private
      class AdsListResponseRepresentation < Google::Apis::Core::JsonRepresentation
        collection :ads, as: 'ads', class: Google::Apis::DfareportingV2_0::Ad, decorator: Google::Apis::DfareportingV2_0::AdRepresentation
        
        
        property :kind, as: 'kind'
        property :next_page_token, as: 'nextPageToken'
      end

      # @private
      class AdvertiserRepresentation < Google::Apis::Core::JsonRepresentation
        property :account_id, as: 'accountId'
        property :advertiser_group_id, as: 'advertiserGroupId'
        property :click_through_url_suffix, as: 'clickThroughUrlSuffix'
        property :default_click_through_event_tag_id, as: 'defaultClickThroughEventTagId'
        property :default_email, as: 'defaultEmail'
        property :floodlight_configuration_id, as: 'floodlightConfigurationId'
        property :floodlight_configuration_id_dimension_value, as: 'floodlightConfigurationIdDimensionValue', class: Google::Apis::DfareportingV2_0::DimensionValue, decorator: Google::Apis::DfareportingV2_0::DimensionValueRepresentation
        
        property :id, as: 'id'
        property :id_dimension_value, as: 'idDimensionValue', class: Google::Apis::DfareportingV2_0::DimensionValue, decorator: Google::Apis::DfareportingV2_0::DimensionValueRepresentation
        
        property :kind, as: 'kind'
        property :name, as: 'name'
        property :status, as: 'status'
        property :subaccount_id, as: 'subaccountId'
      end

      # @private
      class AdvertiserGroupRepresentation < Google::Apis::Core::JsonRepresentation
        property :account_id, as: 'accountId'
        property :id, as: 'id'
        property :kind, as: 'kind'
        property :name, as: 'name'
      end

      # @private
      class AdvertiserGroupsListResponseRepresentation < Google::Apis::Core::JsonRepresentation
        collection :advertiser_groups, as: 'advertiserGroups', class: Google::Apis::DfareportingV2_0::AdvertiserGroup, decorator: Google::Apis::DfareportingV2_0::AdvertiserGroupRepresentation
        
        
        property :kind, as: 'kind'
        property :next_page_token, as: 'nextPageToken'
      end

      # @private
      class AdvertisersListResponseRepresentation < Google::Apis::Core::JsonRepresentation
        collection :advertisers, as: 'advertisers', class: Google::Apis::DfareportingV2_0::Advertiser, decorator: Google::Apis::DfareportingV2_0::AdvertiserRepresentation
        
        
        property :kind, as: 'kind'
        property :next_page_token, as: 'nextPageToken'
      end

      # @private
      class AudienceSegmentRepresentation < Google::Apis::Core::JsonRepresentation
        property :allocation, as: 'allocation'
        property :id, as: 'id'
        property :name, as: 'name'
      end

      # @private
      class AudienceSegmentGroupRepresentation < Google::Apis::Core::JsonRepresentation
        collection :audience_segments, as: 'audienceSegments', class: Google::Apis::DfareportingV2_0::AudienceSegment, decorator: Google::Apis::DfareportingV2_0::AudienceSegmentRepresentation
        
        
        property :id, as: 'id'
        property :name, as: 'name'
      end

      # @private
      class BrowserRepresentation < Google::Apis::Core::JsonRepresentation
        property :browser_version_id, as: 'browserVersionId'
        property :dart_id, as: 'dartId'
        property :kind, as: 'kind'
        property :major_version, as: 'majorVersion'
        property :minor_version, as: 'minorVersion'
        property :name, as: 'name'
      end

      # @private
      class BrowsersListResponseRepresentation < Google::Apis::Core::JsonRepresentation
        collection :browsers, as: 'browsers', class: Google::Apis::DfareportingV2_0::Browser, decorator: Google::Apis::DfareportingV2_0::BrowserRepresentation
        
        
        property :kind, as: 'kind'
      end

      # @private
      class CampaignRepresentation < Google::Apis::Core::JsonRepresentation
        property :account_id, as: 'accountId'
        collection :additional_creative_optimization_configurations, as: 'additionalCreativeOptimizationConfigurations', class: Google::Apis::DfareportingV2_0::CreativeOptimizationConfiguration, decorator: Google::Apis::DfareportingV2_0::CreativeOptimizationConfigurationRepresentation
        
        
        property :advertiser_group_id, as: 'advertiserGroupId'
        property :advertiser_id, as: 'advertiserId'
        property :advertiser_id_dimension_value, as: 'advertiserIdDimensionValue', class: Google::Apis::DfareportingV2_0::DimensionValue, decorator: Google::Apis::DfareportingV2_0::DimensionValueRepresentation
        
        property :archived, as: 'archived'
        collection :audience_segment_groups, as: 'audienceSegmentGroups', class: Google::Apis::DfareportingV2_0::AudienceSegmentGroup, decorator: Google::Apis::DfareportingV2_0::AudienceSegmentGroupRepresentation
        
        
        property :billing_invoice_code, as: 'billingInvoiceCode'
        property :click_through_url_suffix_properties, as: 'clickThroughUrlSuffixProperties', class: Google::Apis::DfareportingV2_0::ClickThroughUrlSuffixProperties, decorator: Google::Apis::DfareportingV2_0::ClickThroughUrlSuffixPropertiesRepresentation
        
        property :comment, as: 'comment'
        property :comscore_vce_enabled, as: 'comscoreVceEnabled'
        property :create_info, as: 'createInfo', class: Google::Apis::DfareportingV2_0::LastModifiedInfo, decorator: Google::Apis::DfareportingV2_0::LastModifiedInfoRepresentation
        
        collection :creative_group_ids, as: 'creativeGroupIds'
        
        property :creative_optimization_configuration, as: 'creativeOptimizationConfiguration', class: Google::Apis::DfareportingV2_0::CreativeOptimizationConfiguration, decorator: Google::Apis::DfareportingV2_0::CreativeOptimizationConfigurationRepresentation
        
        property :default_click_through_event_tag_properties, as: 'defaultClickThroughEventTagProperties', class: Google::Apis::DfareportingV2_0::DefaultClickThroughEventTagProperties, decorator: Google::Apis::DfareportingV2_0::DefaultClickThroughEventTagPropertiesRepresentation
        
        property :end_date, as: 'endDate', type: Date
        collection :event_tag_overrides, as: 'eventTagOverrides', class: Google::Apis::DfareportingV2_0::EventTagOverride, decorator: Google::Apis::DfareportingV2_0::EventTagOverrideRepresentation
        
        
        property :external_id, as: 'externalId'
        property :id, as: 'id'
        property :id_dimension_value, as: 'idDimensionValue', class: Google::Apis::DfareportingV2_0::DimensionValue, decorator: Google::Apis::DfareportingV2_0::DimensionValueRepresentation
        
        property :kind, as: 'kind'
        property :last_modified_info, as: 'lastModifiedInfo', class: Google::Apis::DfareportingV2_0::LastModifiedInfo, decorator: Google::Apis::DfareportingV2_0::LastModifiedInfoRepresentation
        
        property :lookback_configuration, as: 'lookbackConfiguration', class: Google::Apis::DfareportingV2_0::LookbackConfiguration, decorator: Google::Apis::DfareportingV2_0::LookbackConfigurationRepresentation
        
        property :name, as: 'name'
        property :nielsen_ocr_enabled, as: 'nielsenOcrEnabled'
        property :start_date, as: 'startDate', type: Date
        property :subaccount_id, as: 'subaccountId'
        collection :trafficker_emails, as: 'traffickerEmails'
      end

      # @private
      class CampaignCreativeAssociationRepresentation < Google::Apis::Core::JsonRepresentation
        property :creative_id, as: 'creativeId'
        property :kind, as: 'kind'
      end

      # @private
      class CampaignCreativeAssociationsListResponseRepresentation < Google::Apis::Core::JsonRepresentation
        collection :campaign_creative_associations, as: 'campaignCreativeAssociations', class: Google::Apis::DfareportingV2_0::CampaignCreativeAssociation, decorator: Google::Apis::DfareportingV2_0::CampaignCreativeAssociationRepresentation
        
        
        property :kind, as: 'kind'
        property :next_page_token, as: 'nextPageToken'
      end

      # @private
      class CampaignsListResponseRepresentation < Google::Apis::Core::JsonRepresentation
        collection :campaigns, as: 'campaigns', class: Google::Apis::DfareportingV2_0::Campaign, decorator: Google::Apis::DfareportingV2_0::CampaignRepresentation
        
        
        property :kind, as: 'kind'
        property :next_page_token, as: 'nextPageToken'
      end

      # @private
      class ChangeLogRepresentation < Google::Apis::Core::JsonRepresentation
        property :account_id, as: 'accountId'
        property :action, as: 'action'
        property :change_time, as: 'changeTime', type: DateTime
        property :field_name, as: 'fieldName'
        property :id, as: 'id'
        property :kind, as: 'kind'
        property :new_value, as: 'newValue'
        property :object_id_property, as: 'objectId'
        property :object_type, as: 'objectType'
        property :old_value, as: 'oldValue'
        property :subaccount_id, as: 'subaccountId'
        property :transaction_id, as: 'transactionId'
        property :user_profile_id, as: 'userProfileId'
        property :user_profile_name, as: 'userProfileName'
      end

      # @private
      class ChangeLogsListResponseRepresentation < Google::Apis::Core::JsonRepresentation
        collection :change_logs, as: 'changeLogs', class: Google::Apis::DfareportingV2_0::ChangeLog, decorator: Google::Apis::DfareportingV2_0::ChangeLogRepresentation
        
        
        property :kind, as: 'kind'
        property :next_page_token, as: 'nextPageToken'
      end

      # @private
      class CitiesListResponseRepresentation < Google::Apis::Core::JsonRepresentation
        collection :cities, as: 'cities', class: Google::Apis::DfareportingV2_0::City, decorator: Google::Apis::DfareportingV2_0::CityRepresentation
        
        
        property :kind, as: 'kind'
      end

      # @private
      class CityRepresentation < Google::Apis::Core::JsonRepresentation
        property :country_code, as: 'countryCode'
        property :country_dart_id, as: 'countryDartId'
        property :dart_id, as: 'dartId'
        property :kind, as: 'kind'
        property :metro_code, as: 'metroCode'
        property :metro_dma_id, as: 'metroDmaId'
        property :name, as: 'name'
        property :region_code, as: 'regionCode'
        property :region_dart_id, as: 'regionDartId'
      end

      # @private
      class ClickTagRepresentation < Google::Apis::Core::JsonRepresentation
        property :event_name, as: 'eventName'
        property :name, as: 'name'
        property :value, as: 'value'
      end

      # @private
      class ClickThroughUrlRepresentation < Google::Apis::Core::JsonRepresentation
        property :custom_click_through_url, as: 'customClickThroughUrl'
        property :default_landing_page, as: 'defaultLandingPage'
        property :landing_page_id, as: 'landingPageId'
      end

      # @private
      class ClickThroughUrlSuffixPropertiesRepresentation < Google::Apis::Core::JsonRepresentation
        property :click_through_url_suffix, as: 'clickThroughUrlSuffix'
        property :override_inherited_suffix, as: 'overrideInheritedSuffix'
      end

      # @private
      class CompanionClickThroughOverrideRepresentation < Google::Apis::Core::JsonRepresentation
        property :click_through_url, as: 'clickThroughUrl', class: Google::Apis::DfareportingV2_0::ClickThroughUrl, decorator: Google::Apis::DfareportingV2_0::ClickThroughUrlRepresentation
        
        property :creative_id, as: 'creativeId'
      end

      # @private
      class CompatibleFieldsRepresentation < Google::Apis::Core::JsonRepresentation
        property :cross_dimension_reach_report_compatible_fields, as: 'crossDimensionReachReportCompatibleFields', class: Google::Apis::DfareportingV2_0::CrossDimensionReachReportCompatibleFields, decorator: Google::Apis::DfareportingV2_0::CrossDimensionReachReportCompatibleFieldsRepresentation
        
        property :floodlight_report_compatible_fields, as: 'floodlightReportCompatibleFields', class: Google::Apis::DfareportingV2_0::FloodlightReportCompatibleFields, decorator: Google::Apis::DfareportingV2_0::FloodlightReportCompatibleFieldsRepresentation
        
        property :kind, as: 'kind'
        property :path_to_conversion_report_compatible_fields, as: 'pathToConversionReportCompatibleFields', class: Google::Apis::DfareportingV2_0::PathToConversionReportCompatibleFields, decorator: Google::Apis::DfareportingV2_0::PathToConversionReportCompatibleFieldsRepresentation
        
        property :reach_report_compatible_fields, as: 'reachReportCompatibleFields', class: Google::Apis::DfareportingV2_0::ReachReportCompatibleFields, decorator: Google::Apis::DfareportingV2_0::ReachReportCompatibleFieldsRepresentation
        
        property :report_compatible_fields, as: 'reportCompatibleFields', class: Google::Apis::DfareportingV2_0::ReportCompatibleFields, decorator: Google::Apis::DfareportingV2_0::ReportCompatibleFieldsRepresentation
      end

      # @private
      class ConnectionTypeRepresentation < Google::Apis::Core::JsonRepresentation
        property :id, as: 'id'
        property :kind, as: 'kind'
        property :name, as: 'name'
      end

      # @private
      class ConnectionTypesListResponseRepresentation < Google::Apis::Core::JsonRepresentation
        collection :connection_types, as: 'connectionTypes', class: Google::Apis::DfareportingV2_0::ConnectionType, decorator: Google::Apis::DfareportingV2_0::ConnectionTypeRepresentation
        
        
        property :kind, as: 'kind'
      end

      # @private
      class ContentCategoriesListResponseRepresentation < Google::Apis::Core::JsonRepresentation
        collection :content_categories, as: 'contentCategories', class: Google::Apis::DfareportingV2_0::ContentCategory, decorator: Google::Apis::DfareportingV2_0::ContentCategoryRepresentation
        
        
        property :kind, as: 'kind'
        property :next_page_token, as: 'nextPageToken'
      end

      # @private
      class ContentCategoryRepresentation < Google::Apis::Core::JsonRepresentation
        property :account_id, as: 'accountId'
        property :description, as: 'description'
        property :id, as: 'id'
        property :kind, as: 'kind'
        property :name, as: 'name'
      end

      # @private
      class CountriesListResponseRepresentation < Google::Apis::Core::JsonRepresentation
        collection :countries, as: 'countries', class: Google::Apis::DfareportingV2_0::Country, decorator: Google::Apis::DfareportingV2_0::CountryRepresentation
        
        
        property :kind, as: 'kind'
      end

      # @private
      class CountryRepresentation < Google::Apis::Core::JsonRepresentation
        property :country_code, as: 'countryCode'
        property :dart_id, as: 'dartId'
        property :kind, as: 'kind'
        property :name, as: 'name'
        property :ssl_enabled, as: 'sslEnabled'
      end

      # @private
      class CreativeRepresentation < Google::Apis::Core::JsonRepresentation
        property :account_id, as: 'accountId'
        property :active, as: 'active'
        property :ad_parameters, as: 'adParameters'
        collection :ad_tag_keys, as: 'adTagKeys'
        
        property :advertiser_id, as: 'advertiserId'
        property :allow_script_access, as: 'allowScriptAccess'
        property :archived, as: 'archived'
        property :artwork_type, as: 'artworkType'
        property :authoring_tool, as: 'authoringTool'
        property :auto_advance_images, as: 'auto_advance_images'
        property :background_color, as: 'backgroundColor'
        property :backup_image_click_through_url, as: 'backupImageClickThroughUrl'
        collection :backup_image_features, as: 'backupImageFeatures'
        
        property :backup_image_reporting_label, as: 'backupImageReportingLabel'
        property :backup_image_target_window, as: 'backupImageTargetWindow', class: Google::Apis::DfareportingV2_0::TargetWindow, decorator: Google::Apis::DfareportingV2_0::TargetWindowRepresentation
        
        collection :click_tags, as: 'clickTags', class: Google::Apis::DfareportingV2_0::ClickTag, decorator: Google::Apis::DfareportingV2_0::ClickTagRepresentation
        
        
        property :commercial_id, as: 'commercialId'
        collection :companion_creatives, as: 'companionCreatives'
        
        collection :compatibility, as: 'compatibility'
        
        collection :counter_custom_events, as: 'counterCustomEvents', class: Google::Apis::DfareportingV2_0::CreativeCustomEvent, decorator: Google::Apis::DfareportingV2_0::CreativeCustomEventRepresentation
        
        
        collection :creative_assets, as: 'creativeAssets', class: Google::Apis::DfareportingV2_0::CreativeAsset, decorator: Google::Apis::DfareportingV2_0::CreativeAssetRepresentation
        
        
        collection :creative_field_assignments, as: 'creativeFieldAssignments', class: Google::Apis::DfareportingV2_0::CreativeFieldAssignment, decorator: Google::Apis::DfareportingV2_0::CreativeFieldAssignmentRepresentation
        
        
        collection :custom_key_values, as: 'customKeyValues'
        
        collection :exit_custom_events, as: 'exitCustomEvents', class: Google::Apis::DfareportingV2_0::CreativeCustomEvent, decorator: Google::Apis::DfareportingV2_0::CreativeCustomEventRepresentation
        
        
        property :fs_command, as: 'fsCommand', class: Google::Apis::DfareportingV2_0::FsCommand, decorator: Google::Apis::DfareportingV2_0::FsCommandRepresentation
        
        property :html_code, as: 'htmlCode'
        property :html_code_locked, as: 'htmlCodeLocked'
        property :id, as: 'id'
        property :id_dimension_value, as: 'idDimensionValue', class: Google::Apis::DfareportingV2_0::DimensionValue, decorator: Google::Apis::DfareportingV2_0::DimensionValueRepresentation
        
        property :kind, as: 'kind'
        property :last_modified_info, as: 'lastModifiedInfo', class: Google::Apis::DfareportingV2_0::LastModifiedInfo, decorator: Google::Apis::DfareportingV2_0::LastModifiedInfoRepresentation
        
        property :latest_trafficked_creative_id, as: 'latestTraffickedCreativeId'
        property :name, as: 'name'
        property :override_css, as: 'overrideCss'
        property :redirect_url, as: 'redirectUrl'
        property :rendering_id, as: 'renderingId'
        property :rendering_id_dimension_value, as: 'renderingIdDimensionValue', class: Google::Apis::DfareportingV2_0::DimensionValue, decorator: Google::Apis::DfareportingV2_0::DimensionValueRepresentation
        
        property :required_flash_plugin_version, as: 'requiredFlashPluginVersion'
        property :required_flash_version, as: 'requiredFlashVersion'
        property :size, as: 'size', class: Google::Apis::DfareportingV2_0::Size, decorator: Google::Apis::DfareportingV2_0::SizeRepresentation
        
        property :skippable, as: 'skippable'
        property :ssl_compliant, as: 'sslCompliant'
        property :studio_advertiser_id, as: 'studioAdvertiserId'
        property :studio_creative_id, as: 'studioCreativeId'
        property :studio_trafficked_creative_id, as: 'studioTraffickedCreativeId'
        property :subaccount_id, as: 'subaccountId'
        property :third_party_backup_image_impressions_url, as: 'thirdPartyBackupImageImpressionsUrl'
        property :third_party_rich_media_impressions_url, as: 'thirdPartyRichMediaImpressionsUrl'
        collection :third_party_urls, as: 'thirdPartyUrls', class: Google::Apis::DfareportingV2_0::ThirdPartyTrackingUrl, decorator: Google::Apis::DfareportingV2_0::ThirdPartyTrackingUrlRepresentation
        
        
        collection :timer_custom_events, as: 'timerCustomEvents', class: Google::Apis::DfareportingV2_0::CreativeCustomEvent, decorator: Google::Apis::DfareportingV2_0::CreativeCustomEventRepresentation
        
        
        property :total_file_size, as: 'totalFileSize'
        property :type, as: 'type'
        property :version, as: 'version'
        property :video_description, as: 'videoDescription'
        property :video_duration, as: 'videoDuration'
      end

      # @private
      class CreativeAssetRepresentation < Google::Apis::Core::JsonRepresentation
        property :action_script3, as: 'actionScript3'
        property :active, as: 'active'
        property :alignment, as: 'alignment'
        property :artwork_type, as: 'artworkType'
        property :asset_identifier, as: 'assetIdentifier', class: Google::Apis::DfareportingV2_0::CreativeAssetId, decorator: Google::Apis::DfareportingV2_0::CreativeAssetIdRepresentation
        
        property :backup_image_exit, as: 'backupImageExit', class: Google::Apis::DfareportingV2_0::CreativeCustomEvent, decorator: Google::Apis::DfareportingV2_0::CreativeCustomEventRepresentation
        
        property :bit_rate, as: 'bitRate'
        property :child_asset_type, as: 'childAssetType'
        property :collapsed_size, as: 'collapsedSize', class: Google::Apis::DfareportingV2_0::Size, decorator: Google::Apis::DfareportingV2_0::SizeRepresentation
        
        property :custom_start_time_value, as: 'customStartTimeValue'
        collection :detected_features, as: 'detectedFeatures'
        
        property :display_type, as: 'displayType'
        property :duration, as: 'duration'
        property :duration_type, as: 'durationType'
        property :expanded_dimension, as: 'expandedDimension', class: Google::Apis::DfareportingV2_0::Size, decorator: Google::Apis::DfareportingV2_0::SizeRepresentation
        
        property :file_size, as: 'fileSize'
        property :flash_version, as: 'flashVersion'
        property :hide_flash_objects, as: 'hideFlashObjects'
        property :hide_selection_boxes, as: 'hideSelectionBoxes'
        property :horizontally_locked, as: 'horizontallyLocked'
        property :id, as: 'id'
        property :mime_type, as: 'mimeType'
        property :offset, as: 'offset', class: Google::Apis::DfareportingV2_0::OffsetPosition, decorator: Google::Apis::DfareportingV2_0::OffsetPositionRepresentation
        
        property :original_backup, as: 'originalBackup'
        property :position, as: 'position', class: Google::Apis::DfareportingV2_0::OffsetPosition, decorator: Google::Apis::DfareportingV2_0::OffsetPositionRepresentation
        
        property :position_left_unit, as: 'positionLeftUnit'
        property :position_top_unit, as: 'positionTopUnit'
        property :progressive_serving_url, as: 'progressiveServingUrl'
        property :pushdown, as: 'pushdown'
        property :pushdown_duration, as: 'pushdownDuration'
        property :role, as: 'role'
        property :size, as: 'size', class: Google::Apis::DfareportingV2_0::Size, decorator: Google::Apis::DfareportingV2_0::SizeRepresentation
        
        property :ssl_compliant, as: 'sslCompliant'
        property :start_time_type, as: 'startTimeType'
        property :streaming_serving_url, as: 'streamingServingUrl'
        property :transparency, as: 'transparency'
        property :vertically_locked, as: 'verticallyLocked'
        property :video_duration, as: 'videoDuration'
        property :window_mode, as: 'windowMode'
        property :z_index, as: 'zIndex'
        property :zip_filename, as: 'zipFilename'
        property :zip_filesize, as: 'zipFilesize'
      end

      # @private
      class CreativeAssetIdRepresentation < Google::Apis::Core::JsonRepresentation
        property :name, as: 'name'
        property :type, as: 'type'
      end

      # @private
      class CreativeAssetMetadataRepresentation < Google::Apis::Core::JsonRepresentation
        property :asset_identifier, as: 'assetIdentifier', class: Google::Apis::DfareportingV2_0::CreativeAssetId, decorator: Google::Apis::DfareportingV2_0::CreativeAssetIdRepresentation
        
        collection :click_tags, as: 'clickTags', class: Google::Apis::DfareportingV2_0::ClickTag, decorator: Google::Apis::DfareportingV2_0::ClickTagRepresentation
        
        
        collection :detected_features, as: 'detectedFeatures'
        
        property :kind, as: 'kind'
        collection :warned_validation_rules, as: 'warnedValidationRules'
      end

      # @private
      class CreativeAssignmentRepresentation < Google::Apis::Core::JsonRepresentation
        property :active, as: 'active'
        property :apply_event_tags, as: 'applyEventTags'
        property :click_through_url, as: 'clickThroughUrl', class: Google::Apis::DfareportingV2_0::ClickThroughUrl, decorator: Google::Apis::DfareportingV2_0::ClickThroughUrlRepresentation
        
        collection :companion_creative_overrides, as: 'companionCreativeOverrides', class: Google::Apis::DfareportingV2_0::CompanionClickThroughOverride, decorator: Google::Apis::DfareportingV2_0::CompanionClickThroughOverrideRepresentation
        
        
        collection :creative_group_assignments, as: 'creativeGroupAssignments', class: Google::Apis::DfareportingV2_0::CreativeGroupAssignment, decorator: Google::Apis::DfareportingV2_0::CreativeGroupAssignmentRepresentation
        
        
        property :creative_id, as: 'creativeId'
        property :creative_id_dimension_value, as: 'creativeIdDimensionValue', class: Google::Apis::DfareportingV2_0::DimensionValue, decorator: Google::Apis::DfareportingV2_0::DimensionValueRepresentation
        
        property :end_time, as: 'endTime', type: DateTime
        collection :rich_media_exit_overrides, as: 'richMediaExitOverrides', class: Google::Apis::DfareportingV2_0::RichMediaExitOverride, decorator: Google::Apis::DfareportingV2_0::RichMediaExitOverrideRepresentation
        
        
        property :sequence, as: 'sequence'
        property :ssl_compliant, as: 'sslCompliant'
        property :start_time, as: 'startTime', type: DateTime
        property :weight, as: 'weight'
      end

      # @private
      class CreativeCustomEventRepresentation < Google::Apis::Core::JsonRepresentation
        property :active, as: 'active'
        property :advertiser_custom_event_name, as: 'advertiserCustomEventName'
        property :advertiser_custom_event_type, as: 'advertiserCustomEventType'
        property :artwork_label, as: 'artworkLabel'
        property :artwork_type, as: 'artworkType'
        property :exit_url, as: 'exitUrl'
        property :id, as: 'id'
        property :popup_window_properties, as: 'popupWindowProperties', class: Google::Apis::DfareportingV2_0::PopupWindowProperties, decorator: Google::Apis::DfareportingV2_0::PopupWindowPropertiesRepresentation
        
        property :target_type, as: 'targetType'
        property :video_reporting_id, as: 'videoReportingId'
      end

      # @private
      class CreativeFieldRepresentation < Google::Apis::Core::JsonRepresentation
        property :account_id, as: 'accountId'
        property :advertiser_id, as: 'advertiserId'
        property :advertiser_id_dimension_value, as: 'advertiserIdDimensionValue', class: Google::Apis::DfareportingV2_0::DimensionValue, decorator: Google::Apis::DfareportingV2_0::DimensionValueRepresentation
        
        property :id, as: 'id'
        property :kind, as: 'kind'
        property :name, as: 'name'
        property :subaccount_id, as: 'subaccountId'
      end

      # @private
      class CreativeFieldAssignmentRepresentation < Google::Apis::Core::JsonRepresentation
        property :creative_field_id, as: 'creativeFieldId'
        property :creative_field_value_id, as: 'creativeFieldValueId'
      end

      # @private
      class CreativeFieldValueRepresentation < Google::Apis::Core::JsonRepresentation
        property :id, as: 'id'
        property :kind, as: 'kind'
        property :value, as: 'value'
      end

      # @private
      class CreativeFieldValuesListResponseRepresentation < Google::Apis::Core::JsonRepresentation
        collection :creative_field_values, as: 'creativeFieldValues', class: Google::Apis::DfareportingV2_0::CreativeFieldValue, decorator: Google::Apis::DfareportingV2_0::CreativeFieldValueRepresentation
        
        
        property :kind, as: 'kind'
        property :next_page_token, as: 'nextPageToken'
      end

      # @private
      class CreativeFieldsListResponseRepresentation < Google::Apis::Core::JsonRepresentation
        collection :creative_fields, as: 'creativeFields', class: Google::Apis::DfareportingV2_0::CreativeField, decorator: Google::Apis::DfareportingV2_0::CreativeFieldRepresentation
        
        
        property :kind, as: 'kind'
        property :next_page_token, as: 'nextPageToken'
      end

      # @private
      class CreativeGroupRepresentation < Google::Apis::Core::JsonRepresentation
        property :account_id, as: 'accountId'
        property :advertiser_id, as: 'advertiserId'
        property :advertiser_id_dimension_value, as: 'advertiserIdDimensionValue', class: Google::Apis::DfareportingV2_0::DimensionValue, decorator: Google::Apis::DfareportingV2_0::DimensionValueRepresentation
        
        property :group_number, as: 'groupNumber'
        property :id, as: 'id'
        property :kind, as: 'kind'
        property :name, as: 'name'
        property :subaccount_id, as: 'subaccountId'
      end

      # @private
      class CreativeGroupAssignmentRepresentation < Google::Apis::Core::JsonRepresentation
        property :creative_group_id, as: 'creativeGroupId'
        property :creative_group_number, as: 'creativeGroupNumber'
      end

      # @private
      class CreativeGroupsListResponseRepresentation < Google::Apis::Core::JsonRepresentation
        collection :creative_groups, as: 'creativeGroups', class: Google::Apis::DfareportingV2_0::CreativeGroup, decorator: Google::Apis::DfareportingV2_0::CreativeGroupRepresentation
        
        
        property :kind, as: 'kind'
        property :next_page_token, as: 'nextPageToken'
      end

      # @private
      class CreativeOptimizationConfigurationRepresentation < Google::Apis::Core::JsonRepresentation
        property :id, as: 'id'
        property :name, as: 'name'
        collection :optimization_activitys, as: 'optimizationActivitys', class: Google::Apis::DfareportingV2_0::OptimizationActivity, decorator: Google::Apis::DfareportingV2_0::OptimizationActivityRepresentation
        
        
        property :optimization_model, as: 'optimizationModel'
      end

      # @private
      class CreativeRotationRepresentation < Google::Apis::Core::JsonRepresentation
        collection :creative_assignments, as: 'creativeAssignments', class: Google::Apis::DfareportingV2_0::CreativeAssignment, decorator: Google::Apis::DfareportingV2_0::CreativeAssignmentRepresentation
        
        
        property :creative_optimization_configuration_id, as: 'creativeOptimizationConfigurationId'
        property :type, as: 'type'
        property :weight_calculation_strategy, as: 'weightCalculationStrategy'
      end

      # @private
      class CreativeSettingsRepresentation < Google::Apis::Core::JsonRepresentation
        property :i_frame_footer, as: 'iFrameFooter'
        property :i_frame_header, as: 'iFrameHeader'
      end

      # @private
      class CreativesListResponseRepresentation < Google::Apis::Core::JsonRepresentation
        collection :creatives, as: 'creatives', class: Google::Apis::DfareportingV2_0::Creative, decorator: Google::Apis::DfareportingV2_0::CreativeRepresentation
        
        
        property :kind, as: 'kind'
        property :next_page_token, as: 'nextPageToken'
      end

      # @private
      class CrossDimensionReachReportCompatibleFieldsRepresentation < Google::Apis::Core::JsonRepresentation
        collection :breakdown, as: 'breakdown', class: Google::Apis::DfareportingV2_0::Dimension, decorator: Google::Apis::DfareportingV2_0::DimensionRepresentation
        
        
        collection :dimension_filters, as: 'dimensionFilters', class: Google::Apis::DfareportingV2_0::Dimension, decorator: Google::Apis::DfareportingV2_0::DimensionRepresentation
        
        
        property :kind, as: 'kind'
        collection :metrics, as: 'metrics', class: Google::Apis::DfareportingV2_0::Metric, decorator: Google::Apis::DfareportingV2_0::MetricRepresentation
        
        
        collection :overlap_metrics, as: 'overlapMetrics', class: Google::Apis::DfareportingV2_0::Metric, decorator: Google::Apis::DfareportingV2_0::MetricRepresentation
      end

      # @private
      class CustomRichMediaEventsRepresentation < Google::Apis::Core::JsonRepresentation
        collection :filtered_event_ids, as: 'filteredEventIds', class: Google::Apis::DfareportingV2_0::DimensionValue, decorator: Google::Apis::DfareportingV2_0::DimensionValueRepresentation
        
        
        property :kind, as: 'kind'
      end

      # @private
      class DateRangeRepresentation < Google::Apis::Core::JsonRepresentation
        property :end_date, as: 'endDate', type: Date
        property :kind, as: 'kind'
        property :relative_date_range, as: 'relativeDateRange'
        property :start_date, as: 'startDate', type: Date
      end

      # @private
      class DayPartTargetingRepresentation < Google::Apis::Core::JsonRepresentation
        collection :days_of_week, as: 'daysOfWeek'
        
        collection :hours_of_day, as: 'hoursOfDay'
        
        property :user_local_time, as: 'userLocalTime'
      end

      # @private
      class DefaultClickThroughEventTagPropertiesRepresentation < Google::Apis::Core::JsonRepresentation
        property :default_click_through_event_tag_id, as: 'defaultClickThroughEventTagId'
        property :override_inherited_event_tag, as: 'overrideInheritedEventTag'
      end

      # @private
      class DeliveryScheduleRepresentation < Google::Apis::Core::JsonRepresentation
        property :frequency_cap, as: 'frequencyCap', class: Google::Apis::DfareportingV2_0::FrequencyCap, decorator: Google::Apis::DfareportingV2_0::FrequencyCapRepresentation
        
        property :hard_cutoff, as: 'hardCutoff'
        property :impression_ratio, as: 'impressionRatio'
        property :priority, as: 'priority'
      end

      # @private
      class DfpSettingsRepresentation < Google::Apis::Core::JsonRepresentation
        property :dfp_network_code, as: 'dfp_network_code'
        property :dfp_network_name, as: 'dfp_network_name'
        property :programmatic_placement_accepted, as: 'programmaticPlacementAccepted'
        property :pub_paid_placement_accepted, as: 'pubPaidPlacementAccepted'
        property :publisher_portal_only, as: 'publisherPortalOnly'
      end

      # @private
      class DimensionRepresentation < Google::Apis::Core::JsonRepresentation
        property :kind, as: 'kind'
        property :name, as: 'name'
      end

      # @private
      class DimensionFilterRepresentation < Google::Apis::Core::JsonRepresentation
        property :dimension_name, as: 'dimensionName'
        property :kind, as: 'kind'
        property :value, as: 'value'
      end

      # @private
      class DimensionValueRepresentation < Google::Apis::Core::JsonRepresentation
        property :dimension_name, as: 'dimensionName'
        property :etag, as: 'etag'
        property :id, as: 'id'
        property :kind, as: 'kind'
        property :match_type, as: 'matchType'
        property :value, as: 'value'
      end

      # @private
      class DimensionValueListRepresentation < Google::Apis::Core::JsonRepresentation
        property :etag, as: 'etag'
        collection :items, as: 'items', class: Google::Apis::DfareportingV2_0::DimensionValue, decorator: Google::Apis::DfareportingV2_0::DimensionValueRepresentation
        
        
        property :kind, as: 'kind'
        property :next_page_token, as: 'nextPageToken'
      end

      # @private
      class DimensionValueRequestRepresentation < Google::Apis::Core::JsonRepresentation
        property :dimension_name, as: 'dimensionName'
        property :end_date, as: 'endDate', type: Date
        collection :filters, as: 'filters', class: Google::Apis::DfareportingV2_0::DimensionFilter, decorator: Google::Apis::DfareportingV2_0::DimensionFilterRepresentation
        
        
        property :kind, as: 'kind'
        property :start_date, as: 'startDate', type: Date
      end

      # @private
      class DirectorySiteRepresentation < Google::Apis::Core::JsonRepresentation
        property :active, as: 'active'
        collection :contact_assignments, as: 'contactAssignments', class: Google::Apis::DfareportingV2_0::DirectorySiteContactAssignment, decorator: Google::Apis::DfareportingV2_0::DirectorySiteContactAssignmentRepresentation
        
        
        property :country_id, as: 'countryId'
        property :currency_id, as: 'currencyId'
        property :description, as: 'description'
        property :id, as: 'id'
        property :id_dimension_value, as: 'idDimensionValue', class: Google::Apis::DfareportingV2_0::DimensionValue, decorator: Google::Apis::DfareportingV2_0::DimensionValueRepresentation
        
        collection :inpage_tag_formats, as: 'inpageTagFormats'
        
        collection :interstitial_tag_formats, as: 'interstitialTagFormats'
        
        property :kind, as: 'kind'
        property :name, as: 'name'
        property :parent_id, as: 'parentId'
        property :settings, as: 'settings', class: Google::Apis::DfareportingV2_0::DirectorySiteSettings, decorator: Google::Apis::DfareportingV2_0::DirectorySiteSettingsRepresentation
        
        property :url, as: 'url'
      end

      # @private
      class DirectorySiteContactRepresentation < Google::Apis::Core::JsonRepresentation
        property :email, as: 'email'
        property :first_name, as: 'firstName'
        property :id, as: 'id'
        property :kind, as: 'kind'
        property :last_name, as: 'lastName'
        property :role, as: 'role'
        property :type, as: 'type'
      end

      # @private
      class DirectorySiteContactAssignmentRepresentation < Google::Apis::Core::JsonRepresentation
        property :contact_id, as: 'contactId'
        property :visibility, as: 'visibility'
      end

      # @private
      class DirectorySiteContactsListResponseRepresentation < Google::Apis::Core::JsonRepresentation
        collection :directory_site_contacts, as: 'directorySiteContacts', class: Google::Apis::DfareportingV2_0::DirectorySiteContact, decorator: Google::Apis::DfareportingV2_0::DirectorySiteContactRepresentation
        
        
        property :kind, as: 'kind'
        property :next_page_token, as: 'nextPageToken'
      end

      # @private
      class DirectorySiteSettingsRepresentation < Google::Apis::Core::JsonRepresentation
        property :active_view_opt_out, as: 'activeViewOptOut'
        property :dfp_settings, as: 'dfp_settings', class: Google::Apis::DfareportingV2_0::DfpSettings, decorator: Google::Apis::DfareportingV2_0::DfpSettingsRepresentation
        
        property :instream_video_placement_accepted, as: 'instream_video_placement_accepted'
        property :interstitial_placement_accepted, as: 'interstitialPlacementAccepted'
        property :nielsen_ocr_opt_out, as: 'nielsenOcrOptOut'
        property :verification_tag_opt_out, as: 'verificationTagOptOut'
        property :video_active_view_opt_out, as: 'videoActiveViewOptOut'
      end

      # @private
      class DirectorySitesListResponseRepresentation < Google::Apis::Core::JsonRepresentation
        collection :directory_sites, as: 'directorySites', class: Google::Apis::DfareportingV2_0::DirectorySite, decorator: Google::Apis::DfareportingV2_0::DirectorySiteRepresentation
        
        
        property :kind, as: 'kind'
        property :next_page_token, as: 'nextPageToken'
      end

      # @private
      class EventTagRepresentation < Google::Apis::Core::JsonRepresentation
        property :account_id, as: 'accountId'
        property :advertiser_id, as: 'advertiserId'
        property :advertiser_id_dimension_value, as: 'advertiserIdDimensionValue', class: Google::Apis::DfareportingV2_0::DimensionValue, decorator: Google::Apis::DfareportingV2_0::DimensionValueRepresentation
        
        property :campaign_id, as: 'campaignId'
        property :campaign_id_dimension_value, as: 'campaignIdDimensionValue', class: Google::Apis::DfareportingV2_0::DimensionValue, decorator: Google::Apis::DfareportingV2_0::DimensionValueRepresentation
        
        property :enabled_by_default, as: 'enabledByDefault'
        property :id, as: 'id'
        property :kind, as: 'kind'
        property :name, as: 'name'
        property :site_filter_type, as: 'siteFilterType'
        collection :site_ids, as: 'siteIds'
        
        property :ssl_compliant, as: 'sslCompliant'
        property :status, as: 'status'
        property :subaccount_id, as: 'subaccountId'
        property :type, as: 'type'
        property :url, as: 'url'
        property :url_escape_levels, as: 'urlEscapeLevels'
      end

      # @private
      class EventTagOverrideRepresentation < Google::Apis::Core::JsonRepresentation
        property :enabled, as: 'enabled'
        property :id, as: 'id'
      end

      # @private
      class EventTagsListResponseRepresentation < Google::Apis::Core::JsonRepresentation
        collection :event_tags, as: 'eventTags', class: Google::Apis::DfareportingV2_0::EventTag, decorator: Google::Apis::DfareportingV2_0::EventTagRepresentation
        
        
        property :kind, as: 'kind'
      end

      # @private
      class FileRepresentation < Google::Apis::Core::JsonRepresentation
        property :date_range, as: 'dateRange', class: Google::Apis::DfareportingV2_0::DateRange, decorator: Google::Apis::DfareportingV2_0::DateRangeRepresentation
        
        property :etag, as: 'etag'
        property :file_name, as: 'fileName'
        property :format, as: 'format'
        property :id, as: 'id'
        property :kind, as: 'kind'
        property :last_modified_time, as: 'lastModifiedTime'
        property :report_id, as: 'reportId'
        property :status, as: 'status'
        property :urls, as: 'urls', class: Google::Apis::DfareportingV2_0::File::Urls do
          property :api_url, as: 'apiUrl'
          property :browser_url, as: 'browserUrl'
        end
      end

      # @private
      class FileListRepresentation < Google::Apis::Core::JsonRepresentation
        property :etag, as: 'etag'
        collection :items, as: 'items', class: Google::Apis::DfareportingV2_0::File, decorator: Google::Apis::DfareportingV2_0::FileRepresentation
        
        
        property :kind, as: 'kind'
        property :next_page_token, as: 'nextPageToken'
      end

      # @private
      class FloodlightActivitiesGenerateTagResponseRepresentation < Google::Apis::Core::JsonRepresentation
        property :floodlight_activity_tag, as: 'floodlightActivityTag'
        property :kind, as: 'kind'
      end

      # @private
      class FloodlightActivitiesListResponseRepresentation < Google::Apis::Core::JsonRepresentation
        collection :floodlight_activities, as: 'floodlightActivities', class: Google::Apis::DfareportingV2_0::FloodlightActivity, decorator: Google::Apis::DfareportingV2_0::FloodlightActivityRepresentation
        
        
        property :kind, as: 'kind'
        property :next_page_token, as: 'nextPageToken'
      end

      # @private
      class FloodlightActivityRepresentation < Google::Apis::Core::JsonRepresentation
        property :account_id, as: 'accountId'
        property :advertiser_id, as: 'advertiserId'
        property :advertiser_id_dimension_value, as: 'advertiserIdDimensionValue', class: Google::Apis::DfareportingV2_0::DimensionValue, decorator: Google::Apis::DfareportingV2_0::DimensionValueRepresentation
        
        property :cache_busting_type, as: 'cacheBustingType'
        property :counting_method, as: 'countingMethod'
        collection :default_tags, as: 'defaultTags', class: Google::Apis::DfareportingV2_0::FloodlightActivityDynamicTag, decorator: Google::Apis::DfareportingV2_0::FloodlightActivityDynamicTagRepresentation
        
        
        property :expected_url, as: 'expectedUrl'
        property :floodlight_activity_group_id, as: 'floodlightActivityGroupId'
        property :floodlight_activity_group_name, as: 'floodlightActivityGroupName'
        property :floodlight_activity_group_tag_string, as: 'floodlightActivityGroupTagString'
        property :floodlight_activity_group_type, as: 'floodlightActivityGroupType'
        property :floodlight_configuration_id, as: 'floodlightConfigurationId'
        property :floodlight_configuration_id_dimension_value, as: 'floodlightConfigurationIdDimensionValue', class: Google::Apis::DfareportingV2_0::DimensionValue, decorator: Google::Apis::DfareportingV2_0::DimensionValueRepresentation
        
        property :hidden, as: 'hidden'
        property :id, as: 'id'
        property :id_dimension_value, as: 'idDimensionValue', class: Google::Apis::DfareportingV2_0::DimensionValue, decorator: Google::Apis::DfareportingV2_0::DimensionValueRepresentation
        
        property :image_tag_enabled, as: 'imageTagEnabled'
        property :kind, as: 'kind'
        property :name, as: 'name'
        property :notes, as: 'notes'
        collection :publisher_tags, as: 'publisherTags', class: Google::Apis::DfareportingV2_0::FloodlightActivityPublisherDynamicTag, decorator: Google::Apis::DfareportingV2_0::FloodlightActivityPublisherDynamicTagRepresentation
        
        
        property :secure, as: 'secure'
        property :ssl_compliant, as: 'sslCompliant'
        property :ssl_required, as: 'sslRequired'
        property :subaccount_id, as: 'subaccountId'
        property :tag_format, as: 'tagFormat'
        property :tag_string, as: 'tagString'
        collection :user_defined_variable_types, as: 'userDefinedVariableTypes'
      end

      # @private
      class FloodlightActivityDynamicTagRepresentation < Google::Apis::Core::JsonRepresentation
        property :id, as: 'id'
        property :name, as: 'name'
        property :tag, as: 'tag'
      end

      # @private
      class FloodlightActivityGroupRepresentation < Google::Apis::Core::JsonRepresentation
        property :account_id, as: 'accountId'
        property :advertiser_id, as: 'advertiserId'
        property :advertiser_id_dimension_value, as: 'advertiserIdDimensionValue', class: Google::Apis::DfareportingV2_0::DimensionValue, decorator: Google::Apis::DfareportingV2_0::DimensionValueRepresentation
        
        property :floodlight_configuration_id, as: 'floodlightConfigurationId'
        property :floodlight_configuration_id_dimension_value, as: 'floodlightConfigurationIdDimensionValue', class: Google::Apis::DfareportingV2_0::DimensionValue, decorator: Google::Apis::DfareportingV2_0::DimensionValueRepresentation
        
        property :id, as: 'id'
        property :id_dimension_value, as: 'idDimensionValue', class: Google::Apis::DfareportingV2_0::DimensionValue, decorator: Google::Apis::DfareportingV2_0::DimensionValueRepresentation
        
        property :kind, as: 'kind'
        property :name, as: 'name'
        property :subaccount_id, as: 'subaccountId'
        property :tag_string, as: 'tagString'
        property :type, as: 'type'
      end

      # @private
      class FloodlightActivityGroupsListResponseRepresentation < Google::Apis::Core::JsonRepresentation
        collection :floodlight_activity_groups, as: 'floodlightActivityGroups', class: Google::Apis::DfareportingV2_0::FloodlightActivityGroup, decorator: Google::Apis::DfareportingV2_0::FloodlightActivityGroupRepresentation
        
        
        property :kind, as: 'kind'
        property :next_page_token, as: 'nextPageToken'
      end

      # @private
      class FloodlightActivityPublisherDynamicTagRepresentation < Google::Apis::Core::JsonRepresentation
        property :click_through, as: 'clickThrough'
        property :directory_site_id, as: 'directorySiteId'
        property :dynamic_tag, as: 'dynamicTag', class: Google::Apis::DfareportingV2_0::FloodlightActivityDynamicTag, decorator: Google::Apis::DfareportingV2_0::FloodlightActivityDynamicTagRepresentation
        
        property :site_id, as: 'siteId'
        property :site_id_dimension_value, as: 'siteIdDimensionValue', class: Google::Apis::DfareportingV2_0::DimensionValue, decorator: Google::Apis::DfareportingV2_0::DimensionValueRepresentation
        
        property :view_through, as: 'viewThrough'
      end

      # @private
      class FloodlightConfigurationRepresentation < Google::Apis::Core::JsonRepresentation
        property :account_id, as: 'accountId'
        property :advertiser_id, as: 'advertiserId'
        property :advertiser_id_dimension_value, as: 'advertiserIdDimensionValue', class: Google::Apis::DfareportingV2_0::DimensionValue, decorator: Google::Apis::DfareportingV2_0::DimensionValueRepresentation
        
        property :analytics_data_sharing_enabled, as: 'analyticsDataSharingEnabled'
        property :exposure_to_conversion_enabled, as: 'exposureToConversionEnabled'
        property :first_day_of_week, as: 'firstDayOfWeek'
        property :id, as: 'id'
        property :id_dimension_value, as: 'idDimensionValue', class: Google::Apis::DfareportingV2_0::DimensionValue, decorator: Google::Apis::DfareportingV2_0::DimensionValueRepresentation
        
        property :kind, as: 'kind'
        property :lookback_configuration, as: 'lookbackConfiguration', class: Google::Apis::DfareportingV2_0::LookbackConfiguration, decorator: Google::Apis::DfareportingV2_0::LookbackConfigurationRepresentation
        
        property :natural_search_conversion_attribution_option, as: 'naturalSearchConversionAttributionOption'
        property :omniture_settings, as: 'omnitureSettings', class: Google::Apis::DfareportingV2_0::OmnitureSettings, decorator: Google::Apis::DfareportingV2_0::OmnitureSettingsRepresentation
        
        property :ssl_required, as: 'sslRequired'
        collection :standard_variable_types, as: 'standardVariableTypes'
        
        property :subaccount_id, as: 'subaccountId'
        property :tag_settings, as: 'tagSettings', class: Google::Apis::DfareportingV2_0::TagSettings, decorator: Google::Apis::DfareportingV2_0::TagSettingsRepresentation
        
        collection :user_defined_variable_configurations, as: 'userDefinedVariableConfigurations', class: Google::Apis::DfareportingV2_0::UserDefinedVariableConfiguration, decorator: Google::Apis::DfareportingV2_0::UserDefinedVariableConfigurationRepresentation
      end

      # @private
      class FloodlightConfigurationsListResponseRepresentation < Google::Apis::Core::JsonRepresentation
        collection :floodlight_configurations, as: 'floodlightConfigurations', class: Google::Apis::DfareportingV2_0::FloodlightConfiguration, decorator: Google::Apis::DfareportingV2_0::FloodlightConfigurationRepresentation
        
        
        property :kind, as: 'kind'
      end

      # @private
      class FloodlightReportCompatibleFieldsRepresentation < Google::Apis::Core::JsonRepresentation
        collection :dimension_filters, as: 'dimensionFilters', class: Google::Apis::DfareportingV2_0::Dimension, decorator: Google::Apis::DfareportingV2_0::DimensionRepresentation
        
        
        collection :dimensions, as: 'dimensions', class: Google::Apis::DfareportingV2_0::Dimension, decorator: Google::Apis::DfareportingV2_0::DimensionRepresentation
        
        
        property :kind, as: 'kind'
        collection :metrics, as: 'metrics', class: Google::Apis::DfareportingV2_0::Metric, decorator: Google::Apis::DfareportingV2_0::MetricRepresentation
      end

      # @private
      class FrequencyCapRepresentation < Google::Apis::Core::JsonRepresentation
        property :duration, as: 'duration'
        property :impressions, as: 'impressions'
      end

      # @private
      class FsCommandRepresentation < Google::Apis::Core::JsonRepresentation
        property :left, as: 'left'
        property :position_option, as: 'positionOption'
        property :top, as: 'top'
        property :window_height, as: 'windowHeight'
        property :window_width, as: 'windowWidth'
      end

      # @private
      class GeoTargetingRepresentation < Google::Apis::Core::JsonRepresentation
        collection :cities, as: 'cities', class: Google::Apis::DfareportingV2_0::City, decorator: Google::Apis::DfareportingV2_0::CityRepresentation
        
        
        collection :countries, as: 'countries', class: Google::Apis::DfareportingV2_0::Country, decorator: Google::Apis::DfareportingV2_0::CountryRepresentation
        
        
        property :exclude_countries, as: 'excludeCountries'
        collection :metros, as: 'metros', class: Google::Apis::DfareportingV2_0::Metro, decorator: Google::Apis::DfareportingV2_0::MetroRepresentation
        
        
        collection :postal_codes, as: 'postalCodes', class: Google::Apis::DfareportingV2_0::PostalCode, decorator: Google::Apis::DfareportingV2_0::PostalCodeRepresentation
        
        
        collection :regions, as: 'regions', class: Google::Apis::DfareportingV2_0::Region, decorator: Google::Apis::DfareportingV2_0::RegionRepresentation
      end

      # @private
      class KeyValueTargetingExpressionRepresentation < Google::Apis::Core::JsonRepresentation
        property :expression, as: 'expression'
      end

      # @private
      class LandingPageRepresentation < Google::Apis::Core::JsonRepresentation
        property :default, as: 'default'
        property :id, as: 'id'
        property :kind, as: 'kind'
        property :name, as: 'name'
        property :url, as: 'url'
      end

      # @private
      class LandingPagesListResponseRepresentation < Google::Apis::Core::JsonRepresentation
        property :kind, as: 'kind'
        collection :landing_pages, as: 'landingPages', class: Google::Apis::DfareportingV2_0::LandingPage, decorator: Google::Apis::DfareportingV2_0::LandingPageRepresentation
      end

      # @private
      class LastModifiedInfoRepresentation < Google::Apis::Core::JsonRepresentation
        property :time, as: 'time'
      end

      # @private
      class ListTargetingExpressionRepresentation < Google::Apis::Core::JsonRepresentation
        property :expression, as: 'expression'
      end

      # @private
      class LookbackConfigurationRepresentation < Google::Apis::Core::JsonRepresentation
        property :click_duration, as: 'clickDuration'
        property :post_impression_activities_duration, as: 'postImpressionActivitiesDuration'
      end

      # @private
      class MetricRepresentation < Google::Apis::Core::JsonRepresentation
        property :kind, as: 'kind'
        property :name, as: 'name'
      end

      # @private
      class MetroRepresentation < Google::Apis::Core::JsonRepresentation
        property :country_code, as: 'countryCode'
        property :country_dart_id, as: 'countryDartId'
        property :dart_id, as: 'dartId'
        property :dma_id, as: 'dmaId'
        property :kind, as: 'kind'
        property :metro_code, as: 'metroCode'
        property :name, as: 'name'
      end

      # @private
      class MetrosListResponseRepresentation < Google::Apis::Core::JsonRepresentation
        property :kind, as: 'kind'
        collection :metros, as: 'metros', class: Google::Apis::DfareportingV2_0::Metro, decorator: Google::Apis::DfareportingV2_0::MetroRepresentation
      end

      # @private
      class MobileCarrierRepresentation < Google::Apis::Core::JsonRepresentation
        property :country_code, as: 'countryCode'
        property :country_dart_id, as: 'countryDartId'
        property :id, as: 'id'
        property :kind, as: 'kind'
        property :name, as: 'name'
      end

      # @private
      class MobileCarriersListResponseRepresentation < Google::Apis::Core::JsonRepresentation
        property :kind, as: 'kind'
        collection :mobile_carriers, as: 'mobileCarriers', class: Google::Apis::DfareportingV2_0::MobileCarrier, decorator: Google::Apis::DfareportingV2_0::MobileCarrierRepresentation
      end

      # @private
      class ObjectFilterRepresentation < Google::Apis::Core::JsonRepresentation
        property :kind, as: 'kind'
        collection :object_ids, as: 'objectIds'
        
        property :status, as: 'status'
      end

      # @private
      class OffsetPositionRepresentation < Google::Apis::Core::JsonRepresentation
        property :left, as: 'left'
        property :top, as: 'top'
      end

      # @private
      class OmnitureSettingsRepresentation < Google::Apis::Core::JsonRepresentation
        property :omniture_cost_data_enabled, as: 'omnitureCostDataEnabled'
        property :omniture_integration_enabled, as: 'omnitureIntegrationEnabled'
      end

      # @private
      class OperatingSystemRepresentation < Google::Apis::Core::JsonRepresentation
        property :dart_id, as: 'dartId'
        property :desktop, as: 'desktop'
        property :kind, as: 'kind'
        property :mobile, as: 'mobile'
        property :name, as: 'name'
      end

      # @private
      class OperatingSystemVersionRepresentation < Google::Apis::Core::JsonRepresentation
        property :id, as: 'id'
        property :kind, as: 'kind'
        property :major_version, as: 'majorVersion'
        property :minor_version, as: 'minorVersion'
        property :name, as: 'name'
        property :operating_system, as: 'operatingSystem', class: Google::Apis::DfareportingV2_0::OperatingSystem, decorator: Google::Apis::DfareportingV2_0::OperatingSystemRepresentation
      end

      # @private
      class OperatingSystemVersionsListResponseRepresentation < Google::Apis::Core::JsonRepresentation
        property :kind, as: 'kind'
        collection :operating_system_versions, as: 'operatingSystemVersions', class: Google::Apis::DfareportingV2_0::OperatingSystemVersion, decorator: Google::Apis::DfareportingV2_0::OperatingSystemVersionRepresentation
      end

      # @private
      class OperatingSystemsListResponseRepresentation < Google::Apis::Core::JsonRepresentation
        property :kind, as: 'kind'
        collection :operating_systems, as: 'operatingSystems', class: Google::Apis::DfareportingV2_0::OperatingSystem, decorator: Google::Apis::DfareportingV2_0::OperatingSystemRepresentation
      end

      # @private
      class OptimizationActivityRepresentation < Google::Apis::Core::JsonRepresentation
        property :floodlight_activity_id, as: 'floodlightActivityId'
        property :floodlight_activity_id_dimension_value, as: 'floodlightActivityIdDimensionValue', class: Google::Apis::DfareportingV2_0::DimensionValue, decorator: Google::Apis::DfareportingV2_0::DimensionValueRepresentation
        
        property :weight, as: 'weight'
      end

      # @private
      class PathToConversionReportCompatibleFieldsRepresentation < Google::Apis::Core::JsonRepresentation
        collection :conversion_dimensions, as: 'conversionDimensions', class: Google::Apis::DfareportingV2_0::Dimension, decorator: Google::Apis::DfareportingV2_0::DimensionRepresentation
        
        
        collection :custom_floodlight_variables, as: 'customFloodlightVariables', class: Google::Apis::DfareportingV2_0::Dimension, decorator: Google::Apis::DfareportingV2_0::DimensionRepresentation
        
        
        property :kind, as: 'kind'
        collection :metrics, as: 'metrics', class: Google::Apis::DfareportingV2_0::Metric, decorator: Google::Apis::DfareportingV2_0::MetricRepresentation
        
        
        collection :per_interaction_dimensions, as: 'perInteractionDimensions', class: Google::Apis::DfareportingV2_0::Dimension, decorator: Google::Apis::DfareportingV2_0::DimensionRepresentation
      end

      # @private
      class PlacementRepresentation < Google::Apis::Core::JsonRepresentation
        property :account_id, as: 'accountId'
        property :advertiser_id, as: 'advertiserId'
        property :advertiser_id_dimension_value, as: 'advertiserIdDimensionValue', class: Google::Apis::DfareportingV2_0::DimensionValue, decorator: Google::Apis::DfareportingV2_0::DimensionValueRepresentation
        
        property :archived, as: 'archived'
        property :campaign_id, as: 'campaignId'
        property :campaign_id_dimension_value, as: 'campaignIdDimensionValue', class: Google::Apis::DfareportingV2_0::DimensionValue, decorator: Google::Apis::DfareportingV2_0::DimensionValueRepresentation
        
        property :comment, as: 'comment'
        property :compatibility, as: 'compatibility'
        property :content_category_id, as: 'contentCategoryId'
        property :create_info, as: 'createInfo', class: Google::Apis::DfareportingV2_0::LastModifiedInfo, decorator: Google::Apis::DfareportingV2_0::LastModifiedInfoRepresentation
        
        property :directory_site_id, as: 'directorySiteId'
        property :directory_site_id_dimension_value, as: 'directorySiteIdDimensionValue', class: Google::Apis::DfareportingV2_0::DimensionValue, decorator: Google::Apis::DfareportingV2_0::DimensionValueRepresentation
        
        property :external_id, as: 'externalId'
        property :id, as: 'id'
        property :id_dimension_value, as: 'idDimensionValue', class: Google::Apis::DfareportingV2_0::DimensionValue, decorator: Google::Apis::DfareportingV2_0::DimensionValueRepresentation
        
        property :key_name, as: 'keyName'
        property :kind, as: 'kind'
        property :last_modified_info, as: 'lastModifiedInfo', class: Google::Apis::DfareportingV2_0::LastModifiedInfo, decorator: Google::Apis::DfareportingV2_0::LastModifiedInfoRepresentation
        
        property :lookback_configuration, as: 'lookbackConfiguration', class: Google::Apis::DfareportingV2_0::LookbackConfiguration, decorator: Google::Apis::DfareportingV2_0::LookbackConfigurationRepresentation
        
        property :name, as: 'name'
        property :payment_approved, as: 'paymentApproved'
        property :payment_source, as: 'paymentSource'
        property :placement_group_id, as: 'placementGroupId'
        property :placement_group_id_dimension_value, as: 'placementGroupIdDimensionValue', class: Google::Apis::DfareportingV2_0::DimensionValue, decorator: Google::Apis::DfareportingV2_0::DimensionValueRepresentation
        
        property :placement_strategy_id, as: 'placementStrategyId'
        property :pricing_schedule, as: 'pricingSchedule', class: Google::Apis::DfareportingV2_0::PricingSchedule, decorator: Google::Apis::DfareportingV2_0::PricingScheduleRepresentation
        
        property :primary, as: 'primary'
        property :publisher_update_info, as: 'publisherUpdateInfo', class: Google::Apis::DfareportingV2_0::LastModifiedInfo, decorator: Google::Apis::DfareportingV2_0::LastModifiedInfoRepresentation
        
        property :site_id, as: 'siteId'
        property :site_id_dimension_value, as: 'siteIdDimensionValue', class: Google::Apis::DfareportingV2_0::DimensionValue, decorator: Google::Apis::DfareportingV2_0::DimensionValueRepresentation
        
        property :size, as: 'size', class: Google::Apis::DfareportingV2_0::Size, decorator: Google::Apis::DfareportingV2_0::SizeRepresentation
        
        property :ssl_required, as: 'sslRequired'
        property :status, as: 'status'
        property :subaccount_id, as: 'subaccountId'
        collection :tag_formats, as: 'tagFormats'
        
        property :tag_setting, as: 'tagSetting', class: Google::Apis::DfareportingV2_0::TagSetting, decorator: Google::Apis::DfareportingV2_0::TagSettingRepresentation
      end

      # @private
      class PlacementAssignmentRepresentation < Google::Apis::Core::JsonRepresentation
        property :active, as: 'active'
        property :placement_id, as: 'placementId'
        property :placement_id_dimension_value, as: 'placementIdDimensionValue', class: Google::Apis::DfareportingV2_0::DimensionValue, decorator: Google::Apis::DfareportingV2_0::DimensionValueRepresentation
        
        property :ssl_required, as: 'sslRequired'
      end

      # @private
      class PlacementGroupRepresentation < Google::Apis::Core::JsonRepresentation
        property :account_id, as: 'accountId'
        property :advertiser_id, as: 'advertiserId'
        property :advertiser_id_dimension_value, as: 'advertiserIdDimensionValue', class: Google::Apis::DfareportingV2_0::DimensionValue, decorator: Google::Apis::DfareportingV2_0::DimensionValueRepresentation
        
        property :archived, as: 'archived'
        property :campaign_id, as: 'campaignId'
        property :campaign_id_dimension_value, as: 'campaignIdDimensionValue', class: Google::Apis::DfareportingV2_0::DimensionValue, decorator: Google::Apis::DfareportingV2_0::DimensionValueRepresentation
        
        collection :child_placement_ids, as: 'childPlacementIds'
        
        property :comment, as: 'comment'
        property :content_category_id, as: 'contentCategoryId'
        property :create_info, as: 'createInfo', class: Google::Apis::DfareportingV2_0::LastModifiedInfo, decorator: Google::Apis::DfareportingV2_0::LastModifiedInfoRepresentation
        
        property :directory_site_id, as: 'directorySiteId'
        property :directory_site_id_dimension_value, as: 'directorySiteIdDimensionValue', class: Google::Apis::DfareportingV2_0::DimensionValue, decorator: Google::Apis::DfareportingV2_0::DimensionValueRepresentation
        
        property :external_id, as: 'externalId'
        property :id, as: 'id'
        property :id_dimension_value, as: 'idDimensionValue', class: Google::Apis::DfareportingV2_0::DimensionValue, decorator: Google::Apis::DfareportingV2_0::DimensionValueRepresentation
        
        property :kind, as: 'kind'
        property :last_modified_info, as: 'lastModifiedInfo', class: Google::Apis::DfareportingV2_0::LastModifiedInfo, decorator: Google::Apis::DfareportingV2_0::LastModifiedInfoRepresentation
        
        property :name, as: 'name'
        property :placement_group_type, as: 'placementGroupType'
        property :placement_strategy_id, as: 'placementStrategyId'
        property :pricing_schedule, as: 'pricingSchedule', class: Google::Apis::DfareportingV2_0::PricingSchedule, decorator: Google::Apis::DfareportingV2_0::PricingScheduleRepresentation
        
        property :primary_placement_id, as: 'primaryPlacementId'
        property :primary_placement_id_dimension_value, as: 'primaryPlacementIdDimensionValue', class: Google::Apis::DfareportingV2_0::DimensionValue, decorator: Google::Apis::DfareportingV2_0::DimensionValueRepresentation
        
        property :programmatic_setting, as: 'programmaticSetting', class: Google::Apis::DfareportingV2_0::ProgrammaticSetting, decorator: Google::Apis::DfareportingV2_0::ProgrammaticSettingRepresentation
        
        property :site_id, as: 'siteId'
        property :site_id_dimension_value, as: 'siteIdDimensionValue', class: Google::Apis::DfareportingV2_0::DimensionValue, decorator: Google::Apis::DfareportingV2_0::DimensionValueRepresentation
        
        property :subaccount_id, as: 'subaccountId'
      end

      # @private
      class PlacementGroupsListResponseRepresentation < Google::Apis::Core::JsonRepresentation
        property :kind, as: 'kind'
        property :next_page_token, as: 'nextPageToken'
        collection :placement_groups, as: 'placementGroups', class: Google::Apis::DfareportingV2_0::PlacementGroup, decorator: Google::Apis::DfareportingV2_0::PlacementGroupRepresentation
      end

      # @private
      class PlacementStrategiesListResponseRepresentation < Google::Apis::Core::JsonRepresentation
        property :kind, as: 'kind'
        property :next_page_token, as: 'nextPageToken'
        collection :placement_strategies, as: 'placementStrategies', class: Google::Apis::DfareportingV2_0::PlacementStrategy, decorator: Google::Apis::DfareportingV2_0::PlacementStrategyRepresentation
      end

      # @private
      class PlacementStrategyRepresentation < Google::Apis::Core::JsonRepresentation
        property :account_id, as: 'accountId'
        property :id, as: 'id'
        property :kind, as: 'kind'
        property :name, as: 'name'
      end

      # @private
      class PlacementTagRepresentation < Google::Apis::Core::JsonRepresentation
        property :placement_id, as: 'placementId'
        collection :tag_datas, as: 'tagDatas', class: Google::Apis::DfareportingV2_0::TagData, decorator: Google::Apis::DfareportingV2_0::TagDataRepresentation
      end

      # @private
      class PlacementsGenerateTagsResponseRepresentation < Google::Apis::Core::JsonRepresentation
        property :kind, as: 'kind'
        collection :placement_tags, as: 'placementTags', class: Google::Apis::DfareportingV2_0::PlacementTag, decorator: Google::Apis::DfareportingV2_0::PlacementTagRepresentation
      end

      # @private
      class PlacementsListResponseRepresentation < Google::Apis::Core::JsonRepresentation
        property :kind, as: 'kind'
        property :next_page_token, as: 'nextPageToken'
        collection :placements, as: 'placements', class: Google::Apis::DfareportingV2_0::Placement, decorator: Google::Apis::DfareportingV2_0::PlacementRepresentation
      end

      # @private
      class PlatformTypeRepresentation < Google::Apis::Core::JsonRepresentation
        property :id, as: 'id'
        property :kind, as: 'kind'
        property :name, as: 'name'
      end

      # @private
      class PlatformTypesListResponseRepresentation < Google::Apis::Core::JsonRepresentation
        property :kind, as: 'kind'
        collection :platform_types, as: 'platformTypes', class: Google::Apis::DfareportingV2_0::PlatformType, decorator: Google::Apis::DfareportingV2_0::PlatformTypeRepresentation
      end

      # @private
      class PopupWindowPropertiesRepresentation < Google::Apis::Core::JsonRepresentation
        property :dimension, as: 'dimension', class: Google::Apis::DfareportingV2_0::Size, decorator: Google::Apis::DfareportingV2_0::SizeRepresentation
        
        property :offset, as: 'offset', class: Google::Apis::DfareportingV2_0::OffsetPosition, decorator: Google::Apis::DfareportingV2_0::OffsetPositionRepresentation
        
        property :position_type, as: 'positionType'
        property :show_address_bar, as: 'showAddressBar'
        property :show_menu_bar, as: 'showMenuBar'
        property :show_scroll_bar, as: 'showScrollBar'
        property :show_status_bar, as: 'showStatusBar'
        property :show_tool_bar, as: 'showToolBar'
        property :title, as: 'title'
      end

      # @private
      class PostalCodeRepresentation < Google::Apis::Core::JsonRepresentation
        property :country_code, as: 'countryCode'
        property :country_dart_id, as: 'countryDartId'
        property :id, as: 'id'
        property :kind, as: 'kind'
      end

      # @private
      class PostalCodesListResponseRepresentation < Google::Apis::Core::JsonRepresentation
        property :kind, as: 'kind'
        collection :postal_codes, as: 'postalCodes', class: Google::Apis::DfareportingV2_0::PostalCode, decorator: Google::Apis::DfareportingV2_0::PostalCodeRepresentation
      end

      # @private
      class PricingScheduleRepresentation < Google::Apis::Core::JsonRepresentation
        property :cap_cost_option, as: 'capCostOption'
        property :disregard_overdelivery, as: 'disregardOverdelivery'
        property :end_date, as: 'endDate', type: Date
        property :flighted, as: 'flighted'
        property :floodlight_activity_id, as: 'floodlightActivityId'
        collection :pricing_periods, as: 'pricingPeriods', class: Google::Apis::DfareportingV2_0::PricingSchedulePricingPeriod, decorator: Google::Apis::DfareportingV2_0::PricingSchedulePricingPeriodRepresentation
        
        
        property :pricing_type, as: 'pricingType'
        property :start_date, as: 'startDate', type: Date
        property :testing_start_date, as: 'testingStartDate', type: Date
      end

      # @private
      class PricingSchedulePricingPeriodRepresentation < Google::Apis::Core::JsonRepresentation
        property :end_date, as: 'endDate', type: Date
        property :pricing_comment, as: 'pricingComment'
        property :rate_or_cost_nanos, as: 'rateOrCostNanos'
        property :start_date, as: 'startDate', type: Date
        property :units, as: 'units'
      end

      # @private
      class ProgrammaticSettingRepresentation < Google::Apis::Core::JsonRepresentation
        collection :adx_deal_ids, as: 'adxDealIds'
        
        property :insertion_order_id, as: 'insertionOrderId'
        property :insertion_order_id_status, as: 'insertionOrderIdStatus'
        property :media_cost_nanos, as: 'mediaCostNanos'
        property :programmatic, as: 'programmatic'
        collection :trafficker_emails, as: 'traffickerEmails'
      end

      # @private
      class ReachReportCompatibleFieldsRepresentation < Google::Apis::Core::JsonRepresentation
        collection :dimension_filters, as: 'dimensionFilters', class: Google::Apis::DfareportingV2_0::Dimension, decorator: Google::Apis::DfareportingV2_0::DimensionRepresentation
        
        
        collection :dimensions, as: 'dimensions', class: Google::Apis::DfareportingV2_0::Dimension, decorator: Google::Apis::DfareportingV2_0::DimensionRepresentation
        
        
        property :kind, as: 'kind'
        collection :metrics, as: 'metrics', class: Google::Apis::DfareportingV2_0::Metric, decorator: Google::Apis::DfareportingV2_0::MetricRepresentation
        
        
        collection :pivoted_activity_metrics, as: 'pivotedActivityMetrics', class: Google::Apis::DfareportingV2_0::Metric, decorator: Google::Apis::DfareportingV2_0::MetricRepresentation
        
        
        collection :reach_by_frequency_metrics, as: 'reachByFrequencyMetrics', class: Google::Apis::DfareportingV2_0::Metric, decorator: Google::Apis::DfareportingV2_0::MetricRepresentation
      end

      # @private
      class RecipientRepresentation < Google::Apis::Core::JsonRepresentation
        property :delivery_type, as: 'deliveryType'
        property :email, as: 'email'
        property :kind, as: 'kind'
      end

      # @private
      class RegionRepresentation < Google::Apis::Core::JsonRepresentation
        property :country_code, as: 'countryCode'
        property :country_dart_id, as: 'countryDartId'
        property :dart_id, as: 'dartId'
        property :kind, as: 'kind'
        property :name, as: 'name'
        property :region_code, as: 'regionCode'
      end

      # @private
      class RegionsListResponseRepresentation < Google::Apis::Core::JsonRepresentation
        property :kind, as: 'kind'
        collection :regions, as: 'regions', class: Google::Apis::DfareportingV2_0::Region, decorator: Google::Apis::DfareportingV2_0::RegionRepresentation
      end

      # @private
      class ReportRepresentation < Google::Apis::Core::JsonRepresentation
        property :account_id, as: 'accountId'
        property :criteria, as: 'criteria', class: Google::Apis::DfareportingV2_0::Report::Criteria do
          property :activities, as: 'activities', class: Google::Apis::DfareportingV2_0::Activities, decorator: Google::Apis::DfareportingV2_0::ActivitiesRepresentation
          
          property :custom_rich_media_events, as: 'customRichMediaEvents', class: Google::Apis::DfareportingV2_0::CustomRichMediaEvents, decorator: Google::Apis::DfareportingV2_0::CustomRichMediaEventsRepresentation
          
          property :date_range, as: 'dateRange', class: Google::Apis::DfareportingV2_0::DateRange, decorator: Google::Apis::DfareportingV2_0::DateRangeRepresentation
          
          collection :dimension_filters, as: 'dimensionFilters', class: Google::Apis::DfareportingV2_0::DimensionValue, decorator: Google::Apis::DfareportingV2_0::DimensionValueRepresentation
          
          
          collection :dimensions, as: 'dimensions', class: Google::Apis::DfareportingV2_0::SortedDimension, decorator: Google::Apis::DfareportingV2_0::SortedDimensionRepresentation
          
          
          collection :metric_names, as: 'metricNames'
        end
        
        property :cross_dimension_reach_criteria, as: 'crossDimensionReachCriteria', class: Google::Apis::DfareportingV2_0::Report::CrossDimensionReachCriteria do
          collection :breakdown, as: 'breakdown', class: Google::Apis::DfareportingV2_0::SortedDimension, decorator: Google::Apis::DfareportingV2_0::SortedDimensionRepresentation
          
          
          property :date_range, as: 'dateRange', class: Google::Apis::DfareportingV2_0::DateRange, decorator: Google::Apis::DfareportingV2_0::DateRangeRepresentation
          
          property :dimension, as: 'dimension'
          collection :dimension_filters, as: 'dimensionFilters', class: Google::Apis::DfareportingV2_0::DimensionValue, decorator: Google::Apis::DfareportingV2_0::DimensionValueRepresentation
          
          
          collection :metric_names, as: 'metricNames'
          
          collection :overlap_metric_names, as: 'overlapMetricNames'
          
          property :pivoted, as: 'pivoted'
        end
        
        property :delivery, as: 'delivery', class: Google::Apis::DfareportingV2_0::Report::Delivery do
          property :email_owner, as: 'emailOwner'
          property :email_owner_delivery_type, as: 'emailOwnerDeliveryType'
          property :message, as: 'message'
          collection :recipients, as: 'recipients', class: Google::Apis::DfareportingV2_0::Recipient, decorator: Google::Apis::DfareportingV2_0::RecipientRepresentation
        end
        
        property :etag, as: 'etag'
        property :file_name, as: 'fileName'
        property :floodlight_criteria, as: 'floodlightCriteria', class: Google::Apis::DfareportingV2_0::Report::FloodlightCriteria do
          collection :custom_rich_media_events, as: 'customRichMediaEvents', class: Google::Apis::DfareportingV2_0::DimensionValue, decorator: Google::Apis::DfareportingV2_0::DimensionValueRepresentation
          
          
          property :date_range, as: 'dateRange', class: Google::Apis::DfareportingV2_0::DateRange, decorator: Google::Apis::DfareportingV2_0::DateRangeRepresentation
          
          collection :dimension_filters, as: 'dimensionFilters', class: Google::Apis::DfareportingV2_0::DimensionValue, decorator: Google::Apis::DfareportingV2_0::DimensionValueRepresentation
          
          
          collection :dimensions, as: 'dimensions', class: Google::Apis::DfareportingV2_0::SortedDimension, decorator: Google::Apis::DfareportingV2_0::SortedDimensionRepresentation
          
          
          property :floodlight_config_id, as: 'floodlightConfigId', class: Google::Apis::DfareportingV2_0::DimensionValue, decorator: Google::Apis::DfareportingV2_0::DimensionValueRepresentation
          
          collection :metric_names, as: 'metricNames'
          
          property :report_properties, as: 'reportProperties', class: Google::Apis::DfareportingV2_0::Report::FloodlightCriteria::ReportProperties do
            property :include_attributed_ip_conversions, as: 'includeAttributedIPConversions'
            property :include_unattributed_cookie_conversions, as: 'includeUnattributedCookieConversions'
            property :include_unattributed_ip_conversions, as: 'includeUnattributedIPConversions'
          end
        end
        
        property :format, as: 'format'
        property :id, as: 'id'
        property :kind, as: 'kind'
        property :last_modified_time, as: 'lastModifiedTime'
        property :name, as: 'name'
        property :owner_profile_id, as: 'ownerProfileId'
        property :path_to_conversion_criteria, as: 'pathToConversionCriteria', class: Google::Apis::DfareportingV2_0::Report::PathToConversionCriteria do
          collection :activity_filters, as: 'activityFilters', class: Google::Apis::DfareportingV2_0::DimensionValue, decorator: Google::Apis::DfareportingV2_0::DimensionValueRepresentation
          
          
          collection :conversion_dimensions, as: 'conversionDimensions', class: Google::Apis::DfareportingV2_0::SortedDimension, decorator: Google::Apis::DfareportingV2_0::SortedDimensionRepresentation
          
          
          collection :custom_floodlight_variables, as: 'customFloodlightVariables', class: Google::Apis::DfareportingV2_0::SortedDimension, decorator: Google::Apis::DfareportingV2_0::SortedDimensionRepresentation
          
          
          collection :custom_rich_media_events, as: 'customRichMediaEvents', class: Google::Apis::DfareportingV2_0::DimensionValue, decorator: Google::Apis::DfareportingV2_0::DimensionValueRepresentation
          
          
          property :date_range, as: 'dateRange', class: Google::Apis::DfareportingV2_0::DateRange, decorator: Google::Apis::DfareportingV2_0::DateRangeRepresentation
          
          property :floodlight_config_id, as: 'floodlightConfigId', class: Google::Apis::DfareportingV2_0::DimensionValue, decorator: Google::Apis::DfareportingV2_0::DimensionValueRepresentation
          
          collection :metric_names, as: 'metricNames'
          
          collection :per_interaction_dimensions, as: 'perInteractionDimensions', class: Google::Apis::DfareportingV2_0::SortedDimension, decorator: Google::Apis::DfareportingV2_0::SortedDimensionRepresentation
          
          
          property :report_properties, as: 'reportProperties', class: Google::Apis::DfareportingV2_0::Report::PathToConversionCriteria::ReportProperties do
            property :clicks_lookback_window, as: 'clicksLookbackWindow'
            property :impressions_lookback_window, as: 'impressionsLookbackWindow'
            property :include_attributed_ip_conversions, as: 'includeAttributedIPConversions'
            property :include_unattributed_cookie_conversions, as: 'includeUnattributedCookieConversions'
            property :include_unattributed_ip_conversions, as: 'includeUnattributedIPConversions'
            property :maximum_click_interactions, as: 'maximumClickInteractions'
            property :maximum_impression_interactions, as: 'maximumImpressionInteractions'
            property :maximum_interaction_gap, as: 'maximumInteractionGap'
            property :pivot_on_interaction_path, as: 'pivotOnInteractionPath'
          end
        end
        
        property :reach_criteria, as: 'reachCriteria', class: Google::Apis::DfareportingV2_0::Report::ReachCriteria do
          property :activities, as: 'activities', class: Google::Apis::DfareportingV2_0::Activities, decorator: Google::Apis::DfareportingV2_0::ActivitiesRepresentation
          
          property :custom_rich_media_events, as: 'customRichMediaEvents', class: Google::Apis::DfareportingV2_0::CustomRichMediaEvents, decorator: Google::Apis::DfareportingV2_0::CustomRichMediaEventsRepresentation
          
          property :date_range, as: 'dateRange', class: Google::Apis::DfareportingV2_0::DateRange, decorator: Google::Apis::DfareportingV2_0::DateRangeRepresentation
          
          collection :dimension_filters, as: 'dimensionFilters', class: Google::Apis::DfareportingV2_0::DimensionValue, decorator: Google::Apis::DfareportingV2_0::DimensionValueRepresentation
          
          
          collection :dimensions, as: 'dimensions', class: Google::Apis::DfareportingV2_0::SortedDimension, decorator: Google::Apis::DfareportingV2_0::SortedDimensionRepresentation
          
          
          property :enable_all_dimension_combinations, as: 'enableAllDimensionCombinations'
          collection :metric_names, as: 'metricNames'
          
          collection :reach_by_frequency_metric_names, as: 'reachByFrequencyMetricNames'
        end
        
        property :schedule, as: 'schedule', class: Google::Apis::DfareportingV2_0::Report::Schedule do
          property :active, as: 'active'
          property :every, as: 'every'
          property :expiration_date, as: 'expirationDate', type: Date
          property :repeats, as: 'repeats'
          collection :repeats_on_week_days, as: 'repeatsOnWeekDays'
          
          property :runs_on_day_of_month, as: 'runsOnDayOfMonth'
          property :start_date, as: 'startDate', type: Date
        end
        
        property :sub_account_id, as: 'subAccountId'
        property :type, as: 'type'
      end

      # @private
      class ReportCompatibleFieldsRepresentation < Google::Apis::Core::JsonRepresentation
        collection :dimension_filters, as: 'dimensionFilters', class: Google::Apis::DfareportingV2_0::Dimension, decorator: Google::Apis::DfareportingV2_0::DimensionRepresentation
        
        
        collection :dimensions, as: 'dimensions', class: Google::Apis::DfareportingV2_0::Dimension, decorator: Google::Apis::DfareportingV2_0::DimensionRepresentation
        
        
        property :kind, as: 'kind'
        collection :metrics, as: 'metrics', class: Google::Apis::DfareportingV2_0::Metric, decorator: Google::Apis::DfareportingV2_0::MetricRepresentation
        
        
        collection :pivoted_activity_metrics, as: 'pivotedActivityMetrics', class: Google::Apis::DfareportingV2_0::Metric, decorator: Google::Apis::DfareportingV2_0::MetricRepresentation
      end

      # @private
      class ReportListRepresentation < Google::Apis::Core::JsonRepresentation
        property :etag, as: 'etag'
        collection :items, as: 'items', class: Google::Apis::DfareportingV2_0::Report, decorator: Google::Apis::DfareportingV2_0::ReportRepresentation
        
        
        property :kind, as: 'kind'
        property :next_page_token, as: 'nextPageToken'
      end

      # @private
      class ReportsConfigurationRepresentation < Google::Apis::Core::JsonRepresentation
        property :exposure_to_conversion_enabled, as: 'exposureToConversionEnabled'
        property :lookback_configuration, as: 'lookbackConfiguration', class: Google::Apis::DfareportingV2_0::LookbackConfiguration, decorator: Google::Apis::DfareportingV2_0::LookbackConfigurationRepresentation
        
        property :report_generation_time_zone_id, as: 'reportGenerationTimeZoneId'
      end

      # @private
      class RichMediaExitOverrideRepresentation < Google::Apis::Core::JsonRepresentation
        property :custom_exit_url, as: 'customExitUrl'
        property :exit_id, as: 'exitId'
        property :use_custom_exit_url, as: 'useCustomExitUrl'
      end

      # @private
      class SiteRepresentation < Google::Apis::Core::JsonRepresentation
        property :account_id, as: 'accountId'
        property :approved, as: 'approved'
        property :directory_site_id, as: 'directorySiteId'
        property :directory_site_id_dimension_value, as: 'directorySiteIdDimensionValue', class: Google::Apis::DfareportingV2_0::DimensionValue, decorator: Google::Apis::DfareportingV2_0::DimensionValueRepresentation
        
        property :id, as: 'id'
        property :id_dimension_value, as: 'idDimensionValue', class: Google::Apis::DfareportingV2_0::DimensionValue, decorator: Google::Apis::DfareportingV2_0::DimensionValueRepresentation
        
        property :key_name, as: 'keyName'
        property :kind, as: 'kind'
        property :name, as: 'name'
        collection :site_contacts, as: 'siteContacts', class: Google::Apis::DfareportingV2_0::SiteContact, decorator: Google::Apis::DfareportingV2_0::SiteContactRepresentation
        
        
        property :site_settings, as: 'siteSettings', class: Google::Apis::DfareportingV2_0::SiteSettings, decorator: Google::Apis::DfareportingV2_0::SiteSettingsRepresentation
        
        property :subaccount_id, as: 'subaccountId'
      end

      # @private
      class SiteContactRepresentation < Google::Apis::Core::JsonRepresentation
        property :contact_type, as: 'contactType'
        property :email, as: 'email'
        property :first_name, as: 'firstName'
        property :id, as: 'id'
        property :last_name, as: 'lastName'
      end

      # @private
      class SiteSettingsRepresentation < Google::Apis::Core::JsonRepresentation
        property :active_view_opt_out, as: 'activeViewOptOut'
        property :creative_settings, as: 'creativeSettings', class: Google::Apis::DfareportingV2_0::CreativeSettings, decorator: Google::Apis::DfareportingV2_0::CreativeSettingsRepresentation
        
        property :disable_brand_safe_ads, as: 'disableBrandSafeAds'
        property :disable_new_cookie, as: 'disableNewCookie'
        property :lookback_configuration, as: 'lookbackConfiguration', class: Google::Apis::DfareportingV2_0::LookbackConfiguration, decorator: Google::Apis::DfareportingV2_0::LookbackConfigurationRepresentation
        
        property :tag_setting, as: 'tagSetting', class: Google::Apis::DfareportingV2_0::TagSetting, decorator: Google::Apis::DfareportingV2_0::TagSettingRepresentation
      end

      # @private
      class SitesListResponseRepresentation < Google::Apis::Core::JsonRepresentation
        property :kind, as: 'kind'
        property :next_page_token, as: 'nextPageToken'
        collection :sites, as: 'sites', class: Google::Apis::DfareportingV2_0::Site, decorator: Google::Apis::DfareportingV2_0::SiteRepresentation
      end

      # @private
      class SizeRepresentation < Google::Apis::Core::JsonRepresentation
        property :height, as: 'height'
        property :iab, as: 'iab'
        property :id, as: 'id'
        property :kind, as: 'kind'
        property :width, as: 'width'
      end

      # @private
      class SizesListResponseRepresentation < Google::Apis::Core::JsonRepresentation
        property :kind, as: 'kind'
        collection :sizes, as: 'sizes', class: Google::Apis::DfareportingV2_0::Size, decorator: Google::Apis::DfareportingV2_0::SizeRepresentation
      end

      # @private
      class SortedDimensionRepresentation < Google::Apis::Core::JsonRepresentation
        property :kind, as: 'kind'
        property :name, as: 'name'
        property :sort_order, as: 'sortOrder'
      end

      # @private
      class SubaccountRepresentation < Google::Apis::Core::JsonRepresentation
        property :account_id, as: 'accountId'
        collection :available_permission_ids, as: 'availablePermissionIds'
        
        property :id, as: 'id'
        property :kind, as: 'kind'
        property :name, as: 'name'
      end

      # @private
      class SubaccountsListResponseRepresentation < Google::Apis::Core::JsonRepresentation
        property :kind, as: 'kind'
        property :next_page_token, as: 'nextPageToken'
        collection :subaccounts, as: 'subaccounts', class: Google::Apis::DfareportingV2_0::Subaccount, decorator: Google::Apis::DfareportingV2_0::SubaccountRepresentation
      end

      # @private
      class TagDataRepresentation < Google::Apis::Core::JsonRepresentation
        property :ad_id, as: 'adId'
        property :click_tag, as: 'clickTag'
        property :creative_id, as: 'creativeId'
        property :format, as: 'format'
        property :impression_tag, as: 'impressionTag'
      end

      # @private
      class TagSettingRepresentation < Google::Apis::Core::JsonRepresentation
        property :additional_key_values, as: 'additionalKeyValues'
        property :include_click_through_urls, as: 'includeClickThroughUrls'
        property :include_click_tracking, as: 'includeClickTracking'
        property :keyword_option, as: 'keywordOption'
      end

      # @private
      class TagSettingsRepresentation < Google::Apis::Core::JsonRepresentation
        property :dynamic_tag_enabled, as: 'dynamicTagEnabled'
        property :image_tag_enabled, as: 'imageTagEnabled'
      end

      # @private
      class TargetWindowRepresentation < Google::Apis::Core::JsonRepresentation
        property :custom_html, as: 'customHtml'
        property :target_window_option, as: 'targetWindowOption'
      end

      # @private
      class TechnologyTargetingRepresentation < Google::Apis::Core::JsonRepresentation
        collection :browsers, as: 'browsers', class: Google::Apis::DfareportingV2_0::Browser, decorator: Google::Apis::DfareportingV2_0::BrowserRepresentation
        
        
        collection :connection_types, as: 'connectionTypes', class: Google::Apis::DfareportingV2_0::ConnectionType, decorator: Google::Apis::DfareportingV2_0::ConnectionTypeRepresentation
        
        
        collection :mobile_carriers, as: 'mobileCarriers', class: Google::Apis::DfareportingV2_0::MobileCarrier, decorator: Google::Apis::DfareportingV2_0::MobileCarrierRepresentation
        
        
        collection :operating_system_versions, as: 'operatingSystemVersions', class: Google::Apis::DfareportingV2_0::OperatingSystemVersion, decorator: Google::Apis::DfareportingV2_0::OperatingSystemVersionRepresentation
        
        
        collection :operating_systems, as: 'operatingSystems', class: Google::Apis::DfareportingV2_0::OperatingSystem, decorator: Google::Apis::DfareportingV2_0::OperatingSystemRepresentation
        
        
        collection :platform_types, as: 'platformTypes', class: Google::Apis::DfareportingV2_0::PlatformType, decorator: Google::Apis::DfareportingV2_0::PlatformTypeRepresentation
      end

      # @private
      class ThirdPartyTrackingUrlRepresentation < Google::Apis::Core::JsonRepresentation
        property :third_party_url_type, as: 'thirdPartyUrlType'
        property :url, as: 'url'
      end

      # @private
      class UserDefinedVariableConfigurationRepresentation < Google::Apis::Core::JsonRepresentation
        property :data_type, as: 'dataType'
        property :report_name, as: 'reportName'
        property :variable_type, as: 'variableType'
      end

      # @private
      class UserProfileRepresentation < Google::Apis::Core::JsonRepresentation
        property :account_id, as: 'accountId'
        property :account_name, as: 'accountName'
        property :etag, as: 'etag'
        property :kind, as: 'kind'
        property :profile_id, as: 'profileId'
        property :sub_account_id, as: 'subAccountId'
        property :sub_account_name, as: 'subAccountName'
        property :user_name, as: 'userName'
      end

      # @private
      class UserProfileListRepresentation < Google::Apis::Core::JsonRepresentation
        property :etag, as: 'etag'
        collection :items, as: 'items', class: Google::Apis::DfareportingV2_0::UserProfile, decorator: Google::Apis::DfareportingV2_0::UserProfileRepresentation
        
        
        property :kind, as: 'kind'
      end

      # @private
      class UserRoleRepresentation < Google::Apis::Core::JsonRepresentation
        property :account_id, as: 'accountId'
        property :default_user_role, as: 'defaultUserRole'
        property :id, as: 'id'
        property :kind, as: 'kind'
        property :name, as: 'name'
        property :parent_user_role_id, as: 'parentUserRoleId'
        collection :permissions, as: 'permissions', class: Google::Apis::DfareportingV2_0::UserRolePermission, decorator: Google::Apis::DfareportingV2_0::UserRolePermissionRepresentation
        
        
        property :subaccount_id, as: 'subaccountId'
      end

      # @private
      class UserRolePermissionRepresentation < Google::Apis::Core::JsonRepresentation
        property :availability, as: 'availability'
        property :id, as: 'id'
        property :kind, as: 'kind'
        property :name, as: 'name'
        property :permission_group_id, as: 'permissionGroupId'
      end

      # @private
      class UserRolePermissionGroupRepresentation < Google::Apis::Core::JsonRepresentation
        property :id, as: 'id'
        property :kind, as: 'kind'
        property :name, as: 'name'
      end

      # @private
      class UserRolePermissionGroupsListResponseRepresentation < Google::Apis::Core::JsonRepresentation
        property :kind, as: 'kind'
        collection :user_role_permission_groups, as: 'userRolePermissionGroups', class: Google::Apis::DfareportingV2_0::UserRolePermissionGroup, decorator: Google::Apis::DfareportingV2_0::UserRolePermissionGroupRepresentation
      end

      # @private
      class UserRolePermissionsListResponseRepresentation < Google::Apis::Core::JsonRepresentation
        property :kind, as: 'kind'
        collection :user_role_permissions, as: 'userRolePermissions', class: Google::Apis::DfareportingV2_0::UserRolePermission, decorator: Google::Apis::DfareportingV2_0::UserRolePermissionRepresentation
      end

      # @private
      class UserRolesListResponseRepresentation < Google::Apis::Core::JsonRepresentation
        property :kind, as: 'kind'
        property :next_page_token, as: 'nextPageToken'
        collection :user_roles, as: 'userRoles', class: Google::Apis::DfareportingV2_0::UserRole, decorator: Google::Apis::DfareportingV2_0::UserRoleRepresentation
      end
    end
  end
end
