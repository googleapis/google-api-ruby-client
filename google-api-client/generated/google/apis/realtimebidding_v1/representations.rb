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
    module RealtimebiddingV1
      
      class ActivatePretargetingConfigRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AddTargetedAppsRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AddTargetedPublishersRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AddTargetedSitesRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AdvertiserAndBrand
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AppTargeting
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CloseUserListRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Creative
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CreativeDimensions
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CreativeServingDecision
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Date
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DestinationNotCrawlableEvidence
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DestinationNotWorkingEvidence
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DestinationUrlEvidence
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DomainCallEvidence
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DomainCalls
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DownloadSizeEvidence
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Empty
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GetRemarketingTagResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class HtmlContent
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class HttpCallEvidence
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class HttpCookieEvidence
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Image
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListCreativesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListPretargetingConfigsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListUserListsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class MediaFile
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class NativeContent
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class NumericTargetingDimension
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class OpenUserListRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class PolicyCompliance
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class PolicyTopicEntry
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class PolicyTopicEvidence
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class PretargetingConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class RemoveTargetedAppsRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class RemoveTargetedPublishersRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class RemoveTargetedSitesRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class StringTargetingDimension
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SuspendPretargetingConfigRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class UrlDownloadSize
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class UrlRestriction
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class UserList
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class VideoContent
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class VideoMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class WatchCreativesRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class WatchCreativesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ActivatePretargetingConfigRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class AddTargetedAppsRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :app_ids, as: 'appIds'
          property :targeting_mode, as: 'targetingMode'
        end
      end
      
      class AddTargetedPublishersRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :publisher_ids, as: 'publisherIds'
          property :targeting_mode, as: 'targetingMode'
        end
      end
      
      class AddTargetedSitesRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :sites, as: 'sites'
          property :targeting_mode, as: 'targetingMode'
        end
      end
      
      class AdvertiserAndBrand
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :advertiser_id, :numeric_string => true, as: 'advertiserId'
          property :advertiser_name, as: 'advertiserName'
          property :brand_id, :numeric_string => true, as: 'brandId'
          property :brand_name, as: 'brandName'
        end
      end
      
      class AppTargeting
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :mobile_app_category_targeting, as: 'mobileAppCategoryTargeting', class: Google::Apis::RealtimebiddingV1::NumericTargetingDimension, decorator: Google::Apis::RealtimebiddingV1::NumericTargetingDimension::Representation
      
          property :mobile_app_targeting, as: 'mobileAppTargeting', class: Google::Apis::RealtimebiddingV1::StringTargetingDimension, decorator: Google::Apis::RealtimebiddingV1::StringTargetingDimension::Representation
      
        end
      end
      
      class CloseUserListRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class Creative
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :account_id, :numeric_string => true, as: 'accountId'
          property :ad_choices_destination_url, as: 'adChoicesDestinationUrl'
          property :advertiser_name, as: 'advertiserName'
          property :agency_id, :numeric_string => true, as: 'agencyId'
          property :api_update_time, as: 'apiUpdateTime'
          property :creative_format, as: 'creativeFormat'
          property :creative_id, as: 'creativeId'
          property :creative_serving_decision, as: 'creativeServingDecision', class: Google::Apis::RealtimebiddingV1::CreativeServingDecision, decorator: Google::Apis::RealtimebiddingV1::CreativeServingDecision::Representation
      
          collection :deal_ids, as: 'dealIds'
          collection :declared_attributes, as: 'declaredAttributes'
          collection :declared_click_through_urls, as: 'declaredClickThroughUrls'
          collection :declared_restricted_categories, as: 'declaredRestrictedCategories'
          collection :declared_vendor_ids, as: 'declaredVendorIds'
          property :html, as: 'html', class: Google::Apis::RealtimebiddingV1::HtmlContent, decorator: Google::Apis::RealtimebiddingV1::HtmlContent::Representation
      
          collection :impression_tracking_urls, as: 'impressionTrackingUrls'
          property :name, as: 'name'
          property :native, as: 'native', class: Google::Apis::RealtimebiddingV1::NativeContent, decorator: Google::Apis::RealtimebiddingV1::NativeContent::Representation
      
          collection :restricted_categories, as: 'restrictedCategories'
          property :version, as: 'version'
          property :video, as: 'video', class: Google::Apis::RealtimebiddingV1::VideoContent, decorator: Google::Apis::RealtimebiddingV1::VideoContent::Representation
      
        end
      end
      
      class CreativeDimensions
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :height, :numeric_string => true, as: 'height'
          property :width, :numeric_string => true, as: 'width'
        end
      end
      
      class CreativeServingDecision
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :china_policy_compliance, as: 'chinaPolicyCompliance', class: Google::Apis::RealtimebiddingV1::PolicyCompliance, decorator: Google::Apis::RealtimebiddingV1::PolicyCompliance::Representation
      
          property :deals_policy_compliance, as: 'dealsPolicyCompliance', class: Google::Apis::RealtimebiddingV1::PolicyCompliance, decorator: Google::Apis::RealtimebiddingV1::PolicyCompliance::Representation
      
          collection :detected_advertisers, as: 'detectedAdvertisers', class: Google::Apis::RealtimebiddingV1::AdvertiserAndBrand, decorator: Google::Apis::RealtimebiddingV1::AdvertiserAndBrand::Representation
      
          collection :detected_attributes, as: 'detectedAttributes'
          collection :detected_click_through_urls, as: 'detectedClickThroughUrls'
          collection :detected_domains, as: 'detectedDomains'
          collection :detected_languages, as: 'detectedLanguages'
          collection :detected_product_categories, as: 'detectedProductCategories'
          collection :detected_sensitive_categories, as: 'detectedSensitiveCategories'
          collection :detected_vendor_ids, as: 'detectedVendorIds'
          property :last_status_update, as: 'lastStatusUpdate'
          property :network_policy_compliance, as: 'networkPolicyCompliance', class: Google::Apis::RealtimebiddingV1::PolicyCompliance, decorator: Google::Apis::RealtimebiddingV1::PolicyCompliance::Representation
      
          property :platform_policy_compliance, as: 'platformPolicyCompliance', class: Google::Apis::RealtimebiddingV1::PolicyCompliance, decorator: Google::Apis::RealtimebiddingV1::PolicyCompliance::Representation
      
          property :russia_policy_compliance, as: 'russiaPolicyCompliance', class: Google::Apis::RealtimebiddingV1::PolicyCompliance, decorator: Google::Apis::RealtimebiddingV1::PolicyCompliance::Representation
      
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
      
      class DestinationNotCrawlableEvidence
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :crawl_time, as: 'crawlTime'
          property :crawled_url, as: 'crawledUrl'
          property :reason, as: 'reason'
        end
      end
      
      class DestinationNotWorkingEvidence
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :dns_error, as: 'dnsError'
          property :expanded_url, as: 'expandedUrl'
          property :http_error, as: 'httpError'
          property :invalid_page, as: 'invalidPage'
          property :last_check_time, as: 'lastCheckTime'
          property :platform, as: 'platform'
          property :redirection_error, as: 'redirectionError'
          property :url_rejected, as: 'urlRejected'
        end
      end
      
      class DestinationUrlEvidence
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :destination_url, as: 'destinationUrl'
        end
      end
      
      class DomainCallEvidence
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :top_http_call_domains, as: 'topHttpCallDomains', class: Google::Apis::RealtimebiddingV1::DomainCalls, decorator: Google::Apis::RealtimebiddingV1::DomainCalls::Representation
      
          property :total_http_call_count, as: 'totalHttpCallCount'
        end
      end
      
      class DomainCalls
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :domain, as: 'domain'
          property :http_call_count, as: 'httpCallCount'
        end
      end
      
      class DownloadSizeEvidence
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :top_url_download_size_breakdowns, as: 'topUrlDownloadSizeBreakdowns', class: Google::Apis::RealtimebiddingV1::UrlDownloadSize, decorator: Google::Apis::RealtimebiddingV1::UrlDownloadSize::Representation
      
          property :total_download_size_kb, as: 'totalDownloadSizeKb'
        end
      end
      
      class Empty
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GetRemarketingTagResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :snippet, as: 'snippet'
        end
      end
      
      class HtmlContent
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :height, as: 'height'
          property :snippet, as: 'snippet'
          property :width, as: 'width'
        end
      end
      
      class HttpCallEvidence
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :urls, as: 'urls'
        end
      end
      
      class HttpCookieEvidence
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :cookie_names, as: 'cookieNames'
          property :max_cookie_count, as: 'maxCookieCount'
        end
      end
      
      class Image
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :height, as: 'height'
          property :url, as: 'url'
          property :width, as: 'width'
        end
      end
      
      class ListCreativesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :creatives, as: 'creatives', class: Google::Apis::RealtimebiddingV1::Creative, decorator: Google::Apis::RealtimebiddingV1::Creative::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class ListPretargetingConfigsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :pretargeting_configs, as: 'pretargetingConfigs', class: Google::Apis::RealtimebiddingV1::PretargetingConfig, decorator: Google::Apis::RealtimebiddingV1::PretargetingConfig::Representation
      
        end
      end
      
      class ListUserListsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :user_lists, as: 'userLists', class: Google::Apis::RealtimebiddingV1::UserList, decorator: Google::Apis::RealtimebiddingV1::UserList::Representation
      
        end
      end
      
      class MediaFile
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :bitrate, :numeric_string => true, as: 'bitrate'
          property :mime_type, as: 'mimeType'
        end
      end
      
      class NativeContent
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :advertiser_name, as: 'advertiserName'
          property :app_icon, as: 'appIcon', class: Google::Apis::RealtimebiddingV1::Image, decorator: Google::Apis::RealtimebiddingV1::Image::Representation
      
          property :body, as: 'body'
          property :call_to_action, as: 'callToAction'
          property :click_link_url, as: 'clickLinkUrl'
          property :click_tracking_url, as: 'clickTrackingUrl'
          property :headline, as: 'headline'
          property :image, as: 'image', class: Google::Apis::RealtimebiddingV1::Image, decorator: Google::Apis::RealtimebiddingV1::Image::Representation
      
          property :logo, as: 'logo', class: Google::Apis::RealtimebiddingV1::Image, decorator: Google::Apis::RealtimebiddingV1::Image::Representation
      
          property :price_display_text, as: 'priceDisplayText'
          property :star_rating, as: 'starRating'
          property :video_url, as: 'videoUrl'
        end
      end
      
      class NumericTargetingDimension
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :excluded_ids, as: 'excludedIds'
          collection :included_ids, as: 'includedIds'
        end
      end
      
      class OpenUserListRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class PolicyCompliance
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :status, as: 'status'
          collection :topics, as: 'topics', class: Google::Apis::RealtimebiddingV1::PolicyTopicEntry, decorator: Google::Apis::RealtimebiddingV1::PolicyTopicEntry::Representation
      
        end
      end
      
      class PolicyTopicEntry
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :evidences, as: 'evidences', class: Google::Apis::RealtimebiddingV1::PolicyTopicEvidence, decorator: Google::Apis::RealtimebiddingV1::PolicyTopicEvidence::Representation
      
          property :help_center_url, as: 'helpCenterUrl'
          property :policy_topic, as: 'policyTopic'
        end
      end
      
      class PolicyTopicEvidence
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :destination_not_crawlable, as: 'destinationNotCrawlable', class: Google::Apis::RealtimebiddingV1::DestinationNotCrawlableEvidence, decorator: Google::Apis::RealtimebiddingV1::DestinationNotCrawlableEvidence::Representation
      
          property :destination_not_working, as: 'destinationNotWorking', class: Google::Apis::RealtimebiddingV1::DestinationNotWorkingEvidence, decorator: Google::Apis::RealtimebiddingV1::DestinationNotWorkingEvidence::Representation
      
          property :destination_url, as: 'destinationUrl', class: Google::Apis::RealtimebiddingV1::DestinationUrlEvidence, decorator: Google::Apis::RealtimebiddingV1::DestinationUrlEvidence::Representation
      
          property :domain_call, as: 'domainCall', class: Google::Apis::RealtimebiddingV1::DomainCallEvidence, decorator: Google::Apis::RealtimebiddingV1::DomainCallEvidence::Representation
      
          property :download_size, as: 'downloadSize', class: Google::Apis::RealtimebiddingV1::DownloadSizeEvidence, decorator: Google::Apis::RealtimebiddingV1::DownloadSizeEvidence::Representation
      
          property :http_call, as: 'httpCall', class: Google::Apis::RealtimebiddingV1::HttpCallEvidence, decorator: Google::Apis::RealtimebiddingV1::HttpCallEvidence::Representation
      
          property :http_cookie, as: 'httpCookie', class: Google::Apis::RealtimebiddingV1::HttpCookieEvidence, decorator: Google::Apis::RealtimebiddingV1::HttpCookieEvidence::Representation
      
        end
      end
      
      class PretargetingConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :allowed_user_targeting_modes, as: 'allowedUserTargetingModes'
          property :app_targeting, as: 'appTargeting', class: Google::Apis::RealtimebiddingV1::AppTargeting, decorator: Google::Apis::RealtimebiddingV1::AppTargeting::Representation
      
          property :billing_id, :numeric_string => true, as: 'billingId'
          property :display_name, as: 'displayName'
          collection :excluded_content_label_ids, as: 'excludedContentLabelIds'
          property :geo_targeting, as: 'geoTargeting', class: Google::Apis::RealtimebiddingV1::NumericTargetingDimension, decorator: Google::Apis::RealtimebiddingV1::NumericTargetingDimension::Representation
      
          collection :included_creative_dimensions, as: 'includedCreativeDimensions', class: Google::Apis::RealtimebiddingV1::CreativeDimensions, decorator: Google::Apis::RealtimebiddingV1::CreativeDimensions::Representation
      
          collection :included_environments, as: 'includedEnvironments'
          collection :included_formats, as: 'includedFormats'
          collection :included_languages, as: 'includedLanguages'
          collection :included_mobile_operating_system_ids, as: 'includedMobileOperatingSystemIds'
          collection :included_platforms, as: 'includedPlatforms'
          collection :included_user_id_types, as: 'includedUserIdTypes'
          property :interstitial_targeting, as: 'interstitialTargeting'
          collection :invalid_geo_ids, as: 'invalidGeoIds'
          property :maximum_qps, :numeric_string => true, as: 'maximumQps'
          property :minimum_viewability_decile, as: 'minimumViewabilityDecile'
          property :name, as: 'name'
          property :publisher_targeting, as: 'publisherTargeting', class: Google::Apis::RealtimebiddingV1::StringTargetingDimension, decorator: Google::Apis::RealtimebiddingV1::StringTargetingDimension::Representation
      
          property :state, as: 'state'
          property :user_list_targeting, as: 'userListTargeting', class: Google::Apis::RealtimebiddingV1::NumericTargetingDimension, decorator: Google::Apis::RealtimebiddingV1::NumericTargetingDimension::Representation
      
          property :vertical_targeting, as: 'verticalTargeting', class: Google::Apis::RealtimebiddingV1::NumericTargetingDimension, decorator: Google::Apis::RealtimebiddingV1::NumericTargetingDimension::Representation
      
          property :web_targeting, as: 'webTargeting', class: Google::Apis::RealtimebiddingV1::StringTargetingDimension, decorator: Google::Apis::RealtimebiddingV1::StringTargetingDimension::Representation
      
        end
      end
      
      class RemoveTargetedAppsRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :app_ids, as: 'appIds'
        end
      end
      
      class RemoveTargetedPublishersRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :publisher_ids, as: 'publisherIds'
        end
      end
      
      class RemoveTargetedSitesRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :sites, as: 'sites'
        end
      end
      
      class StringTargetingDimension
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :targeting_mode, as: 'targetingMode'
          collection :values, as: 'values'
        end
      end
      
      class SuspendPretargetingConfigRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class UrlDownloadSize
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :download_size_kb, as: 'downloadSizeKb'
          property :normalized_url, as: 'normalizedUrl'
        end
      end
      
      class UrlRestriction
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :end_date, as: 'endDate', class: Google::Apis::RealtimebiddingV1::Date, decorator: Google::Apis::RealtimebiddingV1::Date::Representation
      
          property :restriction_type, as: 'restrictionType'
          property :start_date, as: 'startDate', class: Google::Apis::RealtimebiddingV1::Date, decorator: Google::Apis::RealtimebiddingV1::Date::Representation
      
          property :url, as: 'url'
        end
      end
      
      class UserList
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :description, as: 'description'
          property :display_name, as: 'displayName'
          property :membership_duration_days, :numeric_string => true, as: 'membershipDurationDays'
          property :name, as: 'name'
          property :status, as: 'status'
          property :url_restriction, as: 'urlRestriction', class: Google::Apis::RealtimebiddingV1::UrlRestriction, decorator: Google::Apis::RealtimebiddingV1::UrlRestriction::Representation
      
        end
      end
      
      class VideoContent
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :video_metadata, as: 'videoMetadata', class: Google::Apis::RealtimebiddingV1::VideoMetadata, decorator: Google::Apis::RealtimebiddingV1::VideoMetadata::Representation
      
          property :video_url, as: 'videoUrl'
          property :video_vast_xml, as: 'videoVastXml'
        end
      end
      
      class VideoMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :duration, as: 'duration'
          property :is_valid_vast, as: 'isValidVast'
          property :is_vpaid, as: 'isVpaid'
          collection :media_files, as: 'mediaFiles', class: Google::Apis::RealtimebiddingV1::MediaFile, decorator: Google::Apis::RealtimebiddingV1::MediaFile::Representation
      
          property :skip_offset, as: 'skipOffset'
          property :vast_version, as: 'vastVersion'
        end
      end
      
      class WatchCreativesRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class WatchCreativesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :subscription, as: 'subscription'
          property :topic, as: 'topic'
        end
      end
    end
  end
end
