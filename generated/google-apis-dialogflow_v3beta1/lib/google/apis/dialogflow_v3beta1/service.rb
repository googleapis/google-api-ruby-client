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
        DEFAULT_ENDPOINT_TEMPLATE = "https://dialogflow.$UNIVERSE_DOMAIN$/"

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
                client_name: 'google-apis-dialogflow_v3beta1',
                client_version: Google::Apis::DialogflowV3beta1::GEM_VERSION)
          @batch_path = 'batch'
        end
        
        # 
        # @param [String] name
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV3beta1::GoogleCloudLocationLocation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV3beta1::GoogleCloudLocationLocation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v3beta1/{+name}', options)
          command.response_representation = Google::Apis::DialogflowV3beta1::GoogleCloudLocationLocation::Representation
          command.response_class = Google::Apis::DialogflowV3beta1::GoogleCloudLocationLocation
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # 
        # @param [String] name
        # @param [Array<String>, String] extra_location_types
        # @param [String] filter
        # @param [Fixnum] page_size
        # @param [String] page_token
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV3beta1::GoogleCloudLocationListLocationsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV3beta1::GoogleCloudLocationListLocationsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_locations(name, extra_location_types: nil, filter: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v3beta1/{+name}/locations', options)
          command.response_representation = Google::Apis::DialogflowV3beta1::GoogleCloudLocationListLocationsResponse::Representation
          command.response_class = Google::Apis::DialogflowV3beta1::GoogleCloudLocationListLocationsResponse
          command.params['name'] = name unless name.nil?
          command.query['extraLocationTypes'] = extra_location_types unless extra_location_types.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # 
        # @param [String] parent
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
        
        # 
        # @param [String] name
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
        
        # 
        # @param [String] name
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
        
        # 
        # @param [String] name
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
        
        # 
        # @param [String] name
        # @param [String] language_code
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1GenerativeSettings] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1GenerativeSettings]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_agent_generative_settings(name, language_code: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v3beta1/{+name}', options)
          command.response_representation = Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1GenerativeSettings::Representation
          command.response_class = Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1GenerativeSettings
          command.params['name'] = name unless name.nil?
          command.query['languageCode'] = language_code unless language_code.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # 
        # @param [String] name
        # @param [String] language_code
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1AgentValidationResult] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1AgentValidationResult]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_agent_validation_result(name, language_code: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v3beta1/{+name}', options)
          command.response_representation = Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1AgentValidationResult::Representation
          command.response_class = Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1AgentValidationResult
          command.params['name'] = name unless name.nil?
          command.query['languageCode'] = language_code unless language_code.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # 
        # @param [String] parent
        # @param [Fixnum] page_size
        # @param [String] page_token
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
        
        # 
        # @param [String] name
        # @param [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1Agent] google_cloud_dialogflow_cx_v3beta1_agent_object
        # @param [String] update_mask
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
        
        # 
        # @param [String] name
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
        
        # 
        # @param [String] name
        # @param [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1GenerativeSettings] google_cloud_dialogflow_cx_v3beta1_generative_settings_object
        # @param [String] update_mask
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1GenerativeSettings] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1GenerativeSettings]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def update_project_location_agent_generative_settings(name, google_cloud_dialogflow_cx_v3beta1_generative_settings_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v3beta1/{+name}', options)
          command.request_representation = Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1GenerativeSettings::Representation
          command.request_object = google_cloud_dialogflow_cx_v3beta1_generative_settings_object
          command.response_representation = Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1GenerativeSettings::Representation
          command.response_class = Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1GenerativeSettings
          command.params['name'] = name unless name.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # 
        # @param [String] name
        # @param [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1ValidateAgentRequest] google_cloud_dialogflow_cx_v3beta1_validate_agent_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1AgentValidationResult] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1AgentValidationResult]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def validate_project_location_agent(name, google_cloud_dialogflow_cx_v3beta1_validate_agent_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v3beta1/{+name}:validate', options)
          command.request_representation = Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1ValidateAgentRequest::Representation
          command.request_object = google_cloud_dialogflow_cx_v3beta1_validate_agent_request_object
          command.response_representation = Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1AgentValidationResult::Representation
          command.response_class = Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1AgentValidationResult
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # 
        # @param [String] name
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1Changelog] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1Changelog]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_agent_changelog(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v3beta1/{+name}', options)
          command.response_representation = Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1Changelog::Representation
          command.response_class = Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1Changelog
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # 
        # @param [String] parent
        # @param [String] filter
        # @param [Fixnum] page_size
        # @param [String] page_token
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1ListChangelogsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1ListChangelogsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_agent_changelogs(parent, filter: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v3beta1/{+parent}/changelogs', options)
          command.response_representation = Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1ListChangelogsResponse::Representation
          command.response_class = Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1ListChangelogsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # 
        # @param [String] name
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
        def delete_project_location_agent_conversation(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v3beta1/{+name}', options)
          command.response_representation = Google::Apis::DialogflowV3beta1::GoogleProtobufEmpty::Representation
          command.response_class = Google::Apis::DialogflowV3beta1::GoogleProtobufEmpty
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # 
        # @param [String] name
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1Conversation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1Conversation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_agent_conversation(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v3beta1/{+name}', options)
          command.response_representation = Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1Conversation::Representation
          command.response_class = Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1Conversation
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # 
        # @param [String] parent
        # @param [String] filter
        # @param [Fixnum] page_size
        # @param [String] page_token
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1ListConversationsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1ListConversationsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_agent_conversations(parent, filter: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v3beta1/{+parent}/conversations', options)
          command.response_representation = Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1ListConversationsResponse::Representation
          command.response_class = Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1ListConversationsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # 
        # @param [String] parent
        # @param [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1EntityType] google_cloud_dialogflow_cx_v3beta1_entity_type_object
        # @param [String] language_code
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
        
        # 
        # @param [String] name
        # @param [Boolean] force
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
        
        # 
        # @param [String] parent
        # @param [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1ExportEntityTypesRequest] google_cloud_dialogflow_cx_v3beta1_export_entity_types_request_object
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
        def export_project_location_agent_entity_type(parent, google_cloud_dialogflow_cx_v3beta1_export_entity_types_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v3beta1/{+parent}/entityTypes:export', options)
          command.request_representation = Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1ExportEntityTypesRequest::Representation
          command.request_object = google_cloud_dialogflow_cx_v3beta1_export_entity_types_request_object
          command.response_representation = Google::Apis::DialogflowV3beta1::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::DialogflowV3beta1::GoogleLongrunningOperation
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # 
        # @param [String] name
        # @param [String] language_code
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
        
        # 
        # @param [String] parent
        # @param [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1ImportEntityTypesRequest] google_cloud_dialogflow_cx_v3beta1_import_entity_types_request_object
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
        def import_project_location_agent_entity_type(parent, google_cloud_dialogflow_cx_v3beta1_import_entity_types_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v3beta1/{+parent}/entityTypes:import', options)
          command.request_representation = Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1ImportEntityTypesRequest::Representation
          command.request_object = google_cloud_dialogflow_cx_v3beta1_import_entity_types_request_object
          command.response_representation = Google::Apis::DialogflowV3beta1::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::DialogflowV3beta1::GoogleLongrunningOperation
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # 
        # @param [String] parent
        # @param [String] language_code
        # @param [Fixnum] page_size
        # @param [String] page_token
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
        
        # 
        # @param [String] name
        # @param [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1EntityType] google_cloud_dialogflow_cx_v3beta1_entity_type_object
        # @param [String] language_code
        # @param [String] update_mask
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
        
        # 
        # @param [String] parent
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
        
        # 
        # @param [String] name
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
        
        # 
        # @param [String] environment
        # @param [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1DeployFlowRequest] google_cloud_dialogflow_cx_v3beta1_deploy_flow_request_object
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
        def deploy_project_location_agent_environment_flow(environment, google_cloud_dialogflow_cx_v3beta1_deploy_flow_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v3beta1/{+environment}:deployFlow', options)
          command.request_representation = Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1DeployFlowRequest::Representation
          command.request_object = google_cloud_dialogflow_cx_v3beta1_deploy_flow_request_object
          command.response_representation = Google::Apis::DialogflowV3beta1::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::DialogflowV3beta1::GoogleLongrunningOperation
          command.params['environment'] = environment unless environment.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # 
        # @param [String] name
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
        
        # 
        # @param [String] parent
        # @param [Fixnum] page_size
        # @param [String] page_token
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
        
        # 
        # @param [String] name
        # @param [Fixnum] page_size
        # @param [String] page_token
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
        
        # 
        # @param [String] name
        # @param [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1Environment] google_cloud_dialogflow_cx_v3beta1_environment_object
        # @param [String] update_mask
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
        
        # 
        # @param [String] environment
        # @param [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1RunContinuousTestRequest] google_cloud_dialogflow_cx_v3beta1_run_continuous_test_request_object
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
        def run_project_location_agent_environment_continuous_test(environment, google_cloud_dialogflow_cx_v3beta1_run_continuous_test_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v3beta1/{+environment}:runContinuousTest', options)
          command.request_representation = Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1RunContinuousTestRequest::Representation
          command.request_object = google_cloud_dialogflow_cx_v3beta1_run_continuous_test_request_object
          command.response_representation = Google::Apis::DialogflowV3beta1::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::DialogflowV3beta1::GoogleLongrunningOperation
          command.params['environment'] = environment unless environment.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # 
        # @param [String] parent
        # @param [Fixnum] page_size
        # @param [String] page_token
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1ListContinuousTestResultsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1ListContinuousTestResultsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_agent_environment_continuous_test_results(parent, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v3beta1/{+parent}/continuousTestResults', options)
          command.response_representation = Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1ListContinuousTestResultsResponse::Representation
          command.response_class = Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1ListContinuousTestResultsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # 
        # @param [String] name
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1Deployment] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1Deployment]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_agent_environment_deployment(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v3beta1/{+name}', options)
          command.response_representation = Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1Deployment::Representation
          command.response_class = Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1Deployment
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # 
        # @param [String] parent
        # @param [Fixnum] page_size
        # @param [String] page_token
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1ListDeploymentsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1ListDeploymentsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_agent_environment_deployments(parent, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v3beta1/{+parent}/deployments', options)
          command.response_representation = Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1ListDeploymentsResponse::Representation
          command.response_class = Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1ListDeploymentsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # 
        # @param [String] parent
        # @param [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1Experiment] google_cloud_dialogflow_cx_v3beta1_experiment_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1Experiment] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1Experiment]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_location_agent_environment_experiment(parent, google_cloud_dialogflow_cx_v3beta1_experiment_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v3beta1/{+parent}/experiments', options)
          command.request_representation = Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1Experiment::Representation
          command.request_object = google_cloud_dialogflow_cx_v3beta1_experiment_object
          command.response_representation = Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1Experiment::Representation
          command.response_class = Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1Experiment
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # 
        # @param [String] name
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
        def delete_project_location_agent_environment_experiment(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v3beta1/{+name}', options)
          command.response_representation = Google::Apis::DialogflowV3beta1::GoogleProtobufEmpty::Representation
          command.response_class = Google::Apis::DialogflowV3beta1::GoogleProtobufEmpty
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # 
        # @param [String] name
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1Experiment] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1Experiment]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_agent_environment_experiment(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v3beta1/{+name}', options)
          command.response_representation = Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1Experiment::Representation
          command.response_class = Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1Experiment
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # 
        # @param [String] parent
        # @param [Fixnum] page_size
        # @param [String] page_token
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1ListExperimentsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1ListExperimentsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_agent_environment_experiments(parent, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v3beta1/{+parent}/experiments', options)
          command.response_representation = Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1ListExperimentsResponse::Representation
          command.response_class = Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1ListExperimentsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # 
        # @param [String] name
        # @param [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1Experiment] google_cloud_dialogflow_cx_v3beta1_experiment_object
        # @param [String] update_mask
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1Experiment] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1Experiment]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_project_location_agent_environment_experiment(name, google_cloud_dialogflow_cx_v3beta1_experiment_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v3beta1/{+name}', options)
          command.request_representation = Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1Experiment::Representation
          command.request_object = google_cloud_dialogflow_cx_v3beta1_experiment_object
          command.response_representation = Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1Experiment::Representation
          command.response_class = Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1Experiment
          command.params['name'] = name unless name.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # 
        # @param [String] name
        # @param [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1StartExperimentRequest] google_cloud_dialogflow_cx_v3beta1_start_experiment_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1Experiment] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1Experiment]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def start_project_location_agent_environment_experiment(name, google_cloud_dialogflow_cx_v3beta1_start_experiment_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v3beta1/{+name}:start', options)
          command.request_representation = Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1StartExperimentRequest::Representation
          command.request_object = google_cloud_dialogflow_cx_v3beta1_start_experiment_request_object
          command.response_representation = Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1Experiment::Representation
          command.response_class = Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1Experiment
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # 
        # @param [String] name
        # @param [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1StopExperimentRequest] google_cloud_dialogflow_cx_v3beta1_stop_experiment_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1Experiment] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1Experiment]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def stop_project_location_agent_environment_experiment(name, google_cloud_dialogflow_cx_v3beta1_stop_experiment_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v3beta1/{+name}:stop', options)
          command.request_representation = Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1StopExperimentRequest::Representation
          command.request_object = google_cloud_dialogflow_cx_v3beta1_stop_experiment_request_object
          command.response_representation = Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1Experiment::Representation
          command.response_class = Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1Experiment
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # 
        # @param [String] session
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
        
        # 
        # @param [String] session
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
        
        # 
        # @param [String] session
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
        
        # 
        # @param [String] session
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
        def server_project_location_agent_environment_session_streaming_detect_intent(session, google_cloud_dialogflow_cx_v3beta1_detect_intent_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v3beta1/{+session}:serverStreamingDetectIntent', options)
          command.request_representation = Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1DetectIntentRequest::Representation
          command.request_object = google_cloud_dialogflow_cx_v3beta1_detect_intent_request_object
          command.response_representation = Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1DetectIntentResponse::Representation
          command.response_class = Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1DetectIntentResponse
          command.params['session'] = session unless session.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # 
        # @param [String] parent
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
        
        # 
        # @param [String] name
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
        
        # 
        # @param [String] name
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
        
        # 
        # @param [String] parent
        # @param [Fixnum] page_size
        # @param [String] page_token
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
        
        # 
        # @param [String] name
        # @param [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1SessionEntityType] google_cloud_dialogflow_cx_v3beta1_session_entity_type_object
        # @param [String] update_mask
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
        
        # 
        # @param [String] parent
        # @param [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1Flow] google_cloud_dialogflow_cx_v3beta1_flow_object
        # @param [String] language_code
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
        
        # 
        # @param [String] name
        # @param [Boolean] force
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
        
        # 
        # @param [String] name
        # @param [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1ExportFlowRequest] google_cloud_dialogflow_cx_v3beta1_export_flow_request_object
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
        def export_project_location_agent_flow(name, google_cloud_dialogflow_cx_v3beta1_export_flow_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v3beta1/{+name}:export', options)
          command.request_representation = Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1ExportFlowRequest::Representation
          command.request_object = google_cloud_dialogflow_cx_v3beta1_export_flow_request_object
          command.response_representation = Google::Apis::DialogflowV3beta1::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::DialogflowV3beta1::GoogleLongrunningOperation
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # 
        # @param [String] name
        # @param [String] language_code
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
        
        # 
        # @param [String] name
        # @param [String] language_code
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1FlowValidationResult] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1FlowValidationResult]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_agent_flow_validation_result(name, language_code: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v3beta1/{+name}', options)
          command.response_representation = Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1FlowValidationResult::Representation
          command.response_class = Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1FlowValidationResult
          command.params['name'] = name unless name.nil?
          command.query['languageCode'] = language_code unless language_code.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # 
        # @param [String] parent
        # @param [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1ImportFlowRequest] google_cloud_dialogflow_cx_v3beta1_import_flow_request_object
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
        def import_project_location_agent_flow(parent, google_cloud_dialogflow_cx_v3beta1_import_flow_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v3beta1/{+parent}/flows:import', options)
          command.request_representation = Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1ImportFlowRequest::Representation
          command.request_object = google_cloud_dialogflow_cx_v3beta1_import_flow_request_object
          command.response_representation = Google::Apis::DialogflowV3beta1::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::DialogflowV3beta1::GoogleLongrunningOperation
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # 
        # @param [String] parent
        # @param [String] language_code
        # @param [Fixnum] page_size
        # @param [String] page_token
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
        
        # 
        # @param [String] name
        # @param [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1Flow] google_cloud_dialogflow_cx_v3beta1_flow_object
        # @param [String] language_code
        # @param [String] update_mask
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
        
        # 
        # @param [String] name
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
        
        # 
        # @param [String] name
        # @param [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1ValidateFlowRequest] google_cloud_dialogflow_cx_v3beta1_validate_flow_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1FlowValidationResult] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1FlowValidationResult]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def validate_project_location_agent_flow(name, google_cloud_dialogflow_cx_v3beta1_validate_flow_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v3beta1/{+name}:validate', options)
          command.request_representation = Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1ValidateFlowRequest::Representation
          command.request_object = google_cloud_dialogflow_cx_v3beta1_validate_flow_request_object
          command.response_representation = Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1FlowValidationResult::Representation
          command.response_class = Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1FlowValidationResult
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # 
        # @param [String] parent
        # @param [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1Page] google_cloud_dialogflow_cx_v3beta1_page_object
        # @param [String] language_code
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
        
        # 
        # @param [String] name
        # @param [Boolean] force
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
        
        # 
        # @param [String] name
        # @param [String] language_code
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
        
        # 
        # @param [String] parent
        # @param [String] language_code
        # @param [Fixnum] page_size
        # @param [String] page_token
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
        
        # 
        # @param [String] name
        # @param [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1Page] google_cloud_dialogflow_cx_v3beta1_page_object
        # @param [String] language_code
        # @param [String] update_mask
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
        
        # 
        # @param [String] parent
        # @param [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1TransitionRouteGroup] google_cloud_dialogflow_cx_v3beta1_transition_route_group_object
        # @param [String] language_code
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
        
        # 
        # @param [String] name
        # @param [Boolean] force
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
        
        # 
        # @param [String] name
        # @param [String] language_code
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
        
        # 
        # @param [String] parent
        # @param [String] language_code
        # @param [Fixnum] page_size
        # @param [String] page_token
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
        
        # 
        # @param [String] name
        # @param [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1TransitionRouteGroup] google_cloud_dialogflow_cx_v3beta1_transition_route_group_object
        # @param [String] language_code
        # @param [String] update_mask
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
        
        # 
        # @param [String] base_version
        # @param [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1CompareVersionsRequest] google_cloud_dialogflow_cx_v3beta1_compare_versions_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1CompareVersionsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1CompareVersionsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def compare_project_location_agent_flow_version_versions(base_version, google_cloud_dialogflow_cx_v3beta1_compare_versions_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v3beta1/{+baseVersion}:compareVersions', options)
          command.request_representation = Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1CompareVersionsRequest::Representation
          command.request_object = google_cloud_dialogflow_cx_v3beta1_compare_versions_request_object
          command.response_representation = Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1CompareVersionsResponse::Representation
          command.response_class = Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1CompareVersionsResponse
          command.params['baseVersion'] = base_version unless base_version.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # 
        # @param [String] parent
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
        
        # 
        # @param [String] name
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
        
        # 
        # @param [String] name
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
        
        # 
        # @param [String] parent
        # @param [Fixnum] page_size
        # @param [String] page_token
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
        
        # 
        # @param [String] name
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
        
        # 
        # @param [String] name
        # @param [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1Version] google_cloud_dialogflow_cx_v3beta1_version_object
        # @param [String] update_mask
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
        
        # 
        # @param [String] parent
        # @param [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1Generator] google_cloud_dialogflow_cx_v3beta1_generator_object
        # @param [String] language_code
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1Generator] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1Generator]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_location_agent_generator(parent, google_cloud_dialogflow_cx_v3beta1_generator_object = nil, language_code: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v3beta1/{+parent}/generators', options)
          command.request_representation = Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1Generator::Representation
          command.request_object = google_cloud_dialogflow_cx_v3beta1_generator_object
          command.response_representation = Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1Generator::Representation
          command.response_class = Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1Generator
          command.params['parent'] = parent unless parent.nil?
          command.query['languageCode'] = language_code unless language_code.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # 
        # @param [String] name
        # @param [Boolean] force
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
        def delete_project_location_agent_generator(name, force: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v3beta1/{+name}', options)
          command.response_representation = Google::Apis::DialogflowV3beta1::GoogleProtobufEmpty::Representation
          command.response_class = Google::Apis::DialogflowV3beta1::GoogleProtobufEmpty
          command.params['name'] = name unless name.nil?
          command.query['force'] = force unless force.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # 
        # @param [String] name
        # @param [String] language_code
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1Generator] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1Generator]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_agent_generator(name, language_code: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v3beta1/{+name}', options)
          command.response_representation = Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1Generator::Representation
          command.response_class = Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1Generator
          command.params['name'] = name unless name.nil?
          command.query['languageCode'] = language_code unless language_code.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # 
        # @param [String] parent
        # @param [String] language_code
        # @param [Fixnum] page_size
        # @param [String] page_token
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1ListGeneratorsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1ListGeneratorsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_agent_generators(parent, language_code: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v3beta1/{+parent}/generators', options)
          command.response_representation = Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1ListGeneratorsResponse::Representation
          command.response_class = Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1ListGeneratorsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['languageCode'] = language_code unless language_code.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # 
        # @param [String] name
        # @param [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1Generator] google_cloud_dialogflow_cx_v3beta1_generator_object
        # @param [String] language_code
        # @param [String] update_mask
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1Generator] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1Generator]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_project_location_agent_generator(name, google_cloud_dialogflow_cx_v3beta1_generator_object = nil, language_code: nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v3beta1/{+name}', options)
          command.request_representation = Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1Generator::Representation
          command.request_object = google_cloud_dialogflow_cx_v3beta1_generator_object
          command.response_representation = Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1Generator::Representation
          command.response_class = Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1Generator
          command.params['name'] = name unless name.nil?
          command.query['languageCode'] = language_code unless language_code.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # 
        # @param [String] parent
        # @param [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1Intent] google_cloud_dialogflow_cx_v3beta1_intent_object
        # @param [String] language_code
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
        
        # 
        # @param [String] name
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
        
        # 
        # @param [String] parent
        # @param [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1ExportIntentsRequest] google_cloud_dialogflow_cx_v3beta1_export_intents_request_object
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
        def export_project_location_agent_intent(parent, google_cloud_dialogflow_cx_v3beta1_export_intents_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v3beta1/{+parent}/intents:export', options)
          command.request_representation = Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1ExportIntentsRequest::Representation
          command.request_object = google_cloud_dialogflow_cx_v3beta1_export_intents_request_object
          command.response_representation = Google::Apis::DialogflowV3beta1::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::DialogflowV3beta1::GoogleLongrunningOperation
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # 
        # @param [String] name
        # @param [String] language_code
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
        
        # 
        # @param [String] parent
        # @param [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1ImportIntentsRequest] google_cloud_dialogflow_cx_v3beta1_import_intents_request_object
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
        def import_project_location_agent_intent(parent, google_cloud_dialogflow_cx_v3beta1_import_intents_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v3beta1/{+parent}/intents:import', options)
          command.request_representation = Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1ImportIntentsRequest::Representation
          command.request_object = google_cloud_dialogflow_cx_v3beta1_import_intents_request_object
          command.response_representation = Google::Apis::DialogflowV3beta1::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::DialogflowV3beta1::GoogleLongrunningOperation
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # 
        # @param [String] parent
        # @param [String] intent_view
        # @param [String] language_code
        # @param [Fixnum] page_size
        # @param [String] page_token
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
        
        # 
        # @param [String] name
        # @param [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1Intent] google_cloud_dialogflow_cx_v3beta1_intent_object
        # @param [String] language_code
        # @param [String] update_mask
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
        
        # 
        # @param [String] parent
        # @param [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1Playbook] google_cloud_dialogflow_cx_v3beta1_playbook_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1Playbook] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1Playbook]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_location_agent_playbook(parent, google_cloud_dialogflow_cx_v3beta1_playbook_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v3beta1/{+parent}/playbooks', options)
          command.request_representation = Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1Playbook::Representation
          command.request_object = google_cloud_dialogflow_cx_v3beta1_playbook_object
          command.response_representation = Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1Playbook::Representation
          command.response_class = Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1Playbook
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # 
        # @param [String] name
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
        def delete_project_location_agent_playbook(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v3beta1/{+name}', options)
          command.response_representation = Google::Apis::DialogflowV3beta1::GoogleProtobufEmpty::Representation
          command.response_class = Google::Apis::DialogflowV3beta1::GoogleProtobufEmpty
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # 
        # @param [String] name
        # @param [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1ExportPlaybookRequest] google_cloud_dialogflow_cx_v3beta1_export_playbook_request_object
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
        def export_project_location_agent_playbook(name, google_cloud_dialogflow_cx_v3beta1_export_playbook_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v3beta1/{+name}:export', options)
          command.request_representation = Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1ExportPlaybookRequest::Representation
          command.request_object = google_cloud_dialogflow_cx_v3beta1_export_playbook_request_object
          command.response_representation = Google::Apis::DialogflowV3beta1::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::DialogflowV3beta1::GoogleLongrunningOperation
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # 
        # @param [String] name
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1Playbook] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1Playbook]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_agent_playbook(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v3beta1/{+name}', options)
          command.response_representation = Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1Playbook::Representation
          command.response_class = Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1Playbook
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # 
        # @param [String] parent
        # @param [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1ImportPlaybookRequest] google_cloud_dialogflow_cx_v3beta1_import_playbook_request_object
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
        def import_project_location_agent_playbook(parent, google_cloud_dialogflow_cx_v3beta1_import_playbook_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v3beta1/{+parent}/playbooks:import', options)
          command.request_representation = Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1ImportPlaybookRequest::Representation
          command.request_object = google_cloud_dialogflow_cx_v3beta1_import_playbook_request_object
          command.response_representation = Google::Apis::DialogflowV3beta1::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::DialogflowV3beta1::GoogleLongrunningOperation
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # 
        # @param [String] parent
        # @param [Fixnum] page_size
        # @param [String] page_token
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1ListPlaybooksResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1ListPlaybooksResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_agent_playbooks(parent, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v3beta1/{+parent}/playbooks', options)
          command.response_representation = Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1ListPlaybooksResponse::Representation
          command.response_class = Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1ListPlaybooksResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # 
        # @param [String] name
        # @param [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1Playbook] google_cloud_dialogflow_cx_v3beta1_playbook_object
        # @param [String] update_mask
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1Playbook] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1Playbook]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_project_location_agent_playbook(name, google_cloud_dialogflow_cx_v3beta1_playbook_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v3beta1/{+name}', options)
          command.request_representation = Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1Playbook::Representation
          command.request_object = google_cloud_dialogflow_cx_v3beta1_playbook_object
          command.response_representation = Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1Playbook::Representation
          command.response_class = Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1Playbook
          command.params['name'] = name unless name.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # 
        # @param [String] parent
        # @param [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1Example] google_cloud_dialogflow_cx_v3beta1_example_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1Example] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1Example]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_location_agent_playbook_example(parent, google_cloud_dialogflow_cx_v3beta1_example_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v3beta1/{+parent}/examples', options)
          command.request_representation = Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1Example::Representation
          command.request_object = google_cloud_dialogflow_cx_v3beta1_example_object
          command.response_representation = Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1Example::Representation
          command.response_class = Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1Example
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # 
        # @param [String] name
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
        def delete_project_location_agent_playbook_example(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v3beta1/{+name}', options)
          command.response_representation = Google::Apis::DialogflowV3beta1::GoogleProtobufEmpty::Representation
          command.response_class = Google::Apis::DialogflowV3beta1::GoogleProtobufEmpty
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # 
        # @param [String] name
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1Example] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1Example]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_agent_playbook_example(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v3beta1/{+name}', options)
          command.response_representation = Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1Example::Representation
          command.response_class = Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1Example
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # 
        # @param [String] parent
        # @param [String] language_code
        # @param [Fixnum] page_size
        # @param [String] page_token
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1ListExamplesResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1ListExamplesResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_agent_playbook_examples(parent, language_code: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v3beta1/{+parent}/examples', options)
          command.response_representation = Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1ListExamplesResponse::Representation
          command.response_class = Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1ListExamplesResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['languageCode'] = language_code unless language_code.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # 
        # @param [String] name
        # @param [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1Example] google_cloud_dialogflow_cx_v3beta1_example_object
        # @param [String] update_mask
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1Example] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1Example]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_project_location_agent_playbook_example(name, google_cloud_dialogflow_cx_v3beta1_example_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v3beta1/{+name}', options)
          command.request_representation = Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1Example::Representation
          command.request_object = google_cloud_dialogflow_cx_v3beta1_example_object
          command.response_representation = Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1Example::Representation
          command.response_class = Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1Example
          command.params['name'] = name unless name.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # 
        # @param [String] parent
        # @param [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1PlaybookVersion] google_cloud_dialogflow_cx_v3beta1_playbook_version_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1PlaybookVersion] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1PlaybookVersion]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_location_agent_playbook_version(parent, google_cloud_dialogflow_cx_v3beta1_playbook_version_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v3beta1/{+parent}/versions', options)
          command.request_representation = Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1PlaybookVersion::Representation
          command.request_object = google_cloud_dialogflow_cx_v3beta1_playbook_version_object
          command.response_representation = Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1PlaybookVersion::Representation
          command.response_class = Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1PlaybookVersion
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # 
        # @param [String] name
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
        def delete_project_location_agent_playbook_version(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v3beta1/{+name}', options)
          command.response_representation = Google::Apis::DialogflowV3beta1::GoogleProtobufEmpty::Representation
          command.response_class = Google::Apis::DialogflowV3beta1::GoogleProtobufEmpty
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # 
        # @param [String] name
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1PlaybookVersion] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1PlaybookVersion]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_agent_playbook_version(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v3beta1/{+name}', options)
          command.response_representation = Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1PlaybookVersion::Representation
          command.response_class = Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1PlaybookVersion
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # 
        # @param [String] parent
        # @param [Fixnum] page_size
        # @param [String] page_token
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1ListPlaybookVersionsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1ListPlaybookVersionsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_agent_playbook_versions(parent, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v3beta1/{+parent}/versions', options)
          command.response_representation = Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1ListPlaybookVersionsResponse::Representation
          command.response_class = Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1ListPlaybookVersionsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # 
        # @param [String] name
        # @param [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1RestorePlaybookVersionRequest] google_cloud_dialogflow_cx_v3beta1_restore_playbook_version_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1RestorePlaybookVersionResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1RestorePlaybookVersionResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def restore_project_location_agent_playbook_version(name, google_cloud_dialogflow_cx_v3beta1_restore_playbook_version_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v3beta1/{+name}:restore', options)
          command.request_representation = Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1RestorePlaybookVersionRequest::Representation
          command.request_object = google_cloud_dialogflow_cx_v3beta1_restore_playbook_version_request_object
          command.response_representation = Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1RestorePlaybookVersionResponse::Representation
          command.response_class = Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1RestorePlaybookVersionResponse
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # 
        # @param [String] session
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
        
        # 
        # @param [String] session
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
        
        # 
        # @param [String] session
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
        
        # 
        # @param [String] session
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
        def server_project_location_agent_session_streaming_detect_intent(session, google_cloud_dialogflow_cx_v3beta1_detect_intent_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v3beta1/{+session}:serverStreamingDetectIntent', options)
          command.request_representation = Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1DetectIntentRequest::Representation
          command.request_object = google_cloud_dialogflow_cx_v3beta1_detect_intent_request_object
          command.response_representation = Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1DetectIntentResponse::Representation
          command.response_class = Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1DetectIntentResponse
          command.params['session'] = session unless session.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # 
        # @param [String] session
        # @param [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1SubmitAnswerFeedbackRequest] google_cloud_dialogflow_cx_v3beta1_submit_answer_feedback_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1AnswerFeedback] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1AnswerFeedback]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def submit_project_location_agent_session_answer_feedback(session, google_cloud_dialogflow_cx_v3beta1_submit_answer_feedback_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v3beta1/{+session}:submitAnswerFeedback', options)
          command.request_representation = Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1SubmitAnswerFeedbackRequest::Representation
          command.request_object = google_cloud_dialogflow_cx_v3beta1_submit_answer_feedback_request_object
          command.response_representation = Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1AnswerFeedback::Representation
          command.response_class = Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1AnswerFeedback
          command.params['session'] = session unless session.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # 
        # @param [String] parent
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
        
        # 
        # @param [String] name
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
        
        # 
        # @param [String] name
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
        
        # 
        # @param [String] parent
        # @param [Fixnum] page_size
        # @param [String] page_token
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
        
        # 
        # @param [String] name
        # @param [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1SessionEntityType] google_cloud_dialogflow_cx_v3beta1_session_entity_type_object
        # @param [String] update_mask
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
        
        # 
        # @param [String] parent
        # @param [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1BatchDeleteTestCasesRequest] google_cloud_dialogflow_cx_v3beta1_batch_delete_test_cases_request_object
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
        def batch_project_location_agent_test_case_delete(parent, google_cloud_dialogflow_cx_v3beta1_batch_delete_test_cases_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v3beta1/{+parent}/testCases:batchDelete', options)
          command.request_representation = Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1BatchDeleteTestCasesRequest::Representation
          command.request_object = google_cloud_dialogflow_cx_v3beta1_batch_delete_test_cases_request_object
          command.response_representation = Google::Apis::DialogflowV3beta1::GoogleProtobufEmpty::Representation
          command.response_class = Google::Apis::DialogflowV3beta1::GoogleProtobufEmpty
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # 
        # @param [String] parent
        # @param [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1BatchRunTestCasesRequest] google_cloud_dialogflow_cx_v3beta1_batch_run_test_cases_request_object
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
        def batch_project_location_agent_test_case_run(parent, google_cloud_dialogflow_cx_v3beta1_batch_run_test_cases_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v3beta1/{+parent}/testCases:batchRun', options)
          command.request_representation = Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1BatchRunTestCasesRequest::Representation
          command.request_object = google_cloud_dialogflow_cx_v3beta1_batch_run_test_cases_request_object
          command.response_representation = Google::Apis::DialogflowV3beta1::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::DialogflowV3beta1::GoogleLongrunningOperation
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # 
        # @param [String] agent
        # @param [String] type
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1CalculateCoverageResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1CalculateCoverageResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def calculate_project_location_agent_test_case_coverage(agent, type: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v3beta1/{+agent}/testCases:calculateCoverage', options)
          command.response_representation = Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1CalculateCoverageResponse::Representation
          command.response_class = Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1CalculateCoverageResponse
          command.params['agent'] = agent unless agent.nil?
          command.query['type'] = type unless type.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # 
        # @param [String] parent
        # @param [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1TestCase] google_cloud_dialogflow_cx_v3beta1_test_case_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1TestCase] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1TestCase]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_location_agent_test_case(parent, google_cloud_dialogflow_cx_v3beta1_test_case_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v3beta1/{+parent}/testCases', options)
          command.request_representation = Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1TestCase::Representation
          command.request_object = google_cloud_dialogflow_cx_v3beta1_test_case_object
          command.response_representation = Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1TestCase::Representation
          command.response_class = Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1TestCase
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # 
        # @param [String] parent
        # @param [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1ExportTestCasesRequest] google_cloud_dialogflow_cx_v3beta1_export_test_cases_request_object
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
        def export_project_location_agent_test_case(parent, google_cloud_dialogflow_cx_v3beta1_export_test_cases_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v3beta1/{+parent}/testCases:export', options)
          command.request_representation = Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1ExportTestCasesRequest::Representation
          command.request_object = google_cloud_dialogflow_cx_v3beta1_export_test_cases_request_object
          command.response_representation = Google::Apis::DialogflowV3beta1::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::DialogflowV3beta1::GoogleLongrunningOperation
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # 
        # @param [String] name
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1TestCase] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1TestCase]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_agent_test_case(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v3beta1/{+name}', options)
          command.response_representation = Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1TestCase::Representation
          command.response_class = Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1TestCase
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # 
        # @param [String] parent
        # @param [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1ImportTestCasesRequest] google_cloud_dialogflow_cx_v3beta1_import_test_cases_request_object
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
        def import_project_location_agent_test_case(parent, google_cloud_dialogflow_cx_v3beta1_import_test_cases_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v3beta1/{+parent}/testCases:import', options)
          command.request_representation = Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1ImportTestCasesRequest::Representation
          command.request_object = google_cloud_dialogflow_cx_v3beta1_import_test_cases_request_object
          command.response_representation = Google::Apis::DialogflowV3beta1::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::DialogflowV3beta1::GoogleLongrunningOperation
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # 
        # @param [String] parent
        # @param [Fixnum] page_size
        # @param [String] page_token
        # @param [String] view
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1ListTestCasesResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1ListTestCasesResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_agent_test_cases(parent, page_size: nil, page_token: nil, view: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v3beta1/{+parent}/testCases', options)
          command.response_representation = Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1ListTestCasesResponse::Representation
          command.response_class = Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1ListTestCasesResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['view'] = view unless view.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # 
        # @param [String] name
        # @param [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1TestCase] google_cloud_dialogflow_cx_v3beta1_test_case_object
        # @param [String] update_mask
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1TestCase] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1TestCase]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_project_location_agent_test_case(name, google_cloud_dialogflow_cx_v3beta1_test_case_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v3beta1/{+name}', options)
          command.request_representation = Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1TestCase::Representation
          command.request_object = google_cloud_dialogflow_cx_v3beta1_test_case_object
          command.response_representation = Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1TestCase::Representation
          command.response_class = Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1TestCase
          command.params['name'] = name unless name.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # 
        # @param [String] name
        # @param [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1RunTestCaseRequest] google_cloud_dialogflow_cx_v3beta1_run_test_case_request_object
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
        def run_project_location_agent_test_case(name, google_cloud_dialogflow_cx_v3beta1_run_test_case_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v3beta1/{+name}:run', options)
          command.request_representation = Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1RunTestCaseRequest::Representation
          command.request_object = google_cloud_dialogflow_cx_v3beta1_run_test_case_request_object
          command.response_representation = Google::Apis::DialogflowV3beta1::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::DialogflowV3beta1::GoogleLongrunningOperation
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # 
        # @param [String] name
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1TestCaseResult] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1TestCaseResult]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_agent_test_case_result(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v3beta1/{+name}', options)
          command.response_representation = Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1TestCaseResult::Representation
          command.response_class = Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1TestCaseResult
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # 
        # @param [String] parent
        # @param [String] filter
        # @param [Fixnum] page_size
        # @param [String] page_token
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1ListTestCaseResultsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1ListTestCaseResultsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_agent_test_case_results(parent, filter: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v3beta1/{+parent}/results', options)
          command.response_representation = Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1ListTestCaseResultsResponse::Representation
          command.response_class = Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1ListTestCaseResultsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # 
        # @param [String] parent
        # @param [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1Tool] google_cloud_dialogflow_cx_v3beta1_tool_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1Tool] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1Tool]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_location_agent_tool(parent, google_cloud_dialogflow_cx_v3beta1_tool_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v3beta1/{+parent}/tools', options)
          command.request_representation = Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1Tool::Representation
          command.request_object = google_cloud_dialogflow_cx_v3beta1_tool_object
          command.response_representation = Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1Tool::Representation
          command.response_class = Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1Tool
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # 
        # @param [String] name
        # @param [Boolean] force
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
        def delete_project_location_agent_tool(name, force: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v3beta1/{+name}', options)
          command.response_representation = Google::Apis::DialogflowV3beta1::GoogleProtobufEmpty::Representation
          command.response_class = Google::Apis::DialogflowV3beta1::GoogleProtobufEmpty
          command.params['name'] = name unless name.nil?
          command.query['force'] = force unless force.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # 
        # @param [String] parent
        # @param [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1ExportToolsRequest] google_cloud_dialogflow_cx_v3beta1_export_tools_request_object
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
        def export_project_location_agent_tool(parent, google_cloud_dialogflow_cx_v3beta1_export_tools_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v3beta1/{+parent}/tools:export', options)
          command.request_representation = Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1ExportToolsRequest::Representation
          command.request_object = google_cloud_dialogflow_cx_v3beta1_export_tools_request_object
          command.response_representation = Google::Apis::DialogflowV3beta1::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::DialogflowV3beta1::GoogleLongrunningOperation
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # 
        # @param [String] name
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1Tool] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1Tool]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_agent_tool(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v3beta1/{+name}', options)
          command.response_representation = Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1Tool::Representation
          command.response_class = Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1Tool
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # 
        # @param [String] parent
        # @param [Fixnum] page_size
        # @param [String] page_token
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1ListToolsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1ListToolsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_agent_tools(parent, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v3beta1/{+parent}/tools', options)
          command.response_representation = Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1ListToolsResponse::Representation
          command.response_class = Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1ListToolsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # 
        # @param [String] name
        # @param [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1Tool] google_cloud_dialogflow_cx_v3beta1_tool_object
        # @param [String] update_mask
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1Tool] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1Tool]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_project_location_agent_tool(name, google_cloud_dialogflow_cx_v3beta1_tool_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v3beta1/{+name}', options)
          command.request_representation = Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1Tool::Representation
          command.request_object = google_cloud_dialogflow_cx_v3beta1_tool_object
          command.response_representation = Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1Tool::Representation
          command.response_class = Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1Tool
          command.params['name'] = name unless name.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # 
        # @param [String] parent
        # @param [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1ToolVersion] google_cloud_dialogflow_cx_v3beta1_tool_version_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1ToolVersion] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1ToolVersion]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_location_agent_tool_version(parent, google_cloud_dialogflow_cx_v3beta1_tool_version_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v3beta1/{+parent}/versions', options)
          command.request_representation = Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1ToolVersion::Representation
          command.request_object = google_cloud_dialogflow_cx_v3beta1_tool_version_object
          command.response_representation = Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1ToolVersion::Representation
          command.response_class = Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1ToolVersion
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # 
        # @param [String] name
        # @param [Boolean] force
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
        def delete_project_location_agent_tool_version(name, force: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v3beta1/{+name}', options)
          command.response_representation = Google::Apis::DialogflowV3beta1::GoogleProtobufEmpty::Representation
          command.response_class = Google::Apis::DialogflowV3beta1::GoogleProtobufEmpty
          command.params['name'] = name unless name.nil?
          command.query['force'] = force unless force.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # 
        # @param [String] name
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1ToolVersion] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1ToolVersion]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_agent_tool_version(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v3beta1/{+name}', options)
          command.response_representation = Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1ToolVersion::Representation
          command.response_class = Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1ToolVersion
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # 
        # @param [String] parent
        # @param [Fixnum] page_size
        # @param [String] page_token
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1ListToolVersionsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1ListToolVersionsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_agent_tool_versions(parent, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v3beta1/{+parent}/versions', options)
          command.response_representation = Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1ListToolVersionsResponse::Representation
          command.response_class = Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1ListToolVersionsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # 
        # @param [String] name
        # @param [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1RestoreToolVersionRequest] google_cloud_dialogflow_cx_v3beta1_restore_tool_version_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1RestoreToolVersionResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1RestoreToolVersionResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def restore_project_location_agent_tool_version(name, google_cloud_dialogflow_cx_v3beta1_restore_tool_version_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v3beta1/{+name}:restore', options)
          command.request_representation = Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1RestoreToolVersionRequest::Representation
          command.request_object = google_cloud_dialogflow_cx_v3beta1_restore_tool_version_request_object
          command.response_representation = Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1RestoreToolVersionResponse::Representation
          command.response_class = Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1RestoreToolVersionResponse
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # 
        # @param [String] parent
        # @param [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1TransitionRouteGroup] google_cloud_dialogflow_cx_v3beta1_transition_route_group_object
        # @param [String] language_code
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
        def create_project_location_agent_transition_route_group(parent, google_cloud_dialogflow_cx_v3beta1_transition_route_group_object = nil, language_code: nil, fields: nil, quota_user: nil, options: nil, &block)
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
        
        # 
        # @param [String] name
        # @param [Boolean] force
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
        def delete_project_location_agent_transition_route_group(name, force: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v3beta1/{+name}', options)
          command.response_representation = Google::Apis::DialogflowV3beta1::GoogleProtobufEmpty::Representation
          command.response_class = Google::Apis::DialogflowV3beta1::GoogleProtobufEmpty
          command.params['name'] = name unless name.nil?
          command.query['force'] = force unless force.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # 
        # @param [String] name
        # @param [String] language_code
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
        def get_project_location_agent_transition_route_group(name, language_code: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v3beta1/{+name}', options)
          command.response_representation = Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1TransitionRouteGroup::Representation
          command.response_class = Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1TransitionRouteGroup
          command.params['name'] = name unless name.nil?
          command.query['languageCode'] = language_code unless language_code.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # 
        # @param [String] parent
        # @param [String] language_code
        # @param [Fixnum] page_size
        # @param [String] page_token
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
        def list_project_location_agent_transition_route_groups(parent, language_code: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
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
        
        # 
        # @param [String] name
        # @param [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1TransitionRouteGroup] google_cloud_dialogflow_cx_v3beta1_transition_route_group_object
        # @param [String] language_code
        # @param [String] update_mask
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
        def patch_project_location_agent_transition_route_group(name, google_cloud_dialogflow_cx_v3beta1_transition_route_group_object = nil, language_code: nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
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
        
        # 
        # @param [String] parent
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
        
        # 
        # @param [String] name
        # @param [Boolean] force
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
        
        # 
        # @param [String] name
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
        
        # 
        # @param [String] parent
        # @param [Fixnum] page_size
        # @param [String] page_token
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
        
        # 
        # @param [String] name
        # @param [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1Webhook] google_cloud_dialogflow_cx_v3beta1_webhook_object
        # @param [String] update_mask
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
        
        # 
        # @param [String] name
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
        
        # 
        # @param [String] name
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
        
        # 
        # @param [String] name
        # @param [String] filter
        # @param [Fixnum] page_size
        # @param [String] page_token
        # @param [Boolean] return_partial_success
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
        def list_project_location_operations(name, filter: nil, page_size: nil, page_token: nil, return_partial_success: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v3beta1/{+name}/operations', options)
          command.response_representation = Google::Apis::DialogflowV3beta1::GoogleLongrunningListOperationsResponse::Representation
          command.response_class = Google::Apis::DialogflowV3beta1::GoogleLongrunningListOperationsResponse
          command.params['name'] = name unless name.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['returnPartialSuccess'] = return_partial_success unless return_partial_success.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # 
        # @param [String] parent
        # @param [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1SecuritySettings] google_cloud_dialogflow_cx_v3beta1_security_settings_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1SecuritySettings] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1SecuritySettings]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_location_security_setting(parent, google_cloud_dialogflow_cx_v3beta1_security_settings_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v3beta1/{+parent}/securitySettings', options)
          command.request_representation = Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1SecuritySettings::Representation
          command.request_object = google_cloud_dialogflow_cx_v3beta1_security_settings_object
          command.response_representation = Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1SecuritySettings::Representation
          command.response_class = Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1SecuritySettings
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # 
        # @param [String] name
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
        def delete_project_location_security_setting(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v3beta1/{+name}', options)
          command.response_representation = Google::Apis::DialogflowV3beta1::GoogleProtobufEmpty::Representation
          command.response_class = Google::Apis::DialogflowV3beta1::GoogleProtobufEmpty
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # 
        # @param [String] name
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1SecuritySettings] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1SecuritySettings]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_security_setting(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v3beta1/{+name}', options)
          command.response_representation = Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1SecuritySettings::Representation
          command.response_class = Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1SecuritySettings
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # 
        # @param [String] parent
        # @param [Fixnum] page_size
        # @param [String] page_token
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1ListSecuritySettingsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1ListSecuritySettingsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_security_settings(parent, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v3beta1/{+parent}/securitySettings', options)
          command.response_representation = Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1ListSecuritySettingsResponse::Representation
          command.response_class = Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1ListSecuritySettingsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # 
        # @param [String] name
        # @param [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1SecuritySettings] google_cloud_dialogflow_cx_v3beta1_security_settings_object
        # @param [String] update_mask
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1SecuritySettings] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1SecuritySettings]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_project_location_security_setting(name, google_cloud_dialogflow_cx_v3beta1_security_settings_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v3beta1/{+name}', options)
          command.request_representation = Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1SecuritySettings::Representation
          command.request_object = google_cloud_dialogflow_cx_v3beta1_security_settings_object
          command.response_representation = Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1SecuritySettings::Representation
          command.response_class = Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1SecuritySettings
          command.params['name'] = name unless name.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # 
        # @param [String] name
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
        
        # 
        # @param [String] name
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
        
        # 
        # @param [String] name
        # @param [String] filter
        # @param [Fixnum] page_size
        # @param [String] page_token
        # @param [Boolean] return_partial_success
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
        def list_project_operations(name, filter: nil, page_size: nil, page_token: nil, return_partial_success: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v3beta1/{+name}/operations', options)
          command.response_representation = Google::Apis::DialogflowV3beta1::GoogleLongrunningListOperationsResponse::Representation
          command.response_class = Google::Apis::DialogflowV3beta1::GoogleLongrunningListOperationsResponse
          command.params['name'] = name unless name.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['returnPartialSuccess'] = return_partial_success unless return_partial_success.nil?
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
