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
    module DeploymentmanagerV2beta1
      # Google Cloud Deployment Manager API V2
      #
      # The Deployment Manager API allows users to declaratively configure, deploy and
      #  run complex solutions on the Google Cloud Platform.
      #
      # @example
      #    require 'google/apis/deploymentmanager_v2beta1'
      #
      #    Deploymentmanager = Google::Apis::DeploymentmanagerV2beta1 # Alias the module
      #    service = Deploymentmanager::DeploymentmanagerService.new
      #
      # @see https://developers.google.com/deployment-manager/
      class DeploymentmanagerService < Google::Apis::Core::BaseService

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
          super('https://www.googleapis.com/', '/deploymentmanager/v2beta1/projects/')
        end

        # ! Deletes a deployment and all of the resources in the deployment.
        # @param [String] project
        #   ! The project ID for this request.
        # @param [String] deployment
        #   ! The name of the deployment for this request.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Api::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DeploymentmanagerV2beta1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DeploymentmanagerV2beta1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_deployment(project, deployment, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = '{project}/global/deployments/{deployment}'
          command =  make_simple_command(:delete, path, options)
          command.response_representation = Google::Apis::DeploymentmanagerV2beta1::OperationRepresentation
          command.response_class = Google::Apis::DeploymentmanagerV2beta1::Operation
          command.params['project'] = project unless project.nil?
          command.params['deployment'] = deployment unless deployment.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        
        # ! Gets information about a specific deployment.
        # @param [String] project
        #   ! The project ID for this request.
        # @param [String] deployment
        #   ! The name of the deployment for this request.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Api::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DeploymentmanagerV2beta1::Deployment] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DeploymentmanagerV2beta1::Deployment]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_deployment(project, deployment, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = '{project}/global/deployments/{deployment}'
          command =  make_simple_command(:get, path, options)
          command.response_representation = Google::Apis::DeploymentmanagerV2beta1::DeploymentRepresentation
          command.response_class = Google::Apis::DeploymentmanagerV2beta1::Deployment
          command.params['project'] = project unless project.nil?
          command.params['deployment'] = deployment unless deployment.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        
        # ! Creates a deployment and all of the resources described by the ! deployment
        # manifest.
        # @param [Google::Apis::DeploymentmanagerV2beta1::Deployment] deployment_obj
        #   
        # @param [String] project
        #   ! The project ID for this request.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Api::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DeploymentmanagerV2beta1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DeploymentmanagerV2beta1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def insert_deployment(deployment_obj, project, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = '{project}/global/deployments'
          command =  make_simple_command(:post, path, options)
          command.request_representation = Google::Apis::DeploymentmanagerV2beta1::DeploymentRepresentation
          command.request_object = deployment_obj
          command.response_representation = Google::Apis::DeploymentmanagerV2beta1::OperationRepresentation
          command.response_class = Google::Apis::DeploymentmanagerV2beta1::Operation
          command.params['project'] = project unless project.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        
        # ! Lists all deployments for a given project.
        # @param [String] project
        #   ! The project ID for this request.
        # @param [Fixnum] max_results
        #   ! Maximum count of results to be returned. ! Acceptable values are 0 to 100,
        #   inclusive. (Default: 50)
        # @param [String] page_token
        #   ! Specifies a nextPageToken returned by a previous list request. This ! token
        #   can be used to request the next page of results from a previous ! list request.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Api::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DeploymentmanagerV2beta1::DeploymentsListResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DeploymentmanagerV2beta1::DeploymentsListResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_deployments(project, max_results: nil, page_token: nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = '{project}/global/deployments'
          command =  make_simple_command(:get, path, options)
          command.response_representation = Google::Apis::DeploymentmanagerV2beta1::DeploymentsListResponseRepresentation
          command.response_class = Google::Apis::DeploymentmanagerV2beta1::DeploymentsListResponse
          command.params['project'] = project unless project.nil?
          command.query['maxResults'] = max_results unless max_results.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end

        # ! Gets information about a specific manifest.
        # @param [String] project
        #   ! The project ID for this request.
        # @param [String] deployment
        #   ! The name of the deployment for this request.
        # @param [String] manifest
        #   ! The name of the manifest for this request.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Api::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DeploymentmanagerV2beta1::Manifest] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DeploymentmanagerV2beta1::Manifest]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_manifest(project, deployment, manifest, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = '{project}/global/deployments/{deployment}/manifests/{manifest}'
          command =  make_simple_command(:get, path, options)
          command.response_representation = Google::Apis::DeploymentmanagerV2beta1::ManifestRepresentation
          command.response_class = Google::Apis::DeploymentmanagerV2beta1::Manifest
          command.params['project'] = project unless project.nil?
          command.params['deployment'] = deployment unless deployment.nil?
          command.params['manifest'] = manifest unless manifest.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        
        # ! Lists all manifests for a given deployment.
        # @param [String] project
        #   ! The project ID for this request.
        # @param [String] deployment
        #   ! The name of the deployment for this request.
        # @param [Fixnum] max_results
        #   ! Maximum count of results to be returned. ! Acceptable values are 0 to 100,
        #   inclusive. (Default: 50)
        # @param [String] page_token
        #   ! Specifies a nextPageToken returned by a previous list request. This ! token
        #   can be used to request the next page of results from a previous ! list request.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Api::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DeploymentmanagerV2beta1::ManifestsListResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DeploymentmanagerV2beta1::ManifestsListResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_manifests(project, deployment, max_results: nil, page_token: nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = '{project}/global/deployments/{deployment}/manifests'
          command =  make_simple_command(:get, path, options)
          command.response_representation = Google::Apis::DeploymentmanagerV2beta1::ManifestsListResponseRepresentation
          command.response_class = Google::Apis::DeploymentmanagerV2beta1::ManifestsListResponse
          command.params['project'] = project unless project.nil?
          command.params['deployment'] = deployment unless deployment.nil?
          command.query['maxResults'] = max_results unless max_results.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end

        # ! Gets information about a specific Operation.
        # @param [String] project
        #   ! The project ID for this request.
        # @param [String] operation
        #   ! The name of the operation for this request.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Api::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DeploymentmanagerV2beta1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DeploymentmanagerV2beta1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_operation(project, operation, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = '{project}/global/operations/{operation}'
          command =  make_simple_command(:get, path, options)
          command.response_representation = Google::Apis::DeploymentmanagerV2beta1::OperationRepresentation
          command.response_class = Google::Apis::DeploymentmanagerV2beta1::Operation
          command.params['project'] = project unless project.nil?
          command.params['operation'] = operation unless operation.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        
        # ! Lists all Operations for a project.
        # @param [String] project
        #   ! The project ID for this request.
        # @param [Fixnum] max_results
        #   ! Maximum count of results to be returned. ! Acceptable values are 0 to 100,
        #   inclusive. (Default: 50)
        # @param [String] page_token
        #   ! Specifies a nextPageToken returned by a previous list request. This ! token
        #   can be used to request the next page of results from a previous ! list request.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Api::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DeploymentmanagerV2beta1::OperationsListResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DeploymentmanagerV2beta1::OperationsListResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_operations(project, max_results: nil, page_token: nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = '{project}/global/operations'
          command =  make_simple_command(:get, path, options)
          command.response_representation = Google::Apis::DeploymentmanagerV2beta1::OperationsListResponseRepresentation
          command.response_class = Google::Apis::DeploymentmanagerV2beta1::OperationsListResponse
          command.params['project'] = project unless project.nil?
          command.query['maxResults'] = max_results unless max_results.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end

        # ! Gets information about a single resource.
        # @param [String] project
        #   ! The project ID for this request.
        # @param [String] deployment
        #   ! The name of the deployment for this request.
        # @param [String] resource
        #   ! The name of the resource for this request.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Api::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DeploymentmanagerV2beta1::Resource] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DeploymentmanagerV2beta1::Resource]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_resource(project, deployment, resource, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = '{project}/global/deployments/{deployment}/resources/{resource}'
          command =  make_simple_command(:get, path, options)
          command.response_representation = Google::Apis::DeploymentmanagerV2beta1::ResourceRepresentation
          command.response_class = Google::Apis::DeploymentmanagerV2beta1::Resource
          command.params['project'] = project unless project.nil?
          command.params['deployment'] = deployment unless deployment.nil?
          command.params['resource'] = resource unless resource.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        
        # ! Lists all resources in a given deployment.
        # @param [String] project
        #   ! The project ID for this request.
        # @param [String] deployment
        #   ! The name of the deployment for this request.
        # @param [Fixnum] max_results
        #   ! Maximum count of results to be returned. ! Acceptable values are 0 to 100,
        #   inclusive. (Default: 50)
        # @param [String] page_token
        #   ! Specifies a nextPageToken returned by a previous list request. This ! token
        #   can be used to request the next page of results from a previous ! list request.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Api::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DeploymentmanagerV2beta1::ResourcesListResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DeploymentmanagerV2beta1::ResourcesListResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_resources(project, deployment, max_results: nil, page_token: nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = '{project}/global/deployments/{deployment}/resources'
          command =  make_simple_command(:get, path, options)
          command.response_representation = Google::Apis::DeploymentmanagerV2beta1::ResourcesListResponseRepresentation
          command.response_class = Google::Apis::DeploymentmanagerV2beta1::ResourcesListResponse
          command.params['project'] = project unless project.nil?
          command.params['deployment'] = deployment unless deployment.nil?
          command.query['maxResults'] = max_results unless max_results.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end

        # ! Lists all Types for Deployment Manager.
        # @param [String] project
        #   ! The project ID for this request.
        # @param [Fixnum] max_results
        #   ! Maximum count of results to be returned. ! Acceptable values are 0 to 100,
        #   inclusive. (Default: 50)
        # @param [String] page_token
        #   ! Specifies a nextPageToken returned by a previous list request. This ! token
        #   can be used to request the next page of results from a previous ! list request.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Api::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DeploymentmanagerV2beta1::TypesListResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DeploymentmanagerV2beta1::TypesListResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_types(project, max_results: nil, page_token: nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = '{project}/global/types'
          command =  make_simple_command(:get, path, options)
          command.response_representation = Google::Apis::DeploymentmanagerV2beta1::TypesListResponseRepresentation
          command.response_class = Google::Apis::DeploymentmanagerV2beta1::TypesListResponse
          command.params['project'] = project unless project.nil?
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
