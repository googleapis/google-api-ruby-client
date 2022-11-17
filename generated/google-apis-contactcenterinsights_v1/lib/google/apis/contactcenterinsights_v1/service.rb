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
    module ContactcenterinsightsV1
      # Contact Center AI Insights API
      #
      # 
      #
      # @example
      #    require 'google/apis/contactcenterinsights_v1'
      #
      #    Contactcenterinsights = Google::Apis::ContactcenterinsightsV1 # Alias the module
      #    service = Contactcenterinsights::ContactcenterinsightsService.new
      #
      # @see https://cloud.google.com/contact-center/insights/docs
      class ContactcenterinsightsService < Google::Apis::Core::BaseService
        # @return [String]
        #  API key. Your API key identifies your project and provides you with API access,
        #  quota, and reports. Required unless you provide an OAuth 2.0 token.
        attr_accessor :key

        # @return [String]
        #  Available to use for quota purposes for server-side applications. Can be any
        #  arbitrary string assigned to a user, but should not exceed 40 characters.
        attr_accessor :quota_user

        def initialize
          super('https://contactcenterinsights.googleapis.com/', '',
                client_name: 'google-apis-contactcenterinsights_v1',
                client_version: Google::Apis::ContactcenterinsightsV1::GEM_VERSION)
          @batch_path = 'batch'
        end
        
        # Gets project-level settings.
        # @param [String] name
        #   Required. The name of the settings resource to get.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1Settings] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1Settings]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_settings(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}', options)
          command.response_representation = Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1Settings::Representation
          command.response_class = Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1Settings
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates project-level settings.
        # @param [String] name
        #   Immutable. The resource name of the settings resource. Format: projects/`
        #   project`/locations/`location`/settings
        # @param [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1Settings] google_cloud_contactcenterinsights_v1_settings_object
        # @param [String] update_mask
        #   Required. The list of fields to be updated.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1Settings] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1Settings]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def update_project_location_settings(name, google_cloud_contactcenterinsights_v1_settings_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v1/{+name}', options)
          command.request_representation = Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1Settings::Representation
          command.request_object = google_cloud_contactcenterinsights_v1_settings_object
          command.response_representation = Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1Settings::Representation
          command.response_class = Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1Settings
          command.params['name'] = name unless name.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Analyzes multiple conversations in a single request.
        # @param [String] parent
        #   Required. The parent resource to create analyses in.
        # @param [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1BulkAnalyzeConversationsRequest] google_cloud_contactcenterinsights_v1_bulk_analyze_conversations_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ContactcenterinsightsV1::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ContactcenterinsightsV1::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def bulk_project_location_conversation_analyze(parent, google_cloud_contactcenterinsights_v1_bulk_analyze_conversations_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+parent}/conversations:bulkAnalyze', options)
          command.request_representation = Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1BulkAnalyzeConversationsRequest::Representation
          command.request_object = google_cloud_contactcenterinsights_v1_bulk_analyze_conversations_request_object
          command.response_representation = Google::Apis::ContactcenterinsightsV1::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::ContactcenterinsightsV1::GoogleLongrunningOperation
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets conversation statistics.
        # @param [String] location
        #   Required. The location of the conversations.
        # @param [String] filter
        #   A filter to reduce results to a specific subset. This field is useful for
        #   getting statistics about conversations with specific properties.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1CalculateStatsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1CalculateStatsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def calculate_project_location_conversation_stats(location, filter: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+location}/conversations:calculateStats', options)
          command.response_representation = Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1CalculateStatsResponse::Representation
          command.response_class = Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1CalculateStatsResponse
          command.params['location'] = location unless location.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a conversation.
        # @param [String] parent
        #   Required. The parent resource of the conversation.
        # @param [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1Conversation] google_cloud_contactcenterinsights_v1_conversation_object
        # @param [String] conversation_id
        #   A unique ID for the new conversation. This ID will become the final component
        #   of the conversation's resource name. If no ID is specified, a server-generated
        #   ID will be used. This value should be 4-64 characters and must match the
        #   regular expression `^[a-z0-9-]`4,64`$`. Valid characters are `a-z-`
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1Conversation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1Conversation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_location_conversation(parent, google_cloud_contactcenterinsights_v1_conversation_object = nil, conversation_id: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+parent}/conversations', options)
          command.request_representation = Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1Conversation::Representation
          command.request_object = google_cloud_contactcenterinsights_v1_conversation_object
          command.response_representation = Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1Conversation::Representation
          command.response_class = Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1Conversation
          command.params['parent'] = parent unless parent.nil?
          command.query['conversationId'] = conversation_id unless conversation_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes a conversation.
        # @param [String] name
        #   Required. The name of the conversation to delete.
        # @param [Boolean] force
        #   If set to true, all of this conversation's analyses will also be deleted.
        #   Otherwise, the request will only succeed if the conversation has no analyses.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ContactcenterinsightsV1::GoogleProtobufEmpty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ContactcenterinsightsV1::GoogleProtobufEmpty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_location_conversation(name, force: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1/{+name}', options)
          command.response_representation = Google::Apis::ContactcenterinsightsV1::GoogleProtobufEmpty::Representation
          command.response_class = Google::Apis::ContactcenterinsightsV1::GoogleProtobufEmpty
          command.params['name'] = name unless name.nil?
          command.query['force'] = force unless force.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets a conversation.
        # @param [String] name
        #   Required. The name of the conversation to get.
        # @param [String] view
        #   The level of details of the conversation. Default is `FULL`.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1Conversation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1Conversation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_conversation(name, view: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}', options)
          command.response_representation = Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1Conversation::Representation
          command.response_class = Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1Conversation
          command.params['name'] = name unless name.nil?
          command.query['view'] = view unless view.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Imports conversations and processes them according to the user's configuration.
        # @param [String] parent
        #   Required. The parent resource for new conversations.
        # @param [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1IngestConversationsRequest] google_cloud_contactcenterinsights_v1_ingest_conversations_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ContactcenterinsightsV1::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ContactcenterinsightsV1::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def ingest_project_location_conversation(parent, google_cloud_contactcenterinsights_v1_ingest_conversations_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+parent}/conversations:ingest', options)
          command.request_representation = Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1IngestConversationsRequest::Representation
          command.request_object = google_cloud_contactcenterinsights_v1_ingest_conversations_request_object
          command.response_representation = Google::Apis::ContactcenterinsightsV1::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::ContactcenterinsightsV1::GoogleLongrunningOperation
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists conversations.
        # @param [String] parent
        #   Required. The parent resource of the conversation.
        # @param [String] filter
        #   A filter to reduce results to a specific subset. Useful for querying
        #   conversations with specific properties.
        # @param [Fixnum] page_size
        #   The maximum number of conversations to return in the response. A valid page
        #   size ranges from 0 to 1,000 inclusive. If the page size is zero or unspecified,
        #   a default page size of 100 will be chosen. Note that a call might return
        #   fewer results than the requested page size.
        # @param [String] page_token
        #   The value returned by the last `ListConversationsResponse`. This value
        #   indicates that this is a continuation of a prior `ListConversations` call and
        #   that the system should return the next page of data.
        # @param [String] view
        #   The level of details of the conversation. Default is `BASIC`.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1ListConversationsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1ListConversationsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_conversations(parent, filter: nil, page_size: nil, page_token: nil, view: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+parent}/conversations', options)
          command.response_representation = Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1ListConversationsResponse::Representation
          command.response_class = Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1ListConversationsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['view'] = view unless view.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates a conversation.
        # @param [String] name
        #   Immutable. The resource name of the conversation. Format: projects/`project`/
        #   locations/`location`/conversations/`conversation`
        # @param [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1Conversation] google_cloud_contactcenterinsights_v1_conversation_object
        # @param [String] update_mask
        #   The list of fields to be updated.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1Conversation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1Conversation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_project_location_conversation(name, google_cloud_contactcenterinsights_v1_conversation_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v1/{+name}', options)
          command.request_representation = Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1Conversation::Representation
          command.request_object = google_cloud_contactcenterinsights_v1_conversation_object
          command.response_representation = Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1Conversation::Representation
          command.response_class = Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1Conversation
          command.params['name'] = name unless name.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates an analysis. The long running operation is done when the analysis has
        # completed.
        # @param [String] parent
        #   Required. The parent resource of the analysis.
        # @param [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1Analysis] google_cloud_contactcenterinsights_v1_analysis_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ContactcenterinsightsV1::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ContactcenterinsightsV1::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_location_conversation_analysis(parent, google_cloud_contactcenterinsights_v1_analysis_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+parent}/analyses', options)
          command.request_representation = Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1Analysis::Representation
          command.request_object = google_cloud_contactcenterinsights_v1_analysis_object
          command.response_representation = Google::Apis::ContactcenterinsightsV1::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::ContactcenterinsightsV1::GoogleLongrunningOperation
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes an analysis.
        # @param [String] name
        #   Required. The name of the analysis to delete.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ContactcenterinsightsV1::GoogleProtobufEmpty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ContactcenterinsightsV1::GoogleProtobufEmpty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_location_conversation_analysis(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1/{+name}', options)
          command.response_representation = Google::Apis::ContactcenterinsightsV1::GoogleProtobufEmpty::Representation
          command.response_class = Google::Apis::ContactcenterinsightsV1::GoogleProtobufEmpty
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets an analysis.
        # @param [String] name
        #   Required. The name of the analysis to get.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1Analysis] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1Analysis]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_conversation_analysis(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}', options)
          command.response_representation = Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1Analysis::Representation
          command.response_class = Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1Analysis
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists analyses.
        # @param [String] parent
        #   Required. The parent resource of the analyses.
        # @param [String] filter
        #   A filter to reduce results to a specific subset. Useful for querying
        #   conversations with specific properties.
        # @param [Fixnum] page_size
        #   The maximum number of analyses to return in the response. If this value is
        #   zero, the service will select a default size. A call might return fewer
        #   objects than requested. A non-empty `next_page_token` in the response
        #   indicates that more data is available.
        # @param [String] page_token
        #   The value returned by the last `ListAnalysesResponse`; indicates that this is
        #   a continuation of a prior `ListAnalyses` call and the system should return the
        #   next page of data.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1ListAnalysesResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1ListAnalysesResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_conversation_analyses(parent, filter: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+parent}/analyses', options)
          command.response_representation = Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1ListAnalysesResponse::Representation
          command.response_class = Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1ListAnalysesResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Export insights data to a destination defined in the request body.
        # @param [String] parent
        #   Required. The parent resource to export data from.
        # @param [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1ExportInsightsDataRequest] google_cloud_contactcenterinsights_v1_export_insights_data_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ContactcenterinsightsV1::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ContactcenterinsightsV1::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def export_project_location_insightsdatum(parent, google_cloud_contactcenterinsights_v1_export_insights_data_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+parent}/insightsdata:export', options)
          command.request_representation = Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1ExportInsightsDataRequest::Representation
          command.request_object = google_cloud_contactcenterinsights_v1_export_insights_data_request_object
          command.response_representation = Google::Apis::ContactcenterinsightsV1::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::ContactcenterinsightsV1::GoogleLongrunningOperation
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets an issue model's statistics.
        # @param [String] issue_model
        #   Required. The resource name of the issue model to query against.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1CalculateIssueModelStatsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1CalculateIssueModelStatsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def calculate_project_location_issue_model_issue_model_stats(issue_model, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+issueModel}:calculateIssueModelStats', options)
          command.response_representation = Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1CalculateIssueModelStatsResponse::Representation
          command.response_class = Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1CalculateIssueModelStatsResponse
          command.params['issueModel'] = issue_model unless issue_model.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates an issue model.
        # @param [String] parent
        #   Required. The parent resource of the issue model.
        # @param [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1IssueModel] google_cloud_contactcenterinsights_v1_issue_model_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ContactcenterinsightsV1::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ContactcenterinsightsV1::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_location_issue_model(parent, google_cloud_contactcenterinsights_v1_issue_model_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+parent}/issueModels', options)
          command.request_representation = Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1IssueModel::Representation
          command.request_object = google_cloud_contactcenterinsights_v1_issue_model_object
          command.response_representation = Google::Apis::ContactcenterinsightsV1::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::ContactcenterinsightsV1::GoogleLongrunningOperation
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes an issue model.
        # @param [String] name
        #   Required. The name of the issue model to delete.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ContactcenterinsightsV1::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ContactcenterinsightsV1::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_location_issue_model(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1/{+name}', options)
          command.response_representation = Google::Apis::ContactcenterinsightsV1::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::ContactcenterinsightsV1::GoogleLongrunningOperation
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deploys an issue model. Returns an error if a model is already deployed. An
        # issue model can only be used in analysis after it has been deployed.
        # @param [String] name
        #   Required. The issue model to deploy.
        # @param [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1DeployIssueModelRequest] google_cloud_contactcenterinsights_v1_deploy_issue_model_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ContactcenterinsightsV1::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ContactcenterinsightsV1::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def deploy_project_location_issue_model(name, google_cloud_contactcenterinsights_v1_deploy_issue_model_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+name}:deploy', options)
          command.request_representation = Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1DeployIssueModelRequest::Representation
          command.request_object = google_cloud_contactcenterinsights_v1_deploy_issue_model_request_object
          command.response_representation = Google::Apis::ContactcenterinsightsV1::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::ContactcenterinsightsV1::GoogleLongrunningOperation
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets an issue model.
        # @param [String] name
        #   Required. The name of the issue model to get.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1IssueModel] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1IssueModel]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_issue_model(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}', options)
          command.response_representation = Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1IssueModel::Representation
          command.response_class = Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1IssueModel
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists issue models.
        # @param [String] parent
        #   Required. The parent resource of the issue model.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1ListIssueModelsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1ListIssueModelsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_issue_models(parent, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+parent}/issueModels', options)
          command.response_representation = Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1ListIssueModelsResponse::Representation
          command.response_class = Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1ListIssueModelsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates an issue model.
        # @param [String] name
        #   Immutable. The resource name of the issue model. Format: projects/`project`/
        #   locations/`location`/issueModels/`issue_model`
        # @param [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1IssueModel] google_cloud_contactcenterinsights_v1_issue_model_object
        # @param [String] update_mask
        #   The list of fields to be updated.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1IssueModel] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1IssueModel]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_project_location_issue_model(name, google_cloud_contactcenterinsights_v1_issue_model_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v1/{+name}', options)
          command.request_representation = Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1IssueModel::Representation
          command.request_object = google_cloud_contactcenterinsights_v1_issue_model_object
          command.response_representation = Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1IssueModel::Representation
          command.response_class = Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1IssueModel
          command.params['name'] = name unless name.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Undeploys an issue model. An issue model can not be used in analysis after it
        # has been undeployed.
        # @param [String] name
        #   Required. The issue model to undeploy.
        # @param [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1UndeployIssueModelRequest] google_cloud_contactcenterinsights_v1_undeploy_issue_model_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ContactcenterinsightsV1::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ContactcenterinsightsV1::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def undeploy_project_location_issue_model(name, google_cloud_contactcenterinsights_v1_undeploy_issue_model_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+name}:undeploy', options)
          command.request_representation = Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1UndeployIssueModelRequest::Representation
          command.request_object = google_cloud_contactcenterinsights_v1_undeploy_issue_model_request_object
          command.response_representation = Google::Apis::ContactcenterinsightsV1::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::ContactcenterinsightsV1::GoogleLongrunningOperation
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes an issue.
        # @param [String] name
        #   Required. The name of the issue to delete.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ContactcenterinsightsV1::GoogleProtobufEmpty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ContactcenterinsightsV1::GoogleProtobufEmpty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_location_issue_model_issue(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1/{+name}', options)
          command.response_representation = Google::Apis::ContactcenterinsightsV1::GoogleProtobufEmpty::Representation
          command.response_class = Google::Apis::ContactcenterinsightsV1::GoogleProtobufEmpty
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets an issue.
        # @param [String] name
        #   Required. The name of the issue to get.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1Issue] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1Issue]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_issue_model_issue(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}', options)
          command.response_representation = Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1Issue::Representation
          command.response_class = Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1Issue
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists issues.
        # @param [String] parent
        #   Required. The parent resource of the issue.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1ListIssuesResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1ListIssuesResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_issue_model_issues(parent, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+parent}/issues', options)
          command.response_representation = Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1ListIssuesResponse::Representation
          command.response_class = Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1ListIssuesResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates an issue.
        # @param [String] name
        #   Immutable. The resource name of the issue. Format: projects/`project`/
        #   locations/`location`/issueModels/`issue_model`/issues/`issue`
        # @param [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1Issue] google_cloud_contactcenterinsights_v1_issue_object
        # @param [String] update_mask
        #   The list of fields to be updated.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1Issue] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1Issue]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_project_location_issue_model_issue(name, google_cloud_contactcenterinsights_v1_issue_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v1/{+name}', options)
          command.request_representation = Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1Issue::Representation
          command.request_object = google_cloud_contactcenterinsights_v1_issue_object
          command.response_representation = Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1Issue::Representation
          command.response_class = Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1Issue
          command.params['name'] = name unless name.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Starts asynchronous cancellation on a long-running operation. The server makes
        # a best effort to cancel the operation, but success is not guaranteed. If the
        # server doesn't support this method, it returns `google.rpc.Code.UNIMPLEMENTED`.
        # Clients can use Operations.GetOperation or other methods to check whether the
        # cancellation succeeded or whether the operation completed despite cancellation.
        # On successful cancellation, the operation is not deleted; instead, it becomes
        # an operation with an Operation.error value with a google.rpc.Status.code of 1,
        # corresponding to `Code.CANCELLED`.
        # @param [String] name
        #   The name of the operation resource to be cancelled.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ContactcenterinsightsV1::GoogleProtobufEmpty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ContactcenterinsightsV1::GoogleProtobufEmpty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def cancel_project_location_operation(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+name}:cancel', options)
          command.response_representation = Google::Apis::ContactcenterinsightsV1::GoogleProtobufEmpty::Representation
          command.response_class = Google::Apis::ContactcenterinsightsV1::GoogleProtobufEmpty
          command.params['name'] = name unless name.nil?
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
        # @yieldparam result [Google::Apis::ContactcenterinsightsV1::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ContactcenterinsightsV1::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_operation(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}', options)
          command.response_representation = Google::Apis::ContactcenterinsightsV1::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::ContactcenterinsightsV1::GoogleLongrunningOperation
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists operations that match the specified filter in the request. If the server
        # doesn't support this method, it returns `UNIMPLEMENTED`. NOTE: the `name`
        # binding allows API services to override the binding to use different resource
        # name schemes, such as `users/*/operations`. To override the binding, API
        # services can add a binding such as `"/v1/`name=users/*`/operations"` to their
        # service configuration. For backwards compatibility, the default name includes
        # the operations collection id, however overriding users must ensure the name
        # binding is the parent resource, without the operations collection id.
        # @param [String] name
        #   The name of the operation's parent resource.
        # @param [String] filter
        #   The standard list filter.
        # @param [Fixnum] page_size
        #   The standard list page size.
        # @param [String] page_token
        #   The standard list page token.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ContactcenterinsightsV1::GoogleLongrunningListOperationsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ContactcenterinsightsV1::GoogleLongrunningListOperationsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_operations(name, filter: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}/operations', options)
          command.response_representation = Google::Apis::ContactcenterinsightsV1::GoogleLongrunningListOperationsResponse::Representation
          command.response_class = Google::Apis::ContactcenterinsightsV1::GoogleLongrunningListOperationsResponse
          command.params['name'] = name unless name.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a phrase matcher.
        # @param [String] parent
        #   Required. The parent resource of the phrase matcher. Required. The location to
        #   create a phrase matcher for. Format: `projects//locations/` or `projects//
        #   locations/`
        # @param [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1PhraseMatcher] google_cloud_contactcenterinsights_v1_phrase_matcher_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1PhraseMatcher] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1PhraseMatcher]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_location_phrase_matcher(parent, google_cloud_contactcenterinsights_v1_phrase_matcher_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+parent}/phraseMatchers', options)
          command.request_representation = Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1PhraseMatcher::Representation
          command.request_object = google_cloud_contactcenterinsights_v1_phrase_matcher_object
          command.response_representation = Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1PhraseMatcher::Representation
          command.response_class = Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1PhraseMatcher
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes a phrase matcher.
        # @param [String] name
        #   Required. The name of the phrase matcher to delete.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ContactcenterinsightsV1::GoogleProtobufEmpty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ContactcenterinsightsV1::GoogleProtobufEmpty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_location_phrase_matcher(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1/{+name}', options)
          command.response_representation = Google::Apis::ContactcenterinsightsV1::GoogleProtobufEmpty::Representation
          command.response_class = Google::Apis::ContactcenterinsightsV1::GoogleProtobufEmpty
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets a phrase matcher.
        # @param [String] name
        #   Required. The name of the phrase matcher to get.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1PhraseMatcher] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1PhraseMatcher]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_phrase_matcher(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}', options)
          command.response_representation = Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1PhraseMatcher::Representation
          command.response_class = Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1PhraseMatcher
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists phrase matchers.
        # @param [String] parent
        #   Required. The parent resource of the phrase matcher.
        # @param [String] filter
        #   A filter to reduce results to a specific subset. Useful for querying phrase
        #   matchers with specific properties.
        # @param [Fixnum] page_size
        #   The maximum number of phrase matchers to return in the response. If this value
        #   is zero, the service will select a default size. A call might return fewer
        #   objects than requested. A non-empty `next_page_token` in the response
        #   indicates that more data is available.
        # @param [String] page_token
        #   The value returned by the last `ListPhraseMatchersResponse`. This value
        #   indicates that this is a continuation of a prior `ListPhraseMatchers` call and
        #   that the system should return the next page of data.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1ListPhraseMatchersResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1ListPhraseMatchersResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_phrase_matchers(parent, filter: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+parent}/phraseMatchers', options)
          command.response_representation = Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1ListPhraseMatchersResponse::Representation
          command.response_class = Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1ListPhraseMatchersResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates a phrase matcher.
        # @param [String] name
        #   The resource name of the phrase matcher. Format: projects/`project`/locations/`
        #   location`/phraseMatchers/`phrase_matcher`
        # @param [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1PhraseMatcher] google_cloud_contactcenterinsights_v1_phrase_matcher_object
        # @param [String] update_mask
        #   The list of fields to be updated.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1PhraseMatcher] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1PhraseMatcher]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_project_location_phrase_matcher(name, google_cloud_contactcenterinsights_v1_phrase_matcher_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v1/{+name}', options)
          command.request_representation = Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1PhraseMatcher::Representation
          command.request_object = google_cloud_contactcenterinsights_v1_phrase_matcher_object
          command.response_representation = Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1PhraseMatcher::Representation
          command.response_class = Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1PhraseMatcher
          command.params['name'] = name unless name.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a view.
        # @param [String] parent
        #   Required. The parent resource of the view. Required. The location to create a
        #   view for. Format: `projects//locations/` or `projects//locations/`
        # @param [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1View] google_cloud_contactcenterinsights_v1_view_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1View] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1View]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_location_view(parent, google_cloud_contactcenterinsights_v1_view_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+parent}/views', options)
          command.request_representation = Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1View::Representation
          command.request_object = google_cloud_contactcenterinsights_v1_view_object
          command.response_representation = Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1View::Representation
          command.response_class = Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1View
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes a view.
        # @param [String] name
        #   Required. The name of the view to delete.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ContactcenterinsightsV1::GoogleProtobufEmpty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ContactcenterinsightsV1::GoogleProtobufEmpty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_location_view(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1/{+name}', options)
          command.response_representation = Google::Apis::ContactcenterinsightsV1::GoogleProtobufEmpty::Representation
          command.response_class = Google::Apis::ContactcenterinsightsV1::GoogleProtobufEmpty
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets a view.
        # @param [String] name
        #   Required. The name of the view to get.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1View] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1View]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_view(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}', options)
          command.response_representation = Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1View::Representation
          command.response_class = Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1View
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists views.
        # @param [String] parent
        #   Required. The parent resource of the views.
        # @param [Fixnum] page_size
        #   The maximum number of views to return in the response. If this value is zero,
        #   the service will select a default size. A call may return fewer objects than
        #   requested. A non-empty `next_page_token` in the response indicates that more
        #   data is available.
        # @param [String] page_token
        #   The value returned by the last `ListViewsResponse`; indicates that this is a
        #   continuation of a prior `ListViews` call and the system should return the next
        #   page of data.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1ListViewsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1ListViewsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_views(parent, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+parent}/views', options)
          command.response_representation = Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1ListViewsResponse::Representation
          command.response_class = Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1ListViewsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates a view.
        # @param [String] name
        #   Immutable. The resource name of the view. Format: projects/`project`/locations/
        #   `location`/views/`view`
        # @param [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1View] google_cloud_contactcenterinsights_v1_view_object
        # @param [String] update_mask
        #   The list of fields to be updated.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1View] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1View]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_project_location_view(name, google_cloud_contactcenterinsights_v1_view_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v1/{+name}', options)
          command.request_representation = Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1View::Representation
          command.request_object = google_cloud_contactcenterinsights_v1_view_object
          command.response_representation = Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1View::Representation
          command.response_class = Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1View
          command.params['name'] = name unless name.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
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
