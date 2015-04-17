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
    module PlusDomainsV1
      class AclRepresentation < Google::Apis::Core::JsonRepresentation; end
      class ActivityRepresentation < Google::Apis::Core::JsonRepresentation; end
      class ActivityFeedRepresentation < Google::Apis::Core::JsonRepresentation; end
      class AudienceRepresentation < Google::Apis::Core::JsonRepresentation; end
      class AudiencesFeedRepresentation < Google::Apis::Core::JsonRepresentation; end
      class CircleRepresentation < Google::Apis::Core::JsonRepresentation; end
      class CircleFeedRepresentation < Google::Apis::Core::JsonRepresentation; end
      class CommentRepresentation < Google::Apis::Core::JsonRepresentation; end
      class CommentFeedRepresentation < Google::Apis::Core::JsonRepresentation; end
      class MediaRepresentation < Google::Apis::Core::JsonRepresentation; end
      class PeopleFeedRepresentation < Google::Apis::Core::JsonRepresentation; end
      class PersonRepresentation < Google::Apis::Core::JsonRepresentation; end
      class PlaceRepresentation < Google::Apis::Core::JsonRepresentation; end
      class AclentryResourceRepresentation < Google::Apis::Core::JsonRepresentation; end
      class VideostreamRepresentation < Google::Apis::Core::JsonRepresentation; end

      # @private
      class AclRepresentation < Google::Apis::Core::JsonRepresentation
        property :description, as: 'description'
        property :domain_restricted, as: 'domainRestricted'
        collection :items, as: 'items', class: Google::Apis::PlusDomainsV1::AclentryResource, decorator: Google::Apis::PlusDomainsV1::AclentryResourceRepresentation
        
        
        property :kind, as: 'kind'
      end

      # @private
      class ActivityRepresentation < Google::Apis::Core::JsonRepresentation
        property :access, as: 'access', class: Google::Apis::PlusDomainsV1::Acl, decorator: Google::Apis::PlusDomainsV1::AclRepresentation
        
        property :actor, as: 'actor', class: Google::Apis::PlusDomainsV1::Activity::Actor do
          property :display_name, as: 'displayName'
          property :id, as: 'id'
          property :image, as: 'image', class: Google::Apis::PlusDomainsV1::Activity::Actor::Image do
            property :url, as: 'url'
          end
          
          property :name, as: 'name', class: Google::Apis::PlusDomainsV1::Activity::Actor::Name do
            property :family_name, as: 'familyName'
            property :given_name, as: 'givenName'
          end
          
          property :url, as: 'url'
        end
        
        property :address, as: 'address'
        property :annotation, as: 'annotation'
        property :crosspost_source, as: 'crosspostSource'
        property :etag, as: 'etag'
        property :geocode, as: 'geocode'
        property :id, as: 'id'
        property :kind, as: 'kind'
        property :location, as: 'location', class: Google::Apis::PlusDomainsV1::Place, decorator: Google::Apis::PlusDomainsV1::PlaceRepresentation
        
        property :object, as: 'object', class: Google::Apis::PlusDomainsV1::Activity::Object do
          property :actor, as: 'actor', class: Google::Apis::PlusDomainsV1::Activity::Object::Actor do
            property :display_name, as: 'displayName'
            property :id, as: 'id'
            property :image, as: 'image', class: Google::Apis::PlusDomainsV1::Activity::Object::Actor::Image do
              property :url, as: 'url'
            end
            
            property :url, as: 'url'
          end
          
          collection :attachments, as: 'attachments', class: Google::Apis::PlusDomainsV1::Activity::Object::Attachment do
            property :content, as: 'content'
            property :display_name, as: 'displayName'
            property :embed, as: 'embed', class: Google::Apis::PlusDomainsV1::Activity::Object::Attachment::Embed do
              property :type, as: 'type'
              property :url, as: 'url'
            end
            
            property :full_image, as: 'fullImage', class: Google::Apis::PlusDomainsV1::Activity::Object::Attachment::FullImage do
              property :height, as: 'height'
              property :type, as: 'type'
              property :url, as: 'url'
              property :width, as: 'width'
            end
            
            property :id, as: 'id'
            property :image, as: 'image', class: Google::Apis::PlusDomainsV1::Activity::Object::Attachment::Image do
              property :height, as: 'height'
              property :type, as: 'type'
              property :url, as: 'url'
              property :width, as: 'width'
            end
            
            property :object_type, as: 'objectType'
            collection :preview_thumbnails, as: 'previewThumbnails', class: Google::Apis::PlusDomainsV1::Activity::Object::Attachment::PreviewThumbnail do
              property :url, as: 'url'
            end
            
            
            collection :thumbnails, as: 'thumbnails', class: Google::Apis::PlusDomainsV1::Activity::Object::Attachment::Thumbnail do
              property :description, as: 'description'
              property :image, as: 'image', class: Google::Apis::PlusDomainsV1::Activity::Object::Attachment::Thumbnail::Image do
                property :height, as: 'height'
                property :type, as: 'type'
                property :url, as: 'url'
                property :width, as: 'width'
              end
              
              property :url, as: 'url'
            end
            
            
            property :url, as: 'url'
          end
          
          
          property :content, as: 'content'
          property :id, as: 'id'
          property :object_type, as: 'objectType'
          property :original_content, as: 'originalContent'
          property :plusoners, as: 'plusoners', class: Google::Apis::PlusDomainsV1::Activity::Object::Plusoners do
            property :self_link, as: 'selfLink'
            property :total_items, as: 'totalItems'
          end
          
          property :replies, as: 'replies', class: Google::Apis::PlusDomainsV1::Activity::Object::Replies do
            property :self_link, as: 'selfLink'
            property :total_items, as: 'totalItems'
          end
          
          property :resharers, as: 'resharers', class: Google::Apis::PlusDomainsV1::Activity::Object::Resharers do
            property :self_link, as: 'selfLink'
            property :total_items, as: 'totalItems'
          end
          
          property :status_for_viewer, as: 'statusForViewer', class: Google::Apis::PlusDomainsV1::Activity::Object::StatusForViewer do
            property :can_comment, as: 'canComment'
            property :can_plusone, as: 'canPlusone'
            property :can_update, as: 'canUpdate'
            property :is_plus_oned, as: 'isPlusOned'
            property :resharing_disabled, as: 'resharingDisabled'
          end
          
          property :url, as: 'url'
        end
        
        property :place_id, as: 'placeId'
        property :place_name, as: 'placeName'
        property :provider, as: 'provider', class: Google::Apis::PlusDomainsV1::Activity::Provider do
          property :title, as: 'title'
        end
        
        property :published, as: 'published', type: DateTime
        property :radius, as: 'radius'
        property :title, as: 'title'
        property :updated, as: 'updated', type: DateTime
        property :url, as: 'url'
        property :verb, as: 'verb'
      end

      # @private
      class ActivityFeedRepresentation < Google::Apis::Core::JsonRepresentation
        property :etag, as: 'etag'
        property :id, as: 'id'
        collection :items, as: 'items', class: Google::Apis::PlusDomainsV1::Activity, decorator: Google::Apis::PlusDomainsV1::ActivityRepresentation
        
        
        property :kind, as: 'kind'
        property :next_link, as: 'nextLink'
        property :next_page_token, as: 'nextPageToken'
        property :self_link, as: 'selfLink'
        property :title, as: 'title'
        property :updated, as: 'updated', type: DateTime
      end

      # @private
      class AudienceRepresentation < Google::Apis::Core::JsonRepresentation
        property :etag, as: 'etag'
        property :item, as: 'item', class: Google::Apis::PlusDomainsV1::AclentryResource, decorator: Google::Apis::PlusDomainsV1::AclentryResourceRepresentation
        
        property :kind, as: 'kind'
        property :member_count, as: 'memberCount'
        property :visibility, as: 'visibility'
      end

      # @private
      class AudiencesFeedRepresentation < Google::Apis::Core::JsonRepresentation
        property :etag, as: 'etag'
        collection :items, as: 'items', class: Google::Apis::PlusDomainsV1::Audience, decorator: Google::Apis::PlusDomainsV1::AudienceRepresentation
        
        
        property :kind, as: 'kind'
        property :next_page_token, as: 'nextPageToken'
        property :total_items, as: 'totalItems'
      end

      # @private
      class CircleRepresentation < Google::Apis::Core::JsonRepresentation
        property :description, as: 'description'
        property :display_name, as: 'displayName'
        property :etag, as: 'etag'
        property :id, as: 'id'
        property :kind, as: 'kind'
        property :people, as: 'people', class: Google::Apis::PlusDomainsV1::Circle::People do
          property :total_items, as: 'totalItems'
        end
        
        property :self_link, as: 'selfLink'
      end

      # @private
      class CircleFeedRepresentation < Google::Apis::Core::JsonRepresentation
        property :etag, as: 'etag'
        collection :items, as: 'items', class: Google::Apis::PlusDomainsV1::Circle, decorator: Google::Apis::PlusDomainsV1::CircleRepresentation
        
        
        property :kind, as: 'kind'
        property :next_link, as: 'nextLink'
        property :next_page_token, as: 'nextPageToken'
        property :self_link, as: 'selfLink'
        property :title, as: 'title'
        property :total_items, as: 'totalItems'
      end

      # @private
      class CommentRepresentation < Google::Apis::Core::JsonRepresentation
        property :actor, as: 'actor', class: Google::Apis::PlusDomainsV1::Comment::Actor do
          property :display_name, as: 'displayName'
          property :id, as: 'id'
          property :image, as: 'image', class: Google::Apis::PlusDomainsV1::Comment::Actor::Image do
            property :url, as: 'url'
          end
          
          property :url, as: 'url'
        end
        
        property :etag, as: 'etag'
        property :id, as: 'id'
        collection :in_reply_to, as: 'inReplyTo', class: Google::Apis::PlusDomainsV1::Comment::InReplyTo do
          property :id, as: 'id'
          property :url, as: 'url'
        end
        
        
        property :kind, as: 'kind'
        property :object, as: 'object', class: Google::Apis::PlusDomainsV1::Comment::Object do
          property :content, as: 'content'
          property :object_type, as: 'objectType'
          property :original_content, as: 'originalContent'
        end
        
        property :plusoners, as: 'plusoners', class: Google::Apis::PlusDomainsV1::Comment::Plusoners do
          property :total_items, as: 'totalItems'
        end
        
        property :published, as: 'published', type: DateTime
        property :self_link, as: 'selfLink'
        property :updated, as: 'updated', type: DateTime
        property :verb, as: 'verb'
      end

      # @private
      class CommentFeedRepresentation < Google::Apis::Core::JsonRepresentation
        property :etag, as: 'etag'
        property :id, as: 'id'
        collection :items, as: 'items', class: Google::Apis::PlusDomainsV1::Comment, decorator: Google::Apis::PlusDomainsV1::CommentRepresentation
        
        
        property :kind, as: 'kind'
        property :next_link, as: 'nextLink'
        property :next_page_token, as: 'nextPageToken'
        property :title, as: 'title'
        property :updated, as: 'updated', type: DateTime
      end

      # @private
      class MediaRepresentation < Google::Apis::Core::JsonRepresentation
        property :author, as: 'author', class: Google::Apis::PlusDomainsV1::Media::Author do
          property :display_name, as: 'displayName'
          property :id, as: 'id'
          property :image, as: 'image', class: Google::Apis::PlusDomainsV1::Media::Author::Image do
            property :url, as: 'url'
          end
          
          property :url, as: 'url'
        end
        
        property :display_name, as: 'displayName'
        property :etag, as: 'etag'
        property :exif, as: 'exif', class: Google::Apis::PlusDomainsV1::Media::Exif do
          property :time, as: 'time', type: DateTime
        end
        
        property :height, as: 'height'
        property :id, as: 'id'
        property :kind, as: 'kind'
        property :media_created_time, as: 'mediaCreatedTime', type: DateTime
        property :media_url, as: 'mediaUrl'
        property :published, as: 'published', type: DateTime
        property :size_bytes, as: 'sizeBytes'
        collection :streams, as: 'streams', class: Google::Apis::PlusDomainsV1::Videostream, decorator: Google::Apis::PlusDomainsV1::VideostreamRepresentation
        
        
        property :summary, as: 'summary'
        property :updated, as: 'updated', type: DateTime
        property :url, as: 'url'
        property :video_duration, as: 'videoDuration'
        property :video_status, as: 'videoStatus'
        property :width, as: 'width'
      end

      # @private
      class PeopleFeedRepresentation < Google::Apis::Core::JsonRepresentation
        property :etag, as: 'etag'
        collection :items, as: 'items', class: Google::Apis::PlusDomainsV1::Person, decorator: Google::Apis::PlusDomainsV1::PersonRepresentation
        
        
        property :kind, as: 'kind'
        property :next_page_token, as: 'nextPageToken'
        property :self_link, as: 'selfLink'
        property :title, as: 'title'
        property :total_items, as: 'totalItems'
      end

      # @private
      class PersonRepresentation < Google::Apis::Core::JsonRepresentation
        property :about_me, as: 'aboutMe'
        property :birthday, as: 'birthday'
        property :bragging_rights, as: 'braggingRights'
        property :circled_by_count, as: 'circledByCount'
        property :cover, as: 'cover', class: Google::Apis::PlusDomainsV1::Person::Cover do
          property :cover_info, as: 'coverInfo', class: Google::Apis::PlusDomainsV1::Person::Cover::CoverInfo do
            property :left_image_offset, as: 'leftImageOffset'
            property :top_image_offset, as: 'topImageOffset'
          end
          
          property :cover_photo, as: 'coverPhoto', class: Google::Apis::PlusDomainsV1::Person::Cover::CoverPhoto do
            property :height, as: 'height'
            property :url, as: 'url'
            property :width, as: 'width'
          end
          
          property :layout, as: 'layout'
        end
        
        property :current_location, as: 'currentLocation'
        property :display_name, as: 'displayName'
        property :domain, as: 'domain'
        collection :emails, as: 'emails', class: Google::Apis::PlusDomainsV1::Person::Email do
          property :type, as: 'type'
          property :value, as: 'value'
        end
        
        
        property :etag, as: 'etag'
        property :gender, as: 'gender'
        property :id, as: 'id'
        property :image, as: 'image', class: Google::Apis::PlusDomainsV1::Person::Image do
          property :is_default, as: 'isDefault'
          property :url, as: 'url'
        end
        
        property :is_plus_user, as: 'isPlusUser'
        property :kind, as: 'kind'
        property :name, as: 'name', class: Google::Apis::PlusDomainsV1::Person::Name do
          property :family_name, as: 'familyName'
          property :formatted, as: 'formatted'
          property :given_name, as: 'givenName'
          property :honorific_prefix, as: 'honorificPrefix'
          property :honorific_suffix, as: 'honorificSuffix'
          property :middle_name, as: 'middleName'
        end
        
        property :nickname, as: 'nickname'
        property :object_type, as: 'objectType'
        property :occupation, as: 'occupation'
        collection :organizations, as: 'organizations', class: Google::Apis::PlusDomainsV1::Person::Organization do
          property :department, as: 'department'
          property :description, as: 'description'
          property :end_date, as: 'endDate'
          property :location, as: 'location'
          property :name, as: 'name'
          property :primary, as: 'primary'
          property :start_date, as: 'startDate'
          property :title, as: 'title'
          property :type, as: 'type'
        end
        
        
        collection :places_lived, as: 'placesLived', class: Google::Apis::PlusDomainsV1::Person::PlacesLived do
          property :primary, as: 'primary'
          property :value, as: 'value'
        end
        
        
        property :plus_one_count, as: 'plusOneCount'
        property :relationship_status, as: 'relationshipStatus'
        property :skills, as: 'skills'
        property :tagline, as: 'tagline'
        property :url, as: 'url'
        collection :urls, as: 'urls', class: Google::Apis::PlusDomainsV1::Person::Url do
          property :label, as: 'label'
          property :type, as: 'type'
          property :value, as: 'value'
        end
        
        
        property :verified, as: 'verified'
      end

      # @private
      class PlaceRepresentation < Google::Apis::Core::JsonRepresentation
        property :address, as: 'address', class: Google::Apis::PlusDomainsV1::Place::Address do
          property :formatted, as: 'formatted'
        end
        
        property :display_name, as: 'displayName'
        property :id, as: 'id'
        property :kind, as: 'kind'
        property :position, as: 'position', class: Google::Apis::PlusDomainsV1::Place::Position do
          property :latitude, as: 'latitude'
          property :longitude, as: 'longitude'
        end
      end

      # @private
      class AclentryResourceRepresentation < Google::Apis::Core::JsonRepresentation
        property :display_name, as: 'displayName'
        property :id, as: 'id'
        property :type, as: 'type'
      end

      # @private
      class VideostreamRepresentation < Google::Apis::Core::JsonRepresentation
        property :height, as: 'height'
        property :type, as: 'type'
        property :url, as: 'url'
        property :width, as: 'width'
      end
    end
  end
end
