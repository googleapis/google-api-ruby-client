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
    module WorkspaceeventsV1
      
      class ListSubscriptionsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class NotificationEndpoint
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Operation
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class PayloadOptions
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ReactivateSubscriptionRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Status
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Subscription
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListSubscriptionsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :subscriptions, as: 'subscriptions', class: Google::Apis::WorkspaceeventsV1::Subscription, decorator: Google::Apis::WorkspaceeventsV1::Subscription::Representation
      
        end
      end
      
      class NotificationEndpoint
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :pubsub_topic, as: 'pubsubTopic'
        end
      end
      
      class Operation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :done, as: 'done'
          property :error, as: 'error', class: Google::Apis::WorkspaceeventsV1::Status, decorator: Google::Apis::WorkspaceeventsV1::Status::Representation
      
          hash :metadata, as: 'metadata'
          property :name, as: 'name'
          hash :response, as: 'response'
        end
      end
      
      class PayloadOptions
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :field_mask, as: 'fieldMask'
          property :include_resource, as: 'includeResource'
        end
      end
      
      class ReactivateSubscriptionRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
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
      
      class Subscription
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :authority, as: 'authority'
          property :create_time, as: 'createTime'
          property :etag, as: 'etag'
          collection :event_types, as: 'eventTypes'
          property :expire_time, as: 'expireTime'
          property :name, as: 'name'
          property :notification_endpoint, as: 'notificationEndpoint', class: Google::Apis::WorkspaceeventsV1::NotificationEndpoint, decorator: Google::Apis::WorkspaceeventsV1::NotificationEndpoint::Representation
      
          property :payload_options, as: 'payloadOptions', class: Google::Apis::WorkspaceeventsV1::PayloadOptions, decorator: Google::Apis::WorkspaceeventsV1::PayloadOptions::Representation
      
          property :reconciling, as: 'reconciling'
          property :state, as: 'state'
          property :suspension_reason, as: 'suspensionReason'
          property :target_resource, as: 'targetResource'
          property :ttl, as: 'ttl'
          property :uid, as: 'uid'
          property :update_time, as: 'updateTime'
        end
      end
    end
  end
end
