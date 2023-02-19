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
    module CloudassetV1
      # Cloud Asset API
      #
      # The Cloud Asset API manages the history and inventory of Google Cloud
      #  resources.
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
          super('https://cloudasset.googleapis.com/', '',
                client_name: 'google-apis-cloudasset_v1',
                client_version: Google::Apis::CloudassetV1::GEM_VERSION)
          @batch_path = 'batch'
        end
        
        # Lists assets with time and resource types and returns paged results in
        # response.
        # @param [String] parent
        #   Required. Name of the organization, folder, or project the assets belong to.
        #   Format: "organizations/[organization-number]" (such as "organizations/123"), "
        #   projects/[project-id]" (such as "projects/my-project-id"), "projects/[project-
        #   number]" (such as "projects/12345"), or "folders/[folder-number]" (such as "
        #   folders/12345").
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
        # @param [Array<String>, String] relationship_types
        #   A list of relationship types to output, for example: `
        #   INSTANCE_TO_INSTANCEGROUP`. This field should only be specified if
        #   content_type=RELATIONSHIP. * If specified: it snapshots specified
        #   relationships. It returns an error if any of the [relationship_types] doesn't
        #   belong to the supported relationship types of the [asset_types] or if any of
        #   the [asset_types] doesn't belong to the source types of the [
        #   relationship_types]. * Otherwise: it snapshots the supported relationships for
        #   all [asset_types] or returns an error if any of the [asset_types] has no
        #   relationship support. An unspecified asset types field means all supported
        #   asset_types. See [Introduction to Cloud Asset Inventory](https://cloud.google.
        #   com/asset-inventory/docs/overview) for all supported asset types and
        #   relationship types.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::CloudassetV1::ListAssetsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::CloudassetV1::ListAssetsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_assets(parent, asset_types: nil, content_type: nil, page_size: nil, page_token: nil, read_time: nil, relationship_types: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+parent}/assets', options)
          command.response_representation = Google::Apis::CloudassetV1::ListAssetsResponse::Representation
          command.response_class = Google::Apis::CloudassetV1::ListAssetsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['assetTypes'] = asset_types unless asset_types.nil?
          command.query['contentType'] = content_type unless content_type.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['readTime'] = read_time unless read_time.nil?
          command.query['relationshipTypes'] = relationship_types unless relationship_types.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets effective IAM policies for a batch of resources.
        # @param [String] scope
        #   Required. Only IAM policies on or below the scope will be returned. This can
        #   only be an organization number (such as "organizations/123"), a folder number (
        #   such as "folders/123"), a project ID (such as "projects/my-project-id"), or a
        #   project number (such as "projects/12345"). To know how to get organization id,
        #   visit [here ](https://cloud.google.com/resource-manager/docs/creating-managing-
        #   organization#retrieving_your_organization_id). To know how to get folder or
        #   project id, visit [here ](https://cloud.google.com/resource-manager/docs/
        #   creating-managing-folders#viewing_or_listing_folders_and_projects).
        # @param [Array<String>, String] names
        #   Required. The names refer to the [full_resource_names] (https://cloud.google.
        #   com/asset-inventory/docs/resource-name-format) of [searchable asset types](
        #   https://cloud.google.com/asset-inventory/docs/supported-asset-types#
        #   searchable_asset_types). A maximum of 20 resources' effective policies can be
        #   retrieved in a batch.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::CloudassetV1::BatchGetEffectiveIamPoliciesResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::CloudassetV1::BatchGetEffectiveIamPoliciesResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def batch_effective_iam_policy_get(scope, names: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+scope}/effectiveIamPolicies:batchGet', options)
          command.response_representation = Google::Apis::CloudassetV1::BatchGetEffectiveIamPoliciesResponse::Representation
          command.response_class = Google::Apis::CloudassetV1::BatchGetEffectiveIamPoliciesResponse
          command.params['scope'] = scope unless scope.nil?
          command.query['names'] = names unless names.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a feed in a parent project/folder/organization to listen to its asset
        # updates.
        # @param [String] parent
        #   Required. The name of the project/folder/organization where this feed should
        #   be created in. It can only be an organization number (such as "organizations/
        #   123"), a folder number (such as "folders/123"), a project ID (such as "
        #   projects/my-project-id"), or a project number (such as "projects/12345").
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
        
        # Creates a saved query in a parent project/folder/organization.
        # @param [String] parent
        #   Required. The name of the project/folder/organization where this saved_query
        #   should be created in. It can only be an organization number (such as "
        #   organizations/123"), a folder number (such as "folders/123"), a project ID (
        #   such as "projects/my-project-id"), or a project number (such as "projects/
        #   12345").
        # @param [Google::Apis::CloudassetV1::SavedQuery] saved_query_object
        # @param [String] saved_query_id
        #   Required. The ID to use for the saved query, which must be unique in the
        #   specified parent. It will become the final component of the saved query's
        #   resource name. This value should be 4-63 characters, and valid characters are `
        #   a-z-`. Notice that this field is required in the saved query creation, and the
        #   `name` field of the `saved_query` will be ignored.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::CloudassetV1::SavedQuery] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::CloudassetV1::SavedQuery]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_saved_query(parent, saved_query_object = nil, saved_query_id: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+parent}/savedQueries', options)
          command.request_representation = Google::Apis::CloudassetV1::SavedQuery::Representation
          command.request_object = saved_query_object
          command.response_representation = Google::Apis::CloudassetV1::SavedQuery::Representation
          command.response_class = Google::Apis::CloudassetV1::SavedQuery
          command.params['parent'] = parent unless parent.nil?
          command.query['savedQueryId'] = saved_query_id unless saved_query_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes a saved query.
        # @param [String] name
        #   Required. The name of the saved query to delete. It must be in the format of: *
        #   projects/project_number/savedQueries/saved_query_id * folders/folder_number/
        #   savedQueries/saved_query_id * organizations/organization_number/savedQueries/
        #   saved_query_id
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
        def delete_saved_query(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1/{+name}', options)
          command.response_representation = Google::Apis::CloudassetV1::Empty::Representation
          command.response_class = Google::Apis::CloudassetV1::Empty
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets details about a saved query.
        # @param [String] name
        #   Required. The name of the saved query and it must be in the format of: *
        #   projects/project_number/savedQueries/saved_query_id * folders/folder_number/
        #   savedQueries/saved_query_id * organizations/organization_number/savedQueries/
        #   saved_query_id
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::CloudassetV1::SavedQuery] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::CloudassetV1::SavedQuery]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_saved_query(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}', options)
          command.response_representation = Google::Apis::CloudassetV1::SavedQuery::Representation
          command.response_class = Google::Apis::CloudassetV1::SavedQuery
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists all saved queries in a parent project/folder/organization.
        # @param [String] parent
        #   Required. The parent project/folder/organization whose savedQueries are to be
        #   listed. It can only be using project/folder/organization number (such as "
        #   folders/12345")", or a project ID (such as "projects/my-project-id").
        # @param [String] filter
        #   Optional. The expression to filter resources. The expression is a list of zero
        #   or more restrictions combined via logical operators `AND` and `OR`. When `AND`
        #   and `OR` are both used in the expression, parentheses must be appropriately
        #   used to group the combinations. The expression may also contain regular
        #   expressions. See https://google.aip.dev/160 for more information on the
        #   grammar.
        # @param [Fixnum] page_size
        #   Optional. The maximum number of saved queries to return per page. The service
        #   may return fewer than this value. If unspecified, at most 50 will be returned.
        #   The maximum value is 1000; values above 1000 will be coerced to 1000.
        # @param [String] page_token
        #   Optional. A page token, received from a previous `ListSavedQueries` call.
        #   Provide this to retrieve the subsequent page. When paginating, all other
        #   parameters provided to `ListSavedQueries` must match the call that provided
        #   the page token.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::CloudassetV1::ListSavedQueriesResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::CloudassetV1::ListSavedQueriesResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_saved_queries(parent, filter: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+parent}/savedQueries', options)
          command.response_representation = Google::Apis::CloudassetV1::ListSavedQueriesResponse::Representation
          command.response_class = Google::Apis::CloudassetV1::ListSavedQueriesResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates a saved query.
        # @param [String] name
        #   The resource name of the saved query. The format must be: * projects/
        #   project_number/savedQueries/saved_query_id * folders/folder_number/
        #   savedQueries/saved_query_id * organizations/organization_number/savedQueries/
        #   saved_query_id
        # @param [Google::Apis::CloudassetV1::SavedQuery] saved_query_object
        # @param [String] update_mask
        #   Required. The list of fields to update.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::CloudassetV1::SavedQuery] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::CloudassetV1::SavedQuery]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_saved_query(name, saved_query_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v1/{+name}', options)
          command.request_representation = Google::Apis::CloudassetV1::SavedQuery::Representation
          command.request_object = saved_query_object
          command.response_representation = Google::Apis::CloudassetV1::SavedQuery::Representation
          command.response_class = Google::Apis::CloudassetV1::SavedQuery
          command.params['name'] = name unless name.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
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
        # @param [String] analysis_query_condition_context_access_time
        #   The hypothetical access timestamp to evaluate IAM conditions. Note that this
        #   value must not be earlier than the current time; otherwise, an
        #   INVALID_ARGUMENT error will be returned.
        # @param [String] analysis_query_identity_selector_identity
        #   Required. The identity appear in the form of principals in [IAM policy binding]
        #   (https://cloud.google.com/iam/reference/rest/v1/Binding). The examples of
        #   supported forms are: "user:mike@example.com", "group:admins@example.com", "
        #   domain:google.com", "serviceAccount:my-project-id@appspot.gserviceaccount.com".
        #   Notice that wildcard characters (such as * and ?) are not supported. You must
        #   give a specific identity.
        # @param [Boolean] analysis_query_options_analyze_service_account_impersonation
        #   Optional. If true, the response will include access analysis from identities
        #   to resources via service account impersonation. This is a very expensive
        #   operation, because many derived queries will be executed. We highly recommend
        #   you use AssetService.AnalyzeIamPolicyLongrunning RPC instead. For example, if
        #   the request analyzes for which resources user A has permission P, and there's
        #   an IAM policy states user A has iam.serviceAccounts.getAccessToken permission
        #   to a service account SA, and there's another IAM policy states service account
        #   SA has permission P to a Google Cloud folder F, then user A potentially has
        #   access to the Google Cloud folder F. And those advanced analysis results will
        #   be included in AnalyzeIamPolicyResponse.service_account_impersonation_analysis.
        #   Another example, if the request analyzes for who has permission P to a Google
        #   Cloud folder F, and there's an IAM policy states user A has iam.
        #   serviceAccounts.actAs permission to a service account SA, and there's another
        #   IAM policy states service account SA has permission P to the Google Cloud
        #   folder F, then user A potentially has access to the Google Cloud folder F. And
        #   those advanced analysis results will be included in AnalyzeIamPolicyResponse.
        #   service_account_impersonation_analysis. Only the following permissions are
        #   considered in this analysis: * `iam.serviceAccounts.actAs` * `iam.
        #   serviceAccounts.signBlob` * `iam.serviceAccounts.signJwt` * `iam.
        #   serviceAccounts.getAccessToken` * `iam.serviceAccounts.getOpenIdToken` * `iam.
        #   serviceAccounts.implicitDelegation` Default is false.
        # @param [Boolean] analysis_query_options_expand_groups
        #   Optional. If true, the identities section of the result will expand any Google
        #   groups appearing in an IAM policy binding. If IamPolicyAnalysisQuery.
        #   identity_selector is specified, the identity in the result will be determined
        #   by the selector, and this flag is not allowed to set. If true, the default max
        #   expansion per group is 1000 for AssetService.AnalyzeIamPolicy][]. Default is
        #   false.
        # @param [Boolean] analysis_query_options_expand_resources
        #   Optional. If true and IamPolicyAnalysisQuery.resource_selector is not
        #   specified, the resource section of the result will expand any resource
        #   attached to an IAM policy to include resources lower in the resource hierarchy.
        #   For example, if the request analyzes for which resources user A has
        #   permission P, and the results include an IAM policy with P on a Google Cloud
        #   folder, the results will also include resources in that folder with permission
        #   P. If true and IamPolicyAnalysisQuery.resource_selector is specified, the
        #   resource section of the result will expand the specified resource to include
        #   resources lower in the resource hierarchy. Only project or lower resources are
        #   supported. Folder and organization resources cannot be used together with this
        #   option. For example, if the request analyzes for which users have permission P
        #   on a Google Cloud project with this option enabled, the results will include
        #   all users who have permission P on that project or any lower resource. If true,
        #   the default max expansion per resource is 1000 for AssetService.
        #   AnalyzeIamPolicy][] and 100000 for AssetService.AnalyzeIamPolicyLongrunning][].
        #   Default is false.
        # @param [Boolean] analysis_query_options_expand_roles
        #   Optional. If true, the access section of result will expand any roles
        #   appearing in IAM policy bindings to include their permissions. If
        #   IamPolicyAnalysisQuery.access_selector is specified, the access section of the
        #   result will be determined by the selector, and this flag is not allowed to set.
        #   Default is false.
        # @param [Boolean] analysis_query_options_output_group_edges
        #   Optional. If true, the result will output the relevant membership
        #   relationships between groups and other groups, and between groups and
        #   principals. Default is false.
        # @param [Boolean] analysis_query_options_output_resource_edges
        #   Optional. If true, the result will output the relevant parent/child
        #   relationships between resources. Default is false.
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
        # @param [String] saved_analysis_query
        #   Optional. The name of a saved query, which must be in the format of: *
        #   projects/project_number/savedQueries/saved_query_id * folders/folder_number/
        #   savedQueries/saved_query_id * organizations/organization_number/savedQueries/
        #   saved_query_id If both `analysis_query` and `saved_analysis_query` are
        #   provided, they will be merged together with the `saved_analysis_query` as base
        #   and the `analysis_query` as overrides. For more details of the merge behavior,
        #   please refer to the [MergeFrom](https://developers.google.com/protocol-buffers/
        #   docs/reference/cpp/google.protobuf.message#Message.MergeFrom.details) page.
        #   Note that you cannot override primitive fields with default value, such as 0
        #   or empty string, etc., because we use proto3, which doesn't support field
        #   presence yet.
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
        def analyze_iam_policy(scope, analysis_query_access_selector_permissions: nil, analysis_query_access_selector_roles: nil, analysis_query_condition_context_access_time: nil, analysis_query_identity_selector_identity: nil, analysis_query_options_analyze_service_account_impersonation: nil, analysis_query_options_expand_groups: nil, analysis_query_options_expand_resources: nil, analysis_query_options_expand_roles: nil, analysis_query_options_output_group_edges: nil, analysis_query_options_output_resource_edges: nil, analysis_query_resource_selector_full_resource_name: nil, execution_timeout: nil, saved_analysis_query: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+scope}:analyzeIamPolicy', options)
          command.response_representation = Google::Apis::CloudassetV1::AnalyzeIamPolicyResponse::Representation
          command.response_class = Google::Apis::CloudassetV1::AnalyzeIamPolicyResponse
          command.params['scope'] = scope unless scope.nil?
          command.query['analysisQuery.accessSelector.permissions'] = analysis_query_access_selector_permissions unless analysis_query_access_selector_permissions.nil?
          command.query['analysisQuery.accessSelector.roles'] = analysis_query_access_selector_roles unless analysis_query_access_selector_roles.nil?
          command.query['analysisQuery.conditionContext.accessTime'] = analysis_query_condition_context_access_time unless analysis_query_condition_context_access_time.nil?
          command.query['analysisQuery.identitySelector.identity'] = analysis_query_identity_selector_identity unless analysis_query_identity_selector_identity.nil?
          command.query['analysisQuery.options.analyzeServiceAccountImpersonation'] = analysis_query_options_analyze_service_account_impersonation unless analysis_query_options_analyze_service_account_impersonation.nil?
          command.query['analysisQuery.options.expandGroups'] = analysis_query_options_expand_groups unless analysis_query_options_expand_groups.nil?
          command.query['analysisQuery.options.expandResources'] = analysis_query_options_expand_resources unless analysis_query_options_expand_resources.nil?
          command.query['analysisQuery.options.expandRoles'] = analysis_query_options_expand_roles unless analysis_query_options_expand_roles.nil?
          command.query['analysisQuery.options.outputGroupEdges'] = analysis_query_options_output_group_edges unless analysis_query_options_output_group_edges.nil?
          command.query['analysisQuery.options.outputResourceEdges'] = analysis_query_options_output_resource_edges unless analysis_query_options_output_resource_edges.nil?
          command.query['analysisQuery.resourceSelector.fullResourceName'] = analysis_query_resource_selector_full_resource_name unless analysis_query_resource_selector_full_resource_name.nil?
          command.query['executionTimeout'] = execution_timeout unless execution_timeout.nil?
          command.query['savedAnalysisQuery'] = saved_analysis_query unless saved_analysis_query.nil?
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
        # the metadata for the long-running operation.
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
        
        # Analyze moving a resource to a specified destination without kicking off the
        # actual move. The analysis is best effort depending on the user's permissions
        # of viewing different hierarchical policies and configurations. The policies
        # and configuration are subject to change before the actual resource migration
        # takes place.
        # @param [String] resource
        #   Required. Name of the resource to perform the analysis against. Only Google
        #   Cloud projects are supported as of today. Hence, this can only be a project ID
        #   (such as "projects/my-project-id") or a project number (such as "projects/
        #   12345").
        # @param [String] destination_parent
        #   Required. Name of the Google Cloud folder or organization to reparent the
        #   target resource. The analysis will be performed against hypothetically moving
        #   the resource to this specified desitination parent. This can only be a folder
        #   number (such as "folders/123") or an organization number (such as "
        #   organizations/123").
        # @param [String] view
        #   Analysis view indicating what information should be included in the analysis
        #   response. If unspecified, the default view is FULL.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::CloudassetV1::AnalyzeMoveResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::CloudassetV1::AnalyzeMoveResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def analyze_move(resource, destination_parent: nil, view: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+resource}:analyzeMove', options)
          command.response_representation = Google::Apis::CloudassetV1::AnalyzeMoveResponse::Representation
          command.response_class = Google::Apis::CloudassetV1::AnalyzeMoveResponse
          command.params['resource'] = resource unless resource.nil?
          command.query['destinationParent'] = destination_parent unless destination_parent.nil?
          command.query['view'] = view unless view.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Analyzes organization policies under a scope.
        # @param [String] scope
        #   Required. The organization to scope the request. Only organization policies
        #   within the scope will be analyzed. * organizations/`ORGANIZATION_NUMBER` (e.g.,
        #   "organizations/123456")
        # @param [String] constraint
        #   Required. The name of the constraint to analyze organization policies for. The
        #   response only contains analyzed organization policies for the provided
        #   constraint.
        # @param [String] filter
        #   The expression to filter AnalyzeOrgPoliciesResponse.org_policy_results. The
        #   only supported field is `consolidated_policy.attached_resource`, and the only
        #   supported operator is `=`. Example: consolidated_policy.attached_resource="//
        #   cloudresourcemanager.googleapis.com/folders/001" will return the org policy
        #   results of"folders/001".
        # @param [Fixnum] page_size
        #   The maximum number of items to return per page. If unspecified,
        #   AnalyzeOrgPoliciesResponse.org_policy_results will contain 20 items with a
        #   maximum of 200.
        # @param [String] page_token
        #   The pagination token to retrieve the next page.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::CloudassetV1::AnalyzeOrgPoliciesResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::CloudassetV1::AnalyzeOrgPoliciesResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def analyze_org_policies(scope, constraint: nil, filter: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+scope}:analyzeOrgPolicies', options)
          command.response_representation = Google::Apis::CloudassetV1::AnalyzeOrgPoliciesResponse::Representation
          command.response_class = Google::Apis::CloudassetV1::AnalyzeOrgPoliciesResponse
          command.params['scope'] = scope unless scope.nil?
          command.query['constraint'] = constraint unless constraint.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Analyzes organization policies governed assets (Google Cloud resources or
        # policies) under a scope. This RPC supports custom constraints and the
        # following 10 canned constraints: * storage.uniformBucketLevelAccess * iam.
        # disableServiceAccountKeyCreation * iam.allowedPolicyMemberDomains * compute.
        # vmExternalIpAccess * appengine.enforceServiceAccountActAsCheck * gcp.
        # resourceLocations * compute.trustedImageProjects * compute.
        # skipDefaultNetworkCreation * compute.requireOsLogin * compute.
        # disableNestedVirtualization This RPC only returns either resources of types
        # supported by [searchable asset types](https://cloud.google.com/asset-inventory/
        # docs/supported-asset-types#searchable_asset_types), or IAM policies.
        # @param [String] scope
        #   Required. The organization to scope the request. Only organization policies
        #   within the scope will be analyzed. The output assets will also be limited to
        #   the ones governed by those in-scope organization policies. * organizations/`
        #   ORGANIZATION_NUMBER` (e.g., "organizations/123456")
        # @param [String] constraint
        #   Required. The name of the constraint to analyze governed assets for. The
        #   analysis only contains analyzed organization policies for the provided
        #   constraint.
        # @param [String] filter
        #   The expression to filter the governed assets in result. The only supported
        #   fields for governed resources are `governed_resource.project` and `
        #   governed_resource.folders`. The only supported fields for governed iam
        #   policies are `governed_iam_policy.project` and `governed_iam_policy.folders`.
        #   The only supported operator is `=`. Example 1: governed_resource.project="
        #   projects/12345678" filter will return all governed resources under projects/
        #   12345678 including the project ifself, if applicable. Example 2:
        #   governed_iam_policy.folders="folders/12345678" filter will return all governed
        #   iam policies under folders/12345678, if applicable.
        # @param [Fixnum] page_size
        #   The maximum number of items to return per page. If unspecified,
        #   AnalyzeOrgPolicyGovernedAssetsResponse.governed_assets will contain 100 items
        #   with a maximum of 200.
        # @param [String] page_token
        #   The pagination token to retrieve the next page.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::CloudassetV1::AnalyzeOrgPolicyGovernedAssetsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::CloudassetV1::AnalyzeOrgPolicyGovernedAssetsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def analyze_org_policy_governed_assets(scope, constraint: nil, filter: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+scope}:analyzeOrgPolicyGovernedAssets', options)
          command.response_representation = Google::Apis::CloudassetV1::AnalyzeOrgPolicyGovernedAssetsResponse::Representation
          command.response_class = Google::Apis::CloudassetV1::AnalyzeOrgPolicyGovernedAssetsResponse
          command.params['scope'] = scope unless scope.nil?
          command.query['constraint'] = constraint unless constraint.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Analyzes organization policies governed containers (projects, folders or
        # organization) under a scope.
        # @param [String] scope
        #   Required. The organization to scope the request. Only organization policies
        #   within the scope will be analyzed. The output containers will also be limited
        #   to the ones governed by those in-scope organization policies. * organizations/`
        #   ORGANIZATION_NUMBER` (e.g., "organizations/123456")
        # @param [String] constraint
        #   Required. The name of the constraint to analyze governed containers for. The
        #   analysis only contains organization policies for the provided constraint.
        # @param [String] filter
        #   The expression to filter the governed containers in result. The only supported
        #   field is `parent`, and the only supported operator is `=`. Example: parent="//
        #   cloudresourcemanager.googleapis.com/folders/001" will return all containers
        #   under "folders/001".
        # @param [Fixnum] page_size
        #   The maximum number of items to return per page. If unspecified,
        #   AnalyzeOrgPolicyGovernedContainersResponse.governed_containers will contain
        #   100 items with a maximum of 200.
        # @param [String] page_token
        #   The pagination token to retrieve the next page.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::CloudassetV1::AnalyzeOrgPolicyGovernedContainersResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::CloudassetV1::AnalyzeOrgPolicyGovernedContainersResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def analyze_org_policy_governed_containers(scope, constraint: nil, filter: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+scope}:analyzeOrgPolicyGovernedContainers', options)
          command.response_representation = Google::Apis::CloudassetV1::AnalyzeOrgPolicyGovernedContainersResponse::Representation
          command.response_class = Google::Apis::CloudassetV1::AnalyzeOrgPolicyGovernedContainersResponse
          command.params['scope'] = scope unless scope.nil?
          command.query['constraint'] = constraint unless constraint.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
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
        # @param [Array<String>, String] relationship_types
        #   Optional. A list of relationship types to output, for example: `
        #   INSTANCE_TO_INSTANCEGROUP`. This field should only be specified if
        #   content_type=RELATIONSHIP. * If specified: it outputs specified relationships'
        #   history on the [asset_names]. It returns an error if any of the [
        #   relationship_types] doesn't belong to the supported relationship types of the [
        #   asset_names] or if any of the [asset_names]'s types doesn't belong to the
        #   source types of the [relationship_types]. * Otherwise: it outputs the
        #   supported relationships' history on the [asset_names] or returns an error if
        #   any of the [asset_names]'s types has no relationship support. See [
        #   Introduction to Cloud Asset Inventory](https://cloud.google.com/asset-
        #   inventory/docs/overview) for all supported asset types and relationship types.
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
        def batch_get_assets_history(parent, asset_names: nil, content_type: nil, read_time_window_end_time: nil, read_time_window_start_time: nil, relationship_types: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+parent}:batchGetAssetsHistory', options)
          command.response_representation = Google::Apis::CloudassetV1::BatchGetAssetsHistoryResponse::Representation
          command.response_class = Google::Apis::CloudassetV1::BatchGetAssetsHistoryResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['assetNames'] = asset_names unless asset_names.nil?
          command.query['contentType'] = content_type unless content_type.nil?
          command.query['readTimeWindow.endTime'] = read_time_window_end_time unless read_time_window_end_time.nil?
          command.query['readTimeWindow.startTime'] = read_time_window_start_time unless read_time_window_start_time.nil?
          command.query['relationshipTypes'] = relationship_types unless relationship_types.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Exports assets with time and resource types to a given Cloud Storage location/
        # BigQuery table. For Cloud Storage location destinations, the output format is
        # newline-delimited JSON. Each line represents a google.cloud.asset.v1.Asset in
        # the JSON format; for BigQuery table destinations, the output table stores the
        # fields in asset Protobuf as columns. This API implements the google.
        # longrunning.Operation API, which allows you to keep track of the export. We
        # recommend intervals of at least 2 seconds with exponential retry to poll the
        # export operation result. For regular-size resource parent, the export
        # operation usually finishes within 5 minutes.
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
        
        # Issue a job that queries assets using a SQL statement compatible with [
        # BigQuery Standard SQL](http://cloud/bigquery/docs/reference/standard-sql/
        # enabling-standard-sql). If the query execution finishes within timeout and
        # there's no pagination, the full query results will be returned in the `
        # QueryAssetsResponse`. Otherwise, full query results can be obtained by issuing
        # extra requests with the `job_reference` from the a previous `QueryAssets` call.
        # Note, the query result has approximately 10 GB limitation enforced by
        # BigQuery https://cloud.google.com/bigquery/docs/best-practices-performance-
        # output, queries return larger results will result in errors.
        # @param [String] parent
        #   Required. The relative name of the root asset. This can only be an
        #   organization number (such as "organizations/123"), a project ID (such as "
        #   projects/my-project-id"), or a project number (such as "projects/12345"), or a
        #   folder number (such as "folders/123"). Only assets belonging to the `parent`
        #   will be returned.
        # @param [Google::Apis::CloudassetV1::QueryAssetsRequest] query_assets_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::CloudassetV1::QueryAssetsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::CloudassetV1::QueryAssetsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def query_assets(parent, query_assets_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+parent}:queryAssets', options)
          command.request_representation = Google::Apis::CloudassetV1::QueryAssetsRequest::Representation
          command.request_object = query_assets_request_object
          command.response_representation = Google::Apis::CloudassetV1::QueryAssetsResponse::Representation
          command.response_class = Google::Apis::CloudassetV1::QueryAssetsResponse
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
        #   the [`cloudasset.assets.searchAllIamPolicies`](https://cloud.google.com/asset-
        #   inventory/docs/access-control#required_permissions) permission on the desired
        #   scope. The allowed values are: * projects/`PROJECT_ID` (e.g., "projects/foo-
        #   bar") * projects/`PROJECT_NUMBER` (e.g., "projects/12345678") * folders/`
        #   FOLDER_NUMBER` (e.g., "folders/1234567") * organizations/`ORGANIZATION_NUMBER`
        #   (e.g., "organizations/123456")
        # @param [Array<String>, String] asset_types
        #   Optional. A list of asset types that the IAM policies are attached to. If
        #   empty, it will search the IAM policies that are attached to all the [
        #   searchable asset types](https://cloud.google.com/asset-inventory/docs/
        #   supported-asset-types#searchable_asset_types). Regular expressions are also
        #   supported. For example: * "compute.googleapis.com.*" snapshots IAM policies
        #   attached to asset type starts with "compute.googleapis.com". * ".*Instance"
        #   snapshots IAM policies attached to asset type ends with "Instance". * ".*
        #   Instance.*" snapshots IAM policies attached to asset type contains "Instance".
        #   See [RE2](https://github.com/google/re2/wiki/Syntax) for all supported regular
        #   expression syntax. If the regular expression does not match any supported
        #   asset type, an INVALID_ARGUMENT error will be returned.
        # @param [String] order_by
        #   Optional. A comma-separated list of fields specifying the sorting order of the
        #   results. The default order is ascending. Add " DESC" after the field name to
        #   indicate descending order. Redundant space characters are ignored. Example: "
        #   assetType DESC, resource". Only singular primitive fields in the response are
        #   sortable: * resource * assetType * project All the other fields such as
        #   repeated fields (e.g., `folders`) and non-primitive fields (e.g., `policy`)
        #   are not supported.
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
        #   will search all the IAM policies within the specified `scope`. Note that the
        #   query string is compared against each IAM policy binding, including its
        #   principals, roles, and IAM conditions. The returned IAM policies will only
        #   contain the bindings that match your query. To learn more about the IAM policy
        #   structure, see the [IAM policy documentation](https://cloud.google.com/iam/
        #   help/allow-policies/structure). Examples: * `policy:amy@gmail.com` to find IAM
        #   policy bindings that specify user "amy@gmail.com". * `policy:roles/compute.
        #   admin` to find IAM policy bindings that specify the Compute Admin role. * `
        #   policy:comp*` to find IAM policy bindings that contain "comp" as a prefix of
        #   any word in the binding. * `policy.role.permissions:storage.buckets.update` to
        #   find IAM policy bindings that specify a role containing "storage.buckets.
        #   update" permission. Note that if callers don't have `iam.roles.get` access to
        #   a role's included permissions, policy bindings that specify this role will be
        #   dropped from the search results. * `policy.role.permissions:upd*` to find IAM
        #   policy bindings that specify a role containing "upd" as a prefix of any word
        #   in the role permission. Note that if callers don't have `iam.roles.get` access
        #   to a role's included permissions, policy bindings that specify this role will
        #   be dropped from the search results. * `resource:organizations/123456` to find
        #   IAM policy bindings that are set on "organizations/123456". * `resource=//
        #   cloudresourcemanager.googleapis.com/projects/myproject` to find IAM policy
        #   bindings that are set on the project named "myproject". * `Important` to find
        #   IAM policy bindings that contain "Important" as a word in any of the
        #   searchable fields (except for the included permissions). * `resource:(
        #   instance1 OR instance2) policy:amy` to find IAM policy bindings that are set
        #   on resources "instance1" or "instance2" and also specify user "amy". * `roles:
        #   roles/compute.admin` to find IAM policy bindings that specify the Compute
        #   Admin role. * `memberTypes:user` to find IAM policy bindings that contain the
        #   principal type "user".
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
        def search_all_iam_policies(scope, asset_types: nil, order_by: nil, page_size: nil, page_token: nil, query: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+scope}:searchAllIamPolicies', options)
          command.response_representation = Google::Apis::CloudassetV1::SearchAllIamPoliciesResponse::Representation
          command.response_class = Google::Apis::CloudassetV1::SearchAllIamPoliciesResponse
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
        
        # Searches all Google Cloud resources within the specified scope, such as a
        # project, folder, or organization. The caller must be granted the `cloudasset.
        # assets.searchAllResources` permission on the desired scope, otherwise the
        # request will be rejected.
        # @param [String] scope
        #   Required. A scope can be a project, a folder, or an organization. The search
        #   is limited to the resources within the `scope`. The caller must be granted the
        #   [`cloudasset.assets.searchAllResources`](https://cloud.google.com/asset-
        #   inventory/docs/access-control#required_permissions) permission on the desired
        #   scope. The allowed values are: * projects/`PROJECT_ID` (e.g., "projects/foo-
        #   bar") * projects/`PROJECT_NUMBER` (e.g., "projects/12345678") * folders/`
        #   FOLDER_NUMBER` (e.g., "folders/1234567") * organizations/`ORGANIZATION_NUMBER`
        #   (e.g., "organizations/123456")
        # @param [Array<String>, String] asset_types
        #   Optional. A list of asset types that this request searches for. If empty, it
        #   will search all the [searchable asset types](https://cloud.google.com/asset-
        #   inventory/docs/supported-asset-types#searchable_asset_types). Regular
        #   expressions are also supported. For example: * "compute.googleapis.com.*"
        #   snapshots resources whose asset type starts with "compute.googleapis.com". * ".
        #   *Instance" snapshots resources whose asset type ends with "Instance". * ".*
        #   Instance.*" snapshots resources whose asset type contains "Instance". See [RE2]
        #   (https://github.com/google/re2/wiki/Syntax) for all supported regular
        #   expression syntax. If the regular expression does not match any supported
        #   asset type, an INVALID_ARGUMENT error will be returned.
        # @param [String] order_by
        #   Optional. A comma-separated list of fields specifying the sorting order of the
        #   results. The default order is ascending. Add " DESC" after the field name to
        #   indicate descending order. Redundant space characters are ignored. Example: "
        #   location DESC, name". Only singular primitive fields in the response are
        #   sortable: * name * assetType * project * displayName * description * location *
        #   createTime * updateTime * state * parentFullResourceName * parentAssetType
        #   All the other fields such as repeated fields (e.g., `networkTags`, `kmsKeys`),
        #   map fields (e.g., `labels`) and struct fields (e.g., `additionalAttributes`)
        #   are not supported.
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
        #   Optional. The query statement. See [how to construct a query](https://cloud.
        #   google.com/asset-inventory/docs/searching-resources#how_to_construct_a_query)
        #   for more information. If not specified or empty, it will search all the
        #   resources within the specified `scope`. Examples: * `name:Important` to find
        #   Google Cloud resources whose name contains "Important" as a word. * `name=
        #   Important` to find the Google Cloud resource whose name is exactly "Important".
        #   * `displayName:Impor*` to find Google Cloud resources whose display name
        #   contains "Impor" as a prefix of any word in the field. * `location:us-west*`
        #   to find Google Cloud resources whose location contains both "us" and "west" as
        #   prefixes. * `labels:prod` to find Google Cloud resources whose labels contain "
        #   prod" as a key or value. * `labels.env:prod` to find Google Cloud resources
        #   that have a label "env" and its value is "prod". * `labels.env:*` to find
        #   Google Cloud resources that have a label "env". * `kmsKey:key` to find Google
        #   Cloud resources encrypted with a customer-managed encryption key whose name
        #   contains "key" as a word. This field is deprecated. Please use the `kmsKeys`
        #   field to retrieve Cloud KMS key information. * `kmsKeys:key` to find Google
        #   Cloud resources encrypted with customer-managed encryption keys whose name
        #   contains the word "key". * `relationships:instance-group-1` to find Google
        #   Cloud resources that have relationships with "instance-group-1" in the related
        #   resource name. * `relationships:INSTANCE_TO_INSTANCEGROUP` to find Compute
        #   Engine instances that have relationships of type "INSTANCE_TO_INSTANCEGROUP". *
        #   `relationships.INSTANCE_TO_INSTANCEGROUP:instance-group-1` to find Compute
        #   Engine instances that have relationships with "instance-group-1" in the
        #   Compute Engine instance group resource name, for relationship type "
        #   INSTANCE_TO_INSTANCEGROUP". * `state:ACTIVE` to find Google Cloud resources
        #   whose state contains "ACTIVE" as a word. * `NOT state:ACTIVE` to find Google
        #   Cloud resources whose state doesn't contain "ACTIVE" as a word. * `createTime<
        #   1609459200` to find Google Cloud resources that were created before "2021-01-
        #   01 00:00:00 UTC". 1609459200 is the epoch timestamp of "2021-01-01 00:00:00
        #   UTC" in seconds. * `updateTime>1609459200` to find Google Cloud resources that
        #   were updated after "2021-01-01 00:00:00 UTC". 1609459200 is the epoch
        #   timestamp of "2021-01-01 00:00:00 UTC" in seconds. * `Important` to find
        #   Google Cloud resources that contain "Important" as a word in any of the
        #   searchable fields. * `Impor*` to find Google Cloud resources that contain "
        #   Impor" as a prefix of any word in any of the searchable fields. * `Important
        #   location:(us-west1 OR global)` to find Google Cloud resources that contain "
        #   Important" as a word in any of the searchable fields and are also located in
        #   the "us-west1" region or the "global" location.
        # @param [String] read_mask
        #   Optional. A comma-separated list of fields specifying which fields to be
        #   returned in ResourceSearchResult. Only '*' or combination of top level fields
        #   can be specified. Field names of both snake_case and camelCase are supported.
        #   Examples: `"*"`, `"name,location"`, `"name,versionedResources"`. The read_mask
        #   paths must be valid field paths listed but not limited to (both snake_case and
        #   camelCase are supported): * name * assetType * project * displayName *
        #   description * location * tagKeys * tagValues * tagValueIds * labels *
        #   networkTags * kmsKey (This field is deprecated. Please use the `kmsKeys` field
        #   to retrieve Cloud KMS key information.) * kmsKeys * createTime * updateTime *
        #   state * additionalAttributes * versionedResources If read_mask is not
        #   specified, all fields except versionedResources will be returned. If only '*'
        #   is specified, all fields including versionedResources will be returned. Any
        #   invalid field path will trigger INVALID_ARGUMENT error.
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
        def search_all_resources(scope, asset_types: nil, order_by: nil, page_size: nil, page_token: nil, query: nil, read_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+scope}:searchAllResources', options)
          command.response_representation = Google::Apis::CloudassetV1::SearchAllResourcesResponse::Representation
          command.response_class = Google::Apis::CloudassetV1::SearchAllResourcesResponse
          command.params['scope'] = scope unless scope.nil?
          command.query['assetTypes'] = asset_types unless asset_types.nil?
          command.query['orderBy'] = order_by unless order_by.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['query'] = query unless query.nil?
          command.query['readMask'] = read_mask unless read_mask.nil?
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
