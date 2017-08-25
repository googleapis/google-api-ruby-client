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
    module PlaymoviespartnerV1
      
      class Avail
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListAvailsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListOrdersResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListStoreInfosResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Order
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class StoreInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Avail
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :alt_id, as: 'altId'
          property :avail_id, as: 'availId'
          property :caption_exemption, as: 'captionExemption'
          property :caption_included, as: 'captionIncluded'
          property :content_id, as: 'contentId'
          property :display_name, as: 'displayName'
          property :encode_id, as: 'encodeId'
          property :end, as: 'end'
          property :episode_alt_id, as: 'episodeAltId'
          property :episode_number, as: 'episodeNumber'
          property :episode_title_internal_alias, as: 'episodeTitleInternalAlias'
          property :format_profile, as: 'formatProfile'
          property :license_type, as: 'licenseType'
          collection :pph_names, as: 'pphNames'
          property :price_type, as: 'priceType'
          property :price_value, as: 'priceValue'
          property :product_id, as: 'productId'
          property :rating_reason, as: 'ratingReason'
          property :rating_system, as: 'ratingSystem'
          property :rating_value, as: 'ratingValue'
          property :release_date, as: 'releaseDate'
          property :season_alt_id, as: 'seasonAltId'
          property :season_number, as: 'seasonNumber'
          property :season_title_internal_alias, as: 'seasonTitleInternalAlias'
          property :series_alt_id, as: 'seriesAltId'
          property :series_title_internal_alias, as: 'seriesTitleInternalAlias'
          property :start, as: 'start'
          property :store_language, as: 'storeLanguage'
          property :suppression_lift_date, as: 'suppressionLiftDate'
          property :territory, as: 'territory'
          property :title_internal_alias, as: 'titleInternalAlias'
          property :video_id, as: 'videoId'
          property :work_type, as: 'workType'
        end
      end
      
      class ListAvailsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :avails, as: 'avails', class: Google::Apis::PlaymoviespartnerV1::Avail, decorator: Google::Apis::PlaymoviespartnerV1::Avail::Representation
      
          property :next_page_token, as: 'nextPageToken'
          property :total_size, as: 'totalSize'
        end
      end
      
      class ListOrdersResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :orders, as: 'orders', class: Google::Apis::PlaymoviespartnerV1::Order, decorator: Google::Apis::PlaymoviespartnerV1::Order::Representation
      
          property :total_size, as: 'totalSize'
        end
      end
      
      class ListStoreInfosResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :store_infos, as: 'storeInfos', class: Google::Apis::PlaymoviespartnerV1::StoreInfo, decorator: Google::Apis::PlaymoviespartnerV1::StoreInfo::Representation
      
          property :total_size, as: 'totalSize'
        end
      end
      
      class Order
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :approved_time, as: 'approvedTime'
          property :channel_id, as: 'channelId'
          property :channel_name, as: 'channelName'
          collection :countries, as: 'countries'
          property :custom_id, as: 'customId'
          property :earliest_avail_start_time, as: 'earliestAvailStartTime'
          property :episode_name, as: 'episodeName'
          property :legacy_priority, as: 'legacyPriority'
          property :name, as: 'name'
          property :normalized_priority, as: 'normalizedPriority'
          property :order_id, as: 'orderId'
          property :ordered_time, as: 'orderedTime'
          property :pph_name, as: 'pphName'
          property :priority, as: 'priority'
          property :received_time, as: 'receivedTime'
          property :rejection_note, as: 'rejectionNote'
          property :season_name, as: 'seasonName'
          property :show_name, as: 'showName'
          property :status, as: 'status'
          property :status_detail, as: 'statusDetail'
          property :studio_name, as: 'studioName'
          property :type, as: 'type'
          property :video_id, as: 'videoId'
        end
      end
      
      class StoreInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :audio_tracks, as: 'audioTracks'
          property :country, as: 'country'
          property :edit_level_eidr, as: 'editLevelEidr'
          property :episode_number, as: 'episodeNumber'
          property :has_audio51, as: 'hasAudio51'
          property :has_est_offer, as: 'hasEstOffer'
          property :has_hd_offer, as: 'hasHdOffer'
          property :has_info_cards, as: 'hasInfoCards'
          property :has_sd_offer, as: 'hasSdOffer'
          property :has_vod_offer, as: 'hasVodOffer'
          property :live_time, as: 'liveTime'
          property :mid, as: 'mid'
          property :name, as: 'name'
          collection :pph_names, as: 'pphNames'
          property :season_id, as: 'seasonId'
          property :season_name, as: 'seasonName'
          property :season_number, as: 'seasonNumber'
          property :show_id, as: 'showId'
          property :show_name, as: 'showName'
          property :studio_name, as: 'studioName'
          collection :subtitles, as: 'subtitles'
          property :title_level_eidr, as: 'titleLevelEidr'
          property :trailer_id, as: 'trailerId'
          property :type, as: 'type'
          property :video_id, as: 'videoId'
        end
      end
    end
  end
end
