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
    module YoutubeV3
      
      class AccessPolicyRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class ActivityRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class ActivityContentDetailsRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class ActivityContentDetailsBulletinRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class ActivityContentDetailsChannelItemRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class ActivityContentDetailsCommentRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class ActivityContentDetailsFavoriteRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class ActivityContentDetailsLikeRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class ActivityContentDetailsPlaylistItemRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class ActivityContentDetailsPromotedItemRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class ActivityContentDetailsRecommendationRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class ActivityContentDetailsSocialRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class ActivityContentDetailsSubscriptionRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class ActivityContentDetailsUploadRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class ActivityListResponseRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class ActivitySnippetRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class CaptionRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class CaptionListResponseRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class CaptionSnippetRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class CdnSettingsRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class ChannelRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class ChannelAuditDetailsRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class ChannelBannerResourceRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class ChannelBrandingSettingsRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class ChannelContentDetailsRepresentation < Google::Apis::Core::JsonRepresentation
        
        class RelatedPlaylistsRepresentation < Google::Apis::Core::JsonRepresentation
          
        end
      end
      
      class ChannelContentOwnerDetailsRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class ChannelConversionPingRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class ChannelConversionPingsRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class ChannelIdRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class ChannelListResponseRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class ChannelLocalizationRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class ChannelSectionRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class ChannelSectionContentDetailsRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class ChannelSectionListResponseRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class ChannelSectionLocalizationRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class ChannelSectionSnippetRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class ChannelSectionTargetingRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class ChannelSettingsRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class ChannelSnippetRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class ChannelStatisticsRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class ChannelStatusRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class ChannelTopicDetailsRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class CommentRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class CommentListResponseRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class CommentSnippetRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class CommentThreadRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class CommentThreadListResponseRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class CommentThreadRepliesRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class CommentThreadSnippetRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class ContentRatingRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class GeoPointRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class GuideCategoryRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class GuideCategoryListResponseRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class GuideCategorySnippetRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class I18nLanguageRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class I18nLanguageListResponseRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class I18nLanguageSnippetRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class I18nRegionRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class I18nRegionListResponseRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class I18nRegionSnippetRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class ImageSettingsRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class IngestionInfoRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class InvideoBrandingRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class InvideoPositionRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class InvideoPromotionRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class InvideoTimingRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class LanguageTagRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class LiveBroadcastRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class LiveBroadcastContentDetailsRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class LiveBroadcastListResponseRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class LiveBroadcastSnippetRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class LiveBroadcastStatusRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class LiveStreamRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class LiveStreamContentDetailsRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class LiveStreamListResponseRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class LiveStreamSnippetRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class LiveStreamStatusRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class LocalizedPropertyRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class LocalizedStringRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class MonitorStreamInfoRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class PageInfoRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class PlaylistRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class PlaylistContentDetailsRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class PlaylistItemRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class PlaylistItemContentDetailsRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class PlaylistItemListResponseRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class PlaylistItemSnippetRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class PlaylistItemStatusRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class PlaylistListResponseRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class PlaylistLocalizationRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class PlaylistPlayerRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class PlaylistSnippetRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class PlaylistStatusRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class PromotedItemRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class PromotedItemIdRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class PropertyValueRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class ResourceIdRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class SearchListResponseRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class SearchResultRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class SearchResultSnippetRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class SubscriptionRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class SubscriptionContentDetailsRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class SubscriptionListResponseRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class SubscriptionSnippetRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class SubscriptionSubscriberSnippetRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class ThumbnailRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class ThumbnailDetailsRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class ThumbnailSetResponseRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class TokenPaginationRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class VideoRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class VideoAbuseReportRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class VideoAbuseReportReasonRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class VideoAbuseReportReasonIdRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class VideoAbuseReportReasonListResponseRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class VideoAbuseReportReasonSnippetRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class VideoAbuseReportSecondaryReasonRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class VideoAgeGatingRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class VideoCategoryRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class VideoCategoryListResponseRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class VideoCategorySnippetRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class VideoContentDetailsRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class VideoContentDetailsRegionRestrictionRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class VideoConversionPingRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class VideoConversionPingsRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class VideoFileDetailsRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class VideoFileDetailsAudioStreamRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class VideoFileDetailsVideoStreamRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class VideoGetRatingResponseRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class VideoListResponseRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class VideoLiveStreamingDetailsRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class VideoLocalizationRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class VideoMonetizationDetailsRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class VideoPlayerRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class VideoProcessingDetailsRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class VideoProcessingDetailsProcessingProgressRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class VideoProjectDetailsRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class VideoRatingRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class VideoRecordingDetailsRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class VideoSnippetRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class VideoStatisticsRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class VideoStatusRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class VideoSuggestionsRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class VideoSuggestionsTagSuggestionRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class VideoTopicDetailsRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class WatchSettingsRepresentation < Google::Apis::Core::JsonRepresentation
        
      end

      # @private
      class AccessPolicyRepresentation < Google::Apis::Core::JsonRepresentation
        property :allowed, as: 'allowed'
        collection :exception, as: 'exception'
      end

      # @private
      class ActivityRepresentation < Google::Apis::Core::JsonRepresentation
        property :content_details, as: 'contentDetails', class: Google::Apis::YoutubeV3::ActivityContentDetails, decorator: Google::Apis::YoutubeV3::ActivityContentDetailsRepresentation
        
        property :etag, as: 'etag'
        property :id, as: 'id'
        property :kind, as: 'kind'
        property :snippet, as: 'snippet', class: Google::Apis::YoutubeV3::ActivitySnippet, decorator: Google::Apis::YoutubeV3::ActivitySnippetRepresentation
      end

      # @private
      class ActivityContentDetailsRepresentation < Google::Apis::Core::JsonRepresentation
        property :bulletin, as: 'bulletin', class: Google::Apis::YoutubeV3::ActivityContentDetailsBulletin, decorator: Google::Apis::YoutubeV3::ActivityContentDetailsBulletinRepresentation
        
        property :channel_item, as: 'channelItem', class: Google::Apis::YoutubeV3::ActivityContentDetailsChannelItem, decorator: Google::Apis::YoutubeV3::ActivityContentDetailsChannelItemRepresentation
        
        property :comment, as: 'comment', class: Google::Apis::YoutubeV3::ActivityContentDetailsComment, decorator: Google::Apis::YoutubeV3::ActivityContentDetailsCommentRepresentation
        
        property :favorite, as: 'favorite', class: Google::Apis::YoutubeV3::ActivityContentDetailsFavorite, decorator: Google::Apis::YoutubeV3::ActivityContentDetailsFavoriteRepresentation
        
        property :like, as: 'like', class: Google::Apis::YoutubeV3::ActivityContentDetailsLike, decorator: Google::Apis::YoutubeV3::ActivityContentDetailsLikeRepresentation
        
        property :playlist_item, as: 'playlistItem', class: Google::Apis::YoutubeV3::ActivityContentDetailsPlaylistItem, decorator: Google::Apis::YoutubeV3::ActivityContentDetailsPlaylistItemRepresentation
        
        property :promoted_item, as: 'promotedItem', class: Google::Apis::YoutubeV3::ActivityContentDetailsPromotedItem, decorator: Google::Apis::YoutubeV3::ActivityContentDetailsPromotedItemRepresentation
        
        property :recommendation, as: 'recommendation', class: Google::Apis::YoutubeV3::ActivityContentDetailsRecommendation, decorator: Google::Apis::YoutubeV3::ActivityContentDetailsRecommendationRepresentation
        
        property :social, as: 'social', class: Google::Apis::YoutubeV3::ActivityContentDetailsSocial, decorator: Google::Apis::YoutubeV3::ActivityContentDetailsSocialRepresentation
        
        property :subscription, as: 'subscription', class: Google::Apis::YoutubeV3::ActivityContentDetailsSubscription, decorator: Google::Apis::YoutubeV3::ActivityContentDetailsSubscriptionRepresentation
        
        property :upload, as: 'upload', class: Google::Apis::YoutubeV3::ActivityContentDetailsUpload, decorator: Google::Apis::YoutubeV3::ActivityContentDetailsUploadRepresentation
      end

      # @private
      class ActivityContentDetailsBulletinRepresentation < Google::Apis::Core::JsonRepresentation
        property :resource_id, as: 'resourceId', class: Google::Apis::YoutubeV3::ResourceId, decorator: Google::Apis::YoutubeV3::ResourceIdRepresentation
      end

      # @private
      class ActivityContentDetailsChannelItemRepresentation < Google::Apis::Core::JsonRepresentation
        property :resource_id, as: 'resourceId', class: Google::Apis::YoutubeV3::ResourceId, decorator: Google::Apis::YoutubeV3::ResourceIdRepresentation
      end

      # @private
      class ActivityContentDetailsCommentRepresentation < Google::Apis::Core::JsonRepresentation
        property :resource_id, as: 'resourceId', class: Google::Apis::YoutubeV3::ResourceId, decorator: Google::Apis::YoutubeV3::ResourceIdRepresentation
      end

      # @private
      class ActivityContentDetailsFavoriteRepresentation < Google::Apis::Core::JsonRepresentation
        property :resource_id, as: 'resourceId', class: Google::Apis::YoutubeV3::ResourceId, decorator: Google::Apis::YoutubeV3::ResourceIdRepresentation
      end

      # @private
      class ActivityContentDetailsLikeRepresentation < Google::Apis::Core::JsonRepresentation
        property :resource_id, as: 'resourceId', class: Google::Apis::YoutubeV3::ResourceId, decorator: Google::Apis::YoutubeV3::ResourceIdRepresentation
      end

      # @private
      class ActivityContentDetailsPlaylistItemRepresentation < Google::Apis::Core::JsonRepresentation
        property :playlist_id, as: 'playlistId'
        property :playlist_item_id, as: 'playlistItemId'
        property :resource_id, as: 'resourceId', class: Google::Apis::YoutubeV3::ResourceId, decorator: Google::Apis::YoutubeV3::ResourceIdRepresentation
      end

      # @private
      class ActivityContentDetailsPromotedItemRepresentation < Google::Apis::Core::JsonRepresentation
        property :ad_tag, as: 'adTag'
        property :click_tracking_url, as: 'clickTrackingUrl'
        property :creative_view_url, as: 'creativeViewUrl'
        property :cta_type, as: 'ctaType'
        property :custom_cta_button_text, as: 'customCtaButtonText'
        property :description_text, as: 'descriptionText'
        property :destination_url, as: 'destinationUrl'
        collection :forecasting_url, as: 'forecastingUrl'
        
        collection :impression_url, as: 'impressionUrl'
        
        property :video_id, as: 'videoId'
      end

      # @private
      class ActivityContentDetailsRecommendationRepresentation < Google::Apis::Core::JsonRepresentation
        property :reason, as: 'reason'
        property :resource_id, as: 'resourceId', class: Google::Apis::YoutubeV3::ResourceId, decorator: Google::Apis::YoutubeV3::ResourceIdRepresentation
        
        property :seed_resource_id, as: 'seedResourceId', class: Google::Apis::YoutubeV3::ResourceId, decorator: Google::Apis::YoutubeV3::ResourceIdRepresentation
      end

      # @private
      class ActivityContentDetailsSocialRepresentation < Google::Apis::Core::JsonRepresentation
        property :author, as: 'author'
        property :image_url, as: 'imageUrl'
        property :reference_url, as: 'referenceUrl'
        property :resource_id, as: 'resourceId', class: Google::Apis::YoutubeV3::ResourceId, decorator: Google::Apis::YoutubeV3::ResourceIdRepresentation
        
        property :type, as: 'type'
      end

      # @private
      class ActivityContentDetailsSubscriptionRepresentation < Google::Apis::Core::JsonRepresentation
        property :resource_id, as: 'resourceId', class: Google::Apis::YoutubeV3::ResourceId, decorator: Google::Apis::YoutubeV3::ResourceIdRepresentation
      end

      # @private
      class ActivityContentDetailsUploadRepresentation < Google::Apis::Core::JsonRepresentation
        property :video_id, as: 'videoId'
      end

      # @private
      class ActivityListResponseRepresentation < Google::Apis::Core::JsonRepresentation
        property :etag, as: 'etag'
        property :event_id, as: 'eventId'
        collection :items, as: 'items', class: Google::Apis::YoutubeV3::Activity, decorator: Google::Apis::YoutubeV3::ActivityRepresentation
        
        
        property :kind, as: 'kind'
        property :next_page_token, as: 'nextPageToken'
        property :page_info, as: 'pageInfo', class: Google::Apis::YoutubeV3::PageInfo, decorator: Google::Apis::YoutubeV3::PageInfoRepresentation
        
        property :prev_page_token, as: 'prevPageToken'
        property :token_pagination, as: 'tokenPagination', class: Google::Apis::YoutubeV3::TokenPagination, decorator: Google::Apis::YoutubeV3::TokenPaginationRepresentation
        
        property :visitor_id, as: 'visitorId'
      end

      # @private
      class ActivitySnippetRepresentation < Google::Apis::Core::JsonRepresentation
        property :channel_id, as: 'channelId'
        property :channel_title, as: 'channelTitle'
        property :description, as: 'description'
        property :group_id, as: 'groupId'
        property :published_at, as: 'publishedAt', type: DateTime
        property :thumbnails, as: 'thumbnails', class: Google::Apis::YoutubeV3::ThumbnailDetails, decorator: Google::Apis::YoutubeV3::ThumbnailDetailsRepresentation
        
        property :title, as: 'title'
        property :type, as: 'type'
      end

      # @private
      class CaptionRepresentation < Google::Apis::Core::JsonRepresentation
        property :etag, as: 'etag'
        property :id, as: 'id'
        property :kind, as: 'kind'
        property :snippet, as: 'snippet', class: Google::Apis::YoutubeV3::CaptionSnippet, decorator: Google::Apis::YoutubeV3::CaptionSnippetRepresentation
      end

      # @private
      class CaptionListResponseRepresentation < Google::Apis::Core::JsonRepresentation
        property :etag, as: 'etag'
        property :event_id, as: 'eventId'
        collection :items, as: 'items', class: Google::Apis::YoutubeV3::Caption, decorator: Google::Apis::YoutubeV3::CaptionRepresentation
        
        
        property :kind, as: 'kind'
        property :visitor_id, as: 'visitorId'
      end

      # @private
      class CaptionSnippetRepresentation < Google::Apis::Core::JsonRepresentation
        property :audio_track_type, as: 'audioTrackType'
        property :failure_reason, as: 'failureReason'
        property :is_auto_synced, as: 'isAutoSynced'
        property :is_cc, as: 'isCC'
        property :is_draft, as: 'isDraft'
        property :is_easy_reader, as: 'isEasyReader'
        property :is_large, as: 'isLarge'
        property :language, as: 'language'
        property :last_updated, as: 'lastUpdated', type: DateTime
        property :name, as: 'name'
        property :status, as: 'status'
        property :track_kind, as: 'trackKind'
        property :video_id, as: 'videoId'
      end

      # @private
      class CdnSettingsRepresentation < Google::Apis::Core::JsonRepresentation
        property :format, as: 'format'
        property :ingestion_info, as: 'ingestionInfo', class: Google::Apis::YoutubeV3::IngestionInfo, decorator: Google::Apis::YoutubeV3::IngestionInfoRepresentation
        
        property :ingestion_type, as: 'ingestionType'
      end

      # @private
      class ChannelRepresentation < Google::Apis::Core::JsonRepresentation
        property :audit_details, as: 'auditDetails', class: Google::Apis::YoutubeV3::ChannelAuditDetails, decorator: Google::Apis::YoutubeV3::ChannelAuditDetailsRepresentation
        
        property :branding_settings, as: 'brandingSettings', class: Google::Apis::YoutubeV3::ChannelBrandingSettings, decorator: Google::Apis::YoutubeV3::ChannelBrandingSettingsRepresentation
        
        property :content_details, as: 'contentDetails', class: Google::Apis::YoutubeV3::ChannelContentDetails, decorator: Google::Apis::YoutubeV3::ChannelContentDetailsRepresentation
        
        property :content_owner_details, as: 'contentOwnerDetails', class: Google::Apis::YoutubeV3::ChannelContentOwnerDetails, decorator: Google::Apis::YoutubeV3::ChannelContentOwnerDetailsRepresentation
        
        property :conversion_pings, as: 'conversionPings', class: Google::Apis::YoutubeV3::ChannelConversionPings, decorator: Google::Apis::YoutubeV3::ChannelConversionPingsRepresentation
        
        property :etag, as: 'etag'
        property :id, as: 'id'
        property :invideo_promotion, as: 'invideoPromotion', class: Google::Apis::YoutubeV3::InvideoPromotion, decorator: Google::Apis::YoutubeV3::InvideoPromotionRepresentation
        
        property :kind, as: 'kind'
        hash :localizations, as: 'localizations', class: Google::Apis::YoutubeV3::ChannelLocalization, decorator: Google::Apis::YoutubeV3::ChannelLocalizationRepresentation
        
        
        property :snippet, as: 'snippet', class: Google::Apis::YoutubeV3::ChannelSnippet, decorator: Google::Apis::YoutubeV3::ChannelSnippetRepresentation
        
        property :statistics, as: 'statistics', class: Google::Apis::YoutubeV3::ChannelStatistics, decorator: Google::Apis::YoutubeV3::ChannelStatisticsRepresentation
        
        property :status, as: 'status', class: Google::Apis::YoutubeV3::ChannelStatus, decorator: Google::Apis::YoutubeV3::ChannelStatusRepresentation
        
        property :topic_details, as: 'topicDetails', class: Google::Apis::YoutubeV3::ChannelTopicDetails, decorator: Google::Apis::YoutubeV3::ChannelTopicDetailsRepresentation
      end

      # @private
      class ChannelAuditDetailsRepresentation < Google::Apis::Core::JsonRepresentation
        property :community_guidelines_good_standing, as: 'communityGuidelinesGoodStanding'
        property :content_id_claims_good_standing, as: 'contentIdClaimsGoodStanding'
        property :copyright_strikes_good_standing, as: 'copyrightStrikesGoodStanding'
        property :overall_good_standing, as: 'overallGoodStanding'
      end

      # @private
      class ChannelBannerResourceRepresentation < Google::Apis::Core::JsonRepresentation
        property :etag, as: 'etag'
        property :kind, as: 'kind'
        property :url, as: 'url'
      end

      # @private
      class ChannelBrandingSettingsRepresentation < Google::Apis::Core::JsonRepresentation
        property :channel, as: 'channel', class: Google::Apis::YoutubeV3::ChannelSettings, decorator: Google::Apis::YoutubeV3::ChannelSettingsRepresentation
        
        collection :hints, as: 'hints', class: Google::Apis::YoutubeV3::PropertyValue, decorator: Google::Apis::YoutubeV3::PropertyValueRepresentation
        
        
        property :image, as: 'image', class: Google::Apis::YoutubeV3::ImageSettings, decorator: Google::Apis::YoutubeV3::ImageSettingsRepresentation
        
        property :watch, as: 'watch', class: Google::Apis::YoutubeV3::WatchSettings, decorator: Google::Apis::YoutubeV3::WatchSettingsRepresentation
      end

      # @private
      class ChannelContentDetailsRepresentation < Google::Apis::Core::JsonRepresentation
        class RelatedPlaylistsRepresentation < Google::Apis::Core::JsonRepresentation; end
        property :google_plus_user_id, as: 'googlePlusUserId'
        property :related_playlists, as: 'relatedPlaylists', class: Google::Apis::YoutubeV3::ChannelContentDetails::RelatedPlaylists, decorator: Google::Apis::YoutubeV3::ChannelContentDetailsRepresentation::RelatedPlaylistsRepresentation
        
        
        # @private
        class RelatedPlaylistsRepresentation < Google::Apis::Core::JsonRepresentation
          property :favorites, as: 'favorites'
          property :likes, as: 'likes'
          property :uploads, as: 'uploads'
          property :watch_history, as: 'watchHistory'
          property :watch_later, as: 'watchLater'
        end
      end

      # @private
      class ChannelContentOwnerDetailsRepresentation < Google::Apis::Core::JsonRepresentation
        property :content_owner, as: 'contentOwner'
        property :time_linked, as: 'timeLinked', type: DateTime
      end

      # @private
      class ChannelConversionPingRepresentation < Google::Apis::Core::JsonRepresentation
        property :context, as: 'context'
        property :conversion_url, as: 'conversionUrl'
      end

      # @private
      class ChannelConversionPingsRepresentation < Google::Apis::Core::JsonRepresentation
        collection :pings, as: 'pings', class: Google::Apis::YoutubeV3::ChannelConversionPing, decorator: Google::Apis::YoutubeV3::ChannelConversionPingRepresentation
      end

      # @private
      class ChannelIdRepresentation < Google::Apis::Core::JsonRepresentation
        property :value, as: 'value'
      end

      # @private
      class ChannelListResponseRepresentation < Google::Apis::Core::JsonRepresentation
        property :etag, as: 'etag'
        property :event_id, as: 'eventId'
        collection :items, as: 'items', class: Google::Apis::YoutubeV3::Channel, decorator: Google::Apis::YoutubeV3::ChannelRepresentation
        
        
        property :kind, as: 'kind'
        property :next_page_token, as: 'nextPageToken'
        property :page_info, as: 'pageInfo', class: Google::Apis::YoutubeV3::PageInfo, decorator: Google::Apis::YoutubeV3::PageInfoRepresentation
        
        property :prev_page_token, as: 'prevPageToken'
        property :token_pagination, as: 'tokenPagination', class: Google::Apis::YoutubeV3::TokenPagination, decorator: Google::Apis::YoutubeV3::TokenPaginationRepresentation
        
        property :visitor_id, as: 'visitorId'
      end

      # @private
      class ChannelLocalizationRepresentation < Google::Apis::Core::JsonRepresentation
        property :description, as: 'description'
        property :title, as: 'title'
      end

      # @private
      class ChannelSectionRepresentation < Google::Apis::Core::JsonRepresentation
        property :content_details, as: 'contentDetails', class: Google::Apis::YoutubeV3::ChannelSectionContentDetails, decorator: Google::Apis::YoutubeV3::ChannelSectionContentDetailsRepresentation
        
        property :etag, as: 'etag'
        property :id, as: 'id'
        property :kind, as: 'kind'
        hash :localizations, as: 'localizations', class: Google::Apis::YoutubeV3::ChannelSectionLocalization, decorator: Google::Apis::YoutubeV3::ChannelSectionLocalizationRepresentation
        
        
        property :snippet, as: 'snippet', class: Google::Apis::YoutubeV3::ChannelSectionSnippet, decorator: Google::Apis::YoutubeV3::ChannelSectionSnippetRepresentation
        
        property :targeting, as: 'targeting', class: Google::Apis::YoutubeV3::ChannelSectionTargeting, decorator: Google::Apis::YoutubeV3::ChannelSectionTargetingRepresentation
      end

      # @private
      class ChannelSectionContentDetailsRepresentation < Google::Apis::Core::JsonRepresentation
        collection :channels, as: 'channels'
        
        collection :playlists, as: 'playlists'
      end

      # @private
      class ChannelSectionListResponseRepresentation < Google::Apis::Core::JsonRepresentation
        property :etag, as: 'etag'
        property :event_id, as: 'eventId'
        collection :items, as: 'items', class: Google::Apis::YoutubeV3::ChannelSection, decorator: Google::Apis::YoutubeV3::ChannelSectionRepresentation
        
        
        property :kind, as: 'kind'
        property :visitor_id, as: 'visitorId'
      end

      # @private
      class ChannelSectionLocalizationRepresentation < Google::Apis::Core::JsonRepresentation
        property :title, as: 'title'
      end

      # @private
      class ChannelSectionSnippetRepresentation < Google::Apis::Core::JsonRepresentation
        property :channel_id, as: 'channelId'
        property :default_language, as: 'defaultLanguage'
        property :localized, as: 'localized', class: Google::Apis::YoutubeV3::ChannelSectionLocalization, decorator: Google::Apis::YoutubeV3::ChannelSectionLocalizationRepresentation
        
        property :position, as: 'position'
        property :style, as: 'style'
        property :title, as: 'title'
        property :type, as: 'type'
      end

      # @private
      class ChannelSectionTargetingRepresentation < Google::Apis::Core::JsonRepresentation
        collection :countries, as: 'countries'
        
        collection :languages, as: 'languages'
        
        collection :regions, as: 'regions'
      end

      # @private
      class ChannelSettingsRepresentation < Google::Apis::Core::JsonRepresentation
        property :country, as: 'country'
        property :default_language, as: 'defaultLanguage'
        property :default_tab, as: 'defaultTab'
        property :description, as: 'description'
        property :featured_channels_title, as: 'featuredChannelsTitle'
        collection :featured_channels_urls, as: 'featuredChannelsUrls'
        
        property :keywords, as: 'keywords'
        property :moderate_comments, as: 'moderateComments'
        property :profile_color, as: 'profileColor'
        property :show_browse_view, as: 'showBrowseView'
        property :show_related_channels, as: 'showRelatedChannels'
        property :title, as: 'title'
        property :tracking_analytics_account_id, as: 'trackingAnalyticsAccountId'
        property :unsubscribed_trailer, as: 'unsubscribedTrailer'
      end

      # @private
      class ChannelSnippetRepresentation < Google::Apis::Core::JsonRepresentation
        property :country, as: 'country'
        property :default_language, as: 'defaultLanguage'
        property :description, as: 'description'
        property :localized, as: 'localized', class: Google::Apis::YoutubeV3::ChannelLocalization, decorator: Google::Apis::YoutubeV3::ChannelLocalizationRepresentation
        
        property :published_at, as: 'publishedAt', type: DateTime
        property :thumbnails, as: 'thumbnails', class: Google::Apis::YoutubeV3::ThumbnailDetails, decorator: Google::Apis::YoutubeV3::ThumbnailDetailsRepresentation
        
        property :title, as: 'title'
      end

      # @private
      class ChannelStatisticsRepresentation < Google::Apis::Core::JsonRepresentation
        property :comment_count, as: 'commentCount'
        property :hidden_subscriber_count, as: 'hiddenSubscriberCount'
        property :subscriber_count, as: 'subscriberCount'
        property :video_count, as: 'videoCount'
        property :view_count, as: 'viewCount'
      end

      # @private
      class ChannelStatusRepresentation < Google::Apis::Core::JsonRepresentation
        property :is_linked, as: 'isLinked'
        property :long_uploads_status, as: 'longUploadsStatus'
        property :privacy_status, as: 'privacyStatus'
      end

      # @private
      class ChannelTopicDetailsRepresentation < Google::Apis::Core::JsonRepresentation
        collection :topic_ids, as: 'topicIds'
      end

      # @private
      class CommentRepresentation < Google::Apis::Core::JsonRepresentation
        property :etag, as: 'etag'
        property :id, as: 'id'
        property :kind, as: 'kind'
        property :snippet, as: 'snippet', class: Google::Apis::YoutubeV3::CommentSnippet, decorator: Google::Apis::YoutubeV3::CommentSnippetRepresentation
      end

      # @private
      class CommentListResponseRepresentation < Google::Apis::Core::JsonRepresentation
        property :etag, as: 'etag'
        property :event_id, as: 'eventId'
        collection :items, as: 'items', class: Google::Apis::YoutubeV3::Comment, decorator: Google::Apis::YoutubeV3::CommentRepresentation
        
        
        property :kind, as: 'kind'
        property :next_page_token, as: 'nextPageToken'
        property :page_info, as: 'pageInfo', class: Google::Apis::YoutubeV3::PageInfo, decorator: Google::Apis::YoutubeV3::PageInfoRepresentation
        
        property :token_pagination, as: 'tokenPagination', class: Google::Apis::YoutubeV3::TokenPagination, decorator: Google::Apis::YoutubeV3::TokenPaginationRepresentation
        
        property :visitor_id, as: 'visitorId'
      end

      # @private
      class CommentSnippetRepresentation < Google::Apis::Core::JsonRepresentation
        property :author_channel_id, as: 'authorChannelId', class: Google::Apis::YoutubeV3::ChannelId, decorator: Google::Apis::YoutubeV3::ChannelIdRepresentation
        
        property :author_channel_url, as: 'authorChannelUrl'
        property :author_display_name, as: 'authorDisplayName'
        property :author_googleplus_profile_url, as: 'authorGoogleplusProfileUrl'
        property :author_profile_image_url, as: 'authorProfileImageUrl'
        property :can_rate, as: 'canRate'
        property :channel_id, as: 'channelId'
        property :like_count, as: 'likeCount'
        property :moderation_status, as: 'moderationStatus'
        property :parent_id, as: 'parentId'
        property :published_at, as: 'publishedAt', type: DateTime
        property :text_display, as: 'textDisplay'
        property :text_original, as: 'textOriginal'
        property :updated_at, as: 'updatedAt', type: DateTime
        property :video_id, as: 'videoId'
        property :viewer_rating, as: 'viewerRating'
      end

      # @private
      class CommentThreadRepresentation < Google::Apis::Core::JsonRepresentation
        property :etag, as: 'etag'
        property :id, as: 'id'
        property :kind, as: 'kind'
        property :replies, as: 'replies', class: Google::Apis::YoutubeV3::CommentThreadReplies, decorator: Google::Apis::YoutubeV3::CommentThreadRepliesRepresentation
        
        property :snippet, as: 'snippet', class: Google::Apis::YoutubeV3::CommentThreadSnippet, decorator: Google::Apis::YoutubeV3::CommentThreadSnippetRepresentation
      end

      # @private
      class CommentThreadListResponseRepresentation < Google::Apis::Core::JsonRepresentation
        property :etag, as: 'etag'
        property :event_id, as: 'eventId'
        collection :items, as: 'items', class: Google::Apis::YoutubeV3::CommentThread, decorator: Google::Apis::YoutubeV3::CommentThreadRepresentation
        
        
        property :kind, as: 'kind'
        property :next_page_token, as: 'nextPageToken'
        property :page_info, as: 'pageInfo', class: Google::Apis::YoutubeV3::PageInfo, decorator: Google::Apis::YoutubeV3::PageInfoRepresentation
        
        property :token_pagination, as: 'tokenPagination', class: Google::Apis::YoutubeV3::TokenPagination, decorator: Google::Apis::YoutubeV3::TokenPaginationRepresentation
        
        property :visitor_id, as: 'visitorId'
      end

      # @private
      class CommentThreadRepliesRepresentation < Google::Apis::Core::JsonRepresentation
        collection :comments, as: 'comments', class: Google::Apis::YoutubeV3::Comment, decorator: Google::Apis::YoutubeV3::CommentRepresentation
      end

      # @private
      class CommentThreadSnippetRepresentation < Google::Apis::Core::JsonRepresentation
        property :can_reply, as: 'canReply'
        property :channel_id, as: 'channelId'
        property :is_public, as: 'isPublic'
        property :top_level_comment, as: 'topLevelComment', class: Google::Apis::YoutubeV3::Comment, decorator: Google::Apis::YoutubeV3::CommentRepresentation
        
        property :total_reply_count, as: 'totalReplyCount'
        property :video_id, as: 'videoId'
      end

      # @private
      class ContentRatingRepresentation < Google::Apis::Core::JsonRepresentation
        property :acb_rating, as: 'acbRating'
        property :agcom_rating, as: 'agcomRating'
        property :anatel_rating, as: 'anatelRating'
        property :bbfc_rating, as: 'bbfcRating'
        property :bfvc_rating, as: 'bfvcRating'
        property :bmukk_rating, as: 'bmukkRating'
        property :catv_rating, as: 'catvRating'
        property :catvfr_rating, as: 'catvfrRating'
        property :cbfc_rating, as: 'cbfcRating'
        property :ccc_rating, as: 'cccRating'
        property :cce_rating, as: 'cceRating'
        property :chfilm_rating, as: 'chfilmRating'
        property :chvrs_rating, as: 'chvrsRating'
        property :cicf_rating, as: 'cicfRating'
        property :cna_rating, as: 'cnaRating'
        property :csa_rating, as: 'csaRating'
        property :cscf_rating, as: 'cscfRating'
        property :czfilm_rating, as: 'czfilmRating'
        property :djctq_rating, as: 'djctqRating'
        collection :djctq_rating_reasons, as: 'djctqRatingReasons'
        
        property :eefilm_rating, as: 'eefilmRating'
        property :egfilm_rating, as: 'egfilmRating'
        property :eirin_rating, as: 'eirinRating'
        property :fcbm_rating, as: 'fcbmRating'
        property :fco_rating, as: 'fcoRating'
        property :fmoc_rating, as: 'fmocRating'
        property :fpb_rating, as: 'fpbRating'
        property :fsk_rating, as: 'fskRating'
        property :grfilm_rating, as: 'grfilmRating'
        property :icaa_rating, as: 'icaaRating'
        property :ifco_rating, as: 'ifcoRating'
        property :ilfilm_rating, as: 'ilfilmRating'
        property :incaa_rating, as: 'incaaRating'
        property :kfcb_rating, as: 'kfcbRating'
        property :kijkwijzer_rating, as: 'kijkwijzerRating'
        property :kmrb_rating, as: 'kmrbRating'
        property :lsf_rating, as: 'lsfRating'
        property :mccaa_rating, as: 'mccaaRating'
        property :mccyp_rating, as: 'mccypRating'
        property :mda_rating, as: 'mdaRating'
        property :medietilsynet_rating, as: 'medietilsynetRating'
        property :meku_rating, as: 'mekuRating'
        property :mibac_rating, as: 'mibacRating'
        property :moc_rating, as: 'mocRating'
        property :moctw_rating, as: 'moctwRating'
        property :mpaa_rating, as: 'mpaaRating'
        property :mtrcb_rating, as: 'mtrcbRating'
        property :nbc_rating, as: 'nbcRating'
        property :nbcpl_rating, as: 'nbcplRating'
        property :nfrc_rating, as: 'nfrcRating'
        property :nfvcb_rating, as: 'nfvcbRating'
        property :nkclv_rating, as: 'nkclvRating'
        property :oflc_rating, as: 'oflcRating'
        property :pefilm_rating, as: 'pefilmRating'
        property :rcnof_rating, as: 'rcnofRating'
        property :resorteviolencia_rating, as: 'resorteviolenciaRating'
        property :rtc_rating, as: 'rtcRating'
        property :rte_rating, as: 'rteRating'
        property :russia_rating, as: 'russiaRating'
        property :skfilm_rating, as: 'skfilmRating'
        property :smais_rating, as: 'smaisRating'
        property :smsa_rating, as: 'smsaRating'
        property :tvpg_rating, as: 'tvpgRating'
        property :yt_rating, as: 'ytRating'
      end

      # @private
      class GeoPointRepresentation < Google::Apis::Core::JsonRepresentation
        property :altitude, as: 'altitude'
        property :latitude, as: 'latitude'
        property :longitude, as: 'longitude'
      end

      # @private
      class GuideCategoryRepresentation < Google::Apis::Core::JsonRepresentation
        property :etag, as: 'etag'
        property :id, as: 'id'
        property :kind, as: 'kind'
        property :snippet, as: 'snippet', class: Google::Apis::YoutubeV3::GuideCategorySnippet, decorator: Google::Apis::YoutubeV3::GuideCategorySnippetRepresentation
      end

      # @private
      class GuideCategoryListResponseRepresentation < Google::Apis::Core::JsonRepresentation
        property :etag, as: 'etag'
        property :event_id, as: 'eventId'
        collection :items, as: 'items', class: Google::Apis::YoutubeV3::GuideCategory, decorator: Google::Apis::YoutubeV3::GuideCategoryRepresentation
        
        
        property :kind, as: 'kind'
        property :next_page_token, as: 'nextPageToken'
        property :page_info, as: 'pageInfo', class: Google::Apis::YoutubeV3::PageInfo, decorator: Google::Apis::YoutubeV3::PageInfoRepresentation
        
        property :prev_page_token, as: 'prevPageToken'
        property :token_pagination, as: 'tokenPagination', class: Google::Apis::YoutubeV3::TokenPagination, decorator: Google::Apis::YoutubeV3::TokenPaginationRepresentation
        
        property :visitor_id, as: 'visitorId'
      end

      # @private
      class GuideCategorySnippetRepresentation < Google::Apis::Core::JsonRepresentation
        property :channel_id, as: 'channelId'
        property :title, as: 'title'
      end

      # @private
      class I18nLanguageRepresentation < Google::Apis::Core::JsonRepresentation
        property :etag, as: 'etag'
        property :id, as: 'id'
        property :kind, as: 'kind'
        property :snippet, as: 'snippet', class: Google::Apis::YoutubeV3::I18nLanguageSnippet, decorator: Google::Apis::YoutubeV3::I18nLanguageSnippetRepresentation
      end

      # @private
      class I18nLanguageListResponseRepresentation < Google::Apis::Core::JsonRepresentation
        property :etag, as: 'etag'
        property :event_id, as: 'eventId'
        collection :items, as: 'items', class: Google::Apis::YoutubeV3::I18nLanguage, decorator: Google::Apis::YoutubeV3::I18nLanguageRepresentation
        
        
        property :kind, as: 'kind'
        property :visitor_id, as: 'visitorId'
      end

      # @private
      class I18nLanguageSnippetRepresentation < Google::Apis::Core::JsonRepresentation
        property :hl, as: 'hl'
        property :name, as: 'name'
      end

      # @private
      class I18nRegionRepresentation < Google::Apis::Core::JsonRepresentation
        property :etag, as: 'etag'
        property :id, as: 'id'
        property :kind, as: 'kind'
        property :snippet, as: 'snippet', class: Google::Apis::YoutubeV3::I18nRegionSnippet, decorator: Google::Apis::YoutubeV3::I18nRegionSnippetRepresentation
      end

      # @private
      class I18nRegionListResponseRepresentation < Google::Apis::Core::JsonRepresentation
        property :etag, as: 'etag'
        property :event_id, as: 'eventId'
        collection :items, as: 'items', class: Google::Apis::YoutubeV3::I18nRegion, decorator: Google::Apis::YoutubeV3::I18nRegionRepresentation
        
        
        property :kind, as: 'kind'
        property :visitor_id, as: 'visitorId'
      end

      # @private
      class I18nRegionSnippetRepresentation < Google::Apis::Core::JsonRepresentation
        property :gl, as: 'gl'
        property :name, as: 'name'
      end

      # @private
      class ImageSettingsRepresentation < Google::Apis::Core::JsonRepresentation
        property :background_image_url, as: 'backgroundImageUrl', class: Google::Apis::YoutubeV3::LocalizedProperty, decorator: Google::Apis::YoutubeV3::LocalizedPropertyRepresentation
        
        property :banner_external_url, as: 'bannerExternalUrl'
        property :banner_image_url, as: 'bannerImageUrl'
        property :banner_mobile_extra_hd_image_url, as: 'bannerMobileExtraHdImageUrl'
        property :banner_mobile_hd_image_url, as: 'bannerMobileHdImageUrl'
        property :banner_mobile_image_url, as: 'bannerMobileImageUrl'
        property :banner_mobile_low_image_url, as: 'bannerMobileLowImageUrl'
        property :banner_mobile_medium_hd_image_url, as: 'bannerMobileMediumHdImageUrl'
        property :banner_tablet_extra_hd_image_url, as: 'bannerTabletExtraHdImageUrl'
        property :banner_tablet_hd_image_url, as: 'bannerTabletHdImageUrl'
        property :banner_tablet_image_url, as: 'bannerTabletImageUrl'
        property :banner_tablet_low_image_url, as: 'bannerTabletLowImageUrl'
        property :banner_tv_high_image_url, as: 'bannerTvHighImageUrl'
        property :banner_tv_image_url, as: 'bannerTvImageUrl'
        property :banner_tv_low_image_url, as: 'bannerTvLowImageUrl'
        property :banner_tv_medium_image_url, as: 'bannerTvMediumImageUrl'
        property :large_branded_banner_image_imap_script, as: 'largeBrandedBannerImageImapScript', class: Google::Apis::YoutubeV3::LocalizedProperty, decorator: Google::Apis::YoutubeV3::LocalizedPropertyRepresentation
        
        property :large_branded_banner_image_url, as: 'largeBrandedBannerImageUrl', class: Google::Apis::YoutubeV3::LocalizedProperty, decorator: Google::Apis::YoutubeV3::LocalizedPropertyRepresentation
        
        property :small_branded_banner_image_imap_script, as: 'smallBrandedBannerImageImapScript', class: Google::Apis::YoutubeV3::LocalizedProperty, decorator: Google::Apis::YoutubeV3::LocalizedPropertyRepresentation
        
        property :small_branded_banner_image_url, as: 'smallBrandedBannerImageUrl', class: Google::Apis::YoutubeV3::LocalizedProperty, decorator: Google::Apis::YoutubeV3::LocalizedPropertyRepresentation
        
        property :tracking_image_url, as: 'trackingImageUrl'
        property :watch_icon_image_url, as: 'watchIconImageUrl'
      end

      # @private
      class IngestionInfoRepresentation < Google::Apis::Core::JsonRepresentation
        property :backup_ingestion_address, as: 'backupIngestionAddress'
        property :ingestion_address, as: 'ingestionAddress'
        property :stream_name, as: 'streamName'
      end

      # @private
      class InvideoBrandingRepresentation < Google::Apis::Core::JsonRepresentation
        property :image_bytes, as: 'imageBytes'
        property :image_url, as: 'imageUrl'
        property :position, as: 'position', class: Google::Apis::YoutubeV3::InvideoPosition, decorator: Google::Apis::YoutubeV3::InvideoPositionRepresentation
        
        property :target_channel_id, as: 'targetChannelId'
        property :timing, as: 'timing', class: Google::Apis::YoutubeV3::InvideoTiming, decorator: Google::Apis::YoutubeV3::InvideoTimingRepresentation
      end

      # @private
      class InvideoPositionRepresentation < Google::Apis::Core::JsonRepresentation
        property :corner_position, as: 'cornerPosition'
        property :type, as: 'type'
      end

      # @private
      class InvideoPromotionRepresentation < Google::Apis::Core::JsonRepresentation
        property :default_timing, as: 'defaultTiming', class: Google::Apis::YoutubeV3::InvideoTiming, decorator: Google::Apis::YoutubeV3::InvideoTimingRepresentation
        
        collection :items, as: 'items', class: Google::Apis::YoutubeV3::PromotedItem, decorator: Google::Apis::YoutubeV3::PromotedItemRepresentation
        
        
        property :position, as: 'position', class: Google::Apis::YoutubeV3::InvideoPosition, decorator: Google::Apis::YoutubeV3::InvideoPositionRepresentation
        
        property :use_smart_timing, as: 'useSmartTiming'
      end

      # @private
      class InvideoTimingRepresentation < Google::Apis::Core::JsonRepresentation
        property :duration_ms, as: 'durationMs'
        property :offset_ms, as: 'offsetMs'
        property :type, as: 'type'
      end

      # @private
      class LanguageTagRepresentation < Google::Apis::Core::JsonRepresentation
        property :value, as: 'value'
      end

      # @private
      class LiveBroadcastRepresentation < Google::Apis::Core::JsonRepresentation
        property :content_details, as: 'contentDetails', class: Google::Apis::YoutubeV3::LiveBroadcastContentDetails, decorator: Google::Apis::YoutubeV3::LiveBroadcastContentDetailsRepresentation
        
        property :etag, as: 'etag'
        property :id, as: 'id'
        property :kind, as: 'kind'
        property :snippet, as: 'snippet', class: Google::Apis::YoutubeV3::LiveBroadcastSnippet, decorator: Google::Apis::YoutubeV3::LiveBroadcastSnippetRepresentation
        
        property :status, as: 'status', class: Google::Apis::YoutubeV3::LiveBroadcastStatus, decorator: Google::Apis::YoutubeV3::LiveBroadcastStatusRepresentation
      end

      # @private
      class LiveBroadcastContentDetailsRepresentation < Google::Apis::Core::JsonRepresentation
        property :bound_stream_id, as: 'boundStreamId'
        property :enable_closed_captions, as: 'enableClosedCaptions'
        property :enable_content_encryption, as: 'enableContentEncryption'
        property :enable_dvr, as: 'enableDvr'
        property :enable_embed, as: 'enableEmbed'
        property :monitor_stream, as: 'monitorStream', class: Google::Apis::YoutubeV3::MonitorStreamInfo, decorator: Google::Apis::YoutubeV3::MonitorStreamInfoRepresentation
        
        property :record_from_start, as: 'recordFromStart'
        property :start_with_slate, as: 'startWithSlate'
      end

      # @private
      class LiveBroadcastListResponseRepresentation < Google::Apis::Core::JsonRepresentation
        property :etag, as: 'etag'
        property :event_id, as: 'eventId'
        collection :items, as: 'items', class: Google::Apis::YoutubeV3::LiveBroadcast, decorator: Google::Apis::YoutubeV3::LiveBroadcastRepresentation
        
        
        property :kind, as: 'kind'
        property :next_page_token, as: 'nextPageToken'
        property :page_info, as: 'pageInfo', class: Google::Apis::YoutubeV3::PageInfo, decorator: Google::Apis::YoutubeV3::PageInfoRepresentation
        
        property :prev_page_token, as: 'prevPageToken'
        property :token_pagination, as: 'tokenPagination', class: Google::Apis::YoutubeV3::TokenPagination, decorator: Google::Apis::YoutubeV3::TokenPaginationRepresentation
        
        property :visitor_id, as: 'visitorId'
      end

      # @private
      class LiveBroadcastSnippetRepresentation < Google::Apis::Core::JsonRepresentation
        property :actual_end_time, as: 'actualEndTime', type: DateTime
        property :actual_start_time, as: 'actualStartTime', type: DateTime
        property :channel_id, as: 'channelId'
        property :description, as: 'description'
        property :published_at, as: 'publishedAt', type: DateTime
        property :scheduled_end_time, as: 'scheduledEndTime', type: DateTime
        property :scheduled_start_time, as: 'scheduledStartTime', type: DateTime
        property :thumbnails, as: 'thumbnails', class: Google::Apis::YoutubeV3::ThumbnailDetails, decorator: Google::Apis::YoutubeV3::ThumbnailDetailsRepresentation
        
        property :title, as: 'title'
      end

      # @private
      class LiveBroadcastStatusRepresentation < Google::Apis::Core::JsonRepresentation
        property :is_default_broadcast, as: 'isDefaultBroadcast'
        property :life_cycle_status, as: 'lifeCycleStatus'
        property :live_broadcast_priority, as: 'liveBroadcastPriority'
        property :privacy_status, as: 'privacyStatus'
        property :recording_status, as: 'recordingStatus'
      end

      # @private
      class LiveStreamRepresentation < Google::Apis::Core::JsonRepresentation
        property :cdn, as: 'cdn', class: Google::Apis::YoutubeV3::CdnSettings, decorator: Google::Apis::YoutubeV3::CdnSettingsRepresentation
        
        property :content_details, as: 'contentDetails', class: Google::Apis::YoutubeV3::LiveStreamContentDetails, decorator: Google::Apis::YoutubeV3::LiveStreamContentDetailsRepresentation
        
        property :etag, as: 'etag'
        property :id, as: 'id'
        property :kind, as: 'kind'
        property :snippet, as: 'snippet', class: Google::Apis::YoutubeV3::LiveStreamSnippet, decorator: Google::Apis::YoutubeV3::LiveStreamSnippetRepresentation
        
        property :status, as: 'status', class: Google::Apis::YoutubeV3::LiveStreamStatus, decorator: Google::Apis::YoutubeV3::LiveStreamStatusRepresentation
      end

      # @private
      class LiveStreamContentDetailsRepresentation < Google::Apis::Core::JsonRepresentation
        property :closed_captions_ingestion_url, as: 'closedCaptionsIngestionUrl'
        property :is_reusable, as: 'isReusable'
      end

      # @private
      class LiveStreamListResponseRepresentation < Google::Apis::Core::JsonRepresentation
        property :etag, as: 'etag'
        property :event_id, as: 'eventId'
        collection :items, as: 'items', class: Google::Apis::YoutubeV3::LiveStream, decorator: Google::Apis::YoutubeV3::LiveStreamRepresentation
        
        
        property :kind, as: 'kind'
        property :next_page_token, as: 'nextPageToken'
        property :page_info, as: 'pageInfo', class: Google::Apis::YoutubeV3::PageInfo, decorator: Google::Apis::YoutubeV3::PageInfoRepresentation
        
        property :prev_page_token, as: 'prevPageToken'
        property :token_pagination, as: 'tokenPagination', class: Google::Apis::YoutubeV3::TokenPagination, decorator: Google::Apis::YoutubeV3::TokenPaginationRepresentation
        
        property :visitor_id, as: 'visitorId'
      end

      # @private
      class LiveStreamSnippetRepresentation < Google::Apis::Core::JsonRepresentation
        property :channel_id, as: 'channelId'
        property :description, as: 'description'
        property :published_at, as: 'publishedAt', type: DateTime
        property :title, as: 'title'
      end

      # @private
      class LiveStreamStatusRepresentation < Google::Apis::Core::JsonRepresentation
        property :is_default_stream, as: 'isDefaultStream'
        property :stream_status, as: 'streamStatus'
      end

      # @private
      class LocalizedPropertyRepresentation < Google::Apis::Core::JsonRepresentation
        property :default, as: 'default'
        property :default_language, as: 'defaultLanguage', class: Google::Apis::YoutubeV3::LanguageTag, decorator: Google::Apis::YoutubeV3::LanguageTagRepresentation
        
        collection :localized, as: 'localized', class: Google::Apis::YoutubeV3::LocalizedString, decorator: Google::Apis::YoutubeV3::LocalizedStringRepresentation
      end

      # @private
      class LocalizedStringRepresentation < Google::Apis::Core::JsonRepresentation
        property :language, as: 'language'
        property :value, as: 'value'
      end

      # @private
      class MonitorStreamInfoRepresentation < Google::Apis::Core::JsonRepresentation
        property :broadcast_stream_delay_ms, as: 'broadcastStreamDelayMs'
        property :embed_html, as: 'embedHtml'
        property :enable_monitor_stream, as: 'enableMonitorStream'
      end

      # @private
      class PageInfoRepresentation < Google::Apis::Core::JsonRepresentation
        property :results_per_page, as: 'resultsPerPage'
        property :total_results, as: 'totalResults'
      end

      # @private
      class PlaylistRepresentation < Google::Apis::Core::JsonRepresentation
        property :content_details, as: 'contentDetails', class: Google::Apis::YoutubeV3::PlaylistContentDetails, decorator: Google::Apis::YoutubeV3::PlaylistContentDetailsRepresentation
        
        property :etag, as: 'etag'
        property :id, as: 'id'
        property :kind, as: 'kind'
        hash :localizations, as: 'localizations', class: Google::Apis::YoutubeV3::PlaylistLocalization, decorator: Google::Apis::YoutubeV3::PlaylistLocalizationRepresentation
        
        
        property :player, as: 'player', class: Google::Apis::YoutubeV3::PlaylistPlayer, decorator: Google::Apis::YoutubeV3::PlaylistPlayerRepresentation
        
        property :snippet, as: 'snippet', class: Google::Apis::YoutubeV3::PlaylistSnippet, decorator: Google::Apis::YoutubeV3::PlaylistSnippetRepresentation
        
        property :status, as: 'status', class: Google::Apis::YoutubeV3::PlaylistStatus, decorator: Google::Apis::YoutubeV3::PlaylistStatusRepresentation
      end

      # @private
      class PlaylistContentDetailsRepresentation < Google::Apis::Core::JsonRepresentation
        property :item_count, as: 'itemCount'
      end

      # @private
      class PlaylistItemRepresentation < Google::Apis::Core::JsonRepresentation
        property :content_details, as: 'contentDetails', class: Google::Apis::YoutubeV3::PlaylistItemContentDetails, decorator: Google::Apis::YoutubeV3::PlaylistItemContentDetailsRepresentation
        
        property :etag, as: 'etag'
        property :id, as: 'id'
        property :kind, as: 'kind'
        property :snippet, as: 'snippet', class: Google::Apis::YoutubeV3::PlaylistItemSnippet, decorator: Google::Apis::YoutubeV3::PlaylistItemSnippetRepresentation
        
        property :status, as: 'status', class: Google::Apis::YoutubeV3::PlaylistItemStatus, decorator: Google::Apis::YoutubeV3::PlaylistItemStatusRepresentation
      end

      # @private
      class PlaylistItemContentDetailsRepresentation < Google::Apis::Core::JsonRepresentation
        property :end_at, as: 'endAt'
        property :note, as: 'note'
        property :start_at, as: 'startAt'
        property :video_id, as: 'videoId'
      end

      # @private
      class PlaylistItemListResponseRepresentation < Google::Apis::Core::JsonRepresentation
        property :etag, as: 'etag'
        property :event_id, as: 'eventId'
        collection :items, as: 'items', class: Google::Apis::YoutubeV3::PlaylistItem, decorator: Google::Apis::YoutubeV3::PlaylistItemRepresentation
        
        
        property :kind, as: 'kind'
        property :next_page_token, as: 'nextPageToken'
        property :page_info, as: 'pageInfo', class: Google::Apis::YoutubeV3::PageInfo, decorator: Google::Apis::YoutubeV3::PageInfoRepresentation
        
        property :prev_page_token, as: 'prevPageToken'
        property :token_pagination, as: 'tokenPagination', class: Google::Apis::YoutubeV3::TokenPagination, decorator: Google::Apis::YoutubeV3::TokenPaginationRepresentation
        
        property :visitor_id, as: 'visitorId'
      end

      # @private
      class PlaylistItemSnippetRepresentation < Google::Apis::Core::JsonRepresentation
        property :channel_id, as: 'channelId'
        property :channel_title, as: 'channelTitle'
        property :description, as: 'description'
        property :playlist_id, as: 'playlistId'
        property :position, as: 'position'
        property :published_at, as: 'publishedAt', type: DateTime
        property :resource_id, as: 'resourceId', class: Google::Apis::YoutubeV3::ResourceId, decorator: Google::Apis::YoutubeV3::ResourceIdRepresentation
        
        property :thumbnails, as: 'thumbnails', class: Google::Apis::YoutubeV3::ThumbnailDetails, decorator: Google::Apis::YoutubeV3::ThumbnailDetailsRepresentation
        
        property :title, as: 'title'
      end

      # @private
      class PlaylistItemStatusRepresentation < Google::Apis::Core::JsonRepresentation
        property :privacy_status, as: 'privacyStatus'
      end

      # @private
      class PlaylistListResponseRepresentation < Google::Apis::Core::JsonRepresentation
        property :etag, as: 'etag'
        property :event_id, as: 'eventId'
        collection :items, as: 'items', class: Google::Apis::YoutubeV3::Playlist, decorator: Google::Apis::YoutubeV3::PlaylistRepresentation
        
        
        property :kind, as: 'kind'
        property :next_page_token, as: 'nextPageToken'
        property :page_info, as: 'pageInfo', class: Google::Apis::YoutubeV3::PageInfo, decorator: Google::Apis::YoutubeV3::PageInfoRepresentation
        
        property :prev_page_token, as: 'prevPageToken'
        property :token_pagination, as: 'tokenPagination', class: Google::Apis::YoutubeV3::TokenPagination, decorator: Google::Apis::YoutubeV3::TokenPaginationRepresentation
        
        property :visitor_id, as: 'visitorId'
      end

      # @private
      class PlaylistLocalizationRepresentation < Google::Apis::Core::JsonRepresentation
        property :description, as: 'description'
        property :title, as: 'title'
      end

      # @private
      class PlaylistPlayerRepresentation < Google::Apis::Core::JsonRepresentation
        property :embed_html, as: 'embedHtml'
      end

      # @private
      class PlaylistSnippetRepresentation < Google::Apis::Core::JsonRepresentation
        property :channel_id, as: 'channelId'
        property :channel_title, as: 'channelTitle'
        property :default_language, as: 'defaultLanguage'
        property :description, as: 'description'
        property :localized, as: 'localized', class: Google::Apis::YoutubeV3::PlaylistLocalization, decorator: Google::Apis::YoutubeV3::PlaylistLocalizationRepresentation
        
        property :published_at, as: 'publishedAt', type: DateTime
        collection :tags, as: 'tags'
        
        property :thumbnails, as: 'thumbnails', class: Google::Apis::YoutubeV3::ThumbnailDetails, decorator: Google::Apis::YoutubeV3::ThumbnailDetailsRepresentation
        
        property :title, as: 'title'
      end

      # @private
      class PlaylistStatusRepresentation < Google::Apis::Core::JsonRepresentation
        property :privacy_status, as: 'privacyStatus'
      end

      # @private
      class PromotedItemRepresentation < Google::Apis::Core::JsonRepresentation
        property :custom_message, as: 'customMessage'
        property :id, as: 'id', class: Google::Apis::YoutubeV3::PromotedItemId, decorator: Google::Apis::YoutubeV3::PromotedItemIdRepresentation
        
        property :promoted_by_content_owner, as: 'promotedByContentOwner'
        property :timing, as: 'timing', class: Google::Apis::YoutubeV3::InvideoTiming, decorator: Google::Apis::YoutubeV3::InvideoTimingRepresentation
      end

      # @private
      class PromotedItemIdRepresentation < Google::Apis::Core::JsonRepresentation
        property :recently_uploaded_by, as: 'recentlyUploadedBy'
        property :type, as: 'type'
        property :video_id, as: 'videoId'
        property :website_url, as: 'websiteUrl'
      end

      # @private
      class PropertyValueRepresentation < Google::Apis::Core::JsonRepresentation
        property :property, as: 'property'
        property :value, as: 'value'
      end

      # @private
      class ResourceIdRepresentation < Google::Apis::Core::JsonRepresentation
        property :channel_id, as: 'channelId'
        property :kind, as: 'kind'
        property :playlist_id, as: 'playlistId'
        property :video_id, as: 'videoId'
      end

      # @private
      class SearchListResponseRepresentation < Google::Apis::Core::JsonRepresentation
        property :etag, as: 'etag'
        property :event_id, as: 'eventId'
        collection :items, as: 'items', class: Google::Apis::YoutubeV3::SearchResult, decorator: Google::Apis::YoutubeV3::SearchResultRepresentation
        
        
        property :kind, as: 'kind'
        property :next_page_token, as: 'nextPageToken'
        property :page_info, as: 'pageInfo', class: Google::Apis::YoutubeV3::PageInfo, decorator: Google::Apis::YoutubeV3::PageInfoRepresentation
        
        property :prev_page_token, as: 'prevPageToken'
        property :token_pagination, as: 'tokenPagination', class: Google::Apis::YoutubeV3::TokenPagination, decorator: Google::Apis::YoutubeV3::TokenPaginationRepresentation
        
        property :visitor_id, as: 'visitorId'
      end

      # @private
      class SearchResultRepresentation < Google::Apis::Core::JsonRepresentation
        property :etag, as: 'etag'
        property :id, as: 'id', class: Google::Apis::YoutubeV3::ResourceId, decorator: Google::Apis::YoutubeV3::ResourceIdRepresentation
        
        property :kind, as: 'kind'
        property :snippet, as: 'snippet', class: Google::Apis::YoutubeV3::SearchResultSnippet, decorator: Google::Apis::YoutubeV3::SearchResultSnippetRepresentation
      end

      # @private
      class SearchResultSnippetRepresentation < Google::Apis::Core::JsonRepresentation
        property :channel_id, as: 'channelId'
        property :channel_title, as: 'channelTitle'
        property :description, as: 'description'
        property :live_broadcast_content, as: 'liveBroadcastContent'
        property :published_at, as: 'publishedAt', type: DateTime
        property :thumbnails, as: 'thumbnails', class: Google::Apis::YoutubeV3::ThumbnailDetails, decorator: Google::Apis::YoutubeV3::ThumbnailDetailsRepresentation
        
        property :title, as: 'title'
      end

      # @private
      class SubscriptionRepresentation < Google::Apis::Core::JsonRepresentation
        property :content_details, as: 'contentDetails', class: Google::Apis::YoutubeV3::SubscriptionContentDetails, decorator: Google::Apis::YoutubeV3::SubscriptionContentDetailsRepresentation
        
        property :etag, as: 'etag'
        property :id, as: 'id'
        property :kind, as: 'kind'
        property :snippet, as: 'snippet', class: Google::Apis::YoutubeV3::SubscriptionSnippet, decorator: Google::Apis::YoutubeV3::SubscriptionSnippetRepresentation
        
        property :subscriber_snippet, as: 'subscriberSnippet', class: Google::Apis::YoutubeV3::SubscriptionSubscriberSnippet, decorator: Google::Apis::YoutubeV3::SubscriptionSubscriberSnippetRepresentation
      end

      # @private
      class SubscriptionContentDetailsRepresentation < Google::Apis::Core::JsonRepresentation
        property :activity_type, as: 'activityType'
        property :new_item_count, as: 'newItemCount'
        property :total_item_count, as: 'totalItemCount'
      end

      # @private
      class SubscriptionListResponseRepresentation < Google::Apis::Core::JsonRepresentation
        property :etag, as: 'etag'
        property :event_id, as: 'eventId'
        collection :items, as: 'items', class: Google::Apis::YoutubeV3::Subscription, decorator: Google::Apis::YoutubeV3::SubscriptionRepresentation
        
        
        property :kind, as: 'kind'
        property :next_page_token, as: 'nextPageToken'
        property :page_info, as: 'pageInfo', class: Google::Apis::YoutubeV3::PageInfo, decorator: Google::Apis::YoutubeV3::PageInfoRepresentation
        
        property :prev_page_token, as: 'prevPageToken'
        property :token_pagination, as: 'tokenPagination', class: Google::Apis::YoutubeV3::TokenPagination, decorator: Google::Apis::YoutubeV3::TokenPaginationRepresentation
        
        property :visitor_id, as: 'visitorId'
      end

      # @private
      class SubscriptionSnippetRepresentation < Google::Apis::Core::JsonRepresentation
        property :channel_id, as: 'channelId'
        property :channel_title, as: 'channelTitle'
        property :description, as: 'description'
        property :published_at, as: 'publishedAt', type: DateTime
        property :resource_id, as: 'resourceId', class: Google::Apis::YoutubeV3::ResourceId, decorator: Google::Apis::YoutubeV3::ResourceIdRepresentation
        
        property :thumbnails, as: 'thumbnails', class: Google::Apis::YoutubeV3::ThumbnailDetails, decorator: Google::Apis::YoutubeV3::ThumbnailDetailsRepresentation
        
        property :title, as: 'title'
      end

      # @private
      class SubscriptionSubscriberSnippetRepresentation < Google::Apis::Core::JsonRepresentation
        property :channel_id, as: 'channelId'
        property :description, as: 'description'
        property :thumbnails, as: 'thumbnails', class: Google::Apis::YoutubeV3::ThumbnailDetails, decorator: Google::Apis::YoutubeV3::ThumbnailDetailsRepresentation
        
        property :title, as: 'title'
      end

      # @private
      class ThumbnailRepresentation < Google::Apis::Core::JsonRepresentation
        property :height, as: 'height'
        property :url, as: 'url'
        property :width, as: 'width'
      end

      # @private
      class ThumbnailDetailsRepresentation < Google::Apis::Core::JsonRepresentation
        property :default, as: 'default', class: Google::Apis::YoutubeV3::Thumbnail, decorator: Google::Apis::YoutubeV3::ThumbnailRepresentation
        
        property :high, as: 'high', class: Google::Apis::YoutubeV3::Thumbnail, decorator: Google::Apis::YoutubeV3::ThumbnailRepresentation
        
        property :maxres, as: 'maxres', class: Google::Apis::YoutubeV3::Thumbnail, decorator: Google::Apis::YoutubeV3::ThumbnailRepresentation
        
        property :medium, as: 'medium', class: Google::Apis::YoutubeV3::Thumbnail, decorator: Google::Apis::YoutubeV3::ThumbnailRepresentation
        
        property :standard, as: 'standard', class: Google::Apis::YoutubeV3::Thumbnail, decorator: Google::Apis::YoutubeV3::ThumbnailRepresentation
      end

      # @private
      class ThumbnailSetResponseRepresentation < Google::Apis::Core::JsonRepresentation
        property :etag, as: 'etag'
        property :event_id, as: 'eventId'
        collection :items, as: 'items', class: Google::Apis::YoutubeV3::ThumbnailDetails, decorator: Google::Apis::YoutubeV3::ThumbnailDetailsRepresentation
        
        
        property :kind, as: 'kind'
        property :visitor_id, as: 'visitorId'
      end

      # @private
      class TokenPaginationRepresentation < Google::Apis::Core::JsonRepresentation
        
      end

      # @private
      class VideoRepresentation < Google::Apis::Core::JsonRepresentation
        property :age_gating, as: 'ageGating', class: Google::Apis::YoutubeV3::VideoAgeGating, decorator: Google::Apis::YoutubeV3::VideoAgeGatingRepresentation
        
        property :content_details, as: 'contentDetails', class: Google::Apis::YoutubeV3::VideoContentDetails, decorator: Google::Apis::YoutubeV3::VideoContentDetailsRepresentation
        
        property :conversion_pings, as: 'conversionPings', class: Google::Apis::YoutubeV3::VideoConversionPings, decorator: Google::Apis::YoutubeV3::VideoConversionPingsRepresentation
        
        property :etag, as: 'etag'
        property :file_details, as: 'fileDetails', class: Google::Apis::YoutubeV3::VideoFileDetails, decorator: Google::Apis::YoutubeV3::VideoFileDetailsRepresentation
        
        property :id, as: 'id'
        property :kind, as: 'kind'
        property :live_streaming_details, as: 'liveStreamingDetails', class: Google::Apis::YoutubeV3::VideoLiveStreamingDetails, decorator: Google::Apis::YoutubeV3::VideoLiveStreamingDetailsRepresentation
        
        hash :localizations, as: 'localizations', class: Google::Apis::YoutubeV3::VideoLocalization, decorator: Google::Apis::YoutubeV3::VideoLocalizationRepresentation
        
        
        property :monetization_details, as: 'monetizationDetails', class: Google::Apis::YoutubeV3::VideoMonetizationDetails, decorator: Google::Apis::YoutubeV3::VideoMonetizationDetailsRepresentation
        
        property :player, as: 'player', class: Google::Apis::YoutubeV3::VideoPlayer, decorator: Google::Apis::YoutubeV3::VideoPlayerRepresentation
        
        property :processing_details, as: 'processingDetails', class: Google::Apis::YoutubeV3::VideoProcessingDetails, decorator: Google::Apis::YoutubeV3::VideoProcessingDetailsRepresentation
        
        property :project_details, as: 'projectDetails', class: Google::Apis::YoutubeV3::VideoProjectDetails, decorator: Google::Apis::YoutubeV3::VideoProjectDetailsRepresentation
        
        property :recording_details, as: 'recordingDetails', class: Google::Apis::YoutubeV3::VideoRecordingDetails, decorator: Google::Apis::YoutubeV3::VideoRecordingDetailsRepresentation
        
        property :snippet, as: 'snippet', class: Google::Apis::YoutubeV3::VideoSnippet, decorator: Google::Apis::YoutubeV3::VideoSnippetRepresentation
        
        property :statistics, as: 'statistics', class: Google::Apis::YoutubeV3::VideoStatistics, decorator: Google::Apis::YoutubeV3::VideoStatisticsRepresentation
        
        property :status, as: 'status', class: Google::Apis::YoutubeV3::VideoStatus, decorator: Google::Apis::YoutubeV3::VideoStatusRepresentation
        
        property :suggestions, as: 'suggestions', class: Google::Apis::YoutubeV3::VideoSuggestions, decorator: Google::Apis::YoutubeV3::VideoSuggestionsRepresentation
        
        property :topic_details, as: 'topicDetails', class: Google::Apis::YoutubeV3::VideoTopicDetails, decorator: Google::Apis::YoutubeV3::VideoTopicDetailsRepresentation
      end

      # @private
      class VideoAbuseReportRepresentation < Google::Apis::Core::JsonRepresentation
        property :comments, as: 'comments'
        property :language, as: 'language'
        property :reason_id, as: 'reasonId'
        property :secondary_reason_id, as: 'secondaryReasonId'
        property :video_id, as: 'videoId'
      end

      # @private
      class VideoAbuseReportReasonRepresentation < Google::Apis::Core::JsonRepresentation
        property :etag, as: 'etag'
        property :id, as: 'id'
        property :kind, as: 'kind'
        property :snippet, as: 'snippet', class: Google::Apis::YoutubeV3::VideoAbuseReportReasonSnippet, decorator: Google::Apis::YoutubeV3::VideoAbuseReportReasonSnippetRepresentation
      end

      # @private
      class VideoAbuseReportReasonIdRepresentation < Google::Apis::Core::JsonRepresentation
        property :value, as: 'value'
      end

      # @private
      class VideoAbuseReportReasonListResponseRepresentation < Google::Apis::Core::JsonRepresentation
        property :etag, as: 'etag'
        property :event_id, as: 'eventId'
        collection :items, as: 'items', class: Google::Apis::YoutubeV3::VideoAbuseReportReason, decorator: Google::Apis::YoutubeV3::VideoAbuseReportReasonRepresentation
        
        
        property :kind, as: 'kind'
        property :visitor_id, as: 'visitorId'
      end

      # @private
      class VideoAbuseReportReasonSnippetRepresentation < Google::Apis::Core::JsonRepresentation
        property :label, as: 'label'
        collection :secondary_reasons, as: 'secondaryReasons', class: Google::Apis::YoutubeV3::VideoAbuseReportSecondaryReason, decorator: Google::Apis::YoutubeV3::VideoAbuseReportSecondaryReasonRepresentation
      end

      # @private
      class VideoAbuseReportSecondaryReasonRepresentation < Google::Apis::Core::JsonRepresentation
        property :id, as: 'id', class: Google::Apis::YoutubeV3::VideoAbuseReportReasonId, decorator: Google::Apis::YoutubeV3::VideoAbuseReportReasonIdRepresentation
        
        property :label, as: 'label'
      end

      # @private
      class VideoAgeGatingRepresentation < Google::Apis::Core::JsonRepresentation
        property :alcohol_content, as: 'alcoholContent'
        property :restricted, as: 'restricted'
        property :video_game_rating, as: 'videoGameRating'
      end

      # @private
      class VideoCategoryRepresentation < Google::Apis::Core::JsonRepresentation
        property :etag, as: 'etag'
        property :id, as: 'id'
        property :kind, as: 'kind'
        property :snippet, as: 'snippet', class: Google::Apis::YoutubeV3::VideoCategorySnippet, decorator: Google::Apis::YoutubeV3::VideoCategorySnippetRepresentation
      end

      # @private
      class VideoCategoryListResponseRepresentation < Google::Apis::Core::JsonRepresentation
        property :etag, as: 'etag'
        property :event_id, as: 'eventId'
        collection :items, as: 'items', class: Google::Apis::YoutubeV3::VideoCategory, decorator: Google::Apis::YoutubeV3::VideoCategoryRepresentation
        
        
        property :kind, as: 'kind'
        property :next_page_token, as: 'nextPageToken'
        property :page_info, as: 'pageInfo', class: Google::Apis::YoutubeV3::PageInfo, decorator: Google::Apis::YoutubeV3::PageInfoRepresentation
        
        property :prev_page_token, as: 'prevPageToken'
        property :token_pagination, as: 'tokenPagination', class: Google::Apis::YoutubeV3::TokenPagination, decorator: Google::Apis::YoutubeV3::TokenPaginationRepresentation
        
        property :visitor_id, as: 'visitorId'
      end

      # @private
      class VideoCategorySnippetRepresentation < Google::Apis::Core::JsonRepresentation
        property :assignable, as: 'assignable'
        property :channel_id, as: 'channelId'
        property :title, as: 'title'
      end

      # @private
      class VideoContentDetailsRepresentation < Google::Apis::Core::JsonRepresentation
        property :caption, as: 'caption'
        property :content_rating, as: 'contentRating', class: Google::Apis::YoutubeV3::ContentRating, decorator: Google::Apis::YoutubeV3::ContentRatingRepresentation
        
        property :country_restriction, as: 'countryRestriction', class: Google::Apis::YoutubeV3::AccessPolicy, decorator: Google::Apis::YoutubeV3::AccessPolicyRepresentation
        
        property :definition, as: 'definition'
        property :dimension, as: 'dimension'
        property :duration, as: 'duration'
        property :licensed_content, as: 'licensedContent'
        property :region_restriction, as: 'regionRestriction', class: Google::Apis::YoutubeV3::VideoContentDetailsRegionRestriction, decorator: Google::Apis::YoutubeV3::VideoContentDetailsRegionRestrictionRepresentation
      end

      # @private
      class VideoContentDetailsRegionRestrictionRepresentation < Google::Apis::Core::JsonRepresentation
        collection :allowed, as: 'allowed'
        
        collection :blocked, as: 'blocked'
      end

      # @private
      class VideoConversionPingRepresentation < Google::Apis::Core::JsonRepresentation
        property :context, as: 'context'
        property :conversion_url, as: 'conversionUrl'
      end

      # @private
      class VideoConversionPingsRepresentation < Google::Apis::Core::JsonRepresentation
        collection :pings, as: 'pings', class: Google::Apis::YoutubeV3::VideoConversionPing, decorator: Google::Apis::YoutubeV3::VideoConversionPingRepresentation
      end

      # @private
      class VideoFileDetailsRepresentation < Google::Apis::Core::JsonRepresentation
        collection :audio_streams, as: 'audioStreams', class: Google::Apis::YoutubeV3::VideoFileDetailsAudioStream, decorator: Google::Apis::YoutubeV3::VideoFileDetailsAudioStreamRepresentation
        
        
        property :bitrate_bps, as: 'bitrateBps'
        property :container, as: 'container'
        property :creation_time, as: 'creationTime'
        property :duration_ms, as: 'durationMs'
        property :file_name, as: 'fileName'
        property :file_size, as: 'fileSize'
        property :file_type, as: 'fileType'
        property :recording_location, as: 'recordingLocation', class: Google::Apis::YoutubeV3::GeoPoint, decorator: Google::Apis::YoutubeV3::GeoPointRepresentation
        
        collection :video_streams, as: 'videoStreams', class: Google::Apis::YoutubeV3::VideoFileDetailsVideoStream, decorator: Google::Apis::YoutubeV3::VideoFileDetailsVideoStreamRepresentation
      end

      # @private
      class VideoFileDetailsAudioStreamRepresentation < Google::Apis::Core::JsonRepresentation
        property :bitrate_bps, as: 'bitrateBps'
        property :channel_count, as: 'channelCount'
        property :codec, as: 'codec'
        property :vendor, as: 'vendor'
      end

      # @private
      class VideoFileDetailsVideoStreamRepresentation < Google::Apis::Core::JsonRepresentation
        property :aspect_ratio, as: 'aspectRatio'
        property :bitrate_bps, as: 'bitrateBps'
        property :codec, as: 'codec'
        property :frame_rate_fps, as: 'frameRateFps'
        property :height_pixels, as: 'heightPixels'
        property :rotation, as: 'rotation'
        property :vendor, as: 'vendor'
        property :width_pixels, as: 'widthPixels'
      end

      # @private
      class VideoGetRatingResponseRepresentation < Google::Apis::Core::JsonRepresentation
        property :etag, as: 'etag'
        property :event_id, as: 'eventId'
        collection :items, as: 'items', class: Google::Apis::YoutubeV3::VideoRating, decorator: Google::Apis::YoutubeV3::VideoRatingRepresentation
        
        
        property :kind, as: 'kind'
        property :visitor_id, as: 'visitorId'
      end

      # @private
      class VideoListResponseRepresentation < Google::Apis::Core::JsonRepresentation
        property :etag, as: 'etag'
        property :event_id, as: 'eventId'
        collection :items, as: 'items', class: Google::Apis::YoutubeV3::Video, decorator: Google::Apis::YoutubeV3::VideoRepresentation
        
        
        property :kind, as: 'kind'
        property :next_page_token, as: 'nextPageToken'
        property :page_info, as: 'pageInfo', class: Google::Apis::YoutubeV3::PageInfo, decorator: Google::Apis::YoutubeV3::PageInfoRepresentation
        
        property :prev_page_token, as: 'prevPageToken'
        property :token_pagination, as: 'tokenPagination', class: Google::Apis::YoutubeV3::TokenPagination, decorator: Google::Apis::YoutubeV3::TokenPaginationRepresentation
        
        property :visitor_id, as: 'visitorId'
      end

      # @private
      class VideoLiveStreamingDetailsRepresentation < Google::Apis::Core::JsonRepresentation
        property :actual_end_time, as: 'actualEndTime', type: DateTime
        property :actual_start_time, as: 'actualStartTime', type: DateTime
        property :concurrent_viewers, as: 'concurrentViewers'
        property :scheduled_end_time, as: 'scheduledEndTime', type: DateTime
        property :scheduled_start_time, as: 'scheduledStartTime', type: DateTime
      end

      # @private
      class VideoLocalizationRepresentation < Google::Apis::Core::JsonRepresentation
        property :description, as: 'description'
        property :title, as: 'title'
      end

      # @private
      class VideoMonetizationDetailsRepresentation < Google::Apis::Core::JsonRepresentation
        property :access, as: 'access', class: Google::Apis::YoutubeV3::AccessPolicy, decorator: Google::Apis::YoutubeV3::AccessPolicyRepresentation
      end

      # @private
      class VideoPlayerRepresentation < Google::Apis::Core::JsonRepresentation
        property :embed_html, as: 'embedHtml'
      end

      # @private
      class VideoProcessingDetailsRepresentation < Google::Apis::Core::JsonRepresentation
        property :editor_suggestions_availability, as: 'editorSuggestionsAvailability'
        property :file_details_availability, as: 'fileDetailsAvailability'
        property :processing_failure_reason, as: 'processingFailureReason'
        property :processing_issues_availability, as: 'processingIssuesAvailability'
        property :processing_progress, as: 'processingProgress', class: Google::Apis::YoutubeV3::VideoProcessingDetailsProcessingProgress, decorator: Google::Apis::YoutubeV3::VideoProcessingDetailsProcessingProgressRepresentation
        
        property :processing_status, as: 'processingStatus'
        property :tag_suggestions_availability, as: 'tagSuggestionsAvailability'
        property :thumbnails_availability, as: 'thumbnailsAvailability'
      end

      # @private
      class VideoProcessingDetailsProcessingProgressRepresentation < Google::Apis::Core::JsonRepresentation
        property :parts_processed, as: 'partsProcessed'
        property :parts_total, as: 'partsTotal'
        property :time_left_ms, as: 'timeLeftMs'
      end

      # @private
      class VideoProjectDetailsRepresentation < Google::Apis::Core::JsonRepresentation
        collection :tags, as: 'tags'
      end

      # @private
      class VideoRatingRepresentation < Google::Apis::Core::JsonRepresentation
        property :rating, as: 'rating'
        property :video_id, as: 'videoId'
      end

      # @private
      class VideoRecordingDetailsRepresentation < Google::Apis::Core::JsonRepresentation
        property :location, as: 'location', class: Google::Apis::YoutubeV3::GeoPoint, decorator: Google::Apis::YoutubeV3::GeoPointRepresentation
        
        property :location_description, as: 'locationDescription'
        property :recording_date, as: 'recordingDate', type: DateTime
      end

      # @private
      class VideoSnippetRepresentation < Google::Apis::Core::JsonRepresentation
        property :category_id, as: 'categoryId'
        property :channel_id, as: 'channelId'
        property :channel_title, as: 'channelTitle'
        property :default_language, as: 'defaultLanguage'
        property :description, as: 'description'
        property :live_broadcast_content, as: 'liveBroadcastContent'
        property :localized, as: 'localized', class: Google::Apis::YoutubeV3::VideoLocalization, decorator: Google::Apis::YoutubeV3::VideoLocalizationRepresentation
        
        property :published_at, as: 'publishedAt', type: DateTime
        collection :tags, as: 'tags'
        
        property :thumbnails, as: 'thumbnails', class: Google::Apis::YoutubeV3::ThumbnailDetails, decorator: Google::Apis::YoutubeV3::ThumbnailDetailsRepresentation
        
        property :title, as: 'title'
      end

      # @private
      class VideoStatisticsRepresentation < Google::Apis::Core::JsonRepresentation
        property :comment_count, as: 'commentCount'
        property :dislike_count, as: 'dislikeCount'
        property :favorite_count, as: 'favoriteCount'
        property :like_count, as: 'likeCount'
        property :view_count, as: 'viewCount'
      end

      # @private
      class VideoStatusRepresentation < Google::Apis::Core::JsonRepresentation
        property :embeddable, as: 'embeddable'
        property :failure_reason, as: 'failureReason'
        property :license, as: 'license'
        property :privacy_status, as: 'privacyStatus'
        property :public_stats_viewable, as: 'publicStatsViewable'
        property :publish_at, as: 'publishAt', type: DateTime
        property :rejection_reason, as: 'rejectionReason'
        property :upload_status, as: 'uploadStatus'
      end

      # @private
      class VideoSuggestionsRepresentation < Google::Apis::Core::JsonRepresentation
        collection :editor_suggestions, as: 'editorSuggestions'
        
        collection :processing_errors, as: 'processingErrors'
        
        collection :processing_hints, as: 'processingHints'
        
        collection :processing_warnings, as: 'processingWarnings'
        
        collection :tag_suggestions, as: 'tagSuggestions', class: Google::Apis::YoutubeV3::VideoSuggestionsTagSuggestion, decorator: Google::Apis::YoutubeV3::VideoSuggestionsTagSuggestionRepresentation
      end

      # @private
      class VideoSuggestionsTagSuggestionRepresentation < Google::Apis::Core::JsonRepresentation
        collection :category_restricts, as: 'categoryRestricts'
        
        property :tag, as: 'tag'
      end

      # @private
      class VideoTopicDetailsRepresentation < Google::Apis::Core::JsonRepresentation
        collection :relevant_topic_ids, as: 'relevantTopicIds'
        
        collection :topic_ids, as: 'topicIds'
      end

      # @private
      class WatchSettingsRepresentation < Google::Apis::Core::JsonRepresentation
        property :background_color, as: 'backgroundColor'
        property :featured_playlist_id, as: 'featuredPlaylistId'
        property :text_color, as: 'textColor'
      end
    end
  end
end
