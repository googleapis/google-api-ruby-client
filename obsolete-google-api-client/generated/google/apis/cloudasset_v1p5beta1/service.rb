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
    module CloudassetV1p5beta1
      # Cloud Asset API
      #
      # The cloud asset API manages the history and inventory of cloud resources.
      #
      # @example
      #    require 'google/apis/cloudasset_v1p5beta1'
      #
      #    Cloudasset = Google::Apis::CloudassetV1p5beta1 # Alias the module
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
        
        # Lists assets with time and resource types and returns paged results in
        # response.
        # @param [String] parent
        #   Required. Name of the organization or project the assets belong to. Format: "
        #   organizations/[organization-number]" (such as "organizations/123"), "projects/[
        #   project-number]" (such as "projects/my-project-id"), or "projects/[project-id]"
        #   (such as "projects/12345").
        # @param [Array<String>, String] asset_types
        #   A list of asset types to take a snapshot for. For example: "compute.googleapis.
        #   com/Disk". Regular expression is also supported. For example: * "compute.
        #   googleapis.com.*" snapshots resources whose asset type starts with "compute.
        #   googleapis.com". * ".*Instance" snapshots resources whose asset type ends with
        #   "Instance". * ".*Instance.*" snapshots resources whose asset type contains "
        #   Instance". See [RE2](https://github.com/google/re2/wiki/Syntax) for all
        #   supported regular expression syntax. If the regular expression does not match
        #   any supported asset type, an INVALID_ARGUMENT error will be returned. If
        #   specified, only matching assets will be returned, otherwise, it will snapshot
        #   all asset types. See [Introduction to Cloud Asset Inventory](https://cloud.
        #   google.com/asset-inventory/docs/overview) for all supported asset types.
        # @param [String] content_type
        #   Asset content type. If not specified, no content but the asset name will be
        #   returned.
        # @param [Fixnum] page_size
        #   The maximum number of assets to be returned in a single response. Default is
        #   100, minimum is 1, and maximum is 1000.
        # @param [String] page_token
        #   The `next_page_token` returned from the previous `ListAssetsResponse`, or
        #   unspecified for the first `ListAssetsRequest`. It is a continuation of a prior
        #   `ListAssets` call, and the API should return the next page of assets.
        # @param [String] read_time
        #   Timestamp to take an asset snapshot. This can only be set to a timestamp
        #   between the current time and the current time minus 35 days (inclusive). If
        #   not specified, the current time will be used. Due to delays in resource data
        #   collection and indexing, there is a volatile window during which running the
        #   same query may get different results.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::CloudassetV1p5beta1::ListAssetsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::CloudassetV1p5beta1::ListAssetsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_assets(parent, asset_types: nil, content_type: nil, page_size: nil, page_token: nil, read_time: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1p5beta1/{+parent}/assets', options)
          command.response_representation = Google::Apis::CloudassetV1p5beta1::ListAssetsResponse::Representation
          command.response_class = Google::Apis::CloudassetV1p5beta1::ListAssetsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['assetTypes'] = asset_types unless asset_types.nil?
          command.query['contentType'] = content_type unless content_type.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['readTime'] = read_time unless read_time.nil?
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
