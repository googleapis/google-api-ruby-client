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
    module IntegrationsV2
      # Application Integration API
      #
      # 
      #
      # @example
      #    require 'google/apis/integrations_v2'
      #
      #    Integrations = Google::Apis::IntegrationsV2 # Alias the module
      #    service = Integrations::IntegrationsService.new
      #
      # @see https://cloud.google.com/application-integration
      class IntegrationsService < Google::Apis::Core::BaseService
        DEFAULT_ENDPOINT_TEMPLATE = "https://integrations.$UNIVERSE_DOMAIN$/"

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
                client_name: 'google-apis-integrations_v2',
                client_version: Google::Apis::IntegrationsV2::GEM_VERSION)
          @batch_path = 'batch'
        end
        
        # Generates an integration skeleton based on a natural language prompt.
        # @param [String] parent
        #   Required. The location in which the integration will be generated. Format: `
        #   projects/`project`/locations/`location``
        # @param [Google::Apis::IntegrationsV2::GoogleCloudIntegrationsV2DuetGenerateIntegrationRequest] google_cloud_integrations_v2_duet_generate_integration_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::IntegrationsV2::GoogleCloudIntegrationsV2DuetGenerateIntegrationResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::IntegrationsV2::GoogleCloudIntegrationsV2DuetGenerateIntegrationResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def generate_project_location_integration(parent, google_cloud_integrations_v2_duet_generate_integration_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v2/{+parent}:generateIntegration', options)
          command.request_representation = Google::Apis::IntegrationsV2::GoogleCloudIntegrationsV2DuetGenerateIntegrationRequest::Representation
          command.request_object = google_cloud_integrations_v2_duet_generate_integration_request_object
          command.response_representation = Google::Apis::IntegrationsV2::GoogleCloudIntegrationsV2DuetGenerateIntegrationResponse::Representation
          command.response_class = Google::Apis::IntegrationsV2::GoogleCloudIntegrationsV2DuetGenerateIntegrationResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Executes integrations synchronously. The response is not returned until the
        # requested execution is either fulfilled or experienced an error. Only one
        # integration can be executed. Request format URL: https://integrations.
        # googleapis.com/v2/projects/$PROJECT/locations/$LOCATION/integrations/$
        # INTEGRATION_NAME:execute Request payload: (the entire payload is optional
        # unless input variables need to be set.) `"variable1": "hello world", "
        # variable2": 1, "variable3": `"my_json_key": "my json string value" `
        # @param [String] parent
        #   Required. The integration resource name.
        # @param [String] request_id
        #   Optional. This is used to de-dup incoming request: if the duplicate request
        #   was detected, the response from the previous execution is returned.
        # @param [String] trigger_id
        #   Required. The API trigger id associated with the integration. An integration
        #   can have multiple trigger_id. This field is required to disambiguate which
        #   trigger should be invoked.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::IntegrationsV2::GoogleApiHttpBody] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::IntegrationsV2::GoogleApiHttpBody]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def execute_project_location_integration(parent, request_id: nil, trigger_id: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v2/{+parent}:execute', options)
          command.response_representation = Google::Apis::IntegrationsV2::GoogleApiHttpBody::Representation
          command.response_class = Google::Apis::IntegrationsV2::GoogleApiHttpBody
          command.params['parent'] = parent unless parent.nil?
          command.query['requestId'] = request_id unless request_id.nil?
          command.query['triggerId'] = trigger_id unless trigger_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Generates an integration branch.
        # @param [String] parent
        #   Required. Format: `projects/`project`/locations/`location`/integrations/`
        #   integration``
        # @param [Google::Apis::IntegrationsV2::GoogleCloudIntegrationsV2DuetGenerateIntegrationBranchRequest] google_cloud_integrations_v2_duet_generate_integration_branch_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::IntegrationsV2::GoogleCloudIntegrationsV2DuetGenerateIntegrationBranchResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::IntegrationsV2::GoogleCloudIntegrationsV2DuetGenerateIntegrationBranchResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def generate_project_location_integration_integration_branch(parent, google_cloud_integrations_v2_duet_generate_integration_branch_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v2/{+parent}:generateIntegrationBranch', options)
          command.request_representation = Google::Apis::IntegrationsV2::GoogleCloudIntegrationsV2DuetGenerateIntegrationBranchRequest::Representation
          command.request_object = google_cloud_integrations_v2_duet_generate_integration_branch_request_object
          command.response_representation = Google::Apis::IntegrationsV2::GoogleCloudIntegrationsV2DuetGenerateIntegrationBranchResponse::Representation
          command.response_class = Google::Apis::IntegrationsV2::GoogleCloudIntegrationsV2DuetGenerateIntegrationBranchResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Generates documentation for an integration version.
        # @param [String] parent
        #   Required. Format: `projects/`project`/locations/`location`/integrations/`
        #   integration``
        # @param [Google::Apis::IntegrationsV2::GoogleCloudIntegrationsV2DuetGenerateIntegrationDocumentRequest] google_cloud_integrations_v2_duet_generate_integration_document_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::IntegrationsV2::GoogleCloudIntegrationsV2DuetGenerateIntegrationDocumentResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::IntegrationsV2::GoogleCloudIntegrationsV2DuetGenerateIntegrationDocumentResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def generate_project_location_integration_integration_document(parent, google_cloud_integrations_v2_duet_generate_integration_document_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v2/{+parent}:generateIntegrationDocument', options)
          command.request_representation = Google::Apis::IntegrationsV2::GoogleCloudIntegrationsV2DuetGenerateIntegrationDocumentRequest::Representation
          command.request_object = google_cloud_integrations_v2_duet_generate_integration_document_request_object
          command.response_representation = Google::Apis::IntegrationsV2::GoogleCloudIntegrationsV2DuetGenerateIntegrationDocumentResponse::Representation
          command.response_class = Google::Apis::IntegrationsV2::GoogleCloudIntegrationsV2DuetGenerateIntegrationDocumentResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Generates Javascript code for data mapping.
        # @param [String] parent
        #   Required. Format: `projects/`project`/locations/`location`/integrations/`
        #   integration``
        # @param [Google::Apis::IntegrationsV2::GoogleCloudIntegrationsV2DuetGenerateJavascriptRequest] google_cloud_integrations_v2_duet_generate_javascript_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::IntegrationsV2::GoogleCloudIntegrationsV2DuetGenerateJavascriptResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::IntegrationsV2::GoogleCloudIntegrationsV2DuetGenerateJavascriptResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def generate_project_location_integration_javascript(parent, google_cloud_integrations_v2_duet_generate_javascript_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v2/{+parent}:generateJavascript', options)
          command.request_representation = Google::Apis::IntegrationsV2::GoogleCloudIntegrationsV2DuetGenerateJavascriptRequest::Representation
          command.request_object = google_cloud_integrations_v2_duet_generate_javascript_request_object
          command.response_representation = Google::Apis::IntegrationsV2::GoogleCloudIntegrationsV2DuetGenerateJavascriptResponse::Representation
          command.response_class = Google::Apis::IntegrationsV2::GoogleCloudIntegrationsV2DuetGenerateJavascriptResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Recommends tasks to replace a selected task.
        # @param [String] parent
        #   Required. Format: `projects/`project`/locations/`location`/integrations/`
        #   integration``
        # @param [Google::Apis::IntegrationsV2::GoogleCloudIntegrationsV2DuetRecommendTasksRequest] google_cloud_integrations_v2_duet_recommend_tasks_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::IntegrationsV2::GoogleCloudIntegrationsV2DuetRecommendTasksResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::IntegrationsV2::GoogleCloudIntegrationsV2DuetRecommendTasksResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def recommend_project_location_integration_tasks(parent, google_cloud_integrations_v2_duet_recommend_tasks_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v2/{+parent}:recommendTasks', options)
          command.request_representation = Google::Apis::IntegrationsV2::GoogleCloudIntegrationsV2DuetRecommendTasksRequest::Representation
          command.request_object = google_cloud_integrations_v2_duet_recommend_tasks_request_object
          command.response_representation = Google::Apis::IntegrationsV2::GoogleCloudIntegrationsV2DuetRecommendTasksResponse::Representation
          command.response_class = Google::Apis::IntegrationsV2::GoogleCloudIntegrationsV2DuetRecommendTasksResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Schedules an integration for execution.
        # @param [String] parent
        #   Required. The integration resource name.
        # @param [String] request_id
        #   Optional. This is used to de-dup incoming request: if the duplicate request
        #   was detected, the response from the previous execution is returned.
        # @param [String] schedule_time
        #   Optional. The time that the integration should be executed. If the time is
        #   less or equal to the current time, the integration is executed immediately.
        # @param [String] trigger_id
        #   Required. The API trigger id associated with the integration. An integration
        #   can have multiple trigger_id. This field is required to disambiguate which
        #   trigger should be invoked
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::IntegrationsV2::GoogleApiHttpBody] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::IntegrationsV2::GoogleApiHttpBody]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def schedule_project_location_integration(parent, request_id: nil, schedule_time: nil, trigger_id: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v2/{+parent}:schedule', options)
          command.response_representation = Google::Apis::IntegrationsV2::GoogleApiHttpBody::Representation
          command.response_class = Google::Apis::IntegrationsV2::GoogleApiHttpBody
          command.params['parent'] = parent unless parent.nil?
          command.query['requestId'] = request_id unless request_id.nil?
          command.query['scheduleTime'] = schedule_time unless schedule_time.nil?
          command.query['triggerId'] = trigger_id unless trigger_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists the results of all the integration executions. The response includes the
        # same information as the [execution log](https://cloud.google.com/application-
        # integration/docs/viewing-logs) in the Integration UI.
        # @param [String] parent
        #   Required. parent resource name of integration execution.
        # @param [String] filter
        #   Optional. Standard filter field, we support filtering on following fields:
        #   integration_name: the name of the integration. create_time: the execution
        #   created time. update_time: the execution last update time. state: the state of
        #   the executions. execution_id: the id of the execution. trigger_id: the id of
        #   the trigger. All fields support for EQUALS, in additional: create_time and
        #   update_time support for LESS_THAN, GREATER_THAN Also supports operators like
        #   AND, OR, NOT For example: trigger_id=\"id1\" AND integration_name=\"
        #   testIntegration\"
        # @param [Fixnum] page_size
        #   Optional. The size of entries in the response.
        # @param [String] page_token
        #   Optional. The token returned in the previous response.
        # @param [String] read_mask
        #   Optional. View mask for the response data. If set, only the field specified
        #   will be returned as part of the result. If not set, all fields in execution
        #   info will be filled and returned.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::IntegrationsV2::GoogleCloudIntegrationsV2ListExecutionsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::IntegrationsV2::GoogleCloudIntegrationsV2ListExecutionsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_integration_executions(parent, filter: nil, page_size: nil, page_token: nil, read_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2/{+parent}/executions', options)
          command.response_representation = Google::Apis::IntegrationsV2::GoogleCloudIntegrationsV2ListExecutionsResponse::Representation
          command.response_class = Google::Apis::IntegrationsV2::GoogleCloudIntegrationsV2ListExecutionsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['readMask'] = read_mask unless read_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # View detailed explanation of why an integration execution failed, using LLM
        # @param [String] name
        #   Required. Execution resource name. Format: `projects/`project`/locations/`
        #   location`/integrations/`integration`/executions/`execution_id``
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::IntegrationsV2::GoogleCloudIntegrationsV2DuetTroubleshootExecutionResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::IntegrationsV2::GoogleCloudIntegrationsV2DuetTroubleshootExecutionResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def troubleshoot_project_location_integration_execution(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2/{+name}:troubleshoot', options)
          command.response_representation = Google::Apis::IntegrationsV2::GoogleCloudIntegrationsV2DuetTroubleshootExecutionResponse::Representation
          command.response_class = Google::Apis::IntegrationsV2::GoogleCloudIntegrationsV2DuetTroubleshootExecutionResponse
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Get a TaskExecution in the specified project.
        # @param [String] name
        #   Required. The TaskExecution to retrieve. Format: projects/`project`/locations/`
        #   location`/integrations/`integration`/executions/`execution`/taskExecutions/`
        #   task_execution`
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::IntegrationsV2::GoogleCloudIntegrationsV2TaskExecution] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::IntegrationsV2::GoogleCloudIntegrationsV2TaskExecution]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_integration_execution_task_execution(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2/{+name}', options)
          command.response_representation = Google::Apis::IntegrationsV2::GoogleCloudIntegrationsV2TaskExecution::Representation
          command.response_class = Google::Apis::IntegrationsV2::GoogleCloudIntegrationsV2TaskExecution
          command.params['name'] = name unless name.nil?
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
