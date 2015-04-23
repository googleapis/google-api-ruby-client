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
      
      class AclRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class ActivityRepresentation < Google::Apis::Core::JsonRepresentation
        
        class ActorRepresentation < Google::Apis::Core::JsonRepresentation
          
          class ImageRepresentation < Google::Apis::Core::JsonRepresentation
            
          end
          
          class NameRepresentation < Google::Apis::Core::JsonRepresentation
            
          end
        end
        
        class ObjectRepresentation < Google::Apis::Core::JsonRepresentation
          
          class ActorRepresentation < Google::Apis::Core::JsonRepresentation
            
            class ImageRepresentation < Google::Apis::Core::JsonRepresentation
              
            end
          end
          
          class AttachmentRepresentation < Google::Apis::Core::JsonRepresentation
            
            class EmbedRepresentation < Google::Apis::Core::JsonRepresentation
              
            end
            
            class FullImageRepresentation < Google::Apis::Core::JsonRepresentation
              
            end
            
            class ImageRepresentation < Google::Apis::Core::JsonRepresentation
              
            end
            
            class PreviewThumbnailRepresentation < Google::Apis::Core::JsonRepresentation
              
            end
            
            class ThumbnailRepresentation < Google::Apis::Core::JsonRepresentation
              
              class ImageRepresentation < Google::Apis::Core::JsonRepresentation
                
              end
            end
          end
          
          class PlusonersRepresentation < Google::Apis::Core::JsonRepresentation
            
          end
          
          class RepliesRepresentation < Google::Apis::Core::JsonRepresentation
            
          end
          
          class ResharersRepresentation < Google::Apis::Core::JsonRepresentation
            
          end
          
          class StatusForViewerRepresentation < Google::Apis::Core::JsonRepresentation
            
          end
        end
        
        class ProviderRepresentation < Google::Apis::Core::JsonRepresentation
          
        end
      end
      
      class ActivityFeedRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class AudienceRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class AudiencesFeedRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class CircleRepresentation < Google::Apis::Core::JsonRepresentation
        
        class PeopleRepresentation < Google::Apis::Core::JsonRepresentation
          
        end
      end
      
      class CircleFeedRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class CommentRepresentation < Google::Apis::Core::JsonRepresentation
        
        class ActorRepresentation < Google::Apis::Core::JsonRepresentation
          
          class ImageRepresentation < Google::Apis::Core::JsonRepresentation
            
          end
        end
        
        class InReplyToRepresentation < Google::Apis::Core::JsonRepresentation
          
        end
        
        class ObjectRepresentation < Google::Apis::Core::JsonRepresentation
          
        end
        
        class PlusonersRepresentation < Google::Apis::Core::JsonRepresentation
          
        end
      end
      
      class CommentFeedRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class MediaRepresentation < Google::Apis::Core::JsonRepresentation
        
        class AuthorRepresentation < Google::Apis::Core::JsonRepresentation
          
          class ImageRepresentation < Google::Apis::Core::JsonRepresentation
            
          end
        end
        
        class ExifRepresentation < Google::Apis::Core::JsonRepresentation
          
        end
      end
      
      class PeopleFeedRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class PersonRepresentation < Google::Apis::Core::JsonRepresentation
        
        class CoverRepresentation < Google::Apis::Core::JsonRepresentation
          
          class CoverInfoRepresentation < Google::Apis::Core::JsonRepresentation
            
          end
          
          class CoverPhotoRepresentation < Google::Apis::Core::JsonRepresentation
            
          end
        end
        
        class EmailRepresentation < Google::Apis::Core::JsonRepresentation
          
        end
        
        class ImageRepresentation < Google::Apis::Core::JsonRepresentation
          
        end
        
        class NameRepresentation < Google::Apis::Core::JsonRepresentation
          
        end
        
        class OrganizationRepresentation < Google::Apis::Core::JsonRepresentation
          
        end
        
        class PlacesLivedRepresentation < Google::Apis::Core::JsonRepresentation
          
        end
        
        class UrlRepresentation < Google::Apis::Core::JsonRepresentation
          
        end
      end
      
      class PlaceRepresentation < Google::Apis::Core::JsonRepresentation
        
        class AddressRepresentation < Google::Apis::Core::JsonRepresentation
          
        end
        
        class PositionRepresentation < Google::Apis::Core::JsonRepresentation
          
        end
      end
      
      class AclentryResourceRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class VideostreamRepresentation < Google::Apis::Core::JsonRepresentation
        
      end

      # @private
      class AclRepresentation < Google::Apis::Core::JsonRepresentation
        
        property :description, as: 'description'
        property :domain_restricted, as: 'domainRestricted'
        collection :items, as: 'items', class: Google::Apis::PlusDomainsV1::AclentryResource, decorator: Google::Apis::PlusDomainsV1::AclentryResourceRepresentation
        
        
        property :kind, as: 'kind'
      end

      # @private
      class ActivityRepresentation < Google::Apis::Core::JsonRepresentation
        class ActorRepresentation < Google::Apis::Core::JsonRepresentation; end
        class ObjectRepresentation < Google::Apis::Core::JsonRepresentation; end
        class ProviderRepresentation < Google::Apis::Core::JsonRepresentation; end
        
        property :access, as: 'access', class: Google::Apis::PlusDomainsV1::Acl, decorator: Google::Apis::PlusDomainsV1::AclRepresentation
        
        property :actor, as: 'actor', class: Google::Apis::PlusDomainsV1::Activity::Actor, decorator: Google::Apis::PlusDomainsV1::ActivityRepresentation::ActorRepresentation
        
        property :address, as: 'address'
        property :annotation, as: 'annotation'
        property :crosspost_source, as: 'crosspostSource'
        property :etag, as: 'etag'
        property :geocode, as: 'geocode'
        property :id, as: 'id'
        property :kind, as: 'kind'
        property :location, as: 'location', class: Google::Apis::PlusDomainsV1::Place, decorator: Google::Apis::PlusDomainsV1::PlaceRepresentation
        
        property :object, as: 'object', class: Google::Apis::PlusDomainsV1::Activity::Object, decorator: Google::Apis::PlusDomainsV1::ActivityRepresentation::ObjectRepresentation
        
        property :place_id, as: 'placeId'
        property :place_name, as: 'placeName'
        property :provider, as: 'provider', class: Google::Apis::PlusDomainsV1::Activity::Provider, decorator: Google::Apis::PlusDomainsV1::ActivityRepresentation::ProviderRepresentation
        
        property :published, as: 'published', type: DateTime
        property :radius, as: 'radius'
        property :title, as: 'title'
        property :updated, as: 'updated', type: DateTime
        property :url, as: 'url'
        property :verb, as: 'verb'
        
        
        # @private
        class ActorRepresentation < Google::Apis::Core::JsonRepresentation
          class ImageRepresentation < Google::Apis::Core::JsonRepresentation; end
          class NameRepresentation < Google::Apis::Core::JsonRepresentation; end
          
          property :display_name, as: 'displayName'
          property :id, as: 'id'
          property :image, as: 'image', class: Google::Apis::PlusDomainsV1::Activity::Actor::Image, decorator: Google::Apis::PlusDomainsV1::ActivityRepresentation::ActorRepresentation::ImageRepresentation
          
          property :name, as: 'name', class: Google::Apis::PlusDomainsV1::Activity::Actor::Name, decorator: Google::Apis::PlusDomainsV1::ActivityRepresentation::ActorRepresentation::NameRepresentation
          
          property :url, as: 'url'
          
          
          # @private
          class ImageRepresentation < Google::Apis::Core::JsonRepresentation
            
            property :url, as: 'url'
          end
          
          # @private
          class NameRepresentation < Google::Apis::Core::JsonRepresentation
            
            property :family_name, as: 'familyName'
            property :given_name, as: 'givenName'
          end
        end
        
        # @private
        class ObjectRepresentation < Google::Apis::Core::JsonRepresentation
          class ActorRepresentation < Google::Apis::Core::JsonRepresentation; end
          class AttachmentRepresentation < Google::Apis::Core::JsonRepresentation; end
          class PlusonersRepresentation < Google::Apis::Core::JsonRepresentation; end
          class RepliesRepresentation < Google::Apis::Core::JsonRepresentation; end
          class ResharersRepresentation < Google::Apis::Core::JsonRepresentation; end
          class StatusForViewerRepresentation < Google::Apis::Core::JsonRepresentation; end
          
          property :actor, as: 'actor', class: Google::Apis::PlusDomainsV1::Activity::Object::Actor, decorator: Google::Apis::PlusDomainsV1::ActivityRepresentation::ObjectRepresentation::ActorRepresentation
          
          collection :attachments, as: 'attachments', class: Google::Apis::PlusDomainsV1::Activity::Object::Attachment, decorator: Google::Apis::PlusDomainsV1::ActivityRepresentation::ObjectRepresentation::AttachmentRepresentation
          
          
          property :content, as: 'content'
          property :id, as: 'id'
          property :object_type, as: 'objectType'
          property :original_content, as: 'originalContent'
          property :plusoners, as: 'plusoners', class: Google::Apis::PlusDomainsV1::Activity::Object::Plusoners, decorator: Google::Apis::PlusDomainsV1::ActivityRepresentation::ObjectRepresentation::PlusonersRepresentation
          
          property :replies, as: 'replies', class: Google::Apis::PlusDomainsV1::Activity::Object::Replies, decorator: Google::Apis::PlusDomainsV1::ActivityRepresentation::ObjectRepresentation::RepliesRepresentation
          
          property :resharers, as: 'resharers', class: Google::Apis::PlusDomainsV1::Activity::Object::Resharers, decorator: Google::Apis::PlusDomainsV1::ActivityRepresentation::ObjectRepresentation::ResharersRepresentation
          
          property :status_for_viewer, as: 'statusForViewer', class: Google::Apis::PlusDomainsV1::Activity::Object::StatusForViewer, decorator: Google::Apis::PlusDomainsV1::ActivityRepresentation::ObjectRepresentation::StatusForViewerRepresentation
          
          property :url, as: 'url'
          
          
          # @private
          class ActorRepresentation < Google::Apis::Core::JsonRepresentation
            class ImageRepresentation < Google::Apis::Core::JsonRepresentation; end
            
            property :display_name, as: 'displayName'
            property :id, as: 'id'
            property :image, as: 'image', class: Google::Apis::PlusDomainsV1::Activity::Object::Actor::Image, decorator: Google::Apis::PlusDomainsV1::ActivityRepresentation::ObjectRepresentation::ActorRepresentation::ImageRepresentation
            
            property :url, as: 'url'
            
            
            # @private
            class ImageRepresentation < Google::Apis::Core::JsonRepresentation
              
              property :url, as: 'url'
            end
          end
          
          # @private
          class AttachmentRepresentation < Google::Apis::Core::JsonRepresentation
            class EmbedRepresentation < Google::Apis::Core::JsonRepresentation; end
            class FullImageRepresentation < Google::Apis::Core::JsonRepresentation; end
            class ImageRepresentation < Google::Apis::Core::JsonRepresentation; end
            class PreviewThumbnailRepresentation < Google::Apis::Core::JsonRepresentation; end
            class ThumbnailRepresentation < Google::Apis::Core::JsonRepresentation; end
            
            property :content, as: 'content'
            property :display_name, as: 'displayName'
            property :embed, as: 'embed', class: Google::Apis::PlusDomainsV1::Activity::Object::Attachment::Embed, decorator: Google::Apis::PlusDomainsV1::ActivityRepresentation::ObjectRepresentation::AttachmentRepresentation::EmbedRepresentation
            
            property :full_image, as: 'fullImage', class: Google::Apis::PlusDomainsV1::Activity::Object::Attachment::FullImage, decorator: Google::Apis::PlusDomainsV1::ActivityRepresentation::ObjectRepresentation::AttachmentRepresentation::FullImageRepresentation
            
            property :id, as: 'id'
            property :image, as: 'image', class: Google::Apis::PlusDomainsV1::Activity::Object::Attachment::Image, decorator: Google::Apis::PlusDomainsV1::ActivityRepresentation::ObjectRepresentation::AttachmentRepresentation::ImageRepresentation
            
            property :object_type, as: 'objectType'
            collection :preview_thumbnails, as: 'previewThumbnails', class: Google::Apis::PlusDomainsV1::Activity::Object::Attachment::PreviewThumbnail, decorator: Google::Apis::PlusDomainsV1::ActivityRepresentation::ObjectRepresentation::AttachmentRepresentation::PreviewThumbnailRepresentation
            
            
            collection :thumbnails, as: 'thumbnails', class: Google::Apis::PlusDomainsV1::Activity::Object::Attachment::Thumbnail, decorator: Google::Apis::PlusDomainsV1::ActivityRepresentation::ObjectRepresentation::AttachmentRepresentation::ThumbnailRepresentation
            
            
            property :url, as: 'url'
            
            
            # @private
            class EmbedRepresentation < Google::Apis::Core::JsonRepresentation
              
              property :type, as: 'type'
              property :url, as: 'url'
            end
            
            # @private
            class FullImageRepresentation < Google::Apis::Core::JsonRepresentation
              
              property :height, as: 'height'
              property :type, as: 'type'
              property :url, as: 'url'
              property :width, as: 'width'
            end
            
            # @private
            class ImageRepresentation < Google::Apis::Core::JsonRepresentation
              
              property :height, as: 'height'
              property :type, as: 'type'
              property :url, as: 'url'
              property :width, as: 'width'
            end
            
            # @private
            class PreviewThumbnailRepresentation < Google::Apis::Core::JsonRepresentation
              
              property :url, as: 'url'
            end
            
            # @private
            class ThumbnailRepresentation < Google::Apis::Core::JsonRepresentation
              class ImageRepresentation < Google::Apis::Core::JsonRepresentation; end
              
              property :description, as: 'description'
              property :image, as: 'image', class: Google::Apis::PlusDomainsV1::Activity::Object::Attachment::Thumbnail::Image, decorator: Google::Apis::PlusDomainsV1::ActivityRepresentation::ObjectRepresentation::AttachmentRepresentation::ThumbnailRepresentation::ImageRepresentation
              
              property :url, as: 'url'
              
              
              # @private
              class ImageRepresentation < Google::Apis::Core::JsonRepresentation
                
                property :height, as: 'height'
                property :type, as: 'type'
                property :url, as: 'url'
                property :width, as: 'width'
              end
            end
          end
          
          # @private
          class PlusonersRepresentation < Google::Apis::Core::JsonRepresentation
            
            property :self_link, as: 'selfLink'
            property :total_items, as: 'totalItems'
          end
          
          # @private
          class RepliesRepresentation < Google::Apis::Core::JsonRepresentation
            
            property :self_link, as: 'selfLink'
            property :total_items, as: 'totalItems'
          end
          
          # @private
          class ResharersRepresentation < Google::Apis::Core::JsonRepresentation
            
            property :self_link, as: 'selfLink'
            property :total_items, as: 'totalItems'
          end
          
          # @private
          class StatusForViewerRepresentation < Google::Apis::Core::JsonRepresentation
            
            property :can_comment, as: 'canComment'
            property :can_plusone, as: 'canPlusone'
            property :can_update, as: 'canUpdate'
            property :is_plus_oned, as: 'isPlusOned'
            property :resharing_disabled, as: 'resharingDisabled'
          end
        end
        
        # @private
        class ProviderRepresentation < Google::Apis::Core::JsonRepresentation
          
          property :title, as: 'title'
        end
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
        class PeopleRepresentation < Google::Apis::Core::JsonRepresentation; end
        
        property :description, as: 'description'
        property :display_name, as: 'displayName'
        property :etag, as: 'etag'
        property :id, as: 'id'
        property :kind, as: 'kind'
        property :people, as: 'people', class: Google::Apis::PlusDomainsV1::Circle::People, decorator: Google::Apis::PlusDomainsV1::CircleRepresentation::PeopleRepresentation
        
        property :self_link, as: 'selfLink'
        
        
        # @private
        class PeopleRepresentation < Google::Apis::Core::JsonRepresentation
          
          property :total_items, as: 'totalItems'
        end
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
        class ActorRepresentation < Google::Apis::Core::JsonRepresentation; end
        class InReplyToRepresentation < Google::Apis::Core::JsonRepresentation; end
        class ObjectRepresentation < Google::Apis::Core::JsonRepresentation; end
        class PlusonersRepresentation < Google::Apis::Core::JsonRepresentation; end
        
        property :actor, as: 'actor', class: Google::Apis::PlusDomainsV1::Comment::Actor, decorator: Google::Apis::PlusDomainsV1::CommentRepresentation::ActorRepresentation
        
        property :etag, as: 'etag'
        property :id, as: 'id'
        collection :in_reply_to, as: 'inReplyTo', class: Google::Apis::PlusDomainsV1::Comment::InReplyTo, decorator: Google::Apis::PlusDomainsV1::CommentRepresentation::InReplyToRepresentation
        
        
        property :kind, as: 'kind'
        property :object, as: 'object', class: Google::Apis::PlusDomainsV1::Comment::Object, decorator: Google::Apis::PlusDomainsV1::CommentRepresentation::ObjectRepresentation
        
        property :plusoners, as: 'plusoners', class: Google::Apis::PlusDomainsV1::Comment::Plusoners, decorator: Google::Apis::PlusDomainsV1::CommentRepresentation::PlusonersRepresentation
        
        property :published, as: 'published', type: DateTime
        property :self_link, as: 'selfLink'
        property :updated, as: 'updated', type: DateTime
        property :verb, as: 'verb'
        
        
        # @private
        class ActorRepresentation < Google::Apis::Core::JsonRepresentation
          class ImageRepresentation < Google::Apis::Core::JsonRepresentation; end
          
          property :display_name, as: 'displayName'
          property :id, as: 'id'
          property :image, as: 'image', class: Google::Apis::PlusDomainsV1::Comment::Actor::Image, decorator: Google::Apis::PlusDomainsV1::CommentRepresentation::ActorRepresentation::ImageRepresentation
          
          property :url, as: 'url'
          
          
          # @private
          class ImageRepresentation < Google::Apis::Core::JsonRepresentation
            
            property :url, as: 'url'
          end
        end
        
        # @private
        class InReplyToRepresentation < Google::Apis::Core::JsonRepresentation
          
          property :id, as: 'id'
          property :url, as: 'url'
        end
        
        # @private
        class ObjectRepresentation < Google::Apis::Core::JsonRepresentation
          
          property :content, as: 'content'
          property :object_type, as: 'objectType'
          property :original_content, as: 'originalContent'
        end
        
        # @private
        class PlusonersRepresentation < Google::Apis::Core::JsonRepresentation
          
          property :total_items, as: 'totalItems'
        end
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
        class AuthorRepresentation < Google::Apis::Core::JsonRepresentation; end
        class ExifRepresentation < Google::Apis::Core::JsonRepresentation; end
        
        property :author, as: 'author', class: Google::Apis::PlusDomainsV1::Media::Author, decorator: Google::Apis::PlusDomainsV1::MediaRepresentation::AuthorRepresentation
        
        property :display_name, as: 'displayName'
        property :etag, as: 'etag'
        property :exif, as: 'exif', class: Google::Apis::PlusDomainsV1::Media::Exif, decorator: Google::Apis::PlusDomainsV1::MediaRepresentation::ExifRepresentation
        
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
        
        
        # @private
        class AuthorRepresentation < Google::Apis::Core::JsonRepresentation
          class ImageRepresentation < Google::Apis::Core::JsonRepresentation; end
          
          property :display_name, as: 'displayName'
          property :id, as: 'id'
          property :image, as: 'image', class: Google::Apis::PlusDomainsV1::Media::Author::Image, decorator: Google::Apis::PlusDomainsV1::MediaRepresentation::AuthorRepresentation::ImageRepresentation
          
          property :url, as: 'url'
          
          
          # @private
          class ImageRepresentation < Google::Apis::Core::JsonRepresentation
            
            property :url, as: 'url'
          end
        end
        
        # @private
        class ExifRepresentation < Google::Apis::Core::JsonRepresentation
          
          property :time, as: 'time', type: DateTime
        end
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
        class CoverRepresentation < Google::Apis::Core::JsonRepresentation; end
        class EmailRepresentation < Google::Apis::Core::JsonRepresentation; end
        class ImageRepresentation < Google::Apis::Core::JsonRepresentation; end
        class NameRepresentation < Google::Apis::Core::JsonRepresentation; end
        class OrganizationRepresentation < Google::Apis::Core::JsonRepresentation; end
        class PlacesLivedRepresentation < Google::Apis::Core::JsonRepresentation; end
        class UrlRepresentation < Google::Apis::Core::JsonRepresentation; end
        
        property :about_me, as: 'aboutMe'
        property :birthday, as: 'birthday'
        property :bragging_rights, as: 'braggingRights'
        property :circled_by_count, as: 'circledByCount'
        property :cover, as: 'cover', class: Google::Apis::PlusDomainsV1::Person::Cover, decorator: Google::Apis::PlusDomainsV1::PersonRepresentation::CoverRepresentation
        
        property :current_location, as: 'currentLocation'
        property :display_name, as: 'displayName'
        property :domain, as: 'domain'
        collection :emails, as: 'emails', class: Google::Apis::PlusDomainsV1::Person::Email, decorator: Google::Apis::PlusDomainsV1::PersonRepresentation::EmailRepresentation
        
        
        property :etag, as: 'etag'
        property :gender, as: 'gender'
        property :id, as: 'id'
        property :image, as: 'image', class: Google::Apis::PlusDomainsV1::Person::Image, decorator: Google::Apis::PlusDomainsV1::PersonRepresentation::ImageRepresentation
        
        property :is_plus_user, as: 'isPlusUser'
        property :kind, as: 'kind'
        property :name, as: 'name', class: Google::Apis::PlusDomainsV1::Person::Name, decorator: Google::Apis::PlusDomainsV1::PersonRepresentation::NameRepresentation
        
        property :nickname, as: 'nickname'
        property :object_type, as: 'objectType'
        property :occupation, as: 'occupation'
        collection :organizations, as: 'organizations', class: Google::Apis::PlusDomainsV1::Person::Organization, decorator: Google::Apis::PlusDomainsV1::PersonRepresentation::OrganizationRepresentation
        
        
        collection :places_lived, as: 'placesLived', class: Google::Apis::PlusDomainsV1::Person::PlacesLived, decorator: Google::Apis::PlusDomainsV1::PersonRepresentation::PlacesLivedRepresentation
        
        
        property :plus_one_count, as: 'plusOneCount'
        property :relationship_status, as: 'relationshipStatus'
        property :skills, as: 'skills'
        property :tagline, as: 'tagline'
        property :url, as: 'url'
        collection :urls, as: 'urls', class: Google::Apis::PlusDomainsV1::Person::Url, decorator: Google::Apis::PlusDomainsV1::PersonRepresentation::UrlRepresentation
        
        
        property :verified, as: 'verified'
        
        
        # @private
        class CoverRepresentation < Google::Apis::Core::JsonRepresentation
          class CoverInfoRepresentation < Google::Apis::Core::JsonRepresentation; end
          class CoverPhotoRepresentation < Google::Apis::Core::JsonRepresentation; end
          
          property :cover_info, as: 'coverInfo', class: Google::Apis::PlusDomainsV1::Person::Cover::CoverInfo, decorator: Google::Apis::PlusDomainsV1::PersonRepresentation::CoverRepresentation::CoverInfoRepresentation
          
          property :cover_photo, as: 'coverPhoto', class: Google::Apis::PlusDomainsV1::Person::Cover::CoverPhoto, decorator: Google::Apis::PlusDomainsV1::PersonRepresentation::CoverRepresentation::CoverPhotoRepresentation
          
          property :layout, as: 'layout'
          
          
          # @private
          class CoverInfoRepresentation < Google::Apis::Core::JsonRepresentation
            
            property :left_image_offset, as: 'leftImageOffset'
            property :top_image_offset, as: 'topImageOffset'
          end
          
          # @private
          class CoverPhotoRepresentation < Google::Apis::Core::JsonRepresentation
            
            property :height, as: 'height'
            property :url, as: 'url'
            property :width, as: 'width'
          end
        end
        
        # @private
        class EmailRepresentation < Google::Apis::Core::JsonRepresentation
          
          property :type, as: 'type'
          property :value, as: 'value'
        end
        
        # @private
        class ImageRepresentation < Google::Apis::Core::JsonRepresentation
          
          property :is_default, as: 'isDefault'
          property :url, as: 'url'
        end
        
        # @private
        class NameRepresentation < Google::Apis::Core::JsonRepresentation
          
          property :family_name, as: 'familyName'
          property :formatted, as: 'formatted'
          property :given_name, as: 'givenName'
          property :honorific_prefix, as: 'honorificPrefix'
          property :honorific_suffix, as: 'honorificSuffix'
          property :middle_name, as: 'middleName'
        end
        
        # @private
        class OrganizationRepresentation < Google::Apis::Core::JsonRepresentation
          
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
        
        # @private
        class PlacesLivedRepresentation < Google::Apis::Core::JsonRepresentation
          
          property :primary, as: 'primary'
          property :value, as: 'value'
        end
        
        # @private
        class UrlRepresentation < Google::Apis::Core::JsonRepresentation
          
          property :label, as: 'label'
          property :type, as: 'type'
          property :value, as: 'value'
        end
      end

      # @private
      class PlaceRepresentation < Google::Apis::Core::JsonRepresentation
        class AddressRepresentation < Google::Apis::Core::JsonRepresentation; end
        class PositionRepresentation < Google::Apis::Core::JsonRepresentation; end
        
        property :address, as: 'address', class: Google::Apis::PlusDomainsV1::Place::Address, decorator: Google::Apis::PlusDomainsV1::PlaceRepresentation::AddressRepresentation
        
        property :display_name, as: 'displayName'
        property :id, as: 'id'
        property :kind, as: 'kind'
        property :position, as: 'position', class: Google::Apis::PlusDomainsV1::Place::Position, decorator: Google::Apis::PlusDomainsV1::PlaceRepresentation::PositionRepresentation
        
        
        
        # @private
        class AddressRepresentation < Google::Apis::Core::JsonRepresentation
          
          property :formatted, as: 'formatted'
        end
        
        # @private
        class PositionRepresentation < Google::Apis::Core::JsonRepresentation
          
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
