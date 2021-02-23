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
    module PolicysimulatorV1beta1
      # Policy Simulator API
      #
      # 
      #
      # @example
      #    require 'google/apis/policysimulator_v1beta1'
      #
      #    Policysimulator = Google::Apis::PolicysimulatorV1beta1 # Alias the module
      #    service = Policysimulator::PolicySimulatorService.new
      #
      # @see https://cloud.google.com/iam/docs/simulating-access
      class PolicySimulatorService < Google::Apis::Core::BaseService
        # @return [String]
        #  API key. Your API key identifies your project and provides you with API access,
        #  quota, and reports. Required unless you provide an OAuth 2.0 token.
        attr_accessor :key

        # @return [String]
        #  Available to use for quota purposes for server-side applications. Can be any
        #  arbitrary string assigned to a user, but should not exceed 40 characters.
        attr_accessor :quota_user

        def initialize
          super('https://policysimulator.googleapis.com/', '',
                client_name: 'google-apis-policysimulator_v1beta1',
                client_version: Google::Apis::PolicysimulatorV1beta1::GEM_VERSION)
          @batch_path = 'batch'
        end
        
        # Create a replay using the given ReplayConfig. The parent of the replay must
        # contain all resources in the overlay. For example, if the overlay contains: ```
        # ReplayConfig ` policy_overlay = map = ` "//cloudresourcemanager.googleapis.
        # com/projects/project-1": ..., "//cloudresourcemanager.googleapis.com/projects/
        # project-2": ..., ` ``` Then, the parent used for CreateReplay must be the
        # organization or a folder that contains both projects as children.
        # @param [String] parent
        #   Required. The parent resource where this Replay will be created. This must be
        #   a project, folder, or organization with included location. Example: `projects/
        #   my-example-project/locations/global`
        # @param [Google::Apis::PolicysimulatorV1beta1::GoogleCloudPolicysimulatorV1beta1Replay] google_cloud_policysimulator_v1beta1_replay_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::PolicysimulatorV1beta1::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::PolicysimulatorV1beta1::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_folder_location_replay(parent, google_cloud_policysimulator_v1beta1_replay_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1beta1/{+parent}/replays', options)
          command.request_representation = Google::Apis::PolicysimulatorV1beta1::GoogleCloudPolicysimulatorV1beta1Replay::Representation
          command.request_object = google_cloud_policysimulator_v1beta1_replay_object
          command.response_representation = Google::Apis::PolicysimulatorV1beta1::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::PolicysimulatorV1beta1::GoogleLongrunningOperation
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Get the specified Replay.
        # @param [String] name
        #   Required. The name of the replay to retrieve. Format is `PARENT/locations/`
        #   location`/replays/`replay`` where PARENT is a project, folder, or organization.
        #   Example: `projects/my-example-project/locations/`location`/replays/506a5f7f-
        #   38ce-4d7d-8e03-479ce1833c36`
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::PolicysimulatorV1beta1::GoogleCloudPolicysimulatorV1beta1Replay] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::PolicysimulatorV1beta1::GoogleCloudPolicysimulatorV1beta1Replay]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_folder_location_replay(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta1/{+name}', options)
          command.response_representation = Google::Apis::PolicysimulatorV1beta1::GoogleCloudPolicysimulatorV1beta1Replay::Representation
          command.response_class = Google::Apis::PolicysimulatorV1beta1::GoogleCloudPolicysimulatorV1beta1Replay
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # List the results of running a replay
        # @param [String] parent
        #   Required. The replay we are listing results for.
        # @param [Fixnum] page_size
        #   The maximum number of `ReplayResults` to return. If unspecified, at most 5000 `
        #   Replays` will be returned. The maximum value is 5000; values above 5000 will
        #   be coerced to 5000.
        # @param [String] page_token
        #   A page token, received from a previous `ListReplayResults` call. Provide this
        #   to retrieve the subsequent page. When paginating, all other parameters
        #   provided to `ListReplayResults` must match the call that provided the page
        #   token.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::PolicysimulatorV1beta1::GoogleCloudPolicysimulatorV1beta1ListReplayResultsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::PolicysimulatorV1beta1::GoogleCloudPolicysimulatorV1beta1ListReplayResultsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_folder_location_replay_results(parent, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta1/{+parent}/results', options)
          command.response_representation = Google::Apis::PolicysimulatorV1beta1::GoogleCloudPolicysimulatorV1beta1ListReplayResultsResponse::Representation
          command.response_class = Google::Apis::PolicysimulatorV1beta1::GoogleCloudPolicysimulatorV1beta1ListReplayResultsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
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
        # @yieldparam result [Google::Apis::PolicysimulatorV1beta1::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::PolicysimulatorV1beta1::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_operation(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta1/{+name}', options)
          command.response_representation = Google::Apis::PolicysimulatorV1beta1::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::PolicysimulatorV1beta1::GoogleLongrunningOperation
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
        # @param [String] filter
        #   The standard list filter.
        # @param [String] name
        #   The name of the operation's parent resource.
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
        # @yieldparam result [Google::Apis::PolicysimulatorV1beta1::GoogleLongrunningListOperationsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::PolicysimulatorV1beta1::GoogleLongrunningListOperationsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_operations(filter: nil, name: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta1/operations', options)
          command.response_representation = Google::Apis::PolicysimulatorV1beta1::GoogleLongrunningListOperationsResponse::Representation
          command.response_class = Google::Apis::PolicysimulatorV1beta1::GoogleLongrunningListOperationsResponse
          command.query['filter'] = filter unless filter.nil?
          command.query['name'] = name unless name.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Create a replay using the given ReplayConfig. The parent of the replay must
        # contain all resources in the overlay. For example, if the overlay contains: ```
        # ReplayConfig ` policy_overlay = map = ` "//cloudresourcemanager.googleapis.
        # com/projects/project-1": ..., "//cloudresourcemanager.googleapis.com/projects/
        # project-2": ..., ` ``` Then, the parent used for CreateReplay must be the
        # organization or a folder that contains both projects as children.
        # @param [String] parent
        #   Required. The parent resource where this Replay will be created. This must be
        #   a project, folder, or organization with included location. Example: `projects/
        #   my-example-project/locations/global`
        # @param [Google::Apis::PolicysimulatorV1beta1::GoogleCloudPolicysimulatorV1beta1Replay] google_cloud_policysimulator_v1beta1_replay_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::PolicysimulatorV1beta1::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::PolicysimulatorV1beta1::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_organization_location_replay(parent, google_cloud_policysimulator_v1beta1_replay_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1beta1/{+parent}/replays', options)
          command.request_representation = Google::Apis::PolicysimulatorV1beta1::GoogleCloudPolicysimulatorV1beta1Replay::Representation
          command.request_object = google_cloud_policysimulator_v1beta1_replay_object
          command.response_representation = Google::Apis::PolicysimulatorV1beta1::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::PolicysimulatorV1beta1::GoogleLongrunningOperation
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Get the specified Replay.
        # @param [String] name
        #   Required. The name of the replay to retrieve. Format is `PARENT/locations/`
        #   location`/replays/`replay`` where PARENT is a project, folder, or organization.
        #   Example: `projects/my-example-project/locations/`location`/replays/506a5f7f-
        #   38ce-4d7d-8e03-479ce1833c36`
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::PolicysimulatorV1beta1::GoogleCloudPolicysimulatorV1beta1Replay] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::PolicysimulatorV1beta1::GoogleCloudPolicysimulatorV1beta1Replay]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_organization_location_replay(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta1/{+name}', options)
          command.response_representation = Google::Apis::PolicysimulatorV1beta1::GoogleCloudPolicysimulatorV1beta1Replay::Representation
          command.response_class = Google::Apis::PolicysimulatorV1beta1::GoogleCloudPolicysimulatorV1beta1Replay
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # List the results of running a replay
        # @param [String] parent
        #   Required. The replay we are listing results for.
        # @param [Fixnum] page_size
        #   The maximum number of `ReplayResults` to return. If unspecified, at most 5000 `
        #   Replays` will be returned. The maximum value is 5000; values above 5000 will
        #   be coerced to 5000.
        # @param [String] page_token
        #   A page token, received from a previous `ListReplayResults` call. Provide this
        #   to retrieve the subsequent page. When paginating, all other parameters
        #   provided to `ListReplayResults` must match the call that provided the page
        #   token.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::PolicysimulatorV1beta1::GoogleCloudPolicysimulatorV1beta1ListReplayResultsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::PolicysimulatorV1beta1::GoogleCloudPolicysimulatorV1beta1ListReplayResultsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_organization_location_replay_results(parent, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta1/{+parent}/results', options)
          command.response_representation = Google::Apis::PolicysimulatorV1beta1::GoogleCloudPolicysimulatorV1beta1ListReplayResultsResponse::Representation
          command.response_class = Google::Apis::PolicysimulatorV1beta1::GoogleCloudPolicysimulatorV1beta1ListReplayResultsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Create a replay using the given ReplayConfig. The parent of the replay must
        # contain all resources in the overlay. For example, if the overlay contains: ```
        # ReplayConfig ` policy_overlay = map = ` "//cloudresourcemanager.googleapis.
        # com/projects/project-1": ..., "//cloudresourcemanager.googleapis.com/projects/
        # project-2": ..., ` ``` Then, the parent used for CreateReplay must be the
        # organization or a folder that contains both projects as children.
        # @param [String] parent
        #   Required. The parent resource where this Replay will be created. This must be
        #   a project, folder, or organization with included location. Example: `projects/
        #   my-example-project/locations/global`
        # @param [Google::Apis::PolicysimulatorV1beta1::GoogleCloudPolicysimulatorV1beta1Replay] google_cloud_policysimulator_v1beta1_replay_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::PolicysimulatorV1beta1::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::PolicysimulatorV1beta1::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_location_replay(parent, google_cloud_policysimulator_v1beta1_replay_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1beta1/{+parent}/replays', options)
          command.request_representation = Google::Apis::PolicysimulatorV1beta1::GoogleCloudPolicysimulatorV1beta1Replay::Representation
          command.request_object = google_cloud_policysimulator_v1beta1_replay_object
          command.response_representation = Google::Apis::PolicysimulatorV1beta1::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::PolicysimulatorV1beta1::GoogleLongrunningOperation
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Get the specified Replay.
        # @param [String] name
        #   Required. The name of the replay to retrieve. Format is `PARENT/locations/`
        #   location`/replays/`replay`` where PARENT is a project, folder, or organization.
        #   Example: `projects/my-example-project/locations/`location`/replays/506a5f7f-
        #   38ce-4d7d-8e03-479ce1833c36`
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::PolicysimulatorV1beta1::GoogleCloudPolicysimulatorV1beta1Replay] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::PolicysimulatorV1beta1::GoogleCloudPolicysimulatorV1beta1Replay]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_replay(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta1/{+name}', options)
          command.response_representation = Google::Apis::PolicysimulatorV1beta1::GoogleCloudPolicysimulatorV1beta1Replay::Representation
          command.response_class = Google::Apis::PolicysimulatorV1beta1::GoogleCloudPolicysimulatorV1beta1Replay
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # List the results of running a replay
        # @param [String] parent
        #   Required. The replay we are listing results for.
        # @param [Fixnum] page_size
        #   The maximum number of `ReplayResults` to return. If unspecified, at most 5000 `
        #   Replays` will be returned. The maximum value is 5000; values above 5000 will
        #   be coerced to 5000.
        # @param [String] page_token
        #   A page token, received from a previous `ListReplayResults` call. Provide this
        #   to retrieve the subsequent page. When paginating, all other parameters
        #   provided to `ListReplayResults` must match the call that provided the page
        #   token.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::PolicysimulatorV1beta1::GoogleCloudPolicysimulatorV1beta1ListReplayResultsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::PolicysimulatorV1beta1::GoogleCloudPolicysimulatorV1beta1ListReplayResultsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_replay_results(parent, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta1/{+parent}/results', options)
          command.response_representation = Google::Apis::PolicysimulatorV1beta1::GoogleCloudPolicysimulatorV1beta1ListReplayResultsResponse::Representation
          command.response_class = Google::Apis::PolicysimulatorV1beta1::GoogleCloudPolicysimulatorV1beta1ListReplayResultsResponse
          command.params['parent'] = parent unless parent.nil?
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
