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
    module DeploymentmanagerAlpha
      # Cloud Deployment Manager V2 API
      #
      # The Google Cloud Deployment Manager v2 API provides services for configuring,
      #  deploying, and viewing Google Cloud services and APIs via templates which
      #  specify deployments of Cloud resources.
      #
      # @example
      #    require 'google/apis/deploymentmanager_alpha'
      #
      #    Deploymentmanager = Google::Apis::DeploymentmanagerAlpha # Alias the module
      #    service = Deploymentmanager::DeploymentManagerService.new
      #
      # @see https://cloud.google.com/deployment-manager
      class DeploymentManagerService < Google::Apis::Core::BaseService
        # @return [String]
        #  API key. Your API key identifies your project and provides you with API access,
        #  quota, and reports. Required unless you provide an OAuth 2.0 token.
        attr_accessor :key

        # @return [String]
        #  Available to use for quota purposes for server-side applications. Can be any
        #  arbitrary string assigned to a user, but should not exceed 40 characters.
        attr_accessor :quota_user

        def initialize
          super('https://deploymentmanager.googleapis.com/', '')
          @batch_path = 'batch'
        end
        
        # Deletes a composite type.
        # @param [String] project
        #   The project ID for this request.
        # @param [String] composite_type
        #   The name of the type for this request.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DeploymentmanagerAlpha::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DeploymentmanagerAlpha::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_composite_type(project, composite_type, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'deploymentmanager/alpha/projects/{project}/global/compositeTypes/{compositeType}', options)
          command.response_representation = Google::Apis::DeploymentmanagerAlpha::Operation::Representation
          command.response_class = Google::Apis::DeploymentmanagerAlpha::Operation
          command.params['project'] = project unless project.nil?
          command.params['compositeType'] = composite_type unless composite_type.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets information about a specific composite type.
        # @param [String] project
        #   The project ID for this request.
        # @param [String] composite_type
        #   The name of the composite type for this request.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DeploymentmanagerAlpha::CompositeType] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DeploymentmanagerAlpha::CompositeType]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_composite_type(project, composite_type, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'deploymentmanager/alpha/projects/{project}/global/compositeTypes/{compositeType}', options)
          command.response_representation = Google::Apis::DeploymentmanagerAlpha::CompositeType::Representation
          command.response_class = Google::Apis::DeploymentmanagerAlpha::CompositeType
          command.params['project'] = project unless project.nil?
          command.params['compositeType'] = composite_type unless composite_type.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a composite type.
        # @param [String] project
        #   The project ID for this request.
        # @param [Google::Apis::DeploymentmanagerAlpha::CompositeType] composite_type_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DeploymentmanagerAlpha::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DeploymentmanagerAlpha::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def insert_composite_type(project, composite_type_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'deploymentmanager/alpha/projects/{project}/global/compositeTypes', options)
          command.request_representation = Google::Apis::DeploymentmanagerAlpha::CompositeType::Representation
          command.request_object = composite_type_object
          command.response_representation = Google::Apis::DeploymentmanagerAlpha::Operation::Representation
          command.response_class = Google::Apis::DeploymentmanagerAlpha::Operation
          command.params['project'] = project unless project.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists all composite types for Deployment Manager.
        # @param [String] project
        #   The project ID for this request.
        # @param [String] filter
        #   A filter expression that filters resources listed in the response. The
        #   expression must specify the field name, a comparison operator, and the value
        #   that you want to use for filtering. The value must be a string, a number, or a
        #   boolean. The comparison operator must be either `=`, `!=`, `>`, or `<`. For
        #   example, if you are filtering Compute Engine instances, you can exclude
        #   instances named `example-instance` by specifying `name != example-instance`.
        #   You can also filter nested fields. For example, you could specify `scheduling.
        #   automaticRestart = false` to include instances only if they are not scheduled
        #   for automatic restarts. You can use filtering on nested fields to filter based
        #   on resource labels. To filter on multiple expressions, provide each separate
        #   expression within parentheses. For example: ``` (scheduling.automaticRestart =
        #   true) (cpuPlatform = "Intel Skylake") ``` By default, each expression is an `
        #   AND` expression. However, you can include `AND` and `OR` expressions
        #   explicitly. For example: ``` (cpuPlatform = "Intel Skylake") OR (cpuPlatform =
        #   "Intel Broadwell") AND (scheduling.automaticRestart = true) ```
        # @param [Fixnum] max_results
        #   The maximum number of results per page that should be returned. If the number
        #   of available results is larger than `maxResults`, Compute Engine returns a `
        #   nextPageToken` that can be used to get the next page of results in subsequent
        #   list requests. Acceptable values are `0` to `500`, inclusive. (Default: `500`)
        # @param [String] order_by
        #   Sorts list results by a certain order. By default, results are returned in
        #   alphanumerical order based on the resource name. You can also sort results in
        #   descending order based on the creation timestamp using `orderBy="
        #   creationTimestamp desc"`. This sorts results based on the `creationTimestamp`
        #   field in reverse chronological order (newest result first). Use this to sort
        #   resources like operations so that the newest operation is returned first.
        #   Currently, only sorting by `name` or `creationTimestamp desc` is supported.
        # @param [String] page_token
        #   Specifies a page token to use. Set `pageToken` to the `nextPageToken` returned
        #   by a previous list request to get the next page of results.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DeploymentmanagerAlpha::CompositeTypesListResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DeploymentmanagerAlpha::CompositeTypesListResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_composite_types(project, filter: nil, max_results: nil, order_by: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'deploymentmanager/alpha/projects/{project}/global/compositeTypes', options)
          command.response_representation = Google::Apis::DeploymentmanagerAlpha::CompositeTypesListResponse::Representation
          command.response_class = Google::Apis::DeploymentmanagerAlpha::CompositeTypesListResponse
          command.params['project'] = project unless project.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['maxResults'] = max_results unless max_results.nil?
          command.query['orderBy'] = order_by unless order_by.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Patches a composite type.
        # @param [String] project
        #   The project ID for this request.
        # @param [String] composite_type
        #   The name of the composite type for this request.
        # @param [Google::Apis::DeploymentmanagerAlpha::CompositeType] composite_type_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DeploymentmanagerAlpha::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DeploymentmanagerAlpha::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_composite_type(project, composite_type, composite_type_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'deploymentmanager/alpha/projects/{project}/global/compositeTypes/{compositeType}', options)
          command.request_representation = Google::Apis::DeploymentmanagerAlpha::CompositeType::Representation
          command.request_object = composite_type_object
          command.response_representation = Google::Apis::DeploymentmanagerAlpha::Operation::Representation
          command.response_class = Google::Apis::DeploymentmanagerAlpha::Operation
          command.params['project'] = project unless project.nil?
          command.params['compositeType'] = composite_type unless composite_type.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates a composite type.
        # @param [String] project
        #   The project ID for this request.
        # @param [String] composite_type
        #   The name of the composite type for this request.
        # @param [Google::Apis::DeploymentmanagerAlpha::CompositeType] composite_type_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DeploymentmanagerAlpha::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DeploymentmanagerAlpha::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def update_composite_type(project, composite_type, composite_type_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:put, 'deploymentmanager/alpha/projects/{project}/global/compositeTypes/{compositeType}', options)
          command.request_representation = Google::Apis::DeploymentmanagerAlpha::CompositeType::Representation
          command.request_object = composite_type_object
          command.response_representation = Google::Apis::DeploymentmanagerAlpha::Operation::Representation
          command.response_class = Google::Apis::DeploymentmanagerAlpha::Operation
          command.params['project'] = project unless project.nil?
          command.params['compositeType'] = composite_type unless composite_type.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Cancels and removes the preview currently associated with the deployment.
        # @param [String] project
        #   The project ID for this request.
        # @param [String] deployment
        #   The name of the deployment for this request.
        # @param [Google::Apis::DeploymentmanagerAlpha::DeploymentsCancelPreviewRequest] deployments_cancel_preview_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DeploymentmanagerAlpha::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DeploymentmanagerAlpha::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def cancel_deployment_preview(project, deployment, deployments_cancel_preview_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'deploymentmanager/alpha/projects/{project}/global/deployments/{deployment}/cancelPreview', options)
          command.request_representation = Google::Apis::DeploymentmanagerAlpha::DeploymentsCancelPreviewRequest::Representation
          command.request_object = deployments_cancel_preview_request_object
          command.response_representation = Google::Apis::DeploymentmanagerAlpha::Operation::Representation
          command.response_class = Google::Apis::DeploymentmanagerAlpha::Operation
          command.params['project'] = project unless project.nil?
          command.params['deployment'] = deployment unless deployment.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes a deployment and all of the resources in the deployment.
        # @param [String] project
        #   The project ID for this request.
        # @param [String] deployment
        #   The name of the deployment for this request.
        # @param [String] delete_policy
        #   Sets the policy to use for deleting resources.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DeploymentmanagerAlpha::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DeploymentmanagerAlpha::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_deployment(project, deployment, delete_policy: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'deploymentmanager/alpha/projects/{project}/global/deployments/{deployment}', options)
          command.response_representation = Google::Apis::DeploymentmanagerAlpha::Operation::Representation
          command.response_class = Google::Apis::DeploymentmanagerAlpha::Operation
          command.params['project'] = project unless project.nil?
          command.params['deployment'] = deployment unless deployment.nil?
          command.query['deletePolicy'] = delete_policy unless delete_policy.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
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
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DeploymentmanagerAlpha::Deployment] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DeploymentmanagerAlpha::Deployment]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_deployment(project, deployment, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'deploymentmanager/alpha/projects/{project}/global/deployments/{deployment}', options)
          command.response_representation = Google::Apis::DeploymentmanagerAlpha::Deployment::Representation
          command.response_class = Google::Apis::DeploymentmanagerAlpha::Deployment
          command.params['project'] = project unless project.nil?
          command.params['deployment'] = deployment unless deployment.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets the access control policy for a resource. May be empty if no such policy
        # or resource exists.
        # @param [String] project
        #   Project ID for this request.
        # @param [String] resource
        #   Name or id of the resource for this request.
        # @param [Fixnum] options_requested_policy_version
        #   Requested IAM Policy version.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DeploymentmanagerAlpha::Policy] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DeploymentmanagerAlpha::Policy]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_deployment_iam_policy(project, resource, options_requested_policy_version: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'deploymentmanager/alpha/projects/{project}/global/deployments/{resource}/getIamPolicy', options)
          command.response_representation = Google::Apis::DeploymentmanagerAlpha::Policy::Representation
          command.response_class = Google::Apis::DeploymentmanagerAlpha::Policy
          command.params['project'] = project unless project.nil?
          command.params['resource'] = resource unless resource.nil?
          command.query['optionsRequestedPolicyVersion'] = options_requested_policy_version unless options_requested_policy_version.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a deployment and all of the resources described by the deployment
        # manifest.
        # @param [String] project
        #   The project ID for this request.
        # @param [Google::Apis::DeploymentmanagerAlpha::Deployment] deployment_object
        # @param [String] create_policy
        #   Sets the policy to use for creating new resources.
        # @param [Boolean] preview
        #   If set to true, creates a deployment and creates "shell" resources but does
        #   not actually instantiate these resources. This allows you to preview what your
        #   deployment looks like. After previewing a deployment, you can deploy your
        #   resources by making a request with the `update()` method or you can use the `
        #   cancelPreview()` method to cancel the preview altogether. Note that the
        #   deployment will still exist after you cancel the preview and you must
        #   separately delete this deployment if you want to remove it.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DeploymentmanagerAlpha::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DeploymentmanagerAlpha::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def insert_deployment(project, deployment_object = nil, create_policy: nil, preview: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'deploymentmanager/alpha/projects/{project}/global/deployments', options)
          command.request_representation = Google::Apis::DeploymentmanagerAlpha::Deployment::Representation
          command.request_object = deployment_object
          command.response_representation = Google::Apis::DeploymentmanagerAlpha::Operation::Representation
          command.response_class = Google::Apis::DeploymentmanagerAlpha::Operation
          command.params['project'] = project unless project.nil?
          command.query['createPolicy'] = create_policy unless create_policy.nil?
          command.query['preview'] = preview unless preview.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists all deployments for a given project.
        # @param [String] project
        #   The project ID for this request.
        # @param [String] filter
        #   A filter expression that filters resources listed in the response. The
        #   expression must specify the field name, a comparison operator, and the value
        #   that you want to use for filtering. The value must be a string, a number, or a
        #   boolean. The comparison operator must be either `=`, `!=`, `>`, or `<`. For
        #   example, if you are filtering Compute Engine instances, you can exclude
        #   instances named `example-instance` by specifying `name != example-instance`.
        #   You can also filter nested fields. For example, you could specify `scheduling.
        #   automaticRestart = false` to include instances only if they are not scheduled
        #   for automatic restarts. You can use filtering on nested fields to filter based
        #   on resource labels. To filter on multiple expressions, provide each separate
        #   expression within parentheses. For example: ``` (scheduling.automaticRestart =
        #   true) (cpuPlatform = "Intel Skylake") ``` By default, each expression is an `
        #   AND` expression. However, you can include `AND` and `OR` expressions
        #   explicitly. For example: ``` (cpuPlatform = "Intel Skylake") OR (cpuPlatform =
        #   "Intel Broadwell") AND (scheduling.automaticRestart = true) ```
        # @param [Fixnum] max_results
        #   The maximum number of results per page that should be returned. If the number
        #   of available results is larger than `maxResults`, Compute Engine returns a `
        #   nextPageToken` that can be used to get the next page of results in subsequent
        #   list requests. Acceptable values are `0` to `500`, inclusive. (Default: `500`)
        # @param [String] order_by
        #   Sorts list results by a certain order. By default, results are returned in
        #   alphanumerical order based on the resource name. You can also sort results in
        #   descending order based on the creation timestamp using `orderBy="
        #   creationTimestamp desc"`. This sorts results based on the `creationTimestamp`
        #   field in reverse chronological order (newest result first). Use this to sort
        #   resources like operations so that the newest operation is returned first.
        #   Currently, only sorting by `name` or `creationTimestamp desc` is supported.
        # @param [String] page_token
        #   Specifies a page token to use. Set `pageToken` to the `nextPageToken` returned
        #   by a previous list request to get the next page of results.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DeploymentmanagerAlpha::DeploymentsListResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DeploymentmanagerAlpha::DeploymentsListResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_deployments(project, filter: nil, max_results: nil, order_by: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'deploymentmanager/alpha/projects/{project}/global/deployments', options)
          command.response_representation = Google::Apis::DeploymentmanagerAlpha::DeploymentsListResponse::Representation
          command.response_class = Google::Apis::DeploymentmanagerAlpha::DeploymentsListResponse
          command.params['project'] = project unless project.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['maxResults'] = max_results unless max_results.nil?
          command.query['orderBy'] = order_by unless order_by.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Patches a deployment and all of the resources described by the deployment
        # manifest.
        # @param [String] project
        #   The project ID for this request.
        # @param [String] deployment
        #   The name of the deployment for this request.
        # @param [Google::Apis::DeploymentmanagerAlpha::Deployment] deployment_object
        # @param [String] create_policy
        #   Sets the policy to use for creating new resources.
        # @param [String] delete_policy
        #   Sets the policy to use for deleting resources.
        # @param [Boolean] preview
        #   If set to true, updates the deployment and creates and updates the "shell"
        #   resources but does not actually alter or instantiate these resources. This
        #   allows you to preview what your deployment will look like. You can use this
        #   intent to preview how an update would affect your deployment. You must provide
        #   a `target.config` with a configuration if this is set to true. After
        #   previewing a deployment, you can deploy your resources by making a request
        #   with the `update()` or you can `cancelPreview()` to remove the preview
        #   altogether. Note that the deployment will still exist after you cancel the
        #   preview and you must separately delete this deployment if you want to remove
        #   it.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DeploymentmanagerAlpha::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DeploymentmanagerAlpha::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_deployment(project, deployment, deployment_object = nil, create_policy: nil, delete_policy: nil, preview: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'deploymentmanager/alpha/projects/{project}/global/deployments/{deployment}', options)
          command.request_representation = Google::Apis::DeploymentmanagerAlpha::Deployment::Representation
          command.request_object = deployment_object
          command.response_representation = Google::Apis::DeploymentmanagerAlpha::Operation::Representation
          command.response_class = Google::Apis::DeploymentmanagerAlpha::Operation
          command.params['project'] = project unless project.nil?
          command.params['deployment'] = deployment unless deployment.nil?
          command.query['createPolicy'] = create_policy unless create_policy.nil?
          command.query['deletePolicy'] = delete_policy unless delete_policy.nil?
          command.query['preview'] = preview unless preview.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Sets the access control policy on the specified resource. Replaces any
        # existing policy.
        # @param [String] project
        #   Project ID for this request.
        # @param [String] resource
        #   Name or id of the resource for this request.
        # @param [Google::Apis::DeploymentmanagerAlpha::GlobalSetPolicyRequest] global_set_policy_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DeploymentmanagerAlpha::Policy] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DeploymentmanagerAlpha::Policy]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def set_deployment_iam_policy(project, resource, global_set_policy_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'deploymentmanager/alpha/projects/{project}/global/deployments/{resource}/setIamPolicy', options)
          command.request_representation = Google::Apis::DeploymentmanagerAlpha::GlobalSetPolicyRequest::Representation
          command.request_object = global_set_policy_request_object
          command.response_representation = Google::Apis::DeploymentmanagerAlpha::Policy::Representation
          command.response_class = Google::Apis::DeploymentmanagerAlpha::Policy
          command.params['project'] = project unless project.nil?
          command.params['resource'] = resource unless resource.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Stops an ongoing operation. This does not roll back any work that has already
        # been completed, but prevents any new work from being started.
        # @param [String] project
        #   The project ID for this request.
        # @param [String] deployment
        #   The name of the deployment for this request.
        # @param [Google::Apis::DeploymentmanagerAlpha::DeploymentsStopRequest] deployments_stop_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DeploymentmanagerAlpha::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DeploymentmanagerAlpha::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def stop_deployment(project, deployment, deployments_stop_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'deploymentmanager/alpha/projects/{project}/global/deployments/{deployment}/stop', options)
          command.request_representation = Google::Apis::DeploymentmanagerAlpha::DeploymentsStopRequest::Representation
          command.request_object = deployments_stop_request_object
          command.response_representation = Google::Apis::DeploymentmanagerAlpha::Operation::Representation
          command.response_class = Google::Apis::DeploymentmanagerAlpha::Operation
          command.params['project'] = project unless project.nil?
          command.params['deployment'] = deployment unless deployment.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Returns permissions that a caller has on the specified resource.
        # @param [String] project
        #   Project ID for this request.
        # @param [String] resource
        #   Name or id of the resource for this request.
        # @param [Google::Apis::DeploymentmanagerAlpha::TestPermissionsRequest] test_permissions_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DeploymentmanagerAlpha::TestPermissionsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DeploymentmanagerAlpha::TestPermissionsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def test_deployment_iam_permissions(project, resource, test_permissions_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'deploymentmanager/alpha/projects/{project}/global/deployments/{resource}/testIamPermissions', options)
          command.request_representation = Google::Apis::DeploymentmanagerAlpha::TestPermissionsRequest::Representation
          command.request_object = test_permissions_request_object
          command.response_representation = Google::Apis::DeploymentmanagerAlpha::TestPermissionsResponse::Representation
          command.response_class = Google::Apis::DeploymentmanagerAlpha::TestPermissionsResponse
          command.params['project'] = project unless project.nil?
          command.params['resource'] = resource unless resource.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates a deployment and all of the resources described by the deployment
        # manifest.
        # @param [String] project
        #   The project ID for this request.
        # @param [String] deployment
        #   The name of the deployment for this request.
        # @param [Google::Apis::DeploymentmanagerAlpha::Deployment] deployment_object
        # @param [String] create_policy
        #   Sets the policy to use for creating new resources.
        # @param [String] delete_policy
        #   Sets the policy to use for deleting resources.
        # @param [Boolean] preview
        #   If set to true, updates the deployment and creates and updates the "shell"
        #   resources but does not actually alter or instantiate these resources. This
        #   allows you to preview what your deployment will look like. You can use this
        #   intent to preview how an update would affect your deployment. You must provide
        #   a `target.config` with a configuration if this is set to true. After
        #   previewing a deployment, you can deploy your resources by making a request
        #   with the `update()` or you can `cancelPreview()` to remove the preview
        #   altogether. Note that the deployment will still exist after you cancel the
        #   preview and you must separately delete this deployment if you want to remove
        #   it.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DeploymentmanagerAlpha::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DeploymentmanagerAlpha::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def update_deployment(project, deployment, deployment_object = nil, create_policy: nil, delete_policy: nil, preview: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:put, 'deploymentmanager/alpha/projects/{project}/global/deployments/{deployment}', options)
          command.request_representation = Google::Apis::DeploymentmanagerAlpha::Deployment::Representation
          command.request_object = deployment_object
          command.response_representation = Google::Apis::DeploymentmanagerAlpha::Operation::Representation
          command.response_class = Google::Apis::DeploymentmanagerAlpha::Operation
          command.params['project'] = project unless project.nil?
          command.params['deployment'] = deployment unless deployment.nil?
          command.query['createPolicy'] = create_policy unless create_policy.nil?
          command.query['deletePolicy'] = delete_policy unless delete_policy.nil?
          command.query['preview'] = preview unless preview.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
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
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DeploymentmanagerAlpha::Manifest] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DeploymentmanagerAlpha::Manifest]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_manifest(project, deployment, manifest, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'deploymentmanager/alpha/projects/{project}/global/deployments/{deployment}/manifests/{manifest}', options)
          command.response_representation = Google::Apis::DeploymentmanagerAlpha::Manifest::Representation
          command.response_class = Google::Apis::DeploymentmanagerAlpha::Manifest
          command.params['project'] = project unless project.nil?
          command.params['deployment'] = deployment unless deployment.nil?
          command.params['manifest'] = manifest unless manifest.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists all manifests for a given deployment.
        # @param [String] project
        #   The project ID for this request.
        # @param [String] deployment
        #   The name of the deployment for this request.
        # @param [String] filter
        #   A filter expression that filters resources listed in the response. The
        #   expression must specify the field name, a comparison operator, and the value
        #   that you want to use for filtering. The value must be a string, a number, or a
        #   boolean. The comparison operator must be either `=`, `!=`, `>`, or `<`. For
        #   example, if you are filtering Compute Engine instances, you can exclude
        #   instances named `example-instance` by specifying `name != example-instance`.
        #   You can also filter nested fields. For example, you could specify `scheduling.
        #   automaticRestart = false` to include instances only if they are not scheduled
        #   for automatic restarts. You can use filtering on nested fields to filter based
        #   on resource labels. To filter on multiple expressions, provide each separate
        #   expression within parentheses. For example: ``` (scheduling.automaticRestart =
        #   true) (cpuPlatform = "Intel Skylake") ``` By default, each expression is an `
        #   AND` expression. However, you can include `AND` and `OR` expressions
        #   explicitly. For example: ``` (cpuPlatform = "Intel Skylake") OR (cpuPlatform =
        #   "Intel Broadwell") AND (scheduling.automaticRestart = true) ```
        # @param [Fixnum] max_results
        #   The maximum number of results per page that should be returned. If the number
        #   of available results is larger than `maxResults`, Compute Engine returns a `
        #   nextPageToken` that can be used to get the next page of results in subsequent
        #   list requests. Acceptable values are `0` to `500`, inclusive. (Default: `500`)
        # @param [String] order_by
        #   Sorts list results by a certain order. By default, results are returned in
        #   alphanumerical order based on the resource name. You can also sort results in
        #   descending order based on the creation timestamp using `orderBy="
        #   creationTimestamp desc"`. This sorts results based on the `creationTimestamp`
        #   field in reverse chronological order (newest result first). Use this to sort
        #   resources like operations so that the newest operation is returned first.
        #   Currently, only sorting by `name` or `creationTimestamp desc` is supported.
        # @param [String] page_token
        #   Specifies a page token to use. Set `pageToken` to the `nextPageToken` returned
        #   by a previous list request to get the next page of results.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DeploymentmanagerAlpha::ManifestsListResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DeploymentmanagerAlpha::ManifestsListResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_manifests(project, deployment, filter: nil, max_results: nil, order_by: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'deploymentmanager/alpha/projects/{project}/global/deployments/{deployment}/manifests', options)
          command.response_representation = Google::Apis::DeploymentmanagerAlpha::ManifestsListResponse::Representation
          command.response_class = Google::Apis::DeploymentmanagerAlpha::ManifestsListResponse
          command.params['project'] = project unless project.nil?
          command.params['deployment'] = deployment unless deployment.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['maxResults'] = max_results unless max_results.nil?
          command.query['orderBy'] = order_by unless order_by.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
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
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DeploymentmanagerAlpha::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DeploymentmanagerAlpha::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_operation(project, operation, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'deploymentmanager/alpha/projects/{project}/global/operations/{operation}', options)
          command.response_representation = Google::Apis::DeploymentmanagerAlpha::Operation::Representation
          command.response_class = Google::Apis::DeploymentmanagerAlpha::Operation
          command.params['project'] = project unless project.nil?
          command.params['operation'] = operation unless operation.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists all operations for a project.
        # @param [String] project
        #   The project ID for this request.
        # @param [String] filter
        #   A filter expression that filters resources listed in the response. The
        #   expression must specify the field name, a comparison operator, and the value
        #   that you want to use for filtering. The value must be a string, a number, or a
        #   boolean. The comparison operator must be either `=`, `!=`, `>`, or `<`. For
        #   example, if you are filtering Compute Engine instances, you can exclude
        #   instances named `example-instance` by specifying `name != example-instance`.
        #   You can also filter nested fields. For example, you could specify `scheduling.
        #   automaticRestart = false` to include instances only if they are not scheduled
        #   for automatic restarts. You can use filtering on nested fields to filter based
        #   on resource labels. To filter on multiple expressions, provide each separate
        #   expression within parentheses. For example: ``` (scheduling.automaticRestart =
        #   true) (cpuPlatform = "Intel Skylake") ``` By default, each expression is an `
        #   AND` expression. However, you can include `AND` and `OR` expressions
        #   explicitly. For example: ``` (cpuPlatform = "Intel Skylake") OR (cpuPlatform =
        #   "Intel Broadwell") AND (scheduling.automaticRestart = true) ```
        # @param [Fixnum] max_results
        #   The maximum number of results per page that should be returned. If the number
        #   of available results is larger than `maxResults`, Compute Engine returns a `
        #   nextPageToken` that can be used to get the next page of results in subsequent
        #   list requests. Acceptable values are `0` to `500`, inclusive. (Default: `500`)
        # @param [String] order_by
        #   Sorts list results by a certain order. By default, results are returned in
        #   alphanumerical order based on the resource name. You can also sort results in
        #   descending order based on the creation timestamp using `orderBy="
        #   creationTimestamp desc"`. This sorts results based on the `creationTimestamp`
        #   field in reverse chronological order (newest result first). Use this to sort
        #   resources like operations so that the newest operation is returned first.
        #   Currently, only sorting by `name` or `creationTimestamp desc` is supported.
        # @param [String] page_token
        #   Specifies a page token to use. Set `pageToken` to the `nextPageToken` returned
        #   by a previous list request to get the next page of results.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DeploymentmanagerAlpha::OperationsListResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DeploymentmanagerAlpha::OperationsListResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_operations(project, filter: nil, max_results: nil, order_by: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'deploymentmanager/alpha/projects/{project}/global/operations', options)
          command.response_representation = Google::Apis::DeploymentmanagerAlpha::OperationsListResponse::Representation
          command.response_class = Google::Apis::DeploymentmanagerAlpha::OperationsListResponse
          command.params['project'] = project unless project.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['maxResults'] = max_results unless max_results.nil?
          command.query['orderBy'] = order_by unless order_by.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
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
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DeploymentmanagerAlpha::Resource] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DeploymentmanagerAlpha::Resource]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_resource(project, deployment, resource, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'deploymentmanager/alpha/projects/{project}/global/deployments/{deployment}/resources/{resource}', options)
          command.response_representation = Google::Apis::DeploymentmanagerAlpha::Resource::Representation
          command.response_class = Google::Apis::DeploymentmanagerAlpha::Resource
          command.params['project'] = project unless project.nil?
          command.params['deployment'] = deployment unless deployment.nil?
          command.params['resource'] = resource unless resource.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists all resources in a given deployment.
        # @param [String] project
        #   The project ID for this request.
        # @param [String] deployment
        #   The name of the deployment for this request.
        # @param [String] filter
        #   A filter expression that filters resources listed in the response. The
        #   expression must specify the field name, a comparison operator, and the value
        #   that you want to use for filtering. The value must be a string, a number, or a
        #   boolean. The comparison operator must be either `=`, `!=`, `>`, or `<`. For
        #   example, if you are filtering Compute Engine instances, you can exclude
        #   instances named `example-instance` by specifying `name != example-instance`.
        #   You can also filter nested fields. For example, you could specify `scheduling.
        #   automaticRestart = false` to include instances only if they are not scheduled
        #   for automatic restarts. You can use filtering on nested fields to filter based
        #   on resource labels. To filter on multiple expressions, provide each separate
        #   expression within parentheses. For example: ``` (scheduling.automaticRestart =
        #   true) (cpuPlatform = "Intel Skylake") ``` By default, each expression is an `
        #   AND` expression. However, you can include `AND` and `OR` expressions
        #   explicitly. For example: ``` (cpuPlatform = "Intel Skylake") OR (cpuPlatform =
        #   "Intel Broadwell") AND (scheduling.automaticRestart = true) ```
        # @param [Fixnum] max_results
        #   The maximum number of results per page that should be returned. If the number
        #   of available results is larger than `maxResults`, Compute Engine returns a `
        #   nextPageToken` that can be used to get the next page of results in subsequent
        #   list requests. Acceptable values are `0` to `500`, inclusive. (Default: `500`)
        # @param [String] order_by
        #   Sorts list results by a certain order. By default, results are returned in
        #   alphanumerical order based on the resource name. You can also sort results in
        #   descending order based on the creation timestamp using `orderBy="
        #   creationTimestamp desc"`. This sorts results based on the `creationTimestamp`
        #   field in reverse chronological order (newest result first). Use this to sort
        #   resources like operations so that the newest operation is returned first.
        #   Currently, only sorting by `name` or `creationTimestamp desc` is supported.
        # @param [String] page_token
        #   Specifies a page token to use. Set `pageToken` to the `nextPageToken` returned
        #   by a previous list request to get the next page of results.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DeploymentmanagerAlpha::ResourcesListResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DeploymentmanagerAlpha::ResourcesListResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_resources(project, deployment, filter: nil, max_results: nil, order_by: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'deploymentmanager/alpha/projects/{project}/global/deployments/{deployment}/resources', options)
          command.response_representation = Google::Apis::DeploymentmanagerAlpha::ResourcesListResponse::Representation
          command.response_class = Google::Apis::DeploymentmanagerAlpha::ResourcesListResponse
          command.params['project'] = project unless project.nil?
          command.params['deployment'] = deployment unless deployment.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['maxResults'] = max_results unless max_results.nil?
          command.query['orderBy'] = order_by unless order_by.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes a type provider.
        # @param [String] project
        #   The project ID for this request.
        # @param [String] type_provider
        #   The name of the type provider for this request.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DeploymentmanagerAlpha::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DeploymentmanagerAlpha::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_type_provider(project, type_provider, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'deploymentmanager/alpha/projects/{project}/global/typeProviders/{typeProvider}', options)
          command.response_representation = Google::Apis::DeploymentmanagerAlpha::Operation::Representation
          command.response_class = Google::Apis::DeploymentmanagerAlpha::Operation
          command.params['project'] = project unless project.nil?
          command.params['typeProvider'] = type_provider unless type_provider.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets information about a specific type provider.
        # @param [String] project
        #   The project ID for this request.
        # @param [String] type_provider
        #   The name of the type provider for this request.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DeploymentmanagerAlpha::TypeProvider] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DeploymentmanagerAlpha::TypeProvider]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_type_provider(project, type_provider, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'deploymentmanager/alpha/projects/{project}/global/typeProviders/{typeProvider}', options)
          command.response_representation = Google::Apis::DeploymentmanagerAlpha::TypeProvider::Representation
          command.response_class = Google::Apis::DeploymentmanagerAlpha::TypeProvider
          command.params['project'] = project unless project.nil?
          command.params['typeProvider'] = type_provider unless type_provider.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets a type info for a type provided by a TypeProvider.
        # @param [String] project
        #   The project ID for this request.
        # @param [String] type_provider
        #   The name of the type provider for this request.
        # @param [String] type
        #   The name of the type provider type for this request.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DeploymentmanagerAlpha::TypeInfo] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DeploymentmanagerAlpha::TypeInfo]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_type_provider_type(project, type_provider, type, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'deploymentmanager/alpha/projects/{project}/global/typeProviders/{typeProvider}/types/{type}', options)
          command.response_representation = Google::Apis::DeploymentmanagerAlpha::TypeInfo::Representation
          command.response_class = Google::Apis::DeploymentmanagerAlpha::TypeInfo
          command.params['project'] = project unless project.nil?
          command.params['typeProvider'] = type_provider unless type_provider.nil?
          command.params['type'] = type unless type.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a type provider.
        # @param [String] project
        #   The project ID for this request.
        # @param [Google::Apis::DeploymentmanagerAlpha::TypeProvider] type_provider_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DeploymentmanagerAlpha::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DeploymentmanagerAlpha::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def insert_type_provider(project, type_provider_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'deploymentmanager/alpha/projects/{project}/global/typeProviders', options)
          command.request_representation = Google::Apis::DeploymentmanagerAlpha::TypeProvider::Representation
          command.request_object = type_provider_object
          command.response_representation = Google::Apis::DeploymentmanagerAlpha::Operation::Representation
          command.response_class = Google::Apis::DeploymentmanagerAlpha::Operation
          command.params['project'] = project unless project.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists all resource type providers for Deployment Manager.
        # @param [String] project
        #   The project ID for this request.
        # @param [String] filter
        #   A filter expression that filters resources listed in the response. The
        #   expression must specify the field name, a comparison operator, and the value
        #   that you want to use for filtering. The value must be a string, a number, or a
        #   boolean. The comparison operator must be either `=`, `!=`, `>`, or `<`. For
        #   example, if you are filtering Compute Engine instances, you can exclude
        #   instances named `example-instance` by specifying `name != example-instance`.
        #   You can also filter nested fields. For example, you could specify `scheduling.
        #   automaticRestart = false` to include instances only if they are not scheduled
        #   for automatic restarts. You can use filtering on nested fields to filter based
        #   on resource labels. To filter on multiple expressions, provide each separate
        #   expression within parentheses. For example: ``` (scheduling.automaticRestart =
        #   true) (cpuPlatform = "Intel Skylake") ``` By default, each expression is an `
        #   AND` expression. However, you can include `AND` and `OR` expressions
        #   explicitly. For example: ``` (cpuPlatform = "Intel Skylake") OR (cpuPlatform =
        #   "Intel Broadwell") AND (scheduling.automaticRestart = true) ```
        # @param [Fixnum] max_results
        #   The maximum number of results per page that should be returned. If the number
        #   of available results is larger than `maxResults`, Compute Engine returns a `
        #   nextPageToken` that can be used to get the next page of results in subsequent
        #   list requests. Acceptable values are `0` to `500`, inclusive. (Default: `500`)
        # @param [String] order_by
        #   Sorts list results by a certain order. By default, results are returned in
        #   alphanumerical order based on the resource name. You can also sort results in
        #   descending order based on the creation timestamp using `orderBy="
        #   creationTimestamp desc"`. This sorts results based on the `creationTimestamp`
        #   field in reverse chronological order (newest result first). Use this to sort
        #   resources like operations so that the newest operation is returned first.
        #   Currently, only sorting by `name` or `creationTimestamp desc` is supported.
        # @param [String] page_token
        #   Specifies a page token to use. Set `pageToken` to the `nextPageToken` returned
        #   by a previous list request to get the next page of results.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DeploymentmanagerAlpha::TypeProvidersListResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DeploymentmanagerAlpha::TypeProvidersListResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_type_providers(project, filter: nil, max_results: nil, order_by: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'deploymentmanager/alpha/projects/{project}/global/typeProviders', options)
          command.response_representation = Google::Apis::DeploymentmanagerAlpha::TypeProvidersListResponse::Representation
          command.response_class = Google::Apis::DeploymentmanagerAlpha::TypeProvidersListResponse
          command.params['project'] = project unless project.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['maxResults'] = max_results unless max_results.nil?
          command.query['orderBy'] = order_by unless order_by.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists all the type info for a TypeProvider.
        # @param [String] project
        #   The project ID for this request.
        # @param [String] type_provider
        #   The name of the type provider for this request.
        # @param [String] filter
        #   A filter expression that filters resources listed in the response. The
        #   expression must specify the field name, a comparison operator, and the value
        #   that you want to use for filtering. The value must be a string, a number, or a
        #   boolean. The comparison operator must be either `=`, `!=`, `>`, or `<`. For
        #   example, if you are filtering Compute Engine instances, you can exclude
        #   instances named `example-instance` by specifying `name != example-instance`.
        #   You can also filter nested fields. For example, you could specify `scheduling.
        #   automaticRestart = false` to include instances only if they are not scheduled
        #   for automatic restarts. You can use filtering on nested fields to filter based
        #   on resource labels. To filter on multiple expressions, provide each separate
        #   expression within parentheses. For example: ``` (scheduling.automaticRestart =
        #   true) (cpuPlatform = "Intel Skylake") ``` By default, each expression is an `
        #   AND` expression. However, you can include `AND` and `OR` expressions
        #   explicitly. For example: ``` (cpuPlatform = "Intel Skylake") OR (cpuPlatform =
        #   "Intel Broadwell") AND (scheduling.automaticRestart = true) ```
        # @param [Fixnum] max_results
        #   The maximum number of results per page that should be returned. If the number
        #   of available results is larger than `maxResults`, Compute Engine returns a `
        #   nextPageToken` that can be used to get the next page of results in subsequent
        #   list requests. Acceptable values are `0` to `500`, inclusive. (Default: `500`)
        # @param [String] order_by
        #   Sorts list results by a certain order. By default, results are returned in
        #   alphanumerical order based on the resource name. You can also sort results in
        #   descending order based on the creation timestamp using `orderBy="
        #   creationTimestamp desc"`. This sorts results based on the `creationTimestamp`
        #   field in reverse chronological order (newest result first). Use this to sort
        #   resources like operations so that the newest operation is returned first.
        #   Currently, only sorting by `name` or `creationTimestamp desc` is supported.
        # @param [String] page_token
        #   Specifies a page token to use. Set `pageToken` to the `nextPageToken` returned
        #   by a previous list request to get the next page of results.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DeploymentmanagerAlpha::TypeProvidersListTypesResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DeploymentmanagerAlpha::TypeProvidersListTypesResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_type_provider_types(project, type_provider, filter: nil, max_results: nil, order_by: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'deploymentmanager/alpha/projects/{project}/global/typeProviders/{typeProvider}/types', options)
          command.response_representation = Google::Apis::DeploymentmanagerAlpha::TypeProvidersListTypesResponse::Representation
          command.response_class = Google::Apis::DeploymentmanagerAlpha::TypeProvidersListTypesResponse
          command.params['project'] = project unless project.nil?
          command.params['typeProvider'] = type_provider unless type_provider.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['maxResults'] = max_results unless max_results.nil?
          command.query['orderBy'] = order_by unless order_by.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Patches a type provider.
        # @param [String] project
        #   The project ID for this request.
        # @param [String] type_provider
        #   The name of the type provider for this request.
        # @param [Google::Apis::DeploymentmanagerAlpha::TypeProvider] type_provider_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DeploymentmanagerAlpha::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DeploymentmanagerAlpha::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_type_provider(project, type_provider, type_provider_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'deploymentmanager/alpha/projects/{project}/global/typeProviders/{typeProvider}', options)
          command.request_representation = Google::Apis::DeploymentmanagerAlpha::TypeProvider::Representation
          command.request_object = type_provider_object
          command.response_representation = Google::Apis::DeploymentmanagerAlpha::Operation::Representation
          command.response_class = Google::Apis::DeploymentmanagerAlpha::Operation
          command.params['project'] = project unless project.nil?
          command.params['typeProvider'] = type_provider unless type_provider.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates a type provider.
        # @param [String] project
        #   The project ID for this request.
        # @param [String] type_provider
        #   The name of the type provider for this request.
        # @param [Google::Apis::DeploymentmanagerAlpha::TypeProvider] type_provider_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DeploymentmanagerAlpha::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DeploymentmanagerAlpha::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def update_type_provider(project, type_provider, type_provider_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:put, 'deploymentmanager/alpha/projects/{project}/global/typeProviders/{typeProvider}', options)
          command.request_representation = Google::Apis::DeploymentmanagerAlpha::TypeProvider::Representation
          command.request_object = type_provider_object
          command.response_representation = Google::Apis::DeploymentmanagerAlpha::Operation::Representation
          command.response_class = Google::Apis::DeploymentmanagerAlpha::Operation
          command.params['project'] = project unless project.nil?
          command.params['typeProvider'] = type_provider unless type_provider.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets information about a specific type.
        # @param [String] project
        #   The project ID for this request.
        # @param [String] type
        #   The name of the type for this request.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DeploymentmanagerAlpha::Type] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DeploymentmanagerAlpha::Type]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_type(project, type, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'deploymentmanager/alpha/projects/{project}/global/types/{type}', options)
          command.response_representation = Google::Apis::DeploymentmanagerAlpha::Type::Representation
          command.response_class = Google::Apis::DeploymentmanagerAlpha::Type
          command.params['project'] = project unless project.nil?
          command.params['type'] = type unless type.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists all resource types for Deployment Manager.
        # @param [String] project
        #   The project ID for this request.
        # @param [String] filter
        #   A filter expression that filters resources listed in the response. The
        #   expression must specify the field name, a comparison operator, and the value
        #   that you want to use for filtering. The value must be a string, a number, or a
        #   boolean. The comparison operator must be either `=`, `!=`, `>`, or `<`. For
        #   example, if you are filtering Compute Engine instances, you can exclude
        #   instances named `example-instance` by specifying `name != example-instance`.
        #   You can also filter nested fields. For example, you could specify `scheduling.
        #   automaticRestart = false` to include instances only if they are not scheduled
        #   for automatic restarts. You can use filtering on nested fields to filter based
        #   on resource labels. To filter on multiple expressions, provide each separate
        #   expression within parentheses. For example: ``` (scheduling.automaticRestart =
        #   true) (cpuPlatform = "Intel Skylake") ``` By default, each expression is an `
        #   AND` expression. However, you can include `AND` and `OR` expressions
        #   explicitly. For example: ``` (cpuPlatform = "Intel Skylake") OR (cpuPlatform =
        #   "Intel Broadwell") AND (scheduling.automaticRestart = true) ```
        # @param [Fixnum] max_results
        #   The maximum number of results per page that should be returned. If the number
        #   of available results is larger than `maxResults`, Compute Engine returns a `
        #   nextPageToken` that can be used to get the next page of results in subsequent
        #   list requests. Acceptable values are `0` to `500`, inclusive. (Default: `500`)
        # @param [String] order_by
        #   Sorts list results by a certain order. By default, results are returned in
        #   alphanumerical order based on the resource name. You can also sort results in
        #   descending order based on the creation timestamp using `orderBy="
        #   creationTimestamp desc"`. This sorts results based on the `creationTimestamp`
        #   field in reverse chronological order (newest result first). Use this to sort
        #   resources like operations so that the newest operation is returned first.
        #   Currently, only sorting by `name` or `creationTimestamp desc` is supported.
        # @param [String] page_token
        #   Specifies a page token to use. Set `pageToken` to the `nextPageToken` returned
        #   by a previous list request to get the next page of results.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DeploymentmanagerAlpha::TypesListResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DeploymentmanagerAlpha::TypesListResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_types(project, filter: nil, max_results: nil, order_by: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'deploymentmanager/alpha/projects/{project}/global/types', options)
          command.response_representation = Google::Apis::DeploymentmanagerAlpha::TypesListResponse::Representation
          command.response_class = Google::Apis::DeploymentmanagerAlpha::TypesListResponse
          command.params['project'] = project unless project.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['maxResults'] = max_results unless max_results.nil?
          command.query['orderBy'] = order_by unless order_by.nil?
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
