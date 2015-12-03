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

require 'google/apis/core/base_service'
require 'google/apis/core/json_representation'
require 'google/apis/core/hashable'
require 'google/apis/errors'

module Google
  module Apis
    module GmailV1
      # Gmail API
      #
      # The Gmail REST API.
      #
      # @example
      #    require 'google/apis/gmail_v1'
      #
      #    Gmail = Google::Apis::GmailV1 # Alias the module
      #    service = Gmail::GmailService.new
      #
      # @see https://developers.google.com/gmail/api/
      class GmailService < Google::Apis::Core::BaseService
        # @return [String]
        #  API key. Your API key identifies your project and provides you with API access,
        #  quota, and reports. Required unless you provide an OAuth 2.0 token.
        attr_accessor :key

        # @return [String]
        #  Available to use for quota purposes for server-side applications. Can be any
        #  arbitrary string assigned to a user, but should not exceed 40 characters.
        #  Overrides userIp if both are provided.
        attr_accessor :quota_user

        # @return [String]
        #  IP address of the site where the request originates. Use this if you want to
        #  enforce per-user limits.
        attr_accessor :user_ip

        def initialize
          super('https://www.googleapis.com/', 'gmail/v1/users/')
        end
        
        # Gets the current user's Gmail profile.
        # @param [String] user_id
        #   The user's email address. The special value me can be used to indicate the
        #   authenticated user.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::GmailV1::Profile] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::GmailV1::Profile]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_user_profile(user_id, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          command =  make_simple_command(:get, '{userId}/profile', options)
          command.response_representation = Google::Apis::GmailV1::Profile::Representation
          command.response_class = Google::Apis::GmailV1::Profile
          command.params['userId'] = user_id unless user_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Stop receiving push notifications for the given user mailbox.
        # @param [String] user_id
        #   The user's email address. The special value me can be used to indicate the
        #   authenticated user.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [NilClass] No result returned for this method
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [void]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def stop_user(user_id, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          command =  make_simple_command(:post, '{userId}/stop', options)
          command.params['userId'] = user_id unless user_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Set up or update a push notification watch on the given user mailbox.
        # @param [String] user_id
        #   The user's email address. The special value me can be used to indicate the
        #   authenticated user.
        # @param [Google::Apis::GmailV1::WatchRequest] watch_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::GmailV1::WatchResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::GmailV1::WatchResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def watch_user(user_id, watch_request_object = nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          command =  make_simple_command(:post, '{userId}/watch', options)
          command.request_representation = Google::Apis::GmailV1::WatchRequest::Representation
          command.request_object = watch_request_object
          command.response_representation = Google::Apis::GmailV1::WatchResponse::Representation
          command.response_class = Google::Apis::GmailV1::WatchResponse
          command.params['userId'] = user_id unless user_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a new draft with the DRAFT label.
        # @param [String] user_id
        #   The user's email address. The special value me can be used to indicate the
        #   authenticated user.
        # @param [Google::Apis::GmailV1::Draft] draft_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [IO, String] upload_source
        #   IO stream or filename containing content to upload
        # @param [String] content_type
        #   Content type of the uploaded content.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::GmailV1::Draft] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::GmailV1::Draft]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_user_draft(user_id, draft_object = nil, fields: nil, quota_user: nil, user_ip: nil, upload_source: nil, content_type: nil, options: nil, &block)
          if upload_source.nil?
            command =  make_simple_command(:post, '{userId}/drafts', options)
          else
            command = make_upload_command(:post, '{userId}/drafts', options)
            command.upload_source = upload_source
            command.upload_content_type = content_type
          end
          command.request_representation = Google::Apis::GmailV1::Draft::Representation
          command.request_object = draft_object
          command.response_representation = Google::Apis::GmailV1::Draft::Representation
          command.response_class = Google::Apis::GmailV1::Draft
          command.params['userId'] = user_id unless user_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Immediately and permanently deletes the specified draft. Does not simply trash
        # it.
        # @param [String] user_id
        #   The user's email address. The special value me can be used to indicate the
        #   authenticated user.
        # @param [String] id
        #   The ID of the draft to delete.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [NilClass] No result returned for this method
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [void]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_user_draft(user_id, id, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          command =  make_simple_command(:delete, '{userId}/drafts/{id}', options)
          command.params['userId'] = user_id unless user_id.nil?
          command.params['id'] = id unless id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets the specified draft.
        # @param [String] user_id
        #   The user's email address. The special value me can be used to indicate the
        #   authenticated user.
        # @param [String] id
        #   The ID of the draft to retrieve.
        # @param [String] format
        #   The format to return the draft in.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::GmailV1::Draft] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::GmailV1::Draft]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_user_draft(user_id, id, format: nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          command =  make_simple_command(:get, '{userId}/drafts/{id}', options)
          command.response_representation = Google::Apis::GmailV1::Draft::Representation
          command.response_class = Google::Apis::GmailV1::Draft
          command.params['userId'] = user_id unless user_id.nil?
          command.params['id'] = id unless id.nil?
          command.query['format'] = format unless format.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists the drafts in the user's mailbox.
        # @param [String] user_id
        #   The user's email address. The special value me can be used to indicate the
        #   authenticated user.
        # @param [Fixnum] max_results
        #   Maximum number of drafts to return.
        # @param [String] page_token
        #   Page token to retrieve a specific page of results in the list.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::GmailV1::ListDraftsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::GmailV1::ListDraftsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_user_drafts(user_id, max_results: nil, page_token: nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          command =  make_simple_command(:get, '{userId}/drafts', options)
          command.response_representation = Google::Apis::GmailV1::ListDraftsResponse::Representation
          command.response_class = Google::Apis::GmailV1::ListDraftsResponse
          command.params['userId'] = user_id unless user_id.nil?
          command.query['maxResults'] = max_results unless max_results.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Sends the specified, existing draft to the recipients in the To, Cc, and Bcc
        # headers.
        # @param [String] user_id
        #   The user's email address. The special value me can be used to indicate the
        #   authenticated user.
        # @param [Google::Apis::GmailV1::Draft] draft_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [IO, String] upload_source
        #   IO stream or filename containing content to upload
        # @param [String] content_type
        #   Content type of the uploaded content.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::GmailV1::Message] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::GmailV1::Message]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def send_user_draft(user_id, draft_object = nil, fields: nil, quota_user: nil, user_ip: nil, upload_source: nil, content_type: nil, options: nil, &block)
          if upload_source.nil?
            command =  make_simple_command(:post, '{userId}/drafts/send', options)
          else
            command = make_upload_command(:post, '{userId}/drafts/send', options)
            command.upload_source = upload_source
            command.upload_content_type = content_type
          end
          command.request_representation = Google::Apis::GmailV1::Draft::Representation
          command.request_object = draft_object
          command.response_representation = Google::Apis::GmailV1::Message::Representation
          command.response_class = Google::Apis::GmailV1::Message
          command.params['userId'] = user_id unless user_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Replaces a draft's content.
        # @param [String] user_id
        #   The user's email address. The special value me can be used to indicate the
        #   authenticated user.
        # @param [String] id
        #   The ID of the draft to update.
        # @param [Google::Apis::GmailV1::Draft] draft_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [IO, String] upload_source
        #   IO stream or filename containing content to upload
        # @param [String] content_type
        #   Content type of the uploaded content.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::GmailV1::Draft] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::GmailV1::Draft]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def update_user_draft(user_id, id, draft_object = nil, fields: nil, quota_user: nil, user_ip: nil, upload_source: nil, content_type: nil, options: nil, &block)
          if upload_source.nil?
            command =  make_simple_command(:put, '{userId}/drafts/{id}', options)
          else
            command = make_upload_command(:put, '{userId}/drafts/{id}', options)
            command.upload_source = upload_source
            command.upload_content_type = content_type
          end
          command.request_representation = Google::Apis::GmailV1::Draft::Representation
          command.request_object = draft_object
          command.response_representation = Google::Apis::GmailV1::Draft::Representation
          command.response_class = Google::Apis::GmailV1::Draft
          command.params['userId'] = user_id unless user_id.nil?
          command.params['id'] = id unless id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists the history of all changes to the given mailbox. History results are
        # returned in chronological order (increasing historyId).
        # @param [String] user_id
        #   The user's email address. The special value me can be used to indicate the
        #   authenticated user.
        # @param [String] label_id
        #   Only return messages with a label matching the ID.
        # @param [Fixnum] max_results
        #   The maximum number of history records to return.
        # @param [String] page_token
        #   Page token to retrieve a specific page of results in the list.
        # @param [String] start_history_id
        #   Required. Returns history records after the specified startHistoryId. The
        #   supplied startHistoryId should be obtained from the historyId of a message,
        #   thread, or previous list response. History IDs increase chronologically but
        #   are not contiguous with random gaps in between valid IDs. Supplying an invalid
        #   or out of date startHistoryId typically returns an HTTP 404 error code. A
        #   historyId is typically valid for at least a week, but in some rare
        #   circumstances may be valid for only a few hours. If you receive an HTTP 404
        #   error response, your application should perform a full sync. If you receive no
        #   nextPageToken in the response, there are no updates to retrieve and you can
        #   store the returned historyId for a future request.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::GmailV1::ListHistoryResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::GmailV1::ListHistoryResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_user_histories(user_id, label_id: nil, max_results: nil, page_token: nil, start_history_id: nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          command =  make_simple_command(:get, '{userId}/history', options)
          command.response_representation = Google::Apis::GmailV1::ListHistoryResponse::Representation
          command.response_class = Google::Apis::GmailV1::ListHistoryResponse
          command.params['userId'] = user_id unless user_id.nil?
          command.query['labelId'] = label_id unless label_id.nil?
          command.query['maxResults'] = max_results unless max_results.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['startHistoryId'] = start_history_id unless start_history_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a new label.
        # @param [String] user_id
        #   The user's email address. The special value me can be used to indicate the
        #   authenticated user.
        # @param [Google::Apis::GmailV1::Label] label_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::GmailV1::Label] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::GmailV1::Label]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_user_label(user_id, label_object = nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          command =  make_simple_command(:post, '{userId}/labels', options)
          command.request_representation = Google::Apis::GmailV1::Label::Representation
          command.request_object = label_object
          command.response_representation = Google::Apis::GmailV1::Label::Representation
          command.response_class = Google::Apis::GmailV1::Label
          command.params['userId'] = user_id unless user_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Immediately and permanently deletes the specified label and removes it from
        # any messages and threads that it is applied to.
        # @param [String] user_id
        #   The user's email address. The special value me can be used to indicate the
        #   authenticated user.
        # @param [String] id
        #   The ID of the label to delete.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [NilClass] No result returned for this method
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [void]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_user_label(user_id, id, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          command =  make_simple_command(:delete, '{userId}/labels/{id}', options)
          command.params['userId'] = user_id unless user_id.nil?
          command.params['id'] = id unless id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets the specified label.
        # @param [String] user_id
        #   The user's email address. The special value me can be used to indicate the
        #   authenticated user.
        # @param [String] id
        #   The ID of the label to retrieve.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::GmailV1::Label] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::GmailV1::Label]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_user_label(user_id, id, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          command =  make_simple_command(:get, '{userId}/labels/{id}', options)
          command.response_representation = Google::Apis::GmailV1::Label::Representation
          command.response_class = Google::Apis::GmailV1::Label
          command.params['userId'] = user_id unless user_id.nil?
          command.params['id'] = id unless id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists all labels in the user's mailbox.
        # @param [String] user_id
        #   The user's email address. The special value me can be used to indicate the
        #   authenticated user.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::GmailV1::ListLabelsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::GmailV1::ListLabelsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_user_labels(user_id, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          command =  make_simple_command(:get, '{userId}/labels', options)
          command.response_representation = Google::Apis::GmailV1::ListLabelsResponse::Representation
          command.response_class = Google::Apis::GmailV1::ListLabelsResponse
          command.params['userId'] = user_id unless user_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates the specified label. This method supports patch semantics.
        # @param [String] user_id
        #   The user's email address. The special value me can be used to indicate the
        #   authenticated user.
        # @param [String] id
        #   The ID of the label to update.
        # @param [Google::Apis::GmailV1::Label] label_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::GmailV1::Label] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::GmailV1::Label]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_user_label(user_id, id, label_object = nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          command =  make_simple_command(:patch, '{userId}/labels/{id}', options)
          command.request_representation = Google::Apis::GmailV1::Label::Representation
          command.request_object = label_object
          command.response_representation = Google::Apis::GmailV1::Label::Representation
          command.response_class = Google::Apis::GmailV1::Label
          command.params['userId'] = user_id unless user_id.nil?
          command.params['id'] = id unless id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates the specified label.
        # @param [String] user_id
        #   The user's email address. The special value me can be used to indicate the
        #   authenticated user.
        # @param [String] id
        #   The ID of the label to update.
        # @param [Google::Apis::GmailV1::Label] label_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::GmailV1::Label] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::GmailV1::Label]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def update_user_label(user_id, id, label_object = nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          command =  make_simple_command(:put, '{userId}/labels/{id}', options)
          command.request_representation = Google::Apis::GmailV1::Label::Representation
          command.request_object = label_object
          command.response_representation = Google::Apis::GmailV1::Label::Representation
          command.response_class = Google::Apis::GmailV1::Label
          command.params['userId'] = user_id unless user_id.nil?
          command.params['id'] = id unless id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Immediately and permanently deletes the specified message. This operation
        # cannot be undone. Prefer messages.trash instead.
        # @param [String] user_id
        #   The user's email address. The special value me can be used to indicate the
        #   authenticated user.
        # @param [String] id
        #   The ID of the message to delete.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [NilClass] No result returned for this method
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [void]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_user_message(user_id, id, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          command =  make_simple_command(:delete, '{userId}/messages/{id}', options)
          command.params['userId'] = user_id unless user_id.nil?
          command.params['id'] = id unless id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets the specified message.
        # @param [String] user_id
        #   The user's email address. The special value me can be used to indicate the
        #   authenticated user.
        # @param [String] id
        #   The ID of the message to retrieve.
        # @param [String] format
        #   The format to return the message in.
        # @param [Array<String>, String] metadata_headers
        #   When given and format is METADATA, only include headers specified.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::GmailV1::Message] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::GmailV1::Message]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_user_message(user_id, id, format: nil, metadata_headers: nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          command =  make_simple_command(:get, '{userId}/messages/{id}', options)
          command.response_representation = Google::Apis::GmailV1::Message::Representation
          command.response_class = Google::Apis::GmailV1::Message
          command.params['userId'] = user_id unless user_id.nil?
          command.params['id'] = id unless id.nil?
          command.query['format'] = format unless format.nil?
          command.query['metadataHeaders'] = metadata_headers unless metadata_headers.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Imports a message into only this user's mailbox, with standard email delivery
        # scanning and classification similar to receiving via SMTP. Does not send a
        # message.
        # @param [String] user_id
        #   The user's email address. The special value me can be used to indicate the
        #   authenticated user.
        # @param [Google::Apis::GmailV1::Message] message_object
        # @param [Boolean] deleted
        #   Mark the email as permanently deleted (not TRASH) and only visible in Google
        #   Apps Vault to a Vault administrator. Only used for Google Apps for Work
        #   accounts.
        # @param [String] internal_date_source
        #   Source for Gmail's internal date of the message.
        # @param [Boolean] never_mark_spam
        #   Ignore the Gmail spam classifier decision and never mark this email as SPAM in
        #   the mailbox.
        # @param [Boolean] process_for_calendar
        #   Process calendar invites in the email and add any extracted meetings to the
        #   Google Calendar for this user.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [IO, String] upload_source
        #   IO stream or filename containing content to upload
        # @param [String] content_type
        #   Content type of the uploaded content.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::GmailV1::Message] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::GmailV1::Message]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def import_user_message(user_id, message_object = nil, deleted: nil, internal_date_source: nil, never_mark_spam: nil, process_for_calendar: nil, fields: nil, quota_user: nil, user_ip: nil, upload_source: nil, content_type: nil, options: nil, &block)
          if upload_source.nil?
            command =  make_simple_command(:post, '{userId}/messages/import', options)
          else
            command = make_upload_command(:post, '{userId}/messages/import', options)
            command.upload_source = upload_source
            command.upload_content_type = content_type
          end
          command.request_representation = Google::Apis::GmailV1::Message::Representation
          command.request_object = message_object
          command.response_representation = Google::Apis::GmailV1::Message::Representation
          command.response_class = Google::Apis::GmailV1::Message
          command.params['userId'] = user_id unless user_id.nil?
          command.query['deleted'] = deleted unless deleted.nil?
          command.query['internalDateSource'] = internal_date_source unless internal_date_source.nil?
          command.query['neverMarkSpam'] = never_mark_spam unless never_mark_spam.nil?
          command.query['processForCalendar'] = process_for_calendar unless process_for_calendar.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Directly inserts a message into only this user's mailbox similar to IMAP
        # APPEND, bypassing most scanning and classification. Does not send a message.
        # @param [String] user_id
        #   The user's email address. The special value me can be used to indicate the
        #   authenticated user.
        # @param [Google::Apis::GmailV1::Message] message_object
        # @param [Boolean] deleted
        #   Mark the email as permanently deleted (not TRASH) and only visible in Google
        #   Apps Vault to a Vault administrator. Only used for Google Apps for Work
        #   accounts.
        # @param [String] internal_date_source
        #   Source for Gmail's internal date of the message.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [IO, String] upload_source
        #   IO stream or filename containing content to upload
        # @param [String] content_type
        #   Content type of the uploaded content.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::GmailV1::Message] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::GmailV1::Message]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def insert_user_message(user_id, message_object = nil, deleted: nil, internal_date_source: nil, fields: nil, quota_user: nil, user_ip: nil, upload_source: nil, content_type: nil, options: nil, &block)
          if upload_source.nil?
            command =  make_simple_command(:post, '{userId}/messages', options)
          else
            command = make_upload_command(:post, '{userId}/messages', options)
            command.upload_source = upload_source
            command.upload_content_type = content_type
          end
          command.request_representation = Google::Apis::GmailV1::Message::Representation
          command.request_object = message_object
          command.response_representation = Google::Apis::GmailV1::Message::Representation
          command.response_class = Google::Apis::GmailV1::Message
          command.params['userId'] = user_id unless user_id.nil?
          command.query['deleted'] = deleted unless deleted.nil?
          command.query['internalDateSource'] = internal_date_source unless internal_date_source.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists the messages in the user's mailbox.
        # @param [String] user_id
        #   The user's email address. The special value me can be used to indicate the
        #   authenticated user.
        # @param [Boolean] include_spam_trash
        #   Include messages from SPAM and TRASH in the results.
        # @param [Array<String>, String] label_ids
        #   Only return messages with labels that match all of the specified label IDs.
        # @param [Fixnum] max_results
        #   Maximum number of messages to return.
        # @param [String] page_token
        #   Page token to retrieve a specific page of results in the list.
        # @param [String] q
        #   Only return messages matching the specified query. Supports the same query
        #   format as the Gmail search box. For example, "from:someuser@example.com
        #   rfc822msgid: is:unread".
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::GmailV1::ListMessagesResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::GmailV1::ListMessagesResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_user_messages(user_id, include_spam_trash: nil, label_ids: nil, max_results: nil, page_token: nil, q: nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          command =  make_simple_command(:get, '{userId}/messages', options)
          command.response_representation = Google::Apis::GmailV1::ListMessagesResponse::Representation
          command.response_class = Google::Apis::GmailV1::ListMessagesResponse
          command.params['userId'] = user_id unless user_id.nil?
          command.query['includeSpamTrash'] = include_spam_trash unless include_spam_trash.nil?
          command.query['labelIds'] = label_ids unless label_ids.nil?
          command.query['maxResults'] = max_results unless max_results.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['q'] = q unless q.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Modifies the labels on the specified message.
        # @param [String] user_id
        #   The user's email address. The special value me can be used to indicate the
        #   authenticated user.
        # @param [String] id
        #   The ID of the message to modify.
        # @param [Google::Apis::GmailV1::ModifyMessageRequest] modify_message_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::GmailV1::Message] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::GmailV1::Message]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def modify_message(user_id, id, modify_message_request_object = nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          command =  make_simple_command(:post, '{userId}/messages/{id}/modify', options)
          command.request_representation = Google::Apis::GmailV1::ModifyMessageRequest::Representation
          command.request_object = modify_message_request_object
          command.response_representation = Google::Apis::GmailV1::Message::Representation
          command.response_class = Google::Apis::GmailV1::Message
          command.params['userId'] = user_id unless user_id.nil?
          command.params['id'] = id unless id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Sends the specified message to the recipients in the To, Cc, and Bcc headers.
        # @param [String] user_id
        #   The user's email address. The special value me can be used to indicate the
        #   authenticated user.
        # @param [Google::Apis::GmailV1::Message] message_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [IO, String] upload_source
        #   IO stream or filename containing content to upload
        # @param [String] content_type
        #   Content type of the uploaded content.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::GmailV1::Message] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::GmailV1::Message]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def send_user_message(user_id, message_object = nil, fields: nil, quota_user: nil, user_ip: nil, upload_source: nil, content_type: nil, options: nil, &block)
          if upload_source.nil?
            command =  make_simple_command(:post, '{userId}/messages/send', options)
          else
            command = make_upload_command(:post, '{userId}/messages/send', options)
            command.upload_source = upload_source
            command.upload_content_type = content_type
          end
          command.request_representation = Google::Apis::GmailV1::Message::Representation
          command.request_object = message_object
          command.response_representation = Google::Apis::GmailV1::Message::Representation
          command.response_class = Google::Apis::GmailV1::Message
          command.params['userId'] = user_id unless user_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Moves the specified message to the trash.
        # @param [String] user_id
        #   The user's email address. The special value me can be used to indicate the
        #   authenticated user.
        # @param [String] id
        #   The ID of the message to Trash.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::GmailV1::Message] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::GmailV1::Message]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def trash_user_message(user_id, id, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          command =  make_simple_command(:post, '{userId}/messages/{id}/trash', options)
          command.response_representation = Google::Apis::GmailV1::Message::Representation
          command.response_class = Google::Apis::GmailV1::Message
          command.params['userId'] = user_id unless user_id.nil?
          command.params['id'] = id unless id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Removes the specified message from the trash.
        # @param [String] user_id
        #   The user's email address. The special value me can be used to indicate the
        #   authenticated user.
        # @param [String] id
        #   The ID of the message to remove from Trash.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::GmailV1::Message] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::GmailV1::Message]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def untrash_user_message(user_id, id, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          command =  make_simple_command(:post, '{userId}/messages/{id}/untrash', options)
          command.response_representation = Google::Apis::GmailV1::Message::Representation
          command.response_class = Google::Apis::GmailV1::Message
          command.params['userId'] = user_id unless user_id.nil?
          command.params['id'] = id unless id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets the specified message attachment.
        # @param [String] user_id
        #   The user's email address. The special value me can be used to indicate the
        #   authenticated user.
        # @param [String] message_id
        #   The ID of the message containing the attachment.
        # @param [String] id
        #   The ID of the attachment.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::GmailV1::MessagePartBody] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::GmailV1::MessagePartBody]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_user_message_attachment(user_id, message_id, id, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          command =  make_simple_command(:get, '{userId}/messages/{messageId}/attachments/{id}', options)
          command.response_representation = Google::Apis::GmailV1::MessagePartBody::Representation
          command.response_class = Google::Apis::GmailV1::MessagePartBody
          command.params['userId'] = user_id unless user_id.nil?
          command.params['messageId'] = message_id unless message_id.nil?
          command.params['id'] = id unless id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Immediately and permanently deletes the specified thread. This operation
        # cannot be undone. Prefer threads.trash instead.
        # @param [String] user_id
        #   The user's email address. The special value me can be used to indicate the
        #   authenticated user.
        # @param [String] id
        #   ID of the Thread to delete.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [NilClass] No result returned for this method
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [void]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_user_thread(user_id, id, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          command =  make_simple_command(:delete, '{userId}/threads/{id}', options)
          command.params['userId'] = user_id unless user_id.nil?
          command.params['id'] = id unless id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets the specified thread.
        # @param [String] user_id
        #   The user's email address. The special value me can be used to indicate the
        #   authenticated user.
        # @param [String] id
        #   The ID of the thread to retrieve.
        # @param [String] format
        #   The format to return the messages in.
        # @param [Array<String>, String] metadata_headers
        #   When given and format is METADATA, only include headers specified.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::GmailV1::Thread] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::GmailV1::Thread]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_user_thread(user_id, id, format: nil, metadata_headers: nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          command =  make_simple_command(:get, '{userId}/threads/{id}', options)
          command.response_representation = Google::Apis::GmailV1::Thread::Representation
          command.response_class = Google::Apis::GmailV1::Thread
          command.params['userId'] = user_id unless user_id.nil?
          command.params['id'] = id unless id.nil?
          command.query['format'] = format unless format.nil?
          command.query['metadataHeaders'] = metadata_headers unless metadata_headers.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists the threads in the user's mailbox.
        # @param [String] user_id
        #   The user's email address. The special value me can be used to indicate the
        #   authenticated user.
        # @param [Boolean] include_spam_trash
        #   Include threads from SPAM and TRASH in the results.
        # @param [Array<String>, String] label_ids
        #   Only return threads with labels that match all of the specified label IDs.
        # @param [Fixnum] max_results
        #   Maximum number of threads to return.
        # @param [String] page_token
        #   Page token to retrieve a specific page of results in the list.
        # @param [String] q
        #   Only return threads matching the specified query. Supports the same query
        #   format as the Gmail search box. For example, "from:someuser@example.com
        #   rfc822msgid: is:unread".
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::GmailV1::ListThreadsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::GmailV1::ListThreadsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_user_threads(user_id, include_spam_trash: nil, label_ids: nil, max_results: nil, page_token: nil, q: nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          command =  make_simple_command(:get, '{userId}/threads', options)
          command.response_representation = Google::Apis::GmailV1::ListThreadsResponse::Representation
          command.response_class = Google::Apis::GmailV1::ListThreadsResponse
          command.params['userId'] = user_id unless user_id.nil?
          command.query['includeSpamTrash'] = include_spam_trash unless include_spam_trash.nil?
          command.query['labelIds'] = label_ids unless label_ids.nil?
          command.query['maxResults'] = max_results unless max_results.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['q'] = q unless q.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Modifies the labels applied to the thread. This applies to all messages in the
        # thread.
        # @param [String] user_id
        #   The user's email address. The special value me can be used to indicate the
        #   authenticated user.
        # @param [String] id
        #   The ID of the thread to modify.
        # @param [Google::Apis::GmailV1::ModifyThreadRequest] modify_thread_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::GmailV1::Thread] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::GmailV1::Thread]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def modify_thread(user_id, id, modify_thread_request_object = nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          command =  make_simple_command(:post, '{userId}/threads/{id}/modify', options)
          command.request_representation = Google::Apis::GmailV1::ModifyThreadRequest::Representation
          command.request_object = modify_thread_request_object
          command.response_representation = Google::Apis::GmailV1::Thread::Representation
          command.response_class = Google::Apis::GmailV1::Thread
          command.params['userId'] = user_id unless user_id.nil?
          command.params['id'] = id unless id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Moves the specified thread to the trash.
        # @param [String] user_id
        #   The user's email address. The special value me can be used to indicate the
        #   authenticated user.
        # @param [String] id
        #   The ID of the thread to Trash.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::GmailV1::Thread] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::GmailV1::Thread]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def trash_user_thread(user_id, id, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          command =  make_simple_command(:post, '{userId}/threads/{id}/trash', options)
          command.response_representation = Google::Apis::GmailV1::Thread::Representation
          command.response_class = Google::Apis::GmailV1::Thread
          command.params['userId'] = user_id unless user_id.nil?
          command.params['id'] = id unless id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Removes the specified thread from the trash.
        # @param [String] user_id
        #   The user's email address. The special value me can be used to indicate the
        #   authenticated user.
        # @param [String] id
        #   The ID of the thread to remove from Trash.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::GmailV1::Thread] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::GmailV1::Thread]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def untrash_user_thread(user_id, id, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          command =  make_simple_command(:post, '{userId}/threads/{id}/untrash', options)
          command.response_representation = Google::Apis::GmailV1::Thread::Representation
          command.response_class = Google::Apis::GmailV1::Thread
          command.params['userId'] = user_id unless user_id.nil?
          command.params['id'] = id unless id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end

        protected

        def apply_command_defaults(command)
          command.query['key'] = key unless key.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
        end
      end
    end
  end
end
