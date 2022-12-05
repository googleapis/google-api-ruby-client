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
    module CloudbuildV1
      # Cloud Build API
      #
      # Creates and manages builds on Google Cloud Platform.
      #
      # @example
      #    require 'google/apis/cloudbuild_v1'
      #
      #    Cloudbuild = Google::Apis::CloudbuildV1 # Alias the module
      #    service = Cloudbuild::CloudBuildService.new
      #
      # @see https://cloud.google.com/cloud-build/docs/
      class CloudBuildService < Google::Apis::Core::BaseService
        # @return [String]
        #  API key. Your API key identifies your project and provides you with API access,
        #  quota, and reports. Required unless you provide an OAuth 2.0 token.
        attr_accessor :key

        # @return [String]
        #  Available to use for quota purposes for server-side applications. Can be any
        #  arbitrary string assigned to a user, but should not exceed 40 characters.
        attr_accessor :quota_user

        def initialize
          super('https://cloudbuild.googleapis.com/', '',
                client_name: 'google-apis-cloudbuild_v1',
                client_version: Google::Apis::CloudbuildV1::GEM_VERSION)
          @batch_path = 'batch'
        end
        
        # ReceiveGitHubDotComWebhook is called when the API receives a github.com
        # webhook.
        # @param [Google::Apis::CloudbuildV1::HttpBody] http_body_object
        # @param [String] webhook_key
        #   For GitHub Enterprise webhooks, this key is used to associate the webhook
        #   request with the GitHubEnterpriseConfig to use for validation.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::CloudbuildV1::Empty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::CloudbuildV1::Empty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def receive_github_dot_com_webhook(http_body_object = nil, webhook_key: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/githubDotComWebhook:receive', options)
          command.request_representation = Google::Apis::CloudbuildV1::HttpBody::Representation
          command.request_object = http_body_object
          command.response_representation = Google::Apis::CloudbuildV1::Empty::Representation
          command.response_class = Google::Apis::CloudbuildV1::Empty
          command.query['webhookKey'] = webhook_key unless webhook_key.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # ReceiveRegionalWebhook is called when the API receives a regional GitHub
        # webhook.
        # @param [String] location
        #   Required. The location where the webhook should be sent.
        # @param [Google::Apis::CloudbuildV1::HttpBody] http_body_object
        # @param [String] webhook_key
        #   For GitHub Enterprise webhooks, this key is used to associate the webhook
        #   request with the GitHubEnterpriseConfig to use for validation.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::CloudbuildV1::Empty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::CloudbuildV1::Empty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def regional_location_webhook(location, http_body_object = nil, webhook_key: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+location}/regionalWebhook', options)
          command.request_representation = Google::Apis::CloudbuildV1::HttpBody::Representation
          command.request_object = http_body_object
          command.response_representation = Google::Apis::CloudbuildV1::Empty::Representation
          command.response_class = Google::Apis::CloudbuildV1::Empty
          command.params['location'] = location unless location.nil?
          command.query['webhookKey'] = webhook_key unless webhook_key.nil?
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
        # @param [Google::Apis::CloudbuildV1::CancelOperationRequest] cancel_operation_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::CloudbuildV1::Empty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::CloudbuildV1::Empty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def cancel_operation(name, cancel_operation_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+name}:cancel', options)
          command.request_representation = Google::Apis::CloudbuildV1::CancelOperationRequest::Representation
          command.request_object = cancel_operation_request_object
          command.response_representation = Google::Apis::CloudbuildV1::Empty::Representation
          command.response_class = Google::Apis::CloudbuildV1::Empty
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
        # @yieldparam result [Google::Apis::CloudbuildV1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::CloudbuildV1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_operation(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}', options)
          command.response_representation = Google::Apis::CloudbuildV1::Operation::Representation
          command.response_class = Google::Apis::CloudbuildV1::Operation
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Approves or rejects a pending build. If approved, the returned LRO will be
        # analogous to the LRO returned from a CreateBuild call. If rejected, the
        # returned LRO will be immediately done.
        # @param [String] name
        #   Required. Name of the target build. For example: "projects/`$project_id`/
        #   builds/`$build_id`"
        # @param [Google::Apis::CloudbuildV1::ApproveBuildRequest] approve_build_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::CloudbuildV1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::CloudbuildV1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def approve_project_build(name, approve_build_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+name}:approve', options)
          command.request_representation = Google::Apis::CloudbuildV1::ApproveBuildRequest::Representation
          command.request_object = approve_build_request_object
          command.response_representation = Google::Apis::CloudbuildV1::Operation::Representation
          command.response_class = Google::Apis::CloudbuildV1::Operation
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Cancels a build in progress.
        # @param [String] project_id
        #   Required. ID of the project.
        # @param [String] id
        #   Required. ID of the build.
        # @param [Google::Apis::CloudbuildV1::CancelBuildRequest] cancel_build_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::CloudbuildV1::Build] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::CloudbuildV1::Build]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def cancel_build(project_id, id, cancel_build_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/projects/{projectId}/builds/{id}:cancel', options)
          command.request_representation = Google::Apis::CloudbuildV1::CancelBuildRequest::Representation
          command.request_object = cancel_build_request_object
          command.response_representation = Google::Apis::CloudbuildV1::Build::Representation
          command.response_class = Google::Apis::CloudbuildV1::Build
          command.params['projectId'] = project_id unless project_id.nil?
          command.params['id'] = id unless id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Starts a build with the specified configuration. This method returns a long-
        # running `Operation`, which includes the build ID. Pass the build ID to `
        # GetBuild` to determine the build status (such as `SUCCESS` or `FAILURE`).
        # @param [String] project_id
        #   Required. ID of the project.
        # @param [Google::Apis::CloudbuildV1::Build] build_object
        # @param [String] parent
        #   The parent resource where this build will be created. Format: `projects/`
        #   project`/locations/`location``
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::CloudbuildV1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::CloudbuildV1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_build(project_id, build_object = nil, parent: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/projects/{projectId}/builds', options)
          command.request_representation = Google::Apis::CloudbuildV1::Build::Representation
          command.request_object = build_object
          command.response_representation = Google::Apis::CloudbuildV1::Operation::Representation
          command.response_class = Google::Apis::CloudbuildV1::Operation
          command.params['projectId'] = project_id unless project_id.nil?
          command.query['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Returns information about a previously requested build. The `Build` that is
        # returned includes its status (such as `SUCCESS`, `FAILURE`, or `WORKING`), and
        # timing information.
        # @param [String] project_id
        #   Required. ID of the project.
        # @param [String] id
        #   Required. ID of the build.
        # @param [String] name
        #   The name of the `Build` to retrieve. Format: `projects/`project`/locations/`
        #   location`/builds/`build``
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::CloudbuildV1::Build] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::CloudbuildV1::Build]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_build(project_id, id, name: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/projects/{projectId}/builds/{id}', options)
          command.response_representation = Google::Apis::CloudbuildV1::Build::Representation
          command.response_class = Google::Apis::CloudbuildV1::Build
          command.params['projectId'] = project_id unless project_id.nil?
          command.params['id'] = id unless id.nil?
          command.query['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists previously requested builds. Previously requested builds may still be in-
        # progress, or may have finished successfully or unsuccessfully.
        # @param [String] project_id
        #   Required. ID of the project.
        # @param [String] filter
        #   The raw filter text to constrain the results.
        # @param [Fixnum] page_size
        #   Number of results to return in the list.
        # @param [String] page_token
        #   The page token for the next page of Builds. If unspecified, the first page of
        #   results is returned. If the token is rejected for any reason, INVALID_ARGUMENT
        #   will be thrown. In this case, the token should be discarded, and pagination
        #   should be restarted from the first page of results. See https://google.aip.dev/
        #   158 for more.
        # @param [String] parent
        #   The parent of the collection of `Builds`. Format: `projects/`project`/
        #   locations/`location``
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::CloudbuildV1::ListBuildsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::CloudbuildV1::ListBuildsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_builds(project_id, filter: nil, page_size: nil, page_token: nil, parent: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/projects/{projectId}/builds', options)
          command.response_representation = Google::Apis::CloudbuildV1::ListBuildsResponse::Representation
          command.response_class = Google::Apis::CloudbuildV1::ListBuildsResponse
          command.params['projectId'] = project_id unless project_id.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a new build based on the specified build. This method creates a new
        # build using the original build request, which may or may not result in an
        # identical build. For triggered builds: * Triggered builds resolve to a precise
        # revision; therefore a retry of a triggered build will result in a build that
        # uses the same revision. For non-triggered builds that specify `RepoSource`: *
        # If the original build built from the tip of a branch, the retried build will
        # build from the tip of that branch, which may not be the same revision as the
        # original build. * If the original build specified a commit sha or revision ID,
        # the retried build will use the identical source. For builds that specify `
        # StorageSource`: * If the original build pulled source from Google Cloud
        # Storage without specifying the generation of the object, the new build will
        # use the current object, which may be different from the original build source.
        # * If the original build pulled source from Cloud Storage and specified the
        # generation of the object, the new build will attempt to use the same object,
        # which may or may not be available depending on the bucket's lifecycle
        # management settings.
        # @param [String] project_id
        #   Required. ID of the project.
        # @param [String] id
        #   Required. Build ID of the original build.
        # @param [Google::Apis::CloudbuildV1::RetryBuildRequest] retry_build_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::CloudbuildV1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::CloudbuildV1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def retry_build(project_id, id, retry_build_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/projects/{projectId}/builds/{id}:retry', options)
          command.request_representation = Google::Apis::CloudbuildV1::RetryBuildRequest::Representation
          command.request_object = retry_build_request_object
          command.response_representation = Google::Apis::CloudbuildV1::Operation::Representation
          command.response_class = Google::Apis::CloudbuildV1::Operation
          command.params['projectId'] = project_id unless project_id.nil?
          command.params['id'] = id unless id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Create an association between a GCP project and a GitHub Enterprise server.
        # @param [String] parent
        #   Name of the parent project. For example: projects/`$project_number` or
        #   projects/`$project_id`
        # @param [Google::Apis::CloudbuildV1::GitHubEnterpriseConfig] git_hub_enterprise_config_object
        # @param [String] ghe_config_id
        #   Optional. The ID to use for the GithubEnterpriseConfig, which will become the
        #   final component of the GithubEnterpriseConfig's resource name. ghe_config_id
        #   must meet the following requirements: + They must contain only alphanumeric
        #   characters and dashes. + They can be 1-64 characters long. + They must begin
        #   and end with an alphanumeric character
        # @param [String] project_id
        #   ID of the project.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::CloudbuildV1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::CloudbuildV1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_github_enterprise_config(parent, git_hub_enterprise_config_object = nil, ghe_config_id: nil, project_id: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+parent}/githubEnterpriseConfigs', options)
          command.request_representation = Google::Apis::CloudbuildV1::GitHubEnterpriseConfig::Representation
          command.request_object = git_hub_enterprise_config_object
          command.response_representation = Google::Apis::CloudbuildV1::Operation::Representation
          command.response_class = Google::Apis::CloudbuildV1::Operation
          command.params['parent'] = parent unless parent.nil?
          command.query['gheConfigId'] = ghe_config_id unless ghe_config_id.nil?
          command.query['projectId'] = project_id unless project_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Delete an association between a GCP project and a GitHub Enterprise server.
        # @param [String] name
        #   This field should contain the name of the enterprise config resource. For
        #   example: "projects/`$project_id`/locations/`$location_id`/
        #   githubEnterpriseConfigs/`$config_id`"
        # @param [String] config_id
        #   Unique identifier of the `GitHubEnterpriseConfig`
        # @param [String] project_id
        #   ID of the project
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::CloudbuildV1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::CloudbuildV1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_github_enterprise_config(name, config_id: nil, project_id: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1/{+name}', options)
          command.response_representation = Google::Apis::CloudbuildV1::Operation::Representation
          command.response_class = Google::Apis::CloudbuildV1::Operation
          command.params['name'] = name unless name.nil?
          command.query['configId'] = config_id unless config_id.nil?
          command.query['projectId'] = project_id unless project_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Retrieve a GitHubEnterpriseConfig.
        # @param [String] name
        #   This field should contain the name of the enterprise config resource. For
        #   example: "projects/`$project_id`/locations/`$location_id`/
        #   githubEnterpriseConfigs/`$config_id`"
        # @param [String] config_id
        #   Unique identifier of the `GitHubEnterpriseConfig`
        # @param [String] project_id
        #   ID of the project
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::CloudbuildV1::GitHubEnterpriseConfig] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::CloudbuildV1::GitHubEnterpriseConfig]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_github_enterprise_config(name, config_id: nil, project_id: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}', options)
          command.response_representation = Google::Apis::CloudbuildV1::GitHubEnterpriseConfig::Representation
          command.response_class = Google::Apis::CloudbuildV1::GitHubEnterpriseConfig
          command.params['name'] = name unless name.nil?
          command.query['configId'] = config_id unless config_id.nil?
          command.query['projectId'] = project_id unless project_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # List all GitHubEnterpriseConfigs for a given project.
        # @param [String] parent
        #   Name of the parent project. For example: projects/`$project_number` or
        #   projects/`$project_id`
        # @param [String] project_id
        #   ID of the project
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::CloudbuildV1::ListGithubEnterpriseConfigsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::CloudbuildV1::ListGithubEnterpriseConfigsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_github_enterprise_configs(parent, project_id: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+parent}/githubEnterpriseConfigs', options)
          command.response_representation = Google::Apis::CloudbuildV1::ListGithubEnterpriseConfigsResponse::Representation
          command.response_class = Google::Apis::CloudbuildV1::ListGithubEnterpriseConfigsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['projectId'] = project_id unless project_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Update an association between a GCP project and a GitHub Enterprise server.
        # @param [String] name
        #   Optional. The full resource name for the GitHubEnterpriseConfig For example: "
        #   projects/`$project_id`/locations/`$location_id`/githubEnterpriseConfigs/`$
        #   config_id`"
        # @param [Google::Apis::CloudbuildV1::GitHubEnterpriseConfig] git_hub_enterprise_config_object
        # @param [String] update_mask
        #   Update mask for the resource. If this is set, the server will only update the
        #   fields specified in the field mask. Otherwise, a full update of the mutable
        #   resource fields will be performed.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::CloudbuildV1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::CloudbuildV1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_project_github_enterprise_config(name, git_hub_enterprise_config_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v1/{+name}', options)
          command.request_representation = Google::Apis::CloudbuildV1::GitHubEnterpriseConfig::Representation
          command.request_object = git_hub_enterprise_config_object
          command.response_representation = Google::Apis::CloudbuildV1::Operation::Representation
          command.response_class = Google::Apis::CloudbuildV1::Operation
          command.params['name'] = name unless name.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a new `BitbucketServerConfig`. This API is experimental.
        # @param [String] parent
        #   Required. Name of the parent resource.
        # @param [Google::Apis::CloudbuildV1::BitbucketServerConfig] bitbucket_server_config_object
        # @param [String] bitbucket_server_config_id
        #   Optional. The ID to use for the BitbucketServerConfig, which will become the
        #   final component of the BitbucketServerConfig's resource name.
        #   bitbucket_server_config_id must meet the following requirements: + They must
        #   contain only alphanumeric characters and dashes. + They can be 1-64 characters
        #   long. + They must begin and end with an alphanumeric character.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::CloudbuildV1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::CloudbuildV1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_location_bitbucket_server_config(parent, bitbucket_server_config_object = nil, bitbucket_server_config_id: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+parent}/bitbucketServerConfigs', options)
          command.request_representation = Google::Apis::CloudbuildV1::BitbucketServerConfig::Representation
          command.request_object = bitbucket_server_config_object
          command.response_representation = Google::Apis::CloudbuildV1::Operation::Representation
          command.response_class = Google::Apis::CloudbuildV1::Operation
          command.params['parent'] = parent unless parent.nil?
          command.query['bitbucketServerConfigId'] = bitbucket_server_config_id unless bitbucket_server_config_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Delete a `BitbucketServerConfig`. This API is experimental.
        # @param [String] name
        #   Required. The config resource name.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::CloudbuildV1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::CloudbuildV1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_location_bitbucket_server_config(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1/{+name}', options)
          command.response_representation = Google::Apis::CloudbuildV1::Operation::Representation
          command.response_class = Google::Apis::CloudbuildV1::Operation
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Retrieve a `BitbucketServerConfig`. This API is experimental.
        # @param [String] name
        #   Required. The config resource name.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::CloudbuildV1::BitbucketServerConfig] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::CloudbuildV1::BitbucketServerConfig]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_bitbucket_server_config(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}', options)
          command.response_representation = Google::Apis::CloudbuildV1::BitbucketServerConfig::Representation
          command.response_class = Google::Apis::CloudbuildV1::BitbucketServerConfig
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # List all `BitbucketServerConfigs` for a given project. This API is
        # experimental.
        # @param [String] parent
        #   Required. Name of the parent resource.
        # @param [Fixnum] page_size
        #   The maximum number of configs to return. The service may return fewer than
        #   this value. If unspecified, at most 50 configs will be returned. The maximum
        #   value is 1000; values above 1000 will be coerced to 1000.
        # @param [String] page_token
        #   A page token, received from a previous `ListBitbucketServerConfigsRequest`
        #   call. Provide this to retrieve the subsequent page. When paginating, all other
        #   parameters provided to `ListBitbucketServerConfigsRequest` must match the call
        #   that provided the page token.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::CloudbuildV1::ListBitbucketServerConfigsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::CloudbuildV1::ListBitbucketServerConfigsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_bitbucket_server_configs(parent, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+parent}/bitbucketServerConfigs', options)
          command.response_representation = Google::Apis::CloudbuildV1::ListBitbucketServerConfigsResponse::Representation
          command.response_class = Google::Apis::CloudbuildV1::ListBitbucketServerConfigsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates an existing `BitbucketServerConfig`. This API is experimental.
        # @param [String] name
        #   The resource name for the config.
        # @param [Google::Apis::CloudbuildV1::BitbucketServerConfig] bitbucket_server_config_object
        # @param [String] update_mask
        #   Update mask for the resource. If this is set, the server will only update the
        #   fields specified in the field mask. Otherwise, a full update of the mutable
        #   resource fields will be performed.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::CloudbuildV1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::CloudbuildV1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_project_location_bitbucket_server_config(name, bitbucket_server_config_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v1/{+name}', options)
          command.request_representation = Google::Apis::CloudbuildV1::BitbucketServerConfig::Representation
          command.request_object = bitbucket_server_config_object
          command.response_representation = Google::Apis::CloudbuildV1::Operation::Representation
          command.response_class = Google::Apis::CloudbuildV1::Operation
          command.params['name'] = name unless name.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Remove a Bitbucket Server repository from a given BitbucketServerConfig's
        # connected repositories. This API is experimental.
        # @param [String] config
        #   Required. The name of the `BitbucketServerConfig` to remove a connected
        #   repository. Format: `projects/`project`/locations/`location`/
        #   bitbucketServerConfigs/`config``
        # @param [Google::Apis::CloudbuildV1::RemoveBitbucketServerConnectedRepositoryRequest] remove_bitbucket_server_connected_repository_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::CloudbuildV1::Empty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::CloudbuildV1::Empty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def remove_bitbucket_server_config_bitbucket_server_connected_repository(config, remove_bitbucket_server_connected_repository_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+config}:removeBitbucketServerConnectedRepository', options)
          command.request_representation = Google::Apis::CloudbuildV1::RemoveBitbucketServerConnectedRepositoryRequest::Representation
          command.request_object = remove_bitbucket_server_connected_repository_request_object
          command.response_representation = Google::Apis::CloudbuildV1::Empty::Representation
          command.response_class = Google::Apis::CloudbuildV1::Empty
          command.params['config'] = config unless config.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Batch connecting Bitbucket Server repositories to Cloud Build.
        # @param [String] parent
        #   The name of the `BitbucketServerConfig` that added connected repository.
        #   Format: `projects/`project`/locations/`location`/bitbucketServerConfigs/`
        #   config``
        # @param [Google::Apis::CloudbuildV1::BatchCreateBitbucketServerConnectedRepositoriesRequest] batch_create_bitbucket_server_connected_repositories_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::CloudbuildV1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::CloudbuildV1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def batch_connected_repository_create_bitbucket_server_connected_repositories(parent, batch_create_bitbucket_server_connected_repositories_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+parent}/connectedRepositories:batchCreate', options)
          command.request_representation = Google::Apis::CloudbuildV1::BatchCreateBitbucketServerConnectedRepositoriesRequest::Representation
          command.request_object = batch_create_bitbucket_server_connected_repositories_request_object
          command.response_representation = Google::Apis::CloudbuildV1::Operation::Representation
          command.response_class = Google::Apis::CloudbuildV1::Operation
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # List all repositories for a given `BitbucketServerConfig`. This API is
        # experimental.
        # @param [String] parent
        #   Required. Name of the parent resource.
        # @param [Fixnum] page_size
        #   The maximum number of configs to return. The service may return fewer than
        #   this value. The maximum value is 1000; values above 1000 will be coerced to
        #   1000.
        # @param [String] page_token
        #   A page token, received from a previous `ListBitbucketServerRepositoriesRequest`
        #   call. Provide this to retrieve the subsequent page. When paginating, all
        #   other parameters provided to `ListBitbucketServerConfigsRequest` must match
        #   the call that provided the page token.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::CloudbuildV1::ListBitbucketServerRepositoriesResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::CloudbuildV1::ListBitbucketServerRepositoriesResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_bitbucket_server_config_repos(parent, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+parent}/repos', options)
          command.response_representation = Google::Apis::CloudbuildV1::ListBitbucketServerRepositoriesResponse::Representation
          command.response_class = Google::Apis::CloudbuildV1::ListBitbucketServerRepositoriesResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Approves or rejects a pending build. If approved, the returned LRO will be
        # analogous to the LRO returned from a CreateBuild call. If rejected, the
        # returned LRO will be immediately done.
        # @param [String] name
        #   Required. Name of the target build. For example: "projects/`$project_id`/
        #   builds/`$build_id`"
        # @param [Google::Apis::CloudbuildV1::ApproveBuildRequest] approve_build_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::CloudbuildV1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::CloudbuildV1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def approve_project_location_build(name, approve_build_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+name}:approve', options)
          command.request_representation = Google::Apis::CloudbuildV1::ApproveBuildRequest::Representation
          command.request_object = approve_build_request_object
          command.response_representation = Google::Apis::CloudbuildV1::Operation::Representation
          command.response_class = Google::Apis::CloudbuildV1::Operation
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Cancels a build in progress.
        # @param [String] name
        #   The name of the `Build` to cancel. Format: `projects/`project`/locations/`
        #   location`/builds/`build``
        # @param [Google::Apis::CloudbuildV1::CancelBuildRequest] cancel_build_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::CloudbuildV1::Build] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::CloudbuildV1::Build]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def cancel_project_location_build(name, cancel_build_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+name}:cancel', options)
          command.request_representation = Google::Apis::CloudbuildV1::CancelBuildRequest::Representation
          command.request_object = cancel_build_request_object
          command.response_representation = Google::Apis::CloudbuildV1::Build::Representation
          command.response_class = Google::Apis::CloudbuildV1::Build
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Starts a build with the specified configuration. This method returns a long-
        # running `Operation`, which includes the build ID. Pass the build ID to `
        # GetBuild` to determine the build status (such as `SUCCESS` or `FAILURE`).
        # @param [String] parent
        #   The parent resource where this build will be created. Format: `projects/`
        #   project`/locations/`location``
        # @param [Google::Apis::CloudbuildV1::Build] build_object
        # @param [String] project_id
        #   Required. ID of the project.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::CloudbuildV1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::CloudbuildV1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_build(parent, build_object = nil, project_id: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+parent}/builds', options)
          command.request_representation = Google::Apis::CloudbuildV1::Build::Representation
          command.request_object = build_object
          command.response_representation = Google::Apis::CloudbuildV1::Operation::Representation
          command.response_class = Google::Apis::CloudbuildV1::Operation
          command.params['parent'] = parent unless parent.nil?
          command.query['projectId'] = project_id unless project_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Returns information about a previously requested build. The `Build` that is
        # returned includes its status (such as `SUCCESS`, `FAILURE`, or `WORKING`), and
        # timing information.
        # @param [String] name
        #   The name of the `Build` to retrieve. Format: `projects/`project`/locations/`
        #   location`/builds/`build``
        # @param [String] id
        #   Required. ID of the build.
        # @param [String] project_id
        #   Required. ID of the project.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::CloudbuildV1::Build] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::CloudbuildV1::Build]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_build(name, id: nil, project_id: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}', options)
          command.response_representation = Google::Apis::CloudbuildV1::Build::Representation
          command.response_class = Google::Apis::CloudbuildV1::Build
          command.params['name'] = name unless name.nil?
          command.query['id'] = id unless id.nil?
          command.query['projectId'] = project_id unless project_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists previously requested builds. Previously requested builds may still be in-
        # progress, or may have finished successfully or unsuccessfully.
        # @param [String] parent
        #   The parent of the collection of `Builds`. Format: `projects/`project`/
        #   locations/`location``
        # @param [String] filter
        #   The raw filter text to constrain the results.
        # @param [Fixnum] page_size
        #   Number of results to return in the list.
        # @param [String] page_token
        #   The page token for the next page of Builds. If unspecified, the first page of
        #   results is returned. If the token is rejected for any reason, INVALID_ARGUMENT
        #   will be thrown. In this case, the token should be discarded, and pagination
        #   should be restarted from the first page of results. See https://google.aip.dev/
        #   158 for more.
        # @param [String] project_id
        #   Required. ID of the project.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::CloudbuildV1::ListBuildsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::CloudbuildV1::ListBuildsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_builds(parent, filter: nil, page_size: nil, page_token: nil, project_id: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+parent}/builds', options)
          command.response_representation = Google::Apis::CloudbuildV1::ListBuildsResponse::Representation
          command.response_class = Google::Apis::CloudbuildV1::ListBuildsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['projectId'] = project_id unless project_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a new build based on the specified build. This method creates a new
        # build using the original build request, which may or may not result in an
        # identical build. For triggered builds: * Triggered builds resolve to a precise
        # revision; therefore a retry of a triggered build will result in a build that
        # uses the same revision. For non-triggered builds that specify `RepoSource`: *
        # If the original build built from the tip of a branch, the retried build will
        # build from the tip of that branch, which may not be the same revision as the
        # original build. * If the original build specified a commit sha or revision ID,
        # the retried build will use the identical source. For builds that specify `
        # StorageSource`: * If the original build pulled source from Google Cloud
        # Storage without specifying the generation of the object, the new build will
        # use the current object, which may be different from the original build source.
        # * If the original build pulled source from Cloud Storage and specified the
        # generation of the object, the new build will attempt to use the same object,
        # which may or may not be available depending on the bucket's lifecycle
        # management settings.
        # @param [String] name
        #   The name of the `Build` to retry. Format: `projects/`project`/locations/`
        #   location`/builds/`build``
        # @param [Google::Apis::CloudbuildV1::RetryBuildRequest] retry_build_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::CloudbuildV1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::CloudbuildV1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def retry_project_location_build(name, retry_build_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+name}:retry', options)
          command.request_representation = Google::Apis::CloudbuildV1::RetryBuildRequest::Representation
          command.request_object = retry_build_request_object
          command.response_representation = Google::Apis::CloudbuildV1::Operation::Representation
          command.response_class = Google::Apis::CloudbuildV1::Operation
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a new `GitLabConfig`. This API is experimental
        # @param [String] parent
        #   Required. Name of the parent resource.
        # @param [Google::Apis::CloudbuildV1::GitLabConfig] git_lab_config_object
        # @param [String] gitlab_config_id
        #   Optional. The ID to use for the GitLabConfig, which will become the final
        #   component of the GitLabConfig’s resource name. gitlab_config_id must meet the
        #   following requirements: + They must contain only alphanumeric characters and
        #   dashes. + They can be 1-64 characters long. + They must begin and end with an
        #   alphanumeric character
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::CloudbuildV1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::CloudbuildV1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_location_git_lab_config(parent, git_lab_config_object = nil, gitlab_config_id: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+parent}/gitLabConfigs', options)
          command.request_representation = Google::Apis::CloudbuildV1::GitLabConfig::Representation
          command.request_object = git_lab_config_object
          command.response_representation = Google::Apis::CloudbuildV1::Operation::Representation
          command.response_class = Google::Apis::CloudbuildV1::Operation
          command.params['parent'] = parent unless parent.nil?
          command.query['gitlabConfigId'] = gitlab_config_id unless gitlab_config_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Delete a `GitLabConfig`. This API is experimental
        # @param [String] name
        #   Required. The config resource name.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::CloudbuildV1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::CloudbuildV1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_location_git_lab_config(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1/{+name}', options)
          command.response_representation = Google::Apis::CloudbuildV1::Operation::Representation
          command.response_class = Google::Apis::CloudbuildV1::Operation
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Retrieves a `GitLabConfig`. This API is experimental
        # @param [String] name
        #   Required. The config resource name.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::CloudbuildV1::GitLabConfig] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::CloudbuildV1::GitLabConfig]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_git_lab_config(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}', options)
          command.response_representation = Google::Apis::CloudbuildV1::GitLabConfig::Representation
          command.response_class = Google::Apis::CloudbuildV1::GitLabConfig
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # List all `GitLabConfigs` for a given project. This API is experimental
        # @param [String] parent
        #   Required. Name of the parent resource
        # @param [Fixnum] page_size
        #   The maximum number of configs to return. The service may return fewer than
        #   this value. If unspecified, at most 50 configs will be returned. The maximum
        #   value is 1000;, values above 1000 will be coerced to 1000.
        # @param [String] page_token
        #   A page token, received from a previous ‘ListGitlabConfigsRequest’ call.
        #   Provide this to retrieve the subsequent page. When paginating, all other
        #   parameters provided to ‘ListGitlabConfigsRequest’ must match the call that
        #   provided the page token.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::CloudbuildV1::ListGitLabConfigsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::CloudbuildV1::ListGitLabConfigsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_git_lab_configs(parent, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+parent}/gitLabConfigs', options)
          command.response_representation = Google::Apis::CloudbuildV1::ListGitLabConfigsResponse::Representation
          command.response_class = Google::Apis::CloudbuildV1::ListGitLabConfigsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates an existing `GitLabConfig`. This API is experimental
        # @param [String] name
        #   The resource name for the config.
        # @param [Google::Apis::CloudbuildV1::GitLabConfig] git_lab_config_object
        # @param [String] update_mask
        #   Update mask for the resource. If this is set, the server will only update the
        #   fields specified in the field mask. Otherwise, a full update of the mutable
        #   resource fields will be performed.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::CloudbuildV1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::CloudbuildV1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_project_location_git_lab_config(name, git_lab_config_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v1/{+name}', options)
          command.request_representation = Google::Apis::CloudbuildV1::GitLabConfig::Representation
          command.request_object = git_lab_config_object
          command.response_representation = Google::Apis::CloudbuildV1::Operation::Representation
          command.response_class = Google::Apis::CloudbuildV1::Operation
          command.params['name'] = name unless name.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Remove a GitLab repository from a given GitLabConfig's connected repositories.
        # This API is experimental.
        # @param [String] config
        #   Required. The name of the `GitLabConfig` to remove a connected repository.
        #   Format: `projects/`project`/locations/`location`/gitLabConfigs/`config``
        # @param [Google::Apis::CloudbuildV1::RemoveGitLabConnectedRepositoryRequest] remove_git_lab_connected_repository_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::CloudbuildV1::Empty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::CloudbuildV1::Empty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def remove_git_lab_config_git_lab_connected_repository(config, remove_git_lab_connected_repository_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+config}:removeGitLabConnectedRepository', options)
          command.request_representation = Google::Apis::CloudbuildV1::RemoveGitLabConnectedRepositoryRequest::Representation
          command.request_object = remove_git_lab_connected_repository_request_object
          command.response_representation = Google::Apis::CloudbuildV1::Empty::Representation
          command.response_class = Google::Apis::CloudbuildV1::Empty
          command.params['config'] = config unless config.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Batch connecting GitLab repositories to Cloud Build. This API is experimental.
        # @param [String] parent
        #   The name of the `GitLabConfig` that adds connected repositories. Format: `
        #   projects/`project`/locations/`location`/gitLabConfigs/`config``
        # @param [Google::Apis::CloudbuildV1::BatchCreateGitLabConnectedRepositoriesRequest] batch_create_git_lab_connected_repositories_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::CloudbuildV1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::CloudbuildV1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def batch_connected_repository_create_git_lab_connected_repositories(parent, batch_create_git_lab_connected_repositories_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+parent}/connectedRepositories:batchCreate', options)
          command.request_representation = Google::Apis::CloudbuildV1::BatchCreateGitLabConnectedRepositoriesRequest::Representation
          command.request_object = batch_create_git_lab_connected_repositories_request_object
          command.response_representation = Google::Apis::CloudbuildV1::Operation::Representation
          command.response_class = Google::Apis::CloudbuildV1::Operation
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # List all repositories for a given `GitLabConfig`. This API is experimental
        # @param [String] parent
        #   Required. Name of the parent resource.
        # @param [Fixnum] page_size
        #   The maximum number of repositories to return. The service may return fewer
        #   than this value.
        # @param [String] page_token
        #   A page token, received from a previous ListGitLabRepositoriesRequest` call.
        #   Provide this to retrieve the subsequent page. When paginating, all other
        #   parameters provided to `ListGitLabRepositoriesRequest` must match the call
        #   that provided the page token.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::CloudbuildV1::ListGitLabRepositoriesResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::CloudbuildV1::ListGitLabRepositoriesResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_git_lab_config_repos(parent, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+parent}/repos', options)
          command.response_representation = Google::Apis::CloudbuildV1::ListGitLabRepositoriesResponse::Representation
          command.response_class = Google::Apis::CloudbuildV1::ListGitLabRepositoriesResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Create an association between a GCP project and a GitHub Enterprise server.
        # @param [String] parent
        #   Name of the parent project. For example: projects/`$project_number` or
        #   projects/`$project_id`
        # @param [Google::Apis::CloudbuildV1::GitHubEnterpriseConfig] git_hub_enterprise_config_object
        # @param [String] ghe_config_id
        #   Optional. The ID to use for the GithubEnterpriseConfig, which will become the
        #   final component of the GithubEnterpriseConfig's resource name. ghe_config_id
        #   must meet the following requirements: + They must contain only alphanumeric
        #   characters and dashes. + They can be 1-64 characters long. + They must begin
        #   and end with an alphanumeric character
        # @param [String] project_id
        #   ID of the project.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::CloudbuildV1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::CloudbuildV1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_location_github_enterprise_config(parent, git_hub_enterprise_config_object = nil, ghe_config_id: nil, project_id: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+parent}/githubEnterpriseConfigs', options)
          command.request_representation = Google::Apis::CloudbuildV1::GitHubEnterpriseConfig::Representation
          command.request_object = git_hub_enterprise_config_object
          command.response_representation = Google::Apis::CloudbuildV1::Operation::Representation
          command.response_class = Google::Apis::CloudbuildV1::Operation
          command.params['parent'] = parent unless parent.nil?
          command.query['gheConfigId'] = ghe_config_id unless ghe_config_id.nil?
          command.query['projectId'] = project_id unless project_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Delete an association between a GCP project and a GitHub Enterprise server.
        # @param [String] name
        #   This field should contain the name of the enterprise config resource. For
        #   example: "projects/`$project_id`/locations/`$location_id`/
        #   githubEnterpriseConfigs/`$config_id`"
        # @param [String] config_id
        #   Unique identifier of the `GitHubEnterpriseConfig`
        # @param [String] project_id
        #   ID of the project
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::CloudbuildV1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::CloudbuildV1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_location_github_enterprise_config(name, config_id: nil, project_id: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1/{+name}', options)
          command.response_representation = Google::Apis::CloudbuildV1::Operation::Representation
          command.response_class = Google::Apis::CloudbuildV1::Operation
          command.params['name'] = name unless name.nil?
          command.query['configId'] = config_id unless config_id.nil?
          command.query['projectId'] = project_id unless project_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Retrieve a GitHubEnterpriseConfig.
        # @param [String] name
        #   This field should contain the name of the enterprise config resource. For
        #   example: "projects/`$project_id`/locations/`$location_id`/
        #   githubEnterpriseConfigs/`$config_id`"
        # @param [String] config_id
        #   Unique identifier of the `GitHubEnterpriseConfig`
        # @param [String] project_id
        #   ID of the project
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::CloudbuildV1::GitHubEnterpriseConfig] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::CloudbuildV1::GitHubEnterpriseConfig]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_github_enterprise_config(name, config_id: nil, project_id: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}', options)
          command.response_representation = Google::Apis::CloudbuildV1::GitHubEnterpriseConfig::Representation
          command.response_class = Google::Apis::CloudbuildV1::GitHubEnterpriseConfig
          command.params['name'] = name unless name.nil?
          command.query['configId'] = config_id unless config_id.nil?
          command.query['projectId'] = project_id unless project_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # List all GitHubEnterpriseConfigs for a given project.
        # @param [String] parent
        #   Name of the parent project. For example: projects/`$project_number` or
        #   projects/`$project_id`
        # @param [String] project_id
        #   ID of the project
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::CloudbuildV1::ListGithubEnterpriseConfigsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::CloudbuildV1::ListGithubEnterpriseConfigsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_github_enterprise_configs(parent, project_id: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+parent}/githubEnterpriseConfigs', options)
          command.response_representation = Google::Apis::CloudbuildV1::ListGithubEnterpriseConfigsResponse::Representation
          command.response_class = Google::Apis::CloudbuildV1::ListGithubEnterpriseConfigsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['projectId'] = project_id unless project_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Update an association between a GCP project and a GitHub Enterprise server.
        # @param [String] name
        #   Optional. The full resource name for the GitHubEnterpriseConfig For example: "
        #   projects/`$project_id`/locations/`$location_id`/githubEnterpriseConfigs/`$
        #   config_id`"
        # @param [Google::Apis::CloudbuildV1::GitHubEnterpriseConfig] git_hub_enterprise_config_object
        # @param [String] update_mask
        #   Update mask for the resource. If this is set, the server will only update the
        #   fields specified in the field mask. Otherwise, a full update of the mutable
        #   resource fields will be performed.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::CloudbuildV1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::CloudbuildV1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_project_location_github_enterprise_config(name, git_hub_enterprise_config_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v1/{+name}', options)
          command.request_representation = Google::Apis::CloudbuildV1::GitHubEnterpriseConfig::Representation
          command.request_object = git_hub_enterprise_config_object
          command.response_representation = Google::Apis::CloudbuildV1::Operation::Representation
          command.response_class = Google::Apis::CloudbuildV1::Operation
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
        # @param [Google::Apis::CloudbuildV1::CancelOperationRequest] cancel_operation_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::CloudbuildV1::Empty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::CloudbuildV1::Empty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def cancel_project_location_operation(name, cancel_operation_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+name}:cancel', options)
          command.request_representation = Google::Apis::CloudbuildV1::CancelOperationRequest::Representation
          command.request_object = cancel_operation_request_object
          command.response_representation = Google::Apis::CloudbuildV1::Empty::Representation
          command.response_class = Google::Apis::CloudbuildV1::Empty
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
        # @yieldparam result [Google::Apis::CloudbuildV1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::CloudbuildV1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_operation(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}', options)
          command.response_representation = Google::Apis::CloudbuildV1::Operation::Representation
          command.response_class = Google::Apis::CloudbuildV1::Operation
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a new `BuildTrigger`. This API is experimental.
        # @param [String] parent
        #   The parent resource where this trigger will be created. Format: `projects/`
        #   project`/locations/`location``
        # @param [Google::Apis::CloudbuildV1::BuildTrigger] build_trigger_object
        # @param [String] project_id
        #   Required. ID of the project for which to configure automatic builds.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::CloudbuildV1::BuildTrigger] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::CloudbuildV1::BuildTrigger]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_location_trigger(parent, build_trigger_object = nil, project_id: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+parent}/triggers', options)
          command.request_representation = Google::Apis::CloudbuildV1::BuildTrigger::Representation
          command.request_object = build_trigger_object
          command.response_representation = Google::Apis::CloudbuildV1::BuildTrigger::Representation
          command.response_class = Google::Apis::CloudbuildV1::BuildTrigger
          command.params['parent'] = parent unless parent.nil?
          command.query['projectId'] = project_id unless project_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes a `BuildTrigger` by its project ID and trigger ID. This API is
        # experimental.
        # @param [String] name
        #   The name of the `Trigger` to delete. Format: `projects/`project`/locations/`
        #   location`/triggers/`trigger``
        # @param [String] project_id
        #   Required. ID of the project that owns the trigger.
        # @param [String] trigger_id
        #   Required. ID of the `BuildTrigger` to delete.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::CloudbuildV1::Empty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::CloudbuildV1::Empty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_location_trigger(name, project_id: nil, trigger_id: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1/{+name}', options)
          command.response_representation = Google::Apis::CloudbuildV1::Empty::Representation
          command.response_class = Google::Apis::CloudbuildV1::Empty
          command.params['name'] = name unless name.nil?
          command.query['projectId'] = project_id unless project_id.nil?
          command.query['triggerId'] = trigger_id unless trigger_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Returns information about a `BuildTrigger`. This API is experimental.
        # @param [String] name
        #   The name of the `Trigger` to retrieve. Format: `projects/`project`/locations/`
        #   location`/triggers/`trigger``
        # @param [String] project_id
        #   Required. ID of the project that owns the trigger.
        # @param [String] trigger_id
        #   Required. Identifier (`id` or `name`) of the `BuildTrigger` to get.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::CloudbuildV1::BuildTrigger] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::CloudbuildV1::BuildTrigger]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_trigger(name, project_id: nil, trigger_id: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}', options)
          command.response_representation = Google::Apis::CloudbuildV1::BuildTrigger::Representation
          command.response_class = Google::Apis::CloudbuildV1::BuildTrigger
          command.params['name'] = name unless name.nil?
          command.query['projectId'] = project_id unless project_id.nil?
          command.query['triggerId'] = trigger_id unless trigger_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists existing `BuildTrigger`s. This API is experimental.
        # @param [String] parent
        #   The parent of the collection of `Triggers`. Format: `projects/`project`/
        #   locations/`location``
        # @param [Fixnum] page_size
        #   Number of results to return in the list.
        # @param [String] page_token
        #   Token to provide to skip to a particular spot in the list.
        # @param [String] project_id
        #   Required. ID of the project for which to list BuildTriggers.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::CloudbuildV1::ListBuildTriggersResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::CloudbuildV1::ListBuildTriggersResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_triggers(parent, page_size: nil, page_token: nil, project_id: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+parent}/triggers', options)
          command.response_representation = Google::Apis::CloudbuildV1::ListBuildTriggersResponse::Representation
          command.response_class = Google::Apis::CloudbuildV1::ListBuildTriggersResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['projectId'] = project_id unless project_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates a `BuildTrigger` by its project ID and trigger ID. This API is
        # experimental.
        # @param [String] resource_name
        #   The `Trigger` name with format: `projects/`project`/locations/`location`/
        #   triggers/`trigger``, where `trigger` is a unique identifier generated by the
        #   service.
        # @param [Google::Apis::CloudbuildV1::BuildTrigger] build_trigger_object
        # @param [String] project_id
        #   Required. ID of the project that owns the trigger.
        # @param [String] trigger_id
        #   Required. ID of the `BuildTrigger` to update.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::CloudbuildV1::BuildTrigger] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::CloudbuildV1::BuildTrigger]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_project_location_trigger(resource_name, build_trigger_object = nil, project_id: nil, trigger_id: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v1/{+resourceName}', options)
          command.request_representation = Google::Apis::CloudbuildV1::BuildTrigger::Representation
          command.request_object = build_trigger_object
          command.response_representation = Google::Apis::CloudbuildV1::BuildTrigger::Representation
          command.response_class = Google::Apis::CloudbuildV1::BuildTrigger
          command.params['resourceName'] = resource_name unless resource_name.nil?
          command.query['projectId'] = project_id unless project_id.nil?
          command.query['triggerId'] = trigger_id unless trigger_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Runs a `BuildTrigger` at a particular source revision. To run a regional or
        # global trigger, use the POST request that includes the location endpoint in
        # the path (ex. v1/projects/`projectId`/locations/`region`/triggers/`triggerId`:
        # run). The POST request that does not include the location endpoint in the path
        # can only be used when running global triggers.
        # @param [String] name
        #   The name of the `Trigger` to run. Format: `projects/`project`/locations/`
        #   location`/triggers/`trigger``
        # @param [Google::Apis::CloudbuildV1::RunBuildTriggerRequest] run_build_trigger_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::CloudbuildV1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::CloudbuildV1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def run_build_trigger(name, run_build_trigger_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+name}:run', options)
          command.request_representation = Google::Apis::CloudbuildV1::RunBuildTriggerRequest::Representation
          command.request_object = run_build_trigger_request_object
          command.response_representation = Google::Apis::CloudbuildV1::Operation::Representation
          command.response_class = Google::Apis::CloudbuildV1::Operation
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # ReceiveTriggerWebhook [Experimental] is called when the API receives a webhook
        # request targeted at a specific trigger.
        # @param [String] name
        #   The name of the `ReceiveTriggerWebhook` to retrieve. Format: `projects/`
        #   project`/locations/`location`/triggers/`trigger``
        # @param [Google::Apis::CloudbuildV1::HttpBody] http_body_object
        # @param [String] project_id
        #   Project in which the specified trigger lives
        # @param [String] secret
        #   Secret token used for authorization if an OAuth token isn't provided.
        # @param [String] trigger
        #   Name of the trigger to run the payload against
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::CloudbuildV1::ReceiveTriggerWebhookResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::CloudbuildV1::ReceiveTriggerWebhookResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def webhook_project_location_trigger(name, http_body_object = nil, project_id: nil, secret: nil, trigger: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+name}:webhook', options)
          command.request_representation = Google::Apis::CloudbuildV1::HttpBody::Representation
          command.request_object = http_body_object
          command.response_representation = Google::Apis::CloudbuildV1::ReceiveTriggerWebhookResponse::Representation
          command.response_class = Google::Apis::CloudbuildV1::ReceiveTriggerWebhookResponse
          command.params['name'] = name unless name.nil?
          command.query['projectId'] = project_id unless project_id.nil?
          command.query['secret'] = secret unless secret.nil?
          command.query['trigger'] = trigger unless trigger.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a `WorkerPool`.
        # @param [String] parent
        #   Required. The parent resource where this worker pool will be created. Format: `
        #   projects/`project`/locations/`location``.
        # @param [Google::Apis::CloudbuildV1::WorkerPool] worker_pool_object
        # @param [Boolean] validate_only
        #   If set, validate the request and preview the response, but do not actually
        #   post it.
        # @param [String] worker_pool_id
        #   Required. Immutable. The ID to use for the `WorkerPool`, which will become the
        #   final component of the resource name. This value should be 1-63 characters,
        #   and valid characters are /a-z-/.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::CloudbuildV1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::CloudbuildV1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_location_worker_pool(parent, worker_pool_object = nil, validate_only: nil, worker_pool_id: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+parent}/workerPools', options)
          command.request_representation = Google::Apis::CloudbuildV1::WorkerPool::Representation
          command.request_object = worker_pool_object
          command.response_representation = Google::Apis::CloudbuildV1::Operation::Representation
          command.response_class = Google::Apis::CloudbuildV1::Operation
          command.params['parent'] = parent unless parent.nil?
          command.query['validateOnly'] = validate_only unless validate_only.nil?
          command.query['workerPoolId'] = worker_pool_id unless worker_pool_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes a `WorkerPool`.
        # @param [String] name
        #   Required. The name of the `WorkerPool` to delete. Format: `projects/`project`/
        #   locations/`location`/workerPools/`workerPool``.
        # @param [Boolean] allow_missing
        #   If set to true, and the `WorkerPool` is not found, the request will succeed
        #   but no action will be taken on the server.
        # @param [String] etag
        #   Optional. If provided, it must match the server's etag on the workerpool for
        #   the request to be processed.
        # @param [Boolean] validate_only
        #   If set, validate the request and preview the response, but do not actually
        #   post it.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::CloudbuildV1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::CloudbuildV1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_location_worker_pool(name, allow_missing: nil, etag: nil, validate_only: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1/{+name}', options)
          command.response_representation = Google::Apis::CloudbuildV1::Operation::Representation
          command.response_class = Google::Apis::CloudbuildV1::Operation
          command.params['name'] = name unless name.nil?
          command.query['allowMissing'] = allow_missing unless allow_missing.nil?
          command.query['etag'] = etag unless etag.nil?
          command.query['validateOnly'] = validate_only unless validate_only.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Returns details of a `WorkerPool`.
        # @param [String] name
        #   Required. The name of the `WorkerPool` to retrieve. Format: `projects/`project`
        #   /locations/`location`/workerPools/`workerPool``.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::CloudbuildV1::WorkerPool] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::CloudbuildV1::WorkerPool]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_worker_pool(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}', options)
          command.response_representation = Google::Apis::CloudbuildV1::WorkerPool::Representation
          command.response_class = Google::Apis::CloudbuildV1::WorkerPool
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists `WorkerPool`s.
        # @param [String] parent
        #   Required. The parent of the collection of `WorkerPools`. Format: `projects/`
        #   project`/locations/`location``.
        # @param [Fixnum] page_size
        #   The maximum number of `WorkerPool`s to return. The service may return fewer
        #   than this value. If omitted, the server will use a sensible default.
        # @param [String] page_token
        #   A page token, received from a previous `ListWorkerPools` call. Provide this to
        #   retrieve the subsequent page.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::CloudbuildV1::ListWorkerPoolsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::CloudbuildV1::ListWorkerPoolsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_worker_pools(parent, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+parent}/workerPools', options)
          command.response_representation = Google::Apis::CloudbuildV1::ListWorkerPoolsResponse::Representation
          command.response_class = Google::Apis::CloudbuildV1::ListWorkerPoolsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates a `WorkerPool`.
        # @param [String] name
        #   Output only. The resource name of the `WorkerPool`, with format `projects/`
        #   project`/locations/`location`/workerPools/`worker_pool``. The value of ``
        #   worker_pool`` is provided by `worker_pool_id` in `CreateWorkerPool` request
        #   and the value of ``location`` is determined by the endpoint accessed.
        # @param [Google::Apis::CloudbuildV1::WorkerPool] worker_pool_object
        # @param [String] update_mask
        #   A mask specifying which fields in `worker_pool` to update.
        # @param [Boolean] validate_only
        #   If set, validate the request and preview the response, but do not actually
        #   post it.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::CloudbuildV1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::CloudbuildV1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_project_location_worker_pool(name, worker_pool_object = nil, update_mask: nil, validate_only: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v1/{+name}', options)
          command.request_representation = Google::Apis::CloudbuildV1::WorkerPool::Representation
          command.request_object = worker_pool_object
          command.response_representation = Google::Apis::CloudbuildV1::Operation::Representation
          command.response_class = Google::Apis::CloudbuildV1::Operation
          command.params['name'] = name unless name.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['validateOnly'] = validate_only unless validate_only.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a new `BuildTrigger`. This API is experimental.
        # @param [String] project_id
        #   Required. ID of the project for which to configure automatic builds.
        # @param [Google::Apis::CloudbuildV1::BuildTrigger] build_trigger_object
        # @param [String] parent
        #   The parent resource where this trigger will be created. Format: `projects/`
        #   project`/locations/`location``
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::CloudbuildV1::BuildTrigger] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::CloudbuildV1::BuildTrigger]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_trigger(project_id, build_trigger_object = nil, parent: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/projects/{projectId}/triggers', options)
          command.request_representation = Google::Apis::CloudbuildV1::BuildTrigger::Representation
          command.request_object = build_trigger_object
          command.response_representation = Google::Apis::CloudbuildV1::BuildTrigger::Representation
          command.response_class = Google::Apis::CloudbuildV1::BuildTrigger
          command.params['projectId'] = project_id unless project_id.nil?
          command.query['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes a `BuildTrigger` by its project ID and trigger ID. This API is
        # experimental.
        # @param [String] project_id
        #   Required. ID of the project that owns the trigger.
        # @param [String] trigger_id
        #   Required. ID of the `BuildTrigger` to delete.
        # @param [String] name
        #   The name of the `Trigger` to delete. Format: `projects/`project`/locations/`
        #   location`/triggers/`trigger``
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::CloudbuildV1::Empty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::CloudbuildV1::Empty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_trigger(project_id, trigger_id, name: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1/projects/{projectId}/triggers/{triggerId}', options)
          command.response_representation = Google::Apis::CloudbuildV1::Empty::Representation
          command.response_class = Google::Apis::CloudbuildV1::Empty
          command.params['projectId'] = project_id unless project_id.nil?
          command.params['triggerId'] = trigger_id unless trigger_id.nil?
          command.query['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Returns information about a `BuildTrigger`. This API is experimental.
        # @param [String] project_id
        #   Required. ID of the project that owns the trigger.
        # @param [String] trigger_id
        #   Required. Identifier (`id` or `name`) of the `BuildTrigger` to get.
        # @param [String] name
        #   The name of the `Trigger` to retrieve. Format: `projects/`project`/locations/`
        #   location`/triggers/`trigger``
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::CloudbuildV1::BuildTrigger] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::CloudbuildV1::BuildTrigger]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_trigger(project_id, trigger_id, name: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/projects/{projectId}/triggers/{triggerId}', options)
          command.response_representation = Google::Apis::CloudbuildV1::BuildTrigger::Representation
          command.response_class = Google::Apis::CloudbuildV1::BuildTrigger
          command.params['projectId'] = project_id unless project_id.nil?
          command.params['triggerId'] = trigger_id unless trigger_id.nil?
          command.query['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists existing `BuildTrigger`s. This API is experimental.
        # @param [String] project_id
        #   Required. ID of the project for which to list BuildTriggers.
        # @param [Fixnum] page_size
        #   Number of results to return in the list.
        # @param [String] page_token
        #   Token to provide to skip to a particular spot in the list.
        # @param [String] parent
        #   The parent of the collection of `Triggers`. Format: `projects/`project`/
        #   locations/`location``
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::CloudbuildV1::ListBuildTriggersResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::CloudbuildV1::ListBuildTriggersResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_triggers(project_id, page_size: nil, page_token: nil, parent: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/projects/{projectId}/triggers', options)
          command.response_representation = Google::Apis::CloudbuildV1::ListBuildTriggersResponse::Representation
          command.response_class = Google::Apis::CloudbuildV1::ListBuildTriggersResponse
          command.params['projectId'] = project_id unless project_id.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates a `BuildTrigger` by its project ID and trigger ID. This API is
        # experimental.
        # @param [String] project_id
        #   Required. ID of the project that owns the trigger.
        # @param [String] trigger_id
        #   Required. ID of the `BuildTrigger` to update.
        # @param [Google::Apis::CloudbuildV1::BuildTrigger] build_trigger_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::CloudbuildV1::BuildTrigger] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::CloudbuildV1::BuildTrigger]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_project_trigger(project_id, trigger_id, build_trigger_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v1/projects/{projectId}/triggers/{triggerId}', options)
          command.request_representation = Google::Apis::CloudbuildV1::BuildTrigger::Representation
          command.request_object = build_trigger_object
          command.response_representation = Google::Apis::CloudbuildV1::BuildTrigger::Representation
          command.response_class = Google::Apis::CloudbuildV1::BuildTrigger
          command.params['projectId'] = project_id unless project_id.nil?
          command.params['triggerId'] = trigger_id unless trigger_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Runs a `BuildTrigger` at a particular source revision. To run a regional or
        # global trigger, use the POST request that includes the location endpoint in
        # the path (ex. v1/projects/`projectId`/locations/`region`/triggers/`triggerId`:
        # run). The POST request that does not include the location endpoint in the path
        # can only be used when running global triggers.
        # @param [String] project_id
        #   Required. ID of the project.
        # @param [String] trigger_id
        #   Required. ID of the trigger.
        # @param [Google::Apis::CloudbuildV1::RepoSource] repo_source_object
        # @param [String] name
        #   The name of the `Trigger` to run. Format: `projects/`project`/locations/`
        #   location`/triggers/`trigger``
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::CloudbuildV1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::CloudbuildV1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def run_project_trigger(project_id, trigger_id, repo_source_object = nil, name: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/projects/{projectId}/triggers/{triggerId}:run', options)
          command.request_representation = Google::Apis::CloudbuildV1::RepoSource::Representation
          command.request_object = repo_source_object
          command.response_representation = Google::Apis::CloudbuildV1::Operation::Representation
          command.response_class = Google::Apis::CloudbuildV1::Operation
          command.params['projectId'] = project_id unless project_id.nil?
          command.params['triggerId'] = trigger_id unless trigger_id.nil?
          command.query['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # ReceiveTriggerWebhook [Experimental] is called when the API receives a webhook
        # request targeted at a specific trigger.
        # @param [String] project_id
        #   Project in which the specified trigger lives
        # @param [String] trigger
        #   Name of the trigger to run the payload against
        # @param [Google::Apis::CloudbuildV1::HttpBody] http_body_object
        # @param [String] name
        #   The name of the `ReceiveTriggerWebhook` to retrieve. Format: `projects/`
        #   project`/locations/`location`/triggers/`trigger``
        # @param [String] secret
        #   Secret token used for authorization if an OAuth token isn't provided.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::CloudbuildV1::ReceiveTriggerWebhookResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::CloudbuildV1::ReceiveTriggerWebhookResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def webhook_project_trigger(project_id, trigger, http_body_object = nil, name: nil, secret: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/projects/{projectId}/triggers/{trigger}:webhook', options)
          command.request_representation = Google::Apis::CloudbuildV1::HttpBody::Representation
          command.request_object = http_body_object
          command.response_representation = Google::Apis::CloudbuildV1::ReceiveTriggerWebhookResponse::Representation
          command.response_class = Google::Apis::CloudbuildV1::ReceiveTriggerWebhookResponse
          command.params['projectId'] = project_id unless project_id.nil?
          command.params['trigger'] = trigger unless trigger.nil?
          command.query['name'] = name unless name.nil?
          command.query['secret'] = secret unless secret.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # ReceiveWebhook is called when the API receives a GitHub webhook.
        # @param [Google::Apis::CloudbuildV1::HttpBody] http_body_object
        # @param [String] webhook_key
        #   For GitHub Enterprise webhooks, this key is used to associate the webhook
        #   request with the GitHubEnterpriseConfig to use for validation.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::CloudbuildV1::Empty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::CloudbuildV1::Empty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def webhook(http_body_object = nil, webhook_key: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/webhook', options)
          command.request_representation = Google::Apis::CloudbuildV1::HttpBody::Representation
          command.request_object = http_body_object
          command.response_representation = Google::Apis::CloudbuildV1::Empty::Representation
          command.response_class = Google::Apis::CloudbuildV1::Empty
          command.query['webhookKey'] = webhook_key unless webhook_key.nil?
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
