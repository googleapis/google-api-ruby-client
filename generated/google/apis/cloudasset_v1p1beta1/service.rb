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
    module CloudassetV1p1beta1
      # Cloud Asset API
      #
      # The cloud asset API manages the history and inventory of cloud resources.
      #
      # @example
      #    require 'google/apis/cloudasset_v1p1beta1'
      #
      #    Cloudasset = Google::Apis::CloudassetV1p1beta1 # Alias the module
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
        
        # Searches all the IAM policies within a given accessible CRM scope (project/
        # folder/organization). This RPC gives callers especially administrators the
        # ability to search all the IAM policies within a scope, even if they don't have
        # `.getIamPolicy` permission of all the IAM policies. Callers should have `cloud.
        # assets.SearchAllIamPolicies` permission on the requested scope, otherwise the
        # request will be rejected.
        # @param [String] scope
        #   Required. The relative name of an asset. The search is limited to the
        #   resources within the `scope`. The allowed value must be: * Organization number
        #   (such as "organizations/123") * Folder number(such as "folders/1234") *
        #   Project number (such as "projects/12345") * Project id (such as "projects/abc")
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
        #   Optional. The query statement. Examples: * "policy:myuser@mydomain.com" * "
        #   policy:(myuser@mydomain.com viewer)"
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::CloudassetV1p1beta1::SearchAllIamPoliciesResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::CloudassetV1p1beta1::SearchAllIamPoliciesResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def search_iam_policy_all(scope, page_size: nil, page_token: nil, query: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1p1beta1/{+scope}/iamPolicies:searchAll', options)
          command.response_representation = Google::Apis::CloudassetV1p1beta1::SearchAllIamPoliciesResponse::Representation
          command.response_class = Google::Apis::CloudassetV1p1beta1::SearchAllIamPoliciesResponse
          command.params['scope'] = scope unless scope.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['query'] = query unless query.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Searches all the resources within a given accessible CRM scope (project/folder/
        # organization). This RPC gives callers especially administrators the ability to
        # search all the resources within a scope, even if they don't have `.get`
        # permission of all the resources. Callers should have `cloud.assets.
        # SearchAllResources` permission on the requested scope, otherwise the request
        # will be rejected.
        # @param [String] scope
        #   Required. The relative name of an asset. The search is limited to the
        #   resources within the `scope`. The allowed value must be: * Organization number
        #   (such as "organizations/123") * Folder number(such as "folders/1234") *
        #   Project number (such as "projects/12345") * Project id (such as "projects/abc")
        # @param [Array<String>, String] asset_types
        #   Optional. A list of asset types that this request searches for. If empty, it
        #   will search all the supported asset types.
        # @param [String] order_by
        #   Optional. A comma separated list of fields specifying the sorting order of the
        #   results. The default order is ascending. Add ` DESC` after the field name to
        #   indicate descending order. Redundant space characters are ignored. For example,
        #   ` location DESC , name `.
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
        #   Optional. The query statement.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::CloudassetV1p1beta1::SearchAllResourcesResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::CloudassetV1p1beta1::SearchAllResourcesResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def search_resource_all(scope, asset_types: nil, order_by: nil, page_size: nil, page_token: nil, query: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1p1beta1/{+scope}/resources:searchAll', options)
          command.response_representation = Google::Apis::CloudassetV1p1beta1::SearchAllResourcesResponse::Representation
          command.response_class = Google::Apis::CloudassetV1p1beta1::SearchAllResourcesResponse
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
