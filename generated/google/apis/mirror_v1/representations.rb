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
    module MirrorV1
      
      class AccountRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class AttachmentRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class AttachmentsListResponseRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class AuthTokenRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class CommandRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class ContactRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class ContactsListResponseRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class LocationRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class LocationsListResponseRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class MenuItemRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class MenuValueRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class NotificationRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class NotificationConfigRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class SettingRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class SubscriptionRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class SubscriptionsListResponseRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class TimelineItemRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class TimelineListResponseRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class UserActionRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class UserDataRepresentation < Google::Apis::Core::JsonRepresentation
        
      end

      # @private
      class AccountRepresentation < Google::Apis::Core::JsonRepresentation
        collection :auth_tokens, as: 'authTokens', class: Google::Apis::MirrorV1::AuthToken, decorator: Google::Apis::MirrorV1::AuthTokenRepresentation
        
        
        collection :features, as: 'features'
        
        property :password, as: 'password'
        collection :user_data, as: 'userData', class: Google::Apis::MirrorV1::UserData, decorator: Google::Apis::MirrorV1::UserDataRepresentation
      end

      # @private
      class AttachmentRepresentation < Google::Apis::Core::JsonRepresentation
        property :content_type, as: 'contentType'
        property :content_url, as: 'contentUrl'
        property :id, as: 'id'
        property :is_processing_content, as: 'isProcessingContent'
      end

      # @private
      class AttachmentsListResponseRepresentation < Google::Apis::Core::JsonRepresentation
        collection :items, as: 'items', class: Google::Apis::MirrorV1::Attachment, decorator: Google::Apis::MirrorV1::AttachmentRepresentation
        
        
        property :kind, as: 'kind'
      end

      # @private
      class AuthTokenRepresentation < Google::Apis::Core::JsonRepresentation
        property :auth_token, as: 'authToken'
        property :type, as: 'type'
      end

      # @private
      class CommandRepresentation < Google::Apis::Core::JsonRepresentation
        property :type, as: 'type'
      end

      # @private
      class ContactRepresentation < Google::Apis::Core::JsonRepresentation
        collection :accept_commands, as: 'acceptCommands', class: Google::Apis::MirrorV1::Command, decorator: Google::Apis::MirrorV1::CommandRepresentation
        
        
        collection :accept_types, as: 'acceptTypes'
        
        property :display_name, as: 'displayName'
        property :id, as: 'id'
        collection :image_urls, as: 'imageUrls'
        
        property :kind, as: 'kind'
        property :phone_number, as: 'phoneNumber'
        property :priority, as: 'priority'
        collection :sharing_features, as: 'sharingFeatures'
        
        property :source, as: 'source'
        property :speakable_name, as: 'speakableName'
        property :type, as: 'type'
      end

      # @private
      class ContactsListResponseRepresentation < Google::Apis::Core::JsonRepresentation
        collection :items, as: 'items', class: Google::Apis::MirrorV1::Contact, decorator: Google::Apis::MirrorV1::ContactRepresentation
        
        
        property :kind, as: 'kind'
      end

      # @private
      class LocationRepresentation < Google::Apis::Core::JsonRepresentation
        property :accuracy, as: 'accuracy'
        property :address, as: 'address'
        property :display_name, as: 'displayName'
        property :id, as: 'id'
        property :kind, as: 'kind'
        property :latitude, as: 'latitude'
        property :longitude, as: 'longitude'
        property :timestamp, as: 'timestamp', type: DateTime
      end

      # @private
      class LocationsListResponseRepresentation < Google::Apis::Core::JsonRepresentation
        collection :items, as: 'items', class: Google::Apis::MirrorV1::Location, decorator: Google::Apis::MirrorV1::LocationRepresentation
        
        
        property :kind, as: 'kind'
      end

      # @private
      class MenuItemRepresentation < Google::Apis::Core::JsonRepresentation
        property :action, as: 'action'
        property :contextual_command, as: 'contextual_command'
        property :id, as: 'id'
        property :payload, as: 'payload'
        property :remove_when_selected, as: 'removeWhenSelected'
        collection :values, as: 'values', class: Google::Apis::MirrorV1::MenuValue, decorator: Google::Apis::MirrorV1::MenuValueRepresentation
      end

      # @private
      class MenuValueRepresentation < Google::Apis::Core::JsonRepresentation
        property :display_name, as: 'displayName'
        property :icon_url, as: 'iconUrl'
        property :state, as: 'state'
      end

      # @private
      class NotificationRepresentation < Google::Apis::Core::JsonRepresentation
        property :collection, as: 'collection'
        property :item_id, as: 'itemId'
        property :operation, as: 'operation'
        collection :user_actions, as: 'userActions', class: Google::Apis::MirrorV1::UserAction, decorator: Google::Apis::MirrorV1::UserActionRepresentation
        
        
        property :user_token, as: 'userToken'
        property :verify_token, as: 'verifyToken'
      end

      # @private
      class NotificationConfigRepresentation < Google::Apis::Core::JsonRepresentation
        property :delivery_time, as: 'deliveryTime', type: DateTime
        property :level, as: 'level'
      end

      # @private
      class SettingRepresentation < Google::Apis::Core::JsonRepresentation
        property :id, as: 'id'
        property :kind, as: 'kind'
        property :value, as: 'value'
      end

      # @private
      class SubscriptionRepresentation < Google::Apis::Core::JsonRepresentation
        property :callback_url, as: 'callbackUrl'
        property :collection, as: 'collection'
        property :id, as: 'id'
        property :kind, as: 'kind'
        property :notification, as: 'notification', class: Google::Apis::MirrorV1::Notification, decorator: Google::Apis::MirrorV1::NotificationRepresentation
        
        collection :operation, as: 'operation'
        
        property :updated, as: 'updated', type: DateTime
        property :user_token, as: 'userToken'
        property :verify_token, as: 'verifyToken'
      end

      # @private
      class SubscriptionsListResponseRepresentation < Google::Apis::Core::JsonRepresentation
        collection :items, as: 'items', class: Google::Apis::MirrorV1::Subscription, decorator: Google::Apis::MirrorV1::SubscriptionRepresentation
        
        
        property :kind, as: 'kind'
      end

      # @private
      class TimelineItemRepresentation < Google::Apis::Core::JsonRepresentation
        collection :attachments, as: 'attachments', class: Google::Apis::MirrorV1::Attachment, decorator: Google::Apis::MirrorV1::AttachmentRepresentation
        
        
        property :bundle_id, as: 'bundleId'
        property :canonical_url, as: 'canonicalUrl'
        property :created, as: 'created', type: DateTime
        property :creator, as: 'creator', class: Google::Apis::MirrorV1::Contact, decorator: Google::Apis::MirrorV1::ContactRepresentation
        
        property :display_time, as: 'displayTime', type: DateTime
        property :etag, as: 'etag'
        property :html, as: 'html'
        property :id, as: 'id'
        property :in_reply_to, as: 'inReplyTo'
        property :is_bundle_cover, as: 'isBundleCover'
        property :is_deleted, as: 'isDeleted'
        property :is_pinned, as: 'isPinned'
        property :kind, as: 'kind'
        property :location, as: 'location', class: Google::Apis::MirrorV1::Location, decorator: Google::Apis::MirrorV1::LocationRepresentation
        
        collection :menu_items, as: 'menuItems', class: Google::Apis::MirrorV1::MenuItem, decorator: Google::Apis::MirrorV1::MenuItemRepresentation
        
        
        property :notification, as: 'notification', class: Google::Apis::MirrorV1::NotificationConfig, decorator: Google::Apis::MirrorV1::NotificationConfigRepresentation
        
        property :pin_score, as: 'pinScore'
        collection :recipients, as: 'recipients', class: Google::Apis::MirrorV1::Contact, decorator: Google::Apis::MirrorV1::ContactRepresentation
        
        
        property :self_link, as: 'selfLink'
        property :source_item_id, as: 'sourceItemId'
        property :speakable_text, as: 'speakableText'
        property :speakable_type, as: 'speakableType'
        property :text, as: 'text'
        property :title, as: 'title'
        property :updated, as: 'updated', type: DateTime
      end

      # @private
      class TimelineListResponseRepresentation < Google::Apis::Core::JsonRepresentation
        collection :items, as: 'items', class: Google::Apis::MirrorV1::TimelineItem, decorator: Google::Apis::MirrorV1::TimelineItemRepresentation
        
        
        property :kind, as: 'kind'
        property :next_page_token, as: 'nextPageToken'
      end

      # @private
      class UserActionRepresentation < Google::Apis::Core::JsonRepresentation
        property :payload, as: 'payload'
        property :type, as: 'type'
      end

      # @private
      class UserDataRepresentation < Google::Apis::Core::JsonRepresentation
        property :key, as: 'key'
        property :value, as: 'value'
      end
    end
  end
end
