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
    module PolicysimulatorV1alpha
      # Policy Simulator API
      #
      # Policy Simulator is a collection of endpoints for creating, running, and
      #  viewing a Replay. A `Replay` is a type of simulation that lets you see how
      #  your members' access to resources might change if you changed your IAM policy.
      #  During a `Replay`, Policy Simulator re-evaluates, or replays, past access
      #  attempts under both the current policy and your proposed policy, and compares
      #  those results to determine how your members' access might change under the
      #  proposed policy.
      #
      # @example
      #    require 'google/apis/policysimulator_v1alpha'
      #
      #    Policysimulator = Google::Apis::PolicysimulatorV1alpha # Alias the module
      #    service = Policysimulator::PolicySimulatorService.new
      #
      # @see https://cloud.google.com/iam/docs/simulating-access
      class PolicySimulatorService < Google::Apis::Core::BaseService
        DEFAULT_ENDPOINT_TEMPLATE = "https://policysimulator.$UNIVERSE_DOMAIN$/"

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
                client_name: 'google-apis-policysimulator_v1alpha',
                client_version: Google::Apis::PolicysimulatorV1alpha::GEM_VERSION)
          @batch_path = 'batch'
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
        # @yieldparam result [Google::Apis::PolicysimulatorV1alpha::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::PolicysimulatorV1alpha::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_folder_location_org_policy_violations_preview_operation(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1alpha/{+name}', options)
          command.response_representation = Google::Apis::PolicysimulatorV1alpha::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::PolicysimulatorV1alpha::GoogleLongrunningOperation
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates and starts a Replay using the given ReplayConfig.
        # @param [String] parent
        #   Required. The parent resource where this Replay will be created. This resource
        #   must be a project, folder, or organization with a location. Example: `projects/
        #   my-example-project/locations/global`
        # @param [Google::Apis::PolicysimulatorV1alpha::GoogleCloudPolicysimulatorV1alphaReplay] google_cloud_policysimulator_v1alpha_replay_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::PolicysimulatorV1alpha::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::PolicysimulatorV1alpha::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_folder_location_replay(parent, google_cloud_policysimulator_v1alpha_replay_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1alpha/{+parent}/replays', options)
          command.request_representation = Google::Apis::PolicysimulatorV1alpha::GoogleCloudPolicysimulatorV1alphaReplay::Representation
          command.request_object = google_cloud_policysimulator_v1alpha_replay_object
          command.response_representation = Google::Apis::PolicysimulatorV1alpha::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::PolicysimulatorV1alpha::GoogleLongrunningOperation
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets the specified Replay. Each `Replay` is available for at least 7 days.
        # @param [String] name
        #   Required. The name of the Replay to retrieve, in the following format: ``
        #   projects|folders|organizations`/`resource-id`/locations/global/replays/`replay-
        #   id``, where ``resource-id`` is the ID of the project, folder, or organization
        #   that owns the `Replay`. Example: `projects/my-example-project/locations/global/
        #   replays/506a5f7f-38ce-4d7d-8e03-479ce1833c36`
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::PolicysimulatorV1alpha::GoogleCloudPolicysimulatorV1alphaReplay] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::PolicysimulatorV1alpha::GoogleCloudPolicysimulatorV1alphaReplay]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_folder_location_replay(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1alpha/{+name}', options)
          command.response_representation = Google::Apis::PolicysimulatorV1alpha::GoogleCloudPolicysimulatorV1alphaReplay::Representation
          command.response_class = Google::Apis::PolicysimulatorV1alpha::GoogleCloudPolicysimulatorV1alphaReplay
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists each Replay in a project, folder, or organization. Each `Replay` is
        # available for at least 7 days.
        # @param [String] parent
        #   Required. The parent resource, in the following format: ``projects|folders|
        #   organizations`/`resource-id`/locations/global`, where ``resource-id`` is the
        #   ID of the project, folder, or organization that owns the Replay. Example: `
        #   projects/my-example-project/locations/global` Only `Replay` objects that are
        #   direct children of the provided parent are listed. In other words, `Replay`
        #   objects that are children of a project will not be included when the parent is
        #   a folder of that project.
        # @param [Fixnum] page_size
        #   The maximum number of Replay objects to return. Defaults to 50. The maximum
        #   value is 1000; values above 1000 are rounded down to 1000.
        # @param [String] page_token
        #   A page token, received from a previous Simulator.ListReplays call. Provide
        #   this to retrieve the subsequent page. When paginating, all other parameters
        #   provided to Simulator.ListReplays must match the call that provided the page
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
        # @yieldparam result [Google::Apis::PolicysimulatorV1alpha::GoogleCloudPolicysimulatorV1alphaListReplaysResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::PolicysimulatorV1alpha::GoogleCloudPolicysimulatorV1alphaListReplaysResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_folder_location_replays(parent, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1alpha/{+parent}/replays', options)
          command.response_representation = Google::Apis::PolicysimulatorV1alpha::GoogleCloudPolicysimulatorV1alphaListReplaysResponse::Representation
          command.response_class = Google::Apis::PolicysimulatorV1alpha::GoogleCloudPolicysimulatorV1alphaListReplaysResponse
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
        # @yieldparam result [Google::Apis::PolicysimulatorV1alpha::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::PolicysimulatorV1alpha::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_folder_location_replay_operation(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1alpha/{+name}', options)
          command.response_representation = Google::Apis::PolicysimulatorV1alpha::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::PolicysimulatorV1alpha::GoogleLongrunningOperation
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
        # @yieldparam result [Google::Apis::PolicysimulatorV1alpha::GoogleLongrunningListOperationsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::PolicysimulatorV1alpha::GoogleLongrunningListOperationsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_folder_location_replay_operations(name, filter: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1alpha/{+name}', options)
          command.response_representation = Google::Apis::PolicysimulatorV1alpha::GoogleLongrunningListOperationsResponse::Representation
          command.response_class = Google::Apis::PolicysimulatorV1alpha::GoogleLongrunningListOperationsResponse
          command.params['name'] = name unless name.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists the results of running a Replay.
        # @param [String] parent
        #   Required. The Replay whose results are listed, in the following format: ``
        #   projects|folders|organizations`/`resource-id`/locations/global/replays/`replay-
        #   id`` Example: `projects/my-project/locations/global/replays/506a5f7f-38ce-4d7d-
        #   8e03-479ce1833c36`
        # @param [Fixnum] page_size
        #   The maximum number of ReplayResult objects to return. Defaults to 5000. The
        #   maximum value is 5000; values above 5000 are rounded down to 5000.
        # @param [String] page_token
        #   A page token, received from a previous Simulator.ListReplayResults call.
        #   Provide this token to retrieve the next page of results. When paginating, all
        #   other parameters provided to [Simulator.ListReplayResults[] must match the
        #   call that provided the page token.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::PolicysimulatorV1alpha::GoogleCloudPolicysimulatorV1alphaListReplayResultsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::PolicysimulatorV1alpha::GoogleCloudPolicysimulatorV1alphaListReplayResultsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_folder_location_replay_results(parent, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1alpha/{+parent}/results', options)
          command.response_representation = Google::Apis::PolicysimulatorV1alpha::GoogleCloudPolicysimulatorV1alphaListReplayResultsResponse::Representation
          command.response_class = Google::Apis::PolicysimulatorV1alpha::GoogleCloudPolicysimulatorV1alphaListReplayResultsResponse
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
        # @yieldparam result [Google::Apis::PolicysimulatorV1alpha::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::PolicysimulatorV1alpha::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_operation(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1alpha/{+name}', options)
          command.response_representation = Google::Apis::PolicysimulatorV1alpha::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::PolicysimulatorV1alpha::GoogleLongrunningOperation
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
        # @yieldparam result [Google::Apis::PolicysimulatorV1alpha::GoogleLongrunningListOperationsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::PolicysimulatorV1alpha::GoogleLongrunningListOperationsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_operations(name, filter: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1alpha/{+name}', options)
          command.response_representation = Google::Apis::PolicysimulatorV1alpha::GoogleLongrunningListOperationsResponse::Representation
          command.response_class = Google::Apis::PolicysimulatorV1alpha::GoogleLongrunningListOperationsResponse
          command.params['name'] = name unless name.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # GenerateOrgPolicyViolationsPreview generates an OrgPolicyViolationsPreview for
        # the proposed changes in the provided OrgPolicyViolationsPreview.
        # OrgPolicyOverlay. The changes to OrgPolicy are specified by this `
        # OrgPolicyOverlay`. The resources to scan are inferred from these specified
        # changes.
        # @param [String] parent
        #   Required. The organization under which this OrgPolicyViolationsPreview will be
        #   created. Example: `organizations/my-example-org/locations/global`
        # @param [Google::Apis::PolicysimulatorV1alpha::GoogleCloudPolicysimulatorV1alphaOrgPolicyViolationsPreview] google_cloud_policysimulator_v1alpha_org_policy_violations_preview_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::PolicysimulatorV1alpha::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::PolicysimulatorV1alpha::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def org_organization_location_policy_violations_previews(parent, google_cloud_policysimulator_v1alpha_org_policy_violations_preview_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1alpha/{+parent}/orgPolicyViolationsPreviews', options)
          command.request_representation = Google::Apis::PolicysimulatorV1alpha::GoogleCloudPolicysimulatorV1alphaOrgPolicyViolationsPreview::Representation
          command.request_object = google_cloud_policysimulator_v1alpha_org_policy_violations_preview_object
          command.response_representation = Google::Apis::PolicysimulatorV1alpha::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::PolicysimulatorV1alpha::GoogleLongrunningOperation
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # GetOrgPolicyViolationsPreview gets the specified OrgPolicyViolationsPreview.
        # Each OrgPolicyViolationsPreview is available for at least 7 days.
        # @param [String] name
        #   Required. The name of the OrgPolicyViolationsPreview to get.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::PolicysimulatorV1alpha::GoogleCloudPolicysimulatorV1alphaOrgPolicyViolationsPreview] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::PolicysimulatorV1alpha::GoogleCloudPolicysimulatorV1alphaOrgPolicyViolationsPreview]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_organization_location_org_policy_violations_preview(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1alpha/{+name}', options)
          command.response_representation = Google::Apis::PolicysimulatorV1alpha::GoogleCloudPolicysimulatorV1alphaOrgPolicyViolationsPreview::Representation
          command.response_class = Google::Apis::PolicysimulatorV1alpha::GoogleCloudPolicysimulatorV1alphaOrgPolicyViolationsPreview
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # ListOrgPolicyViolationsPreviews lists each OrgPolicyViolationsPreview in an
        # organization. Each OrgPolicyViolationsPreview is available for at least 7 days.
        # @param [String] parent
        #   Required. The parent the violations are scoped to. Format: `organizations/`
        #   organization`/locations/`location`` Example: `organizations/my-example-org/
        #   locations/global`
        # @param [Fixnum] page_size
        #   The maximum number of items to return. The service may return fewer than this
        #   value. If unspecified, at most 5 items will be returned. The maximum value is
        #   10; values above 10 will be coerced to 10.
        # @param [String] page_token
        #   A page token, received from a previous call. Provide this to retrieve the
        #   subsequent page. When paginating, all other parameters must match the call
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
        # @yieldparam result [Google::Apis::PolicysimulatorV1alpha::GoogleCloudPolicysimulatorV1alphaListOrgPolicyViolationsPreviewsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::PolicysimulatorV1alpha::GoogleCloudPolicysimulatorV1alphaListOrgPolicyViolationsPreviewsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_organization_location_org_policy_violations_previews(parent, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1alpha/{+parent}/orgPolicyViolationsPreviews', options)
          command.response_representation = Google::Apis::PolicysimulatorV1alpha::GoogleCloudPolicysimulatorV1alphaListOrgPolicyViolationsPreviewsResponse::Representation
          command.response_class = Google::Apis::PolicysimulatorV1alpha::GoogleCloudPolicysimulatorV1alphaListOrgPolicyViolationsPreviewsResponse
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
        # @yieldparam result [Google::Apis::PolicysimulatorV1alpha::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::PolicysimulatorV1alpha::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_organization_location_org_policy_violations_preview_operation(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1alpha/{+name}', options)
          command.response_representation = Google::Apis::PolicysimulatorV1alpha::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::PolicysimulatorV1alpha::GoogleLongrunningOperation
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # ListOrgPolicyViolations lists the OrgPolicyViolations that are present in an
        # OrgPolicyViolationsPreview.
        # @param [String] parent
        #   Required. The OrgPolicyViolationsPreview to get OrgPolicyViolations from.
        #   Format: organizations/`organization`/locations/`location`/
        #   orgPolicyViolationsPreviews/`orgPolicyViolationsPreview`
        # @param [Fixnum] page_size
        #   The maximum number of items to return. The service may return fewer than this
        #   value. If unspecified, at most 50 items will be returned. The maximum value is
        #   1000; values above 1000 will be coerced to 1000.
        # @param [String] page_token
        #   A page token, received from a previous call. Provide this to retrieve the
        #   subsequent page. When paginating, all other parameters must match the call
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
        # @yieldparam result [Google::Apis::PolicysimulatorV1alpha::GoogleCloudPolicysimulatorV1alphaListOrgPolicyViolationsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::PolicysimulatorV1alpha::GoogleCloudPolicysimulatorV1alphaListOrgPolicyViolationsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_organization_location_org_policy_violations_preview_org_policy_violations(parent, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1alpha/{+parent}/orgPolicyViolations', options)
          command.response_representation = Google::Apis::PolicysimulatorV1alpha::GoogleCloudPolicysimulatorV1alphaListOrgPolicyViolationsResponse::Representation
          command.response_class = Google::Apis::PolicysimulatorV1alpha::GoogleCloudPolicysimulatorV1alphaListOrgPolicyViolationsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates and starts a Replay using the given ReplayConfig.
        # @param [String] parent
        #   Required. The parent resource where this Replay will be created. This resource
        #   must be a project, folder, or organization with a location. Example: `projects/
        #   my-example-project/locations/global`
        # @param [Google::Apis::PolicysimulatorV1alpha::GoogleCloudPolicysimulatorV1alphaReplay] google_cloud_policysimulator_v1alpha_replay_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::PolicysimulatorV1alpha::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::PolicysimulatorV1alpha::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_organization_location_replay(parent, google_cloud_policysimulator_v1alpha_replay_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1alpha/{+parent}/replays', options)
          command.request_representation = Google::Apis::PolicysimulatorV1alpha::GoogleCloudPolicysimulatorV1alphaReplay::Representation
          command.request_object = google_cloud_policysimulator_v1alpha_replay_object
          command.response_representation = Google::Apis::PolicysimulatorV1alpha::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::PolicysimulatorV1alpha::GoogleLongrunningOperation
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets the specified Replay. Each `Replay` is available for at least 7 days.
        # @param [String] name
        #   Required. The name of the Replay to retrieve, in the following format: ``
        #   projects|folders|organizations`/`resource-id`/locations/global/replays/`replay-
        #   id``, where ``resource-id`` is the ID of the project, folder, or organization
        #   that owns the `Replay`. Example: `projects/my-example-project/locations/global/
        #   replays/506a5f7f-38ce-4d7d-8e03-479ce1833c36`
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::PolicysimulatorV1alpha::GoogleCloudPolicysimulatorV1alphaReplay] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::PolicysimulatorV1alpha::GoogleCloudPolicysimulatorV1alphaReplay]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_organization_location_replay(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1alpha/{+name}', options)
          command.response_representation = Google::Apis::PolicysimulatorV1alpha::GoogleCloudPolicysimulatorV1alphaReplay::Representation
          command.response_class = Google::Apis::PolicysimulatorV1alpha::GoogleCloudPolicysimulatorV1alphaReplay
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists each Replay in a project, folder, or organization. Each `Replay` is
        # available for at least 7 days.
        # @param [String] parent
        #   Required. The parent resource, in the following format: ``projects|folders|
        #   organizations`/`resource-id`/locations/global`, where ``resource-id`` is the
        #   ID of the project, folder, or organization that owns the Replay. Example: `
        #   projects/my-example-project/locations/global` Only `Replay` objects that are
        #   direct children of the provided parent are listed. In other words, `Replay`
        #   objects that are children of a project will not be included when the parent is
        #   a folder of that project.
        # @param [Fixnum] page_size
        #   The maximum number of Replay objects to return. Defaults to 50. The maximum
        #   value is 1000; values above 1000 are rounded down to 1000.
        # @param [String] page_token
        #   A page token, received from a previous Simulator.ListReplays call. Provide
        #   this to retrieve the subsequent page. When paginating, all other parameters
        #   provided to Simulator.ListReplays must match the call that provided the page
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
        # @yieldparam result [Google::Apis::PolicysimulatorV1alpha::GoogleCloudPolicysimulatorV1alphaListReplaysResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::PolicysimulatorV1alpha::GoogleCloudPolicysimulatorV1alphaListReplaysResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_organization_location_replays(parent, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1alpha/{+parent}/replays', options)
          command.response_representation = Google::Apis::PolicysimulatorV1alpha::GoogleCloudPolicysimulatorV1alphaListReplaysResponse::Representation
          command.response_class = Google::Apis::PolicysimulatorV1alpha::GoogleCloudPolicysimulatorV1alphaListReplaysResponse
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
        # @yieldparam result [Google::Apis::PolicysimulatorV1alpha::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::PolicysimulatorV1alpha::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_organization_location_replay_operation(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1alpha/{+name}', options)
          command.response_representation = Google::Apis::PolicysimulatorV1alpha::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::PolicysimulatorV1alpha::GoogleLongrunningOperation
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
        # @yieldparam result [Google::Apis::PolicysimulatorV1alpha::GoogleLongrunningListOperationsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::PolicysimulatorV1alpha::GoogleLongrunningListOperationsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_organization_location_replay_operations(name, filter: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1alpha/{+name}', options)
          command.response_representation = Google::Apis::PolicysimulatorV1alpha::GoogleLongrunningListOperationsResponse::Representation
          command.response_class = Google::Apis::PolicysimulatorV1alpha::GoogleLongrunningListOperationsResponse
          command.params['name'] = name unless name.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists the results of running a Replay.
        # @param [String] parent
        #   Required. The Replay whose results are listed, in the following format: ``
        #   projects|folders|organizations`/`resource-id`/locations/global/replays/`replay-
        #   id`` Example: `projects/my-project/locations/global/replays/506a5f7f-38ce-4d7d-
        #   8e03-479ce1833c36`
        # @param [Fixnum] page_size
        #   The maximum number of ReplayResult objects to return. Defaults to 5000. The
        #   maximum value is 5000; values above 5000 are rounded down to 5000.
        # @param [String] page_token
        #   A page token, received from a previous Simulator.ListReplayResults call.
        #   Provide this token to retrieve the next page of results. When paginating, all
        #   other parameters provided to [Simulator.ListReplayResults[] must match the
        #   call that provided the page token.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::PolicysimulatorV1alpha::GoogleCloudPolicysimulatorV1alphaListReplayResultsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::PolicysimulatorV1alpha::GoogleCloudPolicysimulatorV1alphaListReplayResultsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_organization_location_replay_results(parent, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1alpha/{+parent}/results', options)
          command.response_representation = Google::Apis::PolicysimulatorV1alpha::GoogleCloudPolicysimulatorV1alphaListReplayResultsResponse::Representation
          command.response_class = Google::Apis::PolicysimulatorV1alpha::GoogleCloudPolicysimulatorV1alphaListReplayResultsResponse
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
        # @yieldparam result [Google::Apis::PolicysimulatorV1alpha::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::PolicysimulatorV1alpha::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_org_policy_violations_preview_operation(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1alpha/{+name}', options)
          command.response_representation = Google::Apis::PolicysimulatorV1alpha::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::PolicysimulatorV1alpha::GoogleLongrunningOperation
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates and starts a Replay using the given ReplayConfig.
        # @param [String] parent
        #   Required. The parent resource where this Replay will be created. This resource
        #   must be a project, folder, or organization with a location. Example: `projects/
        #   my-example-project/locations/global`
        # @param [Google::Apis::PolicysimulatorV1alpha::GoogleCloudPolicysimulatorV1alphaReplay] google_cloud_policysimulator_v1alpha_replay_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::PolicysimulatorV1alpha::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::PolicysimulatorV1alpha::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_location_replay(parent, google_cloud_policysimulator_v1alpha_replay_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1alpha/{+parent}/replays', options)
          command.request_representation = Google::Apis::PolicysimulatorV1alpha::GoogleCloudPolicysimulatorV1alphaReplay::Representation
          command.request_object = google_cloud_policysimulator_v1alpha_replay_object
          command.response_representation = Google::Apis::PolicysimulatorV1alpha::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::PolicysimulatorV1alpha::GoogleLongrunningOperation
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets the specified Replay. Each `Replay` is available for at least 7 days.
        # @param [String] name
        #   Required. The name of the Replay to retrieve, in the following format: ``
        #   projects|folders|organizations`/`resource-id`/locations/global/replays/`replay-
        #   id``, where ``resource-id`` is the ID of the project, folder, or organization
        #   that owns the `Replay`. Example: `projects/my-example-project/locations/global/
        #   replays/506a5f7f-38ce-4d7d-8e03-479ce1833c36`
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::PolicysimulatorV1alpha::GoogleCloudPolicysimulatorV1alphaReplay] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::PolicysimulatorV1alpha::GoogleCloudPolicysimulatorV1alphaReplay]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_replay(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1alpha/{+name}', options)
          command.response_representation = Google::Apis::PolicysimulatorV1alpha::GoogleCloudPolicysimulatorV1alphaReplay::Representation
          command.response_class = Google::Apis::PolicysimulatorV1alpha::GoogleCloudPolicysimulatorV1alphaReplay
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists each Replay in a project, folder, or organization. Each `Replay` is
        # available for at least 7 days.
        # @param [String] parent
        #   Required. The parent resource, in the following format: ``projects|folders|
        #   organizations`/`resource-id`/locations/global`, where ``resource-id`` is the
        #   ID of the project, folder, or organization that owns the Replay. Example: `
        #   projects/my-example-project/locations/global` Only `Replay` objects that are
        #   direct children of the provided parent are listed. In other words, `Replay`
        #   objects that are children of a project will not be included when the parent is
        #   a folder of that project.
        # @param [Fixnum] page_size
        #   The maximum number of Replay objects to return. Defaults to 50. The maximum
        #   value is 1000; values above 1000 are rounded down to 1000.
        # @param [String] page_token
        #   A page token, received from a previous Simulator.ListReplays call. Provide
        #   this to retrieve the subsequent page. When paginating, all other parameters
        #   provided to Simulator.ListReplays must match the call that provided the page
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
        # @yieldparam result [Google::Apis::PolicysimulatorV1alpha::GoogleCloudPolicysimulatorV1alphaListReplaysResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::PolicysimulatorV1alpha::GoogleCloudPolicysimulatorV1alphaListReplaysResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_replays(parent, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1alpha/{+parent}/replays', options)
          command.response_representation = Google::Apis::PolicysimulatorV1alpha::GoogleCloudPolicysimulatorV1alphaListReplaysResponse::Representation
          command.response_class = Google::Apis::PolicysimulatorV1alpha::GoogleCloudPolicysimulatorV1alphaListReplaysResponse
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
        # @yieldparam result [Google::Apis::PolicysimulatorV1alpha::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::PolicysimulatorV1alpha::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_replay_operation(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1alpha/{+name}', options)
          command.response_representation = Google::Apis::PolicysimulatorV1alpha::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::PolicysimulatorV1alpha::GoogleLongrunningOperation
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
        # @yieldparam result [Google::Apis::PolicysimulatorV1alpha::GoogleLongrunningListOperationsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::PolicysimulatorV1alpha::GoogleLongrunningListOperationsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_replay_operations(name, filter: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1alpha/{+name}', options)
          command.response_representation = Google::Apis::PolicysimulatorV1alpha::GoogleLongrunningListOperationsResponse::Representation
          command.response_class = Google::Apis::PolicysimulatorV1alpha::GoogleLongrunningListOperationsResponse
          command.params['name'] = name unless name.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists the results of running a Replay.
        # @param [String] parent
        #   Required. The Replay whose results are listed, in the following format: ``
        #   projects|folders|organizations`/`resource-id`/locations/global/replays/`replay-
        #   id`` Example: `projects/my-project/locations/global/replays/506a5f7f-38ce-4d7d-
        #   8e03-479ce1833c36`
        # @param [Fixnum] page_size
        #   The maximum number of ReplayResult objects to return. Defaults to 5000. The
        #   maximum value is 5000; values above 5000 are rounded down to 5000.
        # @param [String] page_token
        #   A page token, received from a previous Simulator.ListReplayResults call.
        #   Provide this token to retrieve the next page of results. When paginating, all
        #   other parameters provided to [Simulator.ListReplayResults[] must match the
        #   call that provided the page token.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::PolicysimulatorV1alpha::GoogleCloudPolicysimulatorV1alphaListReplayResultsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::PolicysimulatorV1alpha::GoogleCloudPolicysimulatorV1alphaListReplayResultsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_replay_results(parent, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1alpha/{+parent}/results', options)
          command.response_representation = Google::Apis::PolicysimulatorV1alpha::GoogleCloudPolicysimulatorV1alphaListReplayResultsResponse::Representation
          command.response_class = Google::Apis::PolicysimulatorV1alpha::GoogleCloudPolicysimulatorV1alphaListReplayResultsResponse
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
