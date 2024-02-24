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
      
      # The response message for SubscriptionsService.ListSubscriptions.
      class ListSubscriptionsResponse
        include Google::Apis::Core::Hashable
      
        # A token, which can be sent as `page_token` to retrieve the next page. If this
        # field is omitted, there are no subsequent pages.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # List of subscriptions.
        # Corresponds to the JSON property `subscriptions`
        # @return [Array<Google::Apis::WorkspaceeventsV1::Subscription>]
        attr_accessor :subscriptions
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @subscriptions = args[:subscriptions] if args.key?(:subscriptions)
        end
      end
      
      # The endpoint where the subscription delivers events.
      class NotificationEndpoint
        include Google::Apis::Core::Hashable
      
        # Immutable. The Cloud Pub/Sub topic that receives events for the subscription.
        # Format: `projects/`project`/topics/`topic`` You must create the topic in the
        # same Google Cloud project where you create this subscription. When the topic
        # receives events, the events are encoded as Cloud Pub/Sub messages. For details,
        # see the [Google Cloud Pub/Sub Protocol Binding for CloudEvents](https://
        # github.com/googleapis/google-cloudevents/blob/main/docs/spec/pubsub.md).
        # Corresponds to the JSON property `pubsubTopic`
        # @return [String]
        attr_accessor :pubsub_topic
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @pubsub_topic = args[:pubsub_topic] if args.key?(:pubsub_topic)
        end
      end
      
      # This resource represents a long-running operation that is the result of a
      # network API call.
      class Operation
        include Google::Apis::Core::Hashable
      
        # If the value is `false`, it means the operation is still in progress. If `true`
        # , the operation is completed, and either `error` or `response` is available.
        # Corresponds to the JSON property `done`
        # @return [Boolean]
        attr_accessor :done
        alias_method :done?, :done
      
        # The `Status` type defines a logical error model that is suitable for different
        # programming environments, including REST APIs and RPC APIs. It is used by [
        # gRPC](https://github.com/grpc). Each `Status` message contains three pieces of
        # data: error code, error message, and error details. You can find out more
        # about this error model and how to work with it in the [API Design Guide](https:
        # //cloud.google.com/apis/design/errors).
        # Corresponds to the JSON property `error`
        # @return [Google::Apis::WorkspaceeventsV1::Status]
        attr_accessor :error
      
        # Service-specific metadata associated with the operation. It typically contains
        # progress information and common metadata such as create time. Some services
        # might not provide such metadata. Any method that returns a long-running
        # operation should document the metadata type, if any.
        # Corresponds to the JSON property `metadata`
        # @return [Hash<String,Object>]
        attr_accessor :metadata
      
        # The server-assigned name, which is only unique within the same service that
        # originally returns it. If you use the default HTTP mapping, the `name` should
        # be a resource name ending with `operations/`unique_id``.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # The normal, successful response of the operation. If the original method
        # returns no data on success, such as `Delete`, the response is `google.protobuf.
        # Empty`. If the original method is standard `Get`/`Create`/`Update`, the
        # response should be the resource. For other methods, the response should have
        # the type `XxxResponse`, where `Xxx` is the original method name. For example,
        # if the original method name is `TakeSnapshot()`, the inferred response type is
        # `TakeSnapshotResponse`.
        # Corresponds to the JSON property `response`
        # @return [Hash<String,Object>]
        attr_accessor :response
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @done = args[:done] if args.key?(:done)
          @error = args[:error] if args.key?(:error)
          @metadata = args[:metadata] if args.key?(:metadata)
          @name = args[:name] if args.key?(:name)
          @response = args[:response] if args.key?(:response)
        end
      end
      
      # Options about what data to include in the event payload. Only supported for
      # Google Chat events.
      class PayloadOptions
        include Google::Apis::Core::Hashable
      
        # Optional. If `include_resource` is set to `true`, the list of fields to
        # include in the event payload. Separate fields with a comma. For example, to
        # include a Google Chat message's sender and create time, enter `message.sender,
        # message.createTime`. If omitted, the payload includes all fields for the
        # resource. If you specify a field that doesn't exist for the resource, the
        # system ignores the field.
        # Corresponds to the JSON property `fieldMask`
        # @return [String]
        attr_accessor :field_mask
      
        # Optional. Whether the event payload includes data about the resource that
        # changed. For example, for an event where a Google Chat message was created,
        # whether the payload contains data about the [`Message`](https://developers.
        # google.com/chat/api/reference/rest/v1/spaces.messages) resource. If false, the
        # event payload only includes the name of the changed resource.
        # Corresponds to the JSON property `includeResource`
        # @return [Boolean]
        attr_accessor :include_resource
        alias_method :include_resource?, :include_resource
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @field_mask = args[:field_mask] if args.key?(:field_mask)
          @include_resource = args[:include_resource] if args.key?(:include_resource)
        end
      end
      
      # The request message for SubscriptionsService.ReactivateSubscription.
      class ReactivateSubscriptionRequest
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # The `Status` type defines a logical error model that is suitable for different
      # programming environments, including REST APIs and RPC APIs. It is used by [
      # gRPC](https://github.com/grpc). Each `Status` message contains three pieces of
      # data: error code, error message, and error details. You can find out more
      # about this error model and how to work with it in the [API Design Guide](https:
      # //cloud.google.com/apis/design/errors).
      class Status
        include Google::Apis::Core::Hashable
      
        # The status code, which should be an enum value of google.rpc.Code.
        # Corresponds to the JSON property `code`
        # @return [Fixnum]
        attr_accessor :code
      
        # A list of messages that carry the error details. There is a common set of
        # message types for APIs to use.
        # Corresponds to the JSON property `details`
        # @return [Array<Hash<String,Object>>]
        attr_accessor :details
      
        # A developer-facing error message, which should be in English. Any user-facing
        # error message should be localized and sent in the google.rpc.Status.details
        # field, or localized by the client.
        # Corresponds to the JSON property `message`
        # @return [String]
        attr_accessor :message
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @code = args[:code] if args.key?(:code)
          @details = args[:details] if args.key?(:details)
          @message = args[:message] if args.key?(:message)
        end
      end
      
      # [Developer Preview](https://developers.google.com/workspace/preview). A
      # subscription to receive events about a Google Workspace resource. To learn
      # more about subscriptions, see the [Google Workspace Events API overview](https:
      # //developers.google.com/workspace/events).
      class Subscription
        include Google::Apis::Core::Hashable
      
        # Output only. The user who authorized the creation of the subscription. Format:
        # `users/`user`` For Google Workspace users, the ``user`` value is the [`user.id`
        # ](https://developers.google.com/admin-sdk/directory/reference/rest/v1/users#
        # User.FIELDS.ids) field from the Directory API.
        # Corresponds to the JSON property `authority`
        # @return [String]
        attr_accessor :authority
      
        # Output only. The time when the subscription is created.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Optional. This checksum is computed by the server based on the value of other
        # fields, and might be sent on update requests to ensure the client has an up-to-
        # date value before proceeding.
        # Corresponds to the JSON property `etag`
        # @return [String]
        attr_accessor :etag
      
        # Required. Immutable. Unordered list. Input for creating a subscription.
        # Otherwise, output only. One or more types of events to receive about the
        # target resource. Formatted according to the CloudEvents specification. The
        # supported event types depend on the target resource of your subscription. For
        # details, see [Supported Google Workspace events](https://developers.google.com/
        # workspace/events/guides#supported-events). By default, you also receive events
        # about the [lifecycle of your subscription](https://developers.google.com/
        # workspace/events/guides/events-lifecycle). You don't need to specify lifecycle
        # events for this field. If you specify an event type that doesn't exist for the
        # target resource, the request returns an HTTP `400 Bad Request` status code.
        # Corresponds to the JSON property `eventTypes`
        # @return [Array<String>]
        attr_accessor :event_types
      
        # Non-empty default. The timestamp in UTC when the subscription expires. Always
        # displayed on output, regardless of what was used on input.
        # Corresponds to the JSON property `expireTime`
        # @return [String]
        attr_accessor :expire_time
      
        # Optional. Immutable. Identifier. Resource name of the subscription. Format: `
        # subscriptions/`subscription``
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # The endpoint where the subscription delivers events.
        # Corresponds to the JSON property `notificationEndpoint`
        # @return [Google::Apis::WorkspaceeventsV1::NotificationEndpoint]
        attr_accessor :notification_endpoint
      
        # Options about what data to include in the event payload. Only supported for
        # Google Chat events.
        # Corresponds to the JSON property `payloadOptions`
        # @return [Google::Apis::WorkspaceeventsV1::PayloadOptions]
        attr_accessor :payload_options
      
        # Output only. If `true`, the subscription is in the process of being updated.
        # Corresponds to the JSON property `reconciling`
        # @return [Boolean]
        attr_accessor :reconciling
        alias_method :reconciling?, :reconciling
      
        # Output only. The state of the subscription. Determines whether the
        # subscription can receive events and deliver them to the notification endpoint.
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        # Output only. The error that suspended the subscription. To reactivate the
        # subscription, resolve the error and call the `ReactivateSubscription` method.
        # Corresponds to the JSON property `suspensionReason`
        # @return [String]
        attr_accessor :suspension_reason
      
        # Required. Immutable. The Google Workspace resource that's monitored for events,
        # formatted as the [full resource name](https://google.aip.dev/122#full-
        # resource-names). To learn about target resources and the events that they
        # support, see [Supported Google Workspace events](https://developers.google.com/
        # workspace/events#supported-events). A user can only authorize your app to
        # create one subscription for a given target resource. If your app tries to
        # create another subscription with the same user credentials, the request
        # returns an `ALREADY_EXISTS` error.
        # Corresponds to the JSON property `targetResource`
        # @return [String]
        attr_accessor :target_resource
      
        # Input only. The time-to-live (TTL) or duration for the subscription. If
        # unspecified or set to `0`, uses the maximum possible duration.
        # Corresponds to the JSON property `ttl`
        # @return [String]
        attr_accessor :ttl
      
        # Output only. System-assigned unique identifier for the subscription.
        # Corresponds to the JSON property `uid`
        # @return [String]
        attr_accessor :uid
      
        # Output only. The last time that the subscription is updated.
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @authority = args[:authority] if args.key?(:authority)
          @create_time = args[:create_time] if args.key?(:create_time)
          @etag = args[:etag] if args.key?(:etag)
          @event_types = args[:event_types] if args.key?(:event_types)
          @expire_time = args[:expire_time] if args.key?(:expire_time)
          @name = args[:name] if args.key?(:name)
          @notification_endpoint = args[:notification_endpoint] if args.key?(:notification_endpoint)
          @payload_options = args[:payload_options] if args.key?(:payload_options)
          @reconciling = args[:reconciling] if args.key?(:reconciling)
          @state = args[:state] if args.key?(:state)
          @suspension_reason = args[:suspension_reason] if args.key?(:suspension_reason)
          @target_resource = args[:target_resource] if args.key?(:target_resource)
          @ttl = args[:ttl] if args.key?(:ttl)
          @uid = args[:uid] if args.key?(:uid)
          @update_time = args[:update_time] if args.key?(:update_time)
        end
      end
    end
  end
end
