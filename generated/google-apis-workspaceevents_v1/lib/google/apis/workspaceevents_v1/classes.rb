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
      
      # Artifacts are the container for task completed results. These are similar to
      # Messages but are intended to be the product of a task, as opposed to point-to-
      # point communication.
      class Artifact
        include Google::Apis::Core::Hashable
      
        # Unique identifier (e.g. UUID) for the artifact. It must be at least unique
        # within a task.
        # Corresponds to the JSON property `artifactId`
        # @return [String]
        attr_accessor :artifact_id
      
        # A human readable description of the artifact, optional.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # The URIs of extensions that are present or contributed to this Artifact.
        # Corresponds to the JSON property `extensions`
        # @return [Array<String>]
        attr_accessor :extensions
      
        # Optional metadata included with the artifact.
        # Corresponds to the JSON property `metadata`
        # @return [Hash<String,Object>]
        attr_accessor :metadata
      
        # A human readable name for the artifact.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # The content of the artifact.
        # Corresponds to the JSON property `parts`
        # @return [Array<Google::Apis::WorkspaceeventsV1::Part>]
        attr_accessor :parts
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @artifact_id = args[:artifact_id] if args.key?(:artifact_id)
          @description = args[:description] if args.key?(:description)
          @extensions = args[:extensions] if args.key?(:extensions)
          @metadata = args[:metadata] if args.key?(:metadata)
          @name = args[:name] if args.key?(:name)
          @parts = args[:parts] if args.key?(:parts)
        end
      end
      
      # Defines authentication details, used for push notifications.
      class AuthenticationInfo
        include Google::Apis::Core::Hashable
      
        # Optional credentials
        # Corresponds to the JSON property `credentials`
        # @return [String]
        attr_accessor :credentials
      
        # Supported authentication schemes - e.g. Basic, Bearer, etc
        # Corresponds to the JSON property `schemes`
        # @return [Array<String>]
        attr_accessor :schemes
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @credentials = args[:credentials] if args.key?(:credentials)
          @schemes = args[:schemes] if args.key?(:schemes)
        end
      end
      
      # 
      class CancelTaskRequest
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # DataPart represents a structured blob. This is most commonly a JSON payload.
      class DataPart
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `data`
        # @return [Hash<String,Object>]
        attr_accessor :data
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @data = args[:data] if args.key?(:data)
        end
      end
      
      # A generic empty message that you can re-use to avoid defining duplicated empty
      # messages in your APIs. A typical example is to use it as the request or the
      # response type of an API method. For instance: service Foo ` rpc Bar(google.
      # protobuf.Empty) returns (google.protobuf.Empty); `
      class Empty
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # FilePart represents the different ways files can be provided. If files are
      # small, directly feeding the bytes is supported via file_with_bytes. If the
      # file is large, the agent should read the content as appropriate directly from
      # the file_with_uri source.
      class FilePart
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `fileWithBytes`
        # NOTE: Values are automatically base64 encoded/decoded in the client library.
        # @return [String]
        attr_accessor :file_with_bytes
      
        # 
        # Corresponds to the JSON property `fileWithUri`
        # @return [String]
        attr_accessor :file_with_uri
      
        # 
        # Corresponds to the JSON property `mimeType`
        # @return [String]
        attr_accessor :mime_type
      
        # 
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @file_with_bytes = args[:file_with_bytes] if args.key?(:file_with_bytes)
          @file_with_uri = args[:file_with_uri] if args.key?(:file_with_uri)
          @mime_type = args[:mime_type] if args.key?(:mime_type)
          @name = args[:name] if args.key?(:name)
        end
      end
      
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
      
      # 
      class ListTaskPushNotificationConfigResponse
        include Google::Apis::Core::Hashable
      
        # The list of push notification configurations.
        # Corresponds to the JSON property `configs`
        # @return [Array<Google::Apis::WorkspaceeventsV1::TaskPushNotificationConfig>]
        attr_accessor :configs
      
        # A token, which can be sent as `page_token` to retrieve the next page. If this
        # field is omitted, there are no subsequent pages.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @configs = args[:configs] if args.key?(:configs)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # Message is one unit of communication between client and server. It is
      # associated with a context and optionally a task. Since the server is
      # responsible for the context definition, it must always provide a context_id in
      # its messages. The client can optionally provide the context_id if it knows the
      # context to associate the message to. Similarly for task_id, except the server
      # decides if a task is created and whether to include the task_id.
      class Message
        include Google::Apis::Core::Hashable
      
        # protolint:disable REPEATED_FIELD_NAMES_PLURALIZED Content is the container of
        # the message content.
        # Corresponds to the JSON property `content`
        # @return [Array<Google::Apis::WorkspaceeventsV1::Part>]
        attr_accessor :content
      
        # The context id of the message. This is optional and if set, the message will
        # be associated with the given context.
        # Corresponds to the JSON property `contextId`
        # @return [String]
        attr_accessor :context_id
      
        # The URIs of extensions that are present or contributed to this Message.
        # Corresponds to the JSON property `extensions`
        # @return [Array<String>]
        attr_accessor :extensions
      
        # The unique identifier (e.g. UUID)of the message. This is required and created
        # by the message creator.
        # Corresponds to the JSON property `messageId`
        # @return [String]
        attr_accessor :message_id
      
        # protolint:enable REPEATED_FIELD_NAMES_PLURALIZED Any optional metadata to
        # provide along with the message.
        # Corresponds to the JSON property `metadata`
        # @return [Hash<String,Object>]
        attr_accessor :metadata
      
        # A role for the message.
        # Corresponds to the JSON property `role`
        # @return [String]
        attr_accessor :role
      
        # The task id of the message. This is optional and if set, the message will be
        # associated with the given task.
        # Corresponds to the JSON property `taskId`
        # @return [String]
        attr_accessor :task_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @content = args[:content] if args.key?(:content)
          @context_id = args[:context_id] if args.key?(:context_id)
          @extensions = args[:extensions] if args.key?(:extensions)
          @message_id = args[:message_id] if args.key?(:message_id)
          @metadata = args[:metadata] if args.key?(:metadata)
          @role = args[:role] if args.key?(:role)
          @task_id = args[:task_id] if args.key?(:task_id)
        end
      end
      
      # The endpoint where the subscription delivers events.
      class NotificationEndpoint
        include Google::Apis::Core::Hashable
      
        # Immutable. The Pub/Sub topic that receives events for the subscription. Format:
        # `projects/`project`/topics/`topic`` You must create the topic in the same
        # Google Cloud project where you create this subscription. Note: The Google
        # Workspace Events API uses [ordering keys](https://cloud.google.com/pubsub/docs/
        # ordering) for the benefit of sequential events. If the Cloud Pub/Sub topic has
        # a [message storage policy](https://cloud.google.com/pubsub/docs/resource-
        # location-restriction#exceptions) configured to exclude the nearest Google
        # Cloud region, publishing events with ordering keys will fail. When the topic
        # receives events, the events are encoded as Pub/Sub messages. For details, see
        # the [Google Cloud Pub/Sub Protocol Binding for CloudEvents](https://github.com/
        # googleapis/google-cloudevents/blob/main/docs/spec/pubsub.md).
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
      
      # Part represents a container for a section of communication content. Parts can
      # be purely textual, some sort of file (image, video, etc) or a structured data
      # blob (i.e. JSON).
      class Part
        include Google::Apis::Core::Hashable
      
        # DataPart represents a structured blob. This is most commonly a JSON payload.
        # Corresponds to the JSON property `data`
        # @return [Google::Apis::WorkspaceeventsV1::DataPart]
        attr_accessor :data
      
        # FilePart represents the different ways files can be provided. If files are
        # small, directly feeding the bytes is supported via file_with_bytes. If the
        # file is large, the agent should read the content as appropriate directly from
        # the file_with_uri source.
        # Corresponds to the JSON property `file`
        # @return [Google::Apis::WorkspaceeventsV1::FilePart]
        attr_accessor :file
      
        # Optional metadata associated with this part.
        # Corresponds to the JSON property `metadata`
        # @return [Hash<String,Object>]
        attr_accessor :metadata
      
        # 
        # Corresponds to the JSON property `text`
        # @return [String]
        attr_accessor :text
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @data = args[:data] if args.key?(:data)
          @file = args[:file] if args.key?(:file)
          @metadata = args[:metadata] if args.key?(:metadata)
          @text = args[:text] if args.key?(:text)
        end
      end
      
      # Options about what data to include in the event payload. Only supported for
      # Google Chat and Google Drive events.
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
      
      # Configuration for setting up push notifications for task updates.
      class PushNotificationConfig
        include Google::Apis::Core::Hashable
      
        # Defines authentication details, used for push notifications.
        # Corresponds to the JSON property `authentication`
        # @return [Google::Apis::WorkspaceeventsV1::AuthenticationInfo]
        attr_accessor :authentication
      
        # A unique identifier (e.g. UUID) for this push notification.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # Token unique for this task/session
        # Corresponds to the JSON property `token`
        # @return [String]
        attr_accessor :token
      
        # Url to send the notification too
        # Corresponds to the JSON property `url`
        # @return [String]
        attr_accessor :url
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @authentication = args[:authentication] if args.key?(:authentication)
          @id = args[:id] if args.key?(:id)
          @token = args[:token] if args.key?(:token)
          @url = args[:url] if args.key?(:url)
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
      
      # Configuration of a send message request.
      class SendMessageConfiguration
        include Google::Apis::Core::Hashable
      
        # The output modes that the agent is expected to respond with.
        # Corresponds to the JSON property `acceptedOutputModes`
        # @return [Array<String>]
        attr_accessor :accepted_output_modes
      
        # If true, the message will be blocking until the task is completed. If false,
        # the message will be non-blocking and the task will be returned immediately. It
        # is the caller's responsibility to check for any task updates.
        # Corresponds to the JSON property `blocking`
        # @return [Boolean]
        attr_accessor :blocking
        alias_method :blocking?, :blocking
      
        # The maximum number of messages to include in the history. if 0, the history
        # will be unlimited.
        # Corresponds to the JSON property `historyLength`
        # @return [Fixnum]
        attr_accessor :history_length
      
        # Configuration for setting up push notifications for task updates.
        # Corresponds to the JSON property `pushNotification`
        # @return [Google::Apis::WorkspaceeventsV1::PushNotificationConfig]
        attr_accessor :push_notification
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @accepted_output_modes = args[:accepted_output_modes] if args.key?(:accepted_output_modes)
          @blocking = args[:blocking] if args.key?(:blocking)
          @history_length = args[:history_length] if args.key?(:history_length)
          @push_notification = args[:push_notification] if args.key?(:push_notification)
        end
      end
      
      # /////////// Request Messages ///////////
      class SendMessageRequest
        include Google::Apis::Core::Hashable
      
        # Configuration of a send message request.
        # Corresponds to the JSON property `configuration`
        # @return [Google::Apis::WorkspaceeventsV1::SendMessageConfiguration]
        attr_accessor :configuration
      
        # Message is one unit of communication between client and server. It is
        # associated with a context and optionally a task. Since the server is
        # responsible for the context definition, it must always provide a context_id in
        # its messages. The client can optionally provide the context_id if it knows the
        # context to associate the message to. Similarly for task_id, except the server
        # decides if a task is created and whether to include the task_id.
        # Corresponds to the JSON property `message`
        # @return [Google::Apis::WorkspaceeventsV1::Message]
        attr_accessor :message
      
        # Optional metadata for the request.
        # Corresponds to the JSON property `metadata`
        # @return [Hash<String,Object>]
        attr_accessor :metadata
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @configuration = args[:configuration] if args.key?(:configuration)
          @message = args[:message] if args.key?(:message)
          @metadata = args[:metadata] if args.key?(:metadata)
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
      
      # The stream response for a message. The stream should be one of the following
      # sequences: If the response is a message, the stream should contain one, and
      # only one, message and then close If the response is a task lifecycle, the
      # first response should be a Task object followed by zero or more
      # TaskStatusUpdateEvents and TaskArtifactUpdateEvents. The stream should
      # complete when the Task if in an interrupted or terminal state. A stream that
      # ends before these conditions are met are
      class StreamResponse
        include Google::Apis::Core::Hashable
      
        # TaskArtifactUpdateEvent represents a task delta where an artifact has been
        # generated.
        # Corresponds to the JSON property `artifactUpdate`
        # @return [Google::Apis::WorkspaceeventsV1::TaskArtifactUpdateEvent]
        attr_accessor :artifact_update
      
        # Message is one unit of communication between client and server. It is
        # associated with a context and optionally a task. Since the server is
        # responsible for the context definition, it must always provide a context_id in
        # its messages. The client can optionally provide the context_id if it knows the
        # context to associate the message to. Similarly for task_id, except the server
        # decides if a task is created and whether to include the task_id.
        # Corresponds to the JSON property `message`
        # @return [Google::Apis::WorkspaceeventsV1::Message]
        attr_accessor :message
      
        # TaskStatusUpdateEvent is a delta even on a task indicating that a task has
        # changed.
        # Corresponds to the JSON property `statusUpdate`
        # @return [Google::Apis::WorkspaceeventsV1::TaskStatusUpdateEvent]
        attr_accessor :status_update
      
        # Task is the core unit of action for A2A. It has a current status and when
        # results are created for the task they are stored in the artifact. If there are
        # multiple turns for a task, these are stored in history.
        # Corresponds to the JSON property `task`
        # @return [Google::Apis::WorkspaceeventsV1::Task]
        attr_accessor :task
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @artifact_update = args[:artifact_update] if args.key?(:artifact_update)
          @message = args[:message] if args.key?(:message)
          @status_update = args[:status_update] if args.key?(:status_update)
          @task = args[:task] if args.key?(:task)
        end
      end
      
      # A subscription to receive events about a Google Workspace resource. To learn
      # more about subscriptions, see the [Google Workspace Events API overview](https:
      # //developers.google.com/workspace/events).
      class Subscription
        include Google::Apis::Core::Hashable
      
        # Output only. The user who authorized the creation of the subscription. When a
        # user authorizes the subscription, this field and the `user_authority` field
        # have the same value and the format is: Format: `users/`user`` For Google
        # Workspace users, the ``user`` value is the [`user.id`](https://developers.
        # google.com/admin-sdk/directory/reference/rest/v1/users#User.FIELDS.ids) field
        # from the Directory API. When a Chat app authorizes the subscription, only `
        # service_account_authority` field populates and this field is empty.
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
      
        # Required. Unordered list. Input for creating a subscription. Otherwise, output
        # only. One or more types of events to receive about the target resource.
        # Formatted according to the CloudEvents specification. The supported event
        # types depend on the target resource of your subscription. For details, see [
        # Supported Google Workspace events](https://developers.google.com/workspace/
        # events/guides#supported-events). By default, you also receive events about the
        # [lifecycle of your subscription](https://developers.google.com/workspace/
        # events/guides/events-lifecycle). You don't need to specify lifecycle events
        # for this field. If you specify an event type that doesn't exist for the target
        # resource, the request returns an HTTP `400 Bad Request` status code.
        # Corresponds to the JSON property `eventTypes`
        # @return [Array<String>]
        attr_accessor :event_types
      
        # Non-empty default. The timestamp in UTC when the subscription expires. Always
        # displayed on output, regardless of what was used on input.
        # Corresponds to the JSON property `expireTime`
        # @return [String]
        attr_accessor :expire_time
      
        # Identifier. Resource name of the subscription. Format: `subscriptions/`
        # subscription``
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # The endpoint where the subscription delivers events.
        # Corresponds to the JSON property `notificationEndpoint`
        # @return [Google::Apis::WorkspaceeventsV1::NotificationEndpoint]
        attr_accessor :notification_endpoint
      
        # Options about what data to include in the event payload. Only supported for
        # Google Chat and Google Drive events.
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
      
      # Task is the core unit of action for A2A. It has a current status and when
      # results are created for the task they are stored in the artifact. If there are
      # multiple turns for a task, these are stored in history.
      class Task
        include Google::Apis::Core::Hashable
      
        # A set of output artifacts for a Task.
        # Corresponds to the JSON property `artifacts`
        # @return [Array<Google::Apis::WorkspaceeventsV1::Artifact>]
        attr_accessor :artifacts
      
        # Unique identifier (e.g. UUID) for the contextual collection of interactions (
        # tasks and messages). Created by the A2A server.
        # Corresponds to the JSON property `contextId`
        # @return [String]
        attr_accessor :context_id
      
        # protolint:disable REPEATED_FIELD_NAMES_PLURALIZED The history of interactions
        # from a task.
        # Corresponds to the JSON property `history`
        # @return [Array<Google::Apis::WorkspaceeventsV1::Message>]
        attr_accessor :history
      
        # Unique identifier (e.g. UUID) for the task, generated by the server for a new
        # task.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # protolint:enable REPEATED_FIELD_NAMES_PLURALIZED A key/value object to store
        # custom metadata about a task.
        # Corresponds to the JSON property `metadata`
        # @return [Hash<String,Object>]
        attr_accessor :metadata
      
        # A container for the status of a task
        # Corresponds to the JSON property `status`
        # @return [Google::Apis::WorkspaceeventsV1::TaskStatus]
        attr_accessor :status
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @artifacts = args[:artifacts] if args.key?(:artifacts)
          @context_id = args[:context_id] if args.key?(:context_id)
          @history = args[:history] if args.key?(:history)
          @id = args[:id] if args.key?(:id)
          @metadata = args[:metadata] if args.key?(:metadata)
          @status = args[:status] if args.key?(:status)
        end
      end
      
      # TaskArtifactUpdateEvent represents a task delta where an artifact has been
      # generated.
      class TaskArtifactUpdateEvent
        include Google::Apis::Core::Hashable
      
        # Whether this should be appended to a prior one produced
        # Corresponds to the JSON property `append`
        # @return [Boolean]
        attr_accessor :append
        alias_method :append?, :append
      
        # Artifacts are the container for task completed results. These are similar to
        # Messages but are intended to be the product of a task, as opposed to point-to-
        # point communication.
        # Corresponds to the JSON property `artifact`
        # @return [Google::Apis::WorkspaceeventsV1::Artifact]
        attr_accessor :artifact
      
        # The id of the context that this task belongs too
        # Corresponds to the JSON property `contextId`
        # @return [String]
        attr_accessor :context_id
      
        # Whether this represents the last part of an artifact
        # Corresponds to the JSON property `lastChunk`
        # @return [Boolean]
        attr_accessor :last_chunk
        alias_method :last_chunk?, :last_chunk
      
        # Optional metadata associated with the artifact update.
        # Corresponds to the JSON property `metadata`
        # @return [Hash<String,Object>]
        attr_accessor :metadata
      
        # The id of the task for this artifact
        # Corresponds to the JSON property `taskId`
        # @return [String]
        attr_accessor :task_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @append = args[:append] if args.key?(:append)
          @artifact = args[:artifact] if args.key?(:artifact)
          @context_id = args[:context_id] if args.key?(:context_id)
          @last_chunk = args[:last_chunk] if args.key?(:last_chunk)
          @metadata = args[:metadata] if args.key?(:metadata)
          @task_id = args[:task_id] if args.key?(:task_id)
        end
      end
      
      # 
      class TaskPushNotificationConfig
        include Google::Apis::Core::Hashable
      
        # The resource name of the config. Format: tasks/`task_id`/
        # pushNotificationConfigs/`config_id`
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Configuration for setting up push notifications for task updates.
        # Corresponds to the JSON property `pushNotificationConfig`
        # @return [Google::Apis::WorkspaceeventsV1::PushNotificationConfig]
        attr_accessor :push_notification_config
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @name = args[:name] if args.key?(:name)
          @push_notification_config = args[:push_notification_config] if args.key?(:push_notification_config)
        end
      end
      
      # A container for the status of a task
      class TaskStatus
        include Google::Apis::Core::Hashable
      
        # Message is one unit of communication between client and server. It is
        # associated with a context and optionally a task. Since the server is
        # responsible for the context definition, it must always provide a context_id in
        # its messages. The client can optionally provide the context_id if it knows the
        # context to associate the message to. Similarly for task_id, except the server
        # decides if a task is created and whether to include the task_id.
        # Corresponds to the JSON property `message`
        # @return [Google::Apis::WorkspaceeventsV1::Message]
        attr_accessor :message
      
        # The current state of this task
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        # Timestamp when the status was recorded. Example: "2023-10-27T10:00:00Z"
        # Corresponds to the JSON property `timestamp`
        # @return [String]
        attr_accessor :timestamp
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @message = args[:message] if args.key?(:message)
          @state = args[:state] if args.key?(:state)
          @timestamp = args[:timestamp] if args.key?(:timestamp)
        end
      end
      
      # TaskStatusUpdateEvent is a delta even on a task indicating that a task has
      # changed.
      class TaskStatusUpdateEvent
        include Google::Apis::Core::Hashable
      
        # The id of the context that the task belongs to
        # Corresponds to the JSON property `contextId`
        # @return [String]
        attr_accessor :context_id
      
        # Whether this is the last status update expected for this task.
        # Corresponds to the JSON property `final`
        # @return [Boolean]
        attr_accessor :final
        alias_method :final?, :final
      
        # Optional metadata to associate with the task update.
        # Corresponds to the JSON property `metadata`
        # @return [Hash<String,Object>]
        attr_accessor :metadata
      
        # A container for the status of a task
        # Corresponds to the JSON property `status`
        # @return [Google::Apis::WorkspaceeventsV1::TaskStatus]
        attr_accessor :status
      
        # The id of the task that is changed
        # Corresponds to the JSON property `taskId`
        # @return [String]
        attr_accessor :task_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @context_id = args[:context_id] if args.key?(:context_id)
          @final = args[:final] if args.key?(:final)
          @metadata = args[:metadata] if args.key?(:metadata)
          @status = args[:status] if args.key?(:status)
          @task_id = args[:task_id] if args.key?(:task_id)
        end
      end
    end
  end
end
