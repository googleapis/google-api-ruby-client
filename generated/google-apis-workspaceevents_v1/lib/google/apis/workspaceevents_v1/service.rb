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

require 'google/apis/core/base_service'
require 'google/apis/core/json_representation'
require 'google/apis/core/hashable'
require 'google/apis/errors'

module Google
  module Apis
    module WorkspaceeventsV1
      # Google Workspace Events API
      #
      # The Google Workspace Events API lets you subscribe to events and manage change
      #  notifications across Google Workspace applications.
      #
      # @example
      #    require 'google/apis/workspaceevents_v1'
      #
      #    Workspaceevents = Google::Apis::WorkspaceeventsV1 # Alias the module
      #    service = Workspaceevents::WorkspaceEventsService.new
      #
      # @see https://developers.google.com/workspace/events
      class WorkspaceEventsService < Google::Apis::Core::BaseService
        DEFAULT_ENDPOINT_TEMPLATE = "https://workspaceevents.$UNIVERSE_DOMAIN$/"

        # @return [String]
        #  API key. Your API key identifies your project and provides you with API access,
        #  quota, and reports. Required unless you provide an OAuth 2.0 token.
        attr_accessor :key

        # @return [String]
        #  Available to use for quota purposes for server-side applications. Can be any
        #  arbitrary string assigned to a user, but should not exceed 40 characters.
        attr_accessor :quota_user

        def initialize
          super(DEFAULT_ENDPOINT_TEMPLATE, '',
                client_name: 'google-apis-workspaceevents_v1',
                client_version: Google::Apis::WorkspaceeventsV1::GEM_VERSION)
          @batch_path = 'batch'
        end
        
        # SendStreamingMessage is a streaming call that will return a stream of task
        # update events until the Task is in an interrupted or terminal state.
        # @param [Google::Apis::WorkspaceeventsV1::SendMessageRequest] send_message_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::WorkspaceeventsV1::StreamResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::WorkspaceeventsV1::StreamResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def stream_message(send_message_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/message:stream', options)
          command.request_representation = Google::Apis::WorkspaceeventsV1::SendMessageRequest::Representation
          command.request_object = send_message_request_object
          command.response_representation = Google::Apis::WorkspaceeventsV1::StreamResponse::Representation
          command.response_class = Google::Apis::WorkspaceeventsV1::StreamResponse
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets the latest state of a long-running operation. Clients can use this method
        # to poll the operation result at intervals as recommended by the API service.
        # @param [String] name
        #   The name of the operation resource.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::WorkspaceeventsV1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::WorkspaceeventsV1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_operation(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}', options)
          command.response_representation = Google::Apis::WorkspaceeventsV1::Operation::Representation
          command.response_class = Google::Apis::WorkspaceeventsV1::Operation
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a Google Workspace subscription. To learn how to use this method, see [
        # Create a Google Workspace subscription](https://developers.google.com/
        # workspace/events/guides/create-subscription). For a subscription on a [Chat
        # target resource](https://developers.google.com/workspace/events/guides/events-
        # chat), you can create a subscription as: - A Chat app by specifying an
        # authorization scope that begins with `chat.app` and getting one-time
        # administrator approval ([Developer Preview](https://developers.google.com/
        # workspace/preview)). To learn more, see [Authorize as a Chat app with
        # administrator approval](https://developers.google.com/workspace/chat/
        # authenticate-authorize-chat-app). - A user by specifying an authorization
        # scope that doesn't include `app` in its name. To learn more, see [Authorize as
        # a Chat user](https://developers.google.com/workspace/chat/authenticate-
        # authorize-chat-user).
        # @param [Google::Apis::WorkspaceeventsV1::Subscription] subscription_object
        # @param [Boolean] validate_only
        #   Optional. If set to `true`, validates and previews the request, but doesn't
        #   create the subscription.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::WorkspaceeventsV1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::WorkspaceeventsV1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_subscription(subscription_object = nil, validate_only: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/subscriptions', options)
          command.request_representation = Google::Apis::WorkspaceeventsV1::Subscription::Representation
          command.request_object = subscription_object
          command.response_representation = Google::Apis::WorkspaceeventsV1::Operation::Representation
          command.response_class = Google::Apis::WorkspaceeventsV1::Operation
          command.query['validateOnly'] = validate_only unless validate_only.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes a Google Workspace subscription. To learn how to use this method, see [
        # Delete a Google Workspace subscription](https://developers.google.com/
        # workspace/events/guides/delete-subscription).
        # @param [String] name
        #   Required. Resource name of the subscription to delete. Format: `subscriptions/`
        #   subscription``
        # @param [Boolean] allow_missing
        #   Optional. If set to `true` and the subscription isn't found, the request
        #   succeeds but doesn't delete the subscription.
        # @param [String] etag
        #   Optional. Etag of the subscription. If present, it must match with the server'
        #   s etag. Otherwise, request fails with the status `ABORTED`.
        # @param [Boolean] validate_only
        #   Optional. If set to `true`, validates and previews the request, but doesn't
        #   delete the subscription.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::WorkspaceeventsV1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::WorkspaceeventsV1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_subscription(name, allow_missing: nil, etag: nil, validate_only: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1/{+name}', options)
          command.response_representation = Google::Apis::WorkspaceeventsV1::Operation::Representation
          command.response_class = Google::Apis::WorkspaceeventsV1::Operation
          command.params['name'] = name unless name.nil?
          command.query['allowMissing'] = allow_missing unless allow_missing.nil?
          command.query['etag'] = etag unless etag.nil?
          command.query['validateOnly'] = validate_only unless validate_only.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets details about a Google Workspace subscription. To learn how to use this
        # method, see [Get details about a Google Workspace subscription](https://
        # developers.google.com/workspace/events/guides/get-subscription).
        # @param [String] name
        #   Required. Resource name of the subscription. Format: `subscriptions/`
        #   subscription``
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::WorkspaceeventsV1::Subscription] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::WorkspaceeventsV1::Subscription]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_subscription(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}', options)
          command.response_representation = Google::Apis::WorkspaceeventsV1::Subscription::Representation
          command.response_class = Google::Apis::WorkspaceeventsV1::Subscription
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists Google Workspace subscriptions. To learn how to use this method, see [
        # List Google Workspace subscriptions](https://developers.google.com/workspace/
        # events/guides/list-subscriptions).
        # @param [String] filter
        #   Required. A query filter. You can filter subscriptions by event type (`
        #   event_types`) and target resource (`target_resource`). You must specify at
        #   least one event type in your query. To filter for multiple event types, use
        #   the `OR` operator. To filter by both event type and target resource, use the `
        #   AND` operator and specify the full resource name, such as `//chat.googleapis.
        #   com/spaces/`space``. For example, the following queries are valid: ```
        #   event_types:"google.workspace.chat.membership.v1.updated" OR event_types:"
        #   google.workspace.chat.message.v1.created" event_types:"google.workspace.chat.
        #   message.v1.created" AND target_resource="//chat.googleapis.com/spaces/`space`"
        #   ( event_types:"google.workspace.chat.membership.v1.updated" OR event_types:"
        #   google.workspace.chat.message.v1.created" ) AND target_resource="//chat.
        #   googleapis.com/spaces/`space`" ``` The server rejects invalid queries with an `
        #   INVALID_ARGUMENT` error.
        # @param [Fixnum] page_size
        #   Optional. The maximum number of subscriptions to return. The service might
        #   return fewer than this value. If unspecified or set to `0`, up to 50
        #   subscriptions are returned. The maximum value is 100. If you specify a value
        #   more than 100, the system only returns 100 subscriptions.
        # @param [String] page_token
        #   Optional. A page token, received from a previous list subscriptions call.
        #   Provide this parameter to retrieve the subsequent page. When paginating, the
        #   filter value should match the call that provided the page token. Passing a
        #   different value might lead to unexpected results.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::WorkspaceeventsV1::ListSubscriptionsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::WorkspaceeventsV1::ListSubscriptionsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_subscriptions(filter: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/subscriptions', options)
          command.response_representation = Google::Apis::WorkspaceeventsV1::ListSubscriptionsResponse::Representation
          command.response_class = Google::Apis::WorkspaceeventsV1::ListSubscriptionsResponse
          command.query['filter'] = filter unless filter.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates or renews a Google Workspace subscription. To learn how to use this
        # method, see [Update or renew a Google Workspace subscription](https://
        # developers.google.com/workspace/events/guides/update-subscription). For a
        # subscription on a [Chat target resource](https://developers.google.com/
        # workspace/events/guides/events-chat), you can update a subscription as: - A
        # Chat app by specifying an authorization scope that begins with `chat.app`
        # andgetting one-time administrator approval ([Developer Preview](https://
        # developers.google.com/workspace/preview)). To learn more, see [Authorize as a
        # Chat app with administrator approval](https://developers.google.com/workspace/
        # chat/authenticate-authorize-chat-app). - A user by specifying an authorization
        # scope that doesn't include `app` in its name. To learn more, see [Authorize as
        # a Chat user](https://developers.google.com/workspace/chat/authenticate-
        # authorize-chat-user).
        # @param [String] name
        #   Identifier. Resource name of the subscription. Format: `subscriptions/`
        #   subscription``
        # @param [Google::Apis::WorkspaceeventsV1::Subscription] subscription_object
        # @param [String] update_mask
        #   Optional. The field to update. If omitted, updates any fields included in the
        #   request. You can update one of the following fields in a subscription: * `
        #   expire_time`: The timestamp when the subscription expires. * `ttl`: The time-
        #   to-live (TTL) or duration of the subscription. * `event_types`: The list of
        #   event types to receive about the target resource. When using the `*` wildcard (
        #   equivalent to `PUT`), omitted fields are set to empty values and rejected if
        #   they're invalid.
        # @param [Boolean] validate_only
        #   Optional. If set to `true`, validates and previews the request, but doesn't
        #   update the subscription.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::WorkspaceeventsV1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::WorkspaceeventsV1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_subscription(name, subscription_object = nil, update_mask: nil, validate_only: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v1/{+name}', options)
          command.request_representation = Google::Apis::WorkspaceeventsV1::Subscription::Representation
          command.request_object = subscription_object
          command.response_representation = Google::Apis::WorkspaceeventsV1::Operation::Representation
          command.response_class = Google::Apis::WorkspaceeventsV1::Operation
          command.params['name'] = name unless name.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['validateOnly'] = validate_only unless validate_only.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Reactivates a suspended Google Workspace subscription. This method resets your
        # subscription's `State` field to `ACTIVE`. Before you use this method, you must
        # fix the error that suspended the subscription. This method will ignore or
        # reject any subscription that isn't currently in a suspended state. To learn
        # how to use this method, see [Reactivate a Google Workspace subscription](https:
        # //developers.google.com/workspace/events/guides/reactivate-subscription). For
        # a subscription on a [Chat target resource](https://developers.google.com/
        # workspace/events/guides/events-chat), you can reactivate a subscription as: -
        # A Chat app by specifying an authorization scope that begins with `chat.app`
        # andgetting one-time administrator approval ([Developer Preview](https://
        # developers.google.com/workspace/preview)). To learn more, see [Authorize as a
        # Chat app with administrator approval](https://developers.google.com/workspace/
        # chat/authenticate-authorize-chat-app). - A user by specifying an authorization
        # scope that doesn't include `app` in its name. To learn more, see [Authorize as
        # a Chat user](https://developers.google.com/workspace/chat/authenticate-
        # authorize-chat-user).
        # @param [String] name
        #   Required. Resource name of the subscription. Format: `subscriptions/`
        #   subscription``
        # @param [Google::Apis::WorkspaceeventsV1::ReactivateSubscriptionRequest] reactivate_subscription_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::WorkspaceeventsV1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::WorkspaceeventsV1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def reactivate_subscription(name, reactivate_subscription_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+name}:reactivate', options)
          command.request_representation = Google::Apis::WorkspaceeventsV1::ReactivateSubscriptionRequest::Representation
          command.request_object = reactivate_subscription_request_object
          command.response_representation = Google::Apis::WorkspaceeventsV1::Operation::Representation
          command.response_class = Google::Apis::WorkspaceeventsV1::Operation
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Cancel a task from the agent. If supported one should expect no more task
        # updates for the task.
        # @param [String] name
        #   The resource name of the task to cancel. Format: tasks/`task_id`
        # @param [Google::Apis::WorkspaceeventsV1::CancelTaskRequest] cancel_task_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::WorkspaceeventsV1::Task] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::WorkspaceeventsV1::Task]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def cancel_task(name, cancel_task_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+name}:cancel', options)
          command.request_representation = Google::Apis::WorkspaceeventsV1::CancelTaskRequest::Representation
          command.request_object = cancel_task_request_object
          command.response_representation = Google::Apis::WorkspaceeventsV1::Task::Representation
          command.response_class = Google::Apis::WorkspaceeventsV1::Task
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Get the current state of a task from the agent.
        # @param [String] name
        #   Required. The resource name of the task. Format: tasks/`task_id`
        # @param [Fixnum] history_length
        #   The number of most recent messages from the task's history to retrieve.
        # @param [String] tenant
        #   Optional tenant, provided as a path parameter. Experimental, might still
        #   change for 1.0 release.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::WorkspaceeventsV1::Task] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::WorkspaceeventsV1::Task]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_task(name, history_length: nil, tenant: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}', options)
          command.response_representation = Google::Apis::WorkspaceeventsV1::Task::Representation
          command.response_class = Google::Apis::WorkspaceeventsV1::Task
          command.params['name'] = name unless name.nil?
          command.query['historyLength'] = history_length unless history_length.nil?
          command.query['tenant'] = tenant unless tenant.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # TaskSubscription is a streaming call that will return a stream of task update
        # events. This attaches the stream to an existing in process task. If the task
        # is complete the stream will return the completed task (like GetTask) and close
        # the stream.
        # @param [String] name
        #   The resource name of the task to subscribe to. Format: tasks/`task_id`
        # @param [String] tenant
        #   Optional tenant, provided as a path parameter. Experimental, might still
        #   change for 1.0 release.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::WorkspaceeventsV1::StreamResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::WorkspaceeventsV1::StreamResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def subscribe_task(name, tenant: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}:subscribe', options)
          command.response_representation = Google::Apis::WorkspaceeventsV1::StreamResponse::Representation
          command.response_class = Google::Apis::WorkspaceeventsV1::StreamResponse
          command.params['name'] = name unless name.nil?
          command.query['tenant'] = tenant unless tenant.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Set a push notification config for a task.
        # @param [String] parent
        #   Required. The parent task resource for this config. Format: tasks/`task_id`
        # @param [Google::Apis::WorkspaceeventsV1::TaskPushNotificationConfig] task_push_notification_config_object
        # @param [String] config_id
        #   Required. The ID for the new config.
        # @param [String] tenant
        #   Optional tenant, provided as a path parameter. Experimental, might still
        #   change for 1.0 release.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::WorkspaceeventsV1::TaskPushNotificationConfig] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::WorkspaceeventsV1::TaskPushNotificationConfig]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_task_push_notification_config(parent, task_push_notification_config_object = nil, config_id: nil, tenant: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+parent}', options)
          command.request_representation = Google::Apis::WorkspaceeventsV1::TaskPushNotificationConfig::Representation
          command.request_object = task_push_notification_config_object
          command.response_representation = Google::Apis::WorkspaceeventsV1::TaskPushNotificationConfig::Representation
          command.response_class = Google::Apis::WorkspaceeventsV1::TaskPushNotificationConfig
          command.params['parent'] = parent unless parent.nil?
          command.query['configId'] = config_id unless config_id.nil?
          command.query['tenant'] = tenant unless tenant.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Delete a push notification config for a task.
        # @param [String] name
        #   The resource name of the config to delete. Format: tasks/`task_id`/
        #   pushNotificationConfigs/`config_id`
        # @param [String] tenant
        #   Optional tenant, provided as a path parameter. Experimental, might still
        #   change for 1.0 release.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::WorkspaceeventsV1::Empty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::WorkspaceeventsV1::Empty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_task_push_notification_config(name, tenant: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1/{+name}', options)
          command.response_representation = Google::Apis::WorkspaceeventsV1::Empty::Representation
          command.response_class = Google::Apis::WorkspaceeventsV1::Empty
          command.params['name'] = name unless name.nil?
          command.query['tenant'] = tenant unless tenant.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Get a push notification config for a task.
        # @param [String] name
        #   The resource name of the config to retrieve. Format: tasks/`task_id`/
        #   pushNotificationConfigs/`config_id`
        # @param [String] tenant
        #   Optional tenant, provided as a path parameter. Experimental, might still
        #   change for 1.0 release.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::WorkspaceeventsV1::TaskPushNotificationConfig] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::WorkspaceeventsV1::TaskPushNotificationConfig]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_task_push_notification_config(name, tenant: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}', options)
          command.response_representation = Google::Apis::WorkspaceeventsV1::TaskPushNotificationConfig::Representation
          command.response_class = Google::Apis::WorkspaceeventsV1::TaskPushNotificationConfig
          command.params['name'] = name unless name.nil?
          command.query['tenant'] = tenant unless tenant.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Get a list of push notifications configured for a task.
        # @param [String] parent
        #   The parent task resource. Format: tasks/`task_id`
        # @param [Fixnum] page_size
        #   For AIP-158 these fields are present. Usually not used/needed. The maximum
        #   number of configurations to return. If unspecified, all configs will be
        #   returned.
        # @param [String] page_token
        #   A page token received from a previous ListTaskPushNotificationConfigRequest
        #   call. Provide this to retrieve the subsequent page. When paginating, all other
        #   parameters provided to `ListTaskPushNotificationConfigRequest` must match the
        #   call that provided the page token.
        # @param [String] tenant
        #   Optional tenant, provided as a path parameter. Experimental, might still
        #   change for 1.0 release.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::WorkspaceeventsV1::ListTaskPushNotificationConfigResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::WorkspaceeventsV1::ListTaskPushNotificationConfigResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_task_push_notification_configs(parent, page_size: nil, page_token: nil, tenant: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+parent}/pushNotificationConfigs', options)
          command.response_representation = Google::Apis::WorkspaceeventsV1::ListTaskPushNotificationConfigResponse::Representation
          command.response_class = Google::Apis::WorkspaceeventsV1::ListTaskPushNotificationConfigResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['tenant'] = tenant unless tenant.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end

        protected

        def apply_command_defaults(command)
          command.query['key'] = key unless key.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
        end
      end
    end
  end
end
