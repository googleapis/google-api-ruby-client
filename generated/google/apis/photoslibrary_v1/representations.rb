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
    module PhotoslibraryV1
      
      class AddEnrichmentToAlbumRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AddEnrichmentToAlbumResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Album
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AlbumPosition
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class BatchCreateMediaItemsRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class BatchCreateMediaItemsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ContentFilter
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ContributorInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CreateAlbumRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Date
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DateFilter
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DateRange
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class EnrichmentItem
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Filters
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class JoinSharedAlbumRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class JoinSharedAlbumResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class LatLng
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListAlbumsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListSharedAlbumsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Location
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class LocationEnrichment
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class MapEnrichment
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class MediaItem
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class MediaMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class MediaTypeFilter
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class NewEnrichmentItem
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class NewMediaItem
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class NewMediaItemResult
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Photo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SearchMediaItemsRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SearchMediaItemsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ShareAlbumRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ShareAlbumResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ShareInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SharedAlbumOptions
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SimpleMediaItem
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Status
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class TextEnrichment
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Video
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AddEnrichmentToAlbumRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :album_position, as: 'albumPosition', class: Google::Apis::PhotoslibraryV1::AlbumPosition, decorator: Google::Apis::PhotoslibraryV1::AlbumPosition::Representation
      
          property :new_enrichment_item, as: 'newEnrichmentItem', class: Google::Apis::PhotoslibraryV1::NewEnrichmentItem, decorator: Google::Apis::PhotoslibraryV1::NewEnrichmentItem::Representation
      
        end
      end
      
      class AddEnrichmentToAlbumResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :enrichment_item, as: 'enrichmentItem', class: Google::Apis::PhotoslibraryV1::EnrichmentItem, decorator: Google::Apis::PhotoslibraryV1::EnrichmentItem::Representation
      
        end
      end
      
      class Album
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :cover_photo_base_url, as: 'coverPhotoBaseUrl'
          property :id, as: 'id'
          property :is_writeable, as: 'isWriteable'
          property :product_url, as: 'productUrl'
          property :share_info, as: 'shareInfo', class: Google::Apis::PhotoslibraryV1::ShareInfo, decorator: Google::Apis::PhotoslibraryV1::ShareInfo::Representation
      
          property :title, as: 'title'
          property :total_media_items, :numeric_string => true, as: 'totalMediaItems'
        end
      end
      
      class AlbumPosition
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :position, as: 'position'
          property :relative_enrichment_item_id, as: 'relativeEnrichmentItemId'
          property :relative_media_item_id, as: 'relativeMediaItemId'
        end
      end
      
      class BatchCreateMediaItemsRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :album_id, as: 'albumId'
          property :album_position, as: 'albumPosition', class: Google::Apis::PhotoslibraryV1::AlbumPosition, decorator: Google::Apis::PhotoslibraryV1::AlbumPosition::Representation
      
          collection :new_media_items, as: 'newMediaItems', class: Google::Apis::PhotoslibraryV1::NewMediaItem, decorator: Google::Apis::PhotoslibraryV1::NewMediaItem::Representation
      
        end
      end
      
      class BatchCreateMediaItemsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :new_media_item_results, as: 'newMediaItemResults', class: Google::Apis::PhotoslibraryV1::NewMediaItemResult, decorator: Google::Apis::PhotoslibraryV1::NewMediaItemResult::Representation
      
        end
      end
      
      class ContentFilter
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :excluded_content_categories, as: 'excludedContentCategories'
          collection :included_content_categories, as: 'includedContentCategories'
        end
      end
      
      class ContributorInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :display_name, as: 'displayName'
          property :profile_picture_base_url, as: 'profilePictureBaseUrl'
        end
      end
      
      class CreateAlbumRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :album, as: 'album', class: Google::Apis::PhotoslibraryV1::Album, decorator: Google::Apis::PhotoslibraryV1::Album::Representation
      
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
      
      class DateFilter
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :dates, as: 'dates', class: Google::Apis::PhotoslibraryV1::Date, decorator: Google::Apis::PhotoslibraryV1::Date::Representation
      
          collection :ranges, as: 'ranges', class: Google::Apis::PhotoslibraryV1::DateRange, decorator: Google::Apis::PhotoslibraryV1::DateRange::Representation
      
        end
      end
      
      class DateRange
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :end_date, as: 'endDate', class: Google::Apis::PhotoslibraryV1::Date, decorator: Google::Apis::PhotoslibraryV1::Date::Representation
      
          property :start_date, as: 'startDate', class: Google::Apis::PhotoslibraryV1::Date, decorator: Google::Apis::PhotoslibraryV1::Date::Representation
      
        end
      end
      
      class EnrichmentItem
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :id, as: 'id'
        end
      end
      
      class Filters
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :content_filter, as: 'contentFilter', class: Google::Apis::PhotoslibraryV1::ContentFilter, decorator: Google::Apis::PhotoslibraryV1::ContentFilter::Representation
      
          property :date_filter, as: 'dateFilter', class: Google::Apis::PhotoslibraryV1::DateFilter, decorator: Google::Apis::PhotoslibraryV1::DateFilter::Representation
      
          property :include_archived_media, as: 'includeArchivedMedia'
          property :media_type_filter, as: 'mediaTypeFilter', class: Google::Apis::PhotoslibraryV1::MediaTypeFilter, decorator: Google::Apis::PhotoslibraryV1::MediaTypeFilter::Representation
      
        end
      end
      
      class JoinSharedAlbumRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :share_token, as: 'shareToken'
        end
      end
      
      class JoinSharedAlbumResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class LatLng
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :latitude, as: 'latitude'
          property :longitude, as: 'longitude'
        end
      end
      
      class ListAlbumsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :albums, as: 'albums', class: Google::Apis::PhotoslibraryV1::Album, decorator: Google::Apis::PhotoslibraryV1::Album::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class ListSharedAlbumsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :shared_albums, as: 'sharedAlbums', class: Google::Apis::PhotoslibraryV1::Album, decorator: Google::Apis::PhotoslibraryV1::Album::Representation
      
        end
      end
      
      class Location
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :latlng, as: 'latlng', class: Google::Apis::PhotoslibraryV1::LatLng, decorator: Google::Apis::PhotoslibraryV1::LatLng::Representation
      
          property :location_name, as: 'locationName'
        end
      end
      
      class LocationEnrichment
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :location, as: 'location', class: Google::Apis::PhotoslibraryV1::Location, decorator: Google::Apis::PhotoslibraryV1::Location::Representation
      
        end
      end
      
      class MapEnrichment
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :destination, as: 'destination', class: Google::Apis::PhotoslibraryV1::Location, decorator: Google::Apis::PhotoslibraryV1::Location::Representation
      
          property :origin, as: 'origin', class: Google::Apis::PhotoslibraryV1::Location, decorator: Google::Apis::PhotoslibraryV1::Location::Representation
      
        end
      end
      
      class MediaItem
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :base_url, as: 'baseUrl'
          property :contributor_info, as: 'contributorInfo', class: Google::Apis::PhotoslibraryV1::ContributorInfo, decorator: Google::Apis::PhotoslibraryV1::ContributorInfo::Representation
      
          property :description, as: 'description'
          property :id, as: 'id'
          property :media_metadata, as: 'mediaMetadata', class: Google::Apis::PhotoslibraryV1::MediaMetadata, decorator: Google::Apis::PhotoslibraryV1::MediaMetadata::Representation
      
          property :mime_type, as: 'mimeType'
          property :product_url, as: 'productUrl'
        end
      end
      
      class MediaMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :creation_time, as: 'creationTime'
          property :height, :numeric_string => true, as: 'height'
          property :photo, as: 'photo', class: Google::Apis::PhotoslibraryV1::Photo, decorator: Google::Apis::PhotoslibraryV1::Photo::Representation
      
          property :video, as: 'video', class: Google::Apis::PhotoslibraryV1::Video, decorator: Google::Apis::PhotoslibraryV1::Video::Representation
      
          property :width, :numeric_string => true, as: 'width'
        end
      end
      
      class MediaTypeFilter
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :media_types, as: 'mediaTypes'
        end
      end
      
      class NewEnrichmentItem
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :location_enrichment, as: 'locationEnrichment', class: Google::Apis::PhotoslibraryV1::LocationEnrichment, decorator: Google::Apis::PhotoslibraryV1::LocationEnrichment::Representation
      
          property :map_enrichment, as: 'mapEnrichment', class: Google::Apis::PhotoslibraryV1::MapEnrichment, decorator: Google::Apis::PhotoslibraryV1::MapEnrichment::Representation
      
          property :text_enrichment, as: 'textEnrichment', class: Google::Apis::PhotoslibraryV1::TextEnrichment, decorator: Google::Apis::PhotoslibraryV1::TextEnrichment::Representation
      
        end
      end
      
      class NewMediaItem
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :description, as: 'description'
          property :simple_media_item, as: 'simpleMediaItem', class: Google::Apis::PhotoslibraryV1::SimpleMediaItem, decorator: Google::Apis::PhotoslibraryV1::SimpleMediaItem::Representation
      
        end
      end
      
      class NewMediaItemResult
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :media_item, as: 'mediaItem', class: Google::Apis::PhotoslibraryV1::MediaItem, decorator: Google::Apis::PhotoslibraryV1::MediaItem::Representation
      
          property :status, as: 'status', class: Google::Apis::PhotoslibraryV1::Status, decorator: Google::Apis::PhotoslibraryV1::Status::Representation
      
          property :upload_token, as: 'uploadToken'
        end
      end
      
      class Photo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :aperture_f_number, as: 'apertureFNumber'
          property :camera_make, as: 'cameraMake'
          property :camera_model, as: 'cameraModel'
          property :exposure_time, as: 'exposureTime'
          property :focal_length, as: 'focalLength'
          property :iso_equivalent, as: 'isoEquivalent'
        end
      end
      
      class SearchMediaItemsRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :album_id, as: 'albumId'
          property :filters, as: 'filters', class: Google::Apis::PhotoslibraryV1::Filters, decorator: Google::Apis::PhotoslibraryV1::Filters::Representation
      
          property :page_size, as: 'pageSize'
          property :page_token, as: 'pageToken'
        end
      end
      
      class SearchMediaItemsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :media_items, as: 'mediaItems', class: Google::Apis::PhotoslibraryV1::MediaItem, decorator: Google::Apis::PhotoslibraryV1::MediaItem::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class ShareAlbumRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :shared_album_options, as: 'sharedAlbumOptions', class: Google::Apis::PhotoslibraryV1::SharedAlbumOptions, decorator: Google::Apis::PhotoslibraryV1::SharedAlbumOptions::Representation
      
        end
      end
      
      class ShareAlbumResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :share_info, as: 'shareInfo', class: Google::Apis::PhotoslibraryV1::ShareInfo, decorator: Google::Apis::PhotoslibraryV1::ShareInfo::Representation
      
        end
      end
      
      class ShareInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :share_token, as: 'shareToken'
          property :shareable_url, as: 'shareableUrl'
          property :shared_album_options, as: 'sharedAlbumOptions', class: Google::Apis::PhotoslibraryV1::SharedAlbumOptions, decorator: Google::Apis::PhotoslibraryV1::SharedAlbumOptions::Representation
      
        end
      end
      
      class SharedAlbumOptions
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :is_collaborative, as: 'isCollaborative'
          property :is_commentable, as: 'isCommentable'
        end
      end
      
      class SimpleMediaItem
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :upload_token, as: 'uploadToken'
        end
      end
      
      class Status
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :code, as: 'code'
          collection :details, as: 'details'
          property :message, as: 'message'
        end
      end
      
      class TextEnrichment
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :text, as: 'text'
        end
      end
      
      class Video
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :camera_make, as: 'cameraMake'
          property :camera_model, as: 'cameraModel'
          property :fps, as: 'fps'
          property :status, as: 'status'
        end
      end
    end
  end
end
