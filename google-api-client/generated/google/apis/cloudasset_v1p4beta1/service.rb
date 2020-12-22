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
    module CloudassetV1p4beta1
      # Cloud Asset API
      #
      # The cloud asset API manages the history and inventory of cloud resources.
      #
      # @example
      #    require 'google/apis/cloudasset_v1p4beta1'
      #
      #    Cloudasset = Google::Apis::CloudassetV1p4beta1 # Alias the module
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
        
        # Analyzes IAM policies to answer which identities have what accesses on which
        # resources.
        # @param [String] parent
        #   Required. The relative name of the root asset. Only resources and IAM policies
        #   within the parent will be analyzed. This can only be an organization number (
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
        # @param [String] analysis_query_resource_selector_full_resource_name
        #   Required. The [full resource name](https://cloud.google.com/asset-inventory/
        #   docs/resource-name-format) of a resource of [supported resource types](https://
        #   cloud.google.com/asset-inventory/docs/supported-asset-types#
        #   analyzable_asset_types).
        # @param [Boolean] options_analyze_service_account_impersonation
        #   Optional. If true, the response will include access analysis from identities
        #   to resources via service account impersonation. This is a very expensive
        #   operation, because many derived queries will be executed. We highly recommend
        #   you use AssetService.ExportIamPolicyAnalysis rpc instead. For example, if the
        #   request analyzes for which resources user A has permission P, and there's an
        #   IAM policy states user A has iam.serviceAccounts.getAccessToken permission to
        #   a service account SA, and there's another IAM policy states service account SA
        #   has permission P to a GCP folder F, then user A potentially has access to the
        #   GCP folder F. And those advanced analysis results will be included in
        #   AnalyzeIamPolicyResponse.service_account_impersonation_analysis. Another
        #   example, if the request analyzes for who has permission P to a GCP folder F,
        #   and there's an IAM policy states user A has iam.serviceAccounts.actAs
        #   permission to a service account SA, and there's another IAM policy states
        #   service account SA has permission P to the GCP folder F, then user A
        #   potentially has access to the GCP folder F. And those advanced analysis
        #   results will be included in AnalyzeIamPolicyResponse.
        #   service_account_impersonation_analysis. Default is false.
        # @param [String] options_execution_timeout
        #   Optional. Amount of time executable has to complete. See JSON representation
        #   of [Duration](https://developers.google.com/protocol-buffers/docs/proto3#json).
        #   If this field is set with a value less than the RPC deadline, and the
        #   execution of your query hasn't finished in the specified execution timeout,
        #   you will get a response with partial result. Otherwise, your query's execution
        #   will continue until the RPC deadline. If it's not finished until then, you
        #   will get a DEADLINE_EXCEEDED error. Default is empty.
        # @param [Boolean] options_expand_groups
        #   Optional. If true, the identities section of the result will expand any Google
        #   groups appearing in an IAM policy binding. If identity_selector is specified,
        #   the identity in the result will be determined by the selector, and this flag
        #   will have no effect. Default is false.
        # @param [Boolean] options_expand_resources
        #   Optional. If true, the resource section of the result will expand any resource
        #   attached to an IAM policy to include resources lower in the resource hierarchy.
        #   For example, if the request analyzes for which resources user A has
        #   permission P, and the results include an IAM policy with P on a GCP folder,
        #   the results will also include resources in that folder with permission P. If
        #   resource_selector is specified, the resource section of the result will be
        #   determined by the selector, and this flag will have no effect. Default is
        #   false.
        # @param [Boolean] options_expand_roles
        #   Optional. If true, the access section of result will expand any roles
        #   appearing in IAM policy bindings to include their permissions. If
        #   access_selector is specified, the access section of the result will be
        #   determined by the selector, and this flag will have no effect. Default is
        #   false.
        # @param [Boolean] options_output_group_edges
        #   Optional. If true, the result will output group identity edges, starting from
        #   the binding's group members, to any expanded identities. Default is false.
        # @param [Boolean] options_output_resource_edges
        #   Optional. If true, the result will output resource edges, starting from the
        #   policy attached resource, to any expanded resources. Default is false.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::CloudassetV1p4beta1::AnalyzeIamPolicyResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::CloudassetV1p4beta1::AnalyzeIamPolicyResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def analyze_iam_policy(parent, analysis_query_access_selector_permissions: nil, analysis_query_access_selector_roles: nil, analysis_query_identity_selector_identity: nil, analysis_query_resource_selector_full_resource_name: nil, options_analyze_service_account_impersonation: nil, options_execution_timeout: nil, options_expand_groups: nil, options_expand_resources: nil, options_expand_roles: nil, options_output_group_edges: nil, options_output_resource_edges: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1p4beta1/{+parent}:analyzeIamPolicy', options)
          command.response_representation = Google::Apis::CloudassetV1p4beta1::AnalyzeIamPolicyResponse::Representation
          command.response_class = Google::Apis::CloudassetV1p4beta1::AnalyzeIamPolicyResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['analysisQuery.accessSelector.permissions'] = analysis_query_access_selector_permissions unless analysis_query_access_selector_permissions.nil?
          command.query['analysisQuery.accessSelector.roles'] = analysis_query_access_selector_roles unless analysis_query_access_selector_roles.nil?
          command.query['analysisQuery.identitySelector.identity'] = analysis_query_identity_selector_identity unless analysis_query_identity_selector_identity.nil?
          command.query['analysisQuery.resourceSelector.fullResourceName'] = analysis_query_resource_selector_full_resource_name unless analysis_query_resource_selector_full_resource_name.nil?
          command.query['options.analyzeServiceAccountImpersonation'] = options_analyze_service_account_impersonation unless options_analyze_service_account_impersonation.nil?
          command.query['options.executionTimeout'] = options_execution_timeout unless options_execution_timeout.nil?
          command.query['options.expandGroups'] = options_expand_groups unless options_expand_groups.nil?
          command.query['options.expandResources'] = options_expand_resources unless options_expand_resources.nil?
          command.query['options.expandRoles'] = options_expand_roles unless options_expand_roles.nil?
          command.query['options.outputGroupEdges'] = options_output_group_edges unless options_output_group_edges.nil?
          command.query['options.outputResourceEdges'] = options_output_resource_edges unless options_output_resource_edges.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Exports the answers of which identities have what accesses on which resources
        # to a Google Cloud Storage destination. The output format is the JSON format
        # that represents a AnalyzeIamPolicyResponse in the JSON format. This method
        # implements the google.longrunning.Operation, which allows you to keep track of
        # the export. We recommend intervals of at least 2 seconds with exponential
        # retry to poll the export operation result. The metadata contains the request
        # to help callers to map responses to requests.
        # @param [String] parent
        #   Required. The relative name of the root asset. Only resources and IAM policies
        #   within the parent will be analyzed. This can only be an organization number (
        #   such as "organizations/123"), a folder number (such as "folders/123"), a
        #   project ID (such as "projects/my-project-id"), or a project number (such as "
        #   projects/12345"). To know how to get organization id, visit [here ](https://
        #   cloud.google.com/resource-manager/docs/creating-managing-organization#
        #   retrieving_your_organization_id). To know how to get folder or project id,
        #   visit [here ](https://cloud.google.com/resource-manager/docs/creating-managing-
        #   folders#viewing_or_listing_folders_and_projects).
        # @param [Google::Apis::CloudassetV1p4beta1::ExportIamPolicyAnalysisRequest] export_iam_policy_analysis_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::CloudassetV1p4beta1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::CloudassetV1p4beta1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def export_iam_policy_analysis(parent, export_iam_policy_analysis_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1p4beta1/{+parent}:exportIamPolicyAnalysis', options)
          command.request_representation = Google::Apis::CloudassetV1p4beta1::ExportIamPolicyAnalysisRequest::Representation
          command.request_object = export_iam_policy_analysis_request_object
          command.response_representation = Google::Apis::CloudassetV1p4beta1::Operation::Representation
          command.response_class = Google::Apis::CloudassetV1p4beta1::Operation
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
