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
    module DialogflowV2beta1
      # Dialogflow API
      #
      # Builds conversational interfaces (for example, chatbots, and voice-powered
      #  apps and devices).
      #
      # @example
      #    require 'google/apis/dialogflow_v2beta1'
      #
      #    Dialogflow = Google::Apis::DialogflowV2beta1 # Alias the module
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
                client_name: 'google-apis-dialogflow_v2beta1',
                client_version: Google::Apis::DialogflowV2beta1::GEM_VERSION)
          @batch_path = 'batch'
        end
        
        # 
        # @param [String] parent
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV2beta1::GoogleProtobufEmpty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV2beta1::GoogleProtobufEmpty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_agent(parent, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v2beta1/{+parent}/agent', options)
          command.response_representation = Google::Apis::DialogflowV2beta1::GoogleProtobufEmpty::Representation
          command.response_class = Google::Apis::DialogflowV2beta1::GoogleProtobufEmpty
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # 
        # @param [String] parent
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1Agent] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1Agent]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_agent(parent, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2beta1/{+parent}/agent', options)
          command.response_representation = Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1Agent::Representation
          command.response_class = Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1Agent
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # 
        # @param [String] parent
        # @param [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1Agent] google_cloud_dialogflow_v2beta1_agent_object
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
        # @yieldparam result [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1Agent] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1Agent]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def set_project_agent(parent, google_cloud_dialogflow_v2beta1_agent_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v2beta1/{+parent}/agent', options)
          command.request_representation = Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1Agent::Representation
          command.request_object = google_cloud_dialogflow_v2beta1_agent_object
          command.response_representation = Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1Agent::Representation
          command.response_class = Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1Agent
          command.params['parent'] = parent unless parent.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # 
        # @param [String] parent
        # @param [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1ExportAgentRequest] google_cloud_dialogflow_v2beta1_export_agent_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV2beta1::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV2beta1::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def export_agent(parent, google_cloud_dialogflow_v2beta1_export_agent_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v2beta1/{+parent}/agent:export', options)
          command.request_representation = Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1ExportAgentRequest::Representation
          command.request_object = google_cloud_dialogflow_v2beta1_export_agent_request_object
          command.response_representation = Google::Apis::DialogflowV2beta1::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::DialogflowV2beta1::GoogleLongrunningOperation
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
        # @yieldparam result [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1Fulfillment] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1Fulfillment]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_agent_fulfillment(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2beta1/{+name}', options)
          command.response_representation = Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1Fulfillment::Representation
          command.response_class = Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1Fulfillment
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # 
        # @param [String] parent
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
        # @yieldparam result [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1ValidationResult] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1ValidationResult]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_agent_validation_result(parent, language_code: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2beta1/{+parent}/agent/validationResult', options)
          command.response_representation = Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1ValidationResult::Representation
          command.response_class = Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1ValidationResult
          command.params['parent'] = parent unless parent.nil?
          command.query['languageCode'] = language_code unless language_code.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # 
        # @param [String] parent
        # @param [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1ImportAgentRequest] google_cloud_dialogflow_v2beta1_import_agent_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV2beta1::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV2beta1::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def import_agent(parent, google_cloud_dialogflow_v2beta1_import_agent_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v2beta1/{+parent}/agent:import', options)
          command.request_representation = Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1ImportAgentRequest::Representation
          command.request_object = google_cloud_dialogflow_v2beta1_import_agent_request_object
          command.response_representation = Google::Apis::DialogflowV2beta1::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::DialogflowV2beta1::GoogleLongrunningOperation
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # 
        # @param [String] parent
        # @param [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1RestoreAgentRequest] google_cloud_dialogflow_v2beta1_restore_agent_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV2beta1::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV2beta1::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def restore_agent(parent, google_cloud_dialogflow_v2beta1_restore_agent_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v2beta1/{+parent}/agent:restore', options)
          command.request_representation = Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1RestoreAgentRequest::Representation
          command.request_object = google_cloud_dialogflow_v2beta1_restore_agent_request_object
          command.response_representation = Google::Apis::DialogflowV2beta1::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::DialogflowV2beta1::GoogleLongrunningOperation
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
        # @yieldparam result [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1SearchAgentsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1SearchAgentsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def search_project_agents(parent, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2beta1/{+parent}/agent:search', options)
          command.response_representation = Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1SearchAgentsResponse::Representation
          command.response_class = Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1SearchAgentsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # 
        # @param [String] parent
        # @param [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1TrainAgentRequest] google_cloud_dialogflow_v2beta1_train_agent_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV2beta1::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV2beta1::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def train_agent(parent, google_cloud_dialogflow_v2beta1_train_agent_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v2beta1/{+parent}/agent:train', options)
          command.request_representation = Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1TrainAgentRequest::Representation
          command.request_object = google_cloud_dialogflow_v2beta1_train_agent_request_object
          command.response_representation = Google::Apis::DialogflowV2beta1::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::DialogflowV2beta1::GoogleLongrunningOperation
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # 
        # @param [String] name
        # @param [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1Fulfillment] google_cloud_dialogflow_v2beta1_fulfillment_object
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
        # @yieldparam result [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1Fulfillment] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1Fulfillment]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def update_project_agent_fulfillment(name, google_cloud_dialogflow_v2beta1_fulfillment_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v2beta1/{+name}', options)
          command.request_representation = Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1Fulfillment::Representation
          command.request_object = google_cloud_dialogflow_v2beta1_fulfillment_object
          command.response_representation = Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1Fulfillment::Representation
          command.response_class = Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1Fulfillment
          command.params['name'] = name unless name.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # 
        # @param [String] parent
        # @param [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1BatchDeleteEntityTypesRequest] google_cloud_dialogflow_v2beta1_batch_delete_entity_types_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV2beta1::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV2beta1::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def batch_delete_entity_types(parent, google_cloud_dialogflow_v2beta1_batch_delete_entity_types_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v2beta1/{+parent}/entityTypes:batchDelete', options)
          command.request_representation = Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1BatchDeleteEntityTypesRequest::Representation
          command.request_object = google_cloud_dialogflow_v2beta1_batch_delete_entity_types_request_object
          command.response_representation = Google::Apis::DialogflowV2beta1::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::DialogflowV2beta1::GoogleLongrunningOperation
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # 
        # @param [String] parent
        # @param [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1BatchUpdateEntityTypesRequest] google_cloud_dialogflow_v2beta1_batch_update_entity_types_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV2beta1::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV2beta1::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def batch_update_entity_types(parent, google_cloud_dialogflow_v2beta1_batch_update_entity_types_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v2beta1/{+parent}/entityTypes:batchUpdate', options)
          command.request_representation = Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1BatchUpdateEntityTypesRequest::Representation
          command.request_object = google_cloud_dialogflow_v2beta1_batch_update_entity_types_request_object
          command.response_representation = Google::Apis::DialogflowV2beta1::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::DialogflowV2beta1::GoogleLongrunningOperation
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # 
        # @param [String] parent
        # @param [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1EntityType] google_cloud_dialogflow_v2beta1_entity_type_object
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
        # @yieldparam result [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1EntityType] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1EntityType]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_agent_entity_type(parent, google_cloud_dialogflow_v2beta1_entity_type_object = nil, language_code: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v2beta1/{+parent}/entityTypes', options)
          command.request_representation = Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1EntityType::Representation
          command.request_object = google_cloud_dialogflow_v2beta1_entity_type_object
          command.response_representation = Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1EntityType::Representation
          command.response_class = Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1EntityType
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
        # @yieldparam result [Google::Apis::DialogflowV2beta1::GoogleProtobufEmpty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV2beta1::GoogleProtobufEmpty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_agent_entity_type(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v2beta1/{+name}', options)
          command.response_representation = Google::Apis::DialogflowV2beta1::GoogleProtobufEmpty::Representation
          command.response_class = Google::Apis::DialogflowV2beta1::GoogleProtobufEmpty
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
        # @yieldparam result [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1EntityType] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1EntityType]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_agent_entity_type(name, language_code: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2beta1/{+name}', options)
          command.response_representation = Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1EntityType::Representation
          command.response_class = Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1EntityType
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
        # @yieldparam result [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1ListEntityTypesResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1ListEntityTypesResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_agent_entity_types(parent, language_code: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2beta1/{+parent}/entityTypes', options)
          command.response_representation = Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1ListEntityTypesResponse::Representation
          command.response_class = Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1ListEntityTypesResponse
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
        # @param [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1EntityType] google_cloud_dialogflow_v2beta1_entity_type_object
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
        # @yieldparam result [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1EntityType] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1EntityType]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_project_agent_entity_type(name, google_cloud_dialogflow_v2beta1_entity_type_object = nil, language_code: nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v2beta1/{+name}', options)
          command.request_representation = Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1EntityType::Representation
          command.request_object = google_cloud_dialogflow_v2beta1_entity_type_object
          command.response_representation = Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1EntityType::Representation
          command.response_class = Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1EntityType
          command.params['name'] = name unless name.nil?
          command.query['languageCode'] = language_code unless language_code.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # 
        # @param [String] parent
        # @param [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1BatchCreateEntitiesRequest] google_cloud_dialogflow_v2beta1_batch_create_entities_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV2beta1::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV2beta1::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def batch_entity_create_entities(parent, google_cloud_dialogflow_v2beta1_batch_create_entities_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v2beta1/{+parent}/entities:batchCreate', options)
          command.request_representation = Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1BatchCreateEntitiesRequest::Representation
          command.request_object = google_cloud_dialogflow_v2beta1_batch_create_entities_request_object
          command.response_representation = Google::Apis::DialogflowV2beta1::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::DialogflowV2beta1::GoogleLongrunningOperation
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # 
        # @param [String] parent
        # @param [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1BatchDeleteEntitiesRequest] google_cloud_dialogflow_v2beta1_batch_delete_entities_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV2beta1::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV2beta1::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def batch_entity_delete_entities(parent, google_cloud_dialogflow_v2beta1_batch_delete_entities_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v2beta1/{+parent}/entities:batchDelete', options)
          command.request_representation = Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1BatchDeleteEntitiesRequest::Representation
          command.request_object = google_cloud_dialogflow_v2beta1_batch_delete_entities_request_object
          command.response_representation = Google::Apis::DialogflowV2beta1::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::DialogflowV2beta1::GoogleLongrunningOperation
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # 
        # @param [String] parent
        # @param [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1BatchUpdateEntitiesRequest] google_cloud_dialogflow_v2beta1_batch_update_entities_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV2beta1::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV2beta1::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def batch_entity_update_entities(parent, google_cloud_dialogflow_v2beta1_batch_update_entities_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v2beta1/{+parent}/entities:batchUpdate', options)
          command.request_representation = Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1BatchUpdateEntitiesRequest::Representation
          command.request_object = google_cloud_dialogflow_v2beta1_batch_update_entities_request_object
          command.response_representation = Google::Apis::DialogflowV2beta1::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::DialogflowV2beta1::GoogleLongrunningOperation
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # 
        # @param [String] parent
        # @param [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1Environment] google_cloud_dialogflow_v2beta1_environment_object
        # @param [String] environment_id
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1Environment] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1Environment]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_agent_environment(parent, google_cloud_dialogflow_v2beta1_environment_object = nil, environment_id: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v2beta1/{+parent}/environments', options)
          command.request_representation = Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1Environment::Representation
          command.request_object = google_cloud_dialogflow_v2beta1_environment_object
          command.response_representation = Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1Environment::Representation
          command.response_class = Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1Environment
          command.params['parent'] = parent unless parent.nil?
          command.query['environmentId'] = environment_id unless environment_id.nil?
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
        # @yieldparam result [Google::Apis::DialogflowV2beta1::GoogleProtobufEmpty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV2beta1::GoogleProtobufEmpty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_agent_environment(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v2beta1/{+name}', options)
          command.response_representation = Google::Apis::DialogflowV2beta1::GoogleProtobufEmpty::Representation
          command.response_class = Google::Apis::DialogflowV2beta1::GoogleProtobufEmpty
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
        # @yieldparam result [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1Environment] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1Environment]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_agent_environment(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2beta1/{+name}', options)
          command.response_representation = Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1Environment::Representation
          command.response_class = Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1Environment
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
        # @yieldparam result [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1EnvironmentHistory] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1EnvironmentHistory]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_agent_environment_history(parent, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2beta1/{+parent}/history', options)
          command.response_representation = Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1EnvironmentHistory::Representation
          command.response_class = Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1EnvironmentHistory
          command.params['parent'] = parent unless parent.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
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
        # @yieldparam result [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1ListEnvironmentsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1ListEnvironmentsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_agent_environments(parent, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2beta1/{+parent}/environments', options)
          command.response_representation = Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1ListEnvironmentsResponse::Representation
          command.response_class = Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1ListEnvironmentsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # 
        # @param [String] name
        # @param [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1Environment] google_cloud_dialogflow_v2beta1_environment_object
        # @param [Boolean] allow_load_to_draft_and_discard_changes
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
        # @yieldparam result [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1Environment] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1Environment]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_project_agent_environment(name, google_cloud_dialogflow_v2beta1_environment_object = nil, allow_load_to_draft_and_discard_changes: nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v2beta1/{+name}', options)
          command.request_representation = Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1Environment::Representation
          command.request_object = google_cloud_dialogflow_v2beta1_environment_object
          command.response_representation = Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1Environment::Representation
          command.response_class = Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1Environment
          command.params['name'] = name unless name.nil?
          command.query['allowLoadToDraftAndDiscardChanges'] = allow_load_to_draft_and_discard_changes unless allow_load_to_draft_and_discard_changes.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
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
        # @yieldparam result [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1ListIntentsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1ListIntentsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_agent_environment_intents(parent, intent_view: nil, language_code: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2beta1/{+parent}/intents', options)
          command.response_representation = Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1ListIntentsResponse::Representation
          command.response_class = Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1ListIntentsResponse
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
        # @param [String] parent
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV2beta1::GoogleProtobufEmpty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV2beta1::GoogleProtobufEmpty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_agent_environment_user_session_contexts(parent, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v2beta1/{+parent}/contexts', options)
          command.response_representation = Google::Apis::DialogflowV2beta1::GoogleProtobufEmpty::Representation
          command.response_class = Google::Apis::DialogflowV2beta1::GoogleProtobufEmpty
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # 
        # @param [String] session
        # @param [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1DetectIntentRequest] google_cloud_dialogflow_v2beta1_detect_intent_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1DetectIntentResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1DetectIntentResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def detect_project_agent_environment_user_session_intent(session, google_cloud_dialogflow_v2beta1_detect_intent_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v2beta1/{+session}:detectIntent', options)
          command.request_representation = Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1DetectIntentRequest::Representation
          command.request_object = google_cloud_dialogflow_v2beta1_detect_intent_request_object
          command.response_representation = Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1DetectIntentResponse::Representation
          command.response_class = Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1DetectIntentResponse
          command.params['session'] = session unless session.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # 
        # @param [String] parent
        # @param [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1Context] google_cloud_dialogflow_v2beta1_context_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1Context] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1Context]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_agent_environment_user_session_context(parent, google_cloud_dialogflow_v2beta1_context_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v2beta1/{+parent}/contexts', options)
          command.request_representation = Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1Context::Representation
          command.request_object = google_cloud_dialogflow_v2beta1_context_object
          command.response_representation = Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1Context::Representation
          command.response_class = Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1Context
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
        # @yieldparam result [Google::Apis::DialogflowV2beta1::GoogleProtobufEmpty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV2beta1::GoogleProtobufEmpty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_agent_environment_user_session_context(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v2beta1/{+name}', options)
          command.response_representation = Google::Apis::DialogflowV2beta1::GoogleProtobufEmpty::Representation
          command.response_class = Google::Apis::DialogflowV2beta1::GoogleProtobufEmpty
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
        # @yieldparam result [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1Context] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1Context]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_agent_environment_user_session_context(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2beta1/{+name}', options)
          command.response_representation = Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1Context::Representation
          command.response_class = Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1Context
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
        # @yieldparam result [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1ListContextsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1ListContextsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_agent_environment_user_session_contexts(parent, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2beta1/{+parent}/contexts', options)
          command.response_representation = Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1ListContextsResponse::Representation
          command.response_class = Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1ListContextsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # 
        # @param [String] name
        # @param [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1Context] google_cloud_dialogflow_v2beta1_context_object
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
        # @yieldparam result [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1Context] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1Context]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_project_agent_environment_user_session_context(name, google_cloud_dialogflow_v2beta1_context_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v2beta1/{+name}', options)
          command.request_representation = Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1Context::Representation
          command.request_object = google_cloud_dialogflow_v2beta1_context_object
          command.response_representation = Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1Context::Representation
          command.response_class = Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1Context
          command.params['name'] = name unless name.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # 
        # @param [String] parent
        # @param [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1SessionEntityType] google_cloud_dialogflow_v2beta1_session_entity_type_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1SessionEntityType] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1SessionEntityType]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_agent_environment_user_session_entity_type(parent, google_cloud_dialogflow_v2beta1_session_entity_type_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v2beta1/{+parent}/entityTypes', options)
          command.request_representation = Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1SessionEntityType::Representation
          command.request_object = google_cloud_dialogflow_v2beta1_session_entity_type_object
          command.response_representation = Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1SessionEntityType::Representation
          command.response_class = Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1SessionEntityType
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
        # @yieldparam result [Google::Apis::DialogflowV2beta1::GoogleProtobufEmpty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV2beta1::GoogleProtobufEmpty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_agent_environment_user_session_entity_type(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v2beta1/{+name}', options)
          command.response_representation = Google::Apis::DialogflowV2beta1::GoogleProtobufEmpty::Representation
          command.response_class = Google::Apis::DialogflowV2beta1::GoogleProtobufEmpty
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
        # @yieldparam result [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1SessionEntityType] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1SessionEntityType]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_agent_environment_user_session_entity_type(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2beta1/{+name}', options)
          command.response_representation = Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1SessionEntityType::Representation
          command.response_class = Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1SessionEntityType
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
        # @yieldparam result [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1ListSessionEntityTypesResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1ListSessionEntityTypesResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_agent_environment_user_session_entity_types(parent, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2beta1/{+parent}/entityTypes', options)
          command.response_representation = Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1ListSessionEntityTypesResponse::Representation
          command.response_class = Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1ListSessionEntityTypesResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # 
        # @param [String] name
        # @param [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1SessionEntityType] google_cloud_dialogflow_v2beta1_session_entity_type_object
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
        # @yieldparam result [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1SessionEntityType] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1SessionEntityType]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_project_agent_environment_user_session_entity_type(name, google_cloud_dialogflow_v2beta1_session_entity_type_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v2beta1/{+name}', options)
          command.request_representation = Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1SessionEntityType::Representation
          command.request_object = google_cloud_dialogflow_v2beta1_session_entity_type_object
          command.response_representation = Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1SessionEntityType::Representation
          command.response_class = Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1SessionEntityType
          command.params['name'] = name unless name.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # 
        # @param [String] parent
        # @param [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1BatchDeleteIntentsRequest] google_cloud_dialogflow_v2beta1_batch_delete_intents_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV2beta1::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV2beta1::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def batch_delete_intents(parent, google_cloud_dialogflow_v2beta1_batch_delete_intents_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v2beta1/{+parent}/intents:batchDelete', options)
          command.request_representation = Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1BatchDeleteIntentsRequest::Representation
          command.request_object = google_cloud_dialogflow_v2beta1_batch_delete_intents_request_object
          command.response_representation = Google::Apis::DialogflowV2beta1::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::DialogflowV2beta1::GoogleLongrunningOperation
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # 
        # @param [String] parent
        # @param [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1BatchUpdateIntentsRequest] google_cloud_dialogflow_v2beta1_batch_update_intents_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV2beta1::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV2beta1::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def batch_update_intents(parent, google_cloud_dialogflow_v2beta1_batch_update_intents_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v2beta1/{+parent}/intents:batchUpdate', options)
          command.request_representation = Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1BatchUpdateIntentsRequest::Representation
          command.request_object = google_cloud_dialogflow_v2beta1_batch_update_intents_request_object
          command.response_representation = Google::Apis::DialogflowV2beta1::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::DialogflowV2beta1::GoogleLongrunningOperation
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # 
        # @param [String] parent
        # @param [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1Intent] google_cloud_dialogflow_v2beta1_intent_object
        # @param [String] intent_view
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
        # @yieldparam result [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1Intent] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1Intent]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_agent_intent(parent, google_cloud_dialogflow_v2beta1_intent_object = nil, intent_view: nil, language_code: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v2beta1/{+parent}/intents', options)
          command.request_representation = Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1Intent::Representation
          command.request_object = google_cloud_dialogflow_v2beta1_intent_object
          command.response_representation = Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1Intent::Representation
          command.response_class = Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1Intent
          command.params['parent'] = parent unless parent.nil?
          command.query['intentView'] = intent_view unless intent_view.nil?
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
        # @yieldparam result [Google::Apis::DialogflowV2beta1::GoogleProtobufEmpty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV2beta1::GoogleProtobufEmpty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_agent_intent(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v2beta1/{+name}', options)
          command.response_representation = Google::Apis::DialogflowV2beta1::GoogleProtobufEmpty::Representation
          command.response_class = Google::Apis::DialogflowV2beta1::GoogleProtobufEmpty
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # 
        # @param [String] name
        # @param [String] intent_view
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
        # @yieldparam result [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1Intent] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1Intent]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_agent_intent(name, intent_view: nil, language_code: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2beta1/{+name}', options)
          command.response_representation = Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1Intent::Representation
          command.response_class = Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1Intent
          command.params['name'] = name unless name.nil?
          command.query['intentView'] = intent_view unless intent_view.nil?
          command.query['languageCode'] = language_code unless language_code.nil?
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
        # @yieldparam result [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1ListIntentsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1ListIntentsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_agent_intents(parent, intent_view: nil, language_code: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2beta1/{+parent}/intents', options)
          command.response_representation = Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1ListIntentsResponse::Representation
          command.response_class = Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1ListIntentsResponse
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
        # @param [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1Intent] google_cloud_dialogflow_v2beta1_intent_object
        # @param [String] intent_view
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
        # @yieldparam result [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1Intent] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1Intent]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_project_agent_intent(name, google_cloud_dialogflow_v2beta1_intent_object = nil, intent_view: nil, language_code: nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v2beta1/{+name}', options)
          command.request_representation = Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1Intent::Representation
          command.request_object = google_cloud_dialogflow_v2beta1_intent_object
          command.response_representation = Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1Intent::Representation
          command.response_class = Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1Intent
          command.params['name'] = name unless name.nil?
          command.query['intentView'] = intent_view unless intent_view.nil?
          command.query['languageCode'] = language_code unless language_code.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # 
        # @param [String] parent
        # @param [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1KnowledgeBase] google_cloud_dialogflow_v2beta1_knowledge_base_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1KnowledgeBase] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1KnowledgeBase]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_agent_knowledge_basis(parent, google_cloud_dialogflow_v2beta1_knowledge_base_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v2beta1/{+parent}/knowledgeBases', options)
          command.request_representation = Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1KnowledgeBase::Representation
          command.request_object = google_cloud_dialogflow_v2beta1_knowledge_base_object
          command.response_representation = Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1KnowledgeBase::Representation
          command.response_class = Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1KnowledgeBase
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
        # @yieldparam result [Google::Apis::DialogflowV2beta1::GoogleProtobufEmpty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV2beta1::GoogleProtobufEmpty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_agent_knowledge_basis(name, force: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v2beta1/{+name}', options)
          command.response_representation = Google::Apis::DialogflowV2beta1::GoogleProtobufEmpty::Representation
          command.response_class = Google::Apis::DialogflowV2beta1::GoogleProtobufEmpty
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
        # @yieldparam result [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1KnowledgeBase] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1KnowledgeBase]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_agent_knowledge_basis(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2beta1/{+name}', options)
          command.response_representation = Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1KnowledgeBase::Representation
          command.response_class = Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1KnowledgeBase
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
        # @yieldparam result [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1ListKnowledgeBasesResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1ListKnowledgeBasesResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_agent_knowledge_bases(parent, filter: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2beta1/{+parent}/knowledgeBases', options)
          command.response_representation = Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1ListKnowledgeBasesResponse::Representation
          command.response_class = Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1ListKnowledgeBasesResponse
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
        # @param [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1KnowledgeBase] google_cloud_dialogflow_v2beta1_knowledge_base_object
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
        # @yieldparam result [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1KnowledgeBase] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1KnowledgeBase]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_project_agent_knowledge_basis(name, google_cloud_dialogflow_v2beta1_knowledge_base_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v2beta1/{+name}', options)
          command.request_representation = Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1KnowledgeBase::Representation
          command.request_object = google_cloud_dialogflow_v2beta1_knowledge_base_object
          command.response_representation = Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1KnowledgeBase::Representation
          command.response_class = Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1KnowledgeBase
          command.params['name'] = name unless name.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # 
        # @param [String] parent
        # @param [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1Document] google_cloud_dialogflow_v2beta1_document_object
        # @param [Boolean] import_gcs_custom_metadata
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV2beta1::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV2beta1::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_agent_knowledge_basis_document(parent, google_cloud_dialogflow_v2beta1_document_object = nil, import_gcs_custom_metadata: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v2beta1/{+parent}/documents', options)
          command.request_representation = Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1Document::Representation
          command.request_object = google_cloud_dialogflow_v2beta1_document_object
          command.response_representation = Google::Apis::DialogflowV2beta1::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::DialogflowV2beta1::GoogleLongrunningOperation
          command.params['parent'] = parent unless parent.nil?
          command.query['importGcsCustomMetadata'] = import_gcs_custom_metadata unless import_gcs_custom_metadata.nil?
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
        # @yieldparam result [Google::Apis::DialogflowV2beta1::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV2beta1::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_agent_knowledge_basis_document(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v2beta1/{+name}', options)
          command.response_representation = Google::Apis::DialogflowV2beta1::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::DialogflowV2beta1::GoogleLongrunningOperation
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
        # @yieldparam result [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1Document] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1Document]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_agent_knowledge_basis_document(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2beta1/{+name}', options)
          command.response_representation = Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1Document::Representation
          command.response_class = Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1Document
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
        # @yieldparam result [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1ListDocumentsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1ListDocumentsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_agent_knowledge_basis_documents(parent, filter: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2beta1/{+parent}/documents', options)
          command.response_representation = Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1ListDocumentsResponse::Representation
          command.response_class = Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1ListDocumentsResponse
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
        # @param [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1Document] google_cloud_dialogflow_v2beta1_document_object
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
        # @yieldparam result [Google::Apis::DialogflowV2beta1::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV2beta1::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_project_agent_knowledge_basis_document(name, google_cloud_dialogflow_v2beta1_document_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v2beta1/{+name}', options)
          command.request_representation = Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1Document::Representation
          command.request_object = google_cloud_dialogflow_v2beta1_document_object
          command.response_representation = Google::Apis::DialogflowV2beta1::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::DialogflowV2beta1::GoogleLongrunningOperation
          command.params['name'] = name unless name.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # 
        # @param [String] name
        # @param [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1ReloadDocumentRequest] google_cloud_dialogflow_v2beta1_reload_document_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV2beta1::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV2beta1::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def reload_project_agent_knowledge_basis_document(name, google_cloud_dialogflow_v2beta1_reload_document_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v2beta1/{+name}:reload', options)
          command.request_representation = Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1ReloadDocumentRequest::Representation
          command.request_object = google_cloud_dialogflow_v2beta1_reload_document_request_object
          command.response_representation = Google::Apis::DialogflowV2beta1::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::DialogflowV2beta1::GoogleLongrunningOperation
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # 
        # @param [String] parent
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV2beta1::GoogleProtobufEmpty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV2beta1::GoogleProtobufEmpty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_agent_session_contexts(parent, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v2beta1/{+parent}/contexts', options)
          command.response_representation = Google::Apis::DialogflowV2beta1::GoogleProtobufEmpty::Representation
          command.response_class = Google::Apis::DialogflowV2beta1::GoogleProtobufEmpty
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # 
        # @param [String] session
        # @param [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1DetectIntentRequest] google_cloud_dialogflow_v2beta1_detect_intent_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1DetectIntentResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1DetectIntentResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def detect_session_intent(session, google_cloud_dialogflow_v2beta1_detect_intent_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v2beta1/{+session}:detectIntent', options)
          command.request_representation = Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1DetectIntentRequest::Representation
          command.request_object = google_cloud_dialogflow_v2beta1_detect_intent_request_object
          command.response_representation = Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1DetectIntentResponse::Representation
          command.response_class = Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1DetectIntentResponse
          command.params['session'] = session unless session.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # 
        # @param [String] parent
        # @param [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1Context] google_cloud_dialogflow_v2beta1_context_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1Context] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1Context]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_agent_session_context(parent, google_cloud_dialogflow_v2beta1_context_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v2beta1/{+parent}/contexts', options)
          command.request_representation = Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1Context::Representation
          command.request_object = google_cloud_dialogflow_v2beta1_context_object
          command.response_representation = Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1Context::Representation
          command.response_class = Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1Context
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
        # @yieldparam result [Google::Apis::DialogflowV2beta1::GoogleProtobufEmpty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV2beta1::GoogleProtobufEmpty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_agent_session_context(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v2beta1/{+name}', options)
          command.response_representation = Google::Apis::DialogflowV2beta1::GoogleProtobufEmpty::Representation
          command.response_class = Google::Apis::DialogflowV2beta1::GoogleProtobufEmpty
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
        # @yieldparam result [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1Context] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1Context]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_agent_session_context(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2beta1/{+name}', options)
          command.response_representation = Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1Context::Representation
          command.response_class = Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1Context
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
        # @yieldparam result [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1ListContextsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1ListContextsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_agent_session_contexts(parent, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2beta1/{+parent}/contexts', options)
          command.response_representation = Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1ListContextsResponse::Representation
          command.response_class = Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1ListContextsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # 
        # @param [String] name
        # @param [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1Context] google_cloud_dialogflow_v2beta1_context_object
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
        # @yieldparam result [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1Context] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1Context]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_project_agent_session_context(name, google_cloud_dialogflow_v2beta1_context_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v2beta1/{+name}', options)
          command.request_representation = Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1Context::Representation
          command.request_object = google_cloud_dialogflow_v2beta1_context_object
          command.response_representation = Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1Context::Representation
          command.response_class = Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1Context
          command.params['name'] = name unless name.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # 
        # @param [String] parent
        # @param [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1SessionEntityType] google_cloud_dialogflow_v2beta1_session_entity_type_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1SessionEntityType] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1SessionEntityType]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_agent_session_entity_type(parent, google_cloud_dialogflow_v2beta1_session_entity_type_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v2beta1/{+parent}/entityTypes', options)
          command.request_representation = Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1SessionEntityType::Representation
          command.request_object = google_cloud_dialogflow_v2beta1_session_entity_type_object
          command.response_representation = Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1SessionEntityType::Representation
          command.response_class = Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1SessionEntityType
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
        # @yieldparam result [Google::Apis::DialogflowV2beta1::GoogleProtobufEmpty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV2beta1::GoogleProtobufEmpty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_agent_session_entity_type(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v2beta1/{+name}', options)
          command.response_representation = Google::Apis::DialogflowV2beta1::GoogleProtobufEmpty::Representation
          command.response_class = Google::Apis::DialogflowV2beta1::GoogleProtobufEmpty
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
        # @yieldparam result [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1SessionEntityType] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1SessionEntityType]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_agent_session_entity_type(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2beta1/{+name}', options)
          command.response_representation = Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1SessionEntityType::Representation
          command.response_class = Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1SessionEntityType
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
        # @yieldparam result [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1ListSessionEntityTypesResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1ListSessionEntityTypesResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_agent_session_entity_types(parent, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2beta1/{+parent}/entityTypes', options)
          command.response_representation = Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1ListSessionEntityTypesResponse::Representation
          command.response_class = Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1ListSessionEntityTypesResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # 
        # @param [String] name
        # @param [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1SessionEntityType] google_cloud_dialogflow_v2beta1_session_entity_type_object
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
        # @yieldparam result [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1SessionEntityType] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1SessionEntityType]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_project_agent_session_entity_type(name, google_cloud_dialogflow_v2beta1_session_entity_type_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v2beta1/{+name}', options)
          command.request_representation = Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1SessionEntityType::Representation
          command.request_object = google_cloud_dialogflow_v2beta1_session_entity_type_object
          command.response_representation = Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1SessionEntityType::Representation
          command.response_class = Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1SessionEntityType
          command.params['name'] = name unless name.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # 
        # @param [String] parent
        # @param [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1Version] google_cloud_dialogflow_v2beta1_version_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1Version] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1Version]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_agent_version(parent, google_cloud_dialogflow_v2beta1_version_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v2beta1/{+parent}/versions', options)
          command.request_representation = Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1Version::Representation
          command.request_object = google_cloud_dialogflow_v2beta1_version_object
          command.response_representation = Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1Version::Representation
          command.response_class = Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1Version
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
        # @yieldparam result [Google::Apis::DialogflowV2beta1::GoogleProtobufEmpty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV2beta1::GoogleProtobufEmpty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_agent_version(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v2beta1/{+name}', options)
          command.response_representation = Google::Apis::DialogflowV2beta1::GoogleProtobufEmpty::Representation
          command.response_class = Google::Apis::DialogflowV2beta1::GoogleProtobufEmpty
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
        # @yieldparam result [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1Version] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1Version]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_agent_version(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2beta1/{+name}', options)
          command.response_representation = Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1Version::Representation
          command.response_class = Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1Version
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
        # @yieldparam result [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1ListVersionsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1ListVersionsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_agent_versions(parent, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2beta1/{+parent}/versions', options)
          command.response_representation = Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1ListVersionsResponse::Representation
          command.response_class = Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1ListVersionsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # 
        # @param [String] name
        # @param [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1Version] google_cloud_dialogflow_v2beta1_version_object
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
        # @yieldparam result [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1Version] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1Version]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_project_agent_version(name, google_cloud_dialogflow_v2beta1_version_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v2beta1/{+name}', options)
          command.request_representation = Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1Version::Representation
          command.request_object = google_cloud_dialogflow_v2beta1_version_object
          command.response_representation = Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1Version::Representation
          command.response_class = Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1Version
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
        # @yieldparam result [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1AnswerRecord] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1AnswerRecord]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_answer_record(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2beta1/{+name}', options)
          command.response_representation = Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1AnswerRecord::Representation
          command.response_class = Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1AnswerRecord
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
        # @yieldparam result [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1ListAnswerRecordsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1ListAnswerRecordsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_answer_records(parent, filter: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2beta1/{+parent}/answerRecords', options)
          command.response_representation = Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1ListAnswerRecordsResponse::Representation
          command.response_class = Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1ListAnswerRecordsResponse
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
        # @param [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1AnswerRecord] google_cloud_dialogflow_v2beta1_answer_record_object
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
        # @yieldparam result [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1AnswerRecord] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1AnswerRecord]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_project_answer_record(name, google_cloud_dialogflow_v2beta1_answer_record_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v2beta1/{+name}', options)
          command.request_representation = Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1AnswerRecord::Representation
          command.request_object = google_cloud_dialogflow_v2beta1_answer_record_object
          command.response_representation = Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1AnswerRecord::Representation
          command.response_class = Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1AnswerRecord
          command.params['name'] = name unless name.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # 
        # @param [String] conversation_profile
        # @param [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1ClearSuggestionFeatureConfigRequest] google_cloud_dialogflow_v2beta1_clear_suggestion_feature_config_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV2beta1::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV2beta1::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def clear_project_conversation_profile_suggestion_feature_config(conversation_profile, google_cloud_dialogflow_v2beta1_clear_suggestion_feature_config_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v2beta1/{+conversationProfile}:clearSuggestionFeatureConfig', options)
          command.request_representation = Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1ClearSuggestionFeatureConfigRequest::Representation
          command.request_object = google_cloud_dialogflow_v2beta1_clear_suggestion_feature_config_request_object
          command.response_representation = Google::Apis::DialogflowV2beta1::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::DialogflowV2beta1::GoogleLongrunningOperation
          command.params['conversationProfile'] = conversation_profile unless conversation_profile.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # 
        # @param [String] parent
        # @param [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1ConversationProfile] google_cloud_dialogflow_v2beta1_conversation_profile_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1ConversationProfile] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1ConversationProfile]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_conversation_profile(parent, google_cloud_dialogflow_v2beta1_conversation_profile_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v2beta1/{+parent}/conversationProfiles', options)
          command.request_representation = Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1ConversationProfile::Representation
          command.request_object = google_cloud_dialogflow_v2beta1_conversation_profile_object
          command.response_representation = Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1ConversationProfile::Representation
          command.response_class = Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1ConversationProfile
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
        # @yieldparam result [Google::Apis::DialogflowV2beta1::GoogleProtobufEmpty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV2beta1::GoogleProtobufEmpty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_conversation_profile(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v2beta1/{+name}', options)
          command.response_representation = Google::Apis::DialogflowV2beta1::GoogleProtobufEmpty::Representation
          command.response_class = Google::Apis::DialogflowV2beta1::GoogleProtobufEmpty
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
        # @yieldparam result [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1ConversationProfile] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1ConversationProfile]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_conversation_profile(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2beta1/{+name}', options)
          command.response_representation = Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1ConversationProfile::Representation
          command.response_class = Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1ConversationProfile
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
        # @yieldparam result [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1ListConversationProfilesResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1ListConversationProfilesResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_conversation_profiles(parent, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2beta1/{+parent}/conversationProfiles', options)
          command.response_representation = Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1ListConversationProfilesResponse::Representation
          command.response_class = Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1ListConversationProfilesResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # 
        # @param [String] name
        # @param [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1ConversationProfile] google_cloud_dialogflow_v2beta1_conversation_profile_object
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
        # @yieldparam result [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1ConversationProfile] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1ConversationProfile]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_project_conversation_profile(name, google_cloud_dialogflow_v2beta1_conversation_profile_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v2beta1/{+name}', options)
          command.request_representation = Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1ConversationProfile::Representation
          command.request_object = google_cloud_dialogflow_v2beta1_conversation_profile_object
          command.response_representation = Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1ConversationProfile::Representation
          command.response_class = Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1ConversationProfile
          command.params['name'] = name unless name.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # 
        # @param [String] conversation_profile
        # @param [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1SetSuggestionFeatureConfigRequest] google_cloud_dialogflow_v2beta1_set_suggestion_feature_config_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV2beta1::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV2beta1::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def set_project_conversation_profile_suggestion_feature_config(conversation_profile, google_cloud_dialogflow_v2beta1_set_suggestion_feature_config_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v2beta1/{+conversationProfile}:setSuggestionFeatureConfig', options)
          command.request_representation = Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1SetSuggestionFeatureConfigRequest::Representation
          command.request_object = google_cloud_dialogflow_v2beta1_set_suggestion_feature_config_request_object
          command.response_representation = Google::Apis::DialogflowV2beta1::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::DialogflowV2beta1::GoogleLongrunningOperation
          command.params['conversationProfile'] = conversation_profile unless conversation_profile.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # 
        # @param [String] name
        # @param [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1CompleteConversationRequest] google_cloud_dialogflow_v2beta1_complete_conversation_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1Conversation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1Conversation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def complete_project_conversation(name, google_cloud_dialogflow_v2beta1_complete_conversation_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v2beta1/{+name}:complete', options)
          command.request_representation = Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1CompleteConversationRequest::Representation
          command.request_object = google_cloud_dialogflow_v2beta1_complete_conversation_request_object
          command.response_representation = Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1Conversation::Representation
          command.response_class = Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1Conversation
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # 
        # @param [String] parent
        # @param [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1Conversation] google_cloud_dialogflow_v2beta1_conversation_object
        # @param [String] conversation_id
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1Conversation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1Conversation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_conversation(parent, google_cloud_dialogflow_v2beta1_conversation_object = nil, conversation_id: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v2beta1/{+parent}/conversations', options)
          command.request_representation = Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1Conversation::Representation
          command.request_object = google_cloud_dialogflow_v2beta1_conversation_object
          command.response_representation = Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1Conversation::Representation
          command.response_class = Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1Conversation
          command.params['parent'] = parent unless parent.nil?
          command.query['conversationId'] = conversation_id unless conversation_id.nil?
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
        # @yieldparam result [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1Conversation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1Conversation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_conversation(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2beta1/{+name}', options)
          command.response_representation = Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1Conversation::Representation
          command.response_class = Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1Conversation
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
        # @yieldparam result [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1ListConversationsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1ListConversationsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_conversations(parent, filter: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2beta1/{+parent}/conversations', options)
          command.response_representation = Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1ListConversationsResponse::Representation
          command.response_class = Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1ListConversationsResponse
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
        # @param [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1BatchCreateMessagesRequest] google_cloud_dialogflow_v2beta1_batch_create_messages_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1BatchCreateMessagesResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1BatchCreateMessagesResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def batch_project_conversation_message_create(parent, google_cloud_dialogflow_v2beta1_batch_create_messages_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v2beta1/{+parent}/messages:batchCreate', options)
          command.request_representation = Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1BatchCreateMessagesRequest::Representation
          command.request_object = google_cloud_dialogflow_v2beta1_batch_create_messages_request_object
          command.response_representation = Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1BatchCreateMessagesResponse::Representation
          command.response_class = Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1BatchCreateMessagesResponse
          command.params['parent'] = parent unless parent.nil?
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
        # @yieldparam result [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1ListMessagesResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1ListMessagesResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_conversation_messages(parent, filter: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2beta1/{+parent}/messages', options)
          command.response_representation = Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1ListMessagesResponse::Representation
          command.response_class = Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1ListMessagesResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # 
        # @param [String] participant
        # @param [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1AnalyzeContentRequest] google_cloud_dialogflow_v2beta1_analyze_content_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1AnalyzeContentResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1AnalyzeContentResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def analyze_project_conversation_participant_content(participant, google_cloud_dialogflow_v2beta1_analyze_content_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v2beta1/{+participant}:analyzeContent', options)
          command.request_representation = Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1AnalyzeContentRequest::Representation
          command.request_object = google_cloud_dialogflow_v2beta1_analyze_content_request_object
          command.response_representation = Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1AnalyzeContentResponse::Representation
          command.response_class = Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1AnalyzeContentResponse
          command.params['participant'] = participant unless participant.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # 
        # @param [String] parent
        # @param [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1Participant] google_cloud_dialogflow_v2beta1_participant_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1Participant] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1Participant]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_conversation_participant(parent, google_cloud_dialogflow_v2beta1_participant_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v2beta1/{+parent}/participants', options)
          command.request_representation = Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1Participant::Representation
          command.request_object = google_cloud_dialogflow_v2beta1_participant_object
          command.response_representation = Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1Participant::Representation
          command.response_class = Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1Participant
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
        # @yieldparam result [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1Participant] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1Participant]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_conversation_participant(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2beta1/{+name}', options)
          command.response_representation = Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1Participant::Representation
          command.response_class = Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1Participant
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
        # @yieldparam result [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1ListParticipantsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1ListParticipantsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_conversation_participants(parent, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2beta1/{+parent}/participants', options)
          command.response_representation = Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1ListParticipantsResponse::Representation
          command.response_class = Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1ListParticipantsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # 
        # @param [String] name
        # @param [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1Participant] google_cloud_dialogflow_v2beta1_participant_object
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
        # @yieldparam result [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1Participant] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1Participant]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_project_conversation_participant(name, google_cloud_dialogflow_v2beta1_participant_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v2beta1/{+name}', options)
          command.request_representation = Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1Participant::Representation
          command.request_object = google_cloud_dialogflow_v2beta1_participant_object
          command.response_representation = Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1Participant::Representation
          command.response_class = Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1Participant
          command.params['name'] = name unless name.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # 
        # @param [String] parent
        # @param [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1CompileSuggestionRequest] google_cloud_dialogflow_v2beta1_compile_suggestion_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1CompileSuggestionResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1CompileSuggestionResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def compile_project_conversation_participant_suggestion(parent, google_cloud_dialogflow_v2beta1_compile_suggestion_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v2beta1/{+parent}/suggestions:compile', options)
          command.request_representation = Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1CompileSuggestionRequest::Representation
          command.request_object = google_cloud_dialogflow_v2beta1_compile_suggestion_request_object
          command.response_representation = Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1CompileSuggestionResponse::Representation
          command.response_class = Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1CompileSuggestionResponse
          command.params['parent'] = parent unless parent.nil?
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
        # @yieldparam result [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1ListSuggestionsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1ListSuggestionsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_conversation_participant_suggestions(parent, filter: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2beta1/{+parent}/suggestions', options)
          command.response_representation = Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1ListSuggestionsResponse::Representation
          command.response_class = Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1ListSuggestionsResponse
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
        # @param [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1SuggestArticlesRequest] google_cloud_dialogflow_v2beta1_suggest_articles_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1SuggestArticlesResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1SuggestArticlesResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def suggest_project_conversation_participant_suggestion_articles(parent, google_cloud_dialogflow_v2beta1_suggest_articles_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v2beta1/{+parent}/suggestions:suggestArticles', options)
          command.request_representation = Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1SuggestArticlesRequest::Representation
          command.request_object = google_cloud_dialogflow_v2beta1_suggest_articles_request_object
          command.response_representation = Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1SuggestArticlesResponse::Representation
          command.response_class = Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1SuggestArticlesResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # 
        # @param [String] parent
        # @param [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1SuggestFaqAnswersRequest] google_cloud_dialogflow_v2beta1_suggest_faq_answers_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1SuggestFaqAnswersResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1SuggestFaqAnswersResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def suggest_project_conversation_participant_suggestion_faq_answers(parent, google_cloud_dialogflow_v2beta1_suggest_faq_answers_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v2beta1/{+parent}/suggestions:suggestFaqAnswers', options)
          command.request_representation = Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1SuggestFaqAnswersRequest::Representation
          command.request_object = google_cloud_dialogflow_v2beta1_suggest_faq_answers_request_object
          command.response_representation = Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1SuggestFaqAnswersResponse::Representation
          command.response_class = Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1SuggestFaqAnswersResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # 
        # @param [String] parent
        # @param [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1SuggestKnowledgeAssistRequest] google_cloud_dialogflow_v2beta1_suggest_knowledge_assist_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1SuggestKnowledgeAssistResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1SuggestKnowledgeAssistResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def suggest_project_conversation_participant_suggestion_knowledge_assist(parent, google_cloud_dialogflow_v2beta1_suggest_knowledge_assist_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v2beta1/{+parent}/suggestions:suggestKnowledgeAssist', options)
          command.request_representation = Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1SuggestKnowledgeAssistRequest::Representation
          command.request_object = google_cloud_dialogflow_v2beta1_suggest_knowledge_assist_request_object
          command.response_representation = Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1SuggestKnowledgeAssistResponse::Representation
          command.response_class = Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1SuggestKnowledgeAssistResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # 
        # @param [String] parent
        # @param [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1SuggestSmartRepliesRequest] google_cloud_dialogflow_v2beta1_suggest_smart_replies_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1SuggestSmartRepliesResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1SuggestSmartRepliesResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def suggest_project_conversation_participant_suggestion_smart_replies(parent, google_cloud_dialogflow_v2beta1_suggest_smart_replies_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v2beta1/{+parent}/suggestions:suggestSmartReplies', options)
          command.request_representation = Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1SuggestSmartRepliesRequest::Representation
          command.request_object = google_cloud_dialogflow_v2beta1_suggest_smart_replies_request_object
          command.response_representation = Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1SuggestSmartRepliesResponse::Representation
          command.response_class = Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1SuggestSmartRepliesResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # 
        # @param [String] conversation
        # @param [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1GenerateSuggestionsRequest] google_cloud_dialogflow_v2beta1_generate_suggestions_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1GenerateSuggestionsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1GenerateSuggestionsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def generate_project_conversation_suggestion(conversation, google_cloud_dialogflow_v2beta1_generate_suggestions_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v2beta1/{+conversation}/suggestions:generate', options)
          command.request_representation = Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1GenerateSuggestionsRequest::Representation
          command.request_object = google_cloud_dialogflow_v2beta1_generate_suggestions_request_object
          command.response_representation = Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1GenerateSuggestionsResponse::Representation
          command.response_class = Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1GenerateSuggestionsResponse
          command.params['conversation'] = conversation unless conversation.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # 
        # @param [String] conversation
        # @param [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1SearchKnowledgeRequest] google_cloud_dialogflow_v2beta1_search_knowledge_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1SearchKnowledgeResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1SearchKnowledgeResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def search_project_conversation_suggestion_knowledge(conversation, google_cloud_dialogflow_v2beta1_search_knowledge_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v2beta1/{+conversation}/suggestions:searchKnowledge', options)
          command.request_representation = Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1SearchKnowledgeRequest::Representation
          command.request_object = google_cloud_dialogflow_v2beta1_search_knowledge_request_object
          command.response_representation = Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1SearchKnowledgeResponse::Representation
          command.response_class = Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1SearchKnowledgeResponse
          command.params['conversation'] = conversation unless conversation.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # 
        # @param [String] conversation
        # @param [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1SuggestConversationSummaryRequest] google_cloud_dialogflow_v2beta1_suggest_conversation_summary_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1SuggestConversationSummaryResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1SuggestConversationSummaryResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def suggest_project_conversation_suggestion_conversation_summary(conversation, google_cloud_dialogflow_v2beta1_suggest_conversation_summary_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v2beta1/{+conversation}/suggestions:suggestConversationSummary', options)
          command.request_representation = Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1SuggestConversationSummaryRequest::Representation
          command.request_object = google_cloud_dialogflow_v2beta1_suggest_conversation_summary_request_object
          command.response_representation = Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1SuggestConversationSummaryResponse::Representation
          command.response_class = Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1SuggestConversationSummaryResponse
          command.params['conversation'] = conversation unless conversation.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # 
        # @param [String] parent
        # @param [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1Generator] google_cloud_dialogflow_v2beta1_generator_object
        # @param [String] generator_id
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1Generator] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1Generator]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_generator(parent, google_cloud_dialogflow_v2beta1_generator_object = nil, generator_id: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v2beta1/{+parent}/generators', options)
          command.request_representation = Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1Generator::Representation
          command.request_object = google_cloud_dialogflow_v2beta1_generator_object
          command.response_representation = Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1Generator::Representation
          command.response_class = Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1Generator
          command.params['parent'] = parent unless parent.nil?
          command.query['generatorId'] = generator_id unless generator_id.nil?
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
        # @yieldparam result [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1ListGeneratorsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1ListGeneratorsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_generators(parent, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2beta1/{+parent}/generators', options)
          command.response_representation = Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1ListGeneratorsResponse::Representation
          command.response_class = Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1ListGeneratorsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # 
        # @param [String] parent
        # @param [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1KnowledgeBase] google_cloud_dialogflow_v2beta1_knowledge_base_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1KnowledgeBase] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1KnowledgeBase]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_knowledge_basis(parent, google_cloud_dialogflow_v2beta1_knowledge_base_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v2beta1/{+parent}/knowledgeBases', options)
          command.request_representation = Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1KnowledgeBase::Representation
          command.request_object = google_cloud_dialogflow_v2beta1_knowledge_base_object
          command.response_representation = Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1KnowledgeBase::Representation
          command.response_class = Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1KnowledgeBase
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
        # @yieldparam result [Google::Apis::DialogflowV2beta1::GoogleProtobufEmpty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV2beta1::GoogleProtobufEmpty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_knowledge_basis(name, force: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v2beta1/{+name}', options)
          command.response_representation = Google::Apis::DialogflowV2beta1::GoogleProtobufEmpty::Representation
          command.response_class = Google::Apis::DialogflowV2beta1::GoogleProtobufEmpty
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
        # @yieldparam result [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1KnowledgeBase] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1KnowledgeBase]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_knowledge_basis(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2beta1/{+name}', options)
          command.response_representation = Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1KnowledgeBase::Representation
          command.response_class = Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1KnowledgeBase
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
        # @yieldparam result [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1ListKnowledgeBasesResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1ListKnowledgeBasesResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_knowledge_bases(parent, filter: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2beta1/{+parent}/knowledgeBases', options)
          command.response_representation = Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1ListKnowledgeBasesResponse::Representation
          command.response_class = Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1ListKnowledgeBasesResponse
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
        # @param [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1KnowledgeBase] google_cloud_dialogflow_v2beta1_knowledge_base_object
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
        # @yieldparam result [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1KnowledgeBase] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1KnowledgeBase]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_project_knowledge_basis(name, google_cloud_dialogflow_v2beta1_knowledge_base_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v2beta1/{+name}', options)
          command.request_representation = Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1KnowledgeBase::Representation
          command.request_object = google_cloud_dialogflow_v2beta1_knowledge_base_object
          command.response_representation = Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1KnowledgeBase::Representation
          command.response_class = Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1KnowledgeBase
          command.params['name'] = name unless name.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # 
        # @param [String] parent
        # @param [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1Document] google_cloud_dialogflow_v2beta1_document_object
        # @param [Boolean] import_gcs_custom_metadata
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV2beta1::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV2beta1::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_knowledge_basis_document(parent, google_cloud_dialogflow_v2beta1_document_object = nil, import_gcs_custom_metadata: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v2beta1/{+parent}/documents', options)
          command.request_representation = Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1Document::Representation
          command.request_object = google_cloud_dialogflow_v2beta1_document_object
          command.response_representation = Google::Apis::DialogflowV2beta1::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::DialogflowV2beta1::GoogleLongrunningOperation
          command.params['parent'] = parent unless parent.nil?
          command.query['importGcsCustomMetadata'] = import_gcs_custom_metadata unless import_gcs_custom_metadata.nil?
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
        # @yieldparam result [Google::Apis::DialogflowV2beta1::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV2beta1::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_knowledge_basis_document(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v2beta1/{+name}', options)
          command.response_representation = Google::Apis::DialogflowV2beta1::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::DialogflowV2beta1::GoogleLongrunningOperation
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
        # @yieldparam result [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1Document] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1Document]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_knowledge_basis_document(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2beta1/{+name}', options)
          command.response_representation = Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1Document::Representation
          command.response_class = Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1Document
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # 
        # @param [String] parent
        # @param [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1ImportDocumentsRequest] google_cloud_dialogflow_v2beta1_import_documents_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV2beta1::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV2beta1::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def import_project_knowledge_basis_document(parent, google_cloud_dialogflow_v2beta1_import_documents_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v2beta1/{+parent}/documents:import', options)
          command.request_representation = Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1ImportDocumentsRequest::Representation
          command.request_object = google_cloud_dialogflow_v2beta1_import_documents_request_object
          command.response_representation = Google::Apis::DialogflowV2beta1::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::DialogflowV2beta1::GoogleLongrunningOperation
          command.params['parent'] = parent unless parent.nil?
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
        # @yieldparam result [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1ListDocumentsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1ListDocumentsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_knowledge_basis_documents(parent, filter: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2beta1/{+parent}/documents', options)
          command.response_representation = Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1ListDocumentsResponse::Representation
          command.response_class = Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1ListDocumentsResponse
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
        # @param [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1Document] google_cloud_dialogflow_v2beta1_document_object
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
        # @yieldparam result [Google::Apis::DialogflowV2beta1::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV2beta1::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_project_knowledge_basis_document(name, google_cloud_dialogflow_v2beta1_document_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v2beta1/{+name}', options)
          command.request_representation = Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1Document::Representation
          command.request_object = google_cloud_dialogflow_v2beta1_document_object
          command.response_representation = Google::Apis::DialogflowV2beta1::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::DialogflowV2beta1::GoogleLongrunningOperation
          command.params['name'] = name unless name.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # 
        # @param [String] name
        # @param [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1ReloadDocumentRequest] google_cloud_dialogflow_v2beta1_reload_document_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV2beta1::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV2beta1::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def reload_project_knowledge_basis_document(name, google_cloud_dialogflow_v2beta1_reload_document_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v2beta1/{+name}:reload', options)
          command.request_representation = Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1ReloadDocumentRequest::Representation
          command.request_object = google_cloud_dialogflow_v2beta1_reload_document_request_object
          command.response_representation = Google::Apis::DialogflowV2beta1::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::DialogflowV2beta1::GoogleLongrunningOperation
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # 
        # @param [String] parent
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV2beta1::GoogleProtobufEmpty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV2beta1::GoogleProtobufEmpty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_location_agent(parent, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v2beta1/{+parent}/agent', options)
          command.response_representation = Google::Apis::DialogflowV2beta1::GoogleProtobufEmpty::Representation
          command.response_class = Google::Apis::DialogflowV2beta1::GoogleProtobufEmpty
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
        # @yieldparam result [Google::Apis::DialogflowV2beta1::GoogleCloudLocationLocation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV2beta1::GoogleCloudLocationLocation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2beta1/{+name}', options)
          command.response_representation = Google::Apis::DialogflowV2beta1::GoogleCloudLocationLocation::Representation
          command.response_class = Google::Apis::DialogflowV2beta1::GoogleCloudLocationLocation
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # 
        # @param [String] parent
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1Agent] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1Agent]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_agent(parent, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2beta1/{+parent}/agent', options)
          command.response_representation = Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1Agent::Representation
          command.response_class = Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1Agent
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
        # @yieldparam result [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1EncryptionSpec] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1EncryptionSpec]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_encryption_spec(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2beta1/{+name}', options)
          command.response_representation = Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1EncryptionSpec::Representation
          command.response_class = Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1EncryptionSpec
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
        # @yieldparam result [Google::Apis::DialogflowV2beta1::GoogleCloudLocationListLocationsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV2beta1::GoogleCloudLocationListLocationsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_locations(name, extra_location_types: nil, filter: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2beta1/{+name}/locations', options)
          command.response_representation = Google::Apis::DialogflowV2beta1::GoogleCloudLocationListLocationsResponse::Representation
          command.response_class = Google::Apis::DialogflowV2beta1::GoogleCloudLocationListLocationsResponse
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
        # @param [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1Agent] google_cloud_dialogflow_v2beta1_agent_object
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
        # @yieldparam result [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1Agent] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1Agent]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def set_project_location_agent(parent, google_cloud_dialogflow_v2beta1_agent_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v2beta1/{+parent}/agent', options)
          command.request_representation = Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1Agent::Representation
          command.request_object = google_cloud_dialogflow_v2beta1_agent_object
          command.response_representation = Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1Agent::Representation
          command.response_class = Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1Agent
          command.params['parent'] = parent unless parent.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # 
        # @param [String] parent
        # @param [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1ExportAgentRequest] google_cloud_dialogflow_v2beta1_export_agent_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV2beta1::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV2beta1::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def export_project_location_agent(parent, google_cloud_dialogflow_v2beta1_export_agent_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v2beta1/{+parent}/agent:export', options)
          command.request_representation = Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1ExportAgentRequest::Representation
          command.request_object = google_cloud_dialogflow_v2beta1_export_agent_request_object
          command.response_representation = Google::Apis::DialogflowV2beta1::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::DialogflowV2beta1::GoogleLongrunningOperation
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
        # @yieldparam result [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1Fulfillment] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1Fulfillment]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_agent_fulfillment(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2beta1/{+name}', options)
          command.response_representation = Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1Fulfillment::Representation
          command.response_class = Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1Fulfillment
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # 
        # @param [String] parent
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
        # @yieldparam result [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1ValidationResult] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1ValidationResult]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_agent_validation_result(parent, language_code: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2beta1/{+parent}/agent/validationResult', options)
          command.response_representation = Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1ValidationResult::Representation
          command.response_class = Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1ValidationResult
          command.params['parent'] = parent unless parent.nil?
          command.query['languageCode'] = language_code unless language_code.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # 
        # @param [String] parent
        # @param [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1ImportAgentRequest] google_cloud_dialogflow_v2beta1_import_agent_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV2beta1::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV2beta1::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def import_project_location_agent(parent, google_cloud_dialogflow_v2beta1_import_agent_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v2beta1/{+parent}/agent:import', options)
          command.request_representation = Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1ImportAgentRequest::Representation
          command.request_object = google_cloud_dialogflow_v2beta1_import_agent_request_object
          command.response_representation = Google::Apis::DialogflowV2beta1::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::DialogflowV2beta1::GoogleLongrunningOperation
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # 
        # @param [String] parent
        # @param [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1RestoreAgentRequest] google_cloud_dialogflow_v2beta1_restore_agent_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV2beta1::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV2beta1::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def restore_project_location_agent(parent, google_cloud_dialogflow_v2beta1_restore_agent_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v2beta1/{+parent}/agent:restore', options)
          command.request_representation = Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1RestoreAgentRequest::Representation
          command.request_object = google_cloud_dialogflow_v2beta1_restore_agent_request_object
          command.response_representation = Google::Apis::DialogflowV2beta1::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::DialogflowV2beta1::GoogleLongrunningOperation
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
        # @yieldparam result [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1SearchAgentsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1SearchAgentsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def search_project_location_agents(parent, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2beta1/{+parent}/agent:search', options)
          command.response_representation = Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1SearchAgentsResponse::Representation
          command.response_class = Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1SearchAgentsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # 
        # @param [String] parent
        # @param [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1TrainAgentRequest] google_cloud_dialogflow_v2beta1_train_agent_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV2beta1::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV2beta1::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def train_project_location_agent(parent, google_cloud_dialogflow_v2beta1_train_agent_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v2beta1/{+parent}/agent:train', options)
          command.request_representation = Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1TrainAgentRequest::Representation
          command.request_object = google_cloud_dialogflow_v2beta1_train_agent_request_object
          command.response_representation = Google::Apis::DialogflowV2beta1::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::DialogflowV2beta1::GoogleLongrunningOperation
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # 
        # @param [String] name
        # @param [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1Fulfillment] google_cloud_dialogflow_v2beta1_fulfillment_object
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
        # @yieldparam result [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1Fulfillment] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1Fulfillment]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def update_project_location_agent_fulfillment(name, google_cloud_dialogflow_v2beta1_fulfillment_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v2beta1/{+name}', options)
          command.request_representation = Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1Fulfillment::Representation
          command.request_object = google_cloud_dialogflow_v2beta1_fulfillment_object
          command.response_representation = Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1Fulfillment::Representation
          command.response_class = Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1Fulfillment
          command.params['name'] = name unless name.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # 
        # @param [String] parent
        # @param [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1BatchDeleteEntityTypesRequest] google_cloud_dialogflow_v2beta1_batch_delete_entity_types_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV2beta1::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV2beta1::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def batch_project_location_agent_entity_type_delete(parent, google_cloud_dialogflow_v2beta1_batch_delete_entity_types_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v2beta1/{+parent}/entityTypes:batchDelete', options)
          command.request_representation = Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1BatchDeleteEntityTypesRequest::Representation
          command.request_object = google_cloud_dialogflow_v2beta1_batch_delete_entity_types_request_object
          command.response_representation = Google::Apis::DialogflowV2beta1::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::DialogflowV2beta1::GoogleLongrunningOperation
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # 
        # @param [String] parent
        # @param [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1BatchUpdateEntityTypesRequest] google_cloud_dialogflow_v2beta1_batch_update_entity_types_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV2beta1::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV2beta1::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def batch_project_location_agent_entity_type_update(parent, google_cloud_dialogflow_v2beta1_batch_update_entity_types_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v2beta1/{+parent}/entityTypes:batchUpdate', options)
          command.request_representation = Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1BatchUpdateEntityTypesRequest::Representation
          command.request_object = google_cloud_dialogflow_v2beta1_batch_update_entity_types_request_object
          command.response_representation = Google::Apis::DialogflowV2beta1::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::DialogflowV2beta1::GoogleLongrunningOperation
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # 
        # @param [String] parent
        # @param [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1EntityType] google_cloud_dialogflow_v2beta1_entity_type_object
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
        # @yieldparam result [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1EntityType] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1EntityType]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_location_agent_entity_type(parent, google_cloud_dialogflow_v2beta1_entity_type_object = nil, language_code: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v2beta1/{+parent}/entityTypes', options)
          command.request_representation = Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1EntityType::Representation
          command.request_object = google_cloud_dialogflow_v2beta1_entity_type_object
          command.response_representation = Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1EntityType::Representation
          command.response_class = Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1EntityType
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
        # @yieldparam result [Google::Apis::DialogflowV2beta1::GoogleProtobufEmpty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV2beta1::GoogleProtobufEmpty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_location_agent_entity_type(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v2beta1/{+name}', options)
          command.response_representation = Google::Apis::DialogflowV2beta1::GoogleProtobufEmpty::Representation
          command.response_class = Google::Apis::DialogflowV2beta1::GoogleProtobufEmpty
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
        # @yieldparam result [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1EntityType] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1EntityType]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_agent_entity_type(name, language_code: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2beta1/{+name}', options)
          command.response_representation = Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1EntityType::Representation
          command.response_class = Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1EntityType
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
        # @yieldparam result [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1ListEntityTypesResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1ListEntityTypesResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_agent_entity_types(parent, language_code: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2beta1/{+parent}/entityTypes', options)
          command.response_representation = Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1ListEntityTypesResponse::Representation
          command.response_class = Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1ListEntityTypesResponse
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
        # @param [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1EntityType] google_cloud_dialogflow_v2beta1_entity_type_object
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
        # @yieldparam result [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1EntityType] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1EntityType]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_project_location_agent_entity_type(name, google_cloud_dialogflow_v2beta1_entity_type_object = nil, language_code: nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v2beta1/{+name}', options)
          command.request_representation = Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1EntityType::Representation
          command.request_object = google_cloud_dialogflow_v2beta1_entity_type_object
          command.response_representation = Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1EntityType::Representation
          command.response_class = Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1EntityType
          command.params['name'] = name unless name.nil?
          command.query['languageCode'] = language_code unless language_code.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # 
        # @param [String] parent
        # @param [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1BatchCreateEntitiesRequest] google_cloud_dialogflow_v2beta1_batch_create_entities_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV2beta1::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV2beta1::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def batch_project_location_agent_entity_type_entity_create(parent, google_cloud_dialogflow_v2beta1_batch_create_entities_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v2beta1/{+parent}/entities:batchCreate', options)
          command.request_representation = Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1BatchCreateEntitiesRequest::Representation
          command.request_object = google_cloud_dialogflow_v2beta1_batch_create_entities_request_object
          command.response_representation = Google::Apis::DialogflowV2beta1::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::DialogflowV2beta1::GoogleLongrunningOperation
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # 
        # @param [String] parent
        # @param [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1BatchDeleteEntitiesRequest] google_cloud_dialogflow_v2beta1_batch_delete_entities_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV2beta1::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV2beta1::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def batch_project_location_agent_entity_type_entity_delete(parent, google_cloud_dialogflow_v2beta1_batch_delete_entities_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v2beta1/{+parent}/entities:batchDelete', options)
          command.request_representation = Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1BatchDeleteEntitiesRequest::Representation
          command.request_object = google_cloud_dialogflow_v2beta1_batch_delete_entities_request_object
          command.response_representation = Google::Apis::DialogflowV2beta1::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::DialogflowV2beta1::GoogleLongrunningOperation
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # 
        # @param [String] parent
        # @param [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1BatchUpdateEntitiesRequest] google_cloud_dialogflow_v2beta1_batch_update_entities_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV2beta1::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV2beta1::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def batch_project_location_agent_entity_type_entity_update(parent, google_cloud_dialogflow_v2beta1_batch_update_entities_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v2beta1/{+parent}/entities:batchUpdate', options)
          command.request_representation = Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1BatchUpdateEntitiesRequest::Representation
          command.request_object = google_cloud_dialogflow_v2beta1_batch_update_entities_request_object
          command.response_representation = Google::Apis::DialogflowV2beta1::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::DialogflowV2beta1::GoogleLongrunningOperation
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # 
        # @param [String] parent
        # @param [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1Environment] google_cloud_dialogflow_v2beta1_environment_object
        # @param [String] environment_id
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1Environment] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1Environment]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_location_agent_environment(parent, google_cloud_dialogflow_v2beta1_environment_object = nil, environment_id: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v2beta1/{+parent}/environments', options)
          command.request_representation = Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1Environment::Representation
          command.request_object = google_cloud_dialogflow_v2beta1_environment_object
          command.response_representation = Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1Environment::Representation
          command.response_class = Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1Environment
          command.params['parent'] = parent unless parent.nil?
          command.query['environmentId'] = environment_id unless environment_id.nil?
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
        # @yieldparam result [Google::Apis::DialogflowV2beta1::GoogleProtobufEmpty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV2beta1::GoogleProtobufEmpty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_location_agent_environment(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v2beta1/{+name}', options)
          command.response_representation = Google::Apis::DialogflowV2beta1::GoogleProtobufEmpty::Representation
          command.response_class = Google::Apis::DialogflowV2beta1::GoogleProtobufEmpty
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
        # @yieldparam result [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1Environment] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1Environment]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_agent_environment(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2beta1/{+name}', options)
          command.response_representation = Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1Environment::Representation
          command.response_class = Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1Environment
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
        # @yieldparam result [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1EnvironmentHistory] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1EnvironmentHistory]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_agent_environment_history(parent, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2beta1/{+parent}/history', options)
          command.response_representation = Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1EnvironmentHistory::Representation
          command.response_class = Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1EnvironmentHistory
          command.params['parent'] = parent unless parent.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
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
        # @yieldparam result [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1ListEnvironmentsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1ListEnvironmentsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_agent_environments(parent, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2beta1/{+parent}/environments', options)
          command.response_representation = Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1ListEnvironmentsResponse::Representation
          command.response_class = Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1ListEnvironmentsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # 
        # @param [String] name
        # @param [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1Environment] google_cloud_dialogflow_v2beta1_environment_object
        # @param [Boolean] allow_load_to_draft_and_discard_changes
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
        # @yieldparam result [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1Environment] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1Environment]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_project_location_agent_environment(name, google_cloud_dialogflow_v2beta1_environment_object = nil, allow_load_to_draft_and_discard_changes: nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v2beta1/{+name}', options)
          command.request_representation = Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1Environment::Representation
          command.request_object = google_cloud_dialogflow_v2beta1_environment_object
          command.response_representation = Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1Environment::Representation
          command.response_class = Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1Environment
          command.params['name'] = name unless name.nil?
          command.query['allowLoadToDraftAndDiscardChanges'] = allow_load_to_draft_and_discard_changes unless allow_load_to_draft_and_discard_changes.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
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
        # @yieldparam result [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1ListIntentsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1ListIntentsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_agent_environment_intents(parent, intent_view: nil, language_code: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2beta1/{+parent}/intents', options)
          command.response_representation = Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1ListIntentsResponse::Representation
          command.response_class = Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1ListIntentsResponse
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
        # @param [String] parent
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV2beta1::GoogleProtobufEmpty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV2beta1::GoogleProtobufEmpty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_location_agent_environment_user_session_contexts(parent, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v2beta1/{+parent}/contexts', options)
          command.response_representation = Google::Apis::DialogflowV2beta1::GoogleProtobufEmpty::Representation
          command.response_class = Google::Apis::DialogflowV2beta1::GoogleProtobufEmpty
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # 
        # @param [String] session
        # @param [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1DetectIntentRequest] google_cloud_dialogflow_v2beta1_detect_intent_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1DetectIntentResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1DetectIntentResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def detect_project_location_agent_environment_user_session_intent(session, google_cloud_dialogflow_v2beta1_detect_intent_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v2beta1/{+session}:detectIntent', options)
          command.request_representation = Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1DetectIntentRequest::Representation
          command.request_object = google_cloud_dialogflow_v2beta1_detect_intent_request_object
          command.response_representation = Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1DetectIntentResponse::Representation
          command.response_class = Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1DetectIntentResponse
          command.params['session'] = session unless session.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # 
        # @param [String] parent
        # @param [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1Context] google_cloud_dialogflow_v2beta1_context_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1Context] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1Context]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_location_agent_environment_user_session_context(parent, google_cloud_dialogflow_v2beta1_context_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v2beta1/{+parent}/contexts', options)
          command.request_representation = Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1Context::Representation
          command.request_object = google_cloud_dialogflow_v2beta1_context_object
          command.response_representation = Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1Context::Representation
          command.response_class = Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1Context
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
        # @yieldparam result [Google::Apis::DialogflowV2beta1::GoogleProtobufEmpty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV2beta1::GoogleProtobufEmpty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_location_agent_environment_user_session_context(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v2beta1/{+name}', options)
          command.response_representation = Google::Apis::DialogflowV2beta1::GoogleProtobufEmpty::Representation
          command.response_class = Google::Apis::DialogflowV2beta1::GoogleProtobufEmpty
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
        # @yieldparam result [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1Context] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1Context]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_agent_environment_user_session_context(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2beta1/{+name}', options)
          command.response_representation = Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1Context::Representation
          command.response_class = Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1Context
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
        # @yieldparam result [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1ListContextsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1ListContextsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_agent_environment_user_session_contexts(parent, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2beta1/{+parent}/contexts', options)
          command.response_representation = Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1ListContextsResponse::Representation
          command.response_class = Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1ListContextsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # 
        # @param [String] name
        # @param [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1Context] google_cloud_dialogflow_v2beta1_context_object
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
        # @yieldparam result [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1Context] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1Context]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_project_location_agent_environment_user_session_context(name, google_cloud_dialogflow_v2beta1_context_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v2beta1/{+name}', options)
          command.request_representation = Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1Context::Representation
          command.request_object = google_cloud_dialogflow_v2beta1_context_object
          command.response_representation = Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1Context::Representation
          command.response_class = Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1Context
          command.params['name'] = name unless name.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # 
        # @param [String] parent
        # @param [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1SessionEntityType] google_cloud_dialogflow_v2beta1_session_entity_type_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1SessionEntityType] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1SessionEntityType]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_location_agent_environment_user_session_entity_type(parent, google_cloud_dialogflow_v2beta1_session_entity_type_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v2beta1/{+parent}/entityTypes', options)
          command.request_representation = Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1SessionEntityType::Representation
          command.request_object = google_cloud_dialogflow_v2beta1_session_entity_type_object
          command.response_representation = Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1SessionEntityType::Representation
          command.response_class = Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1SessionEntityType
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
        # @yieldparam result [Google::Apis::DialogflowV2beta1::GoogleProtobufEmpty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV2beta1::GoogleProtobufEmpty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_location_agent_environment_user_session_entity_type(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v2beta1/{+name}', options)
          command.response_representation = Google::Apis::DialogflowV2beta1::GoogleProtobufEmpty::Representation
          command.response_class = Google::Apis::DialogflowV2beta1::GoogleProtobufEmpty
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
        # @yieldparam result [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1SessionEntityType] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1SessionEntityType]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_agent_environment_user_session_entity_type(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2beta1/{+name}', options)
          command.response_representation = Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1SessionEntityType::Representation
          command.response_class = Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1SessionEntityType
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
        # @yieldparam result [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1ListSessionEntityTypesResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1ListSessionEntityTypesResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_agent_environment_user_session_entity_types(parent, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2beta1/{+parent}/entityTypes', options)
          command.response_representation = Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1ListSessionEntityTypesResponse::Representation
          command.response_class = Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1ListSessionEntityTypesResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # 
        # @param [String] name
        # @param [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1SessionEntityType] google_cloud_dialogflow_v2beta1_session_entity_type_object
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
        # @yieldparam result [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1SessionEntityType] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1SessionEntityType]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_project_location_agent_environment_user_session_entity_type(name, google_cloud_dialogflow_v2beta1_session_entity_type_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v2beta1/{+name}', options)
          command.request_representation = Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1SessionEntityType::Representation
          command.request_object = google_cloud_dialogflow_v2beta1_session_entity_type_object
          command.response_representation = Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1SessionEntityType::Representation
          command.response_class = Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1SessionEntityType
          command.params['name'] = name unless name.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # 
        # @param [String] parent
        # @param [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1BatchDeleteIntentsRequest] google_cloud_dialogflow_v2beta1_batch_delete_intents_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV2beta1::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV2beta1::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def batch_project_location_agent_intent_delete(parent, google_cloud_dialogflow_v2beta1_batch_delete_intents_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v2beta1/{+parent}/intents:batchDelete', options)
          command.request_representation = Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1BatchDeleteIntentsRequest::Representation
          command.request_object = google_cloud_dialogflow_v2beta1_batch_delete_intents_request_object
          command.response_representation = Google::Apis::DialogflowV2beta1::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::DialogflowV2beta1::GoogleLongrunningOperation
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # 
        # @param [String] parent
        # @param [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1BatchUpdateIntentsRequest] google_cloud_dialogflow_v2beta1_batch_update_intents_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV2beta1::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV2beta1::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def batch_project_location_agent_intent_update(parent, google_cloud_dialogflow_v2beta1_batch_update_intents_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v2beta1/{+parent}/intents:batchUpdate', options)
          command.request_representation = Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1BatchUpdateIntentsRequest::Representation
          command.request_object = google_cloud_dialogflow_v2beta1_batch_update_intents_request_object
          command.response_representation = Google::Apis::DialogflowV2beta1::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::DialogflowV2beta1::GoogleLongrunningOperation
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # 
        # @param [String] parent
        # @param [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1Intent] google_cloud_dialogflow_v2beta1_intent_object
        # @param [String] intent_view
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
        # @yieldparam result [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1Intent] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1Intent]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_location_agent_intent(parent, google_cloud_dialogflow_v2beta1_intent_object = nil, intent_view: nil, language_code: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v2beta1/{+parent}/intents', options)
          command.request_representation = Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1Intent::Representation
          command.request_object = google_cloud_dialogflow_v2beta1_intent_object
          command.response_representation = Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1Intent::Representation
          command.response_class = Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1Intent
          command.params['parent'] = parent unless parent.nil?
          command.query['intentView'] = intent_view unless intent_view.nil?
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
        # @yieldparam result [Google::Apis::DialogflowV2beta1::GoogleProtobufEmpty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV2beta1::GoogleProtobufEmpty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_location_agent_intent(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v2beta1/{+name}', options)
          command.response_representation = Google::Apis::DialogflowV2beta1::GoogleProtobufEmpty::Representation
          command.response_class = Google::Apis::DialogflowV2beta1::GoogleProtobufEmpty
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # 
        # @param [String] name
        # @param [String] intent_view
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
        # @yieldparam result [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1Intent] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1Intent]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_agent_intent(name, intent_view: nil, language_code: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2beta1/{+name}', options)
          command.response_representation = Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1Intent::Representation
          command.response_class = Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1Intent
          command.params['name'] = name unless name.nil?
          command.query['intentView'] = intent_view unless intent_view.nil?
          command.query['languageCode'] = language_code unless language_code.nil?
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
        # @yieldparam result [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1ListIntentsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1ListIntentsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_agent_intents(parent, intent_view: nil, language_code: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2beta1/{+parent}/intents', options)
          command.response_representation = Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1ListIntentsResponse::Representation
          command.response_class = Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1ListIntentsResponse
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
        # @param [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1Intent] google_cloud_dialogflow_v2beta1_intent_object
        # @param [String] intent_view
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
        # @yieldparam result [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1Intent] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1Intent]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_project_location_agent_intent(name, google_cloud_dialogflow_v2beta1_intent_object = nil, intent_view: nil, language_code: nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v2beta1/{+name}', options)
          command.request_representation = Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1Intent::Representation
          command.request_object = google_cloud_dialogflow_v2beta1_intent_object
          command.response_representation = Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1Intent::Representation
          command.response_class = Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1Intent
          command.params['name'] = name unless name.nil?
          command.query['intentView'] = intent_view unless intent_view.nil?
          command.query['languageCode'] = language_code unless language_code.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # 
        # @param [String] parent
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV2beta1::GoogleProtobufEmpty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV2beta1::GoogleProtobufEmpty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_location_agent_session_contexts(parent, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v2beta1/{+parent}/contexts', options)
          command.response_representation = Google::Apis::DialogflowV2beta1::GoogleProtobufEmpty::Representation
          command.response_class = Google::Apis::DialogflowV2beta1::GoogleProtobufEmpty
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # 
        # @param [String] session
        # @param [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1DetectIntentRequest] google_cloud_dialogflow_v2beta1_detect_intent_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1DetectIntentResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1DetectIntentResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def detect_project_location_agent_session_intent(session, google_cloud_dialogflow_v2beta1_detect_intent_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v2beta1/{+session}:detectIntent', options)
          command.request_representation = Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1DetectIntentRequest::Representation
          command.request_object = google_cloud_dialogflow_v2beta1_detect_intent_request_object
          command.response_representation = Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1DetectIntentResponse::Representation
          command.response_class = Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1DetectIntentResponse
          command.params['session'] = session unless session.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # 
        # @param [String] parent
        # @param [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1Context] google_cloud_dialogflow_v2beta1_context_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1Context] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1Context]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_location_agent_session_context(parent, google_cloud_dialogflow_v2beta1_context_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v2beta1/{+parent}/contexts', options)
          command.request_representation = Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1Context::Representation
          command.request_object = google_cloud_dialogflow_v2beta1_context_object
          command.response_representation = Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1Context::Representation
          command.response_class = Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1Context
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
        # @yieldparam result [Google::Apis::DialogflowV2beta1::GoogleProtobufEmpty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV2beta1::GoogleProtobufEmpty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_location_agent_session_context(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v2beta1/{+name}', options)
          command.response_representation = Google::Apis::DialogflowV2beta1::GoogleProtobufEmpty::Representation
          command.response_class = Google::Apis::DialogflowV2beta1::GoogleProtobufEmpty
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
        # @yieldparam result [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1Context] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1Context]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_agent_session_context(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2beta1/{+name}', options)
          command.response_representation = Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1Context::Representation
          command.response_class = Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1Context
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
        # @yieldparam result [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1ListContextsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1ListContextsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_agent_session_contexts(parent, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2beta1/{+parent}/contexts', options)
          command.response_representation = Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1ListContextsResponse::Representation
          command.response_class = Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1ListContextsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # 
        # @param [String] name
        # @param [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1Context] google_cloud_dialogflow_v2beta1_context_object
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
        # @yieldparam result [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1Context] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1Context]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_project_location_agent_session_context(name, google_cloud_dialogflow_v2beta1_context_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v2beta1/{+name}', options)
          command.request_representation = Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1Context::Representation
          command.request_object = google_cloud_dialogflow_v2beta1_context_object
          command.response_representation = Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1Context::Representation
          command.response_class = Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1Context
          command.params['name'] = name unless name.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # 
        # @param [String] parent
        # @param [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1SessionEntityType] google_cloud_dialogflow_v2beta1_session_entity_type_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1SessionEntityType] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1SessionEntityType]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_location_agent_session_entity_type(parent, google_cloud_dialogflow_v2beta1_session_entity_type_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v2beta1/{+parent}/entityTypes', options)
          command.request_representation = Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1SessionEntityType::Representation
          command.request_object = google_cloud_dialogflow_v2beta1_session_entity_type_object
          command.response_representation = Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1SessionEntityType::Representation
          command.response_class = Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1SessionEntityType
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
        # @yieldparam result [Google::Apis::DialogflowV2beta1::GoogleProtobufEmpty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV2beta1::GoogleProtobufEmpty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_location_agent_session_entity_type(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v2beta1/{+name}', options)
          command.response_representation = Google::Apis::DialogflowV2beta1::GoogleProtobufEmpty::Representation
          command.response_class = Google::Apis::DialogflowV2beta1::GoogleProtobufEmpty
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
        # @yieldparam result [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1SessionEntityType] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1SessionEntityType]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_agent_session_entity_type(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2beta1/{+name}', options)
          command.response_representation = Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1SessionEntityType::Representation
          command.response_class = Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1SessionEntityType
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
        # @yieldparam result [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1ListSessionEntityTypesResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1ListSessionEntityTypesResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_agent_session_entity_types(parent, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2beta1/{+parent}/entityTypes', options)
          command.response_representation = Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1ListSessionEntityTypesResponse::Representation
          command.response_class = Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1ListSessionEntityTypesResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # 
        # @param [String] name
        # @param [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1SessionEntityType] google_cloud_dialogflow_v2beta1_session_entity_type_object
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
        # @yieldparam result [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1SessionEntityType] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1SessionEntityType]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_project_location_agent_session_entity_type(name, google_cloud_dialogflow_v2beta1_session_entity_type_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v2beta1/{+name}', options)
          command.request_representation = Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1SessionEntityType::Representation
          command.request_object = google_cloud_dialogflow_v2beta1_session_entity_type_object
          command.response_representation = Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1SessionEntityType::Representation
          command.response_class = Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1SessionEntityType
          command.params['name'] = name unless name.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # 
        # @param [String] parent
        # @param [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1Version] google_cloud_dialogflow_v2beta1_version_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1Version] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1Version]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_location_agent_version(parent, google_cloud_dialogflow_v2beta1_version_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v2beta1/{+parent}/versions', options)
          command.request_representation = Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1Version::Representation
          command.request_object = google_cloud_dialogflow_v2beta1_version_object
          command.response_representation = Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1Version::Representation
          command.response_class = Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1Version
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
        # @yieldparam result [Google::Apis::DialogflowV2beta1::GoogleProtobufEmpty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV2beta1::GoogleProtobufEmpty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_location_agent_version(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v2beta1/{+name}', options)
          command.response_representation = Google::Apis::DialogflowV2beta1::GoogleProtobufEmpty::Representation
          command.response_class = Google::Apis::DialogflowV2beta1::GoogleProtobufEmpty
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
        # @yieldparam result [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1Version] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1Version]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_agent_version(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2beta1/{+name}', options)
          command.response_representation = Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1Version::Representation
          command.response_class = Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1Version
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
        # @yieldparam result [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1ListVersionsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1ListVersionsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_agent_versions(parent, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2beta1/{+parent}/versions', options)
          command.response_representation = Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1ListVersionsResponse::Representation
          command.response_class = Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1ListVersionsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # 
        # @param [String] name
        # @param [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1Version] google_cloud_dialogflow_v2beta1_version_object
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
        # @yieldparam result [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1Version] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1Version]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_project_location_agent_version(name, google_cloud_dialogflow_v2beta1_version_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v2beta1/{+name}', options)
          command.request_representation = Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1Version::Representation
          command.request_object = google_cloud_dialogflow_v2beta1_version_object
          command.response_representation = Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1Version::Representation
          command.response_class = Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1Version
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
        # @yieldparam result [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1AnswerRecord] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1AnswerRecord]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_answer_record(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2beta1/{+name}', options)
          command.response_representation = Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1AnswerRecord::Representation
          command.response_class = Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1AnswerRecord
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
        # @yieldparam result [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1ListAnswerRecordsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1ListAnswerRecordsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_answer_records(parent, filter: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2beta1/{+parent}/answerRecords', options)
          command.response_representation = Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1ListAnswerRecordsResponse::Representation
          command.response_class = Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1ListAnswerRecordsResponse
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
        # @param [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1AnswerRecord] google_cloud_dialogflow_v2beta1_answer_record_object
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
        # @yieldparam result [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1AnswerRecord] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1AnswerRecord]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_project_location_answer_record(name, google_cloud_dialogflow_v2beta1_answer_record_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v2beta1/{+name}', options)
          command.request_representation = Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1AnswerRecord::Representation
          command.request_object = google_cloud_dialogflow_v2beta1_answer_record_object
          command.response_representation = Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1AnswerRecord::Representation
          command.response_class = Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1AnswerRecord
          command.params['name'] = name unless name.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # 
        # @param [String] conversation_profile
        # @param [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1ClearSuggestionFeatureConfigRequest] google_cloud_dialogflow_v2beta1_clear_suggestion_feature_config_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV2beta1::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV2beta1::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def clear_project_location_conversation_profile_suggestion_feature_config(conversation_profile, google_cloud_dialogflow_v2beta1_clear_suggestion_feature_config_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v2beta1/{+conversationProfile}:clearSuggestionFeatureConfig', options)
          command.request_representation = Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1ClearSuggestionFeatureConfigRequest::Representation
          command.request_object = google_cloud_dialogflow_v2beta1_clear_suggestion_feature_config_request_object
          command.response_representation = Google::Apis::DialogflowV2beta1::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::DialogflowV2beta1::GoogleLongrunningOperation
          command.params['conversationProfile'] = conversation_profile unless conversation_profile.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # 
        # @param [String] parent
        # @param [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1ConversationProfile] google_cloud_dialogflow_v2beta1_conversation_profile_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1ConversationProfile] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1ConversationProfile]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_location_conversation_profile(parent, google_cloud_dialogflow_v2beta1_conversation_profile_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v2beta1/{+parent}/conversationProfiles', options)
          command.request_representation = Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1ConversationProfile::Representation
          command.request_object = google_cloud_dialogflow_v2beta1_conversation_profile_object
          command.response_representation = Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1ConversationProfile::Representation
          command.response_class = Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1ConversationProfile
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
        # @yieldparam result [Google::Apis::DialogflowV2beta1::GoogleProtobufEmpty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV2beta1::GoogleProtobufEmpty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_location_conversation_profile(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v2beta1/{+name}', options)
          command.response_representation = Google::Apis::DialogflowV2beta1::GoogleProtobufEmpty::Representation
          command.response_class = Google::Apis::DialogflowV2beta1::GoogleProtobufEmpty
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
        # @yieldparam result [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1ConversationProfile] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1ConversationProfile]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_conversation_profile(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2beta1/{+name}', options)
          command.response_representation = Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1ConversationProfile::Representation
          command.response_class = Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1ConversationProfile
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
        # @yieldparam result [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1ListConversationProfilesResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1ListConversationProfilesResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_conversation_profiles(parent, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2beta1/{+parent}/conversationProfiles', options)
          command.response_representation = Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1ListConversationProfilesResponse::Representation
          command.response_class = Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1ListConversationProfilesResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # 
        # @param [String] name
        # @param [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1ConversationProfile] google_cloud_dialogflow_v2beta1_conversation_profile_object
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
        # @yieldparam result [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1ConversationProfile] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1ConversationProfile]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_project_location_conversation_profile(name, google_cloud_dialogflow_v2beta1_conversation_profile_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v2beta1/{+name}', options)
          command.request_representation = Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1ConversationProfile::Representation
          command.request_object = google_cloud_dialogflow_v2beta1_conversation_profile_object
          command.response_representation = Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1ConversationProfile::Representation
          command.response_class = Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1ConversationProfile
          command.params['name'] = name unless name.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # 
        # @param [String] conversation_profile
        # @param [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1SetSuggestionFeatureConfigRequest] google_cloud_dialogflow_v2beta1_set_suggestion_feature_config_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV2beta1::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV2beta1::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def set_project_location_conversation_profile_suggestion_feature_config(conversation_profile, google_cloud_dialogflow_v2beta1_set_suggestion_feature_config_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v2beta1/{+conversationProfile}:setSuggestionFeatureConfig', options)
          command.request_representation = Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1SetSuggestionFeatureConfigRequest::Representation
          command.request_object = google_cloud_dialogflow_v2beta1_set_suggestion_feature_config_request_object
          command.response_representation = Google::Apis::DialogflowV2beta1::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::DialogflowV2beta1::GoogleLongrunningOperation
          command.params['conversationProfile'] = conversation_profile unless conversation_profile.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # 
        # @param [String] name
        # @param [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1CompleteConversationRequest] google_cloud_dialogflow_v2beta1_complete_conversation_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1Conversation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1Conversation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def complete_project_location_conversation(name, google_cloud_dialogflow_v2beta1_complete_conversation_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v2beta1/{+name}:complete', options)
          command.request_representation = Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1CompleteConversationRequest::Representation
          command.request_object = google_cloud_dialogflow_v2beta1_complete_conversation_request_object
          command.response_representation = Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1Conversation::Representation
          command.response_class = Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1Conversation
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # 
        # @param [String] parent
        # @param [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1Conversation] google_cloud_dialogflow_v2beta1_conversation_object
        # @param [String] conversation_id
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1Conversation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1Conversation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_location_conversation(parent, google_cloud_dialogflow_v2beta1_conversation_object = nil, conversation_id: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v2beta1/{+parent}/conversations', options)
          command.request_representation = Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1Conversation::Representation
          command.request_object = google_cloud_dialogflow_v2beta1_conversation_object
          command.response_representation = Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1Conversation::Representation
          command.response_class = Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1Conversation
          command.params['parent'] = parent unless parent.nil?
          command.query['conversationId'] = conversation_id unless conversation_id.nil?
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
        # @yieldparam result [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1Conversation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1Conversation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_conversation(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2beta1/{+name}', options)
          command.response_representation = Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1Conversation::Representation
          command.response_class = Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1Conversation
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # 
        # @param [String] conversation
        # @param [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1IngestContextReferencesRequest] google_cloud_dialogflow_v2beta1_ingest_context_references_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1IngestContextReferencesResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1IngestContextReferencesResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def ingest_project_location_conversation_context_references(conversation, google_cloud_dialogflow_v2beta1_ingest_context_references_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v2beta1/{+conversation}:ingestContextReferences', options)
          command.request_representation = Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1IngestContextReferencesRequest::Representation
          command.request_object = google_cloud_dialogflow_v2beta1_ingest_context_references_request_object
          command.response_representation = Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1IngestContextReferencesResponse::Representation
          command.response_class = Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1IngestContextReferencesResponse
          command.params['conversation'] = conversation unless conversation.nil?
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
        # @yieldparam result [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1ListConversationsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1ListConversationsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_conversations(parent, filter: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2beta1/{+parent}/conversations', options)
          command.response_representation = Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1ListConversationsResponse::Representation
          command.response_class = Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1ListConversationsResponse
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
        # @param [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1BatchCreateMessagesRequest] google_cloud_dialogflow_v2beta1_batch_create_messages_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1BatchCreateMessagesResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1BatchCreateMessagesResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def batch_project_location_conversation_message_create(parent, google_cloud_dialogflow_v2beta1_batch_create_messages_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v2beta1/{+parent}/messages:batchCreate', options)
          command.request_representation = Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1BatchCreateMessagesRequest::Representation
          command.request_object = google_cloud_dialogflow_v2beta1_batch_create_messages_request_object
          command.response_representation = Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1BatchCreateMessagesResponse::Representation
          command.response_class = Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1BatchCreateMessagesResponse
          command.params['parent'] = parent unless parent.nil?
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
        # @yieldparam result [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1ListMessagesResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1ListMessagesResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_conversation_messages(parent, filter: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2beta1/{+parent}/messages', options)
          command.response_representation = Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1ListMessagesResponse::Representation
          command.response_class = Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1ListMessagesResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # 
        # @param [String] participant
        # @param [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1AnalyzeContentRequest] google_cloud_dialogflow_v2beta1_analyze_content_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1AnalyzeContentResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1AnalyzeContentResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def analyze_project_location_conversation_participant_content(participant, google_cloud_dialogflow_v2beta1_analyze_content_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v2beta1/{+participant}:analyzeContent', options)
          command.request_representation = Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1AnalyzeContentRequest::Representation
          command.request_object = google_cloud_dialogflow_v2beta1_analyze_content_request_object
          command.response_representation = Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1AnalyzeContentResponse::Representation
          command.response_class = Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1AnalyzeContentResponse
          command.params['participant'] = participant unless participant.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # 
        # @param [String] parent
        # @param [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1Participant] google_cloud_dialogflow_v2beta1_participant_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1Participant] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1Participant]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_location_conversation_participant(parent, google_cloud_dialogflow_v2beta1_participant_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v2beta1/{+parent}/participants', options)
          command.request_representation = Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1Participant::Representation
          command.request_object = google_cloud_dialogflow_v2beta1_participant_object
          command.response_representation = Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1Participant::Representation
          command.response_class = Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1Participant
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
        # @yieldparam result [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1Participant] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1Participant]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_conversation_participant(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2beta1/{+name}', options)
          command.response_representation = Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1Participant::Representation
          command.response_class = Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1Participant
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
        # @yieldparam result [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1ListParticipantsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1ListParticipantsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_conversation_participants(parent, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2beta1/{+parent}/participants', options)
          command.response_representation = Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1ListParticipantsResponse::Representation
          command.response_class = Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1ListParticipantsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # 
        # @param [String] name
        # @param [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1Participant] google_cloud_dialogflow_v2beta1_participant_object
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
        # @yieldparam result [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1Participant] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1Participant]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_project_location_conversation_participant(name, google_cloud_dialogflow_v2beta1_participant_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v2beta1/{+name}', options)
          command.request_representation = Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1Participant::Representation
          command.request_object = google_cloud_dialogflow_v2beta1_participant_object
          command.response_representation = Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1Participant::Representation
          command.response_class = Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1Participant
          command.params['name'] = name unless name.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # 
        # @param [String] parent
        # @param [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1SuggestArticlesRequest] google_cloud_dialogflow_v2beta1_suggest_articles_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1SuggestArticlesResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1SuggestArticlesResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def suggest_project_location_conversation_participant_suggestion_articles(parent, google_cloud_dialogflow_v2beta1_suggest_articles_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v2beta1/{+parent}/suggestions:suggestArticles', options)
          command.request_representation = Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1SuggestArticlesRequest::Representation
          command.request_object = google_cloud_dialogflow_v2beta1_suggest_articles_request_object
          command.response_representation = Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1SuggestArticlesResponse::Representation
          command.response_class = Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1SuggestArticlesResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # 
        # @param [String] parent
        # @param [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1SuggestFaqAnswersRequest] google_cloud_dialogflow_v2beta1_suggest_faq_answers_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1SuggestFaqAnswersResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1SuggestFaqAnswersResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def suggest_project_location_conversation_participant_suggestion_faq_answers(parent, google_cloud_dialogflow_v2beta1_suggest_faq_answers_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v2beta1/{+parent}/suggestions:suggestFaqAnswers', options)
          command.request_representation = Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1SuggestFaqAnswersRequest::Representation
          command.request_object = google_cloud_dialogflow_v2beta1_suggest_faq_answers_request_object
          command.response_representation = Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1SuggestFaqAnswersResponse::Representation
          command.response_class = Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1SuggestFaqAnswersResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # 
        # @param [String] parent
        # @param [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1SuggestKnowledgeAssistRequest] google_cloud_dialogflow_v2beta1_suggest_knowledge_assist_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1SuggestKnowledgeAssistResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1SuggestKnowledgeAssistResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def suggest_project_location_conversation_participant_suggestion_knowledge_assist(parent, google_cloud_dialogflow_v2beta1_suggest_knowledge_assist_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v2beta1/{+parent}/suggestions:suggestKnowledgeAssist', options)
          command.request_representation = Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1SuggestKnowledgeAssistRequest::Representation
          command.request_object = google_cloud_dialogflow_v2beta1_suggest_knowledge_assist_request_object
          command.response_representation = Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1SuggestKnowledgeAssistResponse::Representation
          command.response_class = Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1SuggestKnowledgeAssistResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # 
        # @param [String] parent
        # @param [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1SuggestSmartRepliesRequest] google_cloud_dialogflow_v2beta1_suggest_smart_replies_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1SuggestSmartRepliesResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1SuggestSmartRepliesResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def suggest_project_location_conversation_participant_suggestion_smart_replies(parent, google_cloud_dialogflow_v2beta1_suggest_smart_replies_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v2beta1/{+parent}/suggestions:suggestSmartReplies', options)
          command.request_representation = Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1SuggestSmartRepliesRequest::Representation
          command.request_object = google_cloud_dialogflow_v2beta1_suggest_smart_replies_request_object
          command.response_representation = Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1SuggestSmartRepliesResponse::Representation
          command.response_class = Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1SuggestSmartRepliesResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # 
        # @param [String] conversation
        # @param [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1GenerateSuggestionsRequest] google_cloud_dialogflow_v2beta1_generate_suggestions_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1GenerateSuggestionsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1GenerateSuggestionsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def generate_project_location_conversation_suggestion(conversation, google_cloud_dialogflow_v2beta1_generate_suggestions_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v2beta1/{+conversation}/suggestions:generate', options)
          command.request_representation = Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1GenerateSuggestionsRequest::Representation
          command.request_object = google_cloud_dialogflow_v2beta1_generate_suggestions_request_object
          command.response_representation = Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1GenerateSuggestionsResponse::Representation
          command.response_class = Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1GenerateSuggestionsResponse
          command.params['conversation'] = conversation unless conversation.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # 
        # @param [String] conversation
        # @param [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1SearchKnowledgeRequest] google_cloud_dialogflow_v2beta1_search_knowledge_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1SearchKnowledgeResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1SearchKnowledgeResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def search_project_location_conversation_suggestion_knowledge(conversation, google_cloud_dialogflow_v2beta1_search_knowledge_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v2beta1/{+conversation}/suggestions:searchKnowledge', options)
          command.request_representation = Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1SearchKnowledgeRequest::Representation
          command.request_object = google_cloud_dialogflow_v2beta1_search_knowledge_request_object
          command.response_representation = Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1SearchKnowledgeResponse::Representation
          command.response_class = Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1SearchKnowledgeResponse
          command.params['conversation'] = conversation unless conversation.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # 
        # @param [String] conversation
        # @param [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1SuggestConversationSummaryRequest] google_cloud_dialogflow_v2beta1_suggest_conversation_summary_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1SuggestConversationSummaryResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1SuggestConversationSummaryResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def suggest_project_location_conversation_suggestion_conversation_summary(conversation, google_cloud_dialogflow_v2beta1_suggest_conversation_summary_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v2beta1/{+conversation}/suggestions:suggestConversationSummary', options)
          command.request_representation = Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1SuggestConversationSummaryRequest::Representation
          command.request_object = google_cloud_dialogflow_v2beta1_suggest_conversation_summary_request_object
          command.response_representation = Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1SuggestConversationSummaryResponse::Representation
          command.response_class = Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1SuggestConversationSummaryResponse
          command.params['conversation'] = conversation unless conversation.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # 
        # @param [String] name
        # @param [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1InitializeEncryptionSpecRequest] google_cloud_dialogflow_v2beta1_initialize_encryption_spec_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV2beta1::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV2beta1::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def initialize_project_location_encryption_spec(name, google_cloud_dialogflow_v2beta1_initialize_encryption_spec_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v2beta1/{+name}:initialize', options)
          command.request_representation = Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1InitializeEncryptionSpecRequest::Representation
          command.request_object = google_cloud_dialogflow_v2beta1_initialize_encryption_spec_request_object
          command.response_representation = Google::Apis::DialogflowV2beta1::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::DialogflowV2beta1::GoogleLongrunningOperation
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # 
        # @param [String] parent
        # @param [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1Generator] google_cloud_dialogflow_v2beta1_generator_object
        # @param [String] generator_id
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1Generator] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1Generator]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_location_generator(parent, google_cloud_dialogflow_v2beta1_generator_object = nil, generator_id: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v2beta1/{+parent}/generators', options)
          command.request_representation = Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1Generator::Representation
          command.request_object = google_cloud_dialogflow_v2beta1_generator_object
          command.response_representation = Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1Generator::Representation
          command.response_class = Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1Generator
          command.params['parent'] = parent unless parent.nil?
          command.query['generatorId'] = generator_id unless generator_id.nil?
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
        # @yieldparam result [Google::Apis::DialogflowV2beta1::GoogleProtobufEmpty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV2beta1::GoogleProtobufEmpty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_location_generator(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v2beta1/{+name}', options)
          command.response_representation = Google::Apis::DialogflowV2beta1::GoogleProtobufEmpty::Representation
          command.response_class = Google::Apis::DialogflowV2beta1::GoogleProtobufEmpty
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
        # @yieldparam result [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1Generator] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1Generator]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_generator(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2beta1/{+name}', options)
          command.response_representation = Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1Generator::Representation
          command.response_class = Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1Generator
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
        # @yieldparam result [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1ListGeneratorsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1ListGeneratorsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_generators(parent, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2beta1/{+parent}/generators', options)
          command.response_representation = Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1ListGeneratorsResponse::Representation
          command.response_class = Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1ListGeneratorsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # 
        # @param [String] name
        # @param [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1Generator] google_cloud_dialogflow_v2beta1_generator_object
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
        # @yieldparam result [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1Generator] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1Generator]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_project_location_generator(name, google_cloud_dialogflow_v2beta1_generator_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v2beta1/{+name}', options)
          command.request_representation = Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1Generator::Representation
          command.request_object = google_cloud_dialogflow_v2beta1_generator_object
          command.response_representation = Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1Generator::Representation
          command.response_class = Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1Generator
          command.params['name'] = name unless name.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # 
        # @param [String] parent
        # @param [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1GeneratorEvaluation] google_cloud_dialogflow_v2beta1_generator_evaluation_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV2beta1::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV2beta1::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_location_generator_evaluation(parent, google_cloud_dialogflow_v2beta1_generator_evaluation_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v2beta1/{+parent}/evaluations', options)
          command.request_representation = Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1GeneratorEvaluation::Representation
          command.request_object = google_cloud_dialogflow_v2beta1_generator_evaluation_object
          command.response_representation = Google::Apis::DialogflowV2beta1::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::DialogflowV2beta1::GoogleLongrunningOperation
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
        # @yieldparam result [Google::Apis::DialogflowV2beta1::GoogleProtobufEmpty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV2beta1::GoogleProtobufEmpty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_location_generator_evaluation(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v2beta1/{+name}', options)
          command.response_representation = Google::Apis::DialogflowV2beta1::GoogleProtobufEmpty::Representation
          command.response_class = Google::Apis::DialogflowV2beta1::GoogleProtobufEmpty
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
        # @yieldparam result [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1GeneratorEvaluation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1GeneratorEvaluation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_generator_evaluation(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2beta1/{+name}', options)
          command.response_representation = Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1GeneratorEvaluation::Representation
          command.response_class = Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1GeneratorEvaluation
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
        # @yieldparam result [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1ListGeneratorEvaluationsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1ListGeneratorEvaluationsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_generator_evaluations(parent, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2beta1/{+parent}/evaluations', options)
          command.response_representation = Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1ListGeneratorEvaluationsResponse::Representation
          command.response_class = Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1ListGeneratorEvaluationsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # 
        # @param [String] parent
        # @param [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1KnowledgeBase] google_cloud_dialogflow_v2beta1_knowledge_base_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1KnowledgeBase] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1KnowledgeBase]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_location_knowledge_basis(parent, google_cloud_dialogflow_v2beta1_knowledge_base_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v2beta1/{+parent}/knowledgeBases', options)
          command.request_representation = Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1KnowledgeBase::Representation
          command.request_object = google_cloud_dialogflow_v2beta1_knowledge_base_object
          command.response_representation = Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1KnowledgeBase::Representation
          command.response_class = Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1KnowledgeBase
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
        # @yieldparam result [Google::Apis::DialogflowV2beta1::GoogleProtobufEmpty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV2beta1::GoogleProtobufEmpty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_location_knowledge_basis(name, force: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v2beta1/{+name}', options)
          command.response_representation = Google::Apis::DialogflowV2beta1::GoogleProtobufEmpty::Representation
          command.response_class = Google::Apis::DialogflowV2beta1::GoogleProtobufEmpty
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
        # @yieldparam result [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1KnowledgeBase] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1KnowledgeBase]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_knowledge_basis(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2beta1/{+name}', options)
          command.response_representation = Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1KnowledgeBase::Representation
          command.response_class = Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1KnowledgeBase
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
        # @yieldparam result [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1ListKnowledgeBasesResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1ListKnowledgeBasesResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_knowledge_bases(parent, filter: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2beta1/{+parent}/knowledgeBases', options)
          command.response_representation = Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1ListKnowledgeBasesResponse::Representation
          command.response_class = Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1ListKnowledgeBasesResponse
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
        # @param [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1KnowledgeBase] google_cloud_dialogflow_v2beta1_knowledge_base_object
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
        # @yieldparam result [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1KnowledgeBase] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1KnowledgeBase]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_project_location_knowledge_basis(name, google_cloud_dialogflow_v2beta1_knowledge_base_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v2beta1/{+name}', options)
          command.request_representation = Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1KnowledgeBase::Representation
          command.request_object = google_cloud_dialogflow_v2beta1_knowledge_base_object
          command.response_representation = Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1KnowledgeBase::Representation
          command.response_class = Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1KnowledgeBase
          command.params['name'] = name unless name.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # 
        # @param [String] parent
        # @param [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1Document] google_cloud_dialogflow_v2beta1_document_object
        # @param [Boolean] import_gcs_custom_metadata
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV2beta1::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV2beta1::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_location_knowledge_basis_document(parent, google_cloud_dialogflow_v2beta1_document_object = nil, import_gcs_custom_metadata: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v2beta1/{+parent}/documents', options)
          command.request_representation = Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1Document::Representation
          command.request_object = google_cloud_dialogflow_v2beta1_document_object
          command.response_representation = Google::Apis::DialogflowV2beta1::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::DialogflowV2beta1::GoogleLongrunningOperation
          command.params['parent'] = parent unless parent.nil?
          command.query['importGcsCustomMetadata'] = import_gcs_custom_metadata unless import_gcs_custom_metadata.nil?
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
        # @yieldparam result [Google::Apis::DialogflowV2beta1::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV2beta1::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_location_knowledge_basis_document(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v2beta1/{+name}', options)
          command.response_representation = Google::Apis::DialogflowV2beta1::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::DialogflowV2beta1::GoogleLongrunningOperation
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
        # @yieldparam result [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1Document] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1Document]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_knowledge_basis_document(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2beta1/{+name}', options)
          command.response_representation = Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1Document::Representation
          command.response_class = Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1Document
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # 
        # @param [String] parent
        # @param [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1ImportDocumentsRequest] google_cloud_dialogflow_v2beta1_import_documents_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV2beta1::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV2beta1::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def import_project_location_knowledge_basis_document(parent, google_cloud_dialogflow_v2beta1_import_documents_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v2beta1/{+parent}/documents:import', options)
          command.request_representation = Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1ImportDocumentsRequest::Representation
          command.request_object = google_cloud_dialogflow_v2beta1_import_documents_request_object
          command.response_representation = Google::Apis::DialogflowV2beta1::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::DialogflowV2beta1::GoogleLongrunningOperation
          command.params['parent'] = parent unless parent.nil?
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
        # @yieldparam result [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1ListDocumentsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1ListDocumentsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_knowledge_basis_documents(parent, filter: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2beta1/{+parent}/documents', options)
          command.response_representation = Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1ListDocumentsResponse::Representation
          command.response_class = Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1ListDocumentsResponse
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
        # @param [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1Document] google_cloud_dialogflow_v2beta1_document_object
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
        # @yieldparam result [Google::Apis::DialogflowV2beta1::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV2beta1::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_project_location_knowledge_basis_document(name, google_cloud_dialogflow_v2beta1_document_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v2beta1/{+name}', options)
          command.request_representation = Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1Document::Representation
          command.request_object = google_cloud_dialogflow_v2beta1_document_object
          command.response_representation = Google::Apis::DialogflowV2beta1::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::DialogflowV2beta1::GoogleLongrunningOperation
          command.params['name'] = name unless name.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # 
        # @param [String] name
        # @param [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1ReloadDocumentRequest] google_cloud_dialogflow_v2beta1_reload_document_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV2beta1::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV2beta1::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def reload_project_location_knowledge_basis_document(name, google_cloud_dialogflow_v2beta1_reload_document_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v2beta1/{+name}:reload', options)
          command.request_representation = Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1ReloadDocumentRequest::Representation
          command.request_object = google_cloud_dialogflow_v2beta1_reload_document_request_object
          command.response_representation = Google::Apis::DialogflowV2beta1::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::DialogflowV2beta1::GoogleLongrunningOperation
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
        # @yieldparam result [Google::Apis::DialogflowV2beta1::GoogleProtobufEmpty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV2beta1::GoogleProtobufEmpty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def cancel_project_location_operation(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v2beta1/{+name}:cancel', options)
          command.response_representation = Google::Apis::DialogflowV2beta1::GoogleProtobufEmpty::Representation
          command.response_class = Google::Apis::DialogflowV2beta1::GoogleProtobufEmpty
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
        # @yieldparam result [Google::Apis::DialogflowV2beta1::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV2beta1::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_operation(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2beta1/{+name}', options)
          command.response_representation = Google::Apis::DialogflowV2beta1::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::DialogflowV2beta1::GoogleLongrunningOperation
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
        # @yieldparam result [Google::Apis::DialogflowV2beta1::GoogleLongrunningListOperationsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV2beta1::GoogleLongrunningListOperationsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_operations(name, filter: nil, page_size: nil, page_token: nil, return_partial_success: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2beta1/{+name}/operations', options)
          command.response_representation = Google::Apis::DialogflowV2beta1::GoogleLongrunningListOperationsResponse::Representation
          command.response_class = Google::Apis::DialogflowV2beta1::GoogleLongrunningListOperationsResponse
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
        # @yieldparam result [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1PhoneNumber] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1PhoneNumber]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_location_phone_number(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v2beta1/{+name}', options)
          command.response_representation = Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1PhoneNumber::Representation
          command.response_class = Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1PhoneNumber
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # 
        # @param [String] parent
        # @param [Fixnum] page_size
        # @param [String] page_token
        # @param [Boolean] show_deleted
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1ListPhoneNumbersResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1ListPhoneNumbersResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_phone_numbers(parent, page_size: nil, page_token: nil, show_deleted: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2beta1/{+parent}/phoneNumbers', options)
          command.response_representation = Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1ListPhoneNumbersResponse::Representation
          command.response_class = Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1ListPhoneNumbersResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['showDeleted'] = show_deleted unless show_deleted.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # 
        # @param [String] name
        # @param [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1PhoneNumber] google_cloud_dialogflow_v2beta1_phone_number_object
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
        # @yieldparam result [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1PhoneNumber] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1PhoneNumber]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_project_location_phone_number(name, google_cloud_dialogflow_v2beta1_phone_number_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v2beta1/{+name}', options)
          command.request_representation = Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1PhoneNumber::Representation
          command.request_object = google_cloud_dialogflow_v2beta1_phone_number_object
          command.response_representation = Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1PhoneNumber::Representation
          command.response_class = Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1PhoneNumber
          command.params['name'] = name unless name.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # 
        # @param [String] name
        # @param [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1UndeletePhoneNumberRequest] google_cloud_dialogflow_v2beta1_undelete_phone_number_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1PhoneNumber] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1PhoneNumber]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def undelete_project_location_phone_number(name, google_cloud_dialogflow_v2beta1_undelete_phone_number_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v2beta1/{+name}:undelete', options)
          command.request_representation = Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1UndeletePhoneNumberRequest::Representation
          command.request_object = google_cloud_dialogflow_v2beta1_undelete_phone_number_request_object
          command.response_representation = Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1PhoneNumber::Representation
          command.response_class = Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1PhoneNumber
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # 
        # @param [String] parent
        # @param [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1SipTrunk] google_cloud_dialogflow_v2beta1_sip_trunk_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1SipTrunk] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1SipTrunk]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_location_sip_trunk(parent, google_cloud_dialogflow_v2beta1_sip_trunk_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v2beta1/{+parent}/sipTrunks', options)
          command.request_representation = Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1SipTrunk::Representation
          command.request_object = google_cloud_dialogflow_v2beta1_sip_trunk_object
          command.response_representation = Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1SipTrunk::Representation
          command.response_class = Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1SipTrunk
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
        # @yieldparam result [Google::Apis::DialogflowV2beta1::GoogleProtobufEmpty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV2beta1::GoogleProtobufEmpty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_location_sip_trunk(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v2beta1/{+name}', options)
          command.response_representation = Google::Apis::DialogflowV2beta1::GoogleProtobufEmpty::Representation
          command.response_class = Google::Apis::DialogflowV2beta1::GoogleProtobufEmpty
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
        # @yieldparam result [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1SipTrunk] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1SipTrunk]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_sip_trunk(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2beta1/{+name}', options)
          command.response_representation = Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1SipTrunk::Representation
          command.response_class = Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1SipTrunk
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
        # @yieldparam result [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1ListSipTrunksResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1ListSipTrunksResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_sip_trunks(parent, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2beta1/{+parent}/sipTrunks', options)
          command.response_representation = Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1ListSipTrunksResponse::Representation
          command.response_class = Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1ListSipTrunksResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # 
        # @param [String] name
        # @param [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1SipTrunk] google_cloud_dialogflow_v2beta1_sip_trunk_object
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
        # @yieldparam result [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1SipTrunk] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1SipTrunk]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_project_location_sip_trunk(name, google_cloud_dialogflow_v2beta1_sip_trunk_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v2beta1/{+name}', options)
          command.request_representation = Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1SipTrunk::Representation
          command.request_object = google_cloud_dialogflow_v2beta1_sip_trunk_object
          command.response_representation = Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1SipTrunk::Representation
          command.response_class = Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1SipTrunk
          command.params['name'] = name unless name.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # 
        # @param [String] parent
        # @param [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1GenerateStatelessSuggestionRequest] google_cloud_dialogflow_v2beta1_generate_stateless_suggestion_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1GenerateStatelessSuggestionResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1GenerateStatelessSuggestionResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def generate_project_location_stateless_suggestion(parent, google_cloud_dialogflow_v2beta1_generate_stateless_suggestion_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v2beta1/{+parent}/statelessSuggestion:generate', options)
          command.request_representation = Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1GenerateStatelessSuggestionRequest::Representation
          command.request_object = google_cloud_dialogflow_v2beta1_generate_stateless_suggestion_request_object
          command.response_representation = Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1GenerateStatelessSuggestionResponse::Representation
          command.response_class = Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1GenerateStatelessSuggestionResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # 
        # @param [String] parent
        # @param [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1GenerateStatelessSummaryRequest] google_cloud_dialogflow_v2beta1_generate_stateless_summary_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1GenerateStatelessSummaryResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1GenerateStatelessSummaryResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def generate_project_location_suggestion_stateless_summary(parent, google_cloud_dialogflow_v2beta1_generate_stateless_summary_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v2beta1/{+parent}/suggestions:generateStatelessSummary', options)
          command.request_representation = Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1GenerateStatelessSummaryRequest::Representation
          command.request_object = google_cloud_dialogflow_v2beta1_generate_stateless_summary_request_object
          command.response_representation = Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1GenerateStatelessSummaryResponse::Representation
          command.response_class = Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1GenerateStatelessSummaryResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # 
        # @param [String] parent
        # @param [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1SearchKnowledgeRequest] google_cloud_dialogflow_v2beta1_search_knowledge_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1SearchKnowledgeResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1SearchKnowledgeResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def search_project_location_suggestion_knowledge(parent, google_cloud_dialogflow_v2beta1_search_knowledge_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v2beta1/{+parent}/suggestions:searchKnowledge', options)
          command.request_representation = Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1SearchKnowledgeRequest::Representation
          command.request_object = google_cloud_dialogflow_v2beta1_search_knowledge_request_object
          command.response_representation = Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1SearchKnowledgeResponse::Representation
          command.response_class = Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1SearchKnowledgeResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # 
        # @param [String] parent
        # @param [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1Tool] google_cloud_dialogflow_v2beta1_tool_object
        # @param [String] tool_id
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1Tool] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1Tool]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_location_tool(parent, google_cloud_dialogflow_v2beta1_tool_object = nil, tool_id: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v2beta1/{+parent}/tools', options)
          command.request_representation = Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1Tool::Representation
          command.request_object = google_cloud_dialogflow_v2beta1_tool_object
          command.response_representation = Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1Tool::Representation
          command.response_class = Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1Tool
          command.params['parent'] = parent unless parent.nil?
          command.query['toolId'] = tool_id unless tool_id.nil?
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
        # @yieldparam result [Google::Apis::DialogflowV2beta1::GoogleProtobufEmpty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV2beta1::GoogleProtobufEmpty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_location_tool(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v2beta1/{+name}', options)
          command.response_representation = Google::Apis::DialogflowV2beta1::GoogleProtobufEmpty::Representation
          command.response_class = Google::Apis::DialogflowV2beta1::GoogleProtobufEmpty
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
        # @yieldparam result [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1Tool] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1Tool]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_tool(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2beta1/{+name}', options)
          command.response_representation = Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1Tool::Representation
          command.response_class = Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1Tool
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
        # @yieldparam result [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1ListToolsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1ListToolsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_tools(parent, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2beta1/{+parent}/tools', options)
          command.response_representation = Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1ListToolsResponse::Representation
          command.response_class = Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1ListToolsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # 
        # @param [String] name
        # @param [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1Tool] google_cloud_dialogflow_v2beta1_tool_object
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
        # @yieldparam result [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1Tool] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1Tool]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_project_location_tool(name, google_cloud_dialogflow_v2beta1_tool_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v2beta1/{+name}', options)
          command.request_representation = Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1Tool::Representation
          command.request_object = google_cloud_dialogflow_v2beta1_tool_object
          command.response_representation = Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1Tool::Representation
          command.response_class = Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1Tool
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
        # @yieldparam result [Google::Apis::DialogflowV2beta1::GoogleProtobufEmpty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV2beta1::GoogleProtobufEmpty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def cancel_project_operation(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v2beta1/{+name}:cancel', options)
          command.response_representation = Google::Apis::DialogflowV2beta1::GoogleProtobufEmpty::Representation
          command.response_class = Google::Apis::DialogflowV2beta1::GoogleProtobufEmpty
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
        # @yieldparam result [Google::Apis::DialogflowV2beta1::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV2beta1::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_operation(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2beta1/{+name}', options)
          command.response_representation = Google::Apis::DialogflowV2beta1::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::DialogflowV2beta1::GoogleLongrunningOperation
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
        # @yieldparam result [Google::Apis::DialogflowV2beta1::GoogleLongrunningListOperationsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV2beta1::GoogleLongrunningListOperationsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_operations(name, filter: nil, page_size: nil, page_token: nil, return_partial_success: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2beta1/{+name}/operations', options)
          command.response_representation = Google::Apis::DialogflowV2beta1::GoogleLongrunningListOperationsResponse::Representation
          command.response_class = Google::Apis::DialogflowV2beta1::GoogleLongrunningListOperationsResponse
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
        # @yieldparam result [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1PhoneNumber] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1PhoneNumber]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_phone_number(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v2beta1/{+name}', options)
          command.response_representation = Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1PhoneNumber::Representation
          command.response_class = Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1PhoneNumber
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # 
        # @param [String] parent
        # @param [Fixnum] page_size
        # @param [String] page_token
        # @param [Boolean] show_deleted
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1ListPhoneNumbersResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1ListPhoneNumbersResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_phone_numbers(parent, page_size: nil, page_token: nil, show_deleted: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2beta1/{+parent}/phoneNumbers', options)
          command.response_representation = Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1ListPhoneNumbersResponse::Representation
          command.response_class = Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1ListPhoneNumbersResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['showDeleted'] = show_deleted unless show_deleted.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # 
        # @param [String] name
        # @param [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1PhoneNumber] google_cloud_dialogflow_v2beta1_phone_number_object
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
        # @yieldparam result [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1PhoneNumber] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1PhoneNumber]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_project_phone_number(name, google_cloud_dialogflow_v2beta1_phone_number_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v2beta1/{+name}', options)
          command.request_representation = Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1PhoneNumber::Representation
          command.request_object = google_cloud_dialogflow_v2beta1_phone_number_object
          command.response_representation = Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1PhoneNumber::Representation
          command.response_class = Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1PhoneNumber
          command.params['name'] = name unless name.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # 
        # @param [String] name
        # @param [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1UndeletePhoneNumberRequest] google_cloud_dialogflow_v2beta1_undelete_phone_number_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1PhoneNumber] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1PhoneNumber]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def undelete_project_phone_number(name, google_cloud_dialogflow_v2beta1_undelete_phone_number_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v2beta1/{+name}:undelete', options)
          command.request_representation = Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1UndeletePhoneNumberRequest::Representation
          command.request_object = google_cloud_dialogflow_v2beta1_undelete_phone_number_request_object
          command.response_representation = Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1PhoneNumber::Representation
          command.response_class = Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1PhoneNumber
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # 
        # @param [String] parent
        # @param [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1GenerateStatelessSummaryRequest] google_cloud_dialogflow_v2beta1_generate_stateless_summary_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1GenerateStatelessSummaryResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1GenerateStatelessSummaryResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def generate_project_suggestion_stateless_summary(parent, google_cloud_dialogflow_v2beta1_generate_stateless_summary_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v2beta1/{+parent}/suggestions:generateStatelessSummary', options)
          command.request_representation = Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1GenerateStatelessSummaryRequest::Representation
          command.request_object = google_cloud_dialogflow_v2beta1_generate_stateless_summary_request_object
          command.response_representation = Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1GenerateStatelessSummaryResponse::Representation
          command.response_class = Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1GenerateStatelessSummaryResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # 
        # @param [String] parent
        # @param [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1SearchKnowledgeRequest] google_cloud_dialogflow_v2beta1_search_knowledge_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1SearchKnowledgeResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1SearchKnowledgeResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def search_project_suggestion_knowledge(parent, google_cloud_dialogflow_v2beta1_search_knowledge_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v2beta1/{+parent}/suggestions:searchKnowledge', options)
          command.request_representation = Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1SearchKnowledgeRequest::Representation
          command.request_object = google_cloud_dialogflow_v2beta1_search_knowledge_request_object
          command.response_representation = Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1SearchKnowledgeResponse::Representation
          command.response_class = Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1SearchKnowledgeResponse
          command.params['parent'] = parent unless parent.nil?
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
