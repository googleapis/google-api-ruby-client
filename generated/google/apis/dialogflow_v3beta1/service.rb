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
    module DialogflowV3beta1
      # Dialogflow API
      #
      # Builds conversational interfaces (for example, chatbots, and voice-powered
      #  apps and devices).
      #
      # @example
      #    require 'google/apis/dialogflow_v3beta1'
      #
      #    Dialogflow = Google::Apis::DialogflowV3beta1 # Alias the module
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
          super('https://dialogflow.googleapis.com/', '')
          @batch_path = 'batch'
        end
        
        # Creates an agent in the specified location.
        # @param [String] parent
        #   Required. The location to create a agent for. Format: `projects//locations/`.
        # @param [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1Agent] google_cloud_dialogflow_cx_v3beta1_agent_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1Agent] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1Agent]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_location_agent(parent, google_cloud_dialogflow_cx_v3beta1_agent_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v3beta1/{+parent}/agents', options)
          command.request_representation = Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1Agent::Representation
          command.request_object = google_cloud_dialogflow_cx_v3beta1_agent_object
          command.response_representation = Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1Agent::Representation
          command.response_class = Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1Agent
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes the specified agent.
        # @param [String] name
        #   Required. The name of the agent to delete. Format: `projects//locations//
        #   agents/`.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV3beta1::GoogleProtobufEmpty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV3beta1::GoogleProtobufEmpty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_location_agent(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v3beta1/{+name}', options)
          command.response_representation = Google::Apis::DialogflowV3beta1::GoogleProtobufEmpty::Representation
          command.response_class = Google::Apis::DialogflowV3beta1::GoogleProtobufEmpty
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Exports the specified agent to a binary file.
        # @param [String] name
        #   Required. The name of the agent to export. Format: `projects//locations//
        #   agents/`.
        # @param [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1ExportAgentRequest] google_cloud_dialogflow_cx_v3beta1_export_agent_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV3beta1::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV3beta1::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def export_project_location_agent(name, google_cloud_dialogflow_cx_v3beta1_export_agent_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v3beta1/{+name}:export', options)
          command.request_representation = Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1ExportAgentRequest::Representation
          command.request_object = google_cloud_dialogflow_cx_v3beta1_export_agent_request_object
          command.response_representation = Google::Apis::DialogflowV3beta1::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::DialogflowV3beta1::GoogleLongrunningOperation
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Retrieves the specified agent.
        # @param [String] name
        #   Required. The name of the agent. Format: `projects//locations//agents/`.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1Agent] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1Agent]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_agent(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v3beta1/{+name}', options)
          command.response_representation = Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1Agent::Representation
          command.response_class = Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1Agent
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Returns the list of all agents in the specified location.
        # @param [String] parent
        #   Required. The location to list all agents for. Format: `projects//locations/`.
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
        # @yieldparam result [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1ListAgentsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1ListAgentsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_agents(parent, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v3beta1/{+parent}/agents', options)
          command.response_representation = Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1ListAgentsResponse::Representation
          command.response_class = Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1ListAgentsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates the specified agent.
        # @param [String] name
        #   The unique identifier of the agent. Required for the Agents.UpdateAgent method.
        #   Agents.CreateAgent populates the name automatically. Format: `projects//
        #   locations//agents/`.
        # @param [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1Agent] google_cloud_dialogflow_cx_v3beta1_agent_object
        # @param [String] update_mask
        #   The mask to control which fields get updated. If the mask is not present, all
        #   fields will be updated.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1Agent] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1Agent]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_project_location_agent(name, google_cloud_dialogflow_cx_v3beta1_agent_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v3beta1/{+name}', options)
          command.request_representation = Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1Agent::Representation
          command.request_object = google_cloud_dialogflow_cx_v3beta1_agent_object
          command.response_representation = Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1Agent::Representation
          command.response_class = Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1Agent
          command.params['name'] = name unless name.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Restores the specified agent from a binary file. Replaces the current agent
        # with a new one. Note that all existing resources in agent (e.g. intents,
        # entity types, flows) will be removed.
        # @param [String] name
        #   Required. The name of the agent to restore into. Format: `projects//locations//
        #   agents/`.
        # @param [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1RestoreAgentRequest] google_cloud_dialogflow_cx_v3beta1_restore_agent_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV3beta1::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV3beta1::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def restore_project_location_agent(name, google_cloud_dialogflow_cx_v3beta1_restore_agent_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v3beta1/{+name}:restore', options)
          command.request_representation = Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1RestoreAgentRequest::Representation
          command.request_object = google_cloud_dialogflow_cx_v3beta1_restore_agent_request_object
          command.response_representation = Google::Apis::DialogflowV3beta1::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::DialogflowV3beta1::GoogleLongrunningOperation
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates an entity type in the specified agent.
        # @param [String] parent
        #   Required. The agent to create a entity type for. Format: `projects//locations//
        #   agents/`.
        # @param [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1EntityType] google_cloud_dialogflow_cx_v3beta1_entity_type_object
        # @param [String] language_code
        #   The language of the following fields in `entity_type`: * `EntityType.entities.
        #   value` * `EntityType.entities.synonyms` * `EntityType.excluded_phrases.value`
        #   If not specified, the agent's default language is used. [Many languages](https:
        #   //cloud.google.com/dialogflow/docs/reference/language) are supported. Note:
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
        # @yieldparam result [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1EntityType] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1EntityType]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_location_agent_entity_type(parent, google_cloud_dialogflow_cx_v3beta1_entity_type_object = nil, language_code: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v3beta1/{+parent}/entityTypes', options)
          command.request_representation = Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1EntityType::Representation
          command.request_object = google_cloud_dialogflow_cx_v3beta1_entity_type_object
          command.response_representation = Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1EntityType::Representation
          command.response_class = Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1EntityType
          command.params['parent'] = parent unless parent.nil?
          command.query['languageCode'] = language_code unless language_code.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes the specified entity type.
        # @param [String] name
        #   Required. The name of the entity type to delete. Format: `projects//locations//
        #   agents//entityTypes/`.
        # @param [Boolean] force
        #   This field has no effect for entity type not being used. For entity types that
        #   are used by intents or pages: * If `force` is set to false, an error will be
        #   returned with message indicating the referencing resources. * If `force` is
        #   set to true, Dialogflow will remove the entity type, as well as any references
        #   to the entity type (i.e. Page parameter of the entity type will be changed to '
        #   @sys.any' and intent parameter of the entity type will be removed).
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV3beta1::GoogleProtobufEmpty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV3beta1::GoogleProtobufEmpty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_location_agent_entity_type(name, force: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v3beta1/{+name}', options)
          command.response_representation = Google::Apis::DialogflowV3beta1::GoogleProtobufEmpty::Representation
          command.response_class = Google::Apis::DialogflowV3beta1::GoogleProtobufEmpty
          command.params['name'] = name unless name.nil?
          command.query['force'] = force unless force.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Retrieves the specified entity type.
        # @param [String] name
        #   Required. The name of the entity type. Format: `projects//locations//agents//
        #   entityTypes/`.
        # @param [String] language_code
        #   The language to retrieve the entity type for. The following fields are
        #   language dependent: * `EntityType.entities.value` * `EntityType.entities.
        #   synonyms` * `EntityType.excluded_phrases.value` If not specified, the agent's
        #   default language is used. [Many languages](https://cloud.google.com/dialogflow/
        #   docs/reference/language) are supported. Note: languages must be enabled in the
        #   agent before they can be used.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1EntityType] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1EntityType]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_agent_entity_type(name, language_code: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v3beta1/{+name}', options)
          command.response_representation = Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1EntityType::Representation
          command.response_class = Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1EntityType
          command.params['name'] = name unless name.nil?
          command.query['languageCode'] = language_code unless language_code.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Returns the list of all entity types in the specified agent.
        # @param [String] parent
        #   Required. The agent to list all entity types for. Format: `projects//locations/
        #   /agents/`.
        # @param [String] language_code
        #   The language to list entity types for. The following fields are language
        #   dependent: * `EntityType.entities.value` * `EntityType.entities.synonyms` * `
        #   EntityType.excluded_phrases.value` If not specified, the agent's default
        #   language is used. [Many languages](https://cloud.google.com/dialogflow/docs/
        #   reference/language) are supported. Note: languages must be enabled in the
        #   agent before they can be used.
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
        # @yieldparam result [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1ListEntityTypesResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1ListEntityTypesResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_agent_entity_types(parent, language_code: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v3beta1/{+parent}/entityTypes', options)
          command.response_representation = Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1ListEntityTypesResponse::Representation
          command.response_class = Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1ListEntityTypesResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['languageCode'] = language_code unless language_code.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates the specified entity type.
        # @param [String] name
        #   The unique identifier of the entity type. Required for EntityTypes.
        #   UpdateEntityType. Format: `projects//locations//agents//entityTypes/`.
        # @param [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1EntityType] google_cloud_dialogflow_cx_v3beta1_entity_type_object
        # @param [String] language_code
        #   The language of the following fields in `entity_type`: * `EntityType.entities.
        #   value` * `EntityType.entities.synonyms` * `EntityType.excluded_phrases.value`
        #   If not specified, the agent's default language is used. [Many languages](https:
        #   //cloud.google.com/dialogflow/docs/reference/language) are supported. Note:
        #   languages must be enabled in the agent before they can be used.
        # @param [String] update_mask
        #   The mask to control which fields get updated.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1EntityType] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1EntityType]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_project_location_agent_entity_type(name, google_cloud_dialogflow_cx_v3beta1_entity_type_object = nil, language_code: nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v3beta1/{+name}', options)
          command.request_representation = Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1EntityType::Representation
          command.request_object = google_cloud_dialogflow_cx_v3beta1_entity_type_object
          command.response_representation = Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1EntityType::Representation
          command.response_class = Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1EntityType
          command.params['name'] = name unless name.nil?
          command.query['languageCode'] = language_code unless language_code.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates an Environment in the specified Agent.
        # @param [String] parent
        #   Required. The Agent to create an Environment for. Format: `projects//locations/
        #   /agents/`.
        # @param [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1Environment] google_cloud_dialogflow_cx_v3beta1_environment_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV3beta1::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV3beta1::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_location_agent_environment(parent, google_cloud_dialogflow_cx_v3beta1_environment_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v3beta1/{+parent}/environments', options)
          command.request_representation = Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1Environment::Representation
          command.request_object = google_cloud_dialogflow_cx_v3beta1_environment_object
          command.response_representation = Google::Apis::DialogflowV3beta1::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::DialogflowV3beta1::GoogleLongrunningOperation
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes the specified Environment.
        # @param [String] name
        #   Required. The name of the Environment to delete. Format: `projects//locations//
        #   agents//environments/`.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV3beta1::GoogleProtobufEmpty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV3beta1::GoogleProtobufEmpty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_location_agent_environment(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v3beta1/{+name}', options)
          command.response_representation = Google::Apis::DialogflowV3beta1::GoogleProtobufEmpty::Representation
          command.response_class = Google::Apis::DialogflowV3beta1::GoogleProtobufEmpty
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Retrieves the specified Environment.
        # @param [String] name
        #   Required. The name of the Environment. Format: `projects//locations//agents//
        #   environments/`.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1Environment] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1Environment]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_agent_environment(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v3beta1/{+name}', options)
          command.response_representation = Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1Environment::Representation
          command.response_class = Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1Environment
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Returns the list of all environments in the specified Agent.
        # @param [String] parent
        #   Required. The Agent to list all environments for. Format: `projects//locations/
        #   /agents/`.
        # @param [Fixnum] page_size
        #   The maximum number of items to return in a single page. By default 20 and at
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
        # @yieldparam result [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1ListEnvironmentsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1ListEnvironmentsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_agent_environments(parent, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v3beta1/{+parent}/environments', options)
          command.response_representation = Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1ListEnvironmentsResponse::Representation
          command.response_class = Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1ListEnvironmentsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Looks up the history of the specified Environment.
        # @param [String] name
        #   Required. Resource name of the environment to look up the history for. Format:
        #   `projects//locations//agents//environments/`.
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
        # @yieldparam result [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1LookupEnvironmentHistoryResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1LookupEnvironmentHistoryResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def lookup_project_location_agent_environment_environment_history(name, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v3beta1/{+name}:lookupEnvironmentHistory', options)
          command.response_representation = Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1LookupEnvironmentHistoryResponse::Representation
          command.response_class = Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1LookupEnvironmentHistoryResponse
          command.params['name'] = name unless name.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates the specified Environment.
        # @param [String] name
        #   The name of the environment. Format: `projects//locations//agents//
        #   environments/`.
        # @param [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1Environment] google_cloud_dialogflow_cx_v3beta1_environment_object
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
        # @yieldparam result [Google::Apis::DialogflowV3beta1::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV3beta1::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_project_location_agent_environment(name, google_cloud_dialogflow_cx_v3beta1_environment_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v3beta1/{+name}', options)
          command.request_representation = Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1Environment::Representation
          command.request_object = google_cloud_dialogflow_cx_v3beta1_environment_object
          command.response_representation = Google::Apis::DialogflowV3beta1::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::DialogflowV3beta1::GoogleLongrunningOperation
          command.params['name'] = name unless name.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Processes a natural language query and returns structured, actionable data as
        # a result. This method is not idempotent, because it may cause session entity
        # types to be updated, which in turn might affect results of future queries.
        # @param [String] session
        #   Required. The name of the session this query is sent to. Format: `projects//
        #   locations//agents//sessions/` or `projects//locations//agents//environments//
        #   sessions/`. If `Environment ID` is not specified, we assume default 'draft'
        #   environment. It's up to the API caller to choose an appropriate `Session ID`.
        #   It can be a random number or some type of session identifiers (preferably
        #   hashed). The length of the `Session ID` must not exceed 36 characters. For
        #   more information, see the [sessions guide](https://cloud.google.com/dialogflow/
        #   cx/docs/concept/session).
        # @param [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1DetectIntentRequest] google_cloud_dialogflow_cx_v3beta1_detect_intent_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1DetectIntentResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1DetectIntentResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def detect_project_location_agent_environment_session_intent(session, google_cloud_dialogflow_cx_v3beta1_detect_intent_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v3beta1/{+session}:detectIntent', options)
          command.request_representation = Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1DetectIntentRequest::Representation
          command.request_object = google_cloud_dialogflow_cx_v3beta1_detect_intent_request_object
          command.response_representation = Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1DetectIntentResponse::Representation
          command.response_class = Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1DetectIntentResponse
          command.params['session'] = session unless session.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Fulfills a matched intent returned by MatchIntent. Must be called after
        # MatchIntent, with input from MatchIntentResponse. Otherwise, the behavior is
        # undefined.
        # @param [String] session
        #   Required. The name of the session this query is sent to. Format: `projects//
        #   locations//agents//sessions/` or `projects//locations//agents//environments//
        #   sessions/`. If `Environment ID` is not specified, we assume default 'draft'
        #   environment. It's up to the API caller to choose an appropriate `Session ID`.
        #   It can be a random number or some type of session identifiers (preferably
        #   hashed). The length of the `Session ID` must not exceed 36 characters. For
        #   more information, see the [sessions guide](https://cloud.google.com/dialogflow/
        #   cx/docs/concept/session).
        # @param [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1FulfillIntentRequest] google_cloud_dialogflow_cx_v3beta1_fulfill_intent_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1FulfillIntentResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1FulfillIntentResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def fulfill_project_location_agent_environment_session_intent(session, google_cloud_dialogflow_cx_v3beta1_fulfill_intent_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v3beta1/{+session}:fulfillIntent', options)
          command.request_representation = Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1FulfillIntentRequest::Representation
          command.request_object = google_cloud_dialogflow_cx_v3beta1_fulfill_intent_request_object
          command.response_representation = Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1FulfillIntentResponse::Representation
          command.response_class = Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1FulfillIntentResponse
          command.params['session'] = session unless session.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Returns preliminary intent match results, doesn't change the session status.
        # @param [String] session
        #   Required. The name of the session this query is sent to. Format: `projects//
        #   locations//agents//sessions/` or `projects//locations//agents//environments//
        #   sessions/`. If `Environment ID` is not specified, we assume default 'draft'
        #   environment. It's up to the API caller to choose an appropriate `Session ID`.
        #   It can be a random number or some type of session identifiers (preferably
        #   hashed). The length of the `Session ID` must not exceed 36 characters. For
        #   more information, see the [sessions guide](https://cloud.google.com/dialogflow/
        #   cx/docs/concept/session).
        # @param [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1MatchIntentRequest] google_cloud_dialogflow_cx_v3beta1_match_intent_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1MatchIntentResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1MatchIntentResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def match_project_location_agent_environment_session_intent(session, google_cloud_dialogflow_cx_v3beta1_match_intent_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v3beta1/{+session}:matchIntent', options)
          command.request_representation = Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1MatchIntentRequest::Representation
          command.request_object = google_cloud_dialogflow_cx_v3beta1_match_intent_request_object
          command.response_representation = Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1MatchIntentResponse::Representation
          command.response_class = Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1MatchIntentResponse
          command.params['session'] = session unless session.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a session entity type. If the specified session entity type already
        # exists, overrides the session entity type.
        # @param [String] parent
        #   Required. The session to create a session entity type for. Format: `projects//
        #   locations//agents//sessions/` or `projects//locations//agents//environments//
        #   sessions/`. If `Environment ID` is not specified, we assume default 'draft'
        #   environment.
        # @param [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1SessionEntityType] google_cloud_dialogflow_cx_v3beta1_session_entity_type_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1SessionEntityType] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1SessionEntityType]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_location_agent_environment_session_entity_type(parent, google_cloud_dialogflow_cx_v3beta1_session_entity_type_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v3beta1/{+parent}/entityTypes', options)
          command.request_representation = Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1SessionEntityType::Representation
          command.request_object = google_cloud_dialogflow_cx_v3beta1_session_entity_type_object
          command.response_representation = Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1SessionEntityType::Representation
          command.response_class = Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1SessionEntityType
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes the specified session entity type.
        # @param [String] name
        #   Required. The name of the session entity type to delete. Format: `projects//
        #   locations//agents//sessions//entityTypes/` or `projects//locations//agents//
        #   environments//sessions//entityTypes/`. If `Environment ID` is not specified,
        #   we assume default 'draft' environment.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV3beta1::GoogleProtobufEmpty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV3beta1::GoogleProtobufEmpty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_location_agent_environment_session_entity_type(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v3beta1/{+name}', options)
          command.response_representation = Google::Apis::DialogflowV3beta1::GoogleProtobufEmpty::Representation
          command.response_class = Google::Apis::DialogflowV3beta1::GoogleProtobufEmpty
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Retrieves the specified session entity type.
        # @param [String] name
        #   Required. The name of the session entity type. Format: `projects//locations//
        #   agents//sessions//entityTypes/` or `projects//locations//agents//environments//
        #   sessions//entityTypes/`. If `Environment ID` is not specified, we assume
        #   default 'draft' environment.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1SessionEntityType] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1SessionEntityType]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_agent_environment_session_entity_type(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v3beta1/{+name}', options)
          command.response_representation = Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1SessionEntityType::Representation
          command.response_class = Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1SessionEntityType
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Returns the list of all session entity types in the specified session.
        # @param [String] parent
        #   Required. The session to list all session entity types from. Format: `projects/
        #   /locations//agents//sessions/` or `projects//locations//agents//environments//
        #   sessions/`. If `Environment ID` is not specified, we assume default 'draft'
        #   environment.
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
        # @yieldparam result [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1ListSessionEntityTypesResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1ListSessionEntityTypesResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_agent_environment_session_entity_types(parent, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v3beta1/{+parent}/entityTypes', options)
          command.response_representation = Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1ListSessionEntityTypesResponse::Representation
          command.response_class = Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1ListSessionEntityTypesResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates the specified session entity type.
        # @param [String] name
        #   Required. The unique identifier of the session entity type. Format: `projects//
        #   locations//agents//sessions//entityTypes/` or `projects//locations//agents//
        #   environments//sessions//entityTypes/`. If `Environment ID` is not specified,
        #   we assume default 'draft' environment.
        # @param [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1SessionEntityType] google_cloud_dialogflow_cx_v3beta1_session_entity_type_object
        # @param [String] update_mask
        #   The mask to control which fields get updated.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1SessionEntityType] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1SessionEntityType]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_project_location_agent_environment_session_entity_type(name, google_cloud_dialogflow_cx_v3beta1_session_entity_type_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v3beta1/{+name}', options)
          command.request_representation = Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1SessionEntityType::Representation
          command.request_object = google_cloud_dialogflow_cx_v3beta1_session_entity_type_object
          command.response_representation = Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1SessionEntityType::Representation
          command.response_class = Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1SessionEntityType
          command.params['name'] = name unless name.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a flow in the specified agent.
        # @param [String] parent
        #   Required. The agent to create a flow for. Format: `projects//locations//agents/
        #   `.
        # @param [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1Flow] google_cloud_dialogflow_cx_v3beta1_flow_object
        # @param [String] language_code
        #   The language of the following fields in `flow`: * `Flow.event_handlers.
        #   trigger_fulfillment.messages` * `Flow.transition_routes.trigger_fulfillment.
        #   messages` If not specified, the agent's default language is used. [Many
        #   languages](https://cloud.google.com/dialogflow/docs/reference/language) are
        #   supported. Note: languages must be enabled in the agent before they can be
        #   used.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1Flow] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1Flow]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_location_agent_flow(parent, google_cloud_dialogflow_cx_v3beta1_flow_object = nil, language_code: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v3beta1/{+parent}/flows', options)
          command.request_representation = Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1Flow::Representation
          command.request_object = google_cloud_dialogflow_cx_v3beta1_flow_object
          command.response_representation = Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1Flow::Representation
          command.response_class = Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1Flow
          command.params['parent'] = parent unless parent.nil?
          command.query['languageCode'] = language_code unless language_code.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes a specified flow.
        # @param [String] name
        #   Required. The name of the flow to delete. Format: `projects//locations//agents/
        #   /flows/`.
        # @param [Boolean] force
        #   This field has no effect for flows with no incoming transitions. For flows
        #   with incoming transitions: * If `force` is set to false, an error will be
        #   returned with message indicating the incoming transitions. * If `force` is set
        #   to true, Dialogflow will remove the flow, as well as any transitions to the
        #   flow (i.e. Target flow in event handlers or Target flow in transition routes
        #   that point to this flow will be cleared).
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV3beta1::GoogleProtobufEmpty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV3beta1::GoogleProtobufEmpty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_location_agent_flow(name, force: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v3beta1/{+name}', options)
          command.response_representation = Google::Apis::DialogflowV3beta1::GoogleProtobufEmpty::Representation
          command.response_class = Google::Apis::DialogflowV3beta1::GoogleProtobufEmpty
          command.params['name'] = name unless name.nil?
          command.query['force'] = force unless force.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Retrieves the specified flow.
        # @param [String] name
        #   Required. The name of the flow to get. Format: `projects//locations//agents//
        #   flows/`.
        # @param [String] language_code
        #   The language to retrieve the flow for. The following fields are language
        #   dependent: * `Flow.event_handlers.trigger_fulfillment.messages` * `Flow.
        #   transition_routes.trigger_fulfillment.messages` If not specified, the agent's
        #   default language is used. [Many languages](https://cloud.google.com/dialogflow/
        #   docs/reference/language) are supported. Note: languages must be enabled in the
        #   agent before they can be used.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1Flow] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1Flow]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_agent_flow(name, language_code: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v3beta1/{+name}', options)
          command.response_representation = Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1Flow::Representation
          command.response_class = Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1Flow
          command.params['name'] = name unless name.nil?
          command.query['languageCode'] = language_code unless language_code.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Returns the list of all flows in the specified agent.
        # @param [String] parent
        #   Required. The agent containing the flows. Format: `projects//locations//agents/
        #   `.
        # @param [String] language_code
        #   The language to list flows for. The following fields are language dependent: *
        #   `Flow.event_handlers.trigger_fulfillment.messages` * `Flow.transition_routes.
        #   trigger_fulfillment.messages` If not specified, the agent's default language
        #   is used. [Many languages](https://cloud.google.com/dialogflow/docs/reference/
        #   language) are supported. Note: languages must be enabled in the agent before
        #   they can be used.
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
        # @yieldparam result [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1ListFlowsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1ListFlowsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_agent_flows(parent, language_code: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v3beta1/{+parent}/flows', options)
          command.response_representation = Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1ListFlowsResponse::Representation
          command.response_class = Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1ListFlowsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['languageCode'] = language_code unless language_code.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates the specified flow.
        # @param [String] name
        #   The unique identifier of the flow. Format: `projects//locations//agents//flows/
        #   `.
        # @param [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1Flow] google_cloud_dialogflow_cx_v3beta1_flow_object
        # @param [String] language_code
        #   The language of the following fields in `flow`: * `Flow.event_handlers.
        #   trigger_fulfillment.messages` * `Flow.transition_routes.trigger_fulfillment.
        #   messages` If not specified, the agent's default language is used. [Many
        #   languages](https://cloud.google.com/dialogflow/docs/reference/language) are
        #   supported. Note: languages must be enabled in the agent before they can be
        #   used.
        # @param [String] update_mask
        #   Required. The mask to control which fields get updated. If `update_mask` is
        #   not specified, an error will be returned.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1Flow] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1Flow]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_project_location_agent_flow(name, google_cloud_dialogflow_cx_v3beta1_flow_object = nil, language_code: nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v3beta1/{+name}', options)
          command.request_representation = Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1Flow::Representation
          command.request_object = google_cloud_dialogflow_cx_v3beta1_flow_object
          command.response_representation = Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1Flow::Representation
          command.response_class = Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1Flow
          command.params['name'] = name unless name.nil?
          command.query['languageCode'] = language_code unless language_code.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Trains the specified flow. Note that only the flow in 'draft' environment is
        # trained.
        # @param [String] name
        #   Required. The flow to train. Format: `projects//locations//agents//flows/`.
        # @param [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1TrainFlowRequest] google_cloud_dialogflow_cx_v3beta1_train_flow_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV3beta1::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV3beta1::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def train_project_location_agent_flow(name, google_cloud_dialogflow_cx_v3beta1_train_flow_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v3beta1/{+name}:train', options)
          command.request_representation = Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1TrainFlowRequest::Representation
          command.request_object = google_cloud_dialogflow_cx_v3beta1_train_flow_request_object
          command.response_representation = Google::Apis::DialogflowV3beta1::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::DialogflowV3beta1::GoogleLongrunningOperation
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a page in the specified flow.
        # @param [String] parent
        #   Required. The flow to create a page for. Format: `projects//locations//agents//
        #   flows/`.
        # @param [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1Page] google_cloud_dialogflow_cx_v3beta1_page_object
        # @param [String] language_code
        #   The language of the following fields in `page`: * `Page.entry_fulfillment.
        #   messages` * `Page.form.parameters.fill_behavior.initial_prompt_fulfillment.
        #   messages` * `Page.form.parameters.fill_behavior.reprompt_event_handlers.
        #   messages` * `Page.transition_routes.trigger_fulfillment.messages` * `Page.
        #   transition_route_groups.transition_routes.trigger_fulfillment.messages` If not
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
        # @yieldparam result [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1Page] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1Page]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_location_agent_flow_page(parent, google_cloud_dialogflow_cx_v3beta1_page_object = nil, language_code: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v3beta1/{+parent}/pages', options)
          command.request_representation = Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1Page::Representation
          command.request_object = google_cloud_dialogflow_cx_v3beta1_page_object
          command.response_representation = Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1Page::Representation
          command.response_class = Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1Page
          command.params['parent'] = parent unless parent.nil?
          command.query['languageCode'] = language_code unless language_code.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes the specified page.
        # @param [String] name
        #   Required. The name of the page to delete. Format: `projects//locations//agents/
        #   /Flows//pages/`.
        # @param [Boolean] force
        #   This field has no effect for pages with no incoming transitions. For pages
        #   with incoming transitions: * If `force` is set to false, an error will be
        #   returned with message indicating the incoming transitions. * If `force` is set
        #   to true, Dialogflow will remove the page, as well as any transitions to the
        #   page (i.e. Target page in event handlers or Target page in transition routes
        #   that point to this page will be cleared).
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV3beta1::GoogleProtobufEmpty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV3beta1::GoogleProtobufEmpty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_location_agent_flow_page(name, force: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v3beta1/{+name}', options)
          command.response_representation = Google::Apis::DialogflowV3beta1::GoogleProtobufEmpty::Representation
          command.response_class = Google::Apis::DialogflowV3beta1::GoogleProtobufEmpty
          command.params['name'] = name unless name.nil?
          command.query['force'] = force unless force.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Retrieves the specified page.
        # @param [String] name
        #   Required. The name of the page. Format: `projects//locations//agents//flows//
        #   pages/`.
        # @param [String] language_code
        #   The language to retrieve the page for. The following fields are language
        #   dependent: * `Page.entry_fulfillment.messages` * `Page.form.parameters.
        #   fill_behavior.initial_prompt_fulfillment.messages` * `Page.form.parameters.
        #   fill_behavior.reprompt_event_handlers.messages` * `Page.transition_routes.
        #   trigger_fulfillment.messages` * `Page.transition_route_groups.
        #   transition_routes.trigger_fulfillment.messages` If not specified, the agent's
        #   default language is used. [Many languages](https://cloud.google.com/dialogflow/
        #   docs/reference/language) are supported. Note: languages must be enabled in the
        #   agent before they can be used.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1Page] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1Page]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_agent_flow_page(name, language_code: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v3beta1/{+name}', options)
          command.response_representation = Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1Page::Representation
          command.response_class = Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1Page
          command.params['name'] = name unless name.nil?
          command.query['languageCode'] = language_code unless language_code.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Returns the list of all pages in the specified flow.
        # @param [String] parent
        #   Required. The flow to list all pages for. Format: `projects//locations//agents/
        #   /flows/`.
        # @param [String] language_code
        #   The language to list pages for. The following fields are language dependent: *
        #   `Page.entry_fulfillment.messages` * `Page.form.parameters.fill_behavior.
        #   initial_prompt_fulfillment.messages` * `Page.form.parameters.fill_behavior.
        #   reprompt_event_handlers.messages` * `Page.transition_routes.
        #   trigger_fulfillment.messages` * `Page.transition_route_groups.
        #   transition_routes.trigger_fulfillment.messages` If not specified, the agent's
        #   default language is used. [Many languages](https://cloud.google.com/dialogflow/
        #   docs/reference/language) are supported. Note: languages must be enabled in the
        #   agent before they can be used.
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
        # @yieldparam result [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1ListPagesResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1ListPagesResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_agent_flow_pages(parent, language_code: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v3beta1/{+parent}/pages', options)
          command.response_representation = Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1ListPagesResponse::Representation
          command.response_class = Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1ListPagesResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['languageCode'] = language_code unless language_code.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates the specified page.
        # @param [String] name
        #   The unique identifier of the page. Required for the Pages.UpdatePage method.
        #   Pages.CreatePage populates the name automatically. Format: `projects//
        #   locations//agents//flows//pages/`.
        # @param [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1Page] google_cloud_dialogflow_cx_v3beta1_page_object
        # @param [String] language_code
        #   The language of the following fields in `page`: * `Page.entry_fulfillment.
        #   messages` * `Page.form.parameters.fill_behavior.initial_prompt_fulfillment.
        #   messages` * `Page.form.parameters.fill_behavior.reprompt_event_handlers.
        #   messages` * `Page.transition_routes.trigger_fulfillment.messages` * `Page.
        #   transition_route_groups.transition_routes.trigger_fulfillment.messages` If not
        #   specified, the agent's default language is used. [Many languages](https://
        #   cloud.google.com/dialogflow/docs/reference/language) are supported. Note:
        #   languages must be enabled in the agent before they can be used.
        # @param [String] update_mask
        #   The mask to control which fields get updated. If the mask is not present, all
        #   fields will be updated.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1Page] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1Page]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_project_location_agent_flow_page(name, google_cloud_dialogflow_cx_v3beta1_page_object = nil, language_code: nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v3beta1/{+name}', options)
          command.request_representation = Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1Page::Representation
          command.request_object = google_cloud_dialogflow_cx_v3beta1_page_object
          command.response_representation = Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1Page::Representation
          command.response_class = Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1Page
          command.params['name'] = name unless name.nil?
          command.query['languageCode'] = language_code unless language_code.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates an TransitionRouteGroup in the specified flow.
        # @param [String] parent
        #   Required. The flow to create an TransitionRouteGroup for. Format: `projects//
        #   locations//agents//flows/`.
        # @param [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1TransitionRouteGroup] google_cloud_dialogflow_cx_v3beta1_transition_route_group_object
        # @param [String] language_code
        #   The language to list transition route groups for. The field `messages` in
        #   TransitionRoute is language dependent. If not specified, the agent's default
        #   language is used. [Many languages](https://cloud.google.com/dialogflow/docs/
        #   reference/language) are supported. Note: languages must be enabled in the
        #   agent before they can be used.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1TransitionRouteGroup] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1TransitionRouteGroup]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_location_agent_flow_transition_route_group(parent, google_cloud_dialogflow_cx_v3beta1_transition_route_group_object = nil, language_code: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v3beta1/{+parent}/transitionRouteGroups', options)
          command.request_representation = Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1TransitionRouteGroup::Representation
          command.request_object = google_cloud_dialogflow_cx_v3beta1_transition_route_group_object
          command.response_representation = Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1TransitionRouteGroup::Representation
          command.response_class = Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1TransitionRouteGroup
          command.params['parent'] = parent unless parent.nil?
          command.query['languageCode'] = language_code unless language_code.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes the specified TransitionRouteGroup.
        # @param [String] name
        #   Required. The name of the TransitionRouteGroup to delete. Format: `projects//
        #   locations//agents//flows//transitionRouteGroups/`.
        # @param [Boolean] force
        #   This field has no effect for transition route group that no page is using. If
        #   the transition route group is referenced by any page: * If `force` is set to
        #   false, an error will be returned with message indicating pages that reference
        #   the transition route group. * If `force` is set to true, Dialogflow will
        #   remove the transition route group, as well as any reference to it.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV3beta1::GoogleProtobufEmpty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV3beta1::GoogleProtobufEmpty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_location_agent_flow_transition_route_group(name, force: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v3beta1/{+name}', options)
          command.response_representation = Google::Apis::DialogflowV3beta1::GoogleProtobufEmpty::Representation
          command.response_class = Google::Apis::DialogflowV3beta1::GoogleProtobufEmpty
          command.params['name'] = name unless name.nil?
          command.query['force'] = force unless force.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Retrieves the specified TransitionRouteGroup.
        # @param [String] name
        #   Required. The name of the TransitionRouteGroup. Format: `projects//locations//
        #   agents//flows//transitionRouteGroups/`.
        # @param [String] language_code
        #   The language to list transition route groups for. The field `messages` in
        #   TransitionRoute is language dependent. If not specified, the agent's default
        #   language is used. [Many languages](https://cloud.google.com/dialogflow/docs/
        #   reference/language) are supported. Note: languages must be enabled in the
        #   agent before they can be used.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1TransitionRouteGroup] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1TransitionRouteGroup]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_agent_flow_transition_route_group(name, language_code: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v3beta1/{+name}', options)
          command.response_representation = Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1TransitionRouteGroup::Representation
          command.response_class = Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1TransitionRouteGroup
          command.params['name'] = name unless name.nil?
          command.query['languageCode'] = language_code unless language_code.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Returns the list of all transition route groups in the specified flow.
        # @param [String] parent
        #   Required. The flow to list all transition route groups for. Format: `projects//
        #   locations//agents//flows/`.
        # @param [String] language_code
        #   The language to list transition route groups for. The field `messages` in
        #   TransitionRoute is language dependent. If not specified, the agent's default
        #   language is used. [Many languages](https://cloud.google.com/dialogflow/docs/
        #   reference/language) are supported. Note: languages must be enabled in the
        #   agent before they can be used.
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
        # @yieldparam result [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1ListTransitionRouteGroupsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1ListTransitionRouteGroupsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_agent_flow_transition_route_groups(parent, language_code: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v3beta1/{+parent}/transitionRouteGroups', options)
          command.response_representation = Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1ListTransitionRouteGroupsResponse::Representation
          command.response_class = Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1ListTransitionRouteGroupsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['languageCode'] = language_code unless language_code.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates the specified TransitionRouteGroup.
        # @param [String] name
        #   The unique identifier of the transition route group. TransitionRouteGroups.
        #   CreateTransitionRouteGroup populates the name automatically. Format: `projects/
        #   /locations//agents//flows//transitionRouteGroups/`.
        # @param [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1TransitionRouteGroup] google_cloud_dialogflow_cx_v3beta1_transition_route_group_object
        # @param [String] language_code
        #   The language to list transition route groups for. The field `messages` in
        #   TransitionRoute is language dependent. If not specified, the agent's default
        #   language is used. [Many languages](https://cloud.google.com/dialogflow/docs/
        #   reference/language) are supported. Note: languages must be enabled in the
        #   agent before they can be used.
        # @param [String] update_mask
        #   The mask to control which fields get updated.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1TransitionRouteGroup] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1TransitionRouteGroup]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_project_location_agent_flow_transition_route_group(name, google_cloud_dialogflow_cx_v3beta1_transition_route_group_object = nil, language_code: nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v3beta1/{+name}', options)
          command.request_representation = Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1TransitionRouteGroup::Representation
          command.request_object = google_cloud_dialogflow_cx_v3beta1_transition_route_group_object
          command.response_representation = Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1TransitionRouteGroup::Representation
          command.response_class = Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1TransitionRouteGroup
          command.params['name'] = name unless name.nil?
          command.query['languageCode'] = language_code unless language_code.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a Version in the specified Flow.
        # @param [String] parent
        #   Required. The Flow to create an Version for. Format: `projects//locations//
        #   agents//flows/`.
        # @param [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1Version] google_cloud_dialogflow_cx_v3beta1_version_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV3beta1::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV3beta1::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_location_agent_flow_version(parent, google_cloud_dialogflow_cx_v3beta1_version_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v3beta1/{+parent}/versions', options)
          command.request_representation = Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1Version::Representation
          command.request_object = google_cloud_dialogflow_cx_v3beta1_version_object
          command.response_representation = Google::Apis::DialogflowV3beta1::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::DialogflowV3beta1::GoogleLongrunningOperation
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes the specified Version.
        # @param [String] name
        #   Required. The name of the Version to delete. Format: `projects//locations//
        #   agents//flows//versions/`.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV3beta1::GoogleProtobufEmpty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV3beta1::GoogleProtobufEmpty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_location_agent_flow_version(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v3beta1/{+name}', options)
          command.response_representation = Google::Apis::DialogflowV3beta1::GoogleProtobufEmpty::Representation
          command.response_class = Google::Apis::DialogflowV3beta1::GoogleProtobufEmpty
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Retrieves the specified Version.
        # @param [String] name
        #   Required. The name of the Version. Format: `projects//locations//agents//flows/
        #   /versions/`.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1Version] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1Version]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_agent_flow_version(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v3beta1/{+name}', options)
          command.response_representation = Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1Version::Representation
          command.response_class = Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1Version
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Returns the list of all versions in the specified Flow.
        # @param [String] parent
        #   Required. The Flow to list all versions for. Format: `projects//locations//
        #   agents//flows/`.
        # @param [Fixnum] page_size
        #   The maximum number of items to return in a single page. By default 20 and at
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
        # @yieldparam result [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1ListVersionsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1ListVersionsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_agent_flow_versions(parent, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v3beta1/{+parent}/versions', options)
          command.response_representation = Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1ListVersionsResponse::Representation
          command.response_class = Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1ListVersionsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Loads a specified version to draft version.
        # @param [String] name
        #   Required. The Version to be loaded to draft version. Format: `projects//
        #   locations//agents//flows//versions/`.
        # @param [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1LoadVersionRequest] google_cloud_dialogflow_cx_v3beta1_load_version_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV3beta1::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV3beta1::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def load_project_location_agent_flow_version(name, google_cloud_dialogflow_cx_v3beta1_load_version_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v3beta1/{+name}:load', options)
          command.request_representation = Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1LoadVersionRequest::Representation
          command.request_object = google_cloud_dialogflow_cx_v3beta1_load_version_request_object
          command.response_representation = Google::Apis::DialogflowV3beta1::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::DialogflowV3beta1::GoogleLongrunningOperation
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates the specified Version.
        # @param [String] name
        #   Format: projects//locations//agents//flows//versions/. Version ID is a self-
        #   increasing number generated by Dialogflow upon version creation.
        # @param [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1Version] google_cloud_dialogflow_cx_v3beta1_version_object
        # @param [String] update_mask
        #   Required. The mask to control which fields get updated. Currently only `
        #   description` and `display_name` can be updated.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1Version] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1Version]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_project_location_agent_flow_version(name, google_cloud_dialogflow_cx_v3beta1_version_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v3beta1/{+name}', options)
          command.request_representation = Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1Version::Representation
          command.request_object = google_cloud_dialogflow_cx_v3beta1_version_object
          command.response_representation = Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1Version::Representation
          command.response_class = Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1Version
          command.params['name'] = name unless name.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates an intent in the specified agent.
        # @param [String] parent
        #   Required. The agent to create an intent for. Format: `projects//locations//
        #   agents/`.
        # @param [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1Intent] google_cloud_dialogflow_cx_v3beta1_intent_object
        # @param [String] language_code
        #   The language of the following fields in `intent`: * `Intent.training_phrases.
        #   parts.text` If not specified, the agent's default language is used. [Many
        #   languages](https://cloud.google.com/dialogflow/docs/reference/language) are
        #   supported. Note: languages must be enabled in the agent before they can be
        #   used.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1Intent] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1Intent]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_location_agent_intent(parent, google_cloud_dialogflow_cx_v3beta1_intent_object = nil, language_code: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v3beta1/{+parent}/intents', options)
          command.request_representation = Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1Intent::Representation
          command.request_object = google_cloud_dialogflow_cx_v3beta1_intent_object
          command.response_representation = Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1Intent::Representation
          command.response_class = Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1Intent
          command.params['parent'] = parent unless parent.nil?
          command.query['languageCode'] = language_code unless language_code.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes the specified intent.
        # @param [String] name
        #   Required. The name of the intent to delete. Format: `projects//locations//
        #   agents//intents/`.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV3beta1::GoogleProtobufEmpty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV3beta1::GoogleProtobufEmpty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_location_agent_intent(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v3beta1/{+name}', options)
          command.response_representation = Google::Apis::DialogflowV3beta1::GoogleProtobufEmpty::Representation
          command.response_class = Google::Apis::DialogflowV3beta1::GoogleProtobufEmpty
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Retrieves the specified intent.
        # @param [String] name
        #   Required. The name of the intent. Format: `projects//locations//agents//
        #   intents/`.
        # @param [String] language_code
        #   The language to retrieve the intent for. The following fields are language
        #   dependent: * `Intent.training_phrases.parts.text` If not specified, the agent'
        #   s default language is used. [Many languages](https://cloud.google.com/
        #   dialogflow/docs/reference/language) are supported. Note: languages must be
        #   enabled in the agent before they can be used.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1Intent] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1Intent]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_agent_intent(name, language_code: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v3beta1/{+name}', options)
          command.response_representation = Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1Intent::Representation
          command.response_class = Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1Intent
          command.params['name'] = name unless name.nil?
          command.query['languageCode'] = language_code unless language_code.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Returns the list of all intents in the specified agent.
        # @param [String] parent
        #   Required. The agent to list all intents for. Format: `projects//locations//
        #   agents/`.
        # @param [String] intent_view
        #   The resource view to apply to the returned intent.
        # @param [String] language_code
        #   The language to list intents for. The following fields are language dependent:
        #   * `Intent.training_phrases.parts.text` If not specified, the agent's default
        #   language is used. [Many languages](https://cloud.google.com/dialogflow/docs/
        #   reference/language) are supported. Note: languages must be enabled in the
        #   agent before they can be used.
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
        # @yieldparam result [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1ListIntentsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1ListIntentsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_agent_intents(parent, intent_view: nil, language_code: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v3beta1/{+parent}/intents', options)
          command.response_representation = Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1ListIntentsResponse::Representation
          command.response_class = Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1ListIntentsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['intentView'] = intent_view unless intent_view.nil?
          command.query['languageCode'] = language_code unless language_code.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates the specified intent.
        # @param [String] name
        #   The unique identifier of the intent. Required for the Intents.UpdateIntent
        #   method. Intents.CreateIntent populates the name automatically. Format: `
        #   projects//locations//agents//intents/`.
        # @param [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1Intent] google_cloud_dialogflow_cx_v3beta1_intent_object
        # @param [String] language_code
        #   The language of the following fields in `intent`: * `Intent.training_phrases.
        #   parts.text` If not specified, the agent's default language is used. [Many
        #   languages](https://cloud.google.com/dialogflow/docs/reference/language) are
        #   supported. Note: languages must be enabled in the agent before they can be
        #   used.
        # @param [String] update_mask
        #   The mask to control which fields get updated. If the mask is not present, all
        #   fields will be updated.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1Intent] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1Intent]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_project_location_agent_intent(name, google_cloud_dialogflow_cx_v3beta1_intent_object = nil, language_code: nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v3beta1/{+name}', options)
          command.request_representation = Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1Intent::Representation
          command.request_object = google_cloud_dialogflow_cx_v3beta1_intent_object
          command.response_representation = Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1Intent::Representation
          command.response_class = Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1Intent
          command.params['name'] = name unless name.nil?
          command.query['languageCode'] = language_code unless language_code.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Processes a natural language query and returns structured, actionable data as
        # a result. This method is not idempotent, because it may cause session entity
        # types to be updated, which in turn might affect results of future queries.
        # @param [String] session
        #   Required. The name of the session this query is sent to. Format: `projects//
        #   locations//agents//sessions/` or `projects//locations//agents//environments//
        #   sessions/`. If `Environment ID` is not specified, we assume default 'draft'
        #   environment. It's up to the API caller to choose an appropriate `Session ID`.
        #   It can be a random number or some type of session identifiers (preferably
        #   hashed). The length of the `Session ID` must not exceed 36 characters. For
        #   more information, see the [sessions guide](https://cloud.google.com/dialogflow/
        #   cx/docs/concept/session).
        # @param [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1DetectIntentRequest] google_cloud_dialogflow_cx_v3beta1_detect_intent_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1DetectIntentResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1DetectIntentResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def detect_project_location_agent_session_intent(session, google_cloud_dialogflow_cx_v3beta1_detect_intent_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v3beta1/{+session}:detectIntent', options)
          command.request_representation = Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1DetectIntentRequest::Representation
          command.request_object = google_cloud_dialogflow_cx_v3beta1_detect_intent_request_object
          command.response_representation = Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1DetectIntentResponse::Representation
          command.response_class = Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1DetectIntentResponse
          command.params['session'] = session unless session.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Fulfills a matched intent returned by MatchIntent. Must be called after
        # MatchIntent, with input from MatchIntentResponse. Otherwise, the behavior is
        # undefined.
        # @param [String] session
        #   Required. The name of the session this query is sent to. Format: `projects//
        #   locations//agents//sessions/` or `projects//locations//agents//environments//
        #   sessions/`. If `Environment ID` is not specified, we assume default 'draft'
        #   environment. It's up to the API caller to choose an appropriate `Session ID`.
        #   It can be a random number or some type of session identifiers (preferably
        #   hashed). The length of the `Session ID` must not exceed 36 characters. For
        #   more information, see the [sessions guide](https://cloud.google.com/dialogflow/
        #   cx/docs/concept/session).
        # @param [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1FulfillIntentRequest] google_cloud_dialogflow_cx_v3beta1_fulfill_intent_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1FulfillIntentResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1FulfillIntentResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def fulfill_project_location_agent_session_intent(session, google_cloud_dialogflow_cx_v3beta1_fulfill_intent_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v3beta1/{+session}:fulfillIntent', options)
          command.request_representation = Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1FulfillIntentRequest::Representation
          command.request_object = google_cloud_dialogflow_cx_v3beta1_fulfill_intent_request_object
          command.response_representation = Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1FulfillIntentResponse::Representation
          command.response_class = Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1FulfillIntentResponse
          command.params['session'] = session unless session.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Returns preliminary intent match results, doesn't change the session status.
        # @param [String] session
        #   Required. The name of the session this query is sent to. Format: `projects//
        #   locations//agents//sessions/` or `projects//locations//agents//environments//
        #   sessions/`. If `Environment ID` is not specified, we assume default 'draft'
        #   environment. It's up to the API caller to choose an appropriate `Session ID`.
        #   It can be a random number or some type of session identifiers (preferably
        #   hashed). The length of the `Session ID` must not exceed 36 characters. For
        #   more information, see the [sessions guide](https://cloud.google.com/dialogflow/
        #   cx/docs/concept/session).
        # @param [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1MatchIntentRequest] google_cloud_dialogflow_cx_v3beta1_match_intent_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1MatchIntentResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1MatchIntentResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def match_project_location_agent_session_intent(session, google_cloud_dialogflow_cx_v3beta1_match_intent_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v3beta1/{+session}:matchIntent', options)
          command.request_representation = Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1MatchIntentRequest::Representation
          command.request_object = google_cloud_dialogflow_cx_v3beta1_match_intent_request_object
          command.response_representation = Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1MatchIntentResponse::Representation
          command.response_class = Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1MatchIntentResponse
          command.params['session'] = session unless session.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a session entity type. If the specified session entity type already
        # exists, overrides the session entity type.
        # @param [String] parent
        #   Required. The session to create a session entity type for. Format: `projects//
        #   locations//agents//sessions/` or `projects//locations//agents//environments//
        #   sessions/`. If `Environment ID` is not specified, we assume default 'draft'
        #   environment.
        # @param [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1SessionEntityType] google_cloud_dialogflow_cx_v3beta1_session_entity_type_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1SessionEntityType] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1SessionEntityType]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_location_agent_session_entity_type(parent, google_cloud_dialogflow_cx_v3beta1_session_entity_type_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v3beta1/{+parent}/entityTypes', options)
          command.request_representation = Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1SessionEntityType::Representation
          command.request_object = google_cloud_dialogflow_cx_v3beta1_session_entity_type_object
          command.response_representation = Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1SessionEntityType::Representation
          command.response_class = Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1SessionEntityType
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes the specified session entity type.
        # @param [String] name
        #   Required. The name of the session entity type to delete. Format: `projects//
        #   locations//agents//sessions//entityTypes/` or `projects//locations//agents//
        #   environments//sessions//entityTypes/`. If `Environment ID` is not specified,
        #   we assume default 'draft' environment.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV3beta1::GoogleProtobufEmpty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV3beta1::GoogleProtobufEmpty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_location_agent_session_entity_type(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v3beta1/{+name}', options)
          command.response_representation = Google::Apis::DialogflowV3beta1::GoogleProtobufEmpty::Representation
          command.response_class = Google::Apis::DialogflowV3beta1::GoogleProtobufEmpty
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Retrieves the specified session entity type.
        # @param [String] name
        #   Required. The name of the session entity type. Format: `projects//locations//
        #   agents//sessions//entityTypes/` or `projects//locations//agents//environments//
        #   sessions//entityTypes/`. If `Environment ID` is not specified, we assume
        #   default 'draft' environment.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1SessionEntityType] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1SessionEntityType]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_agent_session_entity_type(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v3beta1/{+name}', options)
          command.response_representation = Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1SessionEntityType::Representation
          command.response_class = Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1SessionEntityType
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Returns the list of all session entity types in the specified session.
        # @param [String] parent
        #   Required. The session to list all session entity types from. Format: `projects/
        #   /locations//agents//sessions/` or `projects//locations//agents//environments//
        #   sessions/`. If `Environment ID` is not specified, we assume default 'draft'
        #   environment.
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
        # @yieldparam result [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1ListSessionEntityTypesResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1ListSessionEntityTypesResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_agent_session_entity_types(parent, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v3beta1/{+parent}/entityTypes', options)
          command.response_representation = Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1ListSessionEntityTypesResponse::Representation
          command.response_class = Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1ListSessionEntityTypesResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates the specified session entity type.
        # @param [String] name
        #   Required. The unique identifier of the session entity type. Format: `projects//
        #   locations//agents//sessions//entityTypes/` or `projects//locations//agents//
        #   environments//sessions//entityTypes/`. If `Environment ID` is not specified,
        #   we assume default 'draft' environment.
        # @param [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1SessionEntityType] google_cloud_dialogflow_cx_v3beta1_session_entity_type_object
        # @param [String] update_mask
        #   The mask to control which fields get updated.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1SessionEntityType] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1SessionEntityType]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_project_location_agent_session_entity_type(name, google_cloud_dialogflow_cx_v3beta1_session_entity_type_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v3beta1/{+name}', options)
          command.request_representation = Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1SessionEntityType::Representation
          command.request_object = google_cloud_dialogflow_cx_v3beta1_session_entity_type_object
          command.response_representation = Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1SessionEntityType::Representation
          command.response_class = Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1SessionEntityType
          command.params['name'] = name unless name.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a webhook in the specified agent.
        # @param [String] parent
        #   Required. The agent to create a webhook for. Format: `projects//locations//
        #   agents/`.
        # @param [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1Webhook] google_cloud_dialogflow_cx_v3beta1_webhook_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1Webhook] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1Webhook]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_location_agent_webhook(parent, google_cloud_dialogflow_cx_v3beta1_webhook_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v3beta1/{+parent}/webhooks', options)
          command.request_representation = Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1Webhook::Representation
          command.request_object = google_cloud_dialogflow_cx_v3beta1_webhook_object
          command.response_representation = Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1Webhook::Representation
          command.response_class = Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1Webhook
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes the specified webhook.
        # @param [String] name
        #   Required. The name of the webhook to delete. Format: `projects//locations//
        #   agents//webhooks/`.
        # @param [Boolean] force
        #   This field has no effect for webhook not being used. For webhooks that are
        #   used by pages/flows/transition route groups: * If `force` is set to false, an
        #   error will be returned with message indicating the referenced resources. * If `
        #   force` is set to true, Dialogflow will remove the webhook, as well as any
        #   references to the webhook (i.e. Webhook and tagin fulfillments that point to
        #   this webhook will be removed).
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV3beta1::GoogleProtobufEmpty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV3beta1::GoogleProtobufEmpty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_location_agent_webhook(name, force: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v3beta1/{+name}', options)
          command.response_representation = Google::Apis::DialogflowV3beta1::GoogleProtobufEmpty::Representation
          command.response_class = Google::Apis::DialogflowV3beta1::GoogleProtobufEmpty
          command.params['name'] = name unless name.nil?
          command.query['force'] = force unless force.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Retrieves the specified webhook.
        # @param [String] name
        #   Required. The name of the webhook. Format: `projects//locations//agents//
        #   webhooks/`.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1Webhook] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1Webhook]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_agent_webhook(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v3beta1/{+name}', options)
          command.response_representation = Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1Webhook::Representation
          command.response_class = Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1Webhook
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Returns the list of all webhooks in the specified agent.
        # @param [String] parent
        #   Required. The agent to list all webhooks for. Format: `projects//locations//
        #   agents/`.
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
        # @yieldparam result [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1ListWebhooksResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1ListWebhooksResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_agent_webhooks(parent, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v3beta1/{+parent}/webhooks', options)
          command.response_representation = Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1ListWebhooksResponse::Representation
          command.response_class = Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1ListWebhooksResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates the specified webhook.
        # @param [String] name
        #   The unique identifier of the webhook. Required for the Webhooks.UpdateWebhook
        #   method. Webhooks.CreateWebhook populates the name automatically. Format: `
        #   projects//locations//agents//webhooks/`.
        # @param [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1Webhook] google_cloud_dialogflow_cx_v3beta1_webhook_object
        # @param [String] update_mask
        #   The mask to control which fields get updated. If the mask is not present, all
        #   fields will be updated.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1Webhook] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1Webhook]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_project_location_agent_webhook(name, google_cloud_dialogflow_cx_v3beta1_webhook_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v3beta1/{+name}', options)
          command.request_representation = Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1Webhook::Representation
          command.request_object = google_cloud_dialogflow_cx_v3beta1_webhook_object
          command.response_representation = Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1Webhook::Representation
          command.response_class = Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1Webhook
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
        # @yieldparam result [Google::Apis::DialogflowV3beta1::GoogleProtobufEmpty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV3beta1::GoogleProtobufEmpty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def cancel_project_location_operation(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v3beta1/{+name}:cancel', options)
          command.response_representation = Google::Apis::DialogflowV3beta1::GoogleProtobufEmpty::Representation
          command.response_class = Google::Apis::DialogflowV3beta1::GoogleProtobufEmpty
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
        # @yieldparam result [Google::Apis::DialogflowV3beta1::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV3beta1::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_operation(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v3beta1/{+name}', options)
          command.response_representation = Google::Apis::DialogflowV3beta1::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::DialogflowV3beta1::GoogleLongrunningOperation
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
        # @yieldparam result [Google::Apis::DialogflowV3beta1::GoogleLongrunningListOperationsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV3beta1::GoogleLongrunningListOperationsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_operations(name, filter: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v3beta1/{+name}/operations', options)
          command.response_representation = Google::Apis::DialogflowV3beta1::GoogleLongrunningListOperationsResponse::Representation
          command.response_class = Google::Apis::DialogflowV3beta1::GoogleLongrunningListOperationsResponse
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
        # @yieldparam result [Google::Apis::DialogflowV3beta1::GoogleProtobufEmpty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV3beta1::GoogleProtobufEmpty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def cancel_project_operation(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v3beta1/{+name}:cancel', options)
          command.response_representation = Google::Apis::DialogflowV3beta1::GoogleProtobufEmpty::Representation
          command.response_class = Google::Apis::DialogflowV3beta1::GoogleProtobufEmpty
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
        # @yieldparam result [Google::Apis::DialogflowV3beta1::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV3beta1::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_operation(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v3beta1/{+name}', options)
          command.response_representation = Google::Apis::DialogflowV3beta1::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::DialogflowV3beta1::GoogleLongrunningOperation
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
        # @yieldparam result [Google::Apis::DialogflowV3beta1::GoogleLongrunningListOperationsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV3beta1::GoogleLongrunningListOperationsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_operations(name, filter: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v3beta1/{+name}/operations', options)
          command.response_representation = Google::Apis::DialogflowV3beta1::GoogleLongrunningListOperationsResponse::Representation
          command.response_class = Google::Apis::DialogflowV3beta1::GoogleLongrunningListOperationsResponse
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
