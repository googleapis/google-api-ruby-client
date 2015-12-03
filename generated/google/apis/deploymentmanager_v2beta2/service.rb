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
    module DeploymentmanagerV2beta2
      # Google Cloud Deployment Manager API
      #
      # The Deployment Manager API allows users to declaratively configure, deploy and
      #  run complex solutions on the Google Cloud Platform.
      #
      # @example
      #    require 'google/apis/deploymentmanager_v2beta2'
      #
      #    Deploymentmanager = Google::Apis::DeploymentmanagerV2beta2 # Alias the module
      #    service = Deploymentmanager::DeploymentManagerService.new
      #
      # @see https://developers.google.com/deployment-manager/
      class DeploymentManagerService < Google::Apis::Core::BaseService
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
          super('https://www.googleapis.com/', 'deploymentmanager/v2beta2/projects/')
        end
        
        # Deletes a deployment and all of the resources in the deployment.
        # @param [String] project
        #   The project ID for this request.
        # @param [String] deployment
        #   The name of the deployment for this request.
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
        # @yieldparam result [Google::Apis::DeploymentmanagerV2beta2::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DeploymentmanagerV2beta2::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_deployment(project, deployment, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          command =  make_simple_command(:delete, '{project}/global/deployments/{deployment}', options)
          command.response_representation = Google::Apis::DeploymentmanagerV2beta2::Operation::Representation
          command.response_class = Google::Apis::DeploymentmanagerV2beta2::Operation
          command.params['project'] = project unless project.nil?
          command.params['deployment'] = deployment unless deployment.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets information about a specific deployment.
        # @param [String] project
        #   The project ID for this request.
        # @param [String] deployment
        #   The name of the deployment for this request.
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
        # @yieldparam result [Google::Apis::DeploymentmanagerV2beta2::Deployment] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DeploymentmanagerV2beta2::Deployment]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_deployment(project, deployment, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          command =  make_simple_command(:get, '{project}/global/deployments/{deployment}', options)
          command.response_representation = Google::Apis::DeploymentmanagerV2beta2::Deployment::Representation
          command.response_class = Google::Apis::DeploymentmanagerV2beta2::Deployment
          command.params['project'] = project unless project.nil?
          command.params['deployment'] = deployment unless deployment.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a deployment and all of the resources described by the deployment
        # manifest.
        # @param [String] project
        #   The project ID for this request.
        # @param [Google::Apis::DeploymentmanagerV2beta2::Deployment] deployment_object
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
        # @yieldparam result [Google::Apis::DeploymentmanagerV2beta2::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DeploymentmanagerV2beta2::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def insert_deployment(project, deployment_object = nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          command =  make_simple_command(:post, '{project}/global/deployments', options)
          command.request_representation = Google::Apis::DeploymentmanagerV2beta2::Deployment::Representation
          command.request_object = deployment_object
          command.response_representation = Google::Apis::DeploymentmanagerV2beta2::Operation::Representation
          command.response_class = Google::Apis::DeploymentmanagerV2beta2::Operation
          command.params['project'] = project unless project.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists all deployments for a given project.
        # @param [String] project
        #   The project ID for this request.
        # @param [String] filter
        #   Sets a filter expression for filtering listed resources, in the form filter=`
        #   expression`. Your `expression` must be in the format: FIELD_NAME
        #   COMPARISON_STRING LITERAL_STRING.
        #   The FIELD_NAME is the name of the field you want to compare. Only atomic field
        #   types are supported (string, number, boolean). The COMPARISON_STRING must be
        #   either eq (equals) or ne (not equals). The LITERAL_STRING is the string value
        #   to filter to. The literal value must be valid for the type of field (string,
        #   number, boolean). For string fields, the literal value is interpreted as a
        #   regular expression using RE2 syntax. The literal value must match the entire
        #   field.
        #   For example, filter=name ne example-instance.
        # @param [Fixnum] max_results
        #   Maximum count of results to be returned.
        # @param [String] page_token
        #   Specifies a page token to use. Use this parameter if you want to list the next
        #   page of results. Set pageToken to the nextPageToken returned by a previous
        #   list request.
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
        # @yieldparam result [Google::Apis::DeploymentmanagerV2beta2::ListDeploymentsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DeploymentmanagerV2beta2::ListDeploymentsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_deployments(project, filter: nil, max_results: nil, page_token: nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          command =  make_simple_command(:get, '{project}/global/deployments', options)
          command.response_representation = Google::Apis::DeploymentmanagerV2beta2::ListDeploymentsResponse::Representation
          command.response_class = Google::Apis::DeploymentmanagerV2beta2::ListDeploymentsResponse
          command.params['project'] = project unless project.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['maxResults'] = max_results unless max_results.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates a deployment and all of the resources described by the deployment
        # manifest. This method supports patch semantics.
        # @param [String] project
        #   The project ID for this request.
        # @param [String] deployment
        #   The name of the deployment for this request.
        # @param [Google::Apis::DeploymentmanagerV2beta2::Deployment] deployment_object
        # @param [String] create_policy
        #   Sets the policy to use for creating new resources.
        # @param [String] delete_policy
        #   Sets the policy to use for deleting resources.
        # @param [String] update_policy
        #   Sets the policy to use for updating resources.
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
        # @yieldparam result [Google::Apis::DeploymentmanagerV2beta2::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DeploymentmanagerV2beta2::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_deployment(project, deployment, deployment_object = nil, create_policy: nil, delete_policy: nil, update_policy: nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          command =  make_simple_command(:patch, '{project}/global/deployments/{deployment}', options)
          command.request_representation = Google::Apis::DeploymentmanagerV2beta2::Deployment::Representation
          command.request_object = deployment_object
          command.response_representation = Google::Apis::DeploymentmanagerV2beta2::Operation::Representation
          command.response_class = Google::Apis::DeploymentmanagerV2beta2::Operation
          command.params['project'] = project unless project.nil?
          command.params['deployment'] = deployment unless deployment.nil?
          command.query['createPolicy'] = create_policy unless create_policy.nil?
          command.query['deletePolicy'] = delete_policy unless delete_policy.nil?
          command.query['updatePolicy'] = update_policy unless update_policy.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates a deployment and all of the resources described by the deployment
        # manifest.
        # @param [String] project
        #   The project ID for this request.
        # @param [String] deployment
        #   The name of the deployment for this request.
        # @param [Google::Apis::DeploymentmanagerV2beta2::Deployment] deployment_object
        # @param [String] create_policy
        #   Sets the policy to use for creating new resources.
        # @param [String] delete_policy
        #   Sets the policy to use for deleting resources.
        # @param [String] update_policy
        #   Sets the policy to use for updating resources.
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
        # @yieldparam result [Google::Apis::DeploymentmanagerV2beta2::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DeploymentmanagerV2beta2::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def update_deployment(project, deployment, deployment_object = nil, create_policy: nil, delete_policy: nil, update_policy: nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          command =  make_simple_command(:put, '{project}/global/deployments/{deployment}', options)
          command.request_representation = Google::Apis::DeploymentmanagerV2beta2::Deployment::Representation
          command.request_object = deployment_object
          command.response_representation = Google::Apis::DeploymentmanagerV2beta2::Operation::Representation
          command.response_class = Google::Apis::DeploymentmanagerV2beta2::Operation
          command.params['project'] = project unless project.nil?
          command.params['deployment'] = deployment unless deployment.nil?
          command.query['createPolicy'] = create_policy unless create_policy.nil?
          command.query['deletePolicy'] = delete_policy unless delete_policy.nil?
          command.query['updatePolicy'] = update_policy unless update_policy.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets information about a specific manifest.
        # @param [String] project
        #   The project ID for this request.
        # @param [String] deployment
        #   The name of the deployment for this request.
        # @param [String] manifest
        #   The name of the manifest for this request.
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
        # @yieldparam result [Google::Apis::DeploymentmanagerV2beta2::Manifest] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DeploymentmanagerV2beta2::Manifest]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_manifest(project, deployment, manifest, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          command =  make_simple_command(:get, '{project}/global/deployments/{deployment}/manifests/{manifest}', options)
          command.response_representation = Google::Apis::DeploymentmanagerV2beta2::Manifest::Representation
          command.response_class = Google::Apis::DeploymentmanagerV2beta2::Manifest
          command.params['project'] = project unless project.nil?
          command.params['deployment'] = deployment unless deployment.nil?
          command.params['manifest'] = manifest unless manifest.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists all manifests for a given deployment.
        # @param [String] project
        #   The project ID for this request.
        # @param [String] deployment
        #   The name of the deployment for this request.
        # @param [String] filter
        #   Sets a filter expression for filtering listed resources, in the form filter=`
        #   expression`. Your `expression` must be in the format: FIELD_NAME
        #   COMPARISON_STRING LITERAL_STRING.
        #   The FIELD_NAME is the name of the field you want to compare. Only atomic field
        #   types are supported (string, number, boolean). The COMPARISON_STRING must be
        #   either eq (equals) or ne (not equals). The LITERAL_STRING is the string value
        #   to filter to. The literal value must be valid for the type of field (string,
        #   number, boolean). For string fields, the literal value is interpreted as a
        #   regular expression using RE2 syntax. The literal value must match the entire
        #   field.
        #   For example, filter=name ne example-instance.
        # @param [Fixnum] max_results
        #   Maximum count of results to be returned.
        # @param [String] page_token
        #   Specifies a page token to use. Use this parameter if you want to list the next
        #   page of results. Set pageToken to the nextPageToken returned by a previous
        #   list request.
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
        # @yieldparam result [Google::Apis::DeploymentmanagerV2beta2::ListManifestsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DeploymentmanagerV2beta2::ListManifestsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_manifests(project, deployment, filter: nil, max_results: nil, page_token: nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          command =  make_simple_command(:get, '{project}/global/deployments/{deployment}/manifests', options)
          command.response_representation = Google::Apis::DeploymentmanagerV2beta2::ListManifestsResponse::Representation
          command.response_class = Google::Apis::DeploymentmanagerV2beta2::ListManifestsResponse
          command.params['project'] = project unless project.nil?
          command.params['deployment'] = deployment unless deployment.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['maxResults'] = max_results unless max_results.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets information about a specific operation.
        # @param [String] project
        #   The project ID for this request.
        # @param [String] operation
        #   The name of the operation for this request.
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
        # @yieldparam result [Google::Apis::DeploymentmanagerV2beta2::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DeploymentmanagerV2beta2::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_operation(project, operation, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          command =  make_simple_command(:get, '{project}/global/operations/{operation}', options)
          command.response_representation = Google::Apis::DeploymentmanagerV2beta2::Operation::Representation
          command.response_class = Google::Apis::DeploymentmanagerV2beta2::Operation
          command.params['project'] = project unless project.nil?
          command.params['operation'] = operation unless operation.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists all operations for a project.
        # @param [String] project
        #   The project ID for this request.
        # @param [String] filter
        #   Sets a filter expression for filtering listed resources, in the form filter=`
        #   expression`. Your `expression` must be in the format: FIELD_NAME
        #   COMPARISON_STRING LITERAL_STRING.
        #   The FIELD_NAME is the name of the field you want to compare. Only atomic field
        #   types are supported (string, number, boolean). The COMPARISON_STRING must be
        #   either eq (equals) or ne (not equals). The LITERAL_STRING is the string value
        #   to filter to. The literal value must be valid for the type of field (string,
        #   number, boolean). For string fields, the literal value is interpreted as a
        #   regular expression using RE2 syntax. The literal value must match the entire
        #   field.
        #   For example, filter=name ne example-instance.
        # @param [Fixnum] max_results
        #   Maximum count of results to be returned.
        # @param [String] page_token
        #   Specifies a page token to use. Use this parameter if you want to list the next
        #   page of results. Set pageToken to the nextPageToken returned by a previous
        #   list request.
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
        # @yieldparam result [Google::Apis::DeploymentmanagerV2beta2::ListOperationsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DeploymentmanagerV2beta2::ListOperationsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_operations(project, filter: nil, max_results: nil, page_token: nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          command =  make_simple_command(:get, '{project}/global/operations', options)
          command.response_representation = Google::Apis::DeploymentmanagerV2beta2::ListOperationsResponse::Representation
          command.response_class = Google::Apis::DeploymentmanagerV2beta2::ListOperationsResponse
          command.params['project'] = project unless project.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['maxResults'] = max_results unless max_results.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets information about a single resource.
        # @param [String] project
        #   The project ID for this request.
        # @param [String] deployment
        #   The name of the deployment for this request.
        # @param [String] resource
        #   The name of the resource for this request.
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
        # @yieldparam result [Google::Apis::DeploymentmanagerV2beta2::Resource] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DeploymentmanagerV2beta2::Resource]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_resource(project, deployment, resource, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          command =  make_simple_command(:get, '{project}/global/deployments/{deployment}/resources/{resource}', options)
          command.response_representation = Google::Apis::DeploymentmanagerV2beta2::Resource::Representation
          command.response_class = Google::Apis::DeploymentmanagerV2beta2::Resource
          command.params['project'] = project unless project.nil?
          command.params['deployment'] = deployment unless deployment.nil?
          command.params['resource'] = resource unless resource.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists all resources in a given deployment.
        # @param [String] project
        #   The project ID for this request.
        # @param [String] deployment
        #   The name of the deployment for this request.
        # @param [String] filter
        #   Sets a filter expression for filtering listed resources, in the form filter=`
        #   expression`. Your `expression` must be in the format: FIELD_NAME
        #   COMPARISON_STRING LITERAL_STRING.
        #   The FIELD_NAME is the name of the field you want to compare. Only atomic field
        #   types are supported (string, number, boolean). The COMPARISON_STRING must be
        #   either eq (equals) or ne (not equals). The LITERAL_STRING is the string value
        #   to filter to. The literal value must be valid for the type of field (string,
        #   number, boolean). For string fields, the literal value is interpreted as a
        #   regular expression using RE2 syntax. The literal value must match the entire
        #   field.
        #   For example, filter=name ne example-instance.
        # @param [Fixnum] max_results
        #   Maximum count of results to be returned.
        # @param [String] page_token
        #   Specifies a page token to use. Use this parameter if you want to list the next
        #   page of results. Set pageToken to the nextPageToken returned by a previous
        #   list request.
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
        # @yieldparam result [Google::Apis::DeploymentmanagerV2beta2::ListResourcesResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DeploymentmanagerV2beta2::ListResourcesResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_resources(project, deployment, filter: nil, max_results: nil, page_token: nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          command =  make_simple_command(:get, '{project}/global/deployments/{deployment}/resources', options)
          command.response_representation = Google::Apis::DeploymentmanagerV2beta2::ListResourcesResponse::Representation
          command.response_class = Google::Apis::DeploymentmanagerV2beta2::ListResourcesResponse
          command.params['project'] = project unless project.nil?
          command.params['deployment'] = deployment unless deployment.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['maxResults'] = max_results unless max_results.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists all resource types for Deployment Manager.
        # @param [String] project
        #   The project ID for this request.
        # @param [String] filter
        #   Sets a filter expression for filtering listed resources, in the form filter=`
        #   expression`. Your `expression` must be in the format: FIELD_NAME
        #   COMPARISON_STRING LITERAL_STRING.
        #   The FIELD_NAME is the name of the field you want to compare. Only atomic field
        #   types are supported (string, number, boolean). The COMPARISON_STRING must be
        #   either eq (equals) or ne (not equals). The LITERAL_STRING is the string value
        #   to filter to. The literal value must be valid for the type of field (string,
        #   number, boolean). For string fields, the literal value is interpreted as a
        #   regular expression using RE2 syntax. The literal value must match the entire
        #   field.
        #   For example, filter=name ne example-instance.
        # @param [Fixnum] max_results
        #   Maximum count of results to be returned.
        # @param [String] page_token
        #   Specifies a page token to use. Use this parameter if you want to list the next
        #   page of results. Set pageToken to the nextPageToken returned by a previous
        #   list request.
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
        # @yieldparam result [Google::Apis::DeploymentmanagerV2beta2::ListTypesResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DeploymentmanagerV2beta2::ListTypesResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_types(project, filter: nil, max_results: nil, page_token: nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          command =  make_simple_command(:get, '{project}/global/types', options)
          command.response_representation = Google::Apis::DeploymentmanagerV2beta2::ListTypesResponse::Representation
          command.response_class = Google::Apis::DeploymentmanagerV2beta2::ListTypesResponse
          command.params['project'] = project unless project.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['maxResults'] = max_results unless max_results.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
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
