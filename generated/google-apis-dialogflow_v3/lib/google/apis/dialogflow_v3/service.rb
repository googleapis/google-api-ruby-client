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
                client_name: 'google-apis-dialogflow_v3',
                client_version: Google::Apis::DialogflowV3::GEM_VERSION)
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
        # @yieldparam result [Google::Apis::DialogflowV3::GoogleCloudLocationListLocationsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV3::GoogleCloudLocationListLocationsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_locations(name, extra_location_types: nil, filter: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v3/{+name}/locations', options)
          command.response_representation = Google::Apis::DialogflowV3::GoogleCloudLocationListLocationsResponse::Representation
          command.response_class = Google::Apis::DialogflowV3::GoogleCloudLocationListLocationsResponse
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
        
        # 
        # @param [String] name
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
        # @yieldparam result [Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3GenerativeSettings] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3GenerativeSettings]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_agent_generative_settings(name, language_code: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v3/{+name}', options)
          command.response_representation = Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3GenerativeSettings::Representation
          command.response_class = Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3GenerativeSettings
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
        
        # 
        # @param [String] name
        # @param [Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3Agent] google_cloud_dialogflow_cx_v3_agent_object
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
        
        # 
        # @param [String] name
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
        
        # 
        # @param [String] name
        # @param [Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3GenerativeSettings] google_cloud_dialogflow_cx_v3_generative_settings_object
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
        # @yieldparam result [Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3GenerativeSettings] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3GenerativeSettings]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def update_project_location_agent_generative_settings(name, google_cloud_dialogflow_cx_v3_generative_settings_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v3/{+name}', options)
          command.request_representation = Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3GenerativeSettings::Representation
          command.request_object = google_cloud_dialogflow_cx_v3_generative_settings_object
          command.response_representation = Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3GenerativeSettings::Representation
          command.response_class = Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3GenerativeSettings
          command.params['name'] = name unless name.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # 
        # @param [String] name
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
        
        # 
        # @param [String] parent
        # @param [Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3EntityType] google_cloud_dialogflow_cx_v3_entity_type_object
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
        
        # 
        # @param [String] parent
        # @param [Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3ExportEntityTypesRequest] google_cloud_dialogflow_cx_v3_export_entity_types_request_object
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
        def export_project_location_agent_entity_type(parent, google_cloud_dialogflow_cx_v3_export_entity_types_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v3/{+parent}/entityTypes:export', options)
          command.request_representation = Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3ExportEntityTypesRequest::Representation
          command.request_object = google_cloud_dialogflow_cx_v3_export_entity_types_request_object
          command.response_representation = Google::Apis::DialogflowV3::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::DialogflowV3::GoogleLongrunningOperation
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
        
        # 
        # @param [String] parent
        # @param [Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3ImportEntityTypesRequest] google_cloud_dialogflow_cx_v3_import_entity_types_request_object
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
        def import_project_location_agent_entity_type(parent, google_cloud_dialogflow_cx_v3_import_entity_types_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v3/{+parent}/entityTypes:import', options)
          command.request_representation = Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3ImportEntityTypesRequest::Representation
          command.request_object = google_cloud_dialogflow_cx_v3_import_entity_types_request_object
          command.response_representation = Google::Apis::DialogflowV3::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::DialogflowV3::GoogleLongrunningOperation
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
        
        # 
        # @param [String] name
        # @param [Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3EntityType] google_cloud_dialogflow_cx_v3_entity_type_object
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
        
        # 
        # @param [String] parent
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
        
        # 
        # @param [String] environment
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
        
        # 
        # @param [String] name
        # @param [Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3Environment] google_cloud_dialogflow_cx_v3_environment_object
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
        
        # 
        # @param [String] environment
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
        
        # 
        # @param [String] parent
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
        
        # 
        # @param [String] name
        # @param [Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3Experiment] google_cloud_dialogflow_cx_v3_experiment_object
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
        
        # 
        # @param [String] name
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
        
        # 
        # @param [String] name
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
        
        # 
        # @param [String] session
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
        
        # 
        # @param [String] session
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
        
        # 
        # @param [String] session
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
        
        # 
        # @param [String] session
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
        def server_project_location_agent_environment_session_streaming_detect_intent(session, google_cloud_dialogflow_cx_v3_detect_intent_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v3/{+session}:serverStreamingDetectIntent', options)
          command.request_representation = Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3DetectIntentRequest::Representation
          command.request_object = google_cloud_dialogflow_cx_v3_detect_intent_request_object
          command.response_representation = Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3DetectIntentResponse::Representation
          command.response_class = Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3DetectIntentResponse
          command.params['session'] = session unless session.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # 
        # @param [String] parent
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
        
        # 
        # @param [String] name
        # @param [Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3SessionEntityType] google_cloud_dialogflow_cx_v3_session_entity_type_object
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
        
        # 
        # @param [String] parent
        # @param [Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3Flow] google_cloud_dialogflow_cx_v3_flow_object
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
        
        # 
        # @param [String] name
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
        
        # 
        # @param [String] parent
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
        
        # 
        # @param [String] name
        # @param [Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3Flow] google_cloud_dialogflow_cx_v3_flow_object
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
        
        # 
        # @param [String] name
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
        
        # 
        # @param [String] name
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
        
        # 
        # @param [String] parent
        # @param [Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3Page] google_cloud_dialogflow_cx_v3_page_object
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
        
        # 
        # @param [String] name
        # @param [Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3Page] google_cloud_dialogflow_cx_v3_page_object
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
        
        # 
        # @param [String] parent
        # @param [Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3TransitionRouteGroup] google_cloud_dialogflow_cx_v3_transition_route_group_object
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
        
        # 
        # @param [String] name
        # @param [Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3TransitionRouteGroup] google_cloud_dialogflow_cx_v3_transition_route_group_object
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
        
        # 
        # @param [String] base_version
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
        
        # 
        # @param [String] parent
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
        
        # 
        # @param [String] name
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
        
        # 
        # @param [String] name
        # @param [Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3Version] google_cloud_dialogflow_cx_v3_version_object
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
        
        # 
        # @param [String] parent
        # @param [Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3Generator] google_cloud_dialogflow_cx_v3_generator_object
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
        # @yieldparam result [Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3Generator] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3Generator]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_location_agent_generator(parent, google_cloud_dialogflow_cx_v3_generator_object = nil, language_code: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v3/{+parent}/generators', options)
          command.request_representation = Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3Generator::Representation
          command.request_object = google_cloud_dialogflow_cx_v3_generator_object
          command.response_representation = Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3Generator::Representation
          command.response_class = Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3Generator
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
        # @yieldparam result [Google::Apis::DialogflowV3::GoogleProtobufEmpty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV3::GoogleProtobufEmpty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_location_agent_generator(name, force: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v3/{+name}', options)
          command.response_representation = Google::Apis::DialogflowV3::GoogleProtobufEmpty::Representation
          command.response_class = Google::Apis::DialogflowV3::GoogleProtobufEmpty
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
        # @yieldparam result [Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3Generator] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3Generator]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_agent_generator(name, language_code: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v3/{+name}', options)
          command.response_representation = Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3Generator::Representation
          command.response_class = Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3Generator
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
        # @yieldparam result [Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3ListGeneratorsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3ListGeneratorsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_agent_generators(parent, language_code: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v3/{+parent}/generators', options)
          command.response_representation = Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3ListGeneratorsResponse::Representation
          command.response_class = Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3ListGeneratorsResponse
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
        # @param [Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3Generator] google_cloud_dialogflow_cx_v3_generator_object
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
        # @yieldparam result [Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3Generator] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3Generator]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_project_location_agent_generator(name, google_cloud_dialogflow_cx_v3_generator_object = nil, language_code: nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v3/{+name}', options)
          command.request_representation = Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3Generator::Representation
          command.request_object = google_cloud_dialogflow_cx_v3_generator_object
          command.response_representation = Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3Generator::Representation
          command.response_class = Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3Generator
          command.params['name'] = name unless name.nil?
          command.query['languageCode'] = language_code unless language_code.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # 
        # @param [String] parent
        # @param [Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3Intent] google_cloud_dialogflow_cx_v3_intent_object
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
        
        # 
        # @param [String] parent
        # @param [Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3ExportIntentsRequest] google_cloud_dialogflow_cx_v3_export_intents_request_object
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
        def export_project_location_agent_intent(parent, google_cloud_dialogflow_cx_v3_export_intents_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v3/{+parent}/intents:export', options)
          command.request_representation = Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3ExportIntentsRequest::Representation
          command.request_object = google_cloud_dialogflow_cx_v3_export_intents_request_object
          command.response_representation = Google::Apis::DialogflowV3::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::DialogflowV3::GoogleLongrunningOperation
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
        
        # 
        # @param [String] parent
        # @param [Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3ImportIntentsRequest] google_cloud_dialogflow_cx_v3_import_intents_request_object
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
        def import_project_location_agent_intent(parent, google_cloud_dialogflow_cx_v3_import_intents_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v3/{+parent}/intents:import', options)
          command.request_representation = Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3ImportIntentsRequest::Representation
          command.request_object = google_cloud_dialogflow_cx_v3_import_intents_request_object
          command.response_representation = Google::Apis::DialogflowV3::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::DialogflowV3::GoogleLongrunningOperation
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
        
        # 
        # @param [String] name
        # @param [Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3Intent] google_cloud_dialogflow_cx_v3_intent_object
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
        
        # 
        # @param [String] parent
        # @param [Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3Playbook] google_cloud_dialogflow_cx_v3_playbook_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3Playbook] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3Playbook]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_location_agent_playbook(parent, google_cloud_dialogflow_cx_v3_playbook_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v3/{+parent}/playbooks', options)
          command.request_representation = Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3Playbook::Representation
          command.request_object = google_cloud_dialogflow_cx_v3_playbook_object
          command.response_representation = Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3Playbook::Representation
          command.response_class = Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3Playbook
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
        # @yieldparam result [Google::Apis::DialogflowV3::GoogleProtobufEmpty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV3::GoogleProtobufEmpty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_location_agent_playbook(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v3/{+name}', options)
          command.response_representation = Google::Apis::DialogflowV3::GoogleProtobufEmpty::Representation
          command.response_class = Google::Apis::DialogflowV3::GoogleProtobufEmpty
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # 
        # @param [String] name
        # @param [Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3ExportPlaybookRequest] google_cloud_dialogflow_cx_v3_export_playbook_request_object
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
        def export_project_location_agent_playbook(name, google_cloud_dialogflow_cx_v3_export_playbook_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v3/{+name}:export', options)
          command.request_representation = Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3ExportPlaybookRequest::Representation
          command.request_object = google_cloud_dialogflow_cx_v3_export_playbook_request_object
          command.response_representation = Google::Apis::DialogflowV3::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::DialogflowV3::GoogleLongrunningOperation
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
        # @yieldparam result [Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3Playbook] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3Playbook]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_agent_playbook(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v3/{+name}', options)
          command.response_representation = Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3Playbook::Representation
          command.response_class = Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3Playbook
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # 
        # @param [String] parent
        # @param [Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3ImportPlaybookRequest] google_cloud_dialogflow_cx_v3_import_playbook_request_object
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
        def import_project_location_agent_playbook(parent, google_cloud_dialogflow_cx_v3_import_playbook_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v3/{+parent}/playbooks:import', options)
          command.request_representation = Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3ImportPlaybookRequest::Representation
          command.request_object = google_cloud_dialogflow_cx_v3_import_playbook_request_object
          command.response_representation = Google::Apis::DialogflowV3::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::DialogflowV3::GoogleLongrunningOperation
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
        # @yieldparam result [Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3ListPlaybooksResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3ListPlaybooksResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_agent_playbooks(parent, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v3/{+parent}/playbooks', options)
          command.response_representation = Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3ListPlaybooksResponse::Representation
          command.response_class = Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3ListPlaybooksResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # 
        # @param [String] name
        # @param [Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3Playbook] google_cloud_dialogflow_cx_v3_playbook_object
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
        # @yieldparam result [Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3Playbook] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3Playbook]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_project_location_agent_playbook(name, google_cloud_dialogflow_cx_v3_playbook_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v3/{+name}', options)
          command.request_representation = Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3Playbook::Representation
          command.request_object = google_cloud_dialogflow_cx_v3_playbook_object
          command.response_representation = Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3Playbook::Representation
          command.response_class = Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3Playbook
          command.params['name'] = name unless name.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # 
        # @param [String] parent
        # @param [Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3Example] google_cloud_dialogflow_cx_v3_example_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3Example] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3Example]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_location_agent_playbook_example(parent, google_cloud_dialogflow_cx_v3_example_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v3/{+parent}/examples', options)
          command.request_representation = Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3Example::Representation
          command.request_object = google_cloud_dialogflow_cx_v3_example_object
          command.response_representation = Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3Example::Representation
          command.response_class = Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3Example
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
        # @yieldparam result [Google::Apis::DialogflowV3::GoogleProtobufEmpty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV3::GoogleProtobufEmpty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_location_agent_playbook_example(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v3/{+name}', options)
          command.response_representation = Google::Apis::DialogflowV3::GoogleProtobufEmpty::Representation
          command.response_class = Google::Apis::DialogflowV3::GoogleProtobufEmpty
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
        # @yieldparam result [Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3Example] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3Example]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_agent_playbook_example(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v3/{+name}', options)
          command.response_representation = Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3Example::Representation
          command.response_class = Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3Example
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
        # @yieldparam result [Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3ListExamplesResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3ListExamplesResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_agent_playbook_examples(parent, language_code: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v3/{+parent}/examples', options)
          command.response_representation = Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3ListExamplesResponse::Representation
          command.response_class = Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3ListExamplesResponse
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
        # @param [Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3Example] google_cloud_dialogflow_cx_v3_example_object
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
        # @yieldparam result [Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3Example] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3Example]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_project_location_agent_playbook_example(name, google_cloud_dialogflow_cx_v3_example_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v3/{+name}', options)
          command.request_representation = Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3Example::Representation
          command.request_object = google_cloud_dialogflow_cx_v3_example_object
          command.response_representation = Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3Example::Representation
          command.response_class = Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3Example
          command.params['name'] = name unless name.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # 
        # @param [String] parent
        # @param [Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3PlaybookVersion] google_cloud_dialogflow_cx_v3_playbook_version_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3PlaybookVersion] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3PlaybookVersion]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_location_agent_playbook_version(parent, google_cloud_dialogflow_cx_v3_playbook_version_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v3/{+parent}/versions', options)
          command.request_representation = Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3PlaybookVersion::Representation
          command.request_object = google_cloud_dialogflow_cx_v3_playbook_version_object
          command.response_representation = Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3PlaybookVersion::Representation
          command.response_class = Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3PlaybookVersion
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
        # @yieldparam result [Google::Apis::DialogflowV3::GoogleProtobufEmpty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV3::GoogleProtobufEmpty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_location_agent_playbook_version(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v3/{+name}', options)
          command.response_representation = Google::Apis::DialogflowV3::GoogleProtobufEmpty::Representation
          command.response_class = Google::Apis::DialogflowV3::GoogleProtobufEmpty
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
        # @yieldparam result [Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3PlaybookVersion] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3PlaybookVersion]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_agent_playbook_version(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v3/{+name}', options)
          command.response_representation = Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3PlaybookVersion::Representation
          command.response_class = Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3PlaybookVersion
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
        # @yieldparam result [Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3ListPlaybookVersionsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3ListPlaybookVersionsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_agent_playbook_versions(parent, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v3/{+parent}/versions', options)
          command.response_representation = Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3ListPlaybookVersionsResponse::Representation
          command.response_class = Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3ListPlaybookVersionsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # 
        # @param [String] name
        # @param [Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3RestorePlaybookVersionRequest] google_cloud_dialogflow_cx_v3_restore_playbook_version_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3RestorePlaybookVersionResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3RestorePlaybookVersionResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def restore_project_location_agent_playbook_version(name, google_cloud_dialogflow_cx_v3_restore_playbook_version_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v3/{+name}:restore', options)
          command.request_representation = Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3RestorePlaybookVersionRequest::Representation
          command.request_object = google_cloud_dialogflow_cx_v3_restore_playbook_version_request_object
          command.response_representation = Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3RestorePlaybookVersionResponse::Representation
          command.response_class = Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3RestorePlaybookVersionResponse
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # 
        # @param [String] session
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
        
        # 
        # @param [String] session
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
        
        # 
        # @param [String] session
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
        
        # 
        # @param [String] session
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
        def server_project_location_agent_session_streaming_detect_intent(session, google_cloud_dialogflow_cx_v3_detect_intent_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v3/{+session}:serverStreamingDetectIntent', options)
          command.request_representation = Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3DetectIntentRequest::Representation
          command.request_object = google_cloud_dialogflow_cx_v3_detect_intent_request_object
          command.response_representation = Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3DetectIntentResponse::Representation
          command.response_class = Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3DetectIntentResponse
          command.params['session'] = session unless session.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # 
        # @param [String] session
        # @param [Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3SubmitAnswerFeedbackRequest] google_cloud_dialogflow_cx_v3_submit_answer_feedback_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3AnswerFeedback] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3AnswerFeedback]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def submit_project_location_agent_session_answer_feedback(session, google_cloud_dialogflow_cx_v3_submit_answer_feedback_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v3/{+session}:submitAnswerFeedback', options)
          command.request_representation = Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3SubmitAnswerFeedbackRequest::Representation
          command.request_object = google_cloud_dialogflow_cx_v3_submit_answer_feedback_request_object
          command.response_representation = Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3AnswerFeedback::Representation
          command.response_class = Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3AnswerFeedback
          command.params['session'] = session unless session.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # 
        # @param [String] parent
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
        
        # 
        # @param [String] name
        # @param [Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3SessionEntityType] google_cloud_dialogflow_cx_v3_session_entity_type_object
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
        
        # 
        # @param [String] parent
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
        
        # 
        # @param [String] parent
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
        
        # 
        # @param [String] parent
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
        
        # 
        # @param [String] parent
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
        
        # 
        # @param [String] parent
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
        
        # 
        # @param [String] name
        # @param [Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3TestCase] google_cloud_dialogflow_cx_v3_test_case_object
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
        
        # 
        # @param [String] name
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
        
        # 
        # @param [String] parent
        # @param [Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3Tool] google_cloud_dialogflow_cx_v3_tool_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3Tool] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3Tool]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_location_agent_tool(parent, google_cloud_dialogflow_cx_v3_tool_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v3/{+parent}/tools', options)
          command.request_representation = Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3Tool::Representation
          command.request_object = google_cloud_dialogflow_cx_v3_tool_object
          command.response_representation = Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3Tool::Representation
          command.response_class = Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3Tool
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
        # @yieldparam result [Google::Apis::DialogflowV3::GoogleProtobufEmpty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV3::GoogleProtobufEmpty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_location_agent_tool(name, force: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v3/{+name}', options)
          command.response_representation = Google::Apis::DialogflowV3::GoogleProtobufEmpty::Representation
          command.response_class = Google::Apis::DialogflowV3::GoogleProtobufEmpty
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
        # @yieldparam result [Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3Tool] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3Tool]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_agent_tool(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v3/{+name}', options)
          command.response_representation = Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3Tool::Representation
          command.response_class = Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3Tool
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
        # @yieldparam result [Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3ListToolsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3ListToolsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_agent_tools(parent, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v3/{+parent}/tools', options)
          command.response_representation = Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3ListToolsResponse::Representation
          command.response_class = Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3ListToolsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # 
        # @param [String] name
        # @param [Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3Tool] google_cloud_dialogflow_cx_v3_tool_object
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
        # @yieldparam result [Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3Tool] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3Tool]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_project_location_agent_tool(name, google_cloud_dialogflow_cx_v3_tool_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v3/{+name}', options)
          command.request_representation = Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3Tool::Representation
          command.request_object = google_cloud_dialogflow_cx_v3_tool_object
          command.response_representation = Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3Tool::Representation
          command.response_class = Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3Tool
          command.params['name'] = name unless name.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # 
        # @param [String] parent
        # @param [Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3ToolVersion] google_cloud_dialogflow_cx_v3_tool_version_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3ToolVersion] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3ToolVersion]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_location_agent_tool_version(parent, google_cloud_dialogflow_cx_v3_tool_version_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v3/{+parent}/versions', options)
          command.request_representation = Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3ToolVersion::Representation
          command.request_object = google_cloud_dialogflow_cx_v3_tool_version_object
          command.response_representation = Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3ToolVersion::Representation
          command.response_class = Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3ToolVersion
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
        # @yieldparam result [Google::Apis::DialogflowV3::GoogleProtobufEmpty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV3::GoogleProtobufEmpty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_location_agent_tool_version(name, force: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v3/{+name}', options)
          command.response_representation = Google::Apis::DialogflowV3::GoogleProtobufEmpty::Representation
          command.response_class = Google::Apis::DialogflowV3::GoogleProtobufEmpty
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
        # @yieldparam result [Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3ToolVersion] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3ToolVersion]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_agent_tool_version(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v3/{+name}', options)
          command.response_representation = Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3ToolVersion::Representation
          command.response_class = Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3ToolVersion
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
        # @yieldparam result [Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3ListToolVersionsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3ListToolVersionsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_agent_tool_versions(parent, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v3/{+parent}/versions', options)
          command.response_representation = Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3ListToolVersionsResponse::Representation
          command.response_class = Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3ListToolVersionsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # 
        # @param [String] name
        # @param [Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3RestoreToolVersionRequest] google_cloud_dialogflow_cx_v3_restore_tool_version_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3RestoreToolVersionResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3RestoreToolVersionResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def restore_project_location_agent_tool_version(name, google_cloud_dialogflow_cx_v3_restore_tool_version_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v3/{+name}:restore', options)
          command.request_representation = Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3RestoreToolVersionRequest::Representation
          command.request_object = google_cloud_dialogflow_cx_v3_restore_tool_version_request_object
          command.response_representation = Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3RestoreToolVersionResponse::Representation
          command.response_class = Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3RestoreToolVersionResponse
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # 
        # @param [String] parent
        # @param [Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3TransitionRouteGroup] google_cloud_dialogflow_cx_v3_transition_route_group_object
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
        # @yieldparam result [Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3TransitionRouteGroup] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3TransitionRouteGroup]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_location_agent_transition_route_group(parent, google_cloud_dialogflow_cx_v3_transition_route_group_object = nil, language_code: nil, fields: nil, quota_user: nil, options: nil, &block)
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
        # @yieldparam result [Google::Apis::DialogflowV3::GoogleProtobufEmpty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV3::GoogleProtobufEmpty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_location_agent_transition_route_group(name, force: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v3/{+name}', options)
          command.response_representation = Google::Apis::DialogflowV3::GoogleProtobufEmpty::Representation
          command.response_class = Google::Apis::DialogflowV3::GoogleProtobufEmpty
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
        # @yieldparam result [Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3TransitionRouteGroup] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3TransitionRouteGroup]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_agent_transition_route_group(name, language_code: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v3/{+name}', options)
          command.response_representation = Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3TransitionRouteGroup::Representation
          command.response_class = Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3TransitionRouteGroup
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
        # @yieldparam result [Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3ListTransitionRouteGroupsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3ListTransitionRouteGroupsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_agent_transition_route_groups(parent, language_code: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
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
        
        # 
        # @param [String] name
        # @param [Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3TransitionRouteGroup] google_cloud_dialogflow_cx_v3_transition_route_group_object
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
        # @yieldparam result [Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3TransitionRouteGroup] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3TransitionRouteGroup]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_project_location_agent_transition_route_group(name, google_cloud_dialogflow_cx_v3_transition_route_group_object = nil, language_code: nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
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
        
        # 
        # @param [String] parent
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
        
        # 
        # @param [String] name
        # @param [Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3Webhook] google_cloud_dialogflow_cx_v3_webhook_object
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
        # @yieldparam result [Google::Apis::DialogflowV3::GoogleLongrunningListOperationsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV3::GoogleLongrunningListOperationsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_operations(name, filter: nil, page_size: nil, page_token: nil, return_partial_success: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v3/{+name}/operations', options)
          command.response_representation = Google::Apis::DialogflowV3::GoogleLongrunningListOperationsResponse::Representation
          command.response_class = Google::Apis::DialogflowV3::GoogleLongrunningListOperationsResponse
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
        
        # 
        # @param [String] name
        # @param [Google::Apis::DialogflowV3::GoogleCloudDialogflowCxV3SecuritySettings] google_cloud_dialogflow_cx_v3_security_settings_object
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
        # @yieldparam result [Google::Apis::DialogflowV3::GoogleLongrunningListOperationsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV3::GoogleLongrunningListOperationsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_operations(name, filter: nil, page_size: nil, page_token: nil, return_partial_success: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v3/{+name}/operations', options)
          command.response_representation = Google::Apis::DialogflowV3::GoogleLongrunningListOperationsResponse::Representation
          command.response_class = Google::Apis::DialogflowV3::GoogleLongrunningListOperationsResponse
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
