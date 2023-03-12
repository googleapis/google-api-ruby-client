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
    module DialogflowV3
      # Dialogflow API
      #
      # Builds conversational interfaces (for example, chatbots, and voice-powered
      #  apps and devices).
      #
      # @example
      #    require 'google/apis/dialogflow_v3'
      #
      #    Dialogflow = Google::Apis::DialogflowV3 # Alias the module
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
                client_name: 'google-apis-dialogflow_v3',
                client_version: Google::Apis::DialogflowV3::GEM_VERSION)
          @batch_path = 'batch'
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
        # @yieldparam result [Google::Apis::DialogflowV3::GoogleCloudLocationLocation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV3::GoogleCloudLocationLocation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v3/{+name}', options)
          command.response_representation = Google::Apis::DialogflowV3::GoogleCloudLocationLocation::Representation
          command.response_class = Google::Apis::DialogflowV3::GoogleCloudLocationLocation
          command.params['name'] = name unless name.nil?
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
        # @yieldparam result [Google::Apis::DialogflowV3::GoogleCloudLocationListLocationsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV3::GoogleCloudLocationListLocationsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_locations(name, filter: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v3/{+name}/locations', options)
          command.response_representation = Google::Apis::DialogflowV3::GoogleCloudLocationListLocationsResponse::Representation
          command.response_class = Google::Apis::DialogflowV3::GoogleCloudLocationListLocationsResponse
          command.params['name'] = name unless name.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates an agent in the specified location. Note: You should always train
        # flows prior to sending them queries. See the [training documentation](https://
        # cloud.google.com/dialogflow/cx/docs/concept/training).
        # @param [String] parent
        #   Required. The location to create a agent for. Format: `projects//locations/`.
        # @param [Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3Agent] google_cloud_dialogflow_cx_v3_agent_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3Agent] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3Agent]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_location_agent(parent, google_cloud_dialogflow_cx_v3_agent_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v3/{+parent}/agents', options)
          command.request_representation = Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3Agent::Representation
          command.request_object = google_cloud_dialogflow_cx_v3_agent_object
          command.response_representation = Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3Agent::Representation
          command.response_class = Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3Agent
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
        # @yieldparam result [Google::Apis::DialogflowV3::GoogleProtobufEmpty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV3::GoogleProtobufEmpty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_location_agent(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v3/{+name}', options)
          command.response_representation = Google::Apis::DialogflowV3::GoogleProtobufEmpty::Representation
          command.response_class = Google::Apis::DialogflowV3::GoogleProtobufEmpty
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Exports the specified agent to a binary file. This method is a [long-running
        # operation](https://cloud.google.com/dialogflow/cx/docs/how/long-running-
        # operation). The returned `Operation` type has the following method-specific
        # fields: - `metadata`: An empty [Struct message](https://developers.google.com/
        # protocol-buffers/docs/reference/google.protobuf#struct) - `response`:
        # ExportAgentResponse
        # @param [String] name
        #   Required. The name of the agent to export. Format: `projects//locations//
        #   agents/`.
        # @param [Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3ExportAgentRequest] google_cloud_dialogflow_cx_v3_export_agent_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV3::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV3::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def export_project_location_agent(name, google_cloud_dialogflow_cx_v3_export_agent_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v3/{+name}:export', options)
          command.request_representation = Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3ExportAgentRequest::Representation
          command.request_object = google_cloud_dialogflow_cx_v3_export_agent_request_object
          command.response_representation = Google::Apis::DialogflowV3::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::DialogflowV3::GoogleLongrunningOperation
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
        # @yieldparam result [Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3Agent] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3Agent]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_agent(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v3/{+name}', options)
          command.response_representation = Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3Agent::Representation
          command.response_class = Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3Agent
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets the latest agent validation result. Agent validation is performed when
        # ValidateAgent is called.
        # @param [String] name
        #   Required. The agent name. Format: `projects//locations//agents//
        #   validationResult`.
        # @param [String] language_code
        #   If not specified, the agent's default language is used.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3AgentValidationResult] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3AgentValidationResult]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_agent_validation_result(name, language_code: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v3/{+name}', options)
          command.response_representation = Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3AgentValidationResult::Representation
          command.response_class = Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3AgentValidationResult
          command.params['name'] = name unless name.nil?
          command.query['languageCode'] = language_code unless language_code.nil?
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
        # @yieldparam result [Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3ListAgentsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3ListAgentsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_agents(parent, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v3/{+parent}/agents', options)
          command.response_representation = Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3ListAgentsResponse::Representation
          command.response_class = Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3ListAgentsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates the specified agent. Note: You should always train flows prior to
        # sending them queries. See the [training documentation](https://cloud.google.
        # com/dialogflow/cx/docs/concept/training).
        # @param [String] name
        #   The unique identifier of the agent. Required for the Agents.UpdateAgent method.
        #   Agents.CreateAgent populates the name automatically. Format: `projects//
        #   locations//agents/`.
        # @param [Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3Agent] google_cloud_dialogflow_cx_v3_agent_object
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
        # @yieldparam result [Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3Agent] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3Agent]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_project_location_agent(name, google_cloud_dialogflow_cx_v3_agent_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v3/{+name}', options)
          command.request_representation = Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3Agent::Representation
          command.request_object = google_cloud_dialogflow_cx_v3_agent_object
          command.response_representation = Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3Agent::Representation
          command.response_class = Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3Agent
          command.params['name'] = name unless name.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Restores the specified agent from a binary file. Replaces the current agent
        # with a new one. Note that all existing resources in agent (e.g. intents,
        # entity types, flows) will be removed. This method is a [long-running operation]
        # (https://cloud.google.com/dialogflow/cx/docs/how/long-running-operation). The
        # returned `Operation` type has the following method-specific fields: - `
        # metadata`: An empty [Struct message](https://developers.google.com/protocol-
        # buffers/docs/reference/google.protobuf#struct) - `response`: An [Empty message]
        # (https://developers.google.com/protocol-buffers/docs/reference/google.protobuf#
        # empty) Note: You should always train flows prior to sending them queries. See
        # the [training documentation](https://cloud.google.com/dialogflow/cx/docs/
        # concept/training).
        # @param [String] name
        #   Required. The name of the agent to restore into. Format: `projects//locations//
        #   agents/`.
        # @param [Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3RestoreAgentRequest] google_cloud_dialogflow_cx_v3_restore_agent_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV3::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV3::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def restore_project_location_agent(name, google_cloud_dialogflow_cx_v3_restore_agent_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v3/{+name}:restore', options)
          command.request_representation = Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3RestoreAgentRequest::Representation
          command.request_object = google_cloud_dialogflow_cx_v3_restore_agent_request_object
          command.response_representation = Google::Apis::DialogflowV3::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::DialogflowV3::GoogleLongrunningOperation
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Validates the specified agent and creates or updates validation results. The
        # agent in draft version is validated. Please call this API after the training
        # is completed to get the complete validation results.
        # @param [String] name
        #   Required. The agent to validate. Format: `projects//locations//agents/`.
        # @param [Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3ValidateAgentRequest] google_cloud_dialogflow_cx_v3_validate_agent_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3AgentValidationResult] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3AgentValidationResult]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def validate_project_location_agent(name, google_cloud_dialogflow_cx_v3_validate_agent_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v3/{+name}:validate', options)
          command.request_representation = Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3ValidateAgentRequest::Representation
          command.request_object = google_cloud_dialogflow_cx_v3_validate_agent_request_object
          command.response_representation = Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3AgentValidationResult::Representation
          command.response_class = Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3AgentValidationResult
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Retrieves the specified Changelog.
        # @param [String] name
        #   Required. The name of the changelog to get. Format: `projects//locations//
        #   agents//changelogs/`.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3Changelog] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3Changelog]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_agent_changelog(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v3/{+name}', options)
          command.response_representation = Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3Changelog::Representation
          command.response_class = Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3Changelog
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Returns the list of Changelogs.
        # @param [String] parent
        #   Required. The agent containing the changelogs. Format: `projects//locations//
        #   agents/`.
        # @param [String] filter
        #   The filter string. Supports filter by user_email, resource, type and
        #   create_time. Some examples: 1. By user email: user_email = "someone@google.com"
        #   2. By resource name: resource = "projects/123/locations/global/agents/456/
        #   flows/789" 3. By resource display name: display_name = "my agent" 4. By action:
        #   action = "Create" 5. By type: type = "flows" 6. By create time. Currently
        #   predicates on `create_time` and `create_time_epoch_seconds` are supported:
        #   create_time_epoch_seconds > 1551790877 AND create_time <= 2017-01-15T01:30:15.
        #   01Z 7. Combination of above filters: resource = "projects/123/locations/global/
        #   agents/456/flows/789" AND user_email = "someone@google.com" AND create_time <=
        #   2017-01-15T01:30:15.01Z
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
        # @yieldparam result [Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3ListChangelogsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3ListChangelogsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_agent_changelogs(parent, filter: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v3/{+parent}/changelogs', options)
          command.response_representation = Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3ListChangelogsResponse::Representation
          command.response_class = Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3ListChangelogsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates an entity type in the specified agent. Note: You should always train a
        # flow prior to sending it queries. See the [training documentation](https://
        # cloud.google.com/dialogflow/cx/docs/concept/training).
        # @param [String] parent
        #   Required. The agent to create a entity type for. Format: `projects//locations//
        #   agents/`.
        # @param [Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3EntityType] google_cloud_dialogflow_cx_v3_entity_type_object
        # @param [String] language_code
        #   The language of the following fields in `entity_type`: * `EntityType.entities.
        #   value` * `EntityType.entities.synonyms` * `EntityType.excluded_phrases.value`
        #   If not specified, the agent's default language is used. [Many languages](https:
        #   //cloud.google.com/dialogflow/cx/docs/reference/language) are supported. Note:
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
        # @yieldparam result [Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3EntityType] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3EntityType]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_location_agent_entity_type(parent, google_cloud_dialogflow_cx_v3_entity_type_object = nil, language_code: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v3/{+parent}/entityTypes', options)
          command.request_representation = Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3EntityType::Representation
          command.request_object = google_cloud_dialogflow_cx_v3_entity_type_object
          command.response_representation = Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3EntityType::Representation
          command.response_class = Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3EntityType
          command.params['parent'] = parent unless parent.nil?
          command.query['languageCode'] = language_code unless language_code.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes the specified entity type. Note: You should always train a flow prior
        # to sending it queries. See the [training documentation](https://cloud.google.
        # com/dialogflow/cx/docs/concept/training).
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
        # @yieldparam result [Google::Apis::DialogflowV3::GoogleProtobufEmpty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV3::GoogleProtobufEmpty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_location_agent_entity_type(name, force: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v3/{+name}', options)
          command.response_representation = Google::Apis::DialogflowV3::GoogleProtobufEmpty::Representation
          command.response_class = Google::Apis::DialogflowV3::GoogleProtobufEmpty
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
        #   cx/docs/reference/language) are supported. Note: languages must be enabled in
        #   the agent before they can be used.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3EntityType] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3EntityType]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_agent_entity_type(name, language_code: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v3/{+name}', options)
          command.response_representation = Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3EntityType::Representation
          command.response_class = Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3EntityType
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
        #   language is used. [Many languages](https://cloud.google.com/dialogflow/cx/docs/
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
        # @yieldparam result [Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3ListEntityTypesResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3ListEntityTypesResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_agent_entity_types(parent, language_code: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v3/{+parent}/entityTypes', options)
          command.response_representation = Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3ListEntityTypesResponse::Representation
          command.response_class = Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3ListEntityTypesResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['languageCode'] = language_code unless language_code.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates the specified entity type. Note: You should always train a flow prior
        # to sending it queries. See the [training documentation](https://cloud.google.
        # com/dialogflow/cx/docs/concept/training).
        # @param [String] name
        #   The unique identifier of the entity type. Required for EntityTypes.
        #   UpdateEntityType. Format: `projects//locations//agents//entityTypes/`.
        # @param [Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3EntityType] google_cloud_dialogflow_cx_v3_entity_type_object
        # @param [String] language_code
        #   The language of the following fields in `entity_type`: * `EntityType.entities.
        #   value` * `EntityType.entities.synonyms` * `EntityType.excluded_phrases.value`
        #   If not specified, the agent's default language is used. [Many languages](https:
        #   //cloud.google.com/dialogflow/cx/docs/reference/language) are supported. Note:
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
        # @yieldparam result [Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3EntityType] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3EntityType]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_project_location_agent_entity_type(name, google_cloud_dialogflow_cx_v3_entity_type_object = nil, language_code: nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v3/{+name}', options)
          command.request_representation = Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3EntityType::Representation
          command.request_object = google_cloud_dialogflow_cx_v3_entity_type_object
          command.response_representation = Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3EntityType::Representation
          command.response_class = Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3EntityType
          command.params['name'] = name unless name.nil?
          command.query['languageCode'] = language_code unless language_code.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates an Environment in the specified Agent. This method is a [long-running
        # operation](https://cloud.google.com/dialogflow/cx/docs/how/long-running-
        # operation). The returned `Operation` type has the following method-specific
        # fields: - `metadata`: An empty [Struct message](https://developers.google.com/
        # protocol-buffers/docs/reference/google.protobuf#struct) - `response`:
        # Environment
        # @param [String] parent
        #   Required. The Agent to create an Environment for. Format: `projects//locations/
        #   /agents/`.
        # @param [Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3Environment] google_cloud_dialogflow_cx_v3_environment_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV3::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV3::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_location_agent_environment(parent, google_cloud_dialogflow_cx_v3_environment_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v3/{+parent}/environments', options)
          command.request_representation = Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3Environment::Representation
          command.request_object = google_cloud_dialogflow_cx_v3_environment_object
          command.response_representation = Google::Apis::DialogflowV3::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::DialogflowV3::GoogleLongrunningOperation
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
        # @yieldparam result [Google::Apis::DialogflowV3::GoogleProtobufEmpty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV3::GoogleProtobufEmpty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_location_agent_environment(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v3/{+name}', options)
          command.response_representation = Google::Apis::DialogflowV3::GoogleProtobufEmpty::Representation
          command.response_class = Google::Apis::DialogflowV3::GoogleProtobufEmpty
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deploys a flow to the specified Environment. This method is a [long-running
        # operation](https://cloud.google.com/dialogflow/cx/docs/how/long-running-
        # operation). The returned `Operation` type has the following method-specific
        # fields: - `metadata`: DeployFlowMetadata - `response`: DeployFlowResponse
        # @param [String] environment
        #   Required. The environment to deploy the flow to. Format: `projects//locations//
        #   agents// environments/`.
        # @param [Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3DeployFlowRequest] google_cloud_dialogflow_cx_v3_deploy_flow_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV3::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV3::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def deploy_project_location_agent_environment_flow(environment, google_cloud_dialogflow_cx_v3_deploy_flow_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v3/{+environment}:deployFlow', options)
          command.request_representation = Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3DeployFlowRequest::Representation
          command.request_object = google_cloud_dialogflow_cx_v3_deploy_flow_request_object
          command.response_representation = Google::Apis::DialogflowV3::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::DialogflowV3::GoogleLongrunningOperation
          command.params['environment'] = environment unless environment.nil?
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
        # @yieldparam result [Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3Environment] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3Environment]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_agent_environment(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v3/{+name}', options)
          command.response_representation = Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3Environment::Representation
          command.response_class = Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3Environment
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
        # @yieldparam result [Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3ListEnvironmentsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3ListEnvironmentsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_agent_environments(parent, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v3/{+parent}/environments', options)
          command.response_representation = Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3ListEnvironmentsResponse::Representation
          command.response_class = Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3ListEnvironmentsResponse
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
        # @yieldparam result [Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3LookupEnvironmentHistoryResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3LookupEnvironmentHistoryResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def lookup_project_location_agent_environment_environment_history(name, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v3/{+name}:lookupEnvironmentHistory', options)
          command.response_representation = Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3LookupEnvironmentHistoryResponse::Representation
          command.response_class = Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3LookupEnvironmentHistoryResponse
          command.params['name'] = name unless name.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates the specified Environment. This method is a [long-running operation](
        # https://cloud.google.com/dialogflow/cx/docs/how/long-running-operation). The
        # returned `Operation` type has the following method-specific fields: - `
        # metadata`: An empty [Struct message](https://developers.google.com/protocol-
        # buffers/docs/reference/google.protobuf#struct) - `response`: Environment
        # @param [String] name
        #   The name of the environment. Format: `projects//locations//agents//
        #   environments/`.
        # @param [Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3Environment] google_cloud_dialogflow_cx_v3_environment_object
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
        # @yieldparam result [Google::Apis::DialogflowV3::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV3::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_project_location_agent_environment(name, google_cloud_dialogflow_cx_v3_environment_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v3/{+name}', options)
          command.request_representation = Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3Environment::Representation
          command.request_object = google_cloud_dialogflow_cx_v3_environment_object
          command.response_representation = Google::Apis::DialogflowV3::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::DialogflowV3::GoogleLongrunningOperation
          command.params['name'] = name unless name.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Kicks off a continuous test under the specified Environment. This method is a [
        # long-running operation](https://cloud.google.com/dialogflow/cx/docs/how/long-
        # running-operation). The returned `Operation` type has the following method-
        # specific fields: - `metadata`: RunContinuousTestMetadata - `response`:
        # RunContinuousTestResponse
        # @param [String] environment
        #   Required. Format: `projects//locations//agents//environments/`.
        # @param [Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3RunContinuousTestRequest] google_cloud_dialogflow_cx_v3_run_continuous_test_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV3::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV3::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def run_project_location_agent_environment_continuous_test(environment, google_cloud_dialogflow_cx_v3_run_continuous_test_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v3/{+environment}:runContinuousTest', options)
          command.request_representation = Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3RunContinuousTestRequest::Representation
          command.request_object = google_cloud_dialogflow_cx_v3_run_continuous_test_request_object
          command.response_representation = Google::Apis::DialogflowV3::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::DialogflowV3::GoogleLongrunningOperation
          command.params['environment'] = environment unless environment.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Fetches a list of continuous test results for a given environment.
        # @param [String] parent
        #   Required. The environment to list results for. Format: `projects//locations//
        #   agents// environments/`.
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
        # @yieldparam result [Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3ListContinuousTestResultsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3ListContinuousTestResultsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_agent_environment_continuous_test_results(parent, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v3/{+parent}/continuousTestResults', options)
          command.response_representation = Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3ListContinuousTestResultsResponse::Representation
          command.response_class = Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3ListContinuousTestResultsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Retrieves the specified Deployment.
        # @param [String] name
        #   Required. The name of the Deployment. Format: `projects//locations//agents//
        #   environments//deployments/`.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3Deployment] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3Deployment]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_agent_environment_deployment(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v3/{+name}', options)
          command.response_representation = Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3Deployment::Representation
          command.response_class = Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3Deployment
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Returns the list of all deployments in the specified Environment.
        # @param [String] parent
        #   Required. The Environment to list all environments for. Format: `projects//
        #   locations//agents//environments/`.
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
        # @yieldparam result [Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3ListDeploymentsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3ListDeploymentsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_agent_environment_deployments(parent, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v3/{+parent}/deployments', options)
          command.response_representation = Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3ListDeploymentsResponse::Representation
          command.response_class = Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3ListDeploymentsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates an Experiment in the specified Environment.
        # @param [String] parent
        #   Required. The Agent to create an Environment for. Format: `projects//locations/
        #   /agents//environments/`.
        # @param [Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3Experiment] google_cloud_dialogflow_cx_v3_experiment_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3Experiment] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3Experiment]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_location_agent_environment_experiment(parent, google_cloud_dialogflow_cx_v3_experiment_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v3/{+parent}/experiments', options)
          command.request_representation = Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3Experiment::Representation
          command.request_object = google_cloud_dialogflow_cx_v3_experiment_object
          command.response_representation = Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3Experiment::Representation
          command.response_class = Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3Experiment
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes the specified Experiment.
        # @param [String] name
        #   Required. The name of the Environment to delete. Format: `projects//locations//
        #   agents//environments//experiments/`.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV3::GoogleProtobufEmpty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV3::GoogleProtobufEmpty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_location_agent_environment_experiment(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v3/{+name}', options)
          command.response_representation = Google::Apis::DialogflowV3::GoogleProtobufEmpty::Representation
          command.response_class = Google::Apis::DialogflowV3::GoogleProtobufEmpty
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Retrieves the specified Experiment.
        # @param [String] name
        #   Required. The name of the Environment. Format: `projects//locations//agents//
        #   environments//experiments/`.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3Experiment] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3Experiment]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_agent_environment_experiment(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v3/{+name}', options)
          command.response_representation = Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3Experiment::Representation
          command.response_class = Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3Experiment
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Returns the list of all experiments in the specified Environment.
        # @param [String] parent
        #   Required. The Environment to list all environments for. Format: `projects//
        #   locations//agents//environments/`.
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
        # @yieldparam result [Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3ListExperimentsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3ListExperimentsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_agent_environment_experiments(parent, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v3/{+parent}/experiments', options)
          command.response_representation = Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3ListExperimentsResponse::Representation
          command.response_class = Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3ListExperimentsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates the specified Experiment.
        # @param [String] name
        #   The name of the experiment. Format: projects//locations//agents//environments//
        #   experiments/..
        # @param [Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3Experiment] google_cloud_dialogflow_cx_v3_experiment_object
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
        # @yieldparam result [Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3Experiment] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3Experiment]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_project_location_agent_environment_experiment(name, google_cloud_dialogflow_cx_v3_experiment_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v3/{+name}', options)
          command.request_representation = Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3Experiment::Representation
          command.request_object = google_cloud_dialogflow_cx_v3_experiment_object
          command.response_representation = Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3Experiment::Representation
          command.response_class = Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3Experiment
          command.params['name'] = name unless name.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Starts the specified Experiment. This rpc only changes the state of experiment
        # from PENDING to RUNNING.
        # @param [String] name
        #   Required. Resource name of the experiment to start. Format: `projects//
        #   locations//agents//environments//experiments/`.
        # @param [Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3StartExperimentRequest] google_cloud_dialogflow_cx_v3_start_experiment_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3Experiment] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3Experiment]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def start_project_location_agent_environment_experiment(name, google_cloud_dialogflow_cx_v3_start_experiment_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v3/{+name}:start', options)
          command.request_representation = Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3StartExperimentRequest::Representation
          command.request_object = google_cloud_dialogflow_cx_v3_start_experiment_request_object
          command.response_representation = Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3Experiment::Representation
          command.response_class = Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3Experiment
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Stops the specified Experiment. This rpc only changes the state of experiment
        # from RUNNING to DONE.
        # @param [String] name
        #   Required. Resource name of the experiment to stop. Format: `projects//
        #   locations//agents//environments//experiments/`.
        # @param [Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3StopExperimentRequest] google_cloud_dialogflow_cx_v3_stop_experiment_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3Experiment] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3Experiment]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def stop_project_location_agent_environment_experiment(name, google_cloud_dialogflow_cx_v3_stop_experiment_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v3/{+name}:stop', options)
          command.request_representation = Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3StopExperimentRequest::Representation
          command.request_object = google_cloud_dialogflow_cx_v3_stop_experiment_request_object
          command.response_representation = Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3Experiment::Representation
          command.response_class = Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3Experiment
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Processes a natural language query and returns structured, actionable data as
        # a result. This method is not idempotent, because it may cause session entity
        # types to be updated, which in turn might affect results of future queries.
        # Note: Always use agent versions for production traffic. See [Versions and
        # environments](https://cloud.google.com/dialogflow/cx/docs/concept/version).
        # @param [String] session
        #   Required. The name of the session this query is sent to. Format: `projects//
        #   locations//agents//sessions/` or `projects//locations//agents//environments//
        #   sessions/`. If `Environment ID` is not specified, we assume default 'draft'
        #   environment. It's up to the API caller to choose an appropriate `Session ID`.
        #   It can be a random number or some type of session identifiers (preferably
        #   hashed). The length of the `Session ID` must not exceed 36 characters. For
        #   more information, see the [sessions guide](https://cloud.google.com/dialogflow/
        #   cx/docs/concept/session). Note: Always use agent versions for production
        #   traffic. See [Versions and environments](https://cloud.google.com/dialogflow/
        #   cx/docs/concept/version).
        # @param [Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3DetectIntentRequest] google_cloud_dialogflow_cx_v3_detect_intent_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3DetectIntentResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3DetectIntentResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def detect_project_location_agent_environment_session_intent(session, google_cloud_dialogflow_cx_v3_detect_intent_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v3/{+session}:detectIntent', options)
          command.request_representation = Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3DetectIntentRequest::Representation
          command.request_object = google_cloud_dialogflow_cx_v3_detect_intent_request_object
          command.response_representation = Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3DetectIntentResponse::Representation
          command.response_class = Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3DetectIntentResponse
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
        # @param [Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3FulfillIntentRequest] google_cloud_dialogflow_cx_v3_fulfill_intent_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3FulfillIntentResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3FulfillIntentResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def fulfill_project_location_agent_environment_session_intent(session, google_cloud_dialogflow_cx_v3_fulfill_intent_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v3/{+session}:fulfillIntent', options)
          command.request_representation = Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3FulfillIntentRequest::Representation
          command.request_object = google_cloud_dialogflow_cx_v3_fulfill_intent_request_object
          command.response_representation = Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3FulfillIntentResponse::Representation
          command.response_class = Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3FulfillIntentResponse
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
        # @param [Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3MatchIntentRequest] google_cloud_dialogflow_cx_v3_match_intent_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3MatchIntentResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3MatchIntentResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def match_project_location_agent_environment_session_intent(session, google_cloud_dialogflow_cx_v3_match_intent_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v3/{+session}:matchIntent', options)
          command.request_representation = Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3MatchIntentRequest::Representation
          command.request_object = google_cloud_dialogflow_cx_v3_match_intent_request_object
          command.response_representation = Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3MatchIntentResponse::Representation
          command.response_class = Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3MatchIntentResponse
          command.params['session'] = session unless session.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a session entity type.
        # @param [String] parent
        #   Required. The session to create a session entity type for. Format: `projects//
        #   locations//agents//sessions/` or `projects//locations//agents//environments//
        #   sessions/`. If `Environment ID` is not specified, we assume default 'draft'
        #   environment.
        # @param [Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3SessionEntityType] google_cloud_dialogflow_cx_v3_session_entity_type_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3SessionEntityType] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3SessionEntityType]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_location_agent_environment_session_entity_type(parent, google_cloud_dialogflow_cx_v3_session_entity_type_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v3/{+parent}/entityTypes', options)
          command.request_representation = Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3SessionEntityType::Representation
          command.request_object = google_cloud_dialogflow_cx_v3_session_entity_type_object
          command.response_representation = Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3SessionEntityType::Representation
          command.response_class = Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3SessionEntityType
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
        # @yieldparam result [Google::Apis::DialogflowV3::GoogleProtobufEmpty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV3::GoogleProtobufEmpty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_location_agent_environment_session_entity_type(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v3/{+name}', options)
          command.response_representation = Google::Apis::DialogflowV3::GoogleProtobufEmpty::Representation
          command.response_class = Google::Apis::DialogflowV3::GoogleProtobufEmpty
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
        # @yieldparam result [Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3SessionEntityType] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3SessionEntityType]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_agent_environment_session_entity_type(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v3/{+name}', options)
          command.response_representation = Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3SessionEntityType::Representation
          command.response_class = Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3SessionEntityType
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
        # @yieldparam result [Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3ListSessionEntityTypesResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3ListSessionEntityTypesResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_agent_environment_session_entity_types(parent, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v3/{+parent}/entityTypes', options)
          command.response_representation = Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3ListSessionEntityTypesResponse::Representation
          command.response_class = Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3ListSessionEntityTypesResponse
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
        # @param [Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3SessionEntityType] google_cloud_dialogflow_cx_v3_session_entity_type_object
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
        # @yieldparam result [Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3SessionEntityType] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3SessionEntityType]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_project_location_agent_environment_session_entity_type(name, google_cloud_dialogflow_cx_v3_session_entity_type_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v3/{+name}', options)
          command.request_representation = Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3SessionEntityType::Representation
          command.request_object = google_cloud_dialogflow_cx_v3_session_entity_type_object
          command.response_representation = Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3SessionEntityType::Representation
          command.response_class = Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3SessionEntityType
          command.params['name'] = name unless name.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a flow in the specified agent. Note: You should always train a flow
        # prior to sending it queries. See the [training documentation](https://cloud.
        # google.com/dialogflow/cx/docs/concept/training).
        # @param [String] parent
        #   Required. The agent to create a flow for. Format: `projects//locations//agents/
        #   `.
        # @param [Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3Flow] google_cloud_dialogflow_cx_v3_flow_object
        # @param [String] language_code
        #   The language of the following fields in `flow`: * `Flow.event_handlers.
        #   trigger_fulfillment.messages` * `Flow.event_handlers.trigger_fulfillment.
        #   conditional_cases` * `Flow.transition_routes.trigger_fulfillment.messages` * `
        #   Flow.transition_routes.trigger_fulfillment.conditional_cases` If not specified,
        #   the agent's default language is used. [Many languages](https://cloud.google.
        #   com/dialogflow/cx/docs/reference/language) are supported. Note: languages must
        #   be enabled in the agent before they can be used.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3Flow] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3Flow]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_location_agent_flow(parent, google_cloud_dialogflow_cx_v3_flow_object = nil, language_code: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v3/{+parent}/flows', options)
          command.request_representation = Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3Flow::Representation
          command.request_object = google_cloud_dialogflow_cx_v3_flow_object
          command.response_representation = Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3Flow::Representation
          command.response_class = Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3Flow
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
        # @yieldparam result [Google::Apis::DialogflowV3::GoogleProtobufEmpty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV3::GoogleProtobufEmpty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_location_agent_flow(name, force: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v3/{+name}', options)
          command.response_representation = Google::Apis::DialogflowV3::GoogleProtobufEmpty::Representation
          command.response_class = Google::Apis::DialogflowV3::GoogleProtobufEmpty
          command.params['name'] = name unless name.nil?
          command.query['force'] = force unless force.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Exports the specified flow to a binary file. This method is a [long-running
        # operation](https://cloud.google.com/dialogflow/cx/docs/how/long-running-
        # operation). The returned `Operation` type has the following method-specific
        # fields: - `metadata`: An empty [Struct message](https://developers.google.com/
        # protocol-buffers/docs/reference/google.protobuf#struct) - `response`:
        # ExportFlowResponse Note that resources (e.g. intents, entities, webhooks) that
        # the flow references will also be exported.
        # @param [String] name
        #   Required. The name of the flow to export. Format: `projects//locations//agents/
        #   /flows/`.
        # @param [Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3ExportFlowRequest] google_cloud_dialogflow_cx_v3_export_flow_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV3::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV3::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def export_project_location_agent_flow(name, google_cloud_dialogflow_cx_v3_export_flow_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v3/{+name}:export', options)
          command.request_representation = Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3ExportFlowRequest::Representation
          command.request_object = google_cloud_dialogflow_cx_v3_export_flow_request_object
          command.response_representation = Google::Apis::DialogflowV3::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::DialogflowV3::GoogleLongrunningOperation
          command.params['name'] = name unless name.nil?
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
        #   event_handlers.trigger_fulfillment.conditional_cases` * `Flow.
        #   transition_routes.trigger_fulfillment.messages` * `Flow.transition_routes.
        #   trigger_fulfillment.conditional_cases` If not specified, the agent's default
        #   language is used. [Many languages](https://cloud.google.com/dialogflow/cx/docs/
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
        # @yieldparam result [Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3Flow] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3Flow]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_agent_flow(name, language_code: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v3/{+name}', options)
          command.response_representation = Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3Flow::Representation
          command.response_class = Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3Flow
          command.params['name'] = name unless name.nil?
          command.query['languageCode'] = language_code unless language_code.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets the latest flow validation result. Flow validation is performed when
        # ValidateFlow is called.
        # @param [String] name
        #   Required. The flow name. Format: `projects//locations//agents//flows//
        #   validationResult`.
        # @param [String] language_code
        #   If not specified, the agent's default language is used.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3FlowValidationResult] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3FlowValidationResult]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_agent_flow_validation_result(name, language_code: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v3/{+name}', options)
          command.response_representation = Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3FlowValidationResult::Representation
          command.response_class = Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3FlowValidationResult
          command.params['name'] = name unless name.nil?
          command.query['languageCode'] = language_code unless language_code.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Imports the specified flow to the specified agent from a binary file. This
        # method is a [long-running operation](https://cloud.google.com/dialogflow/cx/
        # docs/how/long-running-operation). The returned `Operation` type has the
        # following method-specific fields: - `metadata`: An empty [Struct message](
        # https://developers.google.com/protocol-buffers/docs/reference/google.protobuf#
        # struct) - `response`: ImportFlowResponse Note: You should always train a flow
        # prior to sending it queries. See the [training documentation](https://cloud.
        # google.com/dialogflow/cx/docs/concept/training).
        # @param [String] parent
        #   Required. The agent to import the flow into. Format: `projects//locations//
        #   agents/`.
        # @param [Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3ImportFlowRequest] google_cloud_dialogflow_cx_v3_import_flow_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV3::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV3::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def import_project_location_agent_flow(parent, google_cloud_dialogflow_cx_v3_import_flow_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v3/{+parent}/flows:import', options)
          command.request_representation = Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3ImportFlowRequest::Representation
          command.request_object = google_cloud_dialogflow_cx_v3_import_flow_request_object
          command.response_representation = Google::Apis::DialogflowV3::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::DialogflowV3::GoogleLongrunningOperation
          command.params['parent'] = parent unless parent.nil?
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
        #   `Flow.event_handlers.trigger_fulfillment.messages` * `Flow.event_handlers.
        #   trigger_fulfillment.conditional_cases` * `Flow.transition_routes.
        #   trigger_fulfillment.messages` * `Flow.transition_routes.trigger_fulfillment.
        #   conditional_cases` If not specified, the agent's default language is used. [
        #   Many languages](https://cloud.google.com/dialogflow/cx/docs/reference/language)
        #   are supported. Note: languages must be enabled in the agent before they can
        #   be used.
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
        # @yieldparam result [Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3ListFlowsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3ListFlowsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_agent_flows(parent, language_code: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v3/{+parent}/flows', options)
          command.response_representation = Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3ListFlowsResponse::Representation
          command.response_class = Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3ListFlowsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['languageCode'] = language_code unless language_code.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates the specified flow. Note: You should always train a flow prior to
        # sending it queries. See the [training documentation](https://cloud.google.com/
        # dialogflow/cx/docs/concept/training).
        # @param [String] name
        #   The unique identifier of the flow. Format: `projects//locations//agents//flows/
        #   `.
        # @param [Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3Flow] google_cloud_dialogflow_cx_v3_flow_object
        # @param [String] language_code
        #   The language of the following fields in `flow`: * `Flow.event_handlers.
        #   trigger_fulfillment.messages` * `Flow.event_handlers.trigger_fulfillment.
        #   conditional_cases` * `Flow.transition_routes.trigger_fulfillment.messages` * `
        #   Flow.transition_routes.trigger_fulfillment.conditional_cases` If not specified,
        #   the agent's default language is used. [Many languages](https://cloud.google.
        #   com/dialogflow/cx/docs/reference/language) are supported. Note: languages must
        #   be enabled in the agent before they can be used.
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
        # @yieldparam result [Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3Flow] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3Flow]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_project_location_agent_flow(name, google_cloud_dialogflow_cx_v3_flow_object = nil, language_code: nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v3/{+name}', options)
          command.request_representation = Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3Flow::Representation
          command.request_object = google_cloud_dialogflow_cx_v3_flow_object
          command.response_representation = Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3Flow::Representation
          command.response_class = Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3Flow
          command.params['name'] = name unless name.nil?
          command.query['languageCode'] = language_code unless language_code.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Trains the specified flow. Note that only the flow in 'draft' environment is
        # trained. This method is a [long-running operation](https://cloud.google.com/
        # dialogflow/cx/docs/how/long-running-operation). The returned `Operation` type
        # has the following method-specific fields: - `metadata`: An empty [Struct
        # message](https://developers.google.com/protocol-buffers/docs/reference/google.
        # protobuf#struct) - `response`: An [Empty message](https://developers.google.
        # com/protocol-buffers/docs/reference/google.protobuf#empty) Note: You should
        # always train a flow prior to sending it queries. See the [training
        # documentation](https://cloud.google.com/dialogflow/cx/docs/concept/training).
        # @param [String] name
        #   Required. The flow to train. Format: `projects//locations//agents//flows/`.
        # @param [Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3TrainFlowRequest] google_cloud_dialogflow_cx_v3_train_flow_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV3::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV3::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def train_project_location_agent_flow(name, google_cloud_dialogflow_cx_v3_train_flow_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v3/{+name}:train', options)
          command.request_representation = Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3TrainFlowRequest::Representation
          command.request_object = google_cloud_dialogflow_cx_v3_train_flow_request_object
          command.response_representation = Google::Apis::DialogflowV3::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::DialogflowV3::GoogleLongrunningOperation
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Validates the specified flow and creates or updates validation results. Please
        # call this API after the training is completed to get the complete validation
        # results.
        # @param [String] name
        #   Required. The flow to validate. Format: `projects//locations//agents//flows/`.
        # @param [Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3ValidateFlowRequest] google_cloud_dialogflow_cx_v3_validate_flow_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3FlowValidationResult] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3FlowValidationResult]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def validate_project_location_agent_flow(name, google_cloud_dialogflow_cx_v3_validate_flow_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v3/{+name}:validate', options)
          command.request_representation = Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3ValidateFlowRequest::Representation
          command.request_object = google_cloud_dialogflow_cx_v3_validate_flow_request_object
          command.response_representation = Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3FlowValidationResult::Representation
          command.response_class = Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3FlowValidationResult
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a page in the specified flow. Note: You should always train a flow
        # prior to sending it queries. See the [training documentation](https://cloud.
        # google.com/dialogflow/cx/docs/concept/training).
        # @param [String] parent
        #   Required. The flow to create a page for. Format: `projects//locations//agents//
        #   flows/`.
        # @param [Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3Page] google_cloud_dialogflow_cx_v3_page_object
        # @param [String] language_code
        #   The language of the following fields in `page`: * `Page.entry_fulfillment.
        #   messages` * `Page.entry_fulfillment.conditional_cases` * `Page.event_handlers.
        #   trigger_fulfillment.messages` * `Page.event_handlers.trigger_fulfillment.
        #   conditional_cases` * `Page.form.parameters.fill_behavior.
        #   initial_prompt_fulfillment.messages` * `Page.form.parameters.fill_behavior.
        #   initial_prompt_fulfillment.conditional_cases` * `Page.form.parameters.
        #   fill_behavior.reprompt_event_handlers.messages` * `Page.form.parameters.
        #   fill_behavior.reprompt_event_handlers.conditional_cases` * `Page.
        #   transition_routes.trigger_fulfillment.messages` * `Page.transition_routes.
        #   trigger_fulfillment.conditional_cases` If not specified, the agent's default
        #   language is used. [Many languages](https://cloud.google.com/dialogflow/cx/docs/
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
        # @yieldparam result [Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3Page] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3Page]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_location_agent_flow_page(parent, google_cloud_dialogflow_cx_v3_page_object = nil, language_code: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v3/{+parent}/pages', options)
          command.request_representation = Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3Page::Representation
          command.request_object = google_cloud_dialogflow_cx_v3_page_object
          command.response_representation = Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3Page::Representation
          command.response_class = Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3Page
          command.params['parent'] = parent unless parent.nil?
          command.query['languageCode'] = language_code unless language_code.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes the specified page. Note: You should always train a flow prior to
        # sending it queries. See the [training documentation](https://cloud.google.com/
        # dialogflow/cx/docs/concept/training).
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
        # @yieldparam result [Google::Apis::DialogflowV3::GoogleProtobufEmpty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV3::GoogleProtobufEmpty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_location_agent_flow_page(name, force: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v3/{+name}', options)
          command.response_representation = Google::Apis::DialogflowV3::GoogleProtobufEmpty::Representation
          command.response_class = Google::Apis::DialogflowV3::GoogleProtobufEmpty
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
        #   dependent: * `Page.entry_fulfillment.messages` * `Page.entry_fulfillment.
        #   conditional_cases` * `Page.event_handlers.trigger_fulfillment.messages` * `
        #   Page.event_handlers.trigger_fulfillment.conditional_cases` * `Page.form.
        #   parameters.fill_behavior.initial_prompt_fulfillment.messages` * `Page.form.
        #   parameters.fill_behavior.initial_prompt_fulfillment.conditional_cases` * `Page.
        #   form.parameters.fill_behavior.reprompt_event_handlers.messages` * `Page.form.
        #   parameters.fill_behavior.reprompt_event_handlers.conditional_cases` * `Page.
        #   transition_routes.trigger_fulfillment.messages` * `Page.transition_routes.
        #   trigger_fulfillment.conditional_cases` If not specified, the agent's default
        #   language is used. [Many languages](https://cloud.google.com/dialogflow/cx/docs/
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
        # @yieldparam result [Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3Page] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3Page]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_agent_flow_page(name, language_code: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v3/{+name}', options)
          command.response_representation = Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3Page::Representation
          command.response_class = Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3Page
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
        #   `Page.entry_fulfillment.messages` * `Page.entry_fulfillment.conditional_cases`
        #   * `Page.event_handlers.trigger_fulfillment.messages` * `Page.event_handlers.
        #   trigger_fulfillment.conditional_cases` * `Page.form.parameters.fill_behavior.
        #   initial_prompt_fulfillment.messages` * `Page.form.parameters.fill_behavior.
        #   initial_prompt_fulfillment.conditional_cases` * `Page.form.parameters.
        #   fill_behavior.reprompt_event_handlers.messages` * `Page.form.parameters.
        #   fill_behavior.reprompt_event_handlers.conditional_cases` * `Page.
        #   transition_routes.trigger_fulfillment.messages` * `Page.transition_routes.
        #   trigger_fulfillment.conditional_cases` If not specified, the agent's default
        #   language is used. [Many languages](https://cloud.google.com/dialogflow/cx/docs/
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
        # @yieldparam result [Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3ListPagesResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3ListPagesResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_agent_flow_pages(parent, language_code: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v3/{+parent}/pages', options)
          command.response_representation = Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3ListPagesResponse::Representation
          command.response_class = Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3ListPagesResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['languageCode'] = language_code unless language_code.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates the specified page. Note: You should always train a flow prior to
        # sending it queries. See the [training documentation](https://cloud.google.com/
        # dialogflow/cx/docs/concept/training).
        # @param [String] name
        #   The unique identifier of the page. Required for the Pages.UpdatePage method.
        #   Pages.CreatePage populates the name automatically. Format: `projects//
        #   locations//agents//flows//pages/`.
        # @param [Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3Page] google_cloud_dialogflow_cx_v3_page_object
        # @param [String] language_code
        #   The language of the following fields in `page`: * `Page.entry_fulfillment.
        #   messages` * `Page.entry_fulfillment.conditional_cases` * `Page.event_handlers.
        #   trigger_fulfillment.messages` * `Page.event_handlers.trigger_fulfillment.
        #   conditional_cases` * `Page.form.parameters.fill_behavior.
        #   initial_prompt_fulfillment.messages` * `Page.form.parameters.fill_behavior.
        #   initial_prompt_fulfillment.conditional_cases` * `Page.form.parameters.
        #   fill_behavior.reprompt_event_handlers.messages` * `Page.form.parameters.
        #   fill_behavior.reprompt_event_handlers.conditional_cases` * `Page.
        #   transition_routes.trigger_fulfillment.messages` * `Page.transition_routes.
        #   trigger_fulfillment.conditional_cases` If not specified, the agent's default
        #   language is used. [Many languages](https://cloud.google.com/dialogflow/cx/docs/
        #   reference/language) are supported. Note: languages must be enabled in the
        #   agent before they can be used.
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
        # @yieldparam result [Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3Page] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3Page]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_project_location_agent_flow_page(name, google_cloud_dialogflow_cx_v3_page_object = nil, language_code: nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v3/{+name}', options)
          command.request_representation = Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3Page::Representation
          command.request_object = google_cloud_dialogflow_cx_v3_page_object
          command.response_representation = Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3Page::Representation
          command.response_class = Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3Page
          command.params['name'] = name unless name.nil?
          command.query['languageCode'] = language_code unless language_code.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates an TransitionRouteGroup in the specified flow. Note: You should always
        # train a flow prior to sending it queries. See the [training documentation](
        # https://cloud.google.com/dialogflow/cx/docs/concept/training).
        # @param [String] parent
        #   Required. The flow to create an TransitionRouteGroup for. Format: `projects//
        #   locations//agents//flows/`.
        # @param [Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3TransitionRouteGroup] google_cloud_dialogflow_cx_v3_transition_route_group_object
        # @param [String] language_code
        #   The language of the following fields in `TransitionRouteGroup`: * `
        #   TransitionRouteGroup.transition_routes.trigger_fulfillment.messages` * `
        #   TransitionRouteGroup.transition_routes.trigger_fulfillment.conditional_cases`
        #   If not specified, the agent's default language is used. [Many languages](https:
        #   //cloud.google.com/dialogflow/cx/docs/reference/language) are supported. Note:
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
        # @yieldparam result [Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3TransitionRouteGroup] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3TransitionRouteGroup]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_location_agent_flow_transition_route_group(parent, google_cloud_dialogflow_cx_v3_transition_route_group_object = nil, language_code: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v3/{+parent}/transitionRouteGroups', options)
          command.request_representation = Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3TransitionRouteGroup::Representation
          command.request_object = google_cloud_dialogflow_cx_v3_transition_route_group_object
          command.response_representation = Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3TransitionRouteGroup::Representation
          command.response_class = Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3TransitionRouteGroup
          command.params['parent'] = parent unless parent.nil?
          command.query['languageCode'] = language_code unless language_code.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes the specified TransitionRouteGroup. Note: You should always train a
        # flow prior to sending it queries. See the [training documentation](https://
        # cloud.google.com/dialogflow/cx/docs/concept/training).
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
        # @yieldparam result [Google::Apis::DialogflowV3::GoogleProtobufEmpty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV3::GoogleProtobufEmpty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_location_agent_flow_transition_route_group(name, force: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v3/{+name}', options)
          command.response_representation = Google::Apis::DialogflowV3::GoogleProtobufEmpty::Representation
          command.response_class = Google::Apis::DialogflowV3::GoogleProtobufEmpty
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
        #   The language to retrieve the transition route group for. The following fields
        #   are language dependent: * `TransitionRouteGroup.transition_routes.
        #   trigger_fulfillment.messages` * `TransitionRouteGroup.transition_routes.
        #   trigger_fulfillment.conditional_cases` If not specified, the agent's default
        #   language is used. [Many languages](https://cloud.google.com/dialogflow/cx/docs/
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
        # @yieldparam result [Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3TransitionRouteGroup] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3TransitionRouteGroup]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_agent_flow_transition_route_group(name, language_code: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v3/{+name}', options)
          command.response_representation = Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3TransitionRouteGroup::Representation
          command.response_class = Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3TransitionRouteGroup
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
        #   The language to list transition route groups for. The following fields are
        #   language dependent: * `TransitionRouteGroup.transition_routes.
        #   trigger_fulfillment.messages` * `TransitionRouteGroup.transition_routes.
        #   trigger_fulfillment.conditional_cases` If not specified, the agent's default
        #   language is used. [Many languages](https://cloud.google.com/dialogflow/cx/docs/
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
        # @yieldparam result [Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3ListTransitionRouteGroupsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3ListTransitionRouteGroupsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_agent_flow_transition_route_groups(parent, language_code: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v3/{+parent}/transitionRouteGroups', options)
          command.response_representation = Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3ListTransitionRouteGroupsResponse::Representation
          command.response_class = Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3ListTransitionRouteGroupsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['languageCode'] = language_code unless language_code.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates the specified TransitionRouteGroup. Note: You should always train a
        # flow prior to sending it queries. See the [training documentation](https://
        # cloud.google.com/dialogflow/cx/docs/concept/training).
        # @param [String] name
        #   The unique identifier of the transition route group. TransitionRouteGroups.
        #   CreateTransitionRouteGroup populates the name automatically. Format: `projects/
        #   /locations//agents//flows//transitionRouteGroups/`.
        # @param [Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3TransitionRouteGroup] google_cloud_dialogflow_cx_v3_transition_route_group_object
        # @param [String] language_code
        #   The language of the following fields in `TransitionRouteGroup`: * `
        #   TransitionRouteGroup.transition_routes.trigger_fulfillment.messages` * `
        #   TransitionRouteGroup.transition_routes.trigger_fulfillment.conditional_cases`
        #   If not specified, the agent's default language is used. [Many languages](https:
        #   //cloud.google.com/dialogflow/cx/docs/reference/language) are supported. Note:
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
        # @yieldparam result [Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3TransitionRouteGroup] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3TransitionRouteGroup]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_project_location_agent_flow_transition_route_group(name, google_cloud_dialogflow_cx_v3_transition_route_group_object = nil, language_code: nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v3/{+name}', options)
          command.request_representation = Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3TransitionRouteGroup::Representation
          command.request_object = google_cloud_dialogflow_cx_v3_transition_route_group_object
          command.response_representation = Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3TransitionRouteGroup::Representation
          command.response_class = Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3TransitionRouteGroup
          command.params['name'] = name unless name.nil?
          command.query['languageCode'] = language_code unless language_code.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Compares the specified base version with target version.
        # @param [String] base_version
        #   Required. Name of the base flow version to compare with the target version.
        #   Use version ID `0` to indicate the draft version of the specified flow. Format:
        #   `projects//locations//agents/ /flows//versions/`.
        # @param [Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3CompareVersionsRequest] google_cloud_dialogflow_cx_v3_compare_versions_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3CompareVersionsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3CompareVersionsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def compare_project_location_agent_flow_version_versions(base_version, google_cloud_dialogflow_cx_v3_compare_versions_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v3/{+baseVersion}:compareVersions', options)
          command.request_representation = Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3CompareVersionsRequest::Representation
          command.request_object = google_cloud_dialogflow_cx_v3_compare_versions_request_object
          command.response_representation = Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3CompareVersionsResponse::Representation
          command.response_class = Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3CompareVersionsResponse
          command.params['baseVersion'] = base_version unless base_version.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a Version in the specified Flow. This method is a [long-running
        # operation](https://cloud.google.com/dialogflow/cx/docs/how/long-running-
        # operation). The returned `Operation` type has the following method-specific
        # fields: - `metadata`: CreateVersionOperationMetadata - `response`: Version
        # @param [String] parent
        #   Required. The Flow to create an Version for. Format: `projects//locations//
        #   agents//flows/`.
        # @param [Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3Version] google_cloud_dialogflow_cx_v3_version_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV3::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV3::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_location_agent_flow_version(parent, google_cloud_dialogflow_cx_v3_version_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v3/{+parent}/versions', options)
          command.request_representation = Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3Version::Representation
          command.request_object = google_cloud_dialogflow_cx_v3_version_object
          command.response_representation = Google::Apis::DialogflowV3::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::DialogflowV3::GoogleLongrunningOperation
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
        # @yieldparam result [Google::Apis::DialogflowV3::GoogleProtobufEmpty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV3::GoogleProtobufEmpty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_location_agent_flow_version(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v3/{+name}', options)
          command.response_representation = Google::Apis::DialogflowV3::GoogleProtobufEmpty::Representation
          command.response_class = Google::Apis::DialogflowV3::GoogleProtobufEmpty
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
        # @yieldparam result [Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3Version] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3Version]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_agent_flow_version(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v3/{+name}', options)
          command.response_representation = Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3Version::Representation
          command.response_class = Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3Version
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
        # @yieldparam result [Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3ListVersionsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3ListVersionsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_agent_flow_versions(parent, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v3/{+parent}/versions', options)
          command.response_representation = Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3ListVersionsResponse::Representation
          command.response_class = Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3ListVersionsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Loads resources in the specified version to the draft flow. This method is a [
        # long-running operation](https://cloud.google.com/dialogflow/cx/docs/how/long-
        # running-operation). The returned `Operation` type has the following method-
        # specific fields: - `metadata`: An empty [Struct message](https://developers.
        # google.com/protocol-buffers/docs/reference/google.protobuf#struct) - `response`
        # : An [Empty message](https://developers.google.com/protocol-buffers/docs/
        # reference/google.protobuf#empty)
        # @param [String] name
        #   Required. The Version to be loaded to draft flow. Format: `projects//locations/
        #   /agents//flows//versions/`.
        # @param [Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3LoadVersionRequest] google_cloud_dialogflow_cx_v3_load_version_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV3::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV3::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def load_project_location_agent_flow_version(name, google_cloud_dialogflow_cx_v3_load_version_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v3/{+name}:load', options)
          command.request_representation = Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3LoadVersionRequest::Representation
          command.request_object = google_cloud_dialogflow_cx_v3_load_version_request_object
          command.response_representation = Google::Apis::DialogflowV3::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::DialogflowV3::GoogleLongrunningOperation
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates the specified Version.
        # @param [String] name
        #   Format: projects//locations//agents//flows//versions/. Version ID is a self-
        #   increasing number generated by Dialogflow upon version creation.
        # @param [Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3Version] google_cloud_dialogflow_cx_v3_version_object
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
        # @yieldparam result [Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3Version] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3Version]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_project_location_agent_flow_version(name, google_cloud_dialogflow_cx_v3_version_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v3/{+name}', options)
          command.request_representation = Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3Version::Representation
          command.request_object = google_cloud_dialogflow_cx_v3_version_object
          command.response_representation = Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3Version::Representation
          command.response_class = Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3Version
          command.params['name'] = name unless name.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates an intent in the specified agent. Note: You should always train a flow
        # prior to sending it queries. See the [training documentation](https://cloud.
        # google.com/dialogflow/cx/docs/concept/training).
        # @param [String] parent
        #   Required. The agent to create an intent for. Format: `projects//locations//
        #   agents/`.
        # @param [Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3Intent] google_cloud_dialogflow_cx_v3_intent_object
        # @param [String] language_code
        #   The language of the following fields in `intent`: * `Intent.training_phrases.
        #   parts.text` If not specified, the agent's default language is used. [Many
        #   languages](https://cloud.google.com/dialogflow/cx/docs/reference/language) are
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
        # @yieldparam result [Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3Intent] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3Intent]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_location_agent_intent(parent, google_cloud_dialogflow_cx_v3_intent_object = nil, language_code: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v3/{+parent}/intents', options)
          command.request_representation = Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3Intent::Representation
          command.request_object = google_cloud_dialogflow_cx_v3_intent_object
          command.response_representation = Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3Intent::Representation
          command.response_class = Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3Intent
          command.params['parent'] = parent unless parent.nil?
          command.query['languageCode'] = language_code unless language_code.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes the specified intent. Note: You should always train a flow prior to
        # sending it queries. See the [training documentation](https://cloud.google.com/
        # dialogflow/cx/docs/concept/training).
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
        # @yieldparam result [Google::Apis::DialogflowV3::GoogleProtobufEmpty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV3::GoogleProtobufEmpty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_location_agent_intent(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v3/{+name}', options)
          command.response_representation = Google::Apis::DialogflowV3::GoogleProtobufEmpty::Representation
          command.response_class = Google::Apis::DialogflowV3::GoogleProtobufEmpty
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
        #   dialogflow/cx/docs/reference/language) are supported. Note: languages must be
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
        # @yieldparam result [Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3Intent] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3Intent]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_agent_intent(name, language_code: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v3/{+name}', options)
          command.response_representation = Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3Intent::Representation
          command.response_class = Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3Intent
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
        #   language is used. [Many languages](https://cloud.google.com/dialogflow/cx/docs/
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
        # @yieldparam result [Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3ListIntentsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3ListIntentsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_agent_intents(parent, intent_view: nil, language_code: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v3/{+parent}/intents', options)
          command.response_representation = Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3ListIntentsResponse::Representation
          command.response_class = Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3ListIntentsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['intentView'] = intent_view unless intent_view.nil?
          command.query['languageCode'] = language_code unless language_code.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates the specified intent. Note: You should always train a flow prior to
        # sending it queries. See the [training documentation](https://cloud.google.com/
        # dialogflow/cx/docs/concept/training).
        # @param [String] name
        #   The unique identifier of the intent. Required for the Intents.UpdateIntent
        #   method. Intents.CreateIntent populates the name automatically. Format: `
        #   projects//locations//agents//intents/`.
        # @param [Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3Intent] google_cloud_dialogflow_cx_v3_intent_object
        # @param [String] language_code
        #   The language of the following fields in `intent`: * `Intent.training_phrases.
        #   parts.text` If not specified, the agent's default language is used. [Many
        #   languages](https://cloud.google.com/dialogflow/cx/docs/reference/language) are
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
        # @yieldparam result [Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3Intent] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3Intent]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_project_location_agent_intent(name, google_cloud_dialogflow_cx_v3_intent_object = nil, language_code: nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v3/{+name}', options)
          command.request_representation = Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3Intent::Representation
          command.request_object = google_cloud_dialogflow_cx_v3_intent_object
          command.response_representation = Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3Intent::Representation
          command.response_class = Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3Intent
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
        # Note: Always use agent versions for production traffic. See [Versions and
        # environments](https://cloud.google.com/dialogflow/cx/docs/concept/version).
        # @param [String] session
        #   Required. The name of the session this query is sent to. Format: `projects//
        #   locations//agents//sessions/` or `projects//locations//agents//environments//
        #   sessions/`. If `Environment ID` is not specified, we assume default 'draft'
        #   environment. It's up to the API caller to choose an appropriate `Session ID`.
        #   It can be a random number or some type of session identifiers (preferably
        #   hashed). The length of the `Session ID` must not exceed 36 characters. For
        #   more information, see the [sessions guide](https://cloud.google.com/dialogflow/
        #   cx/docs/concept/session). Note: Always use agent versions for production
        #   traffic. See [Versions and environments](https://cloud.google.com/dialogflow/
        #   cx/docs/concept/version).
        # @param [Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3DetectIntentRequest] google_cloud_dialogflow_cx_v3_detect_intent_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3DetectIntentResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3DetectIntentResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def detect_project_location_agent_session_intent(session, google_cloud_dialogflow_cx_v3_detect_intent_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v3/{+session}:detectIntent', options)
          command.request_representation = Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3DetectIntentRequest::Representation
          command.request_object = google_cloud_dialogflow_cx_v3_detect_intent_request_object
          command.response_representation = Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3DetectIntentResponse::Representation
          command.response_class = Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3DetectIntentResponse
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
        # @param [Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3FulfillIntentRequest] google_cloud_dialogflow_cx_v3_fulfill_intent_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3FulfillIntentResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3FulfillIntentResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def fulfill_project_location_agent_session_intent(session, google_cloud_dialogflow_cx_v3_fulfill_intent_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v3/{+session}:fulfillIntent', options)
          command.request_representation = Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3FulfillIntentRequest::Representation
          command.request_object = google_cloud_dialogflow_cx_v3_fulfill_intent_request_object
          command.response_representation = Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3FulfillIntentResponse::Representation
          command.response_class = Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3FulfillIntentResponse
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
        # @param [Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3MatchIntentRequest] google_cloud_dialogflow_cx_v3_match_intent_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3MatchIntentResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3MatchIntentResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def match_project_location_agent_session_intent(session, google_cloud_dialogflow_cx_v3_match_intent_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v3/{+session}:matchIntent', options)
          command.request_representation = Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3MatchIntentRequest::Representation
          command.request_object = google_cloud_dialogflow_cx_v3_match_intent_request_object
          command.response_representation = Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3MatchIntentResponse::Representation
          command.response_class = Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3MatchIntentResponse
          command.params['session'] = session unless session.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a session entity type.
        # @param [String] parent
        #   Required. The session to create a session entity type for. Format: `projects//
        #   locations//agents//sessions/` or `projects//locations//agents//environments//
        #   sessions/`. If `Environment ID` is not specified, we assume default 'draft'
        #   environment.
        # @param [Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3SessionEntityType] google_cloud_dialogflow_cx_v3_session_entity_type_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3SessionEntityType] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3SessionEntityType]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_location_agent_session_entity_type(parent, google_cloud_dialogflow_cx_v3_session_entity_type_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v3/{+parent}/entityTypes', options)
          command.request_representation = Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3SessionEntityType::Representation
          command.request_object = google_cloud_dialogflow_cx_v3_session_entity_type_object
          command.response_representation = Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3SessionEntityType::Representation
          command.response_class = Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3SessionEntityType
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
        # @yieldparam result [Google::Apis::DialogflowV3::GoogleProtobufEmpty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV3::GoogleProtobufEmpty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_location_agent_session_entity_type(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v3/{+name}', options)
          command.response_representation = Google::Apis::DialogflowV3::GoogleProtobufEmpty::Representation
          command.response_class = Google::Apis::DialogflowV3::GoogleProtobufEmpty
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
        # @yieldparam result [Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3SessionEntityType] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3SessionEntityType]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_agent_session_entity_type(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v3/{+name}', options)
          command.response_representation = Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3SessionEntityType::Representation
          command.response_class = Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3SessionEntityType
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
        # @yieldparam result [Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3ListSessionEntityTypesResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3ListSessionEntityTypesResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_agent_session_entity_types(parent, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v3/{+parent}/entityTypes', options)
          command.response_representation = Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3ListSessionEntityTypesResponse::Representation
          command.response_class = Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3ListSessionEntityTypesResponse
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
        # @param [Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3SessionEntityType] google_cloud_dialogflow_cx_v3_session_entity_type_object
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
        # @yieldparam result [Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3SessionEntityType] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3SessionEntityType]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_project_location_agent_session_entity_type(name, google_cloud_dialogflow_cx_v3_session_entity_type_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v3/{+name}', options)
          command.request_representation = Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3SessionEntityType::Representation
          command.request_object = google_cloud_dialogflow_cx_v3_session_entity_type_object
          command.response_representation = Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3SessionEntityType::Representation
          command.response_class = Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3SessionEntityType
          command.params['name'] = name unless name.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Batch deletes test cases.
        # @param [String] parent
        #   Required. The agent to delete test cases from. Format: `projects//locations//
        #   agents/`.
        # @param [Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3BatchDeleteTestCasesRequest] google_cloud_dialogflow_cx_v3_batch_delete_test_cases_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV3::GoogleProtobufEmpty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV3::GoogleProtobufEmpty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def batch_project_location_agent_test_case_delete(parent, google_cloud_dialogflow_cx_v3_batch_delete_test_cases_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v3/{+parent}/testCases:batchDelete', options)
          command.request_representation = Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3BatchDeleteTestCasesRequest::Representation
          command.request_object = google_cloud_dialogflow_cx_v3_batch_delete_test_cases_request_object
          command.response_representation = Google::Apis::DialogflowV3::GoogleProtobufEmpty::Representation
          command.response_class = Google::Apis::DialogflowV3::GoogleProtobufEmpty
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Kicks off a batch run of test cases. This method is a [long-running operation](
        # https://cloud.google.com/dialogflow/cx/docs/how/long-running-operation). The
        # returned `Operation` type has the following method-specific fields: - `
        # metadata`: BatchRunTestCasesMetadata - `response`: BatchRunTestCasesResponse
        # @param [String] parent
        #   Required. Agent name. Format: `projects//locations//agents/ `.
        # @param [Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3BatchRunTestCasesRequest] google_cloud_dialogflow_cx_v3_batch_run_test_cases_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV3::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV3::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def batch_project_location_agent_test_case_run(parent, google_cloud_dialogflow_cx_v3_batch_run_test_cases_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v3/{+parent}/testCases:batchRun', options)
          command.request_representation = Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3BatchRunTestCasesRequest::Representation
          command.request_object = google_cloud_dialogflow_cx_v3_batch_run_test_cases_request_object
          command.response_representation = Google::Apis::DialogflowV3::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::DialogflowV3::GoogleLongrunningOperation
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Calculates the test coverage for an agent.
        # @param [String] agent
        #   Required. The agent to calculate coverage for. Format: `projects//locations//
        #   agents/`.
        # @param [String] type
        #   Required. The type of coverage requested.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3CalculateCoverageResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3CalculateCoverageResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def calculate_project_location_agent_test_case_coverage(agent, type: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v3/{+agent}/testCases:calculateCoverage', options)
          command.response_representation = Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3CalculateCoverageResponse::Representation
          command.response_class = Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3CalculateCoverageResponse
          command.params['agent'] = agent unless agent.nil?
          command.query['type'] = type unless type.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a test case for the given agent.
        # @param [String] parent
        #   Required. The agent to create the test case for. Format: `projects//locations//
        #   agents/`.
        # @param [Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3TestCase] google_cloud_dialogflow_cx_v3_test_case_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3TestCase] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3TestCase]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_location_agent_test_case(parent, google_cloud_dialogflow_cx_v3_test_case_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v3/{+parent}/testCases', options)
          command.request_representation = Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3TestCase::Representation
          command.request_object = google_cloud_dialogflow_cx_v3_test_case_object
          command.response_representation = Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3TestCase::Representation
          command.response_class = Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3TestCase
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Exports the test cases under the agent to a Cloud Storage bucket or a local
        # file. Filter can be applied to export a subset of test cases. This method is a
        # [long-running operation](https://cloud.google.com/dialogflow/cx/docs/how/long-
        # running-operation). The returned `Operation` type has the following method-
        # specific fields: - `metadata`: ExportTestCasesMetadata - `response`:
        # ExportTestCasesResponse
        # @param [String] parent
        #   Required. The agent where to export test cases from. Format: `projects//
        #   locations//agents/`.
        # @param [Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3ExportTestCasesRequest] google_cloud_dialogflow_cx_v3_export_test_cases_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV3::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV3::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def export_project_location_agent_test_case(parent, google_cloud_dialogflow_cx_v3_export_test_cases_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v3/{+parent}/testCases:export', options)
          command.request_representation = Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3ExportTestCasesRequest::Representation
          command.request_object = google_cloud_dialogflow_cx_v3_export_test_cases_request_object
          command.response_representation = Google::Apis::DialogflowV3::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::DialogflowV3::GoogleLongrunningOperation
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets a test case.
        # @param [String] name
        #   Required. The name of the testcase. Format: `projects//locations//agents//
        #   testCases/`.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3TestCase] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3TestCase]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_agent_test_case(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v3/{+name}', options)
          command.response_representation = Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3TestCase::Representation
          command.response_class = Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3TestCase
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Imports the test cases from a Cloud Storage bucket or a local file. It always
        # creates new test cases and won't overwrite any existing ones. The provided ID
        # in the imported test case is neglected. This method is a [long-running
        # operation](https://cloud.google.com/dialogflow/cx/docs/how/long-running-
        # operation). The returned `Operation` type has the following method-specific
        # fields: - `metadata`: ImportTestCasesMetadata - `response`:
        # ImportTestCasesResponse
        # @param [String] parent
        #   Required. The agent to import test cases to. Format: `projects//locations//
        #   agents/`.
        # @param [Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3ImportTestCasesRequest] google_cloud_dialogflow_cx_v3_import_test_cases_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV3::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV3::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def import_project_location_agent_test_case(parent, google_cloud_dialogflow_cx_v3_import_test_cases_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v3/{+parent}/testCases:import', options)
          command.request_representation = Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3ImportTestCasesRequest::Representation
          command.request_object = google_cloud_dialogflow_cx_v3_import_test_cases_request_object
          command.response_representation = Google::Apis::DialogflowV3::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::DialogflowV3::GoogleLongrunningOperation
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Fetches a list of test cases for a given agent.
        # @param [String] parent
        #   Required. The agent to list all pages for. Format: `projects//locations//
        #   agents/`.
        # @param [Fixnum] page_size
        #   The maximum number of items to return in a single page. By default 20. Note
        #   that when TestCaseView = FULL, the maximum page size allowed is 20. When
        #   TestCaseView = BASIC, the maximum page size allowed is 500.
        # @param [String] page_token
        #   The next_page_token value returned from a previous list request.
        # @param [String] view
        #   Specifies whether response should include all fields or just the metadata.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3ListTestCasesResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3ListTestCasesResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_agent_test_cases(parent, page_size: nil, page_token: nil, view: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v3/{+parent}/testCases', options)
          command.response_representation = Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3ListTestCasesResponse::Representation
          command.response_class = Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3ListTestCasesResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['view'] = view unless view.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates the specified test case.
        # @param [String] name
        #   The unique identifier of the test case. TestCases.CreateTestCase will populate
        #   the name automatically. Otherwise use format: `projects//locations//agents/ /
        #   testCases/`.
        # @param [Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3TestCase] google_cloud_dialogflow_cx_v3_test_case_object
        # @param [String] update_mask
        #   Required. The mask to specify which fields should be updated. The `
        #   creationTime` and `lastTestResult` cannot be updated.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3TestCase] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3TestCase]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_project_location_agent_test_case(name, google_cloud_dialogflow_cx_v3_test_case_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v3/{+name}', options)
          command.request_representation = Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3TestCase::Representation
          command.request_object = google_cloud_dialogflow_cx_v3_test_case_object
          command.response_representation = Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3TestCase::Representation
          command.response_class = Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3TestCase
          command.params['name'] = name unless name.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Kicks off a test case run. This method is a [long-running operation](https://
        # cloud.google.com/dialogflow/cx/docs/how/long-running-operation). The returned `
        # Operation` type has the following method-specific fields: - `metadata`:
        # RunTestCaseMetadata - `response`: RunTestCaseResponse
        # @param [String] name
        #   Required. Format of test case name to run: `projects//locations/ /agents//
        #   testCases/`.
        # @param [Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3RunTestCaseRequest] google_cloud_dialogflow_cx_v3_run_test_case_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV3::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV3::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def run_project_location_agent_test_case(name, google_cloud_dialogflow_cx_v3_run_test_case_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v3/{+name}:run', options)
          command.request_representation = Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3RunTestCaseRequest::Representation
          command.request_object = google_cloud_dialogflow_cx_v3_run_test_case_request_object
          command.response_representation = Google::Apis::DialogflowV3::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::DialogflowV3::GoogleLongrunningOperation
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets a test case result.
        # @param [String] name
        #   Required. The name of the testcase. Format: `projects//locations//agents//
        #   testCases//results/`.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3TestCaseResult] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3TestCaseResult]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_agent_test_case_result(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v3/{+name}', options)
          command.response_representation = Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3TestCaseResult::Representation
          command.response_class = Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3TestCaseResult
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Fetches a list of results for a given test case.
        # @param [String] parent
        #   Required. The test case to list results for. Format: `projects//locations//
        #   agents// testCases/`. Specify a `-` as a wildcard for TestCase ID to list
        #   results across multiple test cases.
        # @param [String] filter
        #   The filter expression used to filter test case results. See [API Filtering](
        #   https://aip.dev/160). The expression is case insensitive. Only 'AND' is
        #   supported for logical operators. The supported syntax is listed below in
        #   detail: [AND ] ... [AND latest] The supported fields and operators are: field
        #   operator `environment` `=`, `IN` (Use value `draft` for draft environment) `
        #   test_time` `>`, `<` `latest` only returns the latest test result in all
        #   results for each test case. Examples: * "environment=draft AND latest" matches
        #   the latest test result for each test case in the draft environment. * "
        #   environment IN (e1,e2)" matches any test case results with an environment
        #   resource name of either "e1" or "e2". * "test_time > 1602540713" matches any
        #   test case results with test time later than a unix timestamp in seconds
        #   1602540713.
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
        # @yieldparam result [Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3ListTestCaseResultsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3ListTestCaseResultsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_agent_test_case_results(parent, filter: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v3/{+parent}/results', options)
          command.response_representation = Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3ListTestCaseResultsResponse::Representation
          command.response_class = Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3ListTestCaseResultsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a webhook in the specified agent.
        # @param [String] parent
        #   Required. The agent to create a webhook for. Format: `projects//locations//
        #   agents/`.
        # @param [Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3Webhook] google_cloud_dialogflow_cx_v3_webhook_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3Webhook] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3Webhook]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_location_agent_webhook(parent, google_cloud_dialogflow_cx_v3_webhook_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v3/{+parent}/webhooks', options)
          command.request_representation = Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3Webhook::Representation
          command.request_object = google_cloud_dialogflow_cx_v3_webhook_object
          command.response_representation = Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3Webhook::Representation
          command.response_class = Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3Webhook
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
        # @yieldparam result [Google::Apis::DialogflowV3::GoogleProtobufEmpty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV3::GoogleProtobufEmpty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_location_agent_webhook(name, force: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v3/{+name}', options)
          command.response_representation = Google::Apis::DialogflowV3::GoogleProtobufEmpty::Representation
          command.response_class = Google::Apis::DialogflowV3::GoogleProtobufEmpty
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
        # @yieldparam result [Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3Webhook] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3Webhook]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_agent_webhook(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v3/{+name}', options)
          command.response_representation = Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3Webhook::Representation
          command.response_class = Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3Webhook
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
        # @yieldparam result [Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3ListWebhooksResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3ListWebhooksResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_agent_webhooks(parent, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v3/{+parent}/webhooks', options)
          command.response_representation = Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3ListWebhooksResponse::Representation
          command.response_class = Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3ListWebhooksResponse
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
        # @param [Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3Webhook] google_cloud_dialogflow_cx_v3_webhook_object
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
        # @yieldparam result [Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3Webhook] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3Webhook]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_project_location_agent_webhook(name, google_cloud_dialogflow_cx_v3_webhook_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v3/{+name}', options)
          command.request_representation = Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3Webhook::Representation
          command.request_object = google_cloud_dialogflow_cx_v3_webhook_object
          command.response_representation = Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3Webhook::Representation
          command.response_class = Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3Webhook
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
        # @yieldparam result [Google::Apis::DialogflowV3::GoogleProtobufEmpty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV3::GoogleProtobufEmpty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def cancel_project_location_operation(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v3/{+name}:cancel', options)
          command.response_representation = Google::Apis::DialogflowV3::GoogleProtobufEmpty::Representation
          command.response_class = Google::Apis::DialogflowV3::GoogleProtobufEmpty
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
        # @yieldparam result [Google::Apis::DialogflowV3::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV3::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_operation(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v3/{+name}', options)
          command.response_representation = Google::Apis::DialogflowV3::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::DialogflowV3::GoogleLongrunningOperation
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
        # @yieldparam result [Google::Apis::DialogflowV3::GoogleLongrunningListOperationsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV3::GoogleLongrunningListOperationsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_operations(name, filter: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v3/{+name}/operations', options)
          command.response_representation = Google::Apis::DialogflowV3::GoogleLongrunningListOperationsResponse::Representation
          command.response_class = Google::Apis::DialogflowV3::GoogleLongrunningListOperationsResponse
          command.params['name'] = name unless name.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Create security settings in the specified location.
        # @param [String] parent
        #   Required. The location to create an SecuritySettings for. Format: `projects//
        #   locations/`.
        # @param [Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3SecuritySettings] google_cloud_dialogflow_cx_v3_security_settings_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3SecuritySettings] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3SecuritySettings]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_location_security_setting(parent, google_cloud_dialogflow_cx_v3_security_settings_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v3/{+parent}/securitySettings', options)
          command.request_representation = Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3SecuritySettings::Representation
          command.request_object = google_cloud_dialogflow_cx_v3_security_settings_object
          command.response_representation = Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3SecuritySettings::Representation
          command.response_class = Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3SecuritySettings
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes the specified SecuritySettings.
        # @param [String] name
        #   Required. The name of the SecuritySettings to delete. Format: `projects//
        #   locations//securitySettings/`.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV3::GoogleProtobufEmpty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV3::GoogleProtobufEmpty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_location_security_setting(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v3/{+name}', options)
          command.response_representation = Google::Apis::DialogflowV3::GoogleProtobufEmpty::Representation
          command.response_class = Google::Apis::DialogflowV3::GoogleProtobufEmpty
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Retrieves the specified SecuritySettings. The returned settings may be stale
        # by up to 1 minute.
        # @param [String] name
        #   Required. Resource name of the settings. Format: `projects//locations//
        #   securitySettings/`.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3SecuritySettings] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3SecuritySettings]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_security_setting(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v3/{+name}', options)
          command.response_representation = Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3SecuritySettings::Representation
          command.response_class = Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3SecuritySettings
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Returns the list of all security settings in the specified location.
        # @param [String] parent
        #   Required. The location to list all security settings for. Format: `projects//
        #   locations/`.
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
        # @yieldparam result [Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3ListSecuritySettingsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3ListSecuritySettingsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_security_settings(parent, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v3/{+parent}/securitySettings', options)
          command.response_representation = Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3ListSecuritySettingsResponse::Representation
          command.response_class = Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3ListSecuritySettingsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates the specified SecuritySettings.
        # @param [String] name
        #   Resource name of the settings. Required for the SecuritySettingsService.
        #   UpdateSecuritySettings method. SecuritySettingsService.CreateSecuritySettings
        #   populates the name automatically. Format: `projects//locations//
        #   securitySettings/`.
        # @param [Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3SecuritySettings] google_cloud_dialogflow_cx_v3_security_settings_object
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
        # @yieldparam result [Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3SecuritySettings] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3SecuritySettings]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_project_location_security_setting(name, google_cloud_dialogflow_cx_v3_security_settings_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v3/{+name}', options)
          command.request_representation = Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3SecuritySettings::Representation
          command.request_object = google_cloud_dialogflow_cx_v3_security_settings_object
          command.response_representation = Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3SecuritySettings::Representation
          command.response_class = Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3SecuritySettings
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
        # @yieldparam result [Google::Apis::DialogflowV3::GoogleProtobufEmpty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV3::GoogleProtobufEmpty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def cancel_project_operation(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v3/{+name}:cancel', options)
          command.response_representation = Google::Apis::DialogflowV3::GoogleProtobufEmpty::Representation
          command.response_class = Google::Apis::DialogflowV3::GoogleProtobufEmpty
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
        # @yieldparam result [Google::Apis::DialogflowV3::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV3::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_operation(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v3/{+name}', options)
          command.response_representation = Google::Apis::DialogflowV3::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::DialogflowV3::GoogleLongrunningOperation
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
        # @yieldparam result [Google::Apis::DialogflowV3::GoogleLongrunningListOperationsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV3::GoogleLongrunningListOperationsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_operations(name, filter: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v3/{+name}/operations', options)
          command.response_representation = Google::Apis::DialogflowV3::GoogleLongrunningListOperationsResponse::Representation
          command.response_class = Google::Apis::DialogflowV3::GoogleLongrunningListOperationsResponse
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
