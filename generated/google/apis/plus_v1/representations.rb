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
    module PlusV1
      
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
        end
        
        class ProviderRepresentation < Google::Apis::Core::JsonRepresentation
          
        end
      end
      
      class ActivityFeedRepresentation < Google::Apis::Core::JsonRepresentation
        
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
      
      class ItemScopeRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class MomentRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class MomentsFeedRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class PeopleFeedRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class PersonRepresentation < Google::Apis::Core::JsonRepresentation
        
        class AgeRangeRepresentation < Google::Apis::Core::JsonRepresentation
          
        end
        
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

      # @private
      class AclRepresentation < Google::Apis::Core::JsonRepresentation
        property :description, as: 'description'
        collection :items, as: 'items', class: Google::Apis::PlusV1::AclentryResource, decorator: Google::Apis::PlusV1::AclentryResourceRepresentation
        
        
        property :kind, as: 'kind'
      end

      # @private
      class ActivityRepresentation < Google::Apis::Core::JsonRepresentation
        class ActorRepresentation < Google::Apis::Core::JsonRepresentation; end
        class ObjectRepresentation < Google::Apis::Core::JsonRepresentation; end
        class ProviderRepresentation < Google::Apis::Core::JsonRepresentation; end
        property :access, as: 'access', class: Google::Apis::PlusV1::Acl, decorator: Google::Apis::PlusV1::AclRepresentation
        
        property :actor, as: 'actor', class: Google::Apis::PlusV1::Activity::Actor, decorator: Google::Apis::PlusV1::ActivityRepresentation::ActorRepresentation
        
        property :address, as: 'address'
        property :annotation, as: 'annotation'
        property :crosspost_source, as: 'crosspostSource'
        property :etag, as: 'etag'
        property :geocode, as: 'geocode'
        property :id, as: 'id'
        property :kind, as: 'kind'
        property :location, as: 'location', class: Google::Apis::PlusV1::Place, decorator: Google::Apis::PlusV1::PlaceRepresentation
        
        property :object, as: 'object', class: Google::Apis::PlusV1::Activity::Object, decorator: Google::Apis::PlusV1::ActivityRepresentation::ObjectRepresentation
        
        property :place_id, as: 'placeId'
        property :place_name, as: 'placeName'
        property :provider, as: 'provider', class: Google::Apis::PlusV1::Activity::Provider, decorator: Google::Apis::PlusV1::ActivityRepresentation::ProviderRepresentation
        
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
          property :image, as: 'image', class: Google::Apis::PlusV1::Activity::Actor::Image, decorator: Google::Apis::PlusV1::ActivityRepresentation::ActorRepresentation::ImageRepresentation
          
          property :name, as: 'name', class: Google::Apis::PlusV1::Activity::Actor::Name, decorator: Google::Apis::PlusV1::ActivityRepresentation::ActorRepresentation::NameRepresentation
          
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
          property :actor, as: 'actor', class: Google::Apis::PlusV1::Activity::Object::Actor, decorator: Google::Apis::PlusV1::ActivityRepresentation::ObjectRepresentation::ActorRepresentation
          
          collection :attachments, as: 'attachments', class: Google::Apis::PlusV1::Activity::Object::Attachment, decorator: Google::Apis::PlusV1::ActivityRepresentation::ObjectRepresentation::AttachmentRepresentation
          
          
          property :content, as: 'content'
          property :id, as: 'id'
          property :object_type, as: 'objectType'
          property :original_content, as: 'originalContent'
          property :plusoners, as: 'plusoners', class: Google::Apis::PlusV1::Activity::Object::Plusoners, decorator: Google::Apis::PlusV1::ActivityRepresentation::ObjectRepresentation::PlusonersRepresentation
          
          property :replies, as: 'replies', class: Google::Apis::PlusV1::Activity::Object::Replies, decorator: Google::Apis::PlusV1::ActivityRepresentation::ObjectRepresentation::RepliesRepresentation
          
          property :resharers, as: 'resharers', class: Google::Apis::PlusV1::Activity::Object::Resharers, decorator: Google::Apis::PlusV1::ActivityRepresentation::ObjectRepresentation::ResharersRepresentation
          
          property :url, as: 'url'
          
          # @private
          class ActorRepresentation < Google::Apis::Core::JsonRepresentation
            class ImageRepresentation < Google::Apis::Core::JsonRepresentation; end
            property :display_name, as: 'displayName'
            property :id, as: 'id'
            property :image, as: 'image', class: Google::Apis::PlusV1::Activity::Object::Actor::Image, decorator: Google::Apis::PlusV1::ActivityRepresentation::ObjectRepresentation::ActorRepresentation::ImageRepresentation
            
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
            class ThumbnailRepresentation < Google::Apis::Core::JsonRepresentation; end
            property :content, as: 'content'
            property :display_name, as: 'displayName'
            property :embed, as: 'embed', class: Google::Apis::PlusV1::Activity::Object::Attachment::Embed, decorator: Google::Apis::PlusV1::ActivityRepresentation::ObjectRepresentation::AttachmentRepresentation::EmbedRepresentation
            
            property :full_image, as: 'fullImage', class: Google::Apis::PlusV1::Activity::Object::Attachment::FullImage, decorator: Google::Apis::PlusV1::ActivityRepresentation::ObjectRepresentation::AttachmentRepresentation::FullImageRepresentation
            
            property :id, as: 'id'
            property :image, as: 'image', class: Google::Apis::PlusV1::Activity::Object::Attachment::Image, decorator: Google::Apis::PlusV1::ActivityRepresentation::ObjectRepresentation::AttachmentRepresentation::ImageRepresentation
            
            property :object_type, as: 'objectType'
            collection :thumbnails, as: 'thumbnails', class: Google::Apis::PlusV1::Activity::Object::Attachment::Thumbnail, decorator: Google::Apis::PlusV1::ActivityRepresentation::ObjectRepresentation::AttachmentRepresentation::ThumbnailRepresentation
            
            
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
            class ThumbnailRepresentation < Google::Apis::Core::JsonRepresentation
              class ImageRepresentation < Google::Apis::Core::JsonRepresentation; end
              property :description, as: 'description'
              property :image, as: 'image', class: Google::Apis::PlusV1::Activity::Object::Attachment::Thumbnail::Image, decorator: Google::Apis::PlusV1::ActivityRepresentation::ObjectRepresentation::AttachmentRepresentation::ThumbnailRepresentation::ImageRepresentation
              
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
        collection :items, as: 'items', class: Google::Apis::PlusV1::Activity, decorator: Google::Apis::PlusV1::ActivityRepresentation
        
        
        property :kind, as: 'kind'
        property :next_link, as: 'nextLink'
        property :next_page_token, as: 'nextPageToken'
        property :self_link, as: 'selfLink'
        property :title, as: 'title'
        property :updated, as: 'updated', type: DateTime
      end

      # @private
      class CommentRepresentation < Google::Apis::Core::JsonRepresentation
        class ActorRepresentation < Google::Apis::Core::JsonRepresentation; end
        class InReplyToRepresentation < Google::Apis::Core::JsonRepresentation; end
        class ObjectRepresentation < Google::Apis::Core::JsonRepresentation; end
        class PlusonersRepresentation < Google::Apis::Core::JsonRepresentation; end
        property :actor, as: 'actor', class: Google::Apis::PlusV1::Comment::Actor, decorator: Google::Apis::PlusV1::CommentRepresentation::ActorRepresentation
        
        property :etag, as: 'etag'
        property :id, as: 'id'
        collection :in_reply_to, as: 'inReplyTo', class: Google::Apis::PlusV1::Comment::InReplyTo, decorator: Google::Apis::PlusV1::CommentRepresentation::InReplyToRepresentation
        
        
        property :kind, as: 'kind'
        property :object, as: 'object', class: Google::Apis::PlusV1::Comment::Object, decorator: Google::Apis::PlusV1::CommentRepresentation::ObjectRepresentation
        
        property :plusoners, as: 'plusoners', class: Google::Apis::PlusV1::Comment::Plusoners, decorator: Google::Apis::PlusV1::CommentRepresentation::PlusonersRepresentation
        
        property :published, as: 'published', type: DateTime
        property :self_link, as: 'selfLink'
        property :updated, as: 'updated', type: DateTime
        property :verb, as: 'verb'
        
        # @private
        class ActorRepresentation < Google::Apis::Core::JsonRepresentation
          class ImageRepresentation < Google::Apis::Core::JsonRepresentation; end
          property :display_name, as: 'displayName'
          property :id, as: 'id'
          property :image, as: 'image', class: Google::Apis::PlusV1::Comment::Actor::Image, decorator: Google::Apis::PlusV1::CommentRepresentation::ActorRepresentation::ImageRepresentation
          
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
        collection :items, as: 'items', class: Google::Apis::PlusV1::Comment, decorator: Google::Apis::PlusV1::CommentRepresentation
        
        
        property :kind, as: 'kind'
        property :next_link, as: 'nextLink'
        property :next_page_token, as: 'nextPageToken'
        property :title, as: 'title'
        property :updated, as: 'updated', type: DateTime
      end

      # @private
      class ItemScopeRepresentation < Google::Apis::Core::JsonRepresentation
        property :about, as: 'about', class: Google::Apis::PlusV1::ItemScope, decorator: Google::Apis::PlusV1::ItemScopeRepresentation
        
        collection :additional_name, as: 'additionalName'
        
        property :address, as: 'address', class: Google::Apis::PlusV1::ItemScope, decorator: Google::Apis::PlusV1::ItemScopeRepresentation
        
        property :address_country, as: 'addressCountry'
        property :address_locality, as: 'addressLocality'
        property :address_region, as: 'addressRegion'
        collection :associated_media, as: 'associated_media', class: Google::Apis::PlusV1::ItemScope, decorator: Google::Apis::PlusV1::ItemScopeRepresentation
        
        
        property :attendee_count, as: 'attendeeCount'
        collection :attendees, as: 'attendees', class: Google::Apis::PlusV1::ItemScope, decorator: Google::Apis::PlusV1::ItemScopeRepresentation
        
        
        property :audio, as: 'audio', class: Google::Apis::PlusV1::ItemScope, decorator: Google::Apis::PlusV1::ItemScopeRepresentation
        
        collection :author, as: 'author', class: Google::Apis::PlusV1::ItemScope, decorator: Google::Apis::PlusV1::ItemScopeRepresentation
        
        
        property :best_rating, as: 'bestRating'
        property :birth_date, as: 'birthDate'
        property :by_artist, as: 'byArtist', class: Google::Apis::PlusV1::ItemScope, decorator: Google::Apis::PlusV1::ItemScopeRepresentation
        
        property :caption, as: 'caption'
        property :content_size, as: 'contentSize'
        property :content_url, as: 'contentUrl'
        collection :contributor, as: 'contributor', class: Google::Apis::PlusV1::ItemScope, decorator: Google::Apis::PlusV1::ItemScopeRepresentation
        
        
        property :date_created, as: 'dateCreated'
        property :date_modified, as: 'dateModified'
        property :date_published, as: 'datePublished'
        property :description, as: 'description'
        property :duration, as: 'duration'
        property :embed_url, as: 'embedUrl'
        property :end_date, as: 'endDate'
        property :family_name, as: 'familyName'
        property :gender, as: 'gender'
        property :geo, as: 'geo', class: Google::Apis::PlusV1::ItemScope, decorator: Google::Apis::PlusV1::ItemScopeRepresentation
        
        property :given_name, as: 'givenName'
        property :height, as: 'height'
        property :id, as: 'id'
        property :image, as: 'image'
        property :in_album, as: 'inAlbum', class: Google::Apis::PlusV1::ItemScope, decorator: Google::Apis::PlusV1::ItemScopeRepresentation
        
        property :kind, as: 'kind'
        property :latitude, as: 'latitude'
        property :location, as: 'location', class: Google::Apis::PlusV1::ItemScope, decorator: Google::Apis::PlusV1::ItemScopeRepresentation
        
        property :longitude, as: 'longitude'
        property :name, as: 'name'
        property :part_of_tv_series, as: 'partOfTVSeries', class: Google::Apis::PlusV1::ItemScope, decorator: Google::Apis::PlusV1::ItemScopeRepresentation
        
        collection :performers, as: 'performers', class: Google::Apis::PlusV1::ItemScope, decorator: Google::Apis::PlusV1::ItemScopeRepresentation
        
        
        property :player_type, as: 'playerType'
        property :post_office_box_number, as: 'postOfficeBoxNumber'
        property :postal_code, as: 'postalCode'
        property :rating_value, as: 'ratingValue'
        property :review_rating, as: 'reviewRating', class: Google::Apis::PlusV1::ItemScope, decorator: Google::Apis::PlusV1::ItemScopeRepresentation
        
        property :start_date, as: 'startDate'
        property :street_address, as: 'streetAddress'
        property :text, as: 'text'
        property :thumbnail, as: 'thumbnail', class: Google::Apis::PlusV1::ItemScope, decorator: Google::Apis::PlusV1::ItemScopeRepresentation
        
        property :thumbnail_url, as: 'thumbnailUrl'
        property :ticker_symbol, as: 'tickerSymbol'
        property :type, as: 'type'
        property :url, as: 'url'
        property :width, as: 'width'
        property :worst_rating, as: 'worstRating'
      end

      # @private
      class MomentRepresentation < Google::Apis::Core::JsonRepresentation
        property :id, as: 'id'
        property :kind, as: 'kind'
        property :object, as: 'object', class: Google::Apis::PlusV1::ItemScope, decorator: Google::Apis::PlusV1::ItemScopeRepresentation
        
        property :result, as: 'result', class: Google::Apis::PlusV1::ItemScope, decorator: Google::Apis::PlusV1::ItemScopeRepresentation
        
        property :start_date, as: 'startDate', type: DateTime
        property :target, as: 'target', class: Google::Apis::PlusV1::ItemScope, decorator: Google::Apis::PlusV1::ItemScopeRepresentation
        
        property :type, as: 'type'
      end

      # @private
      class MomentsFeedRepresentation < Google::Apis::Core::JsonRepresentation
        property :etag, as: 'etag'
        collection :items, as: 'items', class: Google::Apis::PlusV1::Moment, decorator: Google::Apis::PlusV1::MomentRepresentation
        
        
        property :kind, as: 'kind'
        property :next_link, as: 'nextLink'
        property :next_page_token, as: 'nextPageToken'
        property :self_link, as: 'selfLink'
        property :title, as: 'title'
        property :updated, as: 'updated', type: DateTime
      end

      # @private
      class PeopleFeedRepresentation < Google::Apis::Core::JsonRepresentation
        property :etag, as: 'etag'
        collection :items, as: 'items', class: Google::Apis::PlusV1::Person, decorator: Google::Apis::PlusV1::PersonRepresentation
        
        
        property :kind, as: 'kind'
        property :next_page_token, as: 'nextPageToken'
        property :self_link, as: 'selfLink'
        property :title, as: 'title'
        property :total_items, as: 'totalItems'
      end

      # @private
      class PersonRepresentation < Google::Apis::Core::JsonRepresentation
        class AgeRangeRepresentation < Google::Apis::Core::JsonRepresentation; end
        class CoverRepresentation < Google::Apis::Core::JsonRepresentation; end
        class EmailRepresentation < Google::Apis::Core::JsonRepresentation; end
        class ImageRepresentation < Google::Apis::Core::JsonRepresentation; end
        class NameRepresentation < Google::Apis::Core::JsonRepresentation; end
        class OrganizationRepresentation < Google::Apis::Core::JsonRepresentation; end
        class PlacesLivedRepresentation < Google::Apis::Core::JsonRepresentation; end
        class UrlRepresentation < Google::Apis::Core::JsonRepresentation; end
        property :about_me, as: 'aboutMe'
        property :age_range, as: 'ageRange', class: Google::Apis::PlusV1::Person::AgeRange, decorator: Google::Apis::PlusV1::PersonRepresentation::AgeRangeRepresentation
        
        property :birthday, as: 'birthday'
        property :bragging_rights, as: 'braggingRights'
        property :circled_by_count, as: 'circledByCount'
        property :cover, as: 'cover', class: Google::Apis::PlusV1::Person::Cover, decorator: Google::Apis::PlusV1::PersonRepresentation::CoverRepresentation
        
        property :current_location, as: 'currentLocation'
        property :display_name, as: 'displayName'
        property :domain, as: 'domain'
        collection :emails, as: 'emails', class: Google::Apis::PlusV1::Person::Email, decorator: Google::Apis::PlusV1::PersonRepresentation::EmailRepresentation
        
        
        property :etag, as: 'etag'
        property :gender, as: 'gender'
        property :id, as: 'id'
        property :image, as: 'image', class: Google::Apis::PlusV1::Person::Image, decorator: Google::Apis::PlusV1::PersonRepresentation::ImageRepresentation
        
        property :is_plus_user, as: 'isPlusUser'
        property :kind, as: 'kind'
        property :language, as: 'language'
        property :name, as: 'name', class: Google::Apis::PlusV1::Person::Name, decorator: Google::Apis::PlusV1::PersonRepresentation::NameRepresentation
        
        property :nickname, as: 'nickname'
        property :object_type, as: 'objectType'
        property :occupation, as: 'occupation'
        collection :organizations, as: 'organizations', class: Google::Apis::PlusV1::Person::Organization, decorator: Google::Apis::PlusV1::PersonRepresentation::OrganizationRepresentation
        
        
        collection :places_lived, as: 'placesLived', class: Google::Apis::PlusV1::Person::PlacesLived, decorator: Google::Apis::PlusV1::PersonRepresentation::PlacesLivedRepresentation
        
        
        property :plus_one_count, as: 'plusOneCount'
        property :relationship_status, as: 'relationshipStatus'
        property :skills, as: 'skills'
        property :tagline, as: 'tagline'
        property :url, as: 'url'
        collection :urls, as: 'urls', class: Google::Apis::PlusV1::Person::Url, decorator: Google::Apis::PlusV1::PersonRepresentation::UrlRepresentation
        
        
        property :verified, as: 'verified'
        
        # @private
        class AgeRangeRepresentation < Google::Apis::Core::JsonRepresentation
          property :max, as: 'max'
          property :min, as: 'min'
        end
        
        # @private
        class CoverRepresentation < Google::Apis::Core::JsonRepresentation
          class CoverInfoRepresentation < Google::Apis::Core::JsonRepresentation; end
          class CoverPhotoRepresentation < Google::Apis::Core::JsonRepresentation; end
          property :cover_info, as: 'coverInfo', class: Google::Apis::PlusV1::Person::Cover::CoverInfo, decorator: Google::Apis::PlusV1::PersonRepresentation::CoverRepresentation::CoverInfoRepresentation
          
          property :cover_photo, as: 'coverPhoto', class: Google::Apis::PlusV1::Person::Cover::CoverPhoto, decorator: Google::Apis::PlusV1::PersonRepresentation::CoverRepresentation::CoverPhotoRepresentation
          
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
        property :address, as: 'address', class: Google::Apis::PlusV1::Place::Address, decorator: Google::Apis::PlusV1::PlaceRepresentation::AddressRepresentation
        
        property :display_name, as: 'displayName'
        property :id, as: 'id'
        property :kind, as: 'kind'
        property :position, as: 'position', class: Google::Apis::PlusV1::Place::Position, decorator: Google::Apis::PlusV1::PlaceRepresentation::PositionRepresentation
        
        
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
    end
  end
end
