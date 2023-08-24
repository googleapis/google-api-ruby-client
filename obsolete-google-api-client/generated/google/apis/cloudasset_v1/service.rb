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
    module CloudassetV1
      # Cloud Asset API
      #
      # The cloud asset API manages the history and inventory of cloud resources.
      #
      # @example
      #    require 'google/apis/cloudasset_v1'
      #
      #    Cloudasset = Google::Apis::CloudassetV1 # Alias the module
      #    service = Cloudasset::CloudAssetService.new
      #
      # @see https://cloud.google.com/asset-inventory/docs/quickstart
      class CloudAssetService < Google::Apis::Core::BaseService
        # @return [String]
        #  API key. Your API key identifies your project and provides you with API access,
        #  quota, and reports. Required unless you provide an OAuth 2.0 token.
        attr_accessor :key

        # @return [String]
        #  Available to use for quota purposes for server-side applications. Can be any
        #  arbitrary string assigned to a user, but should not exceed 40 characters.
        attr_accessor :quota_user

        def initialize
          super('https://cloudasset.googleapis.com/', '')
          @batch_path = 'batch'
        end
        
        # Creates a feed in a parent project/folder/organization to listen to its asset
        # updates.
        # @param [String] parent
        #   Required. The name of the project/folder/organization where this feed should
        #   be created in. It can only be an organization number (such as "organizations/
        #   123"), a folder number (such as "folders/123"), a project ID (such as "
        #   projects/my-project-id")", or a project number (such as "projects/12345").
        # @param [Google::Apis::CloudassetV1::CreateFeedRequest] create_feed_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::CloudassetV1::Feed] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::CloudassetV1::Feed]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_feed(parent, create_feed_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+parent}/feeds', options)
          command.request_representation = Google::Apis::CloudassetV1::CreateFeedRequest::Representation
          command.request_object = create_feed_request_object
          command.response_representation = Google::Apis::CloudassetV1::Feed::Representation
          command.response_class = Google::Apis::CloudassetV1::Feed
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes an asset feed.
        # @param [String] name
        #   Required. The name of the feed and it must be in the format of: projects/
        #   project_number/feeds/feed_id folders/folder_number/feeds/feed_id organizations/
        #   organization_number/feeds/feed_id
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::CloudassetV1::Empty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::CloudassetV1::Empty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_feed(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1/{+name}', options)
          command.response_representation = Google::Apis::CloudassetV1::Empty::Representation
          command.response_class = Google::Apis::CloudassetV1::Empty
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets details about an asset feed.
        # @param [String] name
        #   Required. The name of the Feed and it must be in the format of: projects/
        #   project_number/feeds/feed_id folders/folder_number/feeds/feed_id organizations/
        #   organization_number/feeds/feed_id
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::CloudassetV1::Feed] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::CloudassetV1::Feed]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_feed(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}', options)
          command.response_representation = Google::Apis::CloudassetV1::Feed::Representation
          command.response_class = Google::Apis::CloudassetV1::Feed
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists all asset feeds in a parent project/folder/organization.
        # @param [String] parent
        #   Required. The parent project/folder/organization whose feeds are to be listed.
        #   It can only be using project/folder/organization number (such as "folders/
        #   12345")", or a project ID (such as "projects/my-project-id").
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::CloudassetV1::ListFeedsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::CloudassetV1::ListFeedsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_feeds(parent, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+parent}/feeds', options)
          command.response_representation = Google::Apis::CloudassetV1::ListFeedsResponse::Representation
          command.response_class = Google::Apis::CloudassetV1::ListFeedsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates an asset feed configuration.
        # @param [String] name
        #   Required. The format will be projects/`project_number`/feeds/`client-
        #   assigned_feed_identifier` or folders/`folder_number`/feeds/`client-
        #   assigned_feed_identifier` or organizations/`organization_number`/feeds/`client-
        #   assigned_feed_identifier` The client-assigned feed identifier must be unique
        #   within the parent project/folder/organization.
        # @param [Google::Apis::CloudassetV1::UpdateFeedRequest] update_feed_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::CloudassetV1::Feed] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::CloudassetV1::Feed]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_feed(name, update_feed_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v1/{+name}', options)
          command.request_representation = Google::Apis::CloudassetV1::UpdateFeedRequest::Representation
          command.request_object = update_feed_request_object
          command.response_representation = Google::Apis::CloudassetV1::Feed::Representation
          command.response_class = Google::Apis::CloudassetV1::Feed
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
        # @yieldparam result [Google::Apis::CloudassetV1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::CloudassetV1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_operation(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}', options)
          command.response_representation = Google::Apis::CloudassetV1::Operation::Representation
          command.response_class = Google::Apis::CloudassetV1::Operation
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Analyzes IAM policies to answer which identities have what accesses on which
        # resources.
        # @param [String] scope
        #   Required. The relative name of the root asset. Only resources and IAM policies
        #   within the scope will be analyzed. This can only be an organization number (
        #   such as "organizations/123"), a folder number (such as "folders/123"), a
        #   project ID (such as "projects/my-project-id"), or a project number (such as "
        #   projects/12345"). To know how to get organization id, visit [here ](https://
        #   cloud.google.com/resource-manager/docs/creating-managing-organization#
        #   retrieving_your_organization_id). To know how to get folder or project id,
        #   visit [here ](https://cloud.google.com/resource-manager/docs/creating-managing-
        #   folders#viewing_or_listing_folders_and_projects).
        # @param [Array<String>, String] analysis_query_access_selector_permissions
        #   Optional. The permissions to appear in result.
        # @param [Array<String>, String] analysis_query_access_selector_roles
        #   Optional. The roles to appear in result.
        # @param [String] analysis_query_identity_selector_identity
        #   Required. The identity appear in the form of members in [IAM policy binding](
        #   https://cloud.google.com/iam/reference/rest/v1/Binding). The examples of
        #   supported forms are: "user:mike@example.com", "group:admins@example.com", "
        #   domain:google.com", "serviceAccount:my-project-id@appspot.gserviceaccount.com".
        #   Notice that wildcard characters (such as * and ?) are not supported. You must
        #   give a specific identity.
        # @param [Boolean] analysis_query_options_analyze_service_account_impersonation
        #   Optional. If true, the response will include access analysis from identities
        #   to resources via service account impersonation. This is a very expensive
        #   operation, because many derived queries will be executed. We highly recommend
        #   you use AssetService.AnalyzeIamPolicyLongrunning rpc instead. For example, if
        #   the request analyzes for which resources user A has permission P, and there's
        #   an IAM policy states user A has iam.serviceAccounts.getAccessToken permission
        #   to a service account SA, and there's another IAM policy states service account
        #   SA has permission P to a GCP folder F, then user A potentially has access to
        #   the GCP folder F. And those advanced analysis results will be included in
        #   AnalyzeIamPolicyResponse.service_account_impersonation_analysis. Another
        #   example, if the request analyzes for who has permission P to a GCP folder F,
        #   and there's an IAM policy states user A has iam.serviceAccounts.actAs
        #   permission to a service account SA, and there's another IAM policy states
        #   service account SA has permission P to the GCP folder F, then user A
        #   potentially has access to the GCP folder F. And those advanced analysis
        #   results will be included in AnalyzeIamPolicyResponse.
        #   service_account_impersonation_analysis. Default is false.
        # @param [Boolean] analysis_query_options_expand_groups
        #   Optional. If true, the identities section of the result will expand any Google
        #   groups appearing in an IAM policy binding. If IamPolicyAnalysisQuery.
        #   identity_selector is specified, the identity in the result will be determined
        #   by the selector, and this flag is not allowed to set. Default is false.
        # @param [Boolean] analysis_query_options_expand_resources
        #   Optional. If true and IamPolicyAnalysisQuery.resource_selector is not
        #   specified, the resource section of the result will expand any resource
        #   attached to an IAM policy to include resources lower in the resource hierarchy.
        #   For example, if the request analyzes for which resources user A has
        #   permission P, and the results include an IAM policy with P on a GCP folder,
        #   the results will also include resources in that folder with permission P. If
        #   true and IamPolicyAnalysisQuery.resource_selector is specified, the resource
        #   section of the result will expand the specified resource to include resources
        #   lower in the resource hierarchy. Only project or lower resources are supported.
        #   Folder and organization resource cannot be used together with this option.
        #   For example, if the request analyzes for which users have permission P on a
        #   GCP project with this option enabled, the results will include all users who
        #   have permission P on that project or any lower resource. Default is false.
        # @param [Boolean] analysis_query_options_expand_roles
        #   Optional. If true, the access section of result will expand any roles
        #   appearing in IAM policy bindings to include their permissions. If
        #   IamPolicyAnalysisQuery.access_selector is specified, the access section of the
        #   result will be determined by the selector, and this flag is not allowed to set.
        #   Default is false.
        # @param [Boolean] analysis_query_options_output_group_edges
        #   Optional. If true, the result will output group identity edges, starting from
        #   the binding's group members, to any expanded identities. Default is false.
        # @param [Boolean] analysis_query_options_output_resource_edges
        #   Optional. If true, the result will output resource edges, starting from the
        #   policy attached resource, to any expanded resources. Default is false.
        # @param [String] analysis_query_resource_selector_full_resource_name
        #   Required. The [full resource name] (https://cloud.google.com/asset-inventory/
        #   docs/resource-name-format) of a resource of [supported resource types](https://
        #   cloud.google.com/asset-inventory/docs/supported-asset-types#
        #   analyzable_asset_types).
        # @param [String] execution_timeout
        #   Optional. Amount of time executable has to complete. See JSON representation
        #   of [Duration](https://developers.google.com/protocol-buffers/docs/proto3#json).
        #   If this field is set with a value less than the RPC deadline, and the
        #   execution of your query hasn't finished in the specified execution timeout,
        #   you will get a response with partial result. Otherwise, your query's execution
        #   will continue until the RPC deadline. If it's not finished until then, you
        #   will get a DEADLINE_EXCEEDED error. Default is empty.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::CloudassetV1::AnalyzeIamPolicyResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::CloudassetV1::AnalyzeIamPolicyResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def analyze_iam_policy(scope, analysis_query_access_selector_permissions: nil, analysis_query_access_selector_roles: nil, analysis_query_identity_selector_identity: nil, analysis_query_options_analyze_service_account_impersonation: nil, analysis_query_options_expand_groups: nil, analysis_query_options_expand_resources: nil, analysis_query_options_expand_roles: nil, analysis_query_options_output_group_edges: nil, analysis_query_options_output_resource_edges: nil, analysis_query_resource_selector_full_resource_name: nil, execution_timeout: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+scope}:analyzeIamPolicy', options)
          command.response_representation = Google::Apis::CloudassetV1::AnalyzeIamPolicyResponse::Representation
          command.response_class = Google::Apis::CloudassetV1::AnalyzeIamPolicyResponse
          command.params['scope'] = scope unless scope.nil?
          command.query['analysisQuery.accessSelector.permissions'] = analysis_query_access_selector_permissions unless analysis_query_access_selector_permissions.nil?
          command.query['analysisQuery.accessSelector.roles'] = analysis_query_access_selector_roles unless analysis_query_access_selector_roles.nil?
          command.query['analysisQuery.identitySelector.identity'] = analysis_query_identity_selector_identity unless analysis_query_identity_selector_identity.nil?
          command.query['analysisQuery.options.analyzeServiceAccountImpersonation'] = analysis_query_options_analyze_service_account_impersonation unless analysis_query_options_analyze_service_account_impersonation.nil?
          command.query['analysisQuery.options.expandGroups'] = analysis_query_options_expand_groups unless analysis_query_options_expand_groups.nil?
          command.query['analysisQuery.options.expandResources'] = analysis_query_options_expand_resources unless analysis_query_options_expand_resources.nil?
          command.query['analysisQuery.options.expandRoles'] = analysis_query_options_expand_roles unless analysis_query_options_expand_roles.nil?
          command.query['analysisQuery.options.outputGroupEdges'] = analysis_query_options_output_group_edges unless analysis_query_options_output_group_edges.nil?
          command.query['analysisQuery.options.outputResourceEdges'] = analysis_query_options_output_resource_edges unless analysis_query_options_output_resource_edges.nil?
          command.query['analysisQuery.resourceSelector.fullResourceName'] = analysis_query_resource_selector_full_resource_name unless analysis_query_resource_selector_full_resource_name.nil?
          command.query['executionTimeout'] = execution_timeout unless execution_timeout.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Analyzes IAM policies asynchronously to answer which identities have what
        # accesses on which resources, and writes the analysis results to a Google Cloud
        # Storage or a BigQuery destination. For Cloud Storage destination, the output
        # format is the JSON format that represents a AnalyzeIamPolicyResponse. This
        # method implements the google.longrunning.Operation, which allows you to track
        # the operation status. We recommend intervals of at least 2 seconds with
        # exponential backoff retry to poll the operation result. The metadata contains
        # the request to help callers to map responses to requests.
        # @param [String] scope
        #   Required. The relative name of the root asset. Only resources and IAM policies
        #   within the scope will be analyzed. This can only be an organization number (
        #   such as "organizations/123"), a folder number (such as "folders/123"), a
        #   project ID (such as "projects/my-project-id"), or a project number (such as "
        #   projects/12345"). To know how to get organization id, visit [here ](https://
        #   cloud.google.com/resource-manager/docs/creating-managing-organization#
        #   retrieving_your_organization_id). To know how to get folder or project id,
        #   visit [here ](https://cloud.google.com/resource-manager/docs/creating-managing-
        #   folders#viewing_or_listing_folders_and_projects).
        # @param [Google::Apis::CloudassetV1::AnalyzeIamPolicyLongrunningRequest] analyze_iam_policy_longrunning_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::CloudassetV1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::CloudassetV1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def analyze_iam_policy_longrunning(scope, analyze_iam_policy_longrunning_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+scope}:analyzeIamPolicyLongrunning', options)
          command.request_representation = Google::Apis::CloudassetV1::AnalyzeIamPolicyLongrunningRequest::Representation
          command.request_object = analyze_iam_policy_longrunning_request_object
          command.response_representation = Google::Apis::CloudassetV1::Operation::Representation
          command.response_class = Google::Apis::CloudassetV1::Operation
          command.params['scope'] = scope unless scope.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Batch gets the update history of assets that overlap a time window. For
        # IAM_POLICY content, this API outputs history when the asset and its attached
        # IAM POLICY both exist. This can create gaps in the output history. Otherwise,
        # this API outputs history with asset in both non-delete or deleted status. If a
        # specified asset does not exist, this API returns an INVALID_ARGUMENT error.
        # @param [String] parent
        #   Required. The relative name of the root asset. It can only be an organization
        #   number (such as "organizations/123"), a project ID (such as "projects/my-
        #   project-id")", or a project number (such as "projects/12345").
        # @param [Array<String>, String] asset_names
        #   A list of the full names of the assets. See: https://cloud.google.com/asset-
        #   inventory/docs/resource-name-format Example: `//compute.googleapis.com/
        #   projects/my_project_123/zones/zone1/instances/instance1`. The request becomes
        #   a no-op if the asset name list is empty, and the max size of the asset name
        #   list is 100 in one request.
        # @param [String] content_type
        #   Optional. The content type.
        # @param [String] read_time_window_end_time
        #   End time of the time window (inclusive). If not specified, the current
        #   timestamp is used instead.
        # @param [String] read_time_window_start_time
        #   Start time of the time window (exclusive).
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::CloudassetV1::BatchGetAssetsHistoryResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::CloudassetV1::BatchGetAssetsHistoryResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def batch_get_assets_history(parent, asset_names: nil, content_type: nil, read_time_window_end_time: nil, read_time_window_start_time: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+parent}:batchGetAssetsHistory', options)
          command.response_representation = Google::Apis::CloudassetV1::BatchGetAssetsHistoryResponse::Representation
          command.response_class = Google::Apis::CloudassetV1::BatchGetAssetsHistoryResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['assetNames'] = asset_names unless asset_names.nil?
          command.query['contentType'] = content_type unless content_type.nil?
          command.query['readTimeWindow.endTime'] = read_time_window_end_time unless read_time_window_end_time.nil?
          command.query['readTimeWindow.startTime'] = read_time_window_start_time unless read_time_window_start_time.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Exports assets with time and resource types to a given Cloud Storage location/
        # BigQuery table. For Cloud Storage location destinations, the output format is
        # newline-delimited JSON. Each line represents a google.cloud.asset.v1.Asset in
        # the JSON format; for BigQuery table destinations, the output table stores the
        # fields in asset proto as columns. This API implements the google.longrunning.
        # Operation API , which allows you to keep track of the export. We recommend
        # intervals of at least 2 seconds with exponential retry to poll the export
        # operation result. For regular-size resource parent, the export operation
        # usually finishes within 5 minutes.
        # @param [String] parent
        #   Required. The relative name of the root asset. This can only be an
        #   organization number (such as "organizations/123"), a project ID (such as "
        #   projects/my-project-id"), or a project number (such as "projects/12345"), or a
        #   folder number (such as "folders/123").
        # @param [Google::Apis::CloudassetV1::ExportAssetsRequest] export_assets_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::CloudassetV1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::CloudassetV1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def export_assets(parent, export_assets_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+parent}:exportAssets', options)
          command.request_representation = Google::Apis::CloudassetV1::ExportAssetsRequest::Representation
          command.request_object = export_assets_request_object
          command.response_representation = Google::Apis::CloudassetV1::Operation::Representation
          command.response_class = Google::Apis::CloudassetV1::Operation
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Searches all IAM policies within the specified scope, such as a project,
        # folder, or organization. The caller must be granted the `cloudasset.assets.
        # searchAllIamPolicies` permission on the desired scope, otherwise the request
        # will be rejected.
        # @param [String] scope
        #   Required. A scope can be a project, a folder, or an organization. The search
        #   is limited to the IAM policies within the `scope`. The caller must be granted
        #   the [`cloudasset.assets.searchAllIamPolicies`](http://cloud.google.com/asset-
        #   inventory/docs/access-control#required_permissions) permission on the desired
        #   scope. The allowed values are: * projects/`PROJECT_ID` (e.g., "projects/foo-
        #   bar") * projects/`PROJECT_NUMBER` (e.g., "projects/12345678") * folders/`
        #   FOLDER_NUMBER` (e.g., "folders/1234567") * organizations/`ORGANIZATION_NUMBER`
        #   (e.g., "organizations/123456")
        # @param [Fixnum] page_size
        #   Optional. The page size for search result pagination. Page size is capped at
        #   500 even if a larger value is given. If set to zero, server will pick an
        #   appropriate default. Returned results may be fewer than requested. When this
        #   happens, there could be more results as long as `next_page_token` is returned.
        # @param [String] page_token
        #   Optional. If present, retrieve the next batch of results from the preceding
        #   call to this method. `page_token` must be the value of `next_page_token` from
        #   the previous response. The values of all other method parameters must be
        #   identical to those in the previous call.
        # @param [String] query
        #   Optional. The query statement. See [how to construct a query](https://cloud.
        #   google.com/asset-inventory/docs/searching-iam-policies#
        #   how_to_construct_a_query) for more information. If not specified or empty, it
        #   will search all the IAM policies within the specified `scope`. Examples: * `
        #   policy:amy@gmail.com` to find IAM policy bindings that specify user "amy@gmail.
        #   com". * `policy:roles/compute.admin` to find IAM policy bindings that specify
        #   the Compute Admin role. * `policy.role.permissions:storage.buckets.update` to
        #   find IAM policy bindings that specify a role containing "storage.buckets.
        #   update" permission. Note that if callers don't have `iam.roles.get` access to
        #   a role's included permissions, policy bindings that specify this role will be
        #   dropped from the search results. * `resource:organizations/123456` to find IAM
        #   policy bindings that are set on "organizations/123456". * `Important` to find
        #   IAM policy bindings that contain "Important" as a word in any of the
        #   searchable fields (except for the included permissions). * `*por*` to find IAM
        #   policy bindings that contain "por" as a substring in any of the searchable
        #   fields (except for the included permissions). * `resource:(instance1 OR
        #   instance2) policy:amy` to find IAM policy bindings that are set on resources "
        #   instance1" or "instance2" and also specify user "amy".
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::CloudassetV1::SearchAllIamPoliciesResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::CloudassetV1::SearchAllIamPoliciesResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def search_all_iam_policies(scope, page_size: nil, page_token: nil, query: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+scope}:searchAllIamPolicies', options)
          command.response_representation = Google::Apis::CloudassetV1::SearchAllIamPoliciesResponse::Representation
          command.response_class = Google::Apis::CloudassetV1::SearchAllIamPoliciesResponse
          command.params['scope'] = scope unless scope.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['query'] = query unless query.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Searches all Cloud resources within the specified scope, such as a project,
        # folder, or organization. The caller must be granted the `cloudasset.assets.
        # searchAllResources` permission on the desired scope, otherwise the request
        # will be rejected.
        # @param [String] scope
        #   Required. A scope can be a project, a folder, or an organization. The search
        #   is limited to the resources within the `scope`. The caller must be granted the
        #   [`cloudasset.assets.searchAllResources`](http://cloud.google.com/asset-
        #   inventory/docs/access-control#required_permissions) permission on the desired
        #   scope. The allowed values are: * projects/`PROJECT_ID` (e.g., "projects/foo-
        #   bar") * projects/`PROJECT_NUMBER` (e.g., "projects/12345678") * folders/`
        #   FOLDER_NUMBER` (e.g., "folders/1234567") * organizations/`ORGANIZATION_NUMBER`
        #   (e.g., "organizations/123456")
        # @param [Array<String>, String] asset_types
        #   Optional. A list of asset types that this request searches for. If empty, it
        #   will search all the [searchable asset types](https://cloud.google.com/asset-
        #   inventory/docs/supported-asset-types#searchable_asset_types).
        # @param [String] order_by
        #   Optional. A comma separated list of fields specifying the sorting order of the
        #   results. The default order is ascending. Add " DESC" after the field name to
        #   indicate descending order. Redundant space characters are ignored. Example: "
        #   location DESC, name". Only string fields in the response are sortable,
        #   including `name`, `displayName`, `description`, `location`. All the other
        #   fields such as repeated fields (e.g., `networkTags`), map fields (e.g., `
        #   labels`) and struct fields (e.g., `additionalAttributes`) are not supported.
        # @param [Fixnum] page_size
        #   Optional. The page size for search result pagination. Page size is capped at
        #   500 even if a larger value is given. If set to zero, server will pick an
        #   appropriate default. Returned results may be fewer than requested. When this
        #   happens, there could be more results as long as `next_page_token` is returned.
        # @param [String] page_token
        #   Optional. If present, then retrieve the next batch of results from the
        #   preceding call to this method. `page_token` must be the value of `
        #   next_page_token` from the previous response. The values of all other method
        #   parameters, must be identical to those in the previous call.
        # @param [String] query
        #   Optional. The query statement. See [how to construct a query](http://cloud.
        #   google.com/asset-inventory/docs/searching-resources#how_to_construct_a_query)
        #   for more information. If not specified or empty, it will search all the
        #   resources within the specified `scope`. Note that the query string is compared
        #   against each Cloud IAM policy binding, including its members, roles, and Cloud
        #   IAM conditions. The returned Cloud IAM policies will only contain the bindings
        #   that match your query. To learn more about the IAM policy structure, see [IAM
        #   policy doc](https://cloud.google.com/iam/docs/policies#structure). Examples: *
        #   `name:Important` to find Cloud resources whose name contains "Important" as a
        #   word. * `displayName:Impor*` to find Cloud resources whose display name
        #   contains "Impor" as a prefix. * `description:*por*` to find Cloud resources
        #   whose description contains "por" as a substring. * `location:us-west*` to find
        #   Cloud resources whose location is prefixed with "us-west". * `labels:prod` to
        #   find Cloud resources whose labels contain "prod" as a key or value. * `labels.
        #   env:prod` to find Cloud resources that have a label "env" and its value is "
        #   prod". * `labels.env:*` to find Cloud resources that have a label "env". * `
        #   Important` to find Cloud resources that contain "Important" as a word in any
        #   of the searchable fields. * `Impor*` to find Cloud resources that contain "
        #   Impor" as a prefix in any of the searchable fields. * `*por*` to find Cloud
        #   resources that contain "por" as a substring in any of the searchable fields. *
        #   `Important location:(us-west1 OR global)` to find Cloud resources that contain
        #   "Important" as a word in any of the searchable fields and are also located in
        #   the "us-west1" region or the "global" location.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::CloudassetV1::SearchAllResourcesResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::CloudassetV1::SearchAllResourcesResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def search_all_resources(scope, asset_types: nil, order_by: nil, page_size: nil, page_token: nil, query: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+scope}:searchAllResources', options)
          command.response_representation = Google::Apis::CloudassetV1::SearchAllResourcesResponse::Representation
          command.response_class = Google::Apis::CloudassetV1::SearchAllResourcesResponse
          command.params['scope'] = scope unless scope.nil?
          command.query['assetTypes'] = asset_types unless asset_types.nil?
          command.query['orderBy'] = order_by unless order_by.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['query'] = query unless query.nil?
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
