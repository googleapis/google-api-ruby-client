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
    module DialogflowV2
      # Dialogflow API
      #
      # Builds conversational interfaces (for example, chatbots, and voice-powered
      #  apps and devices).
      #
      # @example
      #    require 'google/apis/dialogflow_v2'
      #
      #    Dialogflow = Google::Apis::DialogflowV2 # Alias the module
      #    service = Dialogflow::DialogflowService.new
      #
      # @see https://cloud.google.com/dialogflow/
      class DialogflowService < Google::Apis::Core::BaseService
        # @return [String]
        #  API key. Your API key identifies your project and provides you with API access,
        #  quota, and reports. Required unless you provide an OAuth 2.0 token.
        attr_accessor :key

        # @return [String]
        #  Available to use for quota purposes for server-side applications. Can be any
        #  arbitrary string assigned to a user, but should not exceed 40 characters.
        attr_accessor :quota_user

        def initialize
          super('https://dialogflow.googleapis.com/', '',
                client_name: 'google-apis-dialogflow_v2',
                client_version: Google::Apis::DialogflowV2::GEM_VERSION)
          @batch_path = 'batch'
        end
        
        # Deletes the specified agent.
        # @param [String] parent
        #   Required. The project that the agent to delete is associated with. Format: `
        #   projects/`.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV2::GoogleProtobufEmpty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV2::GoogleProtobufEmpty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_agent(parent, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v2/{+parent}/agent', options)
          command.response_representation = Google::Apis::DialogflowV2::GoogleProtobufEmpty::Representation
          command.response_class = Google::Apis::DialogflowV2::GoogleProtobufEmpty
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Retrieves the specified agent.
        # @param [String] parent
        #   Required. The project that the agent to fetch is associated with. Format: `
        #   projects/`.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2Agent] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2Agent]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_agent(parent, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2/{+parent}/agent', options)
          command.response_representation = Google::Apis::DialogflowV2::GoogleCloudDialogflowV2Agent::Representation
          command.response_class = Google::Apis::DialogflowV2::GoogleCloudDialogflowV2Agent
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates/updates the specified agent. Note: You should always train an agent
        # prior to sending it queries. See the [training documentation](https://cloud.
        # google.com/dialogflow/es/docs/training).
        # @param [String] parent
        #   Required. The project of this agent. Format: `projects/`.
        # @param [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2Agent] google_cloud_dialogflow_v2_agent_object
        # @param [String] update_mask
        #   Optional. The mask to control which fields get updated.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2Agent] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2Agent]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def set_project_agent(parent, google_cloud_dialogflow_v2_agent_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v2/{+parent}/agent', options)
          command.request_representation = Google::Apis::DialogflowV2::GoogleCloudDialogflowV2Agent::Representation
          command.request_object = google_cloud_dialogflow_v2_agent_object
          command.response_representation = Google::Apis::DialogflowV2::GoogleCloudDialogflowV2Agent::Representation
          command.response_class = Google::Apis::DialogflowV2::GoogleCloudDialogflowV2Agent
          command.params['parent'] = parent unless parent.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Exports the specified agent to a ZIP file. This method is a [long-running
        # operation](https://cloud.google.com/dialogflow/es/docs/how/long-running-
        # operations). The returned `Operation` type has the following method-specific
        # fields: - `metadata`: An empty [Struct message](https://developers.google.com/
        # protocol-buffers/docs/reference/google.protobuf#struct) - `response`:
        # ExportAgentResponse
        # @param [String] parent
        #   Required. The project that the agent to export is associated with. Format: `
        #   projects/`.
        # @param [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2ExportAgentRequest] google_cloud_dialogflow_v2_export_agent_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV2::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV2::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def export_project_agent(parent, google_cloud_dialogflow_v2_export_agent_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v2/{+parent}/agent:export', options)
          command.request_representation = Google::Apis::DialogflowV2::GoogleCloudDialogflowV2ExportAgentRequest::Representation
          command.request_object = google_cloud_dialogflow_v2_export_agent_request_object
          command.response_representation = Google::Apis::DialogflowV2::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::DialogflowV2::GoogleLongrunningOperation
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Retrieves the fulfillment.
        # @param [String] name
        #   Required. The name of the fulfillment. Format: `projects//agent/fulfillment`.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2Fulfillment] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2Fulfillment]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_agent_fulfillment(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2/{+name}', options)
          command.response_representation = Google::Apis::DialogflowV2::GoogleCloudDialogflowV2Fulfillment::Representation
          command.response_class = Google::Apis::DialogflowV2::GoogleCloudDialogflowV2Fulfillment
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets agent validation result. Agent validation is performed during training
        # time and is updated automatically when training is completed.
        # @param [String] parent
        #   Required. The project that the agent is associated with. Format: `projects/`.
        # @param [String] language_code
        #   Optional. The language for which you want a validation result. If not
        #   specified, the agent's default language is used. [Many languages](https://
        #   cloud.google.com/dialogflow/docs/reference/language) are supported. Note:
        #   languages must be enabled in the agent before they can be used.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2ValidationResult] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2ValidationResult]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_agent_validation_result(parent, language_code: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2/{+parent}/agent/validationResult', options)
          command.response_representation = Google::Apis::DialogflowV2::GoogleCloudDialogflowV2ValidationResult::Representation
          command.response_class = Google::Apis::DialogflowV2::GoogleCloudDialogflowV2ValidationResult
          command.params['parent'] = parent unless parent.nil?
          command.query['languageCode'] = language_code unless language_code.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Imports the specified agent from a ZIP file. Uploads new intents and entity
        # types without deleting the existing ones. Intents and entity types with the
        # same name are replaced with the new versions from ImportAgentRequest. After
        # the import, the imported draft agent will be trained automatically (unless
        # disabled in agent settings). However, once the import is done, training may
        # not be completed yet. Please call TrainAgent and wait for the operation it
        # returns in order to train explicitly. This method is a [long-running operation]
        # (https://cloud.google.com/dialogflow/es/docs/how/long-running-operations). The
        # returned `Operation` type has the following method-specific fields: - `
        # metadata`: An empty [Struct message](https://developers.google.com/protocol-
        # buffers/docs/reference/google.protobuf#struct) - `response`: An [Empty message]
        # (https://developers.google.com/protocol-buffers/docs/reference/google.protobuf#
        # empty) The operation only tracks when importing is complete, not when it is
        # done training. Note: You should always train an agent prior to sending it
        # queries. See the [training documentation](https://cloud.google.com/dialogflow/
        # es/docs/training).
        # @param [String] parent
        #   Required. The project that the agent to import is associated with. Format: `
        #   projects/`.
        # @param [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2ImportAgentRequest] google_cloud_dialogflow_v2_import_agent_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV2::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV2::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def import_project_agent(parent, google_cloud_dialogflow_v2_import_agent_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v2/{+parent}/agent:import', options)
          command.request_representation = Google::Apis::DialogflowV2::GoogleCloudDialogflowV2ImportAgentRequest::Representation
          command.request_object = google_cloud_dialogflow_v2_import_agent_request_object
          command.response_representation = Google::Apis::DialogflowV2::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::DialogflowV2::GoogleLongrunningOperation
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Restores the specified agent from a ZIP file. Replaces the current agent
        # version with a new one. All the intents and entity types in the older version
        # are deleted. After the restore, the restored draft agent will be trained
        # automatically (unless disabled in agent settings). However, once the restore
        # is done, training may not be completed yet. Please call TrainAgent and wait
        # for the operation it returns in order to train explicitly. This method is a [
        # long-running operation](https://cloud.google.com/dialogflow/es/docs/how/long-
        # running-operations). The returned `Operation` type has the following method-
        # specific fields: - `metadata`: An empty [Struct message](https://developers.
        # google.com/protocol-buffers/docs/reference/google.protobuf#struct) - `response`
        # : An [Empty message](https://developers.google.com/protocol-buffers/docs/
        # reference/google.protobuf#empty) The operation only tracks when restoring is
        # complete, not when it is done training. Note: You should always train an agent
        # prior to sending it queries. See the [training documentation](https://cloud.
        # google.com/dialogflow/es/docs/training).
        # @param [String] parent
        #   Required. The project that the agent to restore is associated with. Format: `
        #   projects/`.
        # @param [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2RestoreAgentRequest] google_cloud_dialogflow_v2_restore_agent_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV2::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV2::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def restore_project_agent(parent, google_cloud_dialogflow_v2_restore_agent_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v2/{+parent}/agent:restore', options)
          command.request_representation = Google::Apis::DialogflowV2::GoogleCloudDialogflowV2RestoreAgentRequest::Representation
          command.request_object = google_cloud_dialogflow_v2_restore_agent_request_object
          command.response_representation = Google::Apis::DialogflowV2::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::DialogflowV2::GoogleLongrunningOperation
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Returns the list of agents. Since there is at most one conversational agent
        # per project, this method is useful primarily for listing all agents across
        # projects the caller has access to. One can achieve that with a wildcard
        # project collection id "-". Refer to [List Sub-Collections](https://cloud.
        # google.com/apis/design/design_patterns#list_sub-collections).
        # @param [String] parent
        #   Required. The project to list agents from. Format: `projects/`.
        # @param [Fixnum] page_size
        #   Optional. The maximum number of items to return in a single page. By default
        #   100 and at most 1000.
        # @param [String] page_token
        #   The next_page_token value returned from a previous list request.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2SearchAgentsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2SearchAgentsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def search_project_agents(parent, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2/{+parent}/agent:search', options)
          command.response_representation = Google::Apis::DialogflowV2::GoogleCloudDialogflowV2SearchAgentsResponse::Representation
          command.response_class = Google::Apis::DialogflowV2::GoogleCloudDialogflowV2SearchAgentsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Trains the specified agent. This method is a [long-running operation](https://
        # cloud.google.com/dialogflow/es/docs/how/long-running-operations). The returned
        # `Operation` type has the following method-specific fields: - `metadata`: An
        # empty [Struct message](https://developers.google.com/protocol-buffers/docs/
        # reference/google.protobuf#struct) - `response`: An [Empty message](https://
        # developers.google.com/protocol-buffers/docs/reference/google.protobuf#empty)
        # Note: You should always train an agent prior to sending it queries. See the [
        # training documentation](https://cloud.google.com/dialogflow/es/docs/training).
        # @param [String] parent
        #   Required. The project that the agent to train is associated with. Format: `
        #   projects/`.
        # @param [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2TrainAgentRequest] google_cloud_dialogflow_v2_train_agent_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV2::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV2::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def train_project_agent(parent, google_cloud_dialogflow_v2_train_agent_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v2/{+parent}/agent:train', options)
          command.request_representation = Google::Apis::DialogflowV2::GoogleCloudDialogflowV2TrainAgentRequest::Representation
          command.request_object = google_cloud_dialogflow_v2_train_agent_request_object
          command.response_representation = Google::Apis::DialogflowV2::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::DialogflowV2::GoogleLongrunningOperation
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates the fulfillment.
        # @param [String] name
        #   Required. The unique identifier of the fulfillment. Supported formats: - `
        #   projects//agent/fulfillment` - `projects//locations//agent/fulfillment` This
        #   field is not used for Fulfillment in an Environment.
        # @param [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2Fulfillment] google_cloud_dialogflow_v2_fulfillment_object
        # @param [String] update_mask
        #   Required. The mask to control which fields get updated. If the mask is not
        #   present, all fields will be updated.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2Fulfillment] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2Fulfillment]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def update_project_agent_fulfillment(name, google_cloud_dialogflow_v2_fulfillment_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v2/{+name}', options)
          command.request_representation = Google::Apis::DialogflowV2::GoogleCloudDialogflowV2Fulfillment::Representation
          command.request_object = google_cloud_dialogflow_v2_fulfillment_object
          command.response_representation = Google::Apis::DialogflowV2::GoogleCloudDialogflowV2Fulfillment::Representation
          command.response_class = Google::Apis::DialogflowV2::GoogleCloudDialogflowV2Fulfillment
          command.params['name'] = name unless name.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes entity types in the specified agent. This method is a [long-running
        # operation](https://cloud.google.com/dialogflow/es/docs/how/long-running-
        # operations). The returned `Operation` type has the following method-specific
        # fields: - `metadata`: An empty [Struct message](https://developers.google.com/
        # protocol-buffers/docs/reference/google.protobuf#struct) - `response`: An [
        # Empty message](https://developers.google.com/protocol-buffers/docs/reference/
        # google.protobuf#empty) Note: You should always train an agent prior to sending
        # it queries. See the [training documentation](https://cloud.google.com/
        # dialogflow/es/docs/training).
        # @param [String] parent
        #   Required. The name of the agent to delete all entities types for. Format: `
        #   projects//agent`.
        # @param [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2BatchDeleteEntityTypesRequest] google_cloud_dialogflow_v2_batch_delete_entity_types_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV2::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV2::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def batch_project_agent_entity_type_delete(parent, google_cloud_dialogflow_v2_batch_delete_entity_types_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v2/{+parent}/entityTypes:batchDelete', options)
          command.request_representation = Google::Apis::DialogflowV2::GoogleCloudDialogflowV2BatchDeleteEntityTypesRequest::Representation
          command.request_object = google_cloud_dialogflow_v2_batch_delete_entity_types_request_object
          command.response_representation = Google::Apis::DialogflowV2::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::DialogflowV2::GoogleLongrunningOperation
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates/Creates multiple entity types in the specified agent. This method is a
        # [long-running operation](https://cloud.google.com/dialogflow/es/docs/how/long-
        # running-operations). The returned `Operation` type has the following method-
        # specific fields: - `metadata`: An empty [Struct message](https://developers.
        # google.com/protocol-buffers/docs/reference/google.protobuf#struct) - `response`
        # : BatchUpdateEntityTypesResponse Note: You should always train an agent prior
        # to sending it queries. See the [training documentation](https://cloud.google.
        # com/dialogflow/es/docs/training).
        # @param [String] parent
        #   Required. The name of the agent to update or create entity types in. Format: `
        #   projects//agent`.
        # @param [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2BatchUpdateEntityTypesRequest] google_cloud_dialogflow_v2_batch_update_entity_types_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV2::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV2::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def batch_project_agent_entity_type_update(parent, google_cloud_dialogflow_v2_batch_update_entity_types_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v2/{+parent}/entityTypes:batchUpdate', options)
          command.request_representation = Google::Apis::DialogflowV2::GoogleCloudDialogflowV2BatchUpdateEntityTypesRequest::Representation
          command.request_object = google_cloud_dialogflow_v2_batch_update_entity_types_request_object
          command.response_representation = Google::Apis::DialogflowV2::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::DialogflowV2::GoogleLongrunningOperation
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates an entity type in the specified agent. Note: You should always train
        # an agent prior to sending it queries. See the [training documentation](https://
        # cloud.google.com/dialogflow/es/docs/training).
        # @param [String] parent
        #   Required. The agent to create a entity type for. Format: `projects//agent`.
        # @param [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2EntityType] google_cloud_dialogflow_v2_entity_type_object
        # @param [String] language_code
        #   Optional. The language used to access language-specific data. If not specified,
        #   the agent's default language is used. For more information, see [Multilingual
        #   intent and entity data](https://cloud.google.com/dialogflow/docs/agents-
        #   multilingual#intent-entity).
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2EntityType] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2EntityType]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_agent_entity_type(parent, google_cloud_dialogflow_v2_entity_type_object = nil, language_code: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v2/{+parent}/entityTypes', options)
          command.request_representation = Google::Apis::DialogflowV2::GoogleCloudDialogflowV2EntityType::Representation
          command.request_object = google_cloud_dialogflow_v2_entity_type_object
          command.response_representation = Google::Apis::DialogflowV2::GoogleCloudDialogflowV2EntityType::Representation
          command.response_class = Google::Apis::DialogflowV2::GoogleCloudDialogflowV2EntityType
          command.params['parent'] = parent unless parent.nil?
          command.query['languageCode'] = language_code unless language_code.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes the specified entity type. Note: You should always train an agent
        # prior to sending it queries. See the [training documentation](https://cloud.
        # google.com/dialogflow/es/docs/training).
        # @param [String] name
        #   Required. The name of the entity type to delete. Format: `projects//agent/
        #   entityTypes/`.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV2::GoogleProtobufEmpty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV2::GoogleProtobufEmpty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_agent_entity_type(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v2/{+name}', options)
          command.response_representation = Google::Apis::DialogflowV2::GoogleProtobufEmpty::Representation
          command.response_class = Google::Apis::DialogflowV2::GoogleProtobufEmpty
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Retrieves the specified entity type.
        # @param [String] name
        #   Required. The name of the entity type. Format: `projects//agent/entityTypes/`.
        # @param [String] language_code
        #   Optional. The language used to access language-specific data. If not specified,
        #   the agent's default language is used. For more information, see [Multilingual
        #   intent and entity data](https://cloud.google.com/dialogflow/docs/agents-
        #   multilingual#intent-entity).
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2EntityType] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2EntityType]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_agent_entity_type(name, language_code: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2/{+name}', options)
          command.response_representation = Google::Apis::DialogflowV2::GoogleCloudDialogflowV2EntityType::Representation
          command.response_class = Google::Apis::DialogflowV2::GoogleCloudDialogflowV2EntityType
          command.params['name'] = name unless name.nil?
          command.query['languageCode'] = language_code unless language_code.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Returns the list of all entity types in the specified agent.
        # @param [String] parent
        #   Required. The agent to list all entity types from. Format: `projects//agent`.
        # @param [String] language_code
        #   Optional. The language used to access language-specific data. If not specified,
        #   the agent's default language is used. For more information, see [Multilingual
        #   intent and entity data](https://cloud.google.com/dialogflow/docs/agents-
        #   multilingual#intent-entity).
        # @param [Fixnum] page_size
        #   Optional. The maximum number of items to return in a single page. By default
        #   100 and at most 1000.
        # @param [String] page_token
        #   Optional. The next_page_token value returned from a previous list request.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2ListEntityTypesResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2ListEntityTypesResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_agent_entity_types(parent, language_code: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2/{+parent}/entityTypes', options)
          command.response_representation = Google::Apis::DialogflowV2::GoogleCloudDialogflowV2ListEntityTypesResponse::Representation
          command.response_class = Google::Apis::DialogflowV2::GoogleCloudDialogflowV2ListEntityTypesResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['languageCode'] = language_code unless language_code.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates the specified entity type. Note: You should always train an agent
        # prior to sending it queries. See the [training documentation](https://cloud.
        # google.com/dialogflow/es/docs/training).
        # @param [String] name
        #   The unique identifier of the entity type. Required for EntityTypes.
        #   UpdateEntityType and EntityTypes.BatchUpdateEntityTypes methods. Format: `
        #   projects//agent/entityTypes/`.
        # @param [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2EntityType] google_cloud_dialogflow_v2_entity_type_object
        # @param [String] language_code
        #   Optional. The language used to access language-specific data. If not specified,
        #   the agent's default language is used. For more information, see [Multilingual
        #   intent and entity data](https://cloud.google.com/dialogflow/docs/agents-
        #   multilingual#intent-entity).
        # @param [String] update_mask
        #   Optional. The mask to control which fields get updated.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2EntityType] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2EntityType]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_project_agent_entity_type(name, google_cloud_dialogflow_v2_entity_type_object = nil, language_code: nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v2/{+name}', options)
          command.request_representation = Google::Apis::DialogflowV2::GoogleCloudDialogflowV2EntityType::Representation
          command.request_object = google_cloud_dialogflow_v2_entity_type_object
          command.response_representation = Google::Apis::DialogflowV2::GoogleCloudDialogflowV2EntityType::Representation
          command.response_class = Google::Apis::DialogflowV2::GoogleCloudDialogflowV2EntityType
          command.params['name'] = name unless name.nil?
          command.query['languageCode'] = language_code unless language_code.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates multiple new entities in the specified entity type. This method is a [
        # long-running operation](https://cloud.google.com/dialogflow/es/docs/how/long-
        # running-operations). The returned `Operation` type has the following method-
        # specific fields: - `metadata`: An empty [Struct message](https://developers.
        # google.com/protocol-buffers/docs/reference/google.protobuf#struct) - `response`
        # : An [Empty message](https://developers.google.com/protocol-buffers/docs/
        # reference/google.protobuf#empty) Note: You should always train an agent prior
        # to sending it queries. See the [training documentation](https://cloud.google.
        # com/dialogflow/es/docs/training).
        # @param [String] parent
        #   Required. The name of the entity type to create entities in. Format: `projects/
        #   /agent/entityTypes/`.
        # @param [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2BatchCreateEntitiesRequest] google_cloud_dialogflow_v2_batch_create_entities_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV2::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV2::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def batch_project_agent_entity_type_entity_create(parent, google_cloud_dialogflow_v2_batch_create_entities_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v2/{+parent}/entities:batchCreate', options)
          command.request_representation = Google::Apis::DialogflowV2::GoogleCloudDialogflowV2BatchCreateEntitiesRequest::Representation
          command.request_object = google_cloud_dialogflow_v2_batch_create_entities_request_object
          command.response_representation = Google::Apis::DialogflowV2::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::DialogflowV2::GoogleLongrunningOperation
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes entities in the specified entity type. This method is a [long-running
        # operation](https://cloud.google.com/dialogflow/es/docs/how/long-running-
        # operations). The returned `Operation` type has the following method-specific
        # fields: - `metadata`: An empty [Struct message](https://developers.google.com/
        # protocol-buffers/docs/reference/google.protobuf#struct) - `response`: An [
        # Empty message](https://developers.google.com/protocol-buffers/docs/reference/
        # google.protobuf#empty) Note: You should always train an agent prior to sending
        # it queries. See the [training documentation](https://cloud.google.com/
        # dialogflow/es/docs/training).
        # @param [String] parent
        #   Required. The name of the entity type to delete entries for. Format: `projects/
        #   /agent/entityTypes/`.
        # @param [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2BatchDeleteEntitiesRequest] google_cloud_dialogflow_v2_batch_delete_entities_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV2::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV2::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def batch_project_agent_entity_type_entity_delete(parent, google_cloud_dialogflow_v2_batch_delete_entities_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v2/{+parent}/entities:batchDelete', options)
          command.request_representation = Google::Apis::DialogflowV2::GoogleCloudDialogflowV2BatchDeleteEntitiesRequest::Representation
          command.request_object = google_cloud_dialogflow_v2_batch_delete_entities_request_object
          command.response_representation = Google::Apis::DialogflowV2::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::DialogflowV2::GoogleLongrunningOperation
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates or creates multiple entities in the specified entity type. This method
        # does not affect entities in the entity type that aren't explicitly specified
        # in the request. This method is a [long-running operation](https://cloud.google.
        # com/dialogflow/es/docs/how/long-running-operations). The returned `Operation`
        # type has the following method-specific fields: - `metadata`: An empty [Struct
        # message](https://developers.google.com/protocol-buffers/docs/reference/google.
        # protobuf#struct) - `response`: An [Empty message](https://developers.google.
        # com/protocol-buffers/docs/reference/google.protobuf#empty) Note: You should
        # always train an agent prior to sending it queries. See the [training
        # documentation](https://cloud.google.com/dialogflow/es/docs/training).
        # @param [String] parent
        #   Required. The name of the entity type to update or create entities in. Format:
        #   `projects//agent/entityTypes/`.
        # @param [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2BatchUpdateEntitiesRequest] google_cloud_dialogflow_v2_batch_update_entities_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV2::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV2::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def batch_project_agent_entity_type_entity_update(parent, google_cloud_dialogflow_v2_batch_update_entities_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v2/{+parent}/entities:batchUpdate', options)
          command.request_representation = Google::Apis::DialogflowV2::GoogleCloudDialogflowV2BatchUpdateEntitiesRequest::Representation
          command.request_object = google_cloud_dialogflow_v2_batch_update_entities_request_object
          command.response_representation = Google::Apis::DialogflowV2::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::DialogflowV2::GoogleLongrunningOperation
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates an agent environment.
        # @param [String] parent
        #   Required. The agent to create an environment for. Supported formats: - `
        #   projects//agent` - `projects//locations//agent`
        # @param [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2Environment] google_cloud_dialogflow_v2_environment_object
        # @param [String] environment_id
        #   Required. The unique id of the new environment.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2Environment] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2Environment]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_agent_environment(parent, google_cloud_dialogflow_v2_environment_object = nil, environment_id: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v2/{+parent}/environments', options)
          command.request_representation = Google::Apis::DialogflowV2::GoogleCloudDialogflowV2Environment::Representation
          command.request_object = google_cloud_dialogflow_v2_environment_object
          command.response_representation = Google::Apis::DialogflowV2::GoogleCloudDialogflowV2Environment::Representation
          command.response_class = Google::Apis::DialogflowV2::GoogleCloudDialogflowV2Environment
          command.params['parent'] = parent unless parent.nil?
          command.query['environmentId'] = environment_id unless environment_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes the specified agent environment.
        # @param [String] name
        #   Required. The name of the environment to delete. / Format: - `projects//agent/
        #   environments/` - `projects//locations//agent/environments/` The environment ID
        #   for the default environment is `-`.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV2::GoogleProtobufEmpty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV2::GoogleProtobufEmpty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_agent_environment(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v2/{+name}', options)
          command.response_representation = Google::Apis::DialogflowV2::GoogleProtobufEmpty::Representation
          command.response_class = Google::Apis::DialogflowV2::GoogleProtobufEmpty
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Retrieves the specified agent environment.
        # @param [String] name
        #   Required. The name of the environment. Supported formats: - `projects//agent/
        #   environments/` - `projects//locations//agent/environments/` The environment ID
        #   for the default environment is `-`.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2Environment] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2Environment]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_agent_environment(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2/{+name}', options)
          command.response_representation = Google::Apis::DialogflowV2::GoogleCloudDialogflowV2Environment::Representation
          command.response_class = Google::Apis::DialogflowV2::GoogleCloudDialogflowV2Environment
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets the history of the specified environment.
        # @param [String] parent
        #   Required. The name of the environment to retrieve history for. Supported
        #   formats: - `projects//agent/environments/` - `projects//locations//agent/
        #   environments/` The environment ID for the default environment is `-`.
        # @param [Fixnum] page_size
        #   Optional. The maximum number of items to return in a single page. By default
        #   100 and at most 1000.
        # @param [String] page_token
        #   Optional. The next_page_token value returned from a previous list request.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2EnvironmentHistory] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2EnvironmentHistory]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_agent_environment_history(parent, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2/{+parent}/history', options)
          command.response_representation = Google::Apis::DialogflowV2::GoogleCloudDialogflowV2EnvironmentHistory::Representation
          command.response_class = Google::Apis::DialogflowV2::GoogleCloudDialogflowV2EnvironmentHistory
          command.params['parent'] = parent unless parent.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Returns the list of all non-default environments of the specified agent.
        # @param [String] parent
        #   Required. The agent to list all environments from. Format: - `projects//agent`
        #   - `projects//locations//agent`
        # @param [Fixnum] page_size
        #   Optional. The maximum number of items to return in a single page. By default
        #   100 and at most 1000.
        # @param [String] page_token
        #   Optional. The next_page_token value returned from a previous list request.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2ListEnvironmentsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2ListEnvironmentsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_agent_environments(parent, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2/{+parent}/environments', options)
          command.response_representation = Google::Apis::DialogflowV2::GoogleCloudDialogflowV2ListEnvironmentsResponse::Representation
          command.response_class = Google::Apis::DialogflowV2::GoogleCloudDialogflowV2ListEnvironmentsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates the specified agent environment. This method allows you to deploy new
        # agent versions into the environment. When an environment is pointed to a new
        # agent version by setting `environment.agent_version`, the environment is
        # temporarily set to the `LOADING` state. During that time, the environment
        # continues serving the previous version of the agent. After the new agent
        # version is done loading, the environment is set back to the `RUNNING` state.
        # You can use "-" as Environment ID in environment name to update an agent
        # version in the default environment. WARNING: this will negate all recent
        # changes to the draft agent and can't be undone. You may want to save the draft
        # agent to a version before calling this method.
        # @param [String] name
        #   Output only. The unique identifier of this agent environment. Supported
        #   formats: - `projects//agent/environments/` - `projects//locations//agent/
        #   environments/` The environment ID for the default environment is `-`.
        # @param [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2Environment] google_cloud_dialogflow_v2_environment_object
        # @param [Boolean] allow_load_to_draft_and_discard_changes
        #   Optional. This field is used to prevent accidental overwrite of the default
        #   environment, which is an operation that cannot be undone. To confirm that the
        #   caller desires this overwrite, this field must be explicitly set to true when
        #   updating the default environment (environment ID = `-`).
        # @param [String] update_mask
        #   Required. The mask to control which fields get updated.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2Environment] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2Environment]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_project_agent_environment(name, google_cloud_dialogflow_v2_environment_object = nil, allow_load_to_draft_and_discard_changes: nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v2/{+name}', options)
          command.request_representation = Google::Apis::DialogflowV2::GoogleCloudDialogflowV2Environment::Representation
          command.request_object = google_cloud_dialogflow_v2_environment_object
          command.response_representation = Google::Apis::DialogflowV2::GoogleCloudDialogflowV2Environment::Representation
          command.response_class = Google::Apis::DialogflowV2::GoogleCloudDialogflowV2Environment
          command.params['name'] = name unless name.nil?
          command.query['allowLoadToDraftAndDiscardChanges'] = allow_load_to_draft_and_discard_changes unless allow_load_to_draft_and_discard_changes.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Returns the list of all intents in the specified agent.
        # @param [String] parent
        #   Required. The agent to list all intents from. Format: `projects//agent` or `
        #   projects//locations//agent`. Alternatively, you can specify the environment to
        #   list intents for. Format: `projects//agent/environments/` or `projects//
        #   locations//agent/environments/`. Note: training phrases of the intents will
        #   not be returned for non-draft environment.
        # @param [String] intent_view
        #   Optional. The resource view to apply to the returned intent.
        # @param [String] language_code
        #   Optional. The language used to access language-specific data. If not specified,
        #   the agent's default language is used. For more information, see [Multilingual
        #   intent and entity data](https://cloud.google.com/dialogflow/docs/agents-
        #   multilingual#intent-entity).
        # @param [Fixnum] page_size
        #   Optional. The maximum number of items to return in a single page. By default
        #   100 and at most 1000.
        # @param [String] page_token
        #   Optional. The next_page_token value returned from a previous list request.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2ListIntentsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2ListIntentsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_agent_environment_intents(parent, intent_view: nil, language_code: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2/{+parent}/intents', options)
          command.response_representation = Google::Apis::DialogflowV2::GoogleCloudDialogflowV2ListIntentsResponse::Representation
          command.response_class = Google::Apis::DialogflowV2::GoogleCloudDialogflowV2ListIntentsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['intentView'] = intent_view unless intent_view.nil?
          command.query['languageCode'] = language_code unless language_code.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes all active contexts in the specified session.
        # @param [String] parent
        #   Required. The name of the session to delete all contexts from. Format: `
        #   projects//agent/sessions/` or `projects//agent/environments//users//sessions/`.
        #   If `Environment ID` is not specified we assume default 'draft' environment.
        #   If `User ID` is not specified, we assume default '-' user.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV2::GoogleProtobufEmpty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV2::GoogleProtobufEmpty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_agent_environment_user_session_contexts(parent, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v2/{+parent}/contexts', options)
          command.response_representation = Google::Apis::DialogflowV2::GoogleProtobufEmpty::Representation
          command.response_class = Google::Apis::DialogflowV2::GoogleProtobufEmpty
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Processes a natural language query and returns structured, actionable data as
        # a result. This method is not idempotent, because it may cause contexts and
        # session entity types to be updated, which in turn might affect results of
        # future queries. If you might use [Agent Assist](https://cloud.google.com/
        # dialogflow/docs/#aa) or other CCAI products now or in the future, consider
        # using AnalyzeContent instead of `DetectIntent`. `AnalyzeContent` has
        # additional functionality for Agent Assist and other CCAI products. Note:
        # Always use agent versions for production traffic. See [Versions and
        # environments](https://cloud.google.com/dialogflow/es/docs/agents-versions).
        # @param [String] session
        #   Required. The name of the session this query is sent to. Format: `projects//
        #   agent/sessions/`, or `projects//agent/environments//users//sessions/`. If `
        #   Environment ID` is not specified, we assume default 'draft' environment (`
        #   Environment ID` might be referred to as environment name at some places). If `
        #   User ID` is not specified, we are using "-". It's up to the API caller to
        #   choose an appropriate `Session ID` and `User Id`. They can be a random number
        #   or some type of user and session identifiers (preferably hashed). The length
        #   of the `Session ID` and `User ID` must not exceed 36 characters. For more
        #   information, see the [API interactions guide](https://cloud.google.com/
        #   dialogflow/docs/api-overview). Note: Always use agent versions for production
        #   traffic. See [Versions and environments](https://cloud.google.com/dialogflow/
        #   es/docs/agents-versions).
        # @param [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2DetectIntentRequest] google_cloud_dialogflow_v2_detect_intent_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2DetectIntentResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2DetectIntentResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def detect_project_agent_environment_user_session_intent(session, google_cloud_dialogflow_v2_detect_intent_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v2/{+session}:detectIntent', options)
          command.request_representation = Google::Apis::DialogflowV2::GoogleCloudDialogflowV2DetectIntentRequest::Representation
          command.request_object = google_cloud_dialogflow_v2_detect_intent_request_object
          command.response_representation = Google::Apis::DialogflowV2::GoogleCloudDialogflowV2DetectIntentResponse::Representation
          command.response_class = Google::Apis::DialogflowV2::GoogleCloudDialogflowV2DetectIntentResponse
          command.params['session'] = session unless session.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a context. If the specified context already exists, overrides the
        # context.
        # @param [String] parent
        #   Required. The session to create a context for. Format: `projects//agent/
        #   sessions/` or `projects//agent/environments//users//sessions/`. If `
        #   Environment ID` is not specified, we assume default 'draft' environment. If `
        #   User ID` is not specified, we assume default '-' user.
        # @param [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2Context] google_cloud_dialogflow_v2_context_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2Context] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2Context]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_agent_environment_user_session_context(parent, google_cloud_dialogflow_v2_context_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v2/{+parent}/contexts', options)
          command.request_representation = Google::Apis::DialogflowV2::GoogleCloudDialogflowV2Context::Representation
          command.request_object = google_cloud_dialogflow_v2_context_object
          command.response_representation = Google::Apis::DialogflowV2::GoogleCloudDialogflowV2Context::Representation
          command.response_class = Google::Apis::DialogflowV2::GoogleCloudDialogflowV2Context
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes the specified context.
        # @param [String] name
        #   Required. The name of the context to delete. Format: `projects//agent/sessions/
        #   /contexts/` or `projects//agent/environments//users//sessions//contexts/`. If `
        #   Environment ID` is not specified, we assume default 'draft' environment. If `
        #   User ID` is not specified, we assume default '-' user.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV2::GoogleProtobufEmpty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV2::GoogleProtobufEmpty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_agent_environment_user_session_context(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v2/{+name}', options)
          command.response_representation = Google::Apis::DialogflowV2::GoogleProtobufEmpty::Representation
          command.response_class = Google::Apis::DialogflowV2::GoogleProtobufEmpty
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Retrieves the specified context.
        # @param [String] name
        #   Required. The name of the context. Format: `projects//agent/sessions//contexts/
        #   ` or `projects//agent/environments//users//sessions//contexts/`. If `
        #   Environment ID` is not specified, we assume default 'draft' environment. If `
        #   User ID` is not specified, we assume default '-' user.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2Context] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2Context]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_agent_environment_user_session_context(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2/{+name}', options)
          command.response_representation = Google::Apis::DialogflowV2::GoogleCloudDialogflowV2Context::Representation
          command.response_class = Google::Apis::DialogflowV2::GoogleCloudDialogflowV2Context
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Returns the list of all contexts in the specified session.
        # @param [String] parent
        #   Required. The session to list all contexts from. Format: `projects//agent/
        #   sessions/` or `projects//agent/environments//users//sessions/`. If `
        #   Environment ID` is not specified, we assume default 'draft' environment. If `
        #   User ID` is not specified, we assume default '-' user.
        # @param [Fixnum] page_size
        #   Optional. The maximum number of items to return in a single page. By default
        #   100 and at most 1000.
        # @param [String] page_token
        #   Optional. The next_page_token value returned from a previous list request.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2ListContextsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2ListContextsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_agent_environment_user_session_contexts(parent, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2/{+parent}/contexts', options)
          command.response_representation = Google::Apis::DialogflowV2::GoogleCloudDialogflowV2ListContextsResponse::Representation
          command.response_class = Google::Apis::DialogflowV2::GoogleCloudDialogflowV2ListContextsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates the specified context.
        # @param [String] name
        #   Required. The unique identifier of the context. Format: `projects//agent/
        #   sessions//contexts/`, or `projects//agent/environments//users//sessions//
        #   contexts/`. The `Context ID` is always converted to lowercase, may only
        #   contain characters in a-zA-Z0-9_-% and may be at most 250 bytes long. If `
        #   Environment ID` is not specified, we assume default 'draft' environment. If `
        #   User ID` is not specified, we assume default '-' user. The following context
        #   names are reserved for internal use by Dialogflow. You should not use these
        #   contexts or create contexts with these names: * `__system_counters__` * `*
        #   _id_dialog_context` * `*_dialog_params_size`
        # @param [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2Context] google_cloud_dialogflow_v2_context_object
        # @param [String] update_mask
        #   Optional. The mask to control which fields get updated.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2Context] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2Context]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_project_agent_environment_user_session_context(name, google_cloud_dialogflow_v2_context_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v2/{+name}', options)
          command.request_representation = Google::Apis::DialogflowV2::GoogleCloudDialogflowV2Context::Representation
          command.request_object = google_cloud_dialogflow_v2_context_object
          command.response_representation = Google::Apis::DialogflowV2::GoogleCloudDialogflowV2Context::Representation
          command.response_class = Google::Apis::DialogflowV2::GoogleCloudDialogflowV2Context
          command.params['name'] = name unless name.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a session entity type. If the specified session entity type already
        # exists, overrides the session entity type. This method doesn't work with
        # Google Assistant integration. Contact Dialogflow support if you need to use
        # session entities with Google Assistant integration.
        # @param [String] parent
        #   Required. The session to create a session entity type for. Format: `projects//
        #   agent/sessions/` or `projects//agent/environments//users// sessions/`. If `
        #   Environment ID` is not specified, we assume default 'draft' environment. If `
        #   User ID` is not specified, we assume default '-' user.
        # @param [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2SessionEntityType] google_cloud_dialogflow_v2_session_entity_type_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2SessionEntityType] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2SessionEntityType]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_agent_environment_user_session_entity_type(parent, google_cloud_dialogflow_v2_session_entity_type_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v2/{+parent}/entityTypes', options)
          command.request_representation = Google::Apis::DialogflowV2::GoogleCloudDialogflowV2SessionEntityType::Representation
          command.request_object = google_cloud_dialogflow_v2_session_entity_type_object
          command.response_representation = Google::Apis::DialogflowV2::GoogleCloudDialogflowV2SessionEntityType::Representation
          command.response_class = Google::Apis::DialogflowV2::GoogleCloudDialogflowV2SessionEntityType
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes the specified session entity type. This method doesn't work with
        # Google Assistant integration. Contact Dialogflow support if you need to use
        # session entities with Google Assistant integration.
        # @param [String] name
        #   Required. The name of the entity type to delete. Format: `projects//agent/
        #   sessions//entityTypes/` or `projects//agent/environments//users//sessions//
        #   entityTypes/`. If `Environment ID` is not specified, we assume default 'draft'
        #   environment. If `User ID` is not specified, we assume default '-' user.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV2::GoogleProtobufEmpty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV2::GoogleProtobufEmpty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_agent_environment_user_session_entity_type(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v2/{+name}', options)
          command.response_representation = Google::Apis::DialogflowV2::GoogleProtobufEmpty::Representation
          command.response_class = Google::Apis::DialogflowV2::GoogleProtobufEmpty
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Retrieves the specified session entity type. This method doesn't work with
        # Google Assistant integration. Contact Dialogflow support if you need to use
        # session entities with Google Assistant integration.
        # @param [String] name
        #   Required. The name of the session entity type. Format: `projects//agent/
        #   sessions//entityTypes/` or `projects//agent/environments//users//sessions//
        #   entityTypes/`. If `Environment ID` is not specified, we assume default 'draft'
        #   environment. If `User ID` is not specified, we assume default '-' user.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2SessionEntityType] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2SessionEntityType]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_agent_environment_user_session_entity_type(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2/{+name}', options)
          command.response_representation = Google::Apis::DialogflowV2::GoogleCloudDialogflowV2SessionEntityType::Representation
          command.response_class = Google::Apis::DialogflowV2::GoogleCloudDialogflowV2SessionEntityType
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Returns the list of all session entity types in the specified session. This
        # method doesn't work with Google Assistant integration. Contact Dialogflow
        # support if you need to use session entities with Google Assistant integration.
        # @param [String] parent
        #   Required. The session to list all session entity types from. Format: `projects/
        #   /agent/sessions/` or `projects//agent/environments//users// sessions/`. If `
        #   Environment ID` is not specified, we assume default 'draft' environment. If `
        #   User ID` is not specified, we assume default '-' user.
        # @param [Fixnum] page_size
        #   Optional. The maximum number of items to return in a single page. By default
        #   100 and at most 1000.
        # @param [String] page_token
        #   Optional. The next_page_token value returned from a previous list request.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2ListSessionEntityTypesResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2ListSessionEntityTypesResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_agent_environment_user_session_entity_types(parent, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2/{+parent}/entityTypes', options)
          command.response_representation = Google::Apis::DialogflowV2::GoogleCloudDialogflowV2ListSessionEntityTypesResponse::Representation
          command.response_class = Google::Apis::DialogflowV2::GoogleCloudDialogflowV2ListSessionEntityTypesResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates the specified session entity type. This method doesn't work with
        # Google Assistant integration. Contact Dialogflow support if you need to use
        # session entities with Google Assistant integration.
        # @param [String] name
        #   Required. The unique identifier of this session entity type. Format: `projects/
        #   /agent/sessions//entityTypes/`, or `projects//agent/environments//users//
        #   sessions//entityTypes/`. If `Environment ID` is not specified, we assume
        #   default 'draft' environment. If `User ID` is not specified, we assume default '
        #   -' user. `` must be the display name of an existing entity type in the same
        #   agent that will be overridden or supplemented.
        # @param [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2SessionEntityType] google_cloud_dialogflow_v2_session_entity_type_object
        # @param [String] update_mask
        #   Optional. The mask to control which fields get updated.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2SessionEntityType] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2SessionEntityType]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_project_agent_environment_user_session_entity_type(name, google_cloud_dialogflow_v2_session_entity_type_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v2/{+name}', options)
          command.request_representation = Google::Apis::DialogflowV2::GoogleCloudDialogflowV2SessionEntityType::Representation
          command.request_object = google_cloud_dialogflow_v2_session_entity_type_object
          command.response_representation = Google::Apis::DialogflowV2::GoogleCloudDialogflowV2SessionEntityType::Representation
          command.response_class = Google::Apis::DialogflowV2::GoogleCloudDialogflowV2SessionEntityType
          command.params['name'] = name unless name.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes intents in the specified agent. This method is a [long-running
        # operation](https://cloud.google.com/dialogflow/es/docs/how/long-running-
        # operations). The returned `Operation` type has the following method-specific
        # fields: - `metadata`: An empty [Struct message](https://developers.google.com/
        # protocol-buffers/docs/reference/google.protobuf#struct) - `response`: An [
        # Empty message](https://developers.google.com/protocol-buffers/docs/reference/
        # google.protobuf#empty) Note: You should always train an agent prior to sending
        # it queries. See the [training documentation](https://cloud.google.com/
        # dialogflow/es/docs/training).
        # @param [String] parent
        #   Required. The name of the agent to delete all entities types for. Format: `
        #   projects//agent`.
        # @param [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2BatchDeleteIntentsRequest] google_cloud_dialogflow_v2_batch_delete_intents_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV2::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV2::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def batch_project_agent_intent_delete(parent, google_cloud_dialogflow_v2_batch_delete_intents_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v2/{+parent}/intents:batchDelete', options)
          command.request_representation = Google::Apis::DialogflowV2::GoogleCloudDialogflowV2BatchDeleteIntentsRequest::Representation
          command.request_object = google_cloud_dialogflow_v2_batch_delete_intents_request_object
          command.response_representation = Google::Apis::DialogflowV2::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::DialogflowV2::GoogleLongrunningOperation
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates/Creates multiple intents in the specified agent. This method is a [
        # long-running operation](https://cloud.google.com/dialogflow/es/docs/how/long-
        # running-operations). The returned `Operation` type has the following method-
        # specific fields: - `metadata`: An empty [Struct message](https://developers.
        # google.com/protocol-buffers/docs/reference/google.protobuf#struct) - `response`
        # : BatchUpdateIntentsResponse Note: You should always train an agent prior to
        # sending it queries. See the [training documentation](https://cloud.google.com/
        # dialogflow/es/docs/training).
        # @param [String] parent
        #   Required. The name of the agent to update or create intents in. Format: `
        #   projects//agent`.
        # @param [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2BatchUpdateIntentsRequest] google_cloud_dialogflow_v2_batch_update_intents_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV2::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV2::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def batch_project_agent_intent_update(parent, google_cloud_dialogflow_v2_batch_update_intents_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v2/{+parent}/intents:batchUpdate', options)
          command.request_representation = Google::Apis::DialogflowV2::GoogleCloudDialogflowV2BatchUpdateIntentsRequest::Representation
          command.request_object = google_cloud_dialogflow_v2_batch_update_intents_request_object
          command.response_representation = Google::Apis::DialogflowV2::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::DialogflowV2::GoogleLongrunningOperation
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates an intent in the specified agent. Note: You should always train an
        # agent prior to sending it queries. See the [training documentation](https://
        # cloud.google.com/dialogflow/es/docs/training).
        # @param [String] parent
        #   Required. The agent to create a intent for. Format: `projects//agent`.
        # @param [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2Intent] google_cloud_dialogflow_v2_intent_object
        # @param [String] intent_view
        #   Optional. The resource view to apply to the returned intent.
        # @param [String] language_code
        #   Optional. The language used to access language-specific data. If not specified,
        #   the agent's default language is used. For more information, see [Multilingual
        #   intent and entity data](https://cloud.google.com/dialogflow/docs/agents-
        #   multilingual#intent-entity).
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2Intent] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2Intent]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_agent_intent(parent, google_cloud_dialogflow_v2_intent_object = nil, intent_view: nil, language_code: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v2/{+parent}/intents', options)
          command.request_representation = Google::Apis::DialogflowV2::GoogleCloudDialogflowV2Intent::Representation
          command.request_object = google_cloud_dialogflow_v2_intent_object
          command.response_representation = Google::Apis::DialogflowV2::GoogleCloudDialogflowV2Intent::Representation
          command.response_class = Google::Apis::DialogflowV2::GoogleCloudDialogflowV2Intent
          command.params['parent'] = parent unless parent.nil?
          command.query['intentView'] = intent_view unless intent_view.nil?
          command.query['languageCode'] = language_code unless language_code.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes the specified intent and its direct or indirect followup intents. Note:
        # You should always train an agent prior to sending it queries. See the [
        # training documentation](https://cloud.google.com/dialogflow/es/docs/training).
        # @param [String] name
        #   Required. The name of the intent to delete. If this intent has direct or
        #   indirect followup intents, we also delete them. Format: `projects//agent/
        #   intents/`.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV2::GoogleProtobufEmpty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV2::GoogleProtobufEmpty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_agent_intent(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v2/{+name}', options)
          command.response_representation = Google::Apis::DialogflowV2::GoogleProtobufEmpty::Representation
          command.response_class = Google::Apis::DialogflowV2::GoogleProtobufEmpty
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Retrieves the specified intent.
        # @param [String] name
        #   Required. The name of the intent. Format: `projects//agent/intents/`.
        # @param [String] intent_view
        #   Optional. The resource view to apply to the returned intent.
        # @param [String] language_code
        #   Optional. The language used to access language-specific data. If not specified,
        #   the agent's default language is used. For more information, see [Multilingual
        #   intent and entity data](https://cloud.google.com/dialogflow/docs/agents-
        #   multilingual#intent-entity).
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2Intent] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2Intent]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_agent_intent(name, intent_view: nil, language_code: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2/{+name}', options)
          command.response_representation = Google::Apis::DialogflowV2::GoogleCloudDialogflowV2Intent::Representation
          command.response_class = Google::Apis::DialogflowV2::GoogleCloudDialogflowV2Intent
          command.params['name'] = name unless name.nil?
          command.query['intentView'] = intent_view unless intent_view.nil?
          command.query['languageCode'] = language_code unless language_code.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Returns the list of all intents in the specified agent.
        # @param [String] parent
        #   Required. The agent to list all intents from. Format: `projects//agent` or `
        #   projects//locations//agent`. Alternatively, you can specify the environment to
        #   list intents for. Format: `projects//agent/environments/` or `projects//
        #   locations//agent/environments/`. Note: training phrases of the intents will
        #   not be returned for non-draft environment.
        # @param [String] intent_view
        #   Optional. The resource view to apply to the returned intent.
        # @param [String] language_code
        #   Optional. The language used to access language-specific data. If not specified,
        #   the agent's default language is used. For more information, see [Multilingual
        #   intent and entity data](https://cloud.google.com/dialogflow/docs/agents-
        #   multilingual#intent-entity).
        # @param [Fixnum] page_size
        #   Optional. The maximum number of items to return in a single page. By default
        #   100 and at most 1000.
        # @param [String] page_token
        #   Optional. The next_page_token value returned from a previous list request.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2ListIntentsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2ListIntentsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_agent_intents(parent, intent_view: nil, language_code: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2/{+parent}/intents', options)
          command.response_representation = Google::Apis::DialogflowV2::GoogleCloudDialogflowV2ListIntentsResponse::Representation
          command.response_class = Google::Apis::DialogflowV2::GoogleCloudDialogflowV2ListIntentsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['intentView'] = intent_view unless intent_view.nil?
          command.query['languageCode'] = language_code unless language_code.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates the specified intent. Note: You should always train an agent prior to
        # sending it queries. See the [training documentation](https://cloud.google.com/
        # dialogflow/es/docs/training).
        # @param [String] name
        #   Optional. The unique identifier of this intent. Required for Intents.
        #   UpdateIntent and Intents.BatchUpdateIntents methods. Format: `projects//agent/
        #   intents/`.
        # @param [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2Intent] google_cloud_dialogflow_v2_intent_object
        # @param [String] intent_view
        #   Optional. The resource view to apply to the returned intent.
        # @param [String] language_code
        #   Optional. The language used to access language-specific data. If not specified,
        #   the agent's default language is used. For more information, see [Multilingual
        #   intent and entity data](https://cloud.google.com/dialogflow/docs/agents-
        #   multilingual#intent-entity).
        # @param [String] update_mask
        #   Optional. The mask to control which fields get updated.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2Intent] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2Intent]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_project_agent_intent(name, google_cloud_dialogflow_v2_intent_object = nil, intent_view: nil, language_code: nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v2/{+name}', options)
          command.request_representation = Google::Apis::DialogflowV2::GoogleCloudDialogflowV2Intent::Representation
          command.request_object = google_cloud_dialogflow_v2_intent_object
          command.response_representation = Google::Apis::DialogflowV2::GoogleCloudDialogflowV2Intent::Representation
          command.response_class = Google::Apis::DialogflowV2::GoogleCloudDialogflowV2Intent
          command.params['name'] = name unless name.nil?
          command.query['intentView'] = intent_view unless intent_view.nil?
          command.query['languageCode'] = language_code unless language_code.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a knowledge base.
        # @param [String] parent
        #   Required. The project to create a knowledge base for. Format: `projects//
        #   locations/`.
        # @param [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2KnowledgeBase] google_cloud_dialogflow_v2_knowledge_base_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2KnowledgeBase] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2KnowledgeBase]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_agent_knowledge_basis(parent, google_cloud_dialogflow_v2_knowledge_base_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v2/{+parent}/knowledgeBases', options)
          command.request_representation = Google::Apis::DialogflowV2::GoogleCloudDialogflowV2KnowledgeBase::Representation
          command.request_object = google_cloud_dialogflow_v2_knowledge_base_object
          command.response_representation = Google::Apis::DialogflowV2::GoogleCloudDialogflowV2KnowledgeBase::Representation
          command.response_class = Google::Apis::DialogflowV2::GoogleCloudDialogflowV2KnowledgeBase
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes the specified knowledge base.
        # @param [String] name
        #   Required. The name of the knowledge base to delete. Format: `projects//
        #   locations//knowledgeBases/`.
        # @param [Boolean] force
        #   Optional. Force deletes the knowledge base. When set to true, any documents in
        #   the knowledge base are also deleted.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV2::GoogleProtobufEmpty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV2::GoogleProtobufEmpty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_agent_knowledge_basis(name, force: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v2/{+name}', options)
          command.response_representation = Google::Apis::DialogflowV2::GoogleProtobufEmpty::Representation
          command.response_class = Google::Apis::DialogflowV2::GoogleProtobufEmpty
          command.params['name'] = name unless name.nil?
          command.query['force'] = force unless force.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Retrieves the specified knowledge base.
        # @param [String] name
        #   Required. The name of the knowledge base to retrieve. Format `projects//
        #   locations//knowledgeBases/`.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2KnowledgeBase] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2KnowledgeBase]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_agent_knowledge_basis(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2/{+name}', options)
          command.response_representation = Google::Apis::DialogflowV2::GoogleCloudDialogflowV2KnowledgeBase::Representation
          command.response_class = Google::Apis::DialogflowV2::GoogleCloudDialogflowV2KnowledgeBase
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Returns the list of all knowledge bases of the specified agent.
        # @param [String] parent
        #   Required. The project to list of knowledge bases for. Format: `projects//
        #   locations/`.
        # @param [String] filter
        #   The filter expression used to filter knowledge bases returned by the list
        #   method. The expression has the following syntax: [AND ] ... The following
        #   fields and operators are supported: * display_name with has(:) operator *
        #   language_code with equals(=) operator Examples: * 'language_code=en-us'
        #   matches knowledge bases with en-us language code. * 'display_name:articles'
        #   matches knowledge bases whose display name contains "articles". * '
        #   display_name:"Best Articles"' matches knowledge bases whose display name
        #   contains "Best Articles". * 'language_code=en-gb AND display_name=articles'
        #   matches all knowledge bases whose display name contains "articles" and whose
        #   language code is "en-gb". Note: An empty filter string (i.e. "") is a no-op
        #   and will result in no filtering. For more information about filtering, see [
        #   API Filtering](https://aip.dev/160).
        # @param [Fixnum] page_size
        #   The maximum number of items to return in a single page. By default 10 and at
        #   most 100.
        # @param [String] page_token
        #   The next_page_token value returned from a previous list request.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2ListKnowledgeBasesResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2ListKnowledgeBasesResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_agent_knowledge_bases(parent, filter: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2/{+parent}/knowledgeBases', options)
          command.response_representation = Google::Apis::DialogflowV2::GoogleCloudDialogflowV2ListKnowledgeBasesResponse::Representation
          command.response_class = Google::Apis::DialogflowV2::GoogleCloudDialogflowV2ListKnowledgeBasesResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates the specified knowledge base.
        # @param [String] name
        #   The knowledge base resource name. The name must be empty when creating a
        #   knowledge base. Format: `projects//locations//knowledgeBases/`.
        # @param [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2KnowledgeBase] google_cloud_dialogflow_v2_knowledge_base_object
        # @param [String] update_mask
        #   Optional. Not specified means `update all`. Currently, only `display_name` can
        #   be updated, an InvalidArgument will be returned for attempting to update other
        #   fields.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2KnowledgeBase] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2KnowledgeBase]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_project_agent_knowledge_basis(name, google_cloud_dialogflow_v2_knowledge_base_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v2/{+name}', options)
          command.request_representation = Google::Apis::DialogflowV2::GoogleCloudDialogflowV2KnowledgeBase::Representation
          command.request_object = google_cloud_dialogflow_v2_knowledge_base_object
          command.response_representation = Google::Apis::DialogflowV2::GoogleCloudDialogflowV2KnowledgeBase::Representation
          command.response_class = Google::Apis::DialogflowV2::GoogleCloudDialogflowV2KnowledgeBase
          command.params['name'] = name unless name.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a new document. This method is a [long-running operation](https://
        # cloud.google.com/dialogflow/cx/docs/how/long-running-operation). The returned `
        # Operation` type has the following method-specific fields: - `metadata`:
        # KnowledgeOperationMetadata - `response`: Document
        # @param [String] parent
        #   Required. The knowledge base to create a document for. Format: `projects//
        #   locations//knowledgeBases/`.
        # @param [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2Document] google_cloud_dialogflow_v2_document_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV2::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV2::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_agent_knowledge_basis_document(parent, google_cloud_dialogflow_v2_document_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v2/{+parent}/documents', options)
          command.request_representation = Google::Apis::DialogflowV2::GoogleCloudDialogflowV2Document::Representation
          command.request_object = google_cloud_dialogflow_v2_document_object
          command.response_representation = Google::Apis::DialogflowV2::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::DialogflowV2::GoogleLongrunningOperation
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes the specified document. This method is a [long-running operation](
        # https://cloud.google.com/dialogflow/cx/docs/how/long-running-operation). The
        # returned `Operation` type has the following method-specific fields: - `
        # metadata`: KnowledgeOperationMetadata - `response`: An [Empty message](https://
        # developers.google.com/protocol-buffers/docs/reference/google.protobuf#empty)
        # @param [String] name
        #   Required. The name of the document to delete. Format: `projects//locations//
        #   knowledgeBases//documents/`.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV2::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV2::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_agent_knowledge_basis_document(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v2/{+name}', options)
          command.response_representation = Google::Apis::DialogflowV2::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::DialogflowV2::GoogleLongrunningOperation
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Retrieves the specified document.
        # @param [String] name
        #   Required. The name of the document to retrieve. Format `projects//locations//
        #   knowledgeBases//documents/`.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2Document] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2Document]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_agent_knowledge_basis_document(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2/{+name}', options)
          command.response_representation = Google::Apis::DialogflowV2::GoogleCloudDialogflowV2Document::Representation
          command.response_class = Google::Apis::DialogflowV2::GoogleCloudDialogflowV2Document
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Returns the list of all documents of the knowledge base.
        # @param [String] parent
        #   Required. The knowledge base to list all documents for. Format: `projects//
        #   locations//knowledgeBases/`.
        # @param [String] filter
        #   The filter expression used to filter documents returned by the list method.
        #   The expression has the following syntax: [AND ] ... The following fields and
        #   operators are supported: * knowledge_types with has(:) operator * display_name
        #   with has(:) operator * state with equals(=) operator Examples: * "
        #   knowledge_types:FAQ" matches documents with FAQ knowledge type. * "
        #   display_name:customer" matches documents whose display name contains "customer"
        #   . * "state=ACTIVE" matches documents with ACTIVE state. * "knowledge_types:FAQ
        #   AND state=ACTIVE" matches all active FAQ documents. For more information about
        #   filtering, see [API Filtering](https://aip.dev/160).
        # @param [Fixnum] page_size
        #   The maximum number of items to return in a single page. By default 10 and at
        #   most 100.
        # @param [String] page_token
        #   The next_page_token value returned from a previous list request.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2ListDocumentsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2ListDocumentsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_agent_knowledge_basis_documents(parent, filter: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2/{+parent}/documents', options)
          command.response_representation = Google::Apis::DialogflowV2::GoogleCloudDialogflowV2ListDocumentsResponse::Representation
          command.response_class = Google::Apis::DialogflowV2::GoogleCloudDialogflowV2ListDocumentsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates the specified document. This method is a [long-running operation](
        # https://cloud.google.com/dialogflow/cx/docs/how/long-running-operation). The
        # returned `Operation` type has the following method-specific fields: - `
        # metadata`: KnowledgeOperationMetadata - `response`: Document
        # @param [String] name
        #   Optional. The document resource name. The name must be empty when creating a
        #   document. Format: `projects//locations//knowledgeBases//documents/`.
        # @param [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2Document] google_cloud_dialogflow_v2_document_object
        # @param [String] update_mask
        #   Optional. Not specified means `update all`. Currently, only `display_name` can
        #   be updated, an InvalidArgument will be returned for attempting to update other
        #   fields.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV2::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV2::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_project_agent_knowledge_basis_document(name, google_cloud_dialogflow_v2_document_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v2/{+name}', options)
          command.request_representation = Google::Apis::DialogflowV2::GoogleCloudDialogflowV2Document::Representation
          command.request_object = google_cloud_dialogflow_v2_document_object
          command.response_representation = Google::Apis::DialogflowV2::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::DialogflowV2::GoogleLongrunningOperation
          command.params['name'] = name unless name.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Reloads the specified document from its specified source, content_uri or
        # content. The previously loaded content of the document will be deleted. Note:
        # Even when the content of the document has not changed, there still may be side
        # effects because of internal implementation changes. This method is a [long-
        # running operation](https://cloud.google.com/dialogflow/cx/docs/how/long-
        # running-operation). The returned `Operation` type has the following method-
        # specific fields: - `metadata`: KnowledgeOperationMetadata - `response`:
        # Document Note: The `projects.agent.knowledgeBases.documents` resource is
        # deprecated; only use `projects.knowledgeBases.documents`.
        # @param [String] name
        #   Required. The name of the document to reload. Format: `projects//locations//
        #   knowledgeBases//documents/`
        # @param [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2ReloadDocumentRequest] google_cloud_dialogflow_v2_reload_document_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV2::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV2::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def reload_project_agent_knowledge_basis_document(name, google_cloud_dialogflow_v2_reload_document_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v2/{+name}:reload', options)
          command.request_representation = Google::Apis::DialogflowV2::GoogleCloudDialogflowV2ReloadDocumentRequest::Representation
          command.request_object = google_cloud_dialogflow_v2_reload_document_request_object
          command.response_representation = Google::Apis::DialogflowV2::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::DialogflowV2::GoogleLongrunningOperation
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes all active contexts in the specified session.
        # @param [String] parent
        #   Required. The name of the session to delete all contexts from. Format: `
        #   projects//agent/sessions/` or `projects//agent/environments//users//sessions/`.
        #   If `Environment ID` is not specified we assume default 'draft' environment.
        #   If `User ID` is not specified, we assume default '-' user.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV2::GoogleProtobufEmpty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV2::GoogleProtobufEmpty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_agent_session_contexts(parent, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v2/{+parent}/contexts', options)
          command.response_representation = Google::Apis::DialogflowV2::GoogleProtobufEmpty::Representation
          command.response_class = Google::Apis::DialogflowV2::GoogleProtobufEmpty
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Processes a natural language query and returns structured, actionable data as
        # a result. This method is not idempotent, because it may cause contexts and
        # session entity types to be updated, which in turn might affect results of
        # future queries. If you might use [Agent Assist](https://cloud.google.com/
        # dialogflow/docs/#aa) or other CCAI products now or in the future, consider
        # using AnalyzeContent instead of `DetectIntent`. `AnalyzeContent` has
        # additional functionality for Agent Assist and other CCAI products. Note:
        # Always use agent versions for production traffic. See [Versions and
        # environments](https://cloud.google.com/dialogflow/es/docs/agents-versions).
        # @param [String] session
        #   Required. The name of the session this query is sent to. Format: `projects//
        #   agent/sessions/`, or `projects//agent/environments//users//sessions/`. If `
        #   Environment ID` is not specified, we assume default 'draft' environment (`
        #   Environment ID` might be referred to as environment name at some places). If `
        #   User ID` is not specified, we are using "-". It's up to the API caller to
        #   choose an appropriate `Session ID` and `User Id`. They can be a random number
        #   or some type of user and session identifiers (preferably hashed). The length
        #   of the `Session ID` and `User ID` must not exceed 36 characters. For more
        #   information, see the [API interactions guide](https://cloud.google.com/
        #   dialogflow/docs/api-overview). Note: Always use agent versions for production
        #   traffic. See [Versions and environments](https://cloud.google.com/dialogflow/
        #   es/docs/agents-versions).
        # @param [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2DetectIntentRequest] google_cloud_dialogflow_v2_detect_intent_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2DetectIntentResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2DetectIntentResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def detect_project_agent_session_intent(session, google_cloud_dialogflow_v2_detect_intent_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v2/{+session}:detectIntent', options)
          command.request_representation = Google::Apis::DialogflowV2::GoogleCloudDialogflowV2DetectIntentRequest::Representation
          command.request_object = google_cloud_dialogflow_v2_detect_intent_request_object
          command.response_representation = Google::Apis::DialogflowV2::GoogleCloudDialogflowV2DetectIntentResponse::Representation
          command.response_class = Google::Apis::DialogflowV2::GoogleCloudDialogflowV2DetectIntentResponse
          command.params['session'] = session unless session.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a context. If the specified context already exists, overrides the
        # context.
        # @param [String] parent
        #   Required. The session to create a context for. Format: `projects//agent/
        #   sessions/` or `projects//agent/environments//users//sessions/`. If `
        #   Environment ID` is not specified, we assume default 'draft' environment. If `
        #   User ID` is not specified, we assume default '-' user.
        # @param [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2Context] google_cloud_dialogflow_v2_context_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2Context] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2Context]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_agent_session_context(parent, google_cloud_dialogflow_v2_context_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v2/{+parent}/contexts', options)
          command.request_representation = Google::Apis::DialogflowV2::GoogleCloudDialogflowV2Context::Representation
          command.request_object = google_cloud_dialogflow_v2_context_object
          command.response_representation = Google::Apis::DialogflowV2::GoogleCloudDialogflowV2Context::Representation
          command.response_class = Google::Apis::DialogflowV2::GoogleCloudDialogflowV2Context
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes the specified context.
        # @param [String] name
        #   Required. The name of the context to delete. Format: `projects//agent/sessions/
        #   /contexts/` or `projects//agent/environments//users//sessions//contexts/`. If `
        #   Environment ID` is not specified, we assume default 'draft' environment. If `
        #   User ID` is not specified, we assume default '-' user.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV2::GoogleProtobufEmpty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV2::GoogleProtobufEmpty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_agent_session_context(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v2/{+name}', options)
          command.response_representation = Google::Apis::DialogflowV2::GoogleProtobufEmpty::Representation
          command.response_class = Google::Apis::DialogflowV2::GoogleProtobufEmpty
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Retrieves the specified context.
        # @param [String] name
        #   Required. The name of the context. Format: `projects//agent/sessions//contexts/
        #   ` or `projects//agent/environments//users//sessions//contexts/`. If `
        #   Environment ID` is not specified, we assume default 'draft' environment. If `
        #   User ID` is not specified, we assume default '-' user.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2Context] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2Context]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_agent_session_context(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2/{+name}', options)
          command.response_representation = Google::Apis::DialogflowV2::GoogleCloudDialogflowV2Context::Representation
          command.response_class = Google::Apis::DialogflowV2::GoogleCloudDialogflowV2Context
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Returns the list of all contexts in the specified session.
        # @param [String] parent
        #   Required. The session to list all contexts from. Format: `projects//agent/
        #   sessions/` or `projects//agent/environments//users//sessions/`. If `
        #   Environment ID` is not specified, we assume default 'draft' environment. If `
        #   User ID` is not specified, we assume default '-' user.
        # @param [Fixnum] page_size
        #   Optional. The maximum number of items to return in a single page. By default
        #   100 and at most 1000.
        # @param [String] page_token
        #   Optional. The next_page_token value returned from a previous list request.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2ListContextsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2ListContextsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_agent_session_contexts(parent, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2/{+parent}/contexts', options)
          command.response_representation = Google::Apis::DialogflowV2::GoogleCloudDialogflowV2ListContextsResponse::Representation
          command.response_class = Google::Apis::DialogflowV2::GoogleCloudDialogflowV2ListContextsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates the specified context.
        # @param [String] name
        #   Required. The unique identifier of the context. Format: `projects//agent/
        #   sessions//contexts/`, or `projects//agent/environments//users//sessions//
        #   contexts/`. The `Context ID` is always converted to lowercase, may only
        #   contain characters in a-zA-Z0-9_-% and may be at most 250 bytes long. If `
        #   Environment ID` is not specified, we assume default 'draft' environment. If `
        #   User ID` is not specified, we assume default '-' user. The following context
        #   names are reserved for internal use by Dialogflow. You should not use these
        #   contexts or create contexts with these names: * `__system_counters__` * `*
        #   _id_dialog_context` * `*_dialog_params_size`
        # @param [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2Context] google_cloud_dialogflow_v2_context_object
        # @param [String] update_mask
        #   Optional. The mask to control which fields get updated.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2Context] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2Context]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_project_agent_session_context(name, google_cloud_dialogflow_v2_context_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v2/{+name}', options)
          command.request_representation = Google::Apis::DialogflowV2::GoogleCloudDialogflowV2Context::Representation
          command.request_object = google_cloud_dialogflow_v2_context_object
          command.response_representation = Google::Apis::DialogflowV2::GoogleCloudDialogflowV2Context::Representation
          command.response_class = Google::Apis::DialogflowV2::GoogleCloudDialogflowV2Context
          command.params['name'] = name unless name.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a session entity type. If the specified session entity type already
        # exists, overrides the session entity type. This method doesn't work with
        # Google Assistant integration. Contact Dialogflow support if you need to use
        # session entities with Google Assistant integration.
        # @param [String] parent
        #   Required. The session to create a session entity type for. Format: `projects//
        #   agent/sessions/` or `projects//agent/environments//users// sessions/`. If `
        #   Environment ID` is not specified, we assume default 'draft' environment. If `
        #   User ID` is not specified, we assume default '-' user.
        # @param [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2SessionEntityType] google_cloud_dialogflow_v2_session_entity_type_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2SessionEntityType] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2SessionEntityType]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_agent_session_entity_type(parent, google_cloud_dialogflow_v2_session_entity_type_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v2/{+parent}/entityTypes', options)
          command.request_representation = Google::Apis::DialogflowV2::GoogleCloudDialogflowV2SessionEntityType::Representation
          command.request_object = google_cloud_dialogflow_v2_session_entity_type_object
          command.response_representation = Google::Apis::DialogflowV2::GoogleCloudDialogflowV2SessionEntityType::Representation
          command.response_class = Google::Apis::DialogflowV2::GoogleCloudDialogflowV2SessionEntityType
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes the specified session entity type. This method doesn't work with
        # Google Assistant integration. Contact Dialogflow support if you need to use
        # session entities with Google Assistant integration.
        # @param [String] name
        #   Required. The name of the entity type to delete. Format: `projects//agent/
        #   sessions//entityTypes/` or `projects//agent/environments//users//sessions//
        #   entityTypes/`. If `Environment ID` is not specified, we assume default 'draft'
        #   environment. If `User ID` is not specified, we assume default '-' user.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV2::GoogleProtobufEmpty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV2::GoogleProtobufEmpty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_agent_session_entity_type(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v2/{+name}', options)
          command.response_representation = Google::Apis::DialogflowV2::GoogleProtobufEmpty::Representation
          command.response_class = Google::Apis::DialogflowV2::GoogleProtobufEmpty
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Retrieves the specified session entity type. This method doesn't work with
        # Google Assistant integration. Contact Dialogflow support if you need to use
        # session entities with Google Assistant integration.
        # @param [String] name
        #   Required. The name of the session entity type. Format: `projects//agent/
        #   sessions//entityTypes/` or `projects//agent/environments//users//sessions//
        #   entityTypes/`. If `Environment ID` is not specified, we assume default 'draft'
        #   environment. If `User ID` is not specified, we assume default '-' user.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2SessionEntityType] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2SessionEntityType]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_agent_session_entity_type(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2/{+name}', options)
          command.response_representation = Google::Apis::DialogflowV2::GoogleCloudDialogflowV2SessionEntityType::Representation
          command.response_class = Google::Apis::DialogflowV2::GoogleCloudDialogflowV2SessionEntityType
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Returns the list of all session entity types in the specified session. This
        # method doesn't work with Google Assistant integration. Contact Dialogflow
        # support if you need to use session entities with Google Assistant integration.
        # @param [String] parent
        #   Required. The session to list all session entity types from. Format: `projects/
        #   /agent/sessions/` or `projects//agent/environments//users// sessions/`. If `
        #   Environment ID` is not specified, we assume default 'draft' environment. If `
        #   User ID` is not specified, we assume default '-' user.
        # @param [Fixnum] page_size
        #   Optional. The maximum number of items to return in a single page. By default
        #   100 and at most 1000.
        # @param [String] page_token
        #   Optional. The next_page_token value returned from a previous list request.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2ListSessionEntityTypesResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2ListSessionEntityTypesResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_agent_session_entity_types(parent, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2/{+parent}/entityTypes', options)
          command.response_representation = Google::Apis::DialogflowV2::GoogleCloudDialogflowV2ListSessionEntityTypesResponse::Representation
          command.response_class = Google::Apis::DialogflowV2::GoogleCloudDialogflowV2ListSessionEntityTypesResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates the specified session entity type. This method doesn't work with
        # Google Assistant integration. Contact Dialogflow support if you need to use
        # session entities with Google Assistant integration.
        # @param [String] name
        #   Required. The unique identifier of this session entity type. Format: `projects/
        #   /agent/sessions//entityTypes/`, or `projects//agent/environments//users//
        #   sessions//entityTypes/`. If `Environment ID` is not specified, we assume
        #   default 'draft' environment. If `User ID` is not specified, we assume default '
        #   -' user. `` must be the display name of an existing entity type in the same
        #   agent that will be overridden or supplemented.
        # @param [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2SessionEntityType] google_cloud_dialogflow_v2_session_entity_type_object
        # @param [String] update_mask
        #   Optional. The mask to control which fields get updated.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2SessionEntityType] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2SessionEntityType]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_project_agent_session_entity_type(name, google_cloud_dialogflow_v2_session_entity_type_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v2/{+name}', options)
          command.request_representation = Google::Apis::DialogflowV2::GoogleCloudDialogflowV2SessionEntityType::Representation
          command.request_object = google_cloud_dialogflow_v2_session_entity_type_object
          command.response_representation = Google::Apis::DialogflowV2::GoogleCloudDialogflowV2SessionEntityType::Representation
          command.response_class = Google::Apis::DialogflowV2::GoogleCloudDialogflowV2SessionEntityType
          command.params['name'] = name unless name.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates an agent version. The new version points to the agent instance in the "
        # default" environment.
        # @param [String] parent
        #   Required. The agent to create a version for. Supported formats: - `projects//
        #   agent` - `projects//locations//agent`
        # @param [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2Version] google_cloud_dialogflow_v2_version_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2Version] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2Version]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_agent_version(parent, google_cloud_dialogflow_v2_version_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v2/{+parent}/versions', options)
          command.request_representation = Google::Apis::DialogflowV2::GoogleCloudDialogflowV2Version::Representation
          command.request_object = google_cloud_dialogflow_v2_version_object
          command.response_representation = Google::Apis::DialogflowV2::GoogleCloudDialogflowV2Version::Representation
          command.response_class = Google::Apis::DialogflowV2::GoogleCloudDialogflowV2Version
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Delete the specified agent version.
        # @param [String] name
        #   Required. The name of the version to delete. Supported formats: - `projects//
        #   agent/versions/` - `projects//locations//agent/versions/`
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV2::GoogleProtobufEmpty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV2::GoogleProtobufEmpty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_agent_version(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v2/{+name}', options)
          command.response_representation = Google::Apis::DialogflowV2::GoogleProtobufEmpty::Representation
          command.response_class = Google::Apis::DialogflowV2::GoogleProtobufEmpty
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Retrieves the specified agent version.
        # @param [String] name
        #   Required. The name of the version. Supported formats: - `projects//agent/
        #   versions/` - `projects//locations//agent/versions/`
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2Version] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2Version]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_agent_version(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2/{+name}', options)
          command.response_representation = Google::Apis::DialogflowV2::GoogleCloudDialogflowV2Version::Representation
          command.response_class = Google::Apis::DialogflowV2::GoogleCloudDialogflowV2Version
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Returns the list of all versions of the specified agent.
        # @param [String] parent
        #   Required. The agent to list all versions from. Supported formats: - `projects//
        #   agent` - `projects//locations//agent`
        # @param [Fixnum] page_size
        #   Optional. The maximum number of items to return in a single page. By default
        #   100 and at most 1000.
        # @param [String] page_token
        #   Optional. The next_page_token value returned from a previous list request.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2ListVersionsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2ListVersionsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_agent_versions(parent, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2/{+parent}/versions', options)
          command.response_representation = Google::Apis::DialogflowV2::GoogleCloudDialogflowV2ListVersionsResponse::Representation
          command.response_class = Google::Apis::DialogflowV2::GoogleCloudDialogflowV2ListVersionsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates the specified agent version. Note that this method does not allow you
        # to update the state of the agent the given version points to. It allows you to
        # update only mutable properties of the version resource.
        # @param [String] name
        #   Output only. The unique identifier of this agent version. Supported formats: -
        #   `projects//agent/versions/` - `projects//locations//agent/versions/`
        # @param [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2Version] google_cloud_dialogflow_v2_version_object
        # @param [String] update_mask
        #   Required. The mask to control which fields get updated.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2Version] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2Version]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_project_agent_version(name, google_cloud_dialogflow_v2_version_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v2/{+name}', options)
          command.request_representation = Google::Apis::DialogflowV2::GoogleCloudDialogflowV2Version::Representation
          command.request_object = google_cloud_dialogflow_v2_version_object
          command.response_representation = Google::Apis::DialogflowV2::GoogleCloudDialogflowV2Version::Representation
          command.response_class = Google::Apis::DialogflowV2::GoogleCloudDialogflowV2Version
          command.params['name'] = name unless name.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Returns the list of all answer records in the specified project in reverse
        # chronological order.
        # @param [String] parent
        #   Required. The project to list all answer records for in reverse chronological
        #   order. Format: `projects//locations/`.
        # @param [String] filter
        #   Optional. Filters to restrict results to specific answer records. Marked
        #   deprecated as it hasn't been, and isn't currently, supported. For more
        #   information about filtering, see [API Filtering](https://aip.dev/160).
        # @param [Fixnum] page_size
        #   Optional. The maximum number of records to return in a single page. The server
        #   may return fewer records than this. If unspecified, we use 10. The maximum is
        #   100.
        # @param [String] page_token
        #   Optional. The ListAnswerRecordsResponse.next_page_token value returned from a
        #   previous list request used to continue listing on the next page.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2ListAnswerRecordsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2ListAnswerRecordsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_answer_records(parent, filter: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2/{+parent}/answerRecords', options)
          command.response_representation = Google::Apis::DialogflowV2::GoogleCloudDialogflowV2ListAnswerRecordsResponse::Representation
          command.response_class = Google::Apis::DialogflowV2::GoogleCloudDialogflowV2ListAnswerRecordsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates the specified answer record.
        # @param [String] name
        #   The unique identifier of this answer record. Format: `projects//locations//
        #   answerRecords/`.
        # @param [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2AnswerRecord] google_cloud_dialogflow_v2_answer_record_object
        # @param [String] update_mask
        #   Required. The mask to control which fields get updated.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2AnswerRecord] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2AnswerRecord]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_project_answer_record(name, google_cloud_dialogflow_v2_answer_record_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v2/{+name}', options)
          command.request_representation = Google::Apis::DialogflowV2::GoogleCloudDialogflowV2AnswerRecord::Representation
          command.request_object = google_cloud_dialogflow_v2_answer_record_object
          command.response_representation = Google::Apis::DialogflowV2::GoogleCloudDialogflowV2AnswerRecord::Representation
          command.response_class = Google::Apis::DialogflowV2::GoogleCloudDialogflowV2AnswerRecord
          command.params['name'] = name unless name.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Retrieves the specified conversation dataset.
        # @param [String] name
        #   Required. The conversation dataset to retrieve. Format: `projects//locations//
        #   conversationDatasets/`
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2ConversationDataset] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2ConversationDataset]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_conversation_dataset(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2/{+name}', options)
          command.response_representation = Google::Apis::DialogflowV2::GoogleCloudDialogflowV2ConversationDataset::Representation
          command.response_class = Google::Apis::DialogflowV2::GoogleCloudDialogflowV2ConversationDataset
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Import data into the specified conversation dataset. Note that it is not
        # allowed to import data to a conversation dataset that already has data in it.
        # This method is a [long-running operation](https://cloud.google.com/dialogflow/
        # es/docs/how/long-running-operations). The returned `Operation` type has the
        # following method-specific fields: - `metadata`:
        # ImportConversationDataOperationMetadata - `response`:
        # ImportConversationDataOperationResponse
        # @param [String] name
        #   Required. Dataset resource name. Format: `projects//locations//
        #   conversationDatasets/`
        # @param [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2ImportConversationDataRequest] google_cloud_dialogflow_v2_import_conversation_data_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV2::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV2::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def import_project_conversation_dataset_conversation_data(name, google_cloud_dialogflow_v2_import_conversation_data_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v2/{+name}:importConversationData', options)
          command.request_representation = Google::Apis::DialogflowV2::GoogleCloudDialogflowV2ImportConversationDataRequest::Representation
          command.request_object = google_cloud_dialogflow_v2_import_conversation_data_request_object
          command.response_representation = Google::Apis::DialogflowV2::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::DialogflowV2::GoogleLongrunningOperation
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Returns the list of all conversation datasets in the specified project and
        # location.
        # @param [String] parent
        #   Required. The project and location name to list all conversation datasets for.
        #   Format: `projects//locations/`
        # @param [Fixnum] page_size
        #   Optional. Maximum number of conversation datasets to return in a single page.
        #   By default 100 and at most 1000.
        # @param [String] page_token
        #   Optional. The next_page_token value returned from a previous list request.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2ListConversationDatasetsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2ListConversationDatasetsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_conversation_datasets(parent, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2/{+parent}/conversationDatasets', options)
          command.response_representation = Google::Apis::DialogflowV2::GoogleCloudDialogflowV2ListConversationDatasetsResponse::Representation
          command.response_class = Google::Apis::DialogflowV2::GoogleCloudDialogflowV2ListConversationDatasetsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a model. This method is a [long-running operation](https://cloud.
        # google.com/dialogflow/es/docs/how/long-running-operations). The returned `
        # Operation` type has the following method-specific fields: - `metadata`:
        # CreateConversationModelOperationMetadata - `response`: ConversationModel
        # @param [String] parent
        #   The project to create conversation model for. Format: `projects/`
        # @param [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2ConversationModel] google_cloud_dialogflow_v2_conversation_model_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV2::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV2::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_conversation_model(parent, google_cloud_dialogflow_v2_conversation_model_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v2/{+parent}/conversationModels', options)
          command.request_representation = Google::Apis::DialogflowV2::GoogleCloudDialogflowV2ConversationModel::Representation
          command.request_object = google_cloud_dialogflow_v2_conversation_model_object
          command.response_representation = Google::Apis::DialogflowV2::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::DialogflowV2::GoogleLongrunningOperation
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes a model. This method is a [long-running operation](https://cloud.
        # google.com/dialogflow/es/docs/how/long-running-operations). The returned `
        # Operation` type has the following method-specific fields: - `metadata`:
        # DeleteConversationModelOperationMetadata - `response`: An [Empty message](
        # https://developers.google.com/protocol-buffers/docs/reference/google.protobuf#
        # empty)
        # @param [String] name
        #   Required. The conversation model to delete. Format: `projects//
        #   conversationModels/`
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV2::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV2::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_conversation_model(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v2/{+name}', options)
          command.response_representation = Google::Apis::DialogflowV2::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::DialogflowV2::GoogleLongrunningOperation
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deploys a model. If a model is already deployed, deploying it has no effect. A
        # model can only serve prediction requests after it gets deployed. For article
        # suggestion, custom model will not be used unless it is deployed. This method
        # is a [long-running operation](https://cloud.google.com/dialogflow/es/docs/how/
        # long-running-operations). The returned `Operation` type has the following
        # method-specific fields: - `metadata`: DeployConversationModelOperationMetadata
        # - `response`: An [Empty message](https://developers.google.com/protocol-
        # buffers/docs/reference/google.protobuf#empty)
        # @param [String] name
        #   Required. The conversation model to deploy. Format: `projects//
        #   conversationModels/`
        # @param [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2DeployConversationModelRequest] google_cloud_dialogflow_v2_deploy_conversation_model_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV2::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV2::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def deploy_project_conversation_model(name, google_cloud_dialogflow_v2_deploy_conversation_model_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v2/{+name}:deploy', options)
          command.request_representation = Google::Apis::DialogflowV2::GoogleCloudDialogflowV2DeployConversationModelRequest::Representation
          command.request_object = google_cloud_dialogflow_v2_deploy_conversation_model_request_object
          command.response_representation = Google::Apis::DialogflowV2::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::DialogflowV2::GoogleLongrunningOperation
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets conversation model.
        # @param [String] name
        #   Required. The conversation model to retrieve. Format: `projects//
        #   conversationModels/`
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2ConversationModel] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2ConversationModel]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_conversation_model(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2/{+name}', options)
          command.response_representation = Google::Apis::DialogflowV2::GoogleCloudDialogflowV2ConversationModel::Representation
          command.response_class = Google::Apis::DialogflowV2::GoogleCloudDialogflowV2ConversationModel
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists conversation models.
        # @param [String] parent
        #   Required. The project to list all conversation models for. Format: `projects/`
        # @param [Fixnum] page_size
        #   Optional. Maximum number of conversation models to return in a single page. By
        #   default 100 and at most 1000.
        # @param [String] page_token
        #   Optional. The next_page_token value returned from a previous list request.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2ListConversationModelsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2ListConversationModelsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_conversation_models(parent, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2/{+parent}/conversationModels', options)
          command.response_representation = Google::Apis::DialogflowV2::GoogleCloudDialogflowV2ListConversationModelsResponse::Representation
          command.response_class = Google::Apis::DialogflowV2::GoogleCloudDialogflowV2ListConversationModelsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Undeploys a model. If the model is not deployed this method has no effect. If
        # the model is currently being used: - For article suggestion, article
        # suggestion will fallback to the default model if model is undeployed. This
        # method is a [long-running operation](https://cloud.google.com/dialogflow/es/
        # docs/how/long-running-operations). The returned `Operation` type has the
        # following method-specific fields: - `metadata`:
        # UndeployConversationModelOperationMetadata - `response`: An [Empty message](
        # https://developers.google.com/protocol-buffers/docs/reference/google.protobuf#
        # empty)
        # @param [String] name
        #   Required. The conversation model to undeploy. Format: `projects//
        #   conversationModels/`
        # @param [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2UndeployConversationModelRequest] google_cloud_dialogflow_v2_undeploy_conversation_model_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV2::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV2::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def undeploy_project_conversation_model(name, google_cloud_dialogflow_v2_undeploy_conversation_model_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v2/{+name}:undeploy', options)
          command.request_representation = Google::Apis::DialogflowV2::GoogleCloudDialogflowV2UndeployConversationModelRequest::Representation
          command.request_object = google_cloud_dialogflow_v2_undeploy_conversation_model_request_object
          command.response_representation = Google::Apis::DialogflowV2::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::DialogflowV2::GoogleLongrunningOperation
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets an evaluation of conversation model.
        # @param [String] name
        #   Required. The conversation model evaluation resource name. Format: `projects//
        #   conversationModels//evaluations/`
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2ConversationModelEvaluation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2ConversationModelEvaluation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_conversation_model_evaluation(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2/{+name}', options)
          command.response_representation = Google::Apis::DialogflowV2::GoogleCloudDialogflowV2ConversationModelEvaluation::Representation
          command.response_class = Google::Apis::DialogflowV2::GoogleCloudDialogflowV2ConversationModelEvaluation
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists evaluations of a conversation model.
        # @param [String] parent
        #   Required. The conversation model resource name. Format: `projects//
        #   conversationModels/`
        # @param [Fixnum] page_size
        #   Optional. Maximum number of evaluations to return in a single page. By default
        #   100 and at most 1000.
        # @param [String] page_token
        #   Optional. The next_page_token value returned from a previous list request.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2ListConversationModelEvaluationsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2ListConversationModelEvaluationsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_conversation_model_evaluations(parent, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2/{+parent}/evaluations', options)
          command.response_representation = Google::Apis::DialogflowV2::GoogleCloudDialogflowV2ListConversationModelEvaluationsResponse::Representation
          command.response_class = Google::Apis::DialogflowV2::GoogleCloudDialogflowV2ListConversationModelEvaluationsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Clears a suggestion feature from a conversation profile for the given
        # participant role. This method is a [long-running operation](https://cloud.
        # google.com/dialogflow/es/docs/how/long-running-operations). The returned `
        # Operation` type has the following method-specific fields: - `metadata`:
        # ClearSuggestionFeatureConfigOperationMetadata - `response`:
        # ConversationProfile
        # @param [String] conversation_profile
        #   Required. The Conversation Profile to add or update the suggestion feature
        #   config. Format: `projects//locations//conversationProfiles/`.
        # @param [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2ClearSuggestionFeatureConfigRequest] google_cloud_dialogflow_v2_clear_suggestion_feature_config_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV2::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV2::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def clear_project_conversation_profile_suggestion_feature_config(conversation_profile, google_cloud_dialogflow_v2_clear_suggestion_feature_config_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v2/{+conversationProfile}:clearSuggestionFeatureConfig', options)
          command.request_representation = Google::Apis::DialogflowV2::GoogleCloudDialogflowV2ClearSuggestionFeatureConfigRequest::Representation
          command.request_object = google_cloud_dialogflow_v2_clear_suggestion_feature_config_request_object
          command.response_representation = Google::Apis::DialogflowV2::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::DialogflowV2::GoogleLongrunningOperation
          command.params['conversationProfile'] = conversation_profile unless conversation_profile.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a conversation profile in the specified project. ConversationProfile.
        # CreateTime and ConversationProfile.UpdateTime aren't populated in the response.
        # You can retrieve them via GetConversationProfile API.
        # @param [String] parent
        #   Required. The project to create a conversation profile for. Format: `projects//
        #   locations/`.
        # @param [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2ConversationProfile] google_cloud_dialogflow_v2_conversation_profile_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2ConversationProfile] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2ConversationProfile]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_conversation_profile(parent, google_cloud_dialogflow_v2_conversation_profile_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v2/{+parent}/conversationProfiles', options)
          command.request_representation = Google::Apis::DialogflowV2::GoogleCloudDialogflowV2ConversationProfile::Representation
          command.request_object = google_cloud_dialogflow_v2_conversation_profile_object
          command.response_representation = Google::Apis::DialogflowV2::GoogleCloudDialogflowV2ConversationProfile::Representation
          command.response_class = Google::Apis::DialogflowV2::GoogleCloudDialogflowV2ConversationProfile
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes the specified conversation profile.
        # @param [String] name
        #   Required. The name of the conversation profile to delete. Format: `projects//
        #   locations//conversationProfiles/`.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV2::GoogleProtobufEmpty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV2::GoogleProtobufEmpty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_conversation_profile(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v2/{+name}', options)
          command.response_representation = Google::Apis::DialogflowV2::GoogleProtobufEmpty::Representation
          command.response_class = Google::Apis::DialogflowV2::GoogleProtobufEmpty
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Retrieves the specified conversation profile.
        # @param [String] name
        #   Required. The resource name of the conversation profile. Format: `projects//
        #   locations//conversationProfiles/`.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2ConversationProfile] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2ConversationProfile]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_conversation_profile(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2/{+name}', options)
          command.response_representation = Google::Apis::DialogflowV2::GoogleCloudDialogflowV2ConversationProfile::Representation
          command.response_class = Google::Apis::DialogflowV2::GoogleCloudDialogflowV2ConversationProfile
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Returns the list of all conversation profiles in the specified project.
        # @param [String] parent
        #   Required. The project to list all conversation profiles from. Format: `
        #   projects//locations/`.
        # @param [Fixnum] page_size
        #   The maximum number of items to return in a single page. By default 100 and at
        #   most 1000.
        # @param [String] page_token
        #   The next_page_token value returned from a previous list request.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2ListConversationProfilesResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2ListConversationProfilesResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_conversation_profiles(parent, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2/{+parent}/conversationProfiles', options)
          command.response_representation = Google::Apis::DialogflowV2::GoogleCloudDialogflowV2ListConversationProfilesResponse::Representation
          command.response_class = Google::Apis::DialogflowV2::GoogleCloudDialogflowV2ListConversationProfilesResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates the specified conversation profile. ConversationProfile.CreateTime and
        # ConversationProfile.UpdateTime aren't populated in the response. You can
        # retrieve them via GetConversationProfile API.
        # @param [String] name
        #   The unique identifier of this conversation profile. Format: `projects//
        #   locations//conversationProfiles/`.
        # @param [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2ConversationProfile] google_cloud_dialogflow_v2_conversation_profile_object
        # @param [String] update_mask
        #   Required. The mask to control which fields to update.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2ConversationProfile] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2ConversationProfile]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_project_conversation_profile(name, google_cloud_dialogflow_v2_conversation_profile_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v2/{+name}', options)
          command.request_representation = Google::Apis::DialogflowV2::GoogleCloudDialogflowV2ConversationProfile::Representation
          command.request_object = google_cloud_dialogflow_v2_conversation_profile_object
          command.response_representation = Google::Apis::DialogflowV2::GoogleCloudDialogflowV2ConversationProfile::Representation
          command.response_class = Google::Apis::DialogflowV2::GoogleCloudDialogflowV2ConversationProfile
          command.params['name'] = name unless name.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Adds or updates a suggestion feature in a conversation profile. If the
        # conversation profile contains the type of suggestion feature for the
        # participant role, it will update it. Otherwise it will insert the suggestion
        # feature. This method is a [long-running operation](https://cloud.google.com/
        # dialogflow/es/docs/how/long-running-operations). The returned `Operation` type
        # has the following method-specific fields: - `metadata`:
        # SetSuggestionFeatureConfigOperationMetadata - `response`: ConversationProfile
        # If a long running operation to add or update suggestion feature config for the
        # same conversation profile, participant role and suggestion feature type exists,
        # please cancel the existing long running operation before sending such request,
        # otherwise the request will be rejected.
        # @param [String] conversation_profile
        #   Required. The Conversation Profile to add or update the suggestion feature
        #   config. Format: `projects//locations//conversationProfiles/`.
        # @param [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2SetSuggestionFeatureConfigRequest] google_cloud_dialogflow_v2_set_suggestion_feature_config_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV2::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV2::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def set_project_conversation_profile_suggestion_feature_config(conversation_profile, google_cloud_dialogflow_v2_set_suggestion_feature_config_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v2/{+conversationProfile}:setSuggestionFeatureConfig', options)
          command.request_representation = Google::Apis::DialogflowV2::GoogleCloudDialogflowV2SetSuggestionFeatureConfigRequest::Representation
          command.request_object = google_cloud_dialogflow_v2_set_suggestion_feature_config_request_object
          command.response_representation = Google::Apis::DialogflowV2::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::DialogflowV2::GoogleLongrunningOperation
          command.params['conversationProfile'] = conversation_profile unless conversation_profile.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Completes the specified conversation. Finished conversations are purged from
        # the database after 30 days.
        # @param [String] name
        #   Required. Resource identifier of the conversation to close. Format: `projects//
        #   locations//conversations/`.
        # @param [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2CompleteConversationRequest] google_cloud_dialogflow_v2_complete_conversation_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2Conversation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2Conversation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def complete_project_conversation(name, google_cloud_dialogflow_v2_complete_conversation_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v2/{+name}:complete', options)
          command.request_representation = Google::Apis::DialogflowV2::GoogleCloudDialogflowV2CompleteConversationRequest::Representation
          command.request_object = google_cloud_dialogflow_v2_complete_conversation_request_object
          command.response_representation = Google::Apis::DialogflowV2::GoogleCloudDialogflowV2Conversation::Representation
          command.response_class = Google::Apis::DialogflowV2::GoogleCloudDialogflowV2Conversation
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a new conversation. Conversations are auto-completed after 24 hours.
        # Conversation Lifecycle: There are two stages during a conversation: Automated
        # Agent Stage and Assist Stage. For Automated Agent Stage, there will be a
        # dialogflow agent responding to user queries. For Assist Stage, there's no
        # dialogflow agent responding to user queries. But we will provide suggestions
        # which are generated from conversation. If Conversation.conversation_profile is
        # configured for a dialogflow agent, conversation will start from `Automated
        # Agent Stage`, otherwise, it will start from `Assist Stage`. And during `
        # Automated Agent Stage`, once an Intent with Intent.live_agent_handoff is
        # triggered, conversation will transfer to Assist Stage.
        # @param [String] parent
        #   Required. Resource identifier of the project creating the conversation. Format:
        #   `projects//locations/`.
        # @param [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2Conversation] google_cloud_dialogflow_v2_conversation_object
        # @param [String] conversation_id
        #   Optional. Identifier of the conversation. Generally it's auto generated by
        #   Google. Only set it if you cannot wait for the response to return a auto-
        #   generated one to you. The conversation ID must be compliant with the
        #   regression fomula "a-zA-Z*" with the characters length in range of [3,64]. If
        #   the field is provided, the caller is resposible for 1. the uniqueness of the
        #   ID, otherwise the request will be rejected. 2. the consistency for whether to
        #   use custom ID or not under a project to better ensure uniqueness.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2Conversation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2Conversation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_conversation(parent, google_cloud_dialogflow_v2_conversation_object = nil, conversation_id: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v2/{+parent}/conversations', options)
          command.request_representation = Google::Apis::DialogflowV2::GoogleCloudDialogflowV2Conversation::Representation
          command.request_object = google_cloud_dialogflow_v2_conversation_object
          command.response_representation = Google::Apis::DialogflowV2::GoogleCloudDialogflowV2Conversation::Representation
          command.response_class = Google::Apis::DialogflowV2::GoogleCloudDialogflowV2Conversation
          command.params['parent'] = parent unless parent.nil?
          command.query['conversationId'] = conversation_id unless conversation_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Retrieves the specific conversation.
        # @param [String] name
        #   Required. The name of the conversation. Format: `projects//locations//
        #   conversations/`.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2Conversation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2Conversation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_conversation(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2/{+name}', options)
          command.response_representation = Google::Apis::DialogflowV2::GoogleCloudDialogflowV2Conversation::Representation
          command.response_class = Google::Apis::DialogflowV2::GoogleCloudDialogflowV2Conversation
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Returns the list of all conversations in the specified project.
        # @param [String] parent
        #   Required. The project from which to list all conversation. Format: `projects//
        #   locations/`.
        # @param [String] filter
        #   A filter expression that filters conversations listed in the response. In
        #   general, the expression must specify the field name, a comparison operator,
        #   and the value to use for filtering: - The value must be a string, a number, or
        #   a boolean. - The comparison operator must be either `=`,`!=`, `>`, or `<`. -
        #   To filter on multiple expressions, separate the expressions with `AND` or `OR`
        #   (omitting both implies `AND`). - For clarity, expressions can be enclosed in
        #   parentheses. Only `lifecycle_state` can be filtered on in this way. For
        #   example, the following expression only returns `COMPLETED` conversations: `
        #   lifecycle_state = "COMPLETED"` For more information about filtering, see [API
        #   Filtering](https://aip.dev/160).
        # @param [Fixnum] page_size
        #   Optional. The maximum number of items to return in a single page. By default
        #   100 and at most 1000.
        # @param [String] page_token
        #   Optional. The next_page_token value returned from a previous list request.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2ListConversationsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2ListConversationsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_conversations(parent, filter: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2/{+parent}/conversations', options)
          command.response_representation = Google::Apis::DialogflowV2::GoogleCloudDialogflowV2ListConversationsResponse::Representation
          command.response_class = Google::Apis::DialogflowV2::GoogleCloudDialogflowV2ListConversationsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists messages that belong to a given conversation. `messages` are ordered by `
        # create_time` in descending order. To fetch updates without duplication, send
        # request with filter `create_time_epoch_microseconds > [first item's
        # create_time of previous request]` and empty page_token.
        # @param [String] parent
        #   Required. The name of the conversation to list messages for. Format: `projects/
        #   /locations//conversations/`
        # @param [String] filter
        #   Optional. Filter on message fields. Currently predicates on `create_time` and `
        #   create_time_epoch_microseconds` are supported. `create_time` only support
        #   milliseconds accuracy. E.g., `create_time_epoch_microseconds >
        #   1551790877964485` or `create_time > 2017-01-15T01:30:15.01Z`. For more
        #   information about filtering, see [API Filtering](https://aip.dev/160).
        # @param [Fixnum] page_size
        #   Optional. The maximum number of items to return in a single page. By default
        #   100 and at most 1000.
        # @param [String] page_token
        #   Optional. The next_page_token value returned from a previous list request.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2ListMessagesResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2ListMessagesResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_conversation_messages(parent, filter: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2/{+parent}/messages', options)
          command.response_representation = Google::Apis::DialogflowV2::GoogleCloudDialogflowV2ListMessagesResponse::Representation
          command.response_class = Google::Apis::DialogflowV2::GoogleCloudDialogflowV2ListMessagesResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Adds a text (chat, for example), or audio (phone recording, for example)
        # message from a participant into the conversation. Note: Always use agent
        # versions for production traffic sent to virtual agents. See [Versions and
        # environments](https://cloud.google.com/dialogflow/es/docs/agents-versions).
        # @param [String] participant
        #   Required. The name of the participant this text comes from. Format: `projects//
        #   locations//conversations//participants/`.
        # @param [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2AnalyzeContentRequest] google_cloud_dialogflow_v2_analyze_content_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2AnalyzeContentResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2AnalyzeContentResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def analyze_project_conversation_participant_content(participant, google_cloud_dialogflow_v2_analyze_content_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v2/{+participant}:analyzeContent', options)
          command.request_representation = Google::Apis::DialogflowV2::GoogleCloudDialogflowV2AnalyzeContentRequest::Representation
          command.request_object = google_cloud_dialogflow_v2_analyze_content_request_object
          command.response_representation = Google::Apis::DialogflowV2::GoogleCloudDialogflowV2AnalyzeContentResponse::Representation
          command.response_class = Google::Apis::DialogflowV2::GoogleCloudDialogflowV2AnalyzeContentResponse
          command.params['participant'] = participant unless participant.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a new participant in a conversation.
        # @param [String] parent
        #   Required. Resource identifier of the conversation adding the participant.
        #   Format: `projects//locations//conversations/`.
        # @param [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2Participant] google_cloud_dialogflow_v2_participant_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2Participant] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2Participant]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_conversation_participant(parent, google_cloud_dialogflow_v2_participant_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v2/{+parent}/participants', options)
          command.request_representation = Google::Apis::DialogflowV2::GoogleCloudDialogflowV2Participant::Representation
          command.request_object = google_cloud_dialogflow_v2_participant_object
          command.response_representation = Google::Apis::DialogflowV2::GoogleCloudDialogflowV2Participant::Representation
          command.response_class = Google::Apis::DialogflowV2::GoogleCloudDialogflowV2Participant
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Retrieves a conversation participant.
        # @param [String] name
        #   Required. The name of the participant. Format: `projects//locations//
        #   conversations//participants/`.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2Participant] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2Participant]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_conversation_participant(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2/{+name}', options)
          command.response_representation = Google::Apis::DialogflowV2::GoogleCloudDialogflowV2Participant::Representation
          command.response_class = Google::Apis::DialogflowV2::GoogleCloudDialogflowV2Participant
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Returns the list of all participants in the specified conversation.
        # @param [String] parent
        #   Required. The conversation to list all participants from. Format: `projects//
        #   locations//conversations/`.
        # @param [Fixnum] page_size
        #   Optional. The maximum number of items to return in a single page. By default
        #   100 and at most 1000.
        # @param [String] page_token
        #   Optional. The next_page_token value returned from a previous list request.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2ListParticipantsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2ListParticipantsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_conversation_participants(parent, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2/{+parent}/participants', options)
          command.response_representation = Google::Apis::DialogflowV2::GoogleCloudDialogflowV2ListParticipantsResponse::Representation
          command.response_class = Google::Apis::DialogflowV2::GoogleCloudDialogflowV2ListParticipantsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates the specified participant.
        # @param [String] name
        #   Optional. The unique identifier of this participant. Format: `projects//
        #   locations//conversations//participants/`.
        # @param [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2Participant] google_cloud_dialogflow_v2_participant_object
        # @param [String] update_mask
        #   Required. The mask to specify which fields to update.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2Participant] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2Participant]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_project_conversation_participant(name, google_cloud_dialogflow_v2_participant_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v2/{+name}', options)
          command.request_representation = Google::Apis::DialogflowV2::GoogleCloudDialogflowV2Participant::Representation
          command.request_object = google_cloud_dialogflow_v2_participant_object
          command.response_representation = Google::Apis::DialogflowV2::GoogleCloudDialogflowV2Participant::Representation
          command.response_class = Google::Apis::DialogflowV2::GoogleCloudDialogflowV2Participant
          command.params['name'] = name unless name.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets suggested articles for a participant based on specific historical
        # messages.
        # @param [String] parent
        #   Required. The name of the participant to fetch suggestion for. Format: `
        #   projects//locations//conversations//participants/`.
        # @param [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2SuggestArticlesRequest] google_cloud_dialogflow_v2_suggest_articles_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2SuggestArticlesResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2SuggestArticlesResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def suggest_project_conversation_participant_suggestion_articles(parent, google_cloud_dialogflow_v2_suggest_articles_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v2/{+parent}/suggestions:suggestArticles', options)
          command.request_representation = Google::Apis::DialogflowV2::GoogleCloudDialogflowV2SuggestArticlesRequest::Representation
          command.request_object = google_cloud_dialogflow_v2_suggest_articles_request_object
          command.response_representation = Google::Apis::DialogflowV2::GoogleCloudDialogflowV2SuggestArticlesResponse::Representation
          command.response_class = Google::Apis::DialogflowV2::GoogleCloudDialogflowV2SuggestArticlesResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets suggested faq answers for a participant based on specific historical
        # messages.
        # @param [String] parent
        #   Required. The name of the participant to fetch suggestion for. Format: `
        #   projects//locations//conversations//participants/`.
        # @param [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2SuggestFaqAnswersRequest] google_cloud_dialogflow_v2_suggest_faq_answers_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2SuggestFaqAnswersResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2SuggestFaqAnswersResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def suggest_project_conversation_participant_suggestion_faq_answers(parent, google_cloud_dialogflow_v2_suggest_faq_answers_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v2/{+parent}/suggestions:suggestFaqAnswers', options)
          command.request_representation = Google::Apis::DialogflowV2::GoogleCloudDialogflowV2SuggestFaqAnswersRequest::Representation
          command.request_object = google_cloud_dialogflow_v2_suggest_faq_answers_request_object
          command.response_representation = Google::Apis::DialogflowV2::GoogleCloudDialogflowV2SuggestFaqAnswersResponse::Representation
          command.response_class = Google::Apis::DialogflowV2::GoogleCloudDialogflowV2SuggestFaqAnswersResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets smart replies for a participant based on specific historical messages.
        # @param [String] parent
        #   Required. The name of the participant to fetch suggestion for. Format: `
        #   projects//locations//conversations//participants/`.
        # @param [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2SuggestSmartRepliesRequest] google_cloud_dialogflow_v2_suggest_smart_replies_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2SuggestSmartRepliesResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2SuggestSmartRepliesResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def suggest_project_conversation_participant_suggestion_smart_replies(parent, google_cloud_dialogflow_v2_suggest_smart_replies_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v2/{+parent}/suggestions:suggestSmartReplies', options)
          command.request_representation = Google::Apis::DialogflowV2::GoogleCloudDialogflowV2SuggestSmartRepliesRequest::Representation
          command.request_object = google_cloud_dialogflow_v2_suggest_smart_replies_request_object
          command.response_representation = Google::Apis::DialogflowV2::GoogleCloudDialogflowV2SuggestSmartRepliesResponse::Representation
          command.response_class = Google::Apis::DialogflowV2::GoogleCloudDialogflowV2SuggestSmartRepliesResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Suggests summary for a conversation based on specific historical messages. The
        # range of the messages to be used for summary can be specified in the request.
        # @param [String] conversation
        #   Required. The conversation to fetch suggestion for. Format: `projects//
        #   locations//conversations/`.
        # @param [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2SuggestConversationSummaryRequest] google_cloud_dialogflow_v2_suggest_conversation_summary_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2SuggestConversationSummaryResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2SuggestConversationSummaryResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def suggest_project_conversation_suggestion_conversation_summary(conversation, google_cloud_dialogflow_v2_suggest_conversation_summary_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v2/{+conversation}/suggestions:suggestConversationSummary', options)
          command.request_representation = Google::Apis::DialogflowV2::GoogleCloudDialogflowV2SuggestConversationSummaryRequest::Representation
          command.request_object = google_cloud_dialogflow_v2_suggest_conversation_summary_request_object
          command.response_representation = Google::Apis::DialogflowV2::GoogleCloudDialogflowV2SuggestConversationSummaryResponse::Representation
          command.response_class = Google::Apis::DialogflowV2::GoogleCloudDialogflowV2SuggestConversationSummaryResponse
          command.params['conversation'] = conversation unless conversation.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a knowledge base.
        # @param [String] parent
        #   Required. The project to create a knowledge base for. Format: `projects//
        #   locations/`.
        # @param [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2KnowledgeBase] google_cloud_dialogflow_v2_knowledge_base_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2KnowledgeBase] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2KnowledgeBase]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_knowledge_basis(parent, google_cloud_dialogflow_v2_knowledge_base_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v2/{+parent}/knowledgeBases', options)
          command.request_representation = Google::Apis::DialogflowV2::GoogleCloudDialogflowV2KnowledgeBase::Representation
          command.request_object = google_cloud_dialogflow_v2_knowledge_base_object
          command.response_representation = Google::Apis::DialogflowV2::GoogleCloudDialogflowV2KnowledgeBase::Representation
          command.response_class = Google::Apis::DialogflowV2::GoogleCloudDialogflowV2KnowledgeBase
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes the specified knowledge base.
        # @param [String] name
        #   Required. The name of the knowledge base to delete. Format: `projects//
        #   locations//knowledgeBases/`.
        # @param [Boolean] force
        #   Optional. Force deletes the knowledge base. When set to true, any documents in
        #   the knowledge base are also deleted.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV2::GoogleProtobufEmpty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV2::GoogleProtobufEmpty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_knowledge_basis(name, force: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v2/{+name}', options)
          command.response_representation = Google::Apis::DialogflowV2::GoogleProtobufEmpty::Representation
          command.response_class = Google::Apis::DialogflowV2::GoogleProtobufEmpty
          command.params['name'] = name unless name.nil?
          command.query['force'] = force unless force.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Retrieves the specified knowledge base.
        # @param [String] name
        #   Required. The name of the knowledge base to retrieve. Format `projects//
        #   locations//knowledgeBases/`.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2KnowledgeBase] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2KnowledgeBase]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_knowledge_basis(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2/{+name}', options)
          command.response_representation = Google::Apis::DialogflowV2::GoogleCloudDialogflowV2KnowledgeBase::Representation
          command.response_class = Google::Apis::DialogflowV2::GoogleCloudDialogflowV2KnowledgeBase
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Returns the list of all knowledge bases of the specified agent.
        # @param [String] parent
        #   Required. The project to list of knowledge bases for. Format: `projects//
        #   locations/`.
        # @param [String] filter
        #   The filter expression used to filter knowledge bases returned by the list
        #   method. The expression has the following syntax: [AND ] ... The following
        #   fields and operators are supported: * display_name with has(:) operator *
        #   language_code with equals(=) operator Examples: * 'language_code=en-us'
        #   matches knowledge bases with en-us language code. * 'display_name:articles'
        #   matches knowledge bases whose display name contains "articles". * '
        #   display_name:"Best Articles"' matches knowledge bases whose display name
        #   contains "Best Articles". * 'language_code=en-gb AND display_name=articles'
        #   matches all knowledge bases whose display name contains "articles" and whose
        #   language code is "en-gb". Note: An empty filter string (i.e. "") is a no-op
        #   and will result in no filtering. For more information about filtering, see [
        #   API Filtering](https://aip.dev/160).
        # @param [Fixnum] page_size
        #   The maximum number of items to return in a single page. By default 10 and at
        #   most 100.
        # @param [String] page_token
        #   The next_page_token value returned from a previous list request.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2ListKnowledgeBasesResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2ListKnowledgeBasesResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_knowledge_bases(parent, filter: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2/{+parent}/knowledgeBases', options)
          command.response_representation = Google::Apis::DialogflowV2::GoogleCloudDialogflowV2ListKnowledgeBasesResponse::Representation
          command.response_class = Google::Apis::DialogflowV2::GoogleCloudDialogflowV2ListKnowledgeBasesResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates the specified knowledge base.
        # @param [String] name
        #   The knowledge base resource name. The name must be empty when creating a
        #   knowledge base. Format: `projects//locations//knowledgeBases/`.
        # @param [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2KnowledgeBase] google_cloud_dialogflow_v2_knowledge_base_object
        # @param [String] update_mask
        #   Optional. Not specified means `update all`. Currently, only `display_name` can
        #   be updated, an InvalidArgument will be returned for attempting to update other
        #   fields.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2KnowledgeBase] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2KnowledgeBase]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_project_knowledge_basis(name, google_cloud_dialogflow_v2_knowledge_base_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v2/{+name}', options)
          command.request_representation = Google::Apis::DialogflowV2::GoogleCloudDialogflowV2KnowledgeBase::Representation
          command.request_object = google_cloud_dialogflow_v2_knowledge_base_object
          command.response_representation = Google::Apis::DialogflowV2::GoogleCloudDialogflowV2KnowledgeBase::Representation
          command.response_class = Google::Apis::DialogflowV2::GoogleCloudDialogflowV2KnowledgeBase
          command.params['name'] = name unless name.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a new document. This method is a [long-running operation](https://
        # cloud.google.com/dialogflow/cx/docs/how/long-running-operation). The returned `
        # Operation` type has the following method-specific fields: - `metadata`:
        # KnowledgeOperationMetadata - `response`: Document
        # @param [String] parent
        #   Required. The knowledge base to create a document for. Format: `projects//
        #   locations//knowledgeBases/`.
        # @param [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2Document] google_cloud_dialogflow_v2_document_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV2::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV2::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_knowledge_basis_document(parent, google_cloud_dialogflow_v2_document_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v2/{+parent}/documents', options)
          command.request_representation = Google::Apis::DialogflowV2::GoogleCloudDialogflowV2Document::Representation
          command.request_object = google_cloud_dialogflow_v2_document_object
          command.response_representation = Google::Apis::DialogflowV2::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::DialogflowV2::GoogleLongrunningOperation
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes the specified document. This method is a [long-running operation](
        # https://cloud.google.com/dialogflow/cx/docs/how/long-running-operation). The
        # returned `Operation` type has the following method-specific fields: - `
        # metadata`: KnowledgeOperationMetadata - `response`: An [Empty message](https://
        # developers.google.com/protocol-buffers/docs/reference/google.protobuf#empty)
        # @param [String] name
        #   Required. The name of the document to delete. Format: `projects//locations//
        #   knowledgeBases//documents/`.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV2::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV2::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_knowledge_basis_document(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v2/{+name}', options)
          command.response_representation = Google::Apis::DialogflowV2::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::DialogflowV2::GoogleLongrunningOperation
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Exports a smart messaging candidate document into the specified destination.
        # This method is a [long-running operation](https://cloud.google.com/dialogflow/
        # cx/docs/how/long-running-operation). The returned `Operation` type has the
        # following method-specific fields: - `metadata`: KnowledgeOperationMetadata - `
        # response`: Document
        # @param [String] name
        #   Required. The name of the document to export. Format: `projects//locations//
        #   knowledgeBases//documents/`.
        # @param [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2ExportDocumentRequest] google_cloud_dialogflow_v2_export_document_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV2::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV2::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def export_project_knowledge_basis_document(name, google_cloud_dialogflow_v2_export_document_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v2/{+name}:export', options)
          command.request_representation = Google::Apis::DialogflowV2::GoogleCloudDialogflowV2ExportDocumentRequest::Representation
          command.request_object = google_cloud_dialogflow_v2_export_document_request_object
          command.response_representation = Google::Apis::DialogflowV2::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::DialogflowV2::GoogleLongrunningOperation
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Retrieves the specified document.
        # @param [String] name
        #   Required. The name of the document to retrieve. Format `projects//locations//
        #   knowledgeBases//documents/`.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2Document] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2Document]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_knowledge_basis_document(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2/{+name}', options)
          command.response_representation = Google::Apis::DialogflowV2::GoogleCloudDialogflowV2Document::Representation
          command.response_class = Google::Apis::DialogflowV2::GoogleCloudDialogflowV2Document
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates documents by importing data from external sources. Dialogflow supports
        # up to 350 documents in each request. If you try to import more, Dialogflow
        # will return an error. This method is a [long-running operation](https://cloud.
        # google.com/dialogflow/cx/docs/how/long-running-operation). The returned `
        # Operation` type has the following method-specific fields: - `metadata`:
        # KnowledgeOperationMetadata - `response`: ImportDocumentsResponse
        # @param [String] parent
        #   Required. The knowledge base to import documents into. Format: `projects//
        #   locations//knowledgeBases/`.
        # @param [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2ImportDocumentsRequest] google_cloud_dialogflow_v2_import_documents_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV2::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV2::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def import_project_knowledge_basis_document(parent, google_cloud_dialogflow_v2_import_documents_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v2/{+parent}/documents:import', options)
          command.request_representation = Google::Apis::DialogflowV2::GoogleCloudDialogflowV2ImportDocumentsRequest::Representation
          command.request_object = google_cloud_dialogflow_v2_import_documents_request_object
          command.response_representation = Google::Apis::DialogflowV2::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::DialogflowV2::GoogleLongrunningOperation
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Returns the list of all documents of the knowledge base.
        # @param [String] parent
        #   Required. The knowledge base to list all documents for. Format: `projects//
        #   locations//knowledgeBases/`.
        # @param [String] filter
        #   The filter expression used to filter documents returned by the list method.
        #   The expression has the following syntax: [AND ] ... The following fields and
        #   operators are supported: * knowledge_types with has(:) operator * display_name
        #   with has(:) operator * state with equals(=) operator Examples: * "
        #   knowledge_types:FAQ" matches documents with FAQ knowledge type. * "
        #   display_name:customer" matches documents whose display name contains "customer"
        #   . * "state=ACTIVE" matches documents with ACTIVE state. * "knowledge_types:FAQ
        #   AND state=ACTIVE" matches all active FAQ documents. For more information about
        #   filtering, see [API Filtering](https://aip.dev/160).
        # @param [Fixnum] page_size
        #   The maximum number of items to return in a single page. By default 10 and at
        #   most 100.
        # @param [String] page_token
        #   The next_page_token value returned from a previous list request.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2ListDocumentsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2ListDocumentsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_knowledge_basis_documents(parent, filter: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2/{+parent}/documents', options)
          command.response_representation = Google::Apis::DialogflowV2::GoogleCloudDialogflowV2ListDocumentsResponse::Representation
          command.response_class = Google::Apis::DialogflowV2::GoogleCloudDialogflowV2ListDocumentsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates the specified document. This method is a [long-running operation](
        # https://cloud.google.com/dialogflow/cx/docs/how/long-running-operation). The
        # returned `Operation` type has the following method-specific fields: - `
        # metadata`: KnowledgeOperationMetadata - `response`: Document
        # @param [String] name
        #   Optional. The document resource name. The name must be empty when creating a
        #   document. Format: `projects//locations//knowledgeBases//documents/`.
        # @param [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2Document] google_cloud_dialogflow_v2_document_object
        # @param [String] update_mask
        #   Optional. Not specified means `update all`. Currently, only `display_name` can
        #   be updated, an InvalidArgument will be returned for attempting to update other
        #   fields.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV2::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV2::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_project_knowledge_basis_document(name, google_cloud_dialogflow_v2_document_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v2/{+name}', options)
          command.request_representation = Google::Apis::DialogflowV2::GoogleCloudDialogflowV2Document::Representation
          command.request_object = google_cloud_dialogflow_v2_document_object
          command.response_representation = Google::Apis::DialogflowV2::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::DialogflowV2::GoogleLongrunningOperation
          command.params['name'] = name unless name.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Reloads the specified document from its specified source, content_uri or
        # content. The previously loaded content of the document will be deleted. Note:
        # Even when the content of the document has not changed, there still may be side
        # effects because of internal implementation changes. This method is a [long-
        # running operation](https://cloud.google.com/dialogflow/cx/docs/how/long-
        # running-operation). The returned `Operation` type has the following method-
        # specific fields: - `metadata`: KnowledgeOperationMetadata - `response`:
        # Document Note: The `projects.agent.knowledgeBases.documents` resource is
        # deprecated; only use `projects.knowledgeBases.documents`.
        # @param [String] name
        #   Required. The name of the document to reload. Format: `projects//locations//
        #   knowledgeBases//documents/`
        # @param [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2ReloadDocumentRequest] google_cloud_dialogflow_v2_reload_document_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV2::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV2::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def reload_project_knowledge_basis_document(name, google_cloud_dialogflow_v2_reload_document_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v2/{+name}:reload', options)
          command.request_representation = Google::Apis::DialogflowV2::GoogleCloudDialogflowV2ReloadDocumentRequest::Representation
          command.request_object = google_cloud_dialogflow_v2_reload_document_request_object
          command.response_representation = Google::Apis::DialogflowV2::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::DialogflowV2::GoogleLongrunningOperation
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes the specified agent.
        # @param [String] parent
        #   Required. The project that the agent to delete is associated with. Format: `
        #   projects/`.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV2::GoogleProtobufEmpty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV2::GoogleProtobufEmpty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_location_agent(parent, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v2/{+parent}/agent', options)
          command.response_representation = Google::Apis::DialogflowV2::GoogleProtobufEmpty::Representation
          command.response_class = Google::Apis::DialogflowV2::GoogleProtobufEmpty
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets information about a location.
        # @param [String] name
        #   Resource name for the location.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV2::GoogleCloudLocationLocation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV2::GoogleCloudLocationLocation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2/{+name}', options)
          command.response_representation = Google::Apis::DialogflowV2::GoogleCloudLocationLocation::Representation
          command.response_class = Google::Apis::DialogflowV2::GoogleCloudLocationLocation
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Retrieves the specified agent.
        # @param [String] parent
        #   Required. The project that the agent to fetch is associated with. Format: `
        #   projects/`.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2Agent] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2Agent]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_agent(parent, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2/{+parent}/agent', options)
          command.response_representation = Google::Apis::DialogflowV2::GoogleCloudDialogflowV2Agent::Representation
          command.response_class = Google::Apis::DialogflowV2::GoogleCloudDialogflowV2Agent
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists information about the supported locations for this service.
        # @param [String] name
        #   The resource that owns the locations collection, if applicable.
        # @param [String] filter
        #   A filter to narrow down results to a preferred subset. The filtering language
        #   accepts strings like `"displayName=tokyo"`, and is documented in more detail
        #   in [AIP-160](https://google.aip.dev/160).
        # @param [Fixnum] page_size
        #   The maximum number of results to return. If not set, the service selects a
        #   default.
        # @param [String] page_token
        #   A page token received from the `next_page_token` field in the response. Send
        #   that page token to receive the subsequent page.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV2::GoogleCloudLocationListLocationsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV2::GoogleCloudLocationListLocationsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_locations(name, filter: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2/{+name}/locations', options)
          command.response_representation = Google::Apis::DialogflowV2::GoogleCloudLocationListLocationsResponse::Representation
          command.response_class = Google::Apis::DialogflowV2::GoogleCloudLocationListLocationsResponse
          command.params['name'] = name unless name.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates/updates the specified agent. Note: You should always train an agent
        # prior to sending it queries. See the [training documentation](https://cloud.
        # google.com/dialogflow/es/docs/training).
        # @param [String] parent
        #   Required. The project of this agent. Format: `projects/`.
        # @param [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2Agent] google_cloud_dialogflow_v2_agent_object
        # @param [String] update_mask
        #   Optional. The mask to control which fields get updated.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2Agent] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2Agent]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def set_project_location_agent(parent, google_cloud_dialogflow_v2_agent_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v2/{+parent}/agent', options)
          command.request_representation = Google::Apis::DialogflowV2::GoogleCloudDialogflowV2Agent::Representation
          command.request_object = google_cloud_dialogflow_v2_agent_object
          command.response_representation = Google::Apis::DialogflowV2::GoogleCloudDialogflowV2Agent::Representation
          command.response_class = Google::Apis::DialogflowV2::GoogleCloudDialogflowV2Agent
          command.params['parent'] = parent unless parent.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Exports the specified agent to a ZIP file. This method is a [long-running
        # operation](https://cloud.google.com/dialogflow/es/docs/how/long-running-
        # operations). The returned `Operation` type has the following method-specific
        # fields: - `metadata`: An empty [Struct message](https://developers.google.com/
        # protocol-buffers/docs/reference/google.protobuf#struct) - `response`:
        # ExportAgentResponse
        # @param [String] parent
        #   Required. The project that the agent to export is associated with. Format: `
        #   projects/`.
        # @param [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2ExportAgentRequest] google_cloud_dialogflow_v2_export_agent_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV2::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV2::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def export_project_location_agent(parent, google_cloud_dialogflow_v2_export_agent_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v2/{+parent}/agent:export', options)
          command.request_representation = Google::Apis::DialogflowV2::GoogleCloudDialogflowV2ExportAgentRequest::Representation
          command.request_object = google_cloud_dialogflow_v2_export_agent_request_object
          command.response_representation = Google::Apis::DialogflowV2::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::DialogflowV2::GoogleLongrunningOperation
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Retrieves the fulfillment.
        # @param [String] name
        #   Required. The name of the fulfillment. Format: `projects//agent/fulfillment`.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2Fulfillment] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2Fulfillment]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_agent_fulfillment(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2/{+name}', options)
          command.response_representation = Google::Apis::DialogflowV2::GoogleCloudDialogflowV2Fulfillment::Representation
          command.response_class = Google::Apis::DialogflowV2::GoogleCloudDialogflowV2Fulfillment
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets agent validation result. Agent validation is performed during training
        # time and is updated automatically when training is completed.
        # @param [String] parent
        #   Required. The project that the agent is associated with. Format: `projects/`.
        # @param [String] language_code
        #   Optional. The language for which you want a validation result. If not
        #   specified, the agent's default language is used. [Many languages](https://
        #   cloud.google.com/dialogflow/docs/reference/language) are supported. Note:
        #   languages must be enabled in the agent before they can be used.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2ValidationResult] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2ValidationResult]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_agent_validation_result(parent, language_code: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2/{+parent}/agent/validationResult', options)
          command.response_representation = Google::Apis::DialogflowV2::GoogleCloudDialogflowV2ValidationResult::Representation
          command.response_class = Google::Apis::DialogflowV2::GoogleCloudDialogflowV2ValidationResult
          command.params['parent'] = parent unless parent.nil?
          command.query['languageCode'] = language_code unless language_code.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Imports the specified agent from a ZIP file. Uploads new intents and entity
        # types without deleting the existing ones. Intents and entity types with the
        # same name are replaced with the new versions from ImportAgentRequest. After
        # the import, the imported draft agent will be trained automatically (unless
        # disabled in agent settings). However, once the import is done, training may
        # not be completed yet. Please call TrainAgent and wait for the operation it
        # returns in order to train explicitly. This method is a [long-running operation]
        # (https://cloud.google.com/dialogflow/es/docs/how/long-running-operations). The
        # returned `Operation` type has the following method-specific fields: - `
        # metadata`: An empty [Struct message](https://developers.google.com/protocol-
        # buffers/docs/reference/google.protobuf#struct) - `response`: An [Empty message]
        # (https://developers.google.com/protocol-buffers/docs/reference/google.protobuf#
        # empty) The operation only tracks when importing is complete, not when it is
        # done training. Note: You should always train an agent prior to sending it
        # queries. See the [training documentation](https://cloud.google.com/dialogflow/
        # es/docs/training).
        # @param [String] parent
        #   Required. The project that the agent to import is associated with. Format: `
        #   projects/`.
        # @param [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2ImportAgentRequest] google_cloud_dialogflow_v2_import_agent_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV2::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV2::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def import_project_location_agent(parent, google_cloud_dialogflow_v2_import_agent_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v2/{+parent}/agent:import', options)
          command.request_representation = Google::Apis::DialogflowV2::GoogleCloudDialogflowV2ImportAgentRequest::Representation
          command.request_object = google_cloud_dialogflow_v2_import_agent_request_object
          command.response_representation = Google::Apis::DialogflowV2::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::DialogflowV2::GoogleLongrunningOperation
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Restores the specified agent from a ZIP file. Replaces the current agent
        # version with a new one. All the intents and entity types in the older version
        # are deleted. After the restore, the restored draft agent will be trained
        # automatically (unless disabled in agent settings). However, once the restore
        # is done, training may not be completed yet. Please call TrainAgent and wait
        # for the operation it returns in order to train explicitly. This method is a [
        # long-running operation](https://cloud.google.com/dialogflow/es/docs/how/long-
        # running-operations). The returned `Operation` type has the following method-
        # specific fields: - `metadata`: An empty [Struct message](https://developers.
        # google.com/protocol-buffers/docs/reference/google.protobuf#struct) - `response`
        # : An [Empty message](https://developers.google.com/protocol-buffers/docs/
        # reference/google.protobuf#empty) The operation only tracks when restoring is
        # complete, not when it is done training. Note: You should always train an agent
        # prior to sending it queries. See the [training documentation](https://cloud.
        # google.com/dialogflow/es/docs/training).
        # @param [String] parent
        #   Required. The project that the agent to restore is associated with. Format: `
        #   projects/`.
        # @param [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2RestoreAgentRequest] google_cloud_dialogflow_v2_restore_agent_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV2::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV2::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def restore_project_location_agent(parent, google_cloud_dialogflow_v2_restore_agent_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v2/{+parent}/agent:restore', options)
          command.request_representation = Google::Apis::DialogflowV2::GoogleCloudDialogflowV2RestoreAgentRequest::Representation
          command.request_object = google_cloud_dialogflow_v2_restore_agent_request_object
          command.response_representation = Google::Apis::DialogflowV2::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::DialogflowV2::GoogleLongrunningOperation
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Returns the list of agents. Since there is at most one conversational agent
        # per project, this method is useful primarily for listing all agents across
        # projects the caller has access to. One can achieve that with a wildcard
        # project collection id "-". Refer to [List Sub-Collections](https://cloud.
        # google.com/apis/design/design_patterns#list_sub-collections).
        # @param [String] parent
        #   Required. The project to list agents from. Format: `projects/`.
        # @param [Fixnum] page_size
        #   Optional. The maximum number of items to return in a single page. By default
        #   100 and at most 1000.
        # @param [String] page_token
        #   The next_page_token value returned from a previous list request.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2SearchAgentsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2SearchAgentsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def search_project_location_agents(parent, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2/{+parent}/agent:search', options)
          command.response_representation = Google::Apis::DialogflowV2::GoogleCloudDialogflowV2SearchAgentsResponse::Representation
          command.response_class = Google::Apis::DialogflowV2::GoogleCloudDialogflowV2SearchAgentsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Trains the specified agent. This method is a [long-running operation](https://
        # cloud.google.com/dialogflow/es/docs/how/long-running-operations). The returned
        # `Operation` type has the following method-specific fields: - `metadata`: An
        # empty [Struct message](https://developers.google.com/protocol-buffers/docs/
        # reference/google.protobuf#struct) - `response`: An [Empty message](https://
        # developers.google.com/protocol-buffers/docs/reference/google.protobuf#empty)
        # Note: You should always train an agent prior to sending it queries. See the [
        # training documentation](https://cloud.google.com/dialogflow/es/docs/training).
        # @param [String] parent
        #   Required. The project that the agent to train is associated with. Format: `
        #   projects/`.
        # @param [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2TrainAgentRequest] google_cloud_dialogflow_v2_train_agent_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV2::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV2::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def train_project_location_agent(parent, google_cloud_dialogflow_v2_train_agent_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v2/{+parent}/agent:train', options)
          command.request_representation = Google::Apis::DialogflowV2::GoogleCloudDialogflowV2TrainAgentRequest::Representation
          command.request_object = google_cloud_dialogflow_v2_train_agent_request_object
          command.response_representation = Google::Apis::DialogflowV2::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::DialogflowV2::GoogleLongrunningOperation
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates the fulfillment.
        # @param [String] name
        #   Required. The unique identifier of the fulfillment. Supported formats: - `
        #   projects//agent/fulfillment` - `projects//locations//agent/fulfillment` This
        #   field is not used for Fulfillment in an Environment.
        # @param [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2Fulfillment] google_cloud_dialogflow_v2_fulfillment_object
        # @param [String] update_mask
        #   Required. The mask to control which fields get updated. If the mask is not
        #   present, all fields will be updated.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2Fulfillment] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2Fulfillment]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def update_project_location_agent_fulfillment(name, google_cloud_dialogflow_v2_fulfillment_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v2/{+name}', options)
          command.request_representation = Google::Apis::DialogflowV2::GoogleCloudDialogflowV2Fulfillment::Representation
          command.request_object = google_cloud_dialogflow_v2_fulfillment_object
          command.response_representation = Google::Apis::DialogflowV2::GoogleCloudDialogflowV2Fulfillment::Representation
          command.response_class = Google::Apis::DialogflowV2::GoogleCloudDialogflowV2Fulfillment
          command.params['name'] = name unless name.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes entity types in the specified agent. This method is a [long-running
        # operation](https://cloud.google.com/dialogflow/es/docs/how/long-running-
        # operations). The returned `Operation` type has the following method-specific
        # fields: - `metadata`: An empty [Struct message](https://developers.google.com/
        # protocol-buffers/docs/reference/google.protobuf#struct) - `response`: An [
        # Empty message](https://developers.google.com/protocol-buffers/docs/reference/
        # google.protobuf#empty) Note: You should always train an agent prior to sending
        # it queries. See the [training documentation](https://cloud.google.com/
        # dialogflow/es/docs/training).
        # @param [String] parent
        #   Required. The name of the agent to delete all entities types for. Format: `
        #   projects//agent`.
        # @param [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2BatchDeleteEntityTypesRequest] google_cloud_dialogflow_v2_batch_delete_entity_types_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV2::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV2::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def batch_project_location_agent_entity_type_delete(parent, google_cloud_dialogflow_v2_batch_delete_entity_types_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v2/{+parent}/entityTypes:batchDelete', options)
          command.request_representation = Google::Apis::DialogflowV2::GoogleCloudDialogflowV2BatchDeleteEntityTypesRequest::Representation
          command.request_object = google_cloud_dialogflow_v2_batch_delete_entity_types_request_object
          command.response_representation = Google::Apis::DialogflowV2::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::DialogflowV2::GoogleLongrunningOperation
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates/Creates multiple entity types in the specified agent. This method is a
        # [long-running operation](https://cloud.google.com/dialogflow/es/docs/how/long-
        # running-operations). The returned `Operation` type has the following method-
        # specific fields: - `metadata`: An empty [Struct message](https://developers.
        # google.com/protocol-buffers/docs/reference/google.protobuf#struct) - `response`
        # : BatchUpdateEntityTypesResponse Note: You should always train an agent prior
        # to sending it queries. See the [training documentation](https://cloud.google.
        # com/dialogflow/es/docs/training).
        # @param [String] parent
        #   Required. The name of the agent to update or create entity types in. Format: `
        #   projects//agent`.
        # @param [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2BatchUpdateEntityTypesRequest] google_cloud_dialogflow_v2_batch_update_entity_types_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV2::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV2::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def batch_project_location_agent_entity_type_update(parent, google_cloud_dialogflow_v2_batch_update_entity_types_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v2/{+parent}/entityTypes:batchUpdate', options)
          command.request_representation = Google::Apis::DialogflowV2::GoogleCloudDialogflowV2BatchUpdateEntityTypesRequest::Representation
          command.request_object = google_cloud_dialogflow_v2_batch_update_entity_types_request_object
          command.response_representation = Google::Apis::DialogflowV2::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::DialogflowV2::GoogleLongrunningOperation
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates an entity type in the specified agent. Note: You should always train
        # an agent prior to sending it queries. See the [training documentation](https://
        # cloud.google.com/dialogflow/es/docs/training).
        # @param [String] parent
        #   Required. The agent to create a entity type for. Format: `projects//agent`.
        # @param [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2EntityType] google_cloud_dialogflow_v2_entity_type_object
        # @param [String] language_code
        #   Optional. The language used to access language-specific data. If not specified,
        #   the agent's default language is used. For more information, see [Multilingual
        #   intent and entity data](https://cloud.google.com/dialogflow/docs/agents-
        #   multilingual#intent-entity).
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2EntityType] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2EntityType]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_location_agent_entity_type(parent, google_cloud_dialogflow_v2_entity_type_object = nil, language_code: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v2/{+parent}/entityTypes', options)
          command.request_representation = Google::Apis::DialogflowV2::GoogleCloudDialogflowV2EntityType::Representation
          command.request_object = google_cloud_dialogflow_v2_entity_type_object
          command.response_representation = Google::Apis::DialogflowV2::GoogleCloudDialogflowV2EntityType::Representation
          command.response_class = Google::Apis::DialogflowV2::GoogleCloudDialogflowV2EntityType
          command.params['parent'] = parent unless parent.nil?
          command.query['languageCode'] = language_code unless language_code.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes the specified entity type. Note: You should always train an agent
        # prior to sending it queries. See the [training documentation](https://cloud.
        # google.com/dialogflow/es/docs/training).
        # @param [String] name
        #   Required. The name of the entity type to delete. Format: `projects//agent/
        #   entityTypes/`.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV2::GoogleProtobufEmpty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV2::GoogleProtobufEmpty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_location_agent_entity_type(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v2/{+name}', options)
          command.response_representation = Google::Apis::DialogflowV2::GoogleProtobufEmpty::Representation
          command.response_class = Google::Apis::DialogflowV2::GoogleProtobufEmpty
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Retrieves the specified entity type.
        # @param [String] name
        #   Required. The name of the entity type. Format: `projects//agent/entityTypes/`.
        # @param [String] language_code
        #   Optional. The language used to access language-specific data. If not specified,
        #   the agent's default language is used. For more information, see [Multilingual
        #   intent and entity data](https://cloud.google.com/dialogflow/docs/agents-
        #   multilingual#intent-entity).
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2EntityType] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2EntityType]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_agent_entity_type(name, language_code: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2/{+name}', options)
          command.response_representation = Google::Apis::DialogflowV2::GoogleCloudDialogflowV2EntityType::Representation
          command.response_class = Google::Apis::DialogflowV2::GoogleCloudDialogflowV2EntityType
          command.params['name'] = name unless name.nil?
          command.query['languageCode'] = language_code unless language_code.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Returns the list of all entity types in the specified agent.
        # @param [String] parent
        #   Required. The agent to list all entity types from. Format: `projects//agent`.
        # @param [String] language_code
        #   Optional. The language used to access language-specific data. If not specified,
        #   the agent's default language is used. For more information, see [Multilingual
        #   intent and entity data](https://cloud.google.com/dialogflow/docs/agents-
        #   multilingual#intent-entity).
        # @param [Fixnum] page_size
        #   Optional. The maximum number of items to return in a single page. By default
        #   100 and at most 1000.
        # @param [String] page_token
        #   Optional. The next_page_token value returned from a previous list request.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2ListEntityTypesResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2ListEntityTypesResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_agent_entity_types(parent, language_code: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2/{+parent}/entityTypes', options)
          command.response_representation = Google::Apis::DialogflowV2::GoogleCloudDialogflowV2ListEntityTypesResponse::Representation
          command.response_class = Google::Apis::DialogflowV2::GoogleCloudDialogflowV2ListEntityTypesResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['languageCode'] = language_code unless language_code.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates the specified entity type. Note: You should always train an agent
        # prior to sending it queries. See the [training documentation](https://cloud.
        # google.com/dialogflow/es/docs/training).
        # @param [String] name
        #   The unique identifier of the entity type. Required for EntityTypes.
        #   UpdateEntityType and EntityTypes.BatchUpdateEntityTypes methods. Format: `
        #   projects//agent/entityTypes/`.
        # @param [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2EntityType] google_cloud_dialogflow_v2_entity_type_object
        # @param [String] language_code
        #   Optional. The language used to access language-specific data. If not specified,
        #   the agent's default language is used. For more information, see [Multilingual
        #   intent and entity data](https://cloud.google.com/dialogflow/docs/agents-
        #   multilingual#intent-entity).
        # @param [String] update_mask
        #   Optional. The mask to control which fields get updated.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2EntityType] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2EntityType]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_project_location_agent_entity_type(name, google_cloud_dialogflow_v2_entity_type_object = nil, language_code: nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v2/{+name}', options)
          command.request_representation = Google::Apis::DialogflowV2::GoogleCloudDialogflowV2EntityType::Representation
          command.request_object = google_cloud_dialogflow_v2_entity_type_object
          command.response_representation = Google::Apis::DialogflowV2::GoogleCloudDialogflowV2EntityType::Representation
          command.response_class = Google::Apis::DialogflowV2::GoogleCloudDialogflowV2EntityType
          command.params['name'] = name unless name.nil?
          command.query['languageCode'] = language_code unless language_code.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates multiple new entities in the specified entity type. This method is a [
        # long-running operation](https://cloud.google.com/dialogflow/es/docs/how/long-
        # running-operations). The returned `Operation` type has the following method-
        # specific fields: - `metadata`: An empty [Struct message](https://developers.
        # google.com/protocol-buffers/docs/reference/google.protobuf#struct) - `response`
        # : An [Empty message](https://developers.google.com/protocol-buffers/docs/
        # reference/google.protobuf#empty) Note: You should always train an agent prior
        # to sending it queries. See the [training documentation](https://cloud.google.
        # com/dialogflow/es/docs/training).
        # @param [String] parent
        #   Required. The name of the entity type to create entities in. Format: `projects/
        #   /agent/entityTypes/`.
        # @param [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2BatchCreateEntitiesRequest] google_cloud_dialogflow_v2_batch_create_entities_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV2::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV2::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def batch_project_location_agent_entity_type_entity_create(parent, google_cloud_dialogflow_v2_batch_create_entities_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v2/{+parent}/entities:batchCreate', options)
          command.request_representation = Google::Apis::DialogflowV2::GoogleCloudDialogflowV2BatchCreateEntitiesRequest::Representation
          command.request_object = google_cloud_dialogflow_v2_batch_create_entities_request_object
          command.response_representation = Google::Apis::DialogflowV2::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::DialogflowV2::GoogleLongrunningOperation
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes entities in the specified entity type. This method is a [long-running
        # operation](https://cloud.google.com/dialogflow/es/docs/how/long-running-
        # operations). The returned `Operation` type has the following method-specific
        # fields: - `metadata`: An empty [Struct message](https://developers.google.com/
        # protocol-buffers/docs/reference/google.protobuf#struct) - `response`: An [
        # Empty message](https://developers.google.com/protocol-buffers/docs/reference/
        # google.protobuf#empty) Note: You should always train an agent prior to sending
        # it queries. See the [training documentation](https://cloud.google.com/
        # dialogflow/es/docs/training).
        # @param [String] parent
        #   Required. The name of the entity type to delete entries for. Format: `projects/
        #   /agent/entityTypes/`.
        # @param [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2BatchDeleteEntitiesRequest] google_cloud_dialogflow_v2_batch_delete_entities_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV2::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV2::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def batch_project_location_agent_entity_type_entity_delete(parent, google_cloud_dialogflow_v2_batch_delete_entities_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v2/{+parent}/entities:batchDelete', options)
          command.request_representation = Google::Apis::DialogflowV2::GoogleCloudDialogflowV2BatchDeleteEntitiesRequest::Representation
          command.request_object = google_cloud_dialogflow_v2_batch_delete_entities_request_object
          command.response_representation = Google::Apis::DialogflowV2::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::DialogflowV2::GoogleLongrunningOperation
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates or creates multiple entities in the specified entity type. This method
        # does not affect entities in the entity type that aren't explicitly specified
        # in the request. This method is a [long-running operation](https://cloud.google.
        # com/dialogflow/es/docs/how/long-running-operations). The returned `Operation`
        # type has the following method-specific fields: - `metadata`: An empty [Struct
        # message](https://developers.google.com/protocol-buffers/docs/reference/google.
        # protobuf#struct) - `response`: An [Empty message](https://developers.google.
        # com/protocol-buffers/docs/reference/google.protobuf#empty) Note: You should
        # always train an agent prior to sending it queries. See the [training
        # documentation](https://cloud.google.com/dialogflow/es/docs/training).
        # @param [String] parent
        #   Required. The name of the entity type to update or create entities in. Format:
        #   `projects//agent/entityTypes/`.
        # @param [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2BatchUpdateEntitiesRequest] google_cloud_dialogflow_v2_batch_update_entities_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV2::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV2::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def batch_project_location_agent_entity_type_entity_update(parent, google_cloud_dialogflow_v2_batch_update_entities_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v2/{+parent}/entities:batchUpdate', options)
          command.request_representation = Google::Apis::DialogflowV2::GoogleCloudDialogflowV2BatchUpdateEntitiesRequest::Representation
          command.request_object = google_cloud_dialogflow_v2_batch_update_entities_request_object
          command.response_representation = Google::Apis::DialogflowV2::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::DialogflowV2::GoogleLongrunningOperation
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates an agent environment.
        # @param [String] parent
        #   Required. The agent to create an environment for. Supported formats: - `
        #   projects//agent` - `projects//locations//agent`
        # @param [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2Environment] google_cloud_dialogflow_v2_environment_object
        # @param [String] environment_id
        #   Required. The unique id of the new environment.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2Environment] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2Environment]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_location_agent_environment(parent, google_cloud_dialogflow_v2_environment_object = nil, environment_id: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v2/{+parent}/environments', options)
          command.request_representation = Google::Apis::DialogflowV2::GoogleCloudDialogflowV2Environment::Representation
          command.request_object = google_cloud_dialogflow_v2_environment_object
          command.response_representation = Google::Apis::DialogflowV2::GoogleCloudDialogflowV2Environment::Representation
          command.response_class = Google::Apis::DialogflowV2::GoogleCloudDialogflowV2Environment
          command.params['parent'] = parent unless parent.nil?
          command.query['environmentId'] = environment_id unless environment_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes the specified agent environment.
        # @param [String] name
        #   Required. The name of the environment to delete. / Format: - `projects//agent/
        #   environments/` - `projects//locations//agent/environments/` The environment ID
        #   for the default environment is `-`.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV2::GoogleProtobufEmpty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV2::GoogleProtobufEmpty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_location_agent_environment(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v2/{+name}', options)
          command.response_representation = Google::Apis::DialogflowV2::GoogleProtobufEmpty::Representation
          command.response_class = Google::Apis::DialogflowV2::GoogleProtobufEmpty
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Retrieves the specified agent environment.
        # @param [String] name
        #   Required. The name of the environment. Supported formats: - `projects//agent/
        #   environments/` - `projects//locations//agent/environments/` The environment ID
        #   for the default environment is `-`.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2Environment] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2Environment]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_agent_environment(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2/{+name}', options)
          command.response_representation = Google::Apis::DialogflowV2::GoogleCloudDialogflowV2Environment::Representation
          command.response_class = Google::Apis::DialogflowV2::GoogleCloudDialogflowV2Environment
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets the history of the specified environment.
        # @param [String] parent
        #   Required. The name of the environment to retrieve history for. Supported
        #   formats: - `projects//agent/environments/` - `projects//locations//agent/
        #   environments/` The environment ID for the default environment is `-`.
        # @param [Fixnum] page_size
        #   Optional. The maximum number of items to return in a single page. By default
        #   100 and at most 1000.
        # @param [String] page_token
        #   Optional. The next_page_token value returned from a previous list request.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2EnvironmentHistory] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2EnvironmentHistory]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_agent_environment_history(parent, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2/{+parent}/history', options)
          command.response_representation = Google::Apis::DialogflowV2::GoogleCloudDialogflowV2EnvironmentHistory::Representation
          command.response_class = Google::Apis::DialogflowV2::GoogleCloudDialogflowV2EnvironmentHistory
          command.params['parent'] = parent unless parent.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Returns the list of all non-default environments of the specified agent.
        # @param [String] parent
        #   Required. The agent to list all environments from. Format: - `projects//agent`
        #   - `projects//locations//agent`
        # @param [Fixnum] page_size
        #   Optional. The maximum number of items to return in a single page. By default
        #   100 and at most 1000.
        # @param [String] page_token
        #   Optional. The next_page_token value returned from a previous list request.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2ListEnvironmentsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2ListEnvironmentsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_agent_environments(parent, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2/{+parent}/environments', options)
          command.response_representation = Google::Apis::DialogflowV2::GoogleCloudDialogflowV2ListEnvironmentsResponse::Representation
          command.response_class = Google::Apis::DialogflowV2::GoogleCloudDialogflowV2ListEnvironmentsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates the specified agent environment. This method allows you to deploy new
        # agent versions into the environment. When an environment is pointed to a new
        # agent version by setting `environment.agent_version`, the environment is
        # temporarily set to the `LOADING` state. During that time, the environment
        # continues serving the previous version of the agent. After the new agent
        # version is done loading, the environment is set back to the `RUNNING` state.
        # You can use "-" as Environment ID in environment name to update an agent
        # version in the default environment. WARNING: this will negate all recent
        # changes to the draft agent and can't be undone. You may want to save the draft
        # agent to a version before calling this method.
        # @param [String] name
        #   Output only. The unique identifier of this agent environment. Supported
        #   formats: - `projects//agent/environments/` - `projects//locations//agent/
        #   environments/` The environment ID for the default environment is `-`.
        # @param [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2Environment] google_cloud_dialogflow_v2_environment_object
        # @param [Boolean] allow_load_to_draft_and_discard_changes
        #   Optional. This field is used to prevent accidental overwrite of the default
        #   environment, which is an operation that cannot be undone. To confirm that the
        #   caller desires this overwrite, this field must be explicitly set to true when
        #   updating the default environment (environment ID = `-`).
        # @param [String] update_mask
        #   Required. The mask to control which fields get updated.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2Environment] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2Environment]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_project_location_agent_environment(name, google_cloud_dialogflow_v2_environment_object = nil, allow_load_to_draft_and_discard_changes: nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v2/{+name}', options)
          command.request_representation = Google::Apis::DialogflowV2::GoogleCloudDialogflowV2Environment::Representation
          command.request_object = google_cloud_dialogflow_v2_environment_object
          command.response_representation = Google::Apis::DialogflowV2::GoogleCloudDialogflowV2Environment::Representation
          command.response_class = Google::Apis::DialogflowV2::GoogleCloudDialogflowV2Environment
          command.params['name'] = name unless name.nil?
          command.query['allowLoadToDraftAndDiscardChanges'] = allow_load_to_draft_and_discard_changes unless allow_load_to_draft_and_discard_changes.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Returns the list of all intents in the specified agent.
        # @param [String] parent
        #   Required. The agent to list all intents from. Format: `projects//agent` or `
        #   projects//locations//agent`. Alternatively, you can specify the environment to
        #   list intents for. Format: `projects//agent/environments/` or `projects//
        #   locations//agent/environments/`. Note: training phrases of the intents will
        #   not be returned for non-draft environment.
        # @param [String] intent_view
        #   Optional. The resource view to apply to the returned intent.
        # @param [String] language_code
        #   Optional. The language used to access language-specific data. If not specified,
        #   the agent's default language is used. For more information, see [Multilingual
        #   intent and entity data](https://cloud.google.com/dialogflow/docs/agents-
        #   multilingual#intent-entity).
        # @param [Fixnum] page_size
        #   Optional. The maximum number of items to return in a single page. By default
        #   100 and at most 1000.
        # @param [String] page_token
        #   Optional. The next_page_token value returned from a previous list request.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2ListIntentsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2ListIntentsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_agent_environment_intents(parent, intent_view: nil, language_code: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2/{+parent}/intents', options)
          command.response_representation = Google::Apis::DialogflowV2::GoogleCloudDialogflowV2ListIntentsResponse::Representation
          command.response_class = Google::Apis::DialogflowV2::GoogleCloudDialogflowV2ListIntentsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['intentView'] = intent_view unless intent_view.nil?
          command.query['languageCode'] = language_code unless language_code.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes all active contexts in the specified session.
        # @param [String] parent
        #   Required. The name of the session to delete all contexts from. Format: `
        #   projects//agent/sessions/` or `projects//agent/environments//users//sessions/`.
        #   If `Environment ID` is not specified we assume default 'draft' environment.
        #   If `User ID` is not specified, we assume default '-' user.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV2::GoogleProtobufEmpty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV2::GoogleProtobufEmpty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_location_agent_environment_user_session_contexts(parent, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v2/{+parent}/contexts', options)
          command.response_representation = Google::Apis::DialogflowV2::GoogleProtobufEmpty::Representation
          command.response_class = Google::Apis::DialogflowV2::GoogleProtobufEmpty
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Processes a natural language query and returns structured, actionable data as
        # a result. This method is not idempotent, because it may cause contexts and
        # session entity types to be updated, which in turn might affect results of
        # future queries. If you might use [Agent Assist](https://cloud.google.com/
        # dialogflow/docs/#aa) or other CCAI products now or in the future, consider
        # using AnalyzeContent instead of `DetectIntent`. `AnalyzeContent` has
        # additional functionality for Agent Assist and other CCAI products. Note:
        # Always use agent versions for production traffic. See [Versions and
        # environments](https://cloud.google.com/dialogflow/es/docs/agents-versions).
        # @param [String] session
        #   Required. The name of the session this query is sent to. Format: `projects//
        #   agent/sessions/`, or `projects//agent/environments//users//sessions/`. If `
        #   Environment ID` is not specified, we assume default 'draft' environment (`
        #   Environment ID` might be referred to as environment name at some places). If `
        #   User ID` is not specified, we are using "-". It's up to the API caller to
        #   choose an appropriate `Session ID` and `User Id`. They can be a random number
        #   or some type of user and session identifiers (preferably hashed). The length
        #   of the `Session ID` and `User ID` must not exceed 36 characters. For more
        #   information, see the [API interactions guide](https://cloud.google.com/
        #   dialogflow/docs/api-overview). Note: Always use agent versions for production
        #   traffic. See [Versions and environments](https://cloud.google.com/dialogflow/
        #   es/docs/agents-versions).
        # @param [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2DetectIntentRequest] google_cloud_dialogflow_v2_detect_intent_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2DetectIntentResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2DetectIntentResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def detect_project_location_agent_environment_user_session_intent(session, google_cloud_dialogflow_v2_detect_intent_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v2/{+session}:detectIntent', options)
          command.request_representation = Google::Apis::DialogflowV2::GoogleCloudDialogflowV2DetectIntentRequest::Representation
          command.request_object = google_cloud_dialogflow_v2_detect_intent_request_object
          command.response_representation = Google::Apis::DialogflowV2::GoogleCloudDialogflowV2DetectIntentResponse::Representation
          command.response_class = Google::Apis::DialogflowV2::GoogleCloudDialogflowV2DetectIntentResponse
          command.params['session'] = session unless session.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a context. If the specified context already exists, overrides the
        # context.
        # @param [String] parent
        #   Required. The session to create a context for. Format: `projects//agent/
        #   sessions/` or `projects//agent/environments//users//sessions/`. If `
        #   Environment ID` is not specified, we assume default 'draft' environment. If `
        #   User ID` is not specified, we assume default '-' user.
        # @param [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2Context] google_cloud_dialogflow_v2_context_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2Context] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2Context]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_location_agent_environment_user_session_context(parent, google_cloud_dialogflow_v2_context_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v2/{+parent}/contexts', options)
          command.request_representation = Google::Apis::DialogflowV2::GoogleCloudDialogflowV2Context::Representation
          command.request_object = google_cloud_dialogflow_v2_context_object
          command.response_representation = Google::Apis::DialogflowV2::GoogleCloudDialogflowV2Context::Representation
          command.response_class = Google::Apis::DialogflowV2::GoogleCloudDialogflowV2Context
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes the specified context.
        # @param [String] name
        #   Required. The name of the context to delete. Format: `projects//agent/sessions/
        #   /contexts/` or `projects//agent/environments//users//sessions//contexts/`. If `
        #   Environment ID` is not specified, we assume default 'draft' environment. If `
        #   User ID` is not specified, we assume default '-' user.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV2::GoogleProtobufEmpty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV2::GoogleProtobufEmpty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_location_agent_environment_user_session_context(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v2/{+name}', options)
          command.response_representation = Google::Apis::DialogflowV2::GoogleProtobufEmpty::Representation
          command.response_class = Google::Apis::DialogflowV2::GoogleProtobufEmpty
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Retrieves the specified context.
        # @param [String] name
        #   Required. The name of the context. Format: `projects//agent/sessions//contexts/
        #   ` or `projects//agent/environments//users//sessions//contexts/`. If `
        #   Environment ID` is not specified, we assume default 'draft' environment. If `
        #   User ID` is not specified, we assume default '-' user.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2Context] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2Context]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_agent_environment_user_session_context(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2/{+name}', options)
          command.response_representation = Google::Apis::DialogflowV2::GoogleCloudDialogflowV2Context::Representation
          command.response_class = Google::Apis::DialogflowV2::GoogleCloudDialogflowV2Context
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Returns the list of all contexts in the specified session.
        # @param [String] parent
        #   Required. The session to list all contexts from. Format: `projects//agent/
        #   sessions/` or `projects//agent/environments//users//sessions/`. If `
        #   Environment ID` is not specified, we assume default 'draft' environment. If `
        #   User ID` is not specified, we assume default '-' user.
        # @param [Fixnum] page_size
        #   Optional. The maximum number of items to return in a single page. By default
        #   100 and at most 1000.
        # @param [String] page_token
        #   Optional. The next_page_token value returned from a previous list request.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2ListContextsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2ListContextsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_agent_environment_user_session_contexts(parent, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2/{+parent}/contexts', options)
          command.response_representation = Google::Apis::DialogflowV2::GoogleCloudDialogflowV2ListContextsResponse::Representation
          command.response_class = Google::Apis::DialogflowV2::GoogleCloudDialogflowV2ListContextsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates the specified context.
        # @param [String] name
        #   Required. The unique identifier of the context. Format: `projects//agent/
        #   sessions//contexts/`, or `projects//agent/environments//users//sessions//
        #   contexts/`. The `Context ID` is always converted to lowercase, may only
        #   contain characters in a-zA-Z0-9_-% and may be at most 250 bytes long. If `
        #   Environment ID` is not specified, we assume default 'draft' environment. If `
        #   User ID` is not specified, we assume default '-' user. The following context
        #   names are reserved for internal use by Dialogflow. You should not use these
        #   contexts or create contexts with these names: * `__system_counters__` * `*
        #   _id_dialog_context` * `*_dialog_params_size`
        # @param [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2Context] google_cloud_dialogflow_v2_context_object
        # @param [String] update_mask
        #   Optional. The mask to control which fields get updated.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2Context] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2Context]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_project_location_agent_environment_user_session_context(name, google_cloud_dialogflow_v2_context_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v2/{+name}', options)
          command.request_representation = Google::Apis::DialogflowV2::GoogleCloudDialogflowV2Context::Representation
          command.request_object = google_cloud_dialogflow_v2_context_object
          command.response_representation = Google::Apis::DialogflowV2::GoogleCloudDialogflowV2Context::Representation
          command.response_class = Google::Apis::DialogflowV2::GoogleCloudDialogflowV2Context
          command.params['name'] = name unless name.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a session entity type. If the specified session entity type already
        # exists, overrides the session entity type. This method doesn't work with
        # Google Assistant integration. Contact Dialogflow support if you need to use
        # session entities with Google Assistant integration.
        # @param [String] parent
        #   Required. The session to create a session entity type for. Format: `projects//
        #   agent/sessions/` or `projects//agent/environments//users// sessions/`. If `
        #   Environment ID` is not specified, we assume default 'draft' environment. If `
        #   User ID` is not specified, we assume default '-' user.
        # @param [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2SessionEntityType] google_cloud_dialogflow_v2_session_entity_type_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2SessionEntityType] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2SessionEntityType]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_location_agent_environment_user_session_entity_type(parent, google_cloud_dialogflow_v2_session_entity_type_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v2/{+parent}/entityTypes', options)
          command.request_representation = Google::Apis::DialogflowV2::GoogleCloudDialogflowV2SessionEntityType::Representation
          command.request_object = google_cloud_dialogflow_v2_session_entity_type_object
          command.response_representation = Google::Apis::DialogflowV2::GoogleCloudDialogflowV2SessionEntityType::Representation
          command.response_class = Google::Apis::DialogflowV2::GoogleCloudDialogflowV2SessionEntityType
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes the specified session entity type. This method doesn't work with
        # Google Assistant integration. Contact Dialogflow support if you need to use
        # session entities with Google Assistant integration.
        # @param [String] name
        #   Required. The name of the entity type to delete. Format: `projects//agent/
        #   sessions//entityTypes/` or `projects//agent/environments//users//sessions//
        #   entityTypes/`. If `Environment ID` is not specified, we assume default 'draft'
        #   environment. If `User ID` is not specified, we assume default '-' user.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV2::GoogleProtobufEmpty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV2::GoogleProtobufEmpty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_location_agent_environment_user_session_entity_type(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v2/{+name}', options)
          command.response_representation = Google::Apis::DialogflowV2::GoogleProtobufEmpty::Representation
          command.response_class = Google::Apis::DialogflowV2::GoogleProtobufEmpty
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Retrieves the specified session entity type. This method doesn't work with
        # Google Assistant integration. Contact Dialogflow support if you need to use
        # session entities with Google Assistant integration.
        # @param [String] name
        #   Required. The name of the session entity type. Format: `projects//agent/
        #   sessions//entityTypes/` or `projects//agent/environments//users//sessions//
        #   entityTypes/`. If `Environment ID` is not specified, we assume default 'draft'
        #   environment. If `User ID` is not specified, we assume default '-' user.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2SessionEntityType] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2SessionEntityType]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_agent_environment_user_session_entity_type(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2/{+name}', options)
          command.response_representation = Google::Apis::DialogflowV2::GoogleCloudDialogflowV2SessionEntityType::Representation
          command.response_class = Google::Apis::DialogflowV2::GoogleCloudDialogflowV2SessionEntityType
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Returns the list of all session entity types in the specified session. This
        # method doesn't work with Google Assistant integration. Contact Dialogflow
        # support if you need to use session entities with Google Assistant integration.
        # @param [String] parent
        #   Required. The session to list all session entity types from. Format: `projects/
        #   /agent/sessions/` or `projects//agent/environments//users// sessions/`. If `
        #   Environment ID` is not specified, we assume default 'draft' environment. If `
        #   User ID` is not specified, we assume default '-' user.
        # @param [Fixnum] page_size
        #   Optional. The maximum number of items to return in a single page. By default
        #   100 and at most 1000.
        # @param [String] page_token
        #   Optional. The next_page_token value returned from a previous list request.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2ListSessionEntityTypesResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2ListSessionEntityTypesResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_agent_environment_user_session_entity_types(parent, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2/{+parent}/entityTypes', options)
          command.response_representation = Google::Apis::DialogflowV2::GoogleCloudDialogflowV2ListSessionEntityTypesResponse::Representation
          command.response_class = Google::Apis::DialogflowV2::GoogleCloudDialogflowV2ListSessionEntityTypesResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates the specified session entity type. This method doesn't work with
        # Google Assistant integration. Contact Dialogflow support if you need to use
        # session entities with Google Assistant integration.
        # @param [String] name
        #   Required. The unique identifier of this session entity type. Format: `projects/
        #   /agent/sessions//entityTypes/`, or `projects//agent/environments//users//
        #   sessions//entityTypes/`. If `Environment ID` is not specified, we assume
        #   default 'draft' environment. If `User ID` is not specified, we assume default '
        #   -' user. `` must be the display name of an existing entity type in the same
        #   agent that will be overridden or supplemented.
        # @param [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2SessionEntityType] google_cloud_dialogflow_v2_session_entity_type_object
        # @param [String] update_mask
        #   Optional. The mask to control which fields get updated.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2SessionEntityType] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2SessionEntityType]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_project_location_agent_environment_user_session_entity_type(name, google_cloud_dialogflow_v2_session_entity_type_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v2/{+name}', options)
          command.request_representation = Google::Apis::DialogflowV2::GoogleCloudDialogflowV2SessionEntityType::Representation
          command.request_object = google_cloud_dialogflow_v2_session_entity_type_object
          command.response_representation = Google::Apis::DialogflowV2::GoogleCloudDialogflowV2SessionEntityType::Representation
          command.response_class = Google::Apis::DialogflowV2::GoogleCloudDialogflowV2SessionEntityType
          command.params['name'] = name unless name.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes intents in the specified agent. This method is a [long-running
        # operation](https://cloud.google.com/dialogflow/es/docs/how/long-running-
        # operations). The returned `Operation` type has the following method-specific
        # fields: - `metadata`: An empty [Struct message](https://developers.google.com/
        # protocol-buffers/docs/reference/google.protobuf#struct) - `response`: An [
        # Empty message](https://developers.google.com/protocol-buffers/docs/reference/
        # google.protobuf#empty) Note: You should always train an agent prior to sending
        # it queries. See the [training documentation](https://cloud.google.com/
        # dialogflow/es/docs/training).
        # @param [String] parent
        #   Required. The name of the agent to delete all entities types for. Format: `
        #   projects//agent`.
        # @param [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2BatchDeleteIntentsRequest] google_cloud_dialogflow_v2_batch_delete_intents_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV2::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV2::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def batch_project_location_agent_intent_delete(parent, google_cloud_dialogflow_v2_batch_delete_intents_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v2/{+parent}/intents:batchDelete', options)
          command.request_representation = Google::Apis::DialogflowV2::GoogleCloudDialogflowV2BatchDeleteIntentsRequest::Representation
          command.request_object = google_cloud_dialogflow_v2_batch_delete_intents_request_object
          command.response_representation = Google::Apis::DialogflowV2::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::DialogflowV2::GoogleLongrunningOperation
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates/Creates multiple intents in the specified agent. This method is a [
        # long-running operation](https://cloud.google.com/dialogflow/es/docs/how/long-
        # running-operations). The returned `Operation` type has the following method-
        # specific fields: - `metadata`: An empty [Struct message](https://developers.
        # google.com/protocol-buffers/docs/reference/google.protobuf#struct) - `response`
        # : BatchUpdateIntentsResponse Note: You should always train an agent prior to
        # sending it queries. See the [training documentation](https://cloud.google.com/
        # dialogflow/es/docs/training).
        # @param [String] parent
        #   Required. The name of the agent to update or create intents in. Format: `
        #   projects//agent`.
        # @param [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2BatchUpdateIntentsRequest] google_cloud_dialogflow_v2_batch_update_intents_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV2::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV2::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def batch_project_location_agent_intent_update(parent, google_cloud_dialogflow_v2_batch_update_intents_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v2/{+parent}/intents:batchUpdate', options)
          command.request_representation = Google::Apis::DialogflowV2::GoogleCloudDialogflowV2BatchUpdateIntentsRequest::Representation
          command.request_object = google_cloud_dialogflow_v2_batch_update_intents_request_object
          command.response_representation = Google::Apis::DialogflowV2::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::DialogflowV2::GoogleLongrunningOperation
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates an intent in the specified agent. Note: You should always train an
        # agent prior to sending it queries. See the [training documentation](https://
        # cloud.google.com/dialogflow/es/docs/training).
        # @param [String] parent
        #   Required. The agent to create a intent for. Format: `projects//agent`.
        # @param [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2Intent] google_cloud_dialogflow_v2_intent_object
        # @param [String] intent_view
        #   Optional. The resource view to apply to the returned intent.
        # @param [String] language_code
        #   Optional. The language used to access language-specific data. If not specified,
        #   the agent's default language is used. For more information, see [Multilingual
        #   intent and entity data](https://cloud.google.com/dialogflow/docs/agents-
        #   multilingual#intent-entity).
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2Intent] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2Intent]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_location_agent_intent(parent, google_cloud_dialogflow_v2_intent_object = nil, intent_view: nil, language_code: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v2/{+parent}/intents', options)
          command.request_representation = Google::Apis::DialogflowV2::GoogleCloudDialogflowV2Intent::Representation
          command.request_object = google_cloud_dialogflow_v2_intent_object
          command.response_representation = Google::Apis::DialogflowV2::GoogleCloudDialogflowV2Intent::Representation
          command.response_class = Google::Apis::DialogflowV2::GoogleCloudDialogflowV2Intent
          command.params['parent'] = parent unless parent.nil?
          command.query['intentView'] = intent_view unless intent_view.nil?
          command.query['languageCode'] = language_code unless language_code.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes the specified intent and its direct or indirect followup intents. Note:
        # You should always train an agent prior to sending it queries. See the [
        # training documentation](https://cloud.google.com/dialogflow/es/docs/training).
        # @param [String] name
        #   Required. The name of the intent to delete. If this intent has direct or
        #   indirect followup intents, we also delete them. Format: `projects//agent/
        #   intents/`.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV2::GoogleProtobufEmpty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV2::GoogleProtobufEmpty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_location_agent_intent(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v2/{+name}', options)
          command.response_representation = Google::Apis::DialogflowV2::GoogleProtobufEmpty::Representation
          command.response_class = Google::Apis::DialogflowV2::GoogleProtobufEmpty
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Retrieves the specified intent.
        # @param [String] name
        #   Required. The name of the intent. Format: `projects//agent/intents/`.
        # @param [String] intent_view
        #   Optional. The resource view to apply to the returned intent.
        # @param [String] language_code
        #   Optional. The language used to access language-specific data. If not specified,
        #   the agent's default language is used. For more information, see [Multilingual
        #   intent and entity data](https://cloud.google.com/dialogflow/docs/agents-
        #   multilingual#intent-entity).
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2Intent] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2Intent]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_agent_intent(name, intent_view: nil, language_code: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2/{+name}', options)
          command.response_representation = Google::Apis::DialogflowV2::GoogleCloudDialogflowV2Intent::Representation
          command.response_class = Google::Apis::DialogflowV2::GoogleCloudDialogflowV2Intent
          command.params['name'] = name unless name.nil?
          command.query['intentView'] = intent_view unless intent_view.nil?
          command.query['languageCode'] = language_code unless language_code.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Returns the list of all intents in the specified agent.
        # @param [String] parent
        #   Required. The agent to list all intents from. Format: `projects//agent` or `
        #   projects//locations//agent`. Alternatively, you can specify the environment to
        #   list intents for. Format: `projects//agent/environments/` or `projects//
        #   locations//agent/environments/`. Note: training phrases of the intents will
        #   not be returned for non-draft environment.
        # @param [String] intent_view
        #   Optional. The resource view to apply to the returned intent.
        # @param [String] language_code
        #   Optional. The language used to access language-specific data. If not specified,
        #   the agent's default language is used. For more information, see [Multilingual
        #   intent and entity data](https://cloud.google.com/dialogflow/docs/agents-
        #   multilingual#intent-entity).
        # @param [Fixnum] page_size
        #   Optional. The maximum number of items to return in a single page. By default
        #   100 and at most 1000.
        # @param [String] page_token
        #   Optional. The next_page_token value returned from a previous list request.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2ListIntentsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2ListIntentsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_agent_intents(parent, intent_view: nil, language_code: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2/{+parent}/intents', options)
          command.response_representation = Google::Apis::DialogflowV2::GoogleCloudDialogflowV2ListIntentsResponse::Representation
          command.response_class = Google::Apis::DialogflowV2::GoogleCloudDialogflowV2ListIntentsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['intentView'] = intent_view unless intent_view.nil?
          command.query['languageCode'] = language_code unless language_code.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates the specified intent. Note: You should always train an agent prior to
        # sending it queries. See the [training documentation](https://cloud.google.com/
        # dialogflow/es/docs/training).
        # @param [String] name
        #   Optional. The unique identifier of this intent. Required for Intents.
        #   UpdateIntent and Intents.BatchUpdateIntents methods. Format: `projects//agent/
        #   intents/`.
        # @param [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2Intent] google_cloud_dialogflow_v2_intent_object
        # @param [String] intent_view
        #   Optional. The resource view to apply to the returned intent.
        # @param [String] language_code
        #   Optional. The language used to access language-specific data. If not specified,
        #   the agent's default language is used. For more information, see [Multilingual
        #   intent and entity data](https://cloud.google.com/dialogflow/docs/agents-
        #   multilingual#intent-entity).
        # @param [String] update_mask
        #   Optional. The mask to control which fields get updated.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2Intent] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2Intent]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_project_location_agent_intent(name, google_cloud_dialogflow_v2_intent_object = nil, intent_view: nil, language_code: nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v2/{+name}', options)
          command.request_representation = Google::Apis::DialogflowV2::GoogleCloudDialogflowV2Intent::Representation
          command.request_object = google_cloud_dialogflow_v2_intent_object
          command.response_representation = Google::Apis::DialogflowV2::GoogleCloudDialogflowV2Intent::Representation
          command.response_class = Google::Apis::DialogflowV2::GoogleCloudDialogflowV2Intent
          command.params['name'] = name unless name.nil?
          command.query['intentView'] = intent_view unless intent_view.nil?
          command.query['languageCode'] = language_code unless language_code.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes all active contexts in the specified session.
        # @param [String] parent
        #   Required. The name of the session to delete all contexts from. Format: `
        #   projects//agent/sessions/` or `projects//agent/environments//users//sessions/`.
        #   If `Environment ID` is not specified we assume default 'draft' environment.
        #   If `User ID` is not specified, we assume default '-' user.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV2::GoogleProtobufEmpty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV2::GoogleProtobufEmpty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_location_agent_session_contexts(parent, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v2/{+parent}/contexts', options)
          command.response_representation = Google::Apis::DialogflowV2::GoogleProtobufEmpty::Representation
          command.response_class = Google::Apis::DialogflowV2::GoogleProtobufEmpty
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Processes a natural language query and returns structured, actionable data as
        # a result. This method is not idempotent, because it may cause contexts and
        # session entity types to be updated, which in turn might affect results of
        # future queries. If you might use [Agent Assist](https://cloud.google.com/
        # dialogflow/docs/#aa) or other CCAI products now or in the future, consider
        # using AnalyzeContent instead of `DetectIntent`. `AnalyzeContent` has
        # additional functionality for Agent Assist and other CCAI products. Note:
        # Always use agent versions for production traffic. See [Versions and
        # environments](https://cloud.google.com/dialogflow/es/docs/agents-versions).
        # @param [String] session
        #   Required. The name of the session this query is sent to. Format: `projects//
        #   agent/sessions/`, or `projects//agent/environments//users//sessions/`. If `
        #   Environment ID` is not specified, we assume default 'draft' environment (`
        #   Environment ID` might be referred to as environment name at some places). If `
        #   User ID` is not specified, we are using "-". It's up to the API caller to
        #   choose an appropriate `Session ID` and `User Id`. They can be a random number
        #   or some type of user and session identifiers (preferably hashed). The length
        #   of the `Session ID` and `User ID` must not exceed 36 characters. For more
        #   information, see the [API interactions guide](https://cloud.google.com/
        #   dialogflow/docs/api-overview). Note: Always use agent versions for production
        #   traffic. See [Versions and environments](https://cloud.google.com/dialogflow/
        #   es/docs/agents-versions).
        # @param [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2DetectIntentRequest] google_cloud_dialogflow_v2_detect_intent_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2DetectIntentResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2DetectIntentResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def detect_project_location_agent_session_intent(session, google_cloud_dialogflow_v2_detect_intent_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v2/{+session}:detectIntent', options)
          command.request_representation = Google::Apis::DialogflowV2::GoogleCloudDialogflowV2DetectIntentRequest::Representation
          command.request_object = google_cloud_dialogflow_v2_detect_intent_request_object
          command.response_representation = Google::Apis::DialogflowV2::GoogleCloudDialogflowV2DetectIntentResponse::Representation
          command.response_class = Google::Apis::DialogflowV2::GoogleCloudDialogflowV2DetectIntentResponse
          command.params['session'] = session unless session.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a context. If the specified context already exists, overrides the
        # context.
        # @param [String] parent
        #   Required. The session to create a context for. Format: `projects//agent/
        #   sessions/` or `projects//agent/environments//users//sessions/`. If `
        #   Environment ID` is not specified, we assume default 'draft' environment. If `
        #   User ID` is not specified, we assume default '-' user.
        # @param [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2Context] google_cloud_dialogflow_v2_context_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2Context] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2Context]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_location_agent_session_context(parent, google_cloud_dialogflow_v2_context_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v2/{+parent}/contexts', options)
          command.request_representation = Google::Apis::DialogflowV2::GoogleCloudDialogflowV2Context::Representation
          command.request_object = google_cloud_dialogflow_v2_context_object
          command.response_representation = Google::Apis::DialogflowV2::GoogleCloudDialogflowV2Context::Representation
          command.response_class = Google::Apis::DialogflowV2::GoogleCloudDialogflowV2Context
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes the specified context.
        # @param [String] name
        #   Required. The name of the context to delete. Format: `projects//agent/sessions/
        #   /contexts/` or `projects//agent/environments//users//sessions//contexts/`. If `
        #   Environment ID` is not specified, we assume default 'draft' environment. If `
        #   User ID` is not specified, we assume default '-' user.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV2::GoogleProtobufEmpty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV2::GoogleProtobufEmpty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_location_agent_session_context(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v2/{+name}', options)
          command.response_representation = Google::Apis::DialogflowV2::GoogleProtobufEmpty::Representation
          command.response_class = Google::Apis::DialogflowV2::GoogleProtobufEmpty
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Retrieves the specified context.
        # @param [String] name
        #   Required. The name of the context. Format: `projects//agent/sessions//contexts/
        #   ` or `projects//agent/environments//users//sessions//contexts/`. If `
        #   Environment ID` is not specified, we assume default 'draft' environment. If `
        #   User ID` is not specified, we assume default '-' user.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2Context] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2Context]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_agent_session_context(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2/{+name}', options)
          command.response_representation = Google::Apis::DialogflowV2::GoogleCloudDialogflowV2Context::Representation
          command.response_class = Google::Apis::DialogflowV2::GoogleCloudDialogflowV2Context
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Returns the list of all contexts in the specified session.
        # @param [String] parent
        #   Required. The session to list all contexts from. Format: `projects//agent/
        #   sessions/` or `projects//agent/environments//users//sessions/`. If `
        #   Environment ID` is not specified, we assume default 'draft' environment. If `
        #   User ID` is not specified, we assume default '-' user.
        # @param [Fixnum] page_size
        #   Optional. The maximum number of items to return in a single page. By default
        #   100 and at most 1000.
        # @param [String] page_token
        #   Optional. The next_page_token value returned from a previous list request.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2ListContextsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2ListContextsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_agent_session_contexts(parent, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2/{+parent}/contexts', options)
          command.response_representation = Google::Apis::DialogflowV2::GoogleCloudDialogflowV2ListContextsResponse::Representation
          command.response_class = Google::Apis::DialogflowV2::GoogleCloudDialogflowV2ListContextsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates the specified context.
        # @param [String] name
        #   Required. The unique identifier of the context. Format: `projects//agent/
        #   sessions//contexts/`, or `projects//agent/environments//users//sessions//
        #   contexts/`. The `Context ID` is always converted to lowercase, may only
        #   contain characters in a-zA-Z0-9_-% and may be at most 250 bytes long. If `
        #   Environment ID` is not specified, we assume default 'draft' environment. If `
        #   User ID` is not specified, we assume default '-' user. The following context
        #   names are reserved for internal use by Dialogflow. You should not use these
        #   contexts or create contexts with these names: * `__system_counters__` * `*
        #   _id_dialog_context` * `*_dialog_params_size`
        # @param [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2Context] google_cloud_dialogflow_v2_context_object
        # @param [String] update_mask
        #   Optional. The mask to control which fields get updated.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2Context] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2Context]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_project_location_agent_session_context(name, google_cloud_dialogflow_v2_context_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v2/{+name}', options)
          command.request_representation = Google::Apis::DialogflowV2::GoogleCloudDialogflowV2Context::Representation
          command.request_object = google_cloud_dialogflow_v2_context_object
          command.response_representation = Google::Apis::DialogflowV2::GoogleCloudDialogflowV2Context::Representation
          command.response_class = Google::Apis::DialogflowV2::GoogleCloudDialogflowV2Context
          command.params['name'] = name unless name.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a session entity type. If the specified session entity type already
        # exists, overrides the session entity type. This method doesn't work with
        # Google Assistant integration. Contact Dialogflow support if you need to use
        # session entities with Google Assistant integration.
        # @param [String] parent
        #   Required. The session to create a session entity type for. Format: `projects//
        #   agent/sessions/` or `projects//agent/environments//users// sessions/`. If `
        #   Environment ID` is not specified, we assume default 'draft' environment. If `
        #   User ID` is not specified, we assume default '-' user.
        # @param [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2SessionEntityType] google_cloud_dialogflow_v2_session_entity_type_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2SessionEntityType] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2SessionEntityType]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_location_agent_session_entity_type(parent, google_cloud_dialogflow_v2_session_entity_type_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v2/{+parent}/entityTypes', options)
          command.request_representation = Google::Apis::DialogflowV2::GoogleCloudDialogflowV2SessionEntityType::Representation
          command.request_object = google_cloud_dialogflow_v2_session_entity_type_object
          command.response_representation = Google::Apis::DialogflowV2::GoogleCloudDialogflowV2SessionEntityType::Representation
          command.response_class = Google::Apis::DialogflowV2::GoogleCloudDialogflowV2SessionEntityType
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes the specified session entity type. This method doesn't work with
        # Google Assistant integration. Contact Dialogflow support if you need to use
        # session entities with Google Assistant integration.
        # @param [String] name
        #   Required. The name of the entity type to delete. Format: `projects//agent/
        #   sessions//entityTypes/` or `projects//agent/environments//users//sessions//
        #   entityTypes/`. If `Environment ID` is not specified, we assume default 'draft'
        #   environment. If `User ID` is not specified, we assume default '-' user.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV2::GoogleProtobufEmpty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV2::GoogleProtobufEmpty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_location_agent_session_entity_type(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v2/{+name}', options)
          command.response_representation = Google::Apis::DialogflowV2::GoogleProtobufEmpty::Representation
          command.response_class = Google::Apis::DialogflowV2::GoogleProtobufEmpty
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Retrieves the specified session entity type. This method doesn't work with
        # Google Assistant integration. Contact Dialogflow support if you need to use
        # session entities with Google Assistant integration.
        # @param [String] name
        #   Required. The name of the session entity type. Format: `projects//agent/
        #   sessions//entityTypes/` or `projects//agent/environments//users//sessions//
        #   entityTypes/`. If `Environment ID` is not specified, we assume default 'draft'
        #   environment. If `User ID` is not specified, we assume default '-' user.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2SessionEntityType] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2SessionEntityType]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_agent_session_entity_type(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2/{+name}', options)
          command.response_representation = Google::Apis::DialogflowV2::GoogleCloudDialogflowV2SessionEntityType::Representation
          command.response_class = Google::Apis::DialogflowV2::GoogleCloudDialogflowV2SessionEntityType
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Returns the list of all session entity types in the specified session. This
        # method doesn't work with Google Assistant integration. Contact Dialogflow
        # support if you need to use session entities with Google Assistant integration.
        # @param [String] parent
        #   Required. The session to list all session entity types from. Format: `projects/
        #   /agent/sessions/` or `projects//agent/environments//users// sessions/`. If `
        #   Environment ID` is not specified, we assume default 'draft' environment. If `
        #   User ID` is not specified, we assume default '-' user.
        # @param [Fixnum] page_size
        #   Optional. The maximum number of items to return in a single page. By default
        #   100 and at most 1000.
        # @param [String] page_token
        #   Optional. The next_page_token value returned from a previous list request.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2ListSessionEntityTypesResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2ListSessionEntityTypesResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_agent_session_entity_types(parent, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2/{+parent}/entityTypes', options)
          command.response_representation = Google::Apis::DialogflowV2::GoogleCloudDialogflowV2ListSessionEntityTypesResponse::Representation
          command.response_class = Google::Apis::DialogflowV2::GoogleCloudDialogflowV2ListSessionEntityTypesResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates the specified session entity type. This method doesn't work with
        # Google Assistant integration. Contact Dialogflow support if you need to use
        # session entities with Google Assistant integration.
        # @param [String] name
        #   Required. The unique identifier of this session entity type. Format: `projects/
        #   /agent/sessions//entityTypes/`, or `projects//agent/environments//users//
        #   sessions//entityTypes/`. If `Environment ID` is not specified, we assume
        #   default 'draft' environment. If `User ID` is not specified, we assume default '
        #   -' user. `` must be the display name of an existing entity type in the same
        #   agent that will be overridden or supplemented.
        # @param [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2SessionEntityType] google_cloud_dialogflow_v2_session_entity_type_object
        # @param [String] update_mask
        #   Optional. The mask to control which fields get updated.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2SessionEntityType] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2SessionEntityType]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_project_location_agent_session_entity_type(name, google_cloud_dialogflow_v2_session_entity_type_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v2/{+name}', options)
          command.request_representation = Google::Apis::DialogflowV2::GoogleCloudDialogflowV2SessionEntityType::Representation
          command.request_object = google_cloud_dialogflow_v2_session_entity_type_object
          command.response_representation = Google::Apis::DialogflowV2::GoogleCloudDialogflowV2SessionEntityType::Representation
          command.response_class = Google::Apis::DialogflowV2::GoogleCloudDialogflowV2SessionEntityType
          command.params['name'] = name unless name.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates an agent version. The new version points to the agent instance in the "
        # default" environment.
        # @param [String] parent
        #   Required. The agent to create a version for. Supported formats: - `projects//
        #   agent` - `projects//locations//agent`
        # @param [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2Version] google_cloud_dialogflow_v2_version_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2Version] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2Version]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_location_agent_version(parent, google_cloud_dialogflow_v2_version_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v2/{+parent}/versions', options)
          command.request_representation = Google::Apis::DialogflowV2::GoogleCloudDialogflowV2Version::Representation
          command.request_object = google_cloud_dialogflow_v2_version_object
          command.response_representation = Google::Apis::DialogflowV2::GoogleCloudDialogflowV2Version::Representation
          command.response_class = Google::Apis::DialogflowV2::GoogleCloudDialogflowV2Version
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Delete the specified agent version.
        # @param [String] name
        #   Required. The name of the version to delete. Supported formats: - `projects//
        #   agent/versions/` - `projects//locations//agent/versions/`
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV2::GoogleProtobufEmpty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV2::GoogleProtobufEmpty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_location_agent_version(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v2/{+name}', options)
          command.response_representation = Google::Apis::DialogflowV2::GoogleProtobufEmpty::Representation
          command.response_class = Google::Apis::DialogflowV2::GoogleProtobufEmpty
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Retrieves the specified agent version.
        # @param [String] name
        #   Required. The name of the version. Supported formats: - `projects//agent/
        #   versions/` - `projects//locations//agent/versions/`
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2Version] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2Version]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_agent_version(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2/{+name}', options)
          command.response_representation = Google::Apis::DialogflowV2::GoogleCloudDialogflowV2Version::Representation
          command.response_class = Google::Apis::DialogflowV2::GoogleCloudDialogflowV2Version
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Returns the list of all versions of the specified agent.
        # @param [String] parent
        #   Required. The agent to list all versions from. Supported formats: - `projects//
        #   agent` - `projects//locations//agent`
        # @param [Fixnum] page_size
        #   Optional. The maximum number of items to return in a single page. By default
        #   100 and at most 1000.
        # @param [String] page_token
        #   Optional. The next_page_token value returned from a previous list request.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2ListVersionsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2ListVersionsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_agent_versions(parent, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2/{+parent}/versions', options)
          command.response_representation = Google::Apis::DialogflowV2::GoogleCloudDialogflowV2ListVersionsResponse::Representation
          command.response_class = Google::Apis::DialogflowV2::GoogleCloudDialogflowV2ListVersionsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates the specified agent version. Note that this method does not allow you
        # to update the state of the agent the given version points to. It allows you to
        # update only mutable properties of the version resource.
        # @param [String] name
        #   Output only. The unique identifier of this agent version. Supported formats: -
        #   `projects//agent/versions/` - `projects//locations//agent/versions/`
        # @param [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2Version] google_cloud_dialogflow_v2_version_object
        # @param [String] update_mask
        #   Required. The mask to control which fields get updated.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2Version] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2Version]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_project_location_agent_version(name, google_cloud_dialogflow_v2_version_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v2/{+name}', options)
          command.request_representation = Google::Apis::DialogflowV2::GoogleCloudDialogflowV2Version::Representation
          command.request_object = google_cloud_dialogflow_v2_version_object
          command.response_representation = Google::Apis::DialogflowV2::GoogleCloudDialogflowV2Version::Representation
          command.response_class = Google::Apis::DialogflowV2::GoogleCloudDialogflowV2Version
          command.params['name'] = name unless name.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Returns the list of all answer records in the specified project in reverse
        # chronological order.
        # @param [String] parent
        #   Required. The project to list all answer records for in reverse chronological
        #   order. Format: `projects//locations/`.
        # @param [String] filter
        #   Optional. Filters to restrict results to specific answer records. Marked
        #   deprecated as it hasn't been, and isn't currently, supported. For more
        #   information about filtering, see [API Filtering](https://aip.dev/160).
        # @param [Fixnum] page_size
        #   Optional. The maximum number of records to return in a single page. The server
        #   may return fewer records than this. If unspecified, we use 10. The maximum is
        #   100.
        # @param [String] page_token
        #   Optional. The ListAnswerRecordsResponse.next_page_token value returned from a
        #   previous list request used to continue listing on the next page.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2ListAnswerRecordsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2ListAnswerRecordsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_answer_records(parent, filter: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2/{+parent}/answerRecords', options)
          command.response_representation = Google::Apis::DialogflowV2::GoogleCloudDialogflowV2ListAnswerRecordsResponse::Representation
          command.response_class = Google::Apis::DialogflowV2::GoogleCloudDialogflowV2ListAnswerRecordsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates the specified answer record.
        # @param [String] name
        #   The unique identifier of this answer record. Format: `projects//locations//
        #   answerRecords/`.
        # @param [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2AnswerRecord] google_cloud_dialogflow_v2_answer_record_object
        # @param [String] update_mask
        #   Required. The mask to control which fields get updated.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2AnswerRecord] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2AnswerRecord]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_project_location_answer_record(name, google_cloud_dialogflow_v2_answer_record_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v2/{+name}', options)
          command.request_representation = Google::Apis::DialogflowV2::GoogleCloudDialogflowV2AnswerRecord::Representation
          command.request_object = google_cloud_dialogflow_v2_answer_record_object
          command.response_representation = Google::Apis::DialogflowV2::GoogleCloudDialogflowV2AnswerRecord::Representation
          command.response_class = Google::Apis::DialogflowV2::GoogleCloudDialogflowV2AnswerRecord
          command.params['name'] = name unless name.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a new conversation dataset. This method is a [long-running operation](
        # https://cloud.google.com/dialogflow/es/docs/how/long-running-operations). The
        # returned `Operation` type has the following method-specific fields: - `
        # metadata`: CreateConversationDatasetOperationMetadata - `response`:
        # ConversationDataset
        # @param [String] parent
        #   Required. The project to create conversation dataset for. Format: `projects//
        #   locations/`
        # @param [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2ConversationDataset] google_cloud_dialogflow_v2_conversation_dataset_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV2::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV2::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_location_conversation_dataset(parent, google_cloud_dialogflow_v2_conversation_dataset_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v2/{+parent}/conversationDatasets', options)
          command.request_representation = Google::Apis::DialogflowV2::GoogleCloudDialogflowV2ConversationDataset::Representation
          command.request_object = google_cloud_dialogflow_v2_conversation_dataset_object
          command.response_representation = Google::Apis::DialogflowV2::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::DialogflowV2::GoogleLongrunningOperation
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes the specified conversation dataset. This method is a [long-running
        # operation](https://cloud.google.com/dialogflow/es/docs/how/long-running-
        # operations). The returned `Operation` type has the following method-specific
        # fields: - `metadata`: DeleteConversationDatasetOperationMetadata - `response`:
        # An [Empty message](https://developers.google.com/protocol-buffers/docs/
        # reference/google.protobuf#empty)
        # @param [String] name
        #   Required. The conversation dataset to delete. Format: `projects//locations//
        #   conversationDatasets/`
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV2::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV2::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_location_conversation_dataset(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v2/{+name}', options)
          command.response_representation = Google::Apis::DialogflowV2::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::DialogflowV2::GoogleLongrunningOperation
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Retrieves the specified conversation dataset.
        # @param [String] name
        #   Required. The conversation dataset to retrieve. Format: `projects//locations//
        #   conversationDatasets/`
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2ConversationDataset] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2ConversationDataset]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_conversation_dataset(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2/{+name}', options)
          command.response_representation = Google::Apis::DialogflowV2::GoogleCloudDialogflowV2ConversationDataset::Representation
          command.response_class = Google::Apis::DialogflowV2::GoogleCloudDialogflowV2ConversationDataset
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Import data into the specified conversation dataset. Note that it is not
        # allowed to import data to a conversation dataset that already has data in it.
        # This method is a [long-running operation](https://cloud.google.com/dialogflow/
        # es/docs/how/long-running-operations). The returned `Operation` type has the
        # following method-specific fields: - `metadata`:
        # ImportConversationDataOperationMetadata - `response`:
        # ImportConversationDataOperationResponse
        # @param [String] name
        #   Required. Dataset resource name. Format: `projects//locations//
        #   conversationDatasets/`
        # @param [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2ImportConversationDataRequest] google_cloud_dialogflow_v2_import_conversation_data_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV2::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV2::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def import_project_location_conversation_dataset_conversation_data(name, google_cloud_dialogflow_v2_import_conversation_data_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v2/{+name}:importConversationData', options)
          command.request_representation = Google::Apis::DialogflowV2::GoogleCloudDialogflowV2ImportConversationDataRequest::Representation
          command.request_object = google_cloud_dialogflow_v2_import_conversation_data_request_object
          command.response_representation = Google::Apis::DialogflowV2::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::DialogflowV2::GoogleLongrunningOperation
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Returns the list of all conversation datasets in the specified project and
        # location.
        # @param [String] parent
        #   Required. The project and location name to list all conversation datasets for.
        #   Format: `projects//locations/`
        # @param [Fixnum] page_size
        #   Optional. Maximum number of conversation datasets to return in a single page.
        #   By default 100 and at most 1000.
        # @param [String] page_token
        #   Optional. The next_page_token value returned from a previous list request.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2ListConversationDatasetsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2ListConversationDatasetsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_conversation_datasets(parent, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2/{+parent}/conversationDatasets', options)
          command.response_representation = Google::Apis::DialogflowV2::GoogleCloudDialogflowV2ListConversationDatasetsResponse::Representation
          command.response_class = Google::Apis::DialogflowV2::GoogleCloudDialogflowV2ListConversationDatasetsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a model. This method is a [long-running operation](https://cloud.
        # google.com/dialogflow/es/docs/how/long-running-operations). The returned `
        # Operation` type has the following method-specific fields: - `metadata`:
        # CreateConversationModelOperationMetadata - `response`: ConversationModel
        # @param [String] parent
        #   The project to create conversation model for. Format: `projects/`
        # @param [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2ConversationModel] google_cloud_dialogflow_v2_conversation_model_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV2::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV2::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_location_conversation_model(parent, google_cloud_dialogflow_v2_conversation_model_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v2/{+parent}/conversationModels', options)
          command.request_representation = Google::Apis::DialogflowV2::GoogleCloudDialogflowV2ConversationModel::Representation
          command.request_object = google_cloud_dialogflow_v2_conversation_model_object
          command.response_representation = Google::Apis::DialogflowV2::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::DialogflowV2::GoogleLongrunningOperation
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes a model. This method is a [long-running operation](https://cloud.
        # google.com/dialogflow/es/docs/how/long-running-operations). The returned `
        # Operation` type has the following method-specific fields: - `metadata`:
        # DeleteConversationModelOperationMetadata - `response`: An [Empty message](
        # https://developers.google.com/protocol-buffers/docs/reference/google.protobuf#
        # empty)
        # @param [String] name
        #   Required. The conversation model to delete. Format: `projects//
        #   conversationModels/`
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV2::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV2::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_location_conversation_model(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v2/{+name}', options)
          command.response_representation = Google::Apis::DialogflowV2::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::DialogflowV2::GoogleLongrunningOperation
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deploys a model. If a model is already deployed, deploying it has no effect. A
        # model can only serve prediction requests after it gets deployed. For article
        # suggestion, custom model will not be used unless it is deployed. This method
        # is a [long-running operation](https://cloud.google.com/dialogflow/es/docs/how/
        # long-running-operations). The returned `Operation` type has the following
        # method-specific fields: - `metadata`: DeployConversationModelOperationMetadata
        # - `response`: An [Empty message](https://developers.google.com/protocol-
        # buffers/docs/reference/google.protobuf#empty)
        # @param [String] name
        #   Required. The conversation model to deploy. Format: `projects//
        #   conversationModels/`
        # @param [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2DeployConversationModelRequest] google_cloud_dialogflow_v2_deploy_conversation_model_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV2::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV2::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def deploy_project_location_conversation_model(name, google_cloud_dialogflow_v2_deploy_conversation_model_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v2/{+name}:deploy', options)
          command.request_representation = Google::Apis::DialogflowV2::GoogleCloudDialogflowV2DeployConversationModelRequest::Representation
          command.request_object = google_cloud_dialogflow_v2_deploy_conversation_model_request_object
          command.response_representation = Google::Apis::DialogflowV2::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::DialogflowV2::GoogleLongrunningOperation
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets conversation model.
        # @param [String] name
        #   Required. The conversation model to retrieve. Format: `projects//
        #   conversationModels/`
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2ConversationModel] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2ConversationModel]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_conversation_model(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2/{+name}', options)
          command.response_representation = Google::Apis::DialogflowV2::GoogleCloudDialogflowV2ConversationModel::Representation
          command.response_class = Google::Apis::DialogflowV2::GoogleCloudDialogflowV2ConversationModel
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists conversation models.
        # @param [String] parent
        #   Required. The project to list all conversation models for. Format: `projects/`
        # @param [Fixnum] page_size
        #   Optional. Maximum number of conversation models to return in a single page. By
        #   default 100 and at most 1000.
        # @param [String] page_token
        #   Optional. The next_page_token value returned from a previous list request.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2ListConversationModelsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2ListConversationModelsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_conversation_models(parent, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2/{+parent}/conversationModels', options)
          command.response_representation = Google::Apis::DialogflowV2::GoogleCloudDialogflowV2ListConversationModelsResponse::Representation
          command.response_class = Google::Apis::DialogflowV2::GoogleCloudDialogflowV2ListConversationModelsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Undeploys a model. If the model is not deployed this method has no effect. If
        # the model is currently being used: - For article suggestion, article
        # suggestion will fallback to the default model if model is undeployed. This
        # method is a [long-running operation](https://cloud.google.com/dialogflow/es/
        # docs/how/long-running-operations). The returned `Operation` type has the
        # following method-specific fields: - `metadata`:
        # UndeployConversationModelOperationMetadata - `response`: An [Empty message](
        # https://developers.google.com/protocol-buffers/docs/reference/google.protobuf#
        # empty)
        # @param [String] name
        #   Required. The conversation model to undeploy. Format: `projects//
        #   conversationModels/`
        # @param [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2UndeployConversationModelRequest] google_cloud_dialogflow_v2_undeploy_conversation_model_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV2::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV2::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def undeploy_project_location_conversation_model(name, google_cloud_dialogflow_v2_undeploy_conversation_model_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v2/{+name}:undeploy', options)
          command.request_representation = Google::Apis::DialogflowV2::GoogleCloudDialogflowV2UndeployConversationModelRequest::Representation
          command.request_object = google_cloud_dialogflow_v2_undeploy_conversation_model_request_object
          command.response_representation = Google::Apis::DialogflowV2::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::DialogflowV2::GoogleLongrunningOperation
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates evaluation of a conversation model.
        # @param [String] parent
        #   Required. The conversation model resource name. Format: `projects//locations//
        #   conversationModels/`
        # @param [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2CreateConversationModelEvaluationRequest] google_cloud_dialogflow_v2_create_conversation_model_evaluation_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV2::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV2::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_location_conversation_model_evaluation(parent, google_cloud_dialogflow_v2_create_conversation_model_evaluation_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v2/{+parent}/evaluations', options)
          command.request_representation = Google::Apis::DialogflowV2::GoogleCloudDialogflowV2CreateConversationModelEvaluationRequest::Representation
          command.request_object = google_cloud_dialogflow_v2_create_conversation_model_evaluation_request_object
          command.response_representation = Google::Apis::DialogflowV2::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::DialogflowV2::GoogleLongrunningOperation
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets an evaluation of conversation model.
        # @param [String] name
        #   Required. The conversation model evaluation resource name. Format: `projects//
        #   conversationModels//evaluations/`
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2ConversationModelEvaluation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2ConversationModelEvaluation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_conversation_model_evaluation(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2/{+name}', options)
          command.response_representation = Google::Apis::DialogflowV2::GoogleCloudDialogflowV2ConversationModelEvaluation::Representation
          command.response_class = Google::Apis::DialogflowV2::GoogleCloudDialogflowV2ConversationModelEvaluation
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists evaluations of a conversation model.
        # @param [String] parent
        #   Required. The conversation model resource name. Format: `projects//
        #   conversationModels/`
        # @param [Fixnum] page_size
        #   Optional. Maximum number of evaluations to return in a single page. By default
        #   100 and at most 1000.
        # @param [String] page_token
        #   Optional. The next_page_token value returned from a previous list request.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2ListConversationModelEvaluationsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2ListConversationModelEvaluationsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_conversation_model_evaluations(parent, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2/{+parent}/evaluations', options)
          command.response_representation = Google::Apis::DialogflowV2::GoogleCloudDialogflowV2ListConversationModelEvaluationsResponse::Representation
          command.response_class = Google::Apis::DialogflowV2::GoogleCloudDialogflowV2ListConversationModelEvaluationsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Clears a suggestion feature from a conversation profile for the given
        # participant role. This method is a [long-running operation](https://cloud.
        # google.com/dialogflow/es/docs/how/long-running-operations). The returned `
        # Operation` type has the following method-specific fields: - `metadata`:
        # ClearSuggestionFeatureConfigOperationMetadata - `response`:
        # ConversationProfile
        # @param [String] conversation_profile
        #   Required. The Conversation Profile to add or update the suggestion feature
        #   config. Format: `projects//locations//conversationProfiles/`.
        # @param [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2ClearSuggestionFeatureConfigRequest] google_cloud_dialogflow_v2_clear_suggestion_feature_config_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV2::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV2::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def clear_project_location_conversation_profile_suggestion_feature_config(conversation_profile, google_cloud_dialogflow_v2_clear_suggestion_feature_config_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v2/{+conversationProfile}:clearSuggestionFeatureConfig', options)
          command.request_representation = Google::Apis::DialogflowV2::GoogleCloudDialogflowV2ClearSuggestionFeatureConfigRequest::Representation
          command.request_object = google_cloud_dialogflow_v2_clear_suggestion_feature_config_request_object
          command.response_representation = Google::Apis::DialogflowV2::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::DialogflowV2::GoogleLongrunningOperation
          command.params['conversationProfile'] = conversation_profile unless conversation_profile.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a conversation profile in the specified project. ConversationProfile.
        # CreateTime and ConversationProfile.UpdateTime aren't populated in the response.
        # You can retrieve them via GetConversationProfile API.
        # @param [String] parent
        #   Required. The project to create a conversation profile for. Format: `projects//
        #   locations/`.
        # @param [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2ConversationProfile] google_cloud_dialogflow_v2_conversation_profile_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2ConversationProfile] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2ConversationProfile]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_location_conversation_profile(parent, google_cloud_dialogflow_v2_conversation_profile_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v2/{+parent}/conversationProfiles', options)
          command.request_representation = Google::Apis::DialogflowV2::GoogleCloudDialogflowV2ConversationProfile::Representation
          command.request_object = google_cloud_dialogflow_v2_conversation_profile_object
          command.response_representation = Google::Apis::DialogflowV2::GoogleCloudDialogflowV2ConversationProfile::Representation
          command.response_class = Google::Apis::DialogflowV2::GoogleCloudDialogflowV2ConversationProfile
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes the specified conversation profile.
        # @param [String] name
        #   Required. The name of the conversation profile to delete. Format: `projects//
        #   locations//conversationProfiles/`.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV2::GoogleProtobufEmpty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV2::GoogleProtobufEmpty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_location_conversation_profile(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v2/{+name}', options)
          command.response_representation = Google::Apis::DialogflowV2::GoogleProtobufEmpty::Representation
          command.response_class = Google::Apis::DialogflowV2::GoogleProtobufEmpty
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Retrieves the specified conversation profile.
        # @param [String] name
        #   Required. The resource name of the conversation profile. Format: `projects//
        #   locations//conversationProfiles/`.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2ConversationProfile] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2ConversationProfile]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_conversation_profile(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2/{+name}', options)
          command.response_representation = Google::Apis::DialogflowV2::GoogleCloudDialogflowV2ConversationProfile::Representation
          command.response_class = Google::Apis::DialogflowV2::GoogleCloudDialogflowV2ConversationProfile
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Returns the list of all conversation profiles in the specified project.
        # @param [String] parent
        #   Required. The project to list all conversation profiles from. Format: `
        #   projects//locations/`.
        # @param [Fixnum] page_size
        #   The maximum number of items to return in a single page. By default 100 and at
        #   most 1000.
        # @param [String] page_token
        #   The next_page_token value returned from a previous list request.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2ListConversationProfilesResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2ListConversationProfilesResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_conversation_profiles(parent, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2/{+parent}/conversationProfiles', options)
          command.response_representation = Google::Apis::DialogflowV2::GoogleCloudDialogflowV2ListConversationProfilesResponse::Representation
          command.response_class = Google::Apis::DialogflowV2::GoogleCloudDialogflowV2ListConversationProfilesResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates the specified conversation profile. ConversationProfile.CreateTime and
        # ConversationProfile.UpdateTime aren't populated in the response. You can
        # retrieve them via GetConversationProfile API.
        # @param [String] name
        #   The unique identifier of this conversation profile. Format: `projects//
        #   locations//conversationProfiles/`.
        # @param [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2ConversationProfile] google_cloud_dialogflow_v2_conversation_profile_object
        # @param [String] update_mask
        #   Required. The mask to control which fields to update.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2ConversationProfile] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2ConversationProfile]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_project_location_conversation_profile(name, google_cloud_dialogflow_v2_conversation_profile_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v2/{+name}', options)
          command.request_representation = Google::Apis::DialogflowV2::GoogleCloudDialogflowV2ConversationProfile::Representation
          command.request_object = google_cloud_dialogflow_v2_conversation_profile_object
          command.response_representation = Google::Apis::DialogflowV2::GoogleCloudDialogflowV2ConversationProfile::Representation
          command.response_class = Google::Apis::DialogflowV2::GoogleCloudDialogflowV2ConversationProfile
          command.params['name'] = name unless name.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Adds or updates a suggestion feature in a conversation profile. If the
        # conversation profile contains the type of suggestion feature for the
        # participant role, it will update it. Otherwise it will insert the suggestion
        # feature. This method is a [long-running operation](https://cloud.google.com/
        # dialogflow/es/docs/how/long-running-operations). The returned `Operation` type
        # has the following method-specific fields: - `metadata`:
        # SetSuggestionFeatureConfigOperationMetadata - `response`: ConversationProfile
        # If a long running operation to add or update suggestion feature config for the
        # same conversation profile, participant role and suggestion feature type exists,
        # please cancel the existing long running operation before sending such request,
        # otherwise the request will be rejected.
        # @param [String] conversation_profile
        #   Required. The Conversation Profile to add or update the suggestion feature
        #   config. Format: `projects//locations//conversationProfiles/`.
        # @param [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2SetSuggestionFeatureConfigRequest] google_cloud_dialogflow_v2_set_suggestion_feature_config_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV2::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV2::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def set_project_location_conversation_profile_suggestion_feature_config(conversation_profile, google_cloud_dialogflow_v2_set_suggestion_feature_config_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v2/{+conversationProfile}:setSuggestionFeatureConfig', options)
          command.request_representation = Google::Apis::DialogflowV2::GoogleCloudDialogflowV2SetSuggestionFeatureConfigRequest::Representation
          command.request_object = google_cloud_dialogflow_v2_set_suggestion_feature_config_request_object
          command.response_representation = Google::Apis::DialogflowV2::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::DialogflowV2::GoogleLongrunningOperation
          command.params['conversationProfile'] = conversation_profile unless conversation_profile.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Completes the specified conversation. Finished conversations are purged from
        # the database after 30 days.
        # @param [String] name
        #   Required. Resource identifier of the conversation to close. Format: `projects//
        #   locations//conversations/`.
        # @param [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2CompleteConversationRequest] google_cloud_dialogflow_v2_complete_conversation_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2Conversation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2Conversation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def complete_project_location_conversation(name, google_cloud_dialogflow_v2_complete_conversation_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v2/{+name}:complete', options)
          command.request_representation = Google::Apis::DialogflowV2::GoogleCloudDialogflowV2CompleteConversationRequest::Representation
          command.request_object = google_cloud_dialogflow_v2_complete_conversation_request_object
          command.response_representation = Google::Apis::DialogflowV2::GoogleCloudDialogflowV2Conversation::Representation
          command.response_class = Google::Apis::DialogflowV2::GoogleCloudDialogflowV2Conversation
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a new conversation. Conversations are auto-completed after 24 hours.
        # Conversation Lifecycle: There are two stages during a conversation: Automated
        # Agent Stage and Assist Stage. For Automated Agent Stage, there will be a
        # dialogflow agent responding to user queries. For Assist Stage, there's no
        # dialogflow agent responding to user queries. But we will provide suggestions
        # which are generated from conversation. If Conversation.conversation_profile is
        # configured for a dialogflow agent, conversation will start from `Automated
        # Agent Stage`, otherwise, it will start from `Assist Stage`. And during `
        # Automated Agent Stage`, once an Intent with Intent.live_agent_handoff is
        # triggered, conversation will transfer to Assist Stage.
        # @param [String] parent
        #   Required. Resource identifier of the project creating the conversation. Format:
        #   `projects//locations/`.
        # @param [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2Conversation] google_cloud_dialogflow_v2_conversation_object
        # @param [String] conversation_id
        #   Optional. Identifier of the conversation. Generally it's auto generated by
        #   Google. Only set it if you cannot wait for the response to return a auto-
        #   generated one to you. The conversation ID must be compliant with the
        #   regression fomula "a-zA-Z*" with the characters length in range of [3,64]. If
        #   the field is provided, the caller is resposible for 1. the uniqueness of the
        #   ID, otherwise the request will be rejected. 2. the consistency for whether to
        #   use custom ID or not under a project to better ensure uniqueness.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2Conversation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2Conversation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_location_conversation(parent, google_cloud_dialogflow_v2_conversation_object = nil, conversation_id: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v2/{+parent}/conversations', options)
          command.request_representation = Google::Apis::DialogflowV2::GoogleCloudDialogflowV2Conversation::Representation
          command.request_object = google_cloud_dialogflow_v2_conversation_object
          command.response_representation = Google::Apis::DialogflowV2::GoogleCloudDialogflowV2Conversation::Representation
          command.response_class = Google::Apis::DialogflowV2::GoogleCloudDialogflowV2Conversation
          command.params['parent'] = parent unless parent.nil?
          command.query['conversationId'] = conversation_id unless conversation_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Retrieves the specific conversation.
        # @param [String] name
        #   Required. The name of the conversation. Format: `projects//locations//
        #   conversations/`.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2Conversation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2Conversation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_conversation(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2/{+name}', options)
          command.response_representation = Google::Apis::DialogflowV2::GoogleCloudDialogflowV2Conversation::Representation
          command.response_class = Google::Apis::DialogflowV2::GoogleCloudDialogflowV2Conversation
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Returns the list of all conversations in the specified project.
        # @param [String] parent
        #   Required. The project from which to list all conversation. Format: `projects//
        #   locations/`.
        # @param [String] filter
        #   A filter expression that filters conversations listed in the response. In
        #   general, the expression must specify the field name, a comparison operator,
        #   and the value to use for filtering: - The value must be a string, a number, or
        #   a boolean. - The comparison operator must be either `=`,`!=`, `>`, or `<`. -
        #   To filter on multiple expressions, separate the expressions with `AND` or `OR`
        #   (omitting both implies `AND`). - For clarity, expressions can be enclosed in
        #   parentheses. Only `lifecycle_state` can be filtered on in this way. For
        #   example, the following expression only returns `COMPLETED` conversations: `
        #   lifecycle_state = "COMPLETED"` For more information about filtering, see [API
        #   Filtering](https://aip.dev/160).
        # @param [Fixnum] page_size
        #   Optional. The maximum number of items to return in a single page. By default
        #   100 and at most 1000.
        # @param [String] page_token
        #   Optional. The next_page_token value returned from a previous list request.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2ListConversationsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2ListConversationsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_conversations(parent, filter: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2/{+parent}/conversations', options)
          command.response_representation = Google::Apis::DialogflowV2::GoogleCloudDialogflowV2ListConversationsResponse::Representation
          command.response_class = Google::Apis::DialogflowV2::GoogleCloudDialogflowV2ListConversationsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists messages that belong to a given conversation. `messages` are ordered by `
        # create_time` in descending order. To fetch updates without duplication, send
        # request with filter `create_time_epoch_microseconds > [first item's
        # create_time of previous request]` and empty page_token.
        # @param [String] parent
        #   Required. The name of the conversation to list messages for. Format: `projects/
        #   /locations//conversations/`
        # @param [String] filter
        #   Optional. Filter on message fields. Currently predicates on `create_time` and `
        #   create_time_epoch_microseconds` are supported. `create_time` only support
        #   milliseconds accuracy. E.g., `create_time_epoch_microseconds >
        #   1551790877964485` or `create_time > 2017-01-15T01:30:15.01Z`. For more
        #   information about filtering, see [API Filtering](https://aip.dev/160).
        # @param [Fixnum] page_size
        #   Optional. The maximum number of items to return in a single page. By default
        #   100 and at most 1000.
        # @param [String] page_token
        #   Optional. The next_page_token value returned from a previous list request.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2ListMessagesResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2ListMessagesResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_conversation_messages(parent, filter: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2/{+parent}/messages', options)
          command.response_representation = Google::Apis::DialogflowV2::GoogleCloudDialogflowV2ListMessagesResponse::Representation
          command.response_class = Google::Apis::DialogflowV2::GoogleCloudDialogflowV2ListMessagesResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Adds a text (chat, for example), or audio (phone recording, for example)
        # message from a participant into the conversation. Note: Always use agent
        # versions for production traffic sent to virtual agents. See [Versions and
        # environments](https://cloud.google.com/dialogflow/es/docs/agents-versions).
        # @param [String] participant
        #   Required. The name of the participant this text comes from. Format: `projects//
        #   locations//conversations//participants/`.
        # @param [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2AnalyzeContentRequest] google_cloud_dialogflow_v2_analyze_content_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2AnalyzeContentResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2AnalyzeContentResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def analyze_project_location_conversation_participant_content(participant, google_cloud_dialogflow_v2_analyze_content_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v2/{+participant}:analyzeContent', options)
          command.request_representation = Google::Apis::DialogflowV2::GoogleCloudDialogflowV2AnalyzeContentRequest::Representation
          command.request_object = google_cloud_dialogflow_v2_analyze_content_request_object
          command.response_representation = Google::Apis::DialogflowV2::GoogleCloudDialogflowV2AnalyzeContentResponse::Representation
          command.response_class = Google::Apis::DialogflowV2::GoogleCloudDialogflowV2AnalyzeContentResponse
          command.params['participant'] = participant unless participant.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a new participant in a conversation.
        # @param [String] parent
        #   Required. Resource identifier of the conversation adding the participant.
        #   Format: `projects//locations//conversations/`.
        # @param [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2Participant] google_cloud_dialogflow_v2_participant_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2Participant] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2Participant]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_location_conversation_participant(parent, google_cloud_dialogflow_v2_participant_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v2/{+parent}/participants', options)
          command.request_representation = Google::Apis::DialogflowV2::GoogleCloudDialogflowV2Participant::Representation
          command.request_object = google_cloud_dialogflow_v2_participant_object
          command.response_representation = Google::Apis::DialogflowV2::GoogleCloudDialogflowV2Participant::Representation
          command.response_class = Google::Apis::DialogflowV2::GoogleCloudDialogflowV2Participant
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Retrieves a conversation participant.
        # @param [String] name
        #   Required. The name of the participant. Format: `projects//locations//
        #   conversations//participants/`.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2Participant] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2Participant]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_conversation_participant(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2/{+name}', options)
          command.response_representation = Google::Apis::DialogflowV2::GoogleCloudDialogflowV2Participant::Representation
          command.response_class = Google::Apis::DialogflowV2::GoogleCloudDialogflowV2Participant
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Returns the list of all participants in the specified conversation.
        # @param [String] parent
        #   Required. The conversation to list all participants from. Format: `projects//
        #   locations//conversations/`.
        # @param [Fixnum] page_size
        #   Optional. The maximum number of items to return in a single page. By default
        #   100 and at most 1000.
        # @param [String] page_token
        #   Optional. The next_page_token value returned from a previous list request.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2ListParticipantsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2ListParticipantsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_conversation_participants(parent, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2/{+parent}/participants', options)
          command.response_representation = Google::Apis::DialogflowV2::GoogleCloudDialogflowV2ListParticipantsResponse::Representation
          command.response_class = Google::Apis::DialogflowV2::GoogleCloudDialogflowV2ListParticipantsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates the specified participant.
        # @param [String] name
        #   Optional. The unique identifier of this participant. Format: `projects//
        #   locations//conversations//participants/`.
        # @param [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2Participant] google_cloud_dialogflow_v2_participant_object
        # @param [String] update_mask
        #   Required. The mask to specify which fields to update.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2Participant] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2Participant]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_project_location_conversation_participant(name, google_cloud_dialogflow_v2_participant_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v2/{+name}', options)
          command.request_representation = Google::Apis::DialogflowV2::GoogleCloudDialogflowV2Participant::Representation
          command.request_object = google_cloud_dialogflow_v2_participant_object
          command.response_representation = Google::Apis::DialogflowV2::GoogleCloudDialogflowV2Participant::Representation
          command.response_class = Google::Apis::DialogflowV2::GoogleCloudDialogflowV2Participant
          command.params['name'] = name unless name.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets suggested articles for a participant based on specific historical
        # messages.
        # @param [String] parent
        #   Required. The name of the participant to fetch suggestion for. Format: `
        #   projects//locations//conversations//participants/`.
        # @param [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2SuggestArticlesRequest] google_cloud_dialogflow_v2_suggest_articles_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2SuggestArticlesResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2SuggestArticlesResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def suggest_project_location_conversation_participant_suggestion_articles(parent, google_cloud_dialogflow_v2_suggest_articles_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v2/{+parent}/suggestions:suggestArticles', options)
          command.request_representation = Google::Apis::DialogflowV2::GoogleCloudDialogflowV2SuggestArticlesRequest::Representation
          command.request_object = google_cloud_dialogflow_v2_suggest_articles_request_object
          command.response_representation = Google::Apis::DialogflowV2::GoogleCloudDialogflowV2SuggestArticlesResponse::Representation
          command.response_class = Google::Apis::DialogflowV2::GoogleCloudDialogflowV2SuggestArticlesResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets suggested faq answers for a participant based on specific historical
        # messages.
        # @param [String] parent
        #   Required. The name of the participant to fetch suggestion for. Format: `
        #   projects//locations//conversations//participants/`.
        # @param [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2SuggestFaqAnswersRequest] google_cloud_dialogflow_v2_suggest_faq_answers_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2SuggestFaqAnswersResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2SuggestFaqAnswersResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def suggest_project_location_conversation_participant_suggestion_faq_answers(parent, google_cloud_dialogflow_v2_suggest_faq_answers_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v2/{+parent}/suggestions:suggestFaqAnswers', options)
          command.request_representation = Google::Apis::DialogflowV2::GoogleCloudDialogflowV2SuggestFaqAnswersRequest::Representation
          command.request_object = google_cloud_dialogflow_v2_suggest_faq_answers_request_object
          command.response_representation = Google::Apis::DialogflowV2::GoogleCloudDialogflowV2SuggestFaqAnswersResponse::Representation
          command.response_class = Google::Apis::DialogflowV2::GoogleCloudDialogflowV2SuggestFaqAnswersResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets smart replies for a participant based on specific historical messages.
        # @param [String] parent
        #   Required. The name of the participant to fetch suggestion for. Format: `
        #   projects//locations//conversations//participants/`.
        # @param [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2SuggestSmartRepliesRequest] google_cloud_dialogflow_v2_suggest_smart_replies_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2SuggestSmartRepliesResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2SuggestSmartRepliesResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def suggest_project_location_conversation_participant_suggestion_smart_replies(parent, google_cloud_dialogflow_v2_suggest_smart_replies_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v2/{+parent}/suggestions:suggestSmartReplies', options)
          command.request_representation = Google::Apis::DialogflowV2::GoogleCloudDialogflowV2SuggestSmartRepliesRequest::Representation
          command.request_object = google_cloud_dialogflow_v2_suggest_smart_replies_request_object
          command.response_representation = Google::Apis::DialogflowV2::GoogleCloudDialogflowV2SuggestSmartRepliesResponse::Representation
          command.response_class = Google::Apis::DialogflowV2::GoogleCloudDialogflowV2SuggestSmartRepliesResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Suggests summary for a conversation based on specific historical messages. The
        # range of the messages to be used for summary can be specified in the request.
        # @param [String] conversation
        #   Required. The conversation to fetch suggestion for. Format: `projects//
        #   locations//conversations/`.
        # @param [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2SuggestConversationSummaryRequest] google_cloud_dialogflow_v2_suggest_conversation_summary_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2SuggestConversationSummaryResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2SuggestConversationSummaryResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def suggest_project_location_conversation_suggestion_conversation_summary(conversation, google_cloud_dialogflow_v2_suggest_conversation_summary_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v2/{+conversation}/suggestions:suggestConversationSummary', options)
          command.request_representation = Google::Apis::DialogflowV2::GoogleCloudDialogflowV2SuggestConversationSummaryRequest::Representation
          command.request_object = google_cloud_dialogflow_v2_suggest_conversation_summary_request_object
          command.response_representation = Google::Apis::DialogflowV2::GoogleCloudDialogflowV2SuggestConversationSummaryResponse::Representation
          command.response_class = Google::Apis::DialogflowV2::GoogleCloudDialogflowV2SuggestConversationSummaryResponse
          command.params['conversation'] = conversation unless conversation.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a knowledge base.
        # @param [String] parent
        #   Required. The project to create a knowledge base for. Format: `projects//
        #   locations/`.
        # @param [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2KnowledgeBase] google_cloud_dialogflow_v2_knowledge_base_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2KnowledgeBase] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2KnowledgeBase]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_location_knowledge_basis(parent, google_cloud_dialogflow_v2_knowledge_base_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v2/{+parent}/knowledgeBases', options)
          command.request_representation = Google::Apis::DialogflowV2::GoogleCloudDialogflowV2KnowledgeBase::Representation
          command.request_object = google_cloud_dialogflow_v2_knowledge_base_object
          command.response_representation = Google::Apis::DialogflowV2::GoogleCloudDialogflowV2KnowledgeBase::Representation
          command.response_class = Google::Apis::DialogflowV2::GoogleCloudDialogflowV2KnowledgeBase
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes the specified knowledge base.
        # @param [String] name
        #   Required. The name of the knowledge base to delete. Format: `projects//
        #   locations//knowledgeBases/`.
        # @param [Boolean] force
        #   Optional. Force deletes the knowledge base. When set to true, any documents in
        #   the knowledge base are also deleted.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV2::GoogleProtobufEmpty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV2::GoogleProtobufEmpty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_location_knowledge_basis(name, force: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v2/{+name}', options)
          command.response_representation = Google::Apis::DialogflowV2::GoogleProtobufEmpty::Representation
          command.response_class = Google::Apis::DialogflowV2::GoogleProtobufEmpty
          command.params['name'] = name unless name.nil?
          command.query['force'] = force unless force.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Retrieves the specified knowledge base.
        # @param [String] name
        #   Required. The name of the knowledge base to retrieve. Format `projects//
        #   locations//knowledgeBases/`.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2KnowledgeBase] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2KnowledgeBase]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_knowledge_basis(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2/{+name}', options)
          command.response_representation = Google::Apis::DialogflowV2::GoogleCloudDialogflowV2KnowledgeBase::Representation
          command.response_class = Google::Apis::DialogflowV2::GoogleCloudDialogflowV2KnowledgeBase
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Returns the list of all knowledge bases of the specified agent.
        # @param [String] parent
        #   Required. The project to list of knowledge bases for. Format: `projects//
        #   locations/`.
        # @param [String] filter
        #   The filter expression used to filter knowledge bases returned by the list
        #   method. The expression has the following syntax: [AND ] ... The following
        #   fields and operators are supported: * display_name with has(:) operator *
        #   language_code with equals(=) operator Examples: * 'language_code=en-us'
        #   matches knowledge bases with en-us language code. * 'display_name:articles'
        #   matches knowledge bases whose display name contains "articles". * '
        #   display_name:"Best Articles"' matches knowledge bases whose display name
        #   contains "Best Articles". * 'language_code=en-gb AND display_name=articles'
        #   matches all knowledge bases whose display name contains "articles" and whose
        #   language code is "en-gb". Note: An empty filter string (i.e. "") is a no-op
        #   and will result in no filtering. For more information about filtering, see [
        #   API Filtering](https://aip.dev/160).
        # @param [Fixnum] page_size
        #   The maximum number of items to return in a single page. By default 10 and at
        #   most 100.
        # @param [String] page_token
        #   The next_page_token value returned from a previous list request.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2ListKnowledgeBasesResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2ListKnowledgeBasesResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_knowledge_bases(parent, filter: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2/{+parent}/knowledgeBases', options)
          command.response_representation = Google::Apis::DialogflowV2::GoogleCloudDialogflowV2ListKnowledgeBasesResponse::Representation
          command.response_class = Google::Apis::DialogflowV2::GoogleCloudDialogflowV2ListKnowledgeBasesResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates the specified knowledge base.
        # @param [String] name
        #   The knowledge base resource name. The name must be empty when creating a
        #   knowledge base. Format: `projects//locations//knowledgeBases/`.
        # @param [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2KnowledgeBase] google_cloud_dialogflow_v2_knowledge_base_object
        # @param [String] update_mask
        #   Optional. Not specified means `update all`. Currently, only `display_name` can
        #   be updated, an InvalidArgument will be returned for attempting to update other
        #   fields.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2KnowledgeBase] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2KnowledgeBase]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_project_location_knowledge_basis(name, google_cloud_dialogflow_v2_knowledge_base_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v2/{+name}', options)
          command.request_representation = Google::Apis::DialogflowV2::GoogleCloudDialogflowV2KnowledgeBase::Representation
          command.request_object = google_cloud_dialogflow_v2_knowledge_base_object
          command.response_representation = Google::Apis::DialogflowV2::GoogleCloudDialogflowV2KnowledgeBase::Representation
          command.response_class = Google::Apis::DialogflowV2::GoogleCloudDialogflowV2KnowledgeBase
          command.params['name'] = name unless name.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a new document. This method is a [long-running operation](https://
        # cloud.google.com/dialogflow/cx/docs/how/long-running-operation). The returned `
        # Operation` type has the following method-specific fields: - `metadata`:
        # KnowledgeOperationMetadata - `response`: Document
        # @param [String] parent
        #   Required. The knowledge base to create a document for. Format: `projects//
        #   locations//knowledgeBases/`.
        # @param [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2Document] google_cloud_dialogflow_v2_document_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV2::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV2::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_location_knowledge_basis_document(parent, google_cloud_dialogflow_v2_document_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v2/{+parent}/documents', options)
          command.request_representation = Google::Apis::DialogflowV2::GoogleCloudDialogflowV2Document::Representation
          command.request_object = google_cloud_dialogflow_v2_document_object
          command.response_representation = Google::Apis::DialogflowV2::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::DialogflowV2::GoogleLongrunningOperation
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes the specified document. This method is a [long-running operation](
        # https://cloud.google.com/dialogflow/cx/docs/how/long-running-operation). The
        # returned `Operation` type has the following method-specific fields: - `
        # metadata`: KnowledgeOperationMetadata - `response`: An [Empty message](https://
        # developers.google.com/protocol-buffers/docs/reference/google.protobuf#empty)
        # @param [String] name
        #   Required. The name of the document to delete. Format: `projects//locations//
        #   knowledgeBases//documents/`.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV2::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV2::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_location_knowledge_basis_document(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v2/{+name}', options)
          command.response_representation = Google::Apis::DialogflowV2::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::DialogflowV2::GoogleLongrunningOperation
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Exports a smart messaging candidate document into the specified destination.
        # This method is a [long-running operation](https://cloud.google.com/dialogflow/
        # cx/docs/how/long-running-operation). The returned `Operation` type has the
        # following method-specific fields: - `metadata`: KnowledgeOperationMetadata - `
        # response`: Document
        # @param [String] name
        #   Required. The name of the document to export. Format: `projects//locations//
        #   knowledgeBases//documents/`.
        # @param [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2ExportDocumentRequest] google_cloud_dialogflow_v2_export_document_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV2::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV2::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def export_project_location_knowledge_basis_document(name, google_cloud_dialogflow_v2_export_document_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v2/{+name}:export', options)
          command.request_representation = Google::Apis::DialogflowV2::GoogleCloudDialogflowV2ExportDocumentRequest::Representation
          command.request_object = google_cloud_dialogflow_v2_export_document_request_object
          command.response_representation = Google::Apis::DialogflowV2::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::DialogflowV2::GoogleLongrunningOperation
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Retrieves the specified document.
        # @param [String] name
        #   Required. The name of the document to retrieve. Format `projects//locations//
        #   knowledgeBases//documents/`.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2Document] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2Document]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_knowledge_basis_document(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2/{+name}', options)
          command.response_representation = Google::Apis::DialogflowV2::GoogleCloudDialogflowV2Document::Representation
          command.response_class = Google::Apis::DialogflowV2::GoogleCloudDialogflowV2Document
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates documents by importing data from external sources. Dialogflow supports
        # up to 350 documents in each request. If you try to import more, Dialogflow
        # will return an error. This method is a [long-running operation](https://cloud.
        # google.com/dialogflow/cx/docs/how/long-running-operation). The returned `
        # Operation` type has the following method-specific fields: - `metadata`:
        # KnowledgeOperationMetadata - `response`: ImportDocumentsResponse
        # @param [String] parent
        #   Required. The knowledge base to import documents into. Format: `projects//
        #   locations//knowledgeBases/`.
        # @param [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2ImportDocumentsRequest] google_cloud_dialogflow_v2_import_documents_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV2::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV2::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def import_project_location_knowledge_basis_document(parent, google_cloud_dialogflow_v2_import_documents_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v2/{+parent}/documents:import', options)
          command.request_representation = Google::Apis::DialogflowV2::GoogleCloudDialogflowV2ImportDocumentsRequest::Representation
          command.request_object = google_cloud_dialogflow_v2_import_documents_request_object
          command.response_representation = Google::Apis::DialogflowV2::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::DialogflowV2::GoogleLongrunningOperation
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Returns the list of all documents of the knowledge base.
        # @param [String] parent
        #   Required. The knowledge base to list all documents for. Format: `projects//
        #   locations//knowledgeBases/`.
        # @param [String] filter
        #   The filter expression used to filter documents returned by the list method.
        #   The expression has the following syntax: [AND ] ... The following fields and
        #   operators are supported: * knowledge_types with has(:) operator * display_name
        #   with has(:) operator * state with equals(=) operator Examples: * "
        #   knowledge_types:FAQ" matches documents with FAQ knowledge type. * "
        #   display_name:customer" matches documents whose display name contains "customer"
        #   . * "state=ACTIVE" matches documents with ACTIVE state. * "knowledge_types:FAQ
        #   AND state=ACTIVE" matches all active FAQ documents. For more information about
        #   filtering, see [API Filtering](https://aip.dev/160).
        # @param [Fixnum] page_size
        #   The maximum number of items to return in a single page. By default 10 and at
        #   most 100.
        # @param [String] page_token
        #   The next_page_token value returned from a previous list request.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2ListDocumentsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2ListDocumentsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_knowledge_basis_documents(parent, filter: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2/{+parent}/documents', options)
          command.response_representation = Google::Apis::DialogflowV2::GoogleCloudDialogflowV2ListDocumentsResponse::Representation
          command.response_class = Google::Apis::DialogflowV2::GoogleCloudDialogflowV2ListDocumentsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates the specified document. This method is a [long-running operation](
        # https://cloud.google.com/dialogflow/cx/docs/how/long-running-operation). The
        # returned `Operation` type has the following method-specific fields: - `
        # metadata`: KnowledgeOperationMetadata - `response`: Document
        # @param [String] name
        #   Optional. The document resource name. The name must be empty when creating a
        #   document. Format: `projects//locations//knowledgeBases//documents/`.
        # @param [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2Document] google_cloud_dialogflow_v2_document_object
        # @param [String] update_mask
        #   Optional. Not specified means `update all`. Currently, only `display_name` can
        #   be updated, an InvalidArgument will be returned for attempting to update other
        #   fields.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV2::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV2::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_project_location_knowledge_basis_document(name, google_cloud_dialogflow_v2_document_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v2/{+name}', options)
          command.request_representation = Google::Apis::DialogflowV2::GoogleCloudDialogflowV2Document::Representation
          command.request_object = google_cloud_dialogflow_v2_document_object
          command.response_representation = Google::Apis::DialogflowV2::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::DialogflowV2::GoogleLongrunningOperation
          command.params['name'] = name unless name.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Reloads the specified document from its specified source, content_uri or
        # content. The previously loaded content of the document will be deleted. Note:
        # Even when the content of the document has not changed, there still may be side
        # effects because of internal implementation changes. This method is a [long-
        # running operation](https://cloud.google.com/dialogflow/cx/docs/how/long-
        # running-operation). The returned `Operation` type has the following method-
        # specific fields: - `metadata`: KnowledgeOperationMetadata - `response`:
        # Document Note: The `projects.agent.knowledgeBases.documents` resource is
        # deprecated; only use `projects.knowledgeBases.documents`.
        # @param [String] name
        #   Required. The name of the document to reload. Format: `projects//locations//
        #   knowledgeBases//documents/`
        # @param [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2ReloadDocumentRequest] google_cloud_dialogflow_v2_reload_document_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV2::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV2::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def reload_project_location_knowledge_basis_document(name, google_cloud_dialogflow_v2_reload_document_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v2/{+name}:reload', options)
          command.request_representation = Google::Apis::DialogflowV2::GoogleCloudDialogflowV2ReloadDocumentRequest::Representation
          command.request_object = google_cloud_dialogflow_v2_reload_document_request_object
          command.response_representation = Google::Apis::DialogflowV2::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::DialogflowV2::GoogleLongrunningOperation
          command.params['name'] = name unless name.nil?
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
        # @yieldparam result [Google::Apis::DialogflowV2::GoogleProtobufEmpty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV2::GoogleProtobufEmpty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def cancel_project_location_operation(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v2/{+name}:cancel', options)
          command.response_representation = Google::Apis::DialogflowV2::GoogleProtobufEmpty::Representation
          command.response_class = Google::Apis::DialogflowV2::GoogleProtobufEmpty
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
        # @yieldparam result [Google::Apis::DialogflowV2::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV2::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_operation(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2/{+name}', options)
          command.response_representation = Google::Apis::DialogflowV2::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::DialogflowV2::GoogleLongrunningOperation
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists operations that match the specified filter in the request. If the server
        # doesn't support this method, it returns `UNIMPLEMENTED`.
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
        # @yieldparam result [Google::Apis::DialogflowV2::GoogleLongrunningListOperationsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV2::GoogleLongrunningListOperationsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_operations(name, filter: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2/{+name}/operations', options)
          command.response_representation = Google::Apis::DialogflowV2::GoogleLongrunningListOperationsResponse::Representation
          command.response_class = Google::Apis::DialogflowV2::GoogleLongrunningListOperationsResponse
          command.params['name'] = name unless name.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
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
        # @yieldparam result [Google::Apis::DialogflowV2::GoogleProtobufEmpty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV2::GoogleProtobufEmpty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def cancel_project_operation(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v2/{+name}:cancel', options)
          command.response_representation = Google::Apis::DialogflowV2::GoogleProtobufEmpty::Representation
          command.response_class = Google::Apis::DialogflowV2::GoogleProtobufEmpty
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
        # @yieldparam result [Google::Apis::DialogflowV2::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV2::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_operation(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2/{+name}', options)
          command.response_representation = Google::Apis::DialogflowV2::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::DialogflowV2::GoogleLongrunningOperation
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists operations that match the specified filter in the request. If the server
        # doesn't support this method, it returns `UNIMPLEMENTED`.
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
        # @yieldparam result [Google::Apis::DialogflowV2::GoogleLongrunningListOperationsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV2::GoogleLongrunningListOperationsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_operations(name, filter: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2/{+name}/operations', options)
          command.response_representation = Google::Apis::DialogflowV2::GoogleLongrunningListOperationsResponse::Representation
          command.response_class = Google::Apis::DialogflowV2::GoogleLongrunningListOperationsResponse
          command.params['name'] = name unless name.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
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
