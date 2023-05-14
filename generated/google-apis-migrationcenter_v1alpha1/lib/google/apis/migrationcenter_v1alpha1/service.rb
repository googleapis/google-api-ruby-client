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
    module MigrationcenterV1alpha1
      # Migration Center API
      #
      # 
      #
      # @example
      #    require 'google/apis/migrationcenter_v1alpha1'
      #
      #    Migrationcenter = Google::Apis::MigrationcenterV1alpha1 # Alias the module
      #    service = Migrationcenter::MigrationCenterAPIService.new
      #
      # @see https://cloud.google.com/migration-center
      class MigrationCenterAPIService < Google::Apis::Core::BaseService
        # @return [String]
        #  API key. Your API key identifies your project and provides you with API access,
        #  quota, and reports. Required unless you provide an OAuth 2.0 token.
        attr_accessor :key

        # @return [String]
        #  Available to use for quota purposes for server-side applications. Can be any
        #  arbitrary string assigned to a user, but should not exceed 40 characters.
        attr_accessor :quota_user

        def initialize
          super('https://migrationcenter.googleapis.com/', '',
                client_name: 'google-apis-migrationcenter_v1alpha1',
                client_version: Google::Apis::MigrationcenterV1alpha1::GEM_VERSION)
          @batch_path = 'batch'
        end
        
        # Gets information about a location.
        # @param [String] name
        #   Resource name for the location.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::MigrationcenterV1alpha1::Location] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::MigrationcenterV1alpha1::Location]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1alpha1/{+name}', options)
          command.response_representation = Google::Apis::MigrationcenterV1alpha1::Location::Representation
          command.response_class = Google::Apis::MigrationcenterV1alpha1::Location
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets the details of regional settings.
        # @param [String] name
        #   Required. Name of the resource.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::MigrationcenterV1alpha1::Settings] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::MigrationcenterV1alpha1::Settings]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_settings(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1alpha1/{+name}', options)
          command.response_representation = Google::Apis::MigrationcenterV1alpha1::Settings::Representation
          command.response_class = Google::Apis::MigrationcenterV1alpha1::Settings
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists information about the supported locations for this service.
        # @param [String] name
        #   The resource that owns the locations collection, if applicable.
        # @param [String] filter
        #   A filter to narrow down results to a preferred subset. The filtering language
        #   accepts strings like `"displayName=tokyo"`, and is documented in more detail
        #   in [AIP-160](https://google.aip.dev/160).
        # @param [Fixnum] page_size
        #   The maximum number of results to return. If not set, the service selects a
        #   default.
        # @param [String] page_token
        #   A page token received from the `next_page_token` field in the response. Send
        #   that page token to receive the subsequent page.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::MigrationcenterV1alpha1::ListLocationsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::MigrationcenterV1alpha1::ListLocationsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_locations(name, filter: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1alpha1/{+name}/locations', options)
          command.response_representation = Google::Apis::MigrationcenterV1alpha1::ListLocationsResponse::Representation
          command.response_class = Google::Apis::MigrationcenterV1alpha1::ListLocationsResponse
          command.params['name'] = name unless name.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates the regional-level project settings.
        # @param [String] name
        #   Output only. The name of the resource.
        # @param [Google::Apis::MigrationcenterV1alpha1::Settings] settings_object
        # @param [String] request_id
        #   Optional. An optional request ID to identify requests. Specify a unique
        #   request ID so that if you must retry your request, the server will know to
        #   ignore the request if it has already been completed. The server will guarantee
        #   that for at least 60 minutes since the first request. For example, consider a
        #   situation where you make an initial request and the request times out. If you
        #   make the request again with the same request ID, the server can check if
        #   original operation with the same request ID was received, and if so, will
        #   ignore the second request. This prevents clients from accidentally creating
        #   duplicate commitments. The request ID must be a valid UUID with the exception
        #   that zero UUID is not supported (00000000-0000-0000-0000-000000000000).
        # @param [String] update_mask
        #   Required. Field mask is used to specify the fields to be overwritten in the `
        #   Settings` resource by the update. The values specified in the `update_mask`
        #   field are relative to the resource, not the full request. A field will be
        #   overwritten if it is in the mask. A single * value in the mask lets you to
        #   overwrite all fields.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::MigrationcenterV1alpha1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::MigrationcenterV1alpha1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def update_project_location_settings(name, settings_object = nil, request_id: nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v1alpha1/{+name}', options)
          command.request_representation = Google::Apis::MigrationcenterV1alpha1::Settings::Representation
          command.request_object = settings_object
          command.response_representation = Google::Apis::MigrationcenterV1alpha1::Operation::Representation
          command.response_class = Google::Apis::MigrationcenterV1alpha1::Operation
          command.params['name'] = name unless name.nil?
          command.query['requestId'] = request_id unless request_id.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Aggregates the requested fields based on provided function.
        # @param [String] parent
        #   Required. Parent value for `AggregateAssetsValuesRequest`.
        # @param [Google::Apis::MigrationcenterV1alpha1::AggregateAssetsValuesRequest] aggregate_assets_values_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::MigrationcenterV1alpha1::AggregateAssetsValuesResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::MigrationcenterV1alpha1::AggregateAssetsValuesResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def aggregate_project_location_asset_values(parent, aggregate_assets_values_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1alpha1/{+parent}/assets:aggregateValues', options)
          command.request_representation = Google::Apis::MigrationcenterV1alpha1::AggregateAssetsValuesRequest::Representation
          command.request_object = aggregate_assets_values_request_object
          command.response_representation = Google::Apis::MigrationcenterV1alpha1::AggregateAssetsValuesResponse::Representation
          command.response_class = Google::Apis::MigrationcenterV1alpha1::AggregateAssetsValuesResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes list of Assets.
        # @param [String] parent
        #   Required. Parent value for batch asset delete.
        # @param [Google::Apis::MigrationcenterV1alpha1::BatchDeleteAssetsRequest] batch_delete_assets_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::MigrationcenterV1alpha1::Empty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::MigrationcenterV1alpha1::Empty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def batch_delete_assets(parent, batch_delete_assets_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1alpha1/{+parent}/assets:batchDelete', options)
          command.request_representation = Google::Apis::MigrationcenterV1alpha1::BatchDeleteAssetsRequest::Representation
          command.request_object = batch_delete_assets_request_object
          command.response_representation = Google::Apis::MigrationcenterV1alpha1::Empty::Representation
          command.response_class = Google::Apis::MigrationcenterV1alpha1::Empty
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates the parameters of a list of assets.
        # @param [String] parent
        #   Required. Parent value for batch asset update.
        # @param [Google::Apis::MigrationcenterV1alpha1::BatchUpdateAssetsRequest] batch_update_assets_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::MigrationcenterV1alpha1::BatchUpdateAssetsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::MigrationcenterV1alpha1::BatchUpdateAssetsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def batch_update_assets(parent, batch_update_assets_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1alpha1/{+parent}/assets:batchUpdate', options)
          command.request_representation = Google::Apis::MigrationcenterV1alpha1::BatchUpdateAssetsRequest::Representation
          command.request_object = batch_update_assets_request_object
          command.response_representation = Google::Apis::MigrationcenterV1alpha1::BatchUpdateAssetsResponse::Representation
          command.response_class = Google::Apis::MigrationcenterV1alpha1::BatchUpdateAssetsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes an asset.
        # @param [String] name
        #   Required. Name of the resource.
        # @param [String] request_id
        #   Optional. An optional request ID to identify requests. Specify a unique
        #   request ID so that if you must retry your request, the server will know to
        #   ignore the request if it has already been completed. The server will guarantee
        #   that for at least 60 minutes after the first request. For example, consider a
        #   situation where you make an initial request and the request times out. If you
        #   make the request again with the same request ID, the server can check if
        #   original operation with the same request ID was received, and if so, will
        #   ignore the second request. This prevents clients from accidentally creating
        #   duplicate commitments. The request ID must be a valid UUID with the exception
        #   that zero UUID is not supported (00000000-0000-0000-0000-000000000000).
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::MigrationcenterV1alpha1::Empty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::MigrationcenterV1alpha1::Empty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_location_asset(name, request_id: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1alpha1/{+name}', options)
          command.response_representation = Google::Apis::MigrationcenterV1alpha1::Empty::Representation
          command.response_class = Google::Apis::MigrationcenterV1alpha1::Empty
          command.params['name'] = name unless name.nil?
          command.query['requestId'] = request_id unless request_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets the details of an asset.
        # @param [String] name
        #   Required. Name of the resource.
        # @param [String] view
        #   View of the assets. Defaults to BASIC.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::MigrationcenterV1alpha1::Asset] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::MigrationcenterV1alpha1::Asset]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_asset(name, view: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1alpha1/{+name}', options)
          command.response_representation = Google::Apis::MigrationcenterV1alpha1::Asset::Representation
          command.response_class = Google::Apis::MigrationcenterV1alpha1::Asset
          command.params['name'] = name unless name.nil?
          command.query['view'] = view unless view.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists all the assets in a given project and location.
        # @param [String] parent
        #   Required. Parent value for `ListAssetsRequest`.
        # @param [String] filter
        #   Filtering results.
        # @param [String] order_by
        #   Field to sort by. See https://google.aip.dev/132#ordering for more details.
        # @param [Fixnum] page_size
        #   Requested page size. Server may return fewer items than requested. If
        #   unspecified, server will pick an appropriate default.
        # @param [String] page_token
        #   A token identifying a page of results the server should return.
        # @param [String] view
        #   View of the assets. Defaults to BASIC.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::MigrationcenterV1alpha1::ListAssetsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::MigrationcenterV1alpha1::ListAssetsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_assets(parent, filter: nil, order_by: nil, page_size: nil, page_token: nil, view: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1alpha1/{+parent}/assets', options)
          command.response_representation = Google::Apis::MigrationcenterV1alpha1::ListAssetsResponse::Representation
          command.response_class = Google::Apis::MigrationcenterV1alpha1::ListAssetsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['orderBy'] = order_by unless order_by.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['view'] = view unless view.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates the parameters of an asset.
        # @param [String] name
        #   Output only. The full name of the asset.
        # @param [Google::Apis::MigrationcenterV1alpha1::Asset] asset_object
        # @param [String] request_id
        #   Optional. An optional request ID to identify requests. Specify a unique
        #   request ID so that if you must retry your request, the server will know to
        #   ignore the request if it has already been completed. The server will guarantee
        #   that for at least 60 minutes since the first request. For example, consider a
        #   situation where you make an initial request and the request times out. If you
        #   make the request again with the same request ID, the server can check if
        #   original operation with the same request ID was received, and if so, will
        #   ignore the second request. This prevents clients from accidentally creating
        #   duplicate commitments. The request ID must be a valid UUID with the exception
        #   that zero UUID is not supported (00000000-0000-0000-0000-000000000000).
        # @param [String] update_mask
        #   Required. Field mask is used to specify the fields to be overwritten in the `
        #   Asset` resource by the update. The values specified in the `update_mask` field
        #   are relative to the resource, not the full request. A field will be
        #   overwritten if it is in the mask. A single * value in the mask lets you to
        #   overwrite all fields.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::MigrationcenterV1alpha1::Asset] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::MigrationcenterV1alpha1::Asset]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_project_location_asset(name, asset_object = nil, request_id: nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v1alpha1/{+name}', options)
          command.request_representation = Google::Apis::MigrationcenterV1alpha1::Asset::Representation
          command.request_object = asset_object
          command.response_representation = Google::Apis::MigrationcenterV1alpha1::Asset::Representation
          command.response_class = Google::Apis::MigrationcenterV1alpha1::Asset
          command.params['name'] = name unless name.nil?
          command.query['requestId'] = request_id unless request_id.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Reports a set of frames.
        # @param [String] parent
        #   Required. Parent of the resource.
        # @param [Google::Apis::MigrationcenterV1alpha1::Frames] frames_object
        # @param [String] source
        #   Required. Reference to a source.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::MigrationcenterV1alpha1::ReportAssetFramesResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::MigrationcenterV1alpha1::ReportAssetFramesResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def report_project_location_asset_asset_frames(parent, frames_object = nil, source: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1alpha1/{+parent}/assets:reportAssetFrames', options)
          command.request_representation = Google::Apis::MigrationcenterV1alpha1::Frames::Representation
          command.request_object = frames_object
          command.response_representation = Google::Apis::MigrationcenterV1alpha1::ReportAssetFramesResponse::Representation
          command.response_class = Google::Apis::MigrationcenterV1alpha1::ReportAssetFramesResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['source'] = source unless source.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Adds assets to a group.
        # @param [String] group
        #   Required. Group reference.
        # @param [Google::Apis::MigrationcenterV1alpha1::AddAssetsToGroupRequest] add_assets_to_group_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::MigrationcenterV1alpha1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::MigrationcenterV1alpha1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def add_assets_to_group(group, add_assets_to_group_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1alpha1/{+group}:addAssets', options)
          command.request_representation = Google::Apis::MigrationcenterV1alpha1::AddAssetsToGroupRequest::Representation
          command.request_object = add_assets_to_group_request_object
          command.response_representation = Google::Apis::MigrationcenterV1alpha1::Operation::Representation
          command.response_class = Google::Apis::MigrationcenterV1alpha1::Operation
          command.params['group'] = group unless group.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a new group in a given project and location.
        # @param [String] parent
        #   Required. Value for parent.
        # @param [Google::Apis::MigrationcenterV1alpha1::Group] group_object
        # @param [String] group_id
        #   Required. User specified ID for the group. It will become the last component
        #   of the group name. The ID must be unique within the project, must conform with
        #   RFC-1034, is restricted to lower-cased letters, and has a maximum length of 63
        #   characters. The ID must match the regular expression: `[a-z]([a-z0-9-]`0,61`[a-
        #   z0-9])?`.
        # @param [String] request_id
        #   Optional. An optional request ID to identify requests. Specify a unique
        #   request ID so that if you must retry your request, the server will know to
        #   ignore the request if it has already been completed. The server will guarantee
        #   that for at least 60 minutes since the first request. For example, consider a
        #   situation where you make an initial request and the request times out. If you
        #   make the request again with the same request ID, the server can check if
        #   original operation with the same request ID was received, and if so, will
        #   ignore the second request. This prevents clients from accidentally creating
        #   duplicate commitments. The request ID must be a valid UUID with the exception
        #   that zero UUID is not supported (00000000-0000-0000-0000-000000000000).
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::MigrationcenterV1alpha1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::MigrationcenterV1alpha1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_location_group(parent, group_object = nil, group_id: nil, request_id: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1alpha1/{+parent}/groups', options)
          command.request_representation = Google::Apis::MigrationcenterV1alpha1::Group::Representation
          command.request_object = group_object
          command.response_representation = Google::Apis::MigrationcenterV1alpha1::Operation::Representation
          command.response_class = Google::Apis::MigrationcenterV1alpha1::Operation
          command.params['parent'] = parent unless parent.nil?
          command.query['groupId'] = group_id unless group_id.nil?
          command.query['requestId'] = request_id unless request_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes a group.
        # @param [String] name
        #   Required. Name of the group resource.
        # @param [String] request_id
        #   Optional. An optional request ID to identify requests. Specify a unique
        #   request ID so that if you must retry your request, the server will know to
        #   ignore the request if it has already been completed. The server will guarantee
        #   that for at least 60 minutes after the first request. For example, consider a
        #   situation where you make an initial request and the request times out. If you
        #   make the request again with the same request ID, the server can check if
        #   original operation with the same request ID was received, and if so, will
        #   ignore the second request. This prevents clients from accidentally creating
        #   duplicate commitments. The request ID must be a valid UUID with the exception
        #   that zero UUID is not supported (00000000-0000-0000-0000-000000000000).
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::MigrationcenterV1alpha1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::MigrationcenterV1alpha1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_location_group(name, request_id: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1alpha1/{+name}', options)
          command.response_representation = Google::Apis::MigrationcenterV1alpha1::Operation::Representation
          command.response_class = Google::Apis::MigrationcenterV1alpha1::Operation
          command.params['name'] = name unless name.nil?
          command.query['requestId'] = request_id unless request_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets the details of a group.
        # @param [String] name
        #   Required. Name of the resource.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::MigrationcenterV1alpha1::Group] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::MigrationcenterV1alpha1::Group]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_group(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1alpha1/{+name}', options)
          command.response_representation = Google::Apis::MigrationcenterV1alpha1::Group::Representation
          command.response_class = Google::Apis::MigrationcenterV1alpha1::Group
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists all groups in a given project and location.
        # @param [String] parent
        #   Required. Parent value for `ListGroupsRequest`.
        # @param [String] filter
        #   Filtering results.
        # @param [String] order_by
        #   Field to sort by. See https://google.aip.dev/132#ordering for more details.
        # @param [Fixnum] page_size
        #   Requested page size. Server may return fewer items than requested. If
        #   unspecified, server will pick an appropriate default.
        # @param [String] page_token
        #   A token identifying a page of results the server should return.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::MigrationcenterV1alpha1::ListGroupsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::MigrationcenterV1alpha1::ListGroupsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_groups(parent, filter: nil, order_by: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1alpha1/{+parent}/groups', options)
          command.response_representation = Google::Apis::MigrationcenterV1alpha1::ListGroupsResponse::Representation
          command.response_class = Google::Apis::MigrationcenterV1alpha1::ListGroupsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['orderBy'] = order_by unless order_by.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates the parameters of a group.
        # @param [String] name
        #   Output only. The name of the group.
        # @param [Google::Apis::MigrationcenterV1alpha1::Group] group_object
        # @param [String] request_id
        #   Optional. An optional request ID to identify requests. Specify a unique
        #   request ID so that if you must retry your request, the server will know to
        #   ignore the request if it has already been completed. The server will guarantee
        #   that for at least 60 minutes since the first request. For example, consider a
        #   situation where you make an initial request and the request times out. If you
        #   make the request again with the same request ID, the server can check if
        #   original operation with the same request ID was received, and if so, will
        #   ignore the second request. This prevents clients from accidentally creating
        #   duplicate commitments. The request ID must be a valid UUID with the exception
        #   that zero UUID is not supported (00000000-0000-0000-0000-000000000000).
        # @param [String] update_mask
        #   Required. Field mask is used to specify the fields to be overwritten in the `
        #   Group` resource by the update. The values specified in the `update_mask` are
        #   relative to the resource, not the full request. A field will be overwritten if
        #   it is in the mask. A single * value in the mask lets you to overwrite all
        #   fields.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::MigrationcenterV1alpha1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::MigrationcenterV1alpha1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_project_location_group(name, group_object = nil, request_id: nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v1alpha1/{+name}', options)
          command.request_representation = Google::Apis::MigrationcenterV1alpha1::Group::Representation
          command.request_object = group_object
          command.response_representation = Google::Apis::MigrationcenterV1alpha1::Operation::Representation
          command.response_class = Google::Apis::MigrationcenterV1alpha1::Operation
          command.params['name'] = name unless name.nil?
          command.query['requestId'] = request_id unless request_id.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Removes assets from a group.
        # @param [String] group
        #   Required. Group reference.
        # @param [Google::Apis::MigrationcenterV1alpha1::RemoveAssetsFromGroupRequest] remove_assets_from_group_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::MigrationcenterV1alpha1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::MigrationcenterV1alpha1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def remove_assets_from_group(group, remove_assets_from_group_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1alpha1/{+group}:removeAssets', options)
          command.request_representation = Google::Apis::MigrationcenterV1alpha1::RemoveAssetsFromGroupRequest::Representation
          command.request_object = remove_assets_from_group_request_object
          command.response_representation = Google::Apis::MigrationcenterV1alpha1::Operation::Representation
          command.response_class = Google::Apis::MigrationcenterV1alpha1::Operation
          command.params['group'] = group unless group.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates an import job.
        # @param [String] parent
        #   Required. Value for parent.
        # @param [Google::Apis::MigrationcenterV1alpha1::ImportJob] import_job_object
        # @param [String] import_job_id
        #   Required. ID of the import job.
        # @param [String] request_id
        #   Optional. An optional request ID to identify requests. Specify a unique
        #   request ID so that if you must retry your request, the server will know to
        #   ignore the request if it has already been completed. The server will guarantee
        #   that for at least 60 minutes since the first request. For example, consider a
        #   situation where you make an initial request and the request times out. If you
        #   make the request again with the same request ID, the server can check if
        #   original operation with the same request ID was received, and if so, will
        #   ignore the second request. This prevents clients from accidentally creating
        #   duplicate commitments. The request ID must be a valid UUID with the exception
        #   that zero UUID is not supported (00000000-0000-0000-0000-000000000000).
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::MigrationcenterV1alpha1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::MigrationcenterV1alpha1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_location_import_job(parent, import_job_object = nil, import_job_id: nil, request_id: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1alpha1/{+parent}/importJobs', options)
          command.request_representation = Google::Apis::MigrationcenterV1alpha1::ImportJob::Representation
          command.request_object = import_job_object
          command.response_representation = Google::Apis::MigrationcenterV1alpha1::Operation::Representation
          command.response_class = Google::Apis::MigrationcenterV1alpha1::Operation
          command.params['parent'] = parent unless parent.nil?
          command.query['importJobId'] = import_job_id unless import_job_id.nil?
          command.query['requestId'] = request_id unless request_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes an import job.
        # @param [String] name
        #   Required. Name of the resource.
        # @param [Boolean] force
        #   Optional. If set to `true`, any `ImportDataFiles` of this job will also be
        #   deleted If set to `false`, the request only works if the job has no data files.
        # @param [String] request_id
        #   Optional. An optional request ID to identify requests. Specify a unique
        #   request ID so that if you must retry your request, the server will know to
        #   ignore the request if it has already been completed. The server will guarantee
        #   that for at least 60 minutes after the first request. For example, consider a
        #   situation where you make an initial request and the request times out. If you
        #   make the request again with the same request ID, the server can check if
        #   original operation with the same request ID was received, and if so, will
        #   ignore the second request. This prevents clients from accidentally creating
        #   duplicate commitments. The request ID must be a valid UUID with the exception
        #   that zero UUID is not supported (00000000-0000-0000-0000-000000000000).
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::MigrationcenterV1alpha1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::MigrationcenterV1alpha1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_location_import_job(name, force: nil, request_id: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1alpha1/{+name}', options)
          command.response_representation = Google::Apis::MigrationcenterV1alpha1::Operation::Representation
          command.response_class = Google::Apis::MigrationcenterV1alpha1::Operation
          command.params['name'] = name unless name.nil?
          command.query['force'] = force unless force.nil?
          command.query['requestId'] = request_id unless request_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets the details of an import job.
        # @param [String] name
        #   Required. Name of the resource.
        # @param [String] view
        #   Optional. The level of details of the import job. Default value is FULL.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::MigrationcenterV1alpha1::ImportJob] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::MigrationcenterV1alpha1::ImportJob]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_import_job(name, view: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1alpha1/{+name}', options)
          command.response_representation = Google::Apis::MigrationcenterV1alpha1::ImportJob::Representation
          command.response_class = Google::Apis::MigrationcenterV1alpha1::ImportJob
          command.params['name'] = name unless name.nil?
          command.query['view'] = view unless view.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists all import jobs.
        # @param [String] parent
        #   Required. Parent value for `ListImportJobsRequest`.
        # @param [String] filter
        #   Filtering results.
        # @param [String] order_by
        #   Field to sort by. See https://google.aip.dev/132#ordering for more details.
        # @param [Fixnum] page_size
        #   Requested page size. Server may return fewer items than requested. If
        #   unspecified, server will pick an appropriate default.
        # @param [String] page_token
        #   A token identifying a page of results the server should return.
        # @param [String] view
        #   Optional. The level of details of each import job. Default value is BASIC.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::MigrationcenterV1alpha1::ListImportJobsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::MigrationcenterV1alpha1::ListImportJobsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_import_jobs(parent, filter: nil, order_by: nil, page_size: nil, page_token: nil, view: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1alpha1/{+parent}/importJobs', options)
          command.response_representation = Google::Apis::MigrationcenterV1alpha1::ListImportJobsResponse::Representation
          command.response_class = Google::Apis::MigrationcenterV1alpha1::ListImportJobsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['orderBy'] = order_by unless order_by.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['view'] = view unless view.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates an import job.
        # @param [String] name
        #   Output only. The full name of the import job.
        # @param [Google::Apis::MigrationcenterV1alpha1::ImportJob] import_job_object
        # @param [String] request_id
        #   Optional. An optional request ID to identify requests. Specify a unique
        #   request ID so that if you must retry your request, the server will know to
        #   ignore the request if it has already been completed. The server will guarantee
        #   that for at least 60 minutes since the first request. For example, consider a
        #   situation where you make an initial request and the request times out. If you
        #   make the request again with the same request ID, the server can check if
        #   original operation with the same request ID was received, and if so, will
        #   ignore the second request. This prevents clients from accidentally creating
        #   duplicate commitments. The request ID must be a valid UUID with the exception
        #   that zero UUID is not supported (00000000-0000-0000-0000-000000000000).
        # @param [String] update_mask
        #   Required. Field mask is used to specify the fields to be overwritten in the `
        #   Asset` resource by the update. The values specified in the `update_mask` field
        #   are relative to the resource, not the full request. A field will be
        #   overwritten if it is in the mask. A single * value in the mask lets you to
        #   overwrite all fields.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::MigrationcenterV1alpha1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::MigrationcenterV1alpha1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_project_location_import_job(name, import_job_object = nil, request_id: nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v1alpha1/{+name}', options)
          command.request_representation = Google::Apis::MigrationcenterV1alpha1::ImportJob::Representation
          command.request_object = import_job_object
          command.response_representation = Google::Apis::MigrationcenterV1alpha1::Operation::Representation
          command.response_class = Google::Apis::MigrationcenterV1alpha1::Operation
          command.params['name'] = name unless name.nil?
          command.query['requestId'] = request_id unless request_id.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Runs an import job.
        # @param [String] name
        #   Required. The name of the import job to run.
        # @param [Google::Apis::MigrationcenterV1alpha1::RunImportJobRequest] run_import_job_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::MigrationcenterV1alpha1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::MigrationcenterV1alpha1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def run_import_job(name, run_import_job_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1alpha1/{+name}:run', options)
          command.request_representation = Google::Apis::MigrationcenterV1alpha1::RunImportJobRequest::Representation
          command.request_object = run_import_job_request_object
          command.response_representation = Google::Apis::MigrationcenterV1alpha1::Operation::Representation
          command.response_class = Google::Apis::MigrationcenterV1alpha1::Operation
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Validates an import job.
        # @param [String] name
        #   Required. The name of the import job to validate.
        # @param [Google::Apis::MigrationcenterV1alpha1::ValidateImportJobRequest] validate_import_job_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::MigrationcenterV1alpha1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::MigrationcenterV1alpha1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def validate_import_job(name, validate_import_job_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1alpha1/{+name}:validate', options)
          command.request_representation = Google::Apis::MigrationcenterV1alpha1::ValidateImportJobRequest::Representation
          command.request_object = validate_import_job_request_object
          command.response_representation = Google::Apis::MigrationcenterV1alpha1::Operation::Representation
          command.response_class = Google::Apis::MigrationcenterV1alpha1::Operation
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates an import data file.
        # @param [String] parent
        #   Required. Name of the parent of the ImportDataFile.
        # @param [Google::Apis::MigrationcenterV1alpha1::ImportDataFile] import_data_file_object
        # @param [String] import_data_file_id
        #   Required. The ID of the new data file.
        # @param [String] request_id
        #   Optional. An optional request ID to identify requests. Specify a unique
        #   request ID so that if you must retry your request, the server will know to
        #   ignore the request if it has already been completed. The server will guarantee
        #   that for at least 60 minutes since the first request. For example, consider a
        #   situation where you make an initial request and the request times out. If you
        #   make the request again with the same request ID, the server can check if
        #   original operation with the same request ID was received, and if so, will
        #   ignore the second request. This prevents clients from accidentally creating
        #   duplicate commitments. The request ID must be a valid UUID with the exception
        #   that zero UUID is not supported (00000000-0000-0000-0000-000000000000).
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::MigrationcenterV1alpha1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::MigrationcenterV1alpha1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_location_import_job_import_data_file(parent, import_data_file_object = nil, import_data_file_id: nil, request_id: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1alpha1/{+parent}/importDataFiles', options)
          command.request_representation = Google::Apis::MigrationcenterV1alpha1::ImportDataFile::Representation
          command.request_object = import_data_file_object
          command.response_representation = Google::Apis::MigrationcenterV1alpha1::Operation::Representation
          command.response_class = Google::Apis::MigrationcenterV1alpha1::Operation
          command.params['parent'] = parent unless parent.nil?
          command.query['importDataFileId'] = import_data_file_id unless import_data_file_id.nil?
          command.query['requestId'] = request_id unless request_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Delete an import data file.
        # @param [String] name
        #   Required. Name of the ImportDataFile to delete.
        # @param [String] request_id
        #   Optional. An optional request ID to identify requests. Specify a unique
        #   request ID so that if you must retry your request, the server will know to
        #   ignore the request if it has already been completed. The server will guarantee
        #   that for at least 60 minutes after the first request. For example, consider a
        #   situation where you make an initial request and the request times out. If you
        #   make the request again with the same request ID, the server can check if
        #   original operation with the same request ID was received, and if so, will
        #   ignore the second request. This prevents clients from accidentally creating
        #   duplicate commitments. The request ID must be a valid UUID with the exception
        #   that zero UUID is not supported (00000000-0000-0000-0000-000000000000).
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::MigrationcenterV1alpha1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::MigrationcenterV1alpha1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_location_import_job_import_data_file(name, request_id: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1alpha1/{+name}', options)
          command.response_representation = Google::Apis::MigrationcenterV1alpha1::Operation::Representation
          command.response_class = Google::Apis::MigrationcenterV1alpha1::Operation
          command.params['name'] = name unless name.nil?
          command.query['requestId'] = request_id unless request_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets an import data file.
        # @param [String] name
        #   Required. Name of the ImportDataFile.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::MigrationcenterV1alpha1::ImportDataFile] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::MigrationcenterV1alpha1::ImportDataFile]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_import_job_import_data_file(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1alpha1/{+name}', options)
          command.response_representation = Google::Apis::MigrationcenterV1alpha1::ImportDataFile::Representation
          command.response_class = Google::Apis::MigrationcenterV1alpha1::ImportDataFile
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # List import data files.
        # @param [String] parent
        #   Required. Name of the parent of the `ImportDataFiles` resource.
        # @param [String] filter
        #   Filtering results.
        # @param [String] order_by
        #   Field to sort by. See https://google.aip.dev/132#ordering for more details.
        # @param [Fixnum] page_size
        #   The maximum number of data files to return. The service may return fewer than
        #   this value. If unspecified, at most 500 data files will be returned. The
        #   maximum value is 1000; values above 1000 will be coerced to 1000.
        # @param [String] page_token
        #   A page token, received from a previous `ListImportDataFiles` call. Provide
        #   this to retrieve the subsequent page. When paginating, all other parameters
        #   provided to `ListImportDataFiles` must match the call that provided the page
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
        # @yieldparam result [Google::Apis::MigrationcenterV1alpha1::ListImportDataFilesResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::MigrationcenterV1alpha1::ListImportDataFilesResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_import_job_import_data_files(parent, filter: nil, order_by: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1alpha1/{+parent}/importDataFiles', options)
          command.response_representation = Google::Apis::MigrationcenterV1alpha1::ListImportDataFilesResponse::Representation
          command.response_class = Google::Apis::MigrationcenterV1alpha1::ListImportDataFilesResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['orderBy'] = order_by unless order_by.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
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
        # @param [Google::Apis::MigrationcenterV1alpha1::CancelOperationRequest] cancel_operation_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::MigrationcenterV1alpha1::Empty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::MigrationcenterV1alpha1::Empty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def cancel_operation(name, cancel_operation_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1alpha1/{+name}:cancel', options)
          command.request_representation = Google::Apis::MigrationcenterV1alpha1::CancelOperationRequest::Representation
          command.request_object = cancel_operation_request_object
          command.response_representation = Google::Apis::MigrationcenterV1alpha1::Empty::Representation
          command.response_class = Google::Apis::MigrationcenterV1alpha1::Empty
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes a long-running operation. This method indicates that the client is no
        # longer interested in the operation result. It does not cancel the operation.
        # If the server doesn't support this method, it returns `google.rpc.Code.
        # UNIMPLEMENTED`.
        # @param [String] name
        #   The name of the operation resource to be deleted.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::MigrationcenterV1alpha1::Empty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::MigrationcenterV1alpha1::Empty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_location_operation(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1alpha1/{+name}', options)
          command.response_representation = Google::Apis::MigrationcenterV1alpha1::Empty::Representation
          command.response_class = Google::Apis::MigrationcenterV1alpha1::Empty
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
        # @yieldparam result [Google::Apis::MigrationcenterV1alpha1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::MigrationcenterV1alpha1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_operation(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1alpha1/{+name}', options)
          command.response_representation = Google::Apis::MigrationcenterV1alpha1::Operation::Representation
          command.response_class = Google::Apis::MigrationcenterV1alpha1::Operation
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
        # @yieldparam result [Google::Apis::MigrationcenterV1alpha1::ListOperationsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::MigrationcenterV1alpha1::ListOperationsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_operations(name, filter: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1alpha1/{+name}/operations', options)
          command.response_representation = Google::Apis::MigrationcenterV1alpha1::ListOperationsResponse::Representation
          command.response_class = Google::Apis::MigrationcenterV1alpha1::ListOperationsResponse
          command.params['name'] = name unless name.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a new preference set in a given project and location.
        # @param [String] parent
        #   Required. Value for parent.
        # @param [Google::Apis::MigrationcenterV1alpha1::PreferenceSet] preference_set_object
        # @param [String] preference_set_id
        # @param [String] request_id
        #   Optional. An optional request ID to identify requests. Specify a unique
        #   request ID so that if you must retry your request, the server will know to
        #   ignore the request if it has already been completed. The server will guarantee
        #   that for at least 60 minutes since the first request. For example, consider a
        #   situation where you make an initial request and the request times out. If you
        #   make the request again with the same request ID, the server can check if
        #   original operation with the same request ID was received, and if so, will
        #   ignore the second request. This prevents clients from accidentally creating
        #   duplicate commitments. The request ID must be a valid UUID with the exception
        #   that zero UUID is not supported (00000000-0000-0000-0000-000000000000).
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::MigrationcenterV1alpha1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::MigrationcenterV1alpha1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_location_preference_set(parent, preference_set_object = nil, preference_set_id: nil, request_id: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1alpha1/{+parent}/preferenceSets', options)
          command.request_representation = Google::Apis::MigrationcenterV1alpha1::PreferenceSet::Representation
          command.request_object = preference_set_object
          command.response_representation = Google::Apis::MigrationcenterV1alpha1::Operation::Representation
          command.response_class = Google::Apis::MigrationcenterV1alpha1::Operation
          command.params['parent'] = parent unless parent.nil?
          command.query['preferenceSetId'] = preference_set_id unless preference_set_id.nil?
          command.query['requestId'] = request_id unless request_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes a preference set.
        # @param [String] name
        #   Required. Name of the group resource.
        # @param [String] request_id
        #   Optional. An optional request ID to identify requests. Specify a unique
        #   request ID so that if you must retry your request, the server will know to
        #   ignore the request if it has already been completed. The server will guarantee
        #   that for at least 60 minutes after the first request. For example, consider a
        #   situation where you make an initial request and the request times out. If you
        #   make the request again with the same request ID, the server can check if
        #   original operation with the same request ID was received, and if so, will
        #   ignore the second request. This prevents clients from accidentally creating
        #   duplicate commitments. The request ID must be a valid UUID with the exception
        #   that zero UUID is not supported (00000000-0000-0000-0000-000000000000).
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::MigrationcenterV1alpha1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::MigrationcenterV1alpha1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_location_preference_set(name, request_id: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1alpha1/{+name}', options)
          command.response_representation = Google::Apis::MigrationcenterV1alpha1::Operation::Representation
          command.response_class = Google::Apis::MigrationcenterV1alpha1::Operation
          command.params['name'] = name unless name.nil?
          command.query['requestId'] = request_id unless request_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets the details of a preference set.
        # @param [String] name
        #   Required. Name of the resource.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::MigrationcenterV1alpha1::PreferenceSet] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::MigrationcenterV1alpha1::PreferenceSet]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_preference_set(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1alpha1/{+name}', options)
          command.response_representation = Google::Apis::MigrationcenterV1alpha1::PreferenceSet::Representation
          command.response_class = Google::Apis::MigrationcenterV1alpha1::PreferenceSet
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists all the preference sets in a given project and location.
        # @param [String] parent
        #   Required. Parent value for `ListPreferenceSetsRequest`.
        # @param [String] order_by
        #   Field to sort by. See https://google.aip.dev/132#ordering for more details.
        # @param [Fixnum] page_size
        #   Requested page size. Server may return fewer items than requested. If
        #   unspecified, at most 500 preference sets will be returned. The maximum value
        #   is 1000; values above 1000 will be coerced to 1000.
        # @param [String] page_token
        #   A token identifying a page of results the server should return.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::MigrationcenterV1alpha1::ListPreferenceSetsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::MigrationcenterV1alpha1::ListPreferenceSetsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_preference_sets(parent, order_by: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1alpha1/{+parent}/preferenceSets', options)
          command.response_representation = Google::Apis::MigrationcenterV1alpha1::ListPreferenceSetsResponse::Representation
          command.response_class = Google::Apis::MigrationcenterV1alpha1::ListPreferenceSetsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['orderBy'] = order_by unless order_by.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates the parameters of a preference set.
        # @param [String] name
        #   Output only. Name of the preference set.
        # @param [Google::Apis::MigrationcenterV1alpha1::PreferenceSet] preference_set_object
        # @param [String] request_id
        #   Optional. An optional request ID to identify requests. Specify a unique
        #   request ID so that if you must retry your request, the server will know to
        #   ignore the request if it has already been completed. The server will guarantee
        #   that for at least 60 minutes since the first request. For example, consider a
        #   situation where you make an initial request and the request times out. If you
        #   make the request again with the same request ID, the server can check if
        #   original operation with the same request ID was received, and if so, will
        #   ignore the second request. This prevents clients from accidentally creating
        #   duplicate commitments. The request ID must be a valid UUID with the exception
        #   that zero UUID is not supported (00000000-0000-0000-0000-000000000000).
        # @param [String] update_mask
        #   Required. Field mask is used to specify the fields to be overwritten in the `
        #   PreferenceSet` resource by the update. The values specified in the `
        #   update_mask` field are relative to the resource, not the full request. A field
        #   will be overwritten if it is in the mask. A single * value in the mask lets
        #   you to overwrite all fields.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::MigrationcenterV1alpha1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::MigrationcenterV1alpha1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_project_location_preference_set(name, preference_set_object = nil, request_id: nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v1alpha1/{+name}', options)
          command.request_representation = Google::Apis::MigrationcenterV1alpha1::PreferenceSet::Representation
          command.request_object = preference_set_object
          command.response_representation = Google::Apis::MigrationcenterV1alpha1::Operation::Representation
          command.response_class = Google::Apis::MigrationcenterV1alpha1::Operation
          command.params['name'] = name unless name.nil?
          command.query['requestId'] = request_id unless request_id.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a report configuration.
        # @param [String] parent
        #   Required. Value for parent.
        # @param [Google::Apis::MigrationcenterV1alpha1::ReportConfig] report_config_object
        # @param [String] report_config_id
        #   Required. User specified ID for the report config. It will become the last
        #   component of the report config name. The ID must be unique within the project,
        #   must conform with RFC-1034, is restricted to lower-cased letters, and has a
        #   maximum length of 63 characters. The ID must match the regular expression: [a-
        #   z]([a-z0-9-]`0,61`[a-z0-9])?.
        # @param [String] request_id
        #   Optional. An optional request ID to identify requests. Specify a unique
        #   request ID so that if you must retry your request, the server will know to
        #   ignore the request if it has already been completed. The server will guarantee
        #   that for at least 60 minutes since the first request. For example, consider a
        #   situation where you make an initial request and the request times out. If you
        #   make the request again with the same request ID, the server can check if
        #   original operation with the same request ID was received, and if so, will
        #   ignore the second request. This prevents clients from accidentally creating
        #   duplicate commitments. The request ID must be a valid UUID with the exception
        #   that zero UUID is not supported (00000000-0000-0000-0000-000000000000).
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::MigrationcenterV1alpha1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::MigrationcenterV1alpha1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_location_report_config(parent, report_config_object = nil, report_config_id: nil, request_id: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1alpha1/{+parent}/reportConfigs', options)
          command.request_representation = Google::Apis::MigrationcenterV1alpha1::ReportConfig::Representation
          command.request_object = report_config_object
          command.response_representation = Google::Apis::MigrationcenterV1alpha1::Operation::Representation
          command.response_class = Google::Apis::MigrationcenterV1alpha1::Operation
          command.params['parent'] = parent unless parent.nil?
          command.query['reportConfigId'] = report_config_id unless report_config_id.nil?
          command.query['requestId'] = request_id unless request_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes a ReportConfig.
        # @param [String] name
        #   Required. Name of the resource.
        # @param [Boolean] force
        #   Optional. If set to `true`, any child `Reports` of this entity will also be
        #   deleted. If set to `false`, the request only works if the resource has no
        #   children.
        # @param [String] request_id
        #   Optional. An optional request ID to identify requests. Specify a unique
        #   request ID so that if you must retry your request, the server will know to
        #   ignore the request if it has already been completed. The server will guarantee
        #   that for at least 60 minutes after the first request. For example, consider a
        #   situation where you make an initial request and the request times out. If you
        #   make the request again with the same request ID, the server can check if
        #   original operation with the same request ID was received, and if so, will
        #   ignore the second request. This prevents clients from accidentally creating
        #   duplicate commitments. The request ID must be a valid UUID with the exception
        #   that zero UUID is not supported (00000000-0000-0000-0000-000000000000).
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::MigrationcenterV1alpha1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::MigrationcenterV1alpha1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_location_report_config(name, force: nil, request_id: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1alpha1/{+name}', options)
          command.response_representation = Google::Apis::MigrationcenterV1alpha1::Operation::Representation
          command.response_class = Google::Apis::MigrationcenterV1alpha1::Operation
          command.params['name'] = name unless name.nil?
          command.query['force'] = force unless force.nil?
          command.query['requestId'] = request_id unless request_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets details of a single ReportConfig.
        # @param [String] name
        #   Required. Name of the resource.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::MigrationcenterV1alpha1::ReportConfig] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::MigrationcenterV1alpha1::ReportConfig]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_report_config(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1alpha1/{+name}', options)
          command.response_representation = Google::Apis::MigrationcenterV1alpha1::ReportConfig::Representation
          command.response_class = Google::Apis::MigrationcenterV1alpha1::ReportConfig
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists ReportConfigs in a given project and location.
        # @param [String] parent
        #   Required. Parent value for `ListReportConfigsRequest`.
        # @param [String] filter
        #   Filtering results.
        # @param [String] order_by
        #   Field to sort by. See https://google.aip.dev/132#ordering for more details.
        # @param [Fixnum] page_size
        #   Requested page size. Server may return fewer items than requested. If
        #   unspecified, server will pick an appropriate default.
        # @param [String] page_token
        #   A token identifying a page of results the server should return.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::MigrationcenterV1alpha1::ListReportConfigsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::MigrationcenterV1alpha1::ListReportConfigsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_report_configs(parent, filter: nil, order_by: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1alpha1/{+parent}/reportConfigs', options)
          command.response_representation = Google::Apis::MigrationcenterV1alpha1::ListReportConfigsResponse::Representation
          command.response_class = Google::Apis::MigrationcenterV1alpha1::ListReportConfigsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['orderBy'] = order_by unless order_by.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a report.
        # @param [String] parent
        #   Required. Value for parent.
        # @param [Google::Apis::MigrationcenterV1alpha1::Report] report_object
        # @param [String] report_id
        #   Required. User specified id for the report. It will become the last component
        #   of the report name. The id must be unique within the project, must conform
        #   with RFC-1034, is restricted to lower-cased letters, and has a maximum length
        #   of 63 characters. The id must match the regular expression: [a-z]([a-z0-9-]`0,
        #   61`[a-z0-9])?.
        # @param [String] request_id
        #   Optional. An optional request ID to identify requests. Specify a unique
        #   request ID so that if you must retry your request, the server will know to
        #   ignore the request if it has already been completed. The server will guarantee
        #   that for at least 60 minutes since the first request. For example, consider a
        #   situation where you make an initial request and the request times out. If you
        #   make the request again with the same request ID, the server can check if
        #   original operation with the same request ID was received, and if so, will
        #   ignore the second request. This prevents clients from accidentally creating
        #   duplicate commitments. The request ID must be a valid UUID with the exception
        #   that zero UUID is not supported (00000000-0000-0000-0000-000000000000).
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::MigrationcenterV1alpha1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::MigrationcenterV1alpha1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_location_report_config_report(parent, report_object = nil, report_id: nil, request_id: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1alpha1/{+parent}/reports', options)
          command.request_representation = Google::Apis::MigrationcenterV1alpha1::Report::Representation
          command.request_object = report_object
          command.response_representation = Google::Apis::MigrationcenterV1alpha1::Operation::Representation
          command.response_class = Google::Apis::MigrationcenterV1alpha1::Operation
          command.params['parent'] = parent unless parent.nil?
          command.query['reportId'] = report_id unless report_id.nil?
          command.query['requestId'] = request_id unless request_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes a Report.
        # @param [String] name
        #   Required. Name of the resource.
        # @param [String] request_id
        #   Optional. An optional request ID to identify requests. Specify a unique
        #   request ID so that if you must retry your request, the server will know to
        #   ignore the request if it has already been completed. The server will guarantee
        #   that for at least 60 minutes after the first request. For example, consider a
        #   situation where you make an initial request and the request times out. If you
        #   make the request again with the same request ID, the server can check if
        #   original operation with the same request ID was received, and if so, will
        #   ignore the second request. This prevents clients from accidentally creating
        #   duplicate commitments. The request ID must be a valid UUID with the exception
        #   that zero UUID is not supported (00000000-0000-0000-0000-000000000000).
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::MigrationcenterV1alpha1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::MigrationcenterV1alpha1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_location_report_config_report(name, request_id: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1alpha1/{+name}', options)
          command.response_representation = Google::Apis::MigrationcenterV1alpha1::Operation::Representation
          command.response_class = Google::Apis::MigrationcenterV1alpha1::Operation
          command.params['name'] = name unless name.nil?
          command.query['requestId'] = request_id unless request_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets details of a single Report.
        # @param [String] name
        #   Required. Name of the resource.
        # @param [String] view
        #   Determines what information to retrieve for the Report.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::MigrationcenterV1alpha1::Report] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::MigrationcenterV1alpha1::Report]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_report_config_report(name, view: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1alpha1/{+name}', options)
          command.response_representation = Google::Apis::MigrationcenterV1alpha1::Report::Representation
          command.response_class = Google::Apis::MigrationcenterV1alpha1::Report
          command.params['name'] = name unless name.nil?
          command.query['view'] = view unless view.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists Reports in a given ReportConfig.
        # @param [String] parent
        #   Required. Parent value for `ListReportsRequest`.
        # @param [String] filter
        #   Filtering results.
        # @param [String] order_by
        #   Field to sort by. See https://google.aip.dev/132#ordering for more details.
        # @param [Fixnum] page_size
        #   Requested page size. The server may return fewer items than requested. If
        #   unspecified, the server will pick an appropriate default value.
        # @param [String] page_token
        #   A token identifying a page of results that the server should return.
        # @param [String] view
        #   Determines what information to retrieve for each Report.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::MigrationcenterV1alpha1::ListReportsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::MigrationcenterV1alpha1::ListReportsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_report_config_reports(parent, filter: nil, order_by: nil, page_size: nil, page_token: nil, view: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1alpha1/{+parent}/reports', options)
          command.response_representation = Google::Apis::MigrationcenterV1alpha1::ListReportsResponse::Representation
          command.response_class = Google::Apis::MigrationcenterV1alpha1::ListReportsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['orderBy'] = order_by unless order_by.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['view'] = view unless view.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a new source in a given project and location.
        # @param [String] parent
        #   Required. Value for parent.
        # @param [Google::Apis::MigrationcenterV1alpha1::Source] source_object
        # @param [String] request_id
        #   Optional. An optional request ID to identify requests. Specify a unique
        #   request ID so that if you must retry your request, the server will know to
        #   ignore the request if it has already been completed. The server will guarantee
        #   that for at least 60 minutes since the first request. For example, consider a
        #   situation where you make an initial request and the request times out. If you
        #   make the request again with the same request ID, the server can check if
        #   original operation with the same request ID was received, and if so, will
        #   ignore the second request. This prevents clients from accidentally creating
        #   duplicate commitments. The request ID must be a valid UUID with the exception
        #   that zero UUID is not supported (00000000-0000-0000-0000-000000000000).
        # @param [String] source_id
        #   Required. User specified ID for the source. It will become the last component
        #   of the source name. The ID must be unique within the project, must conform
        #   with RFC-1034, is restricted to lower-cased letters, and has a maximum length
        #   of 63 characters. The ID must match the regular expression: `[a-z]([a-z0-9-]`0,
        #   61`[a-z0-9])?`.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::MigrationcenterV1alpha1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::MigrationcenterV1alpha1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_location_source(parent, source_object = nil, request_id: nil, source_id: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1alpha1/{+parent}/sources', options)
          command.request_representation = Google::Apis::MigrationcenterV1alpha1::Source::Representation
          command.request_object = source_object
          command.response_representation = Google::Apis::MigrationcenterV1alpha1::Operation::Representation
          command.response_class = Google::Apis::MigrationcenterV1alpha1::Operation
          command.params['parent'] = parent unless parent.nil?
          command.query['requestId'] = request_id unless request_id.nil?
          command.query['sourceId'] = source_id unless source_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes a source.
        # @param [String] name
        #   Required. Name of the resource.
        # @param [String] request_id
        #   Optional. An optional request ID to identify requests. Specify a unique
        #   request ID so that if you must retry your request, the server will know to
        #   ignore the request if it has already been completed. The server will guarantee
        #   that for at least 60 minutes after the first request. For example, consider a
        #   situation where you make an initial request and the request times out. If you
        #   make the request again with the same request ID, the server can check if
        #   original operation with the same request ID was received, and if so, will
        #   ignore the second request. This prevents clients from accidentally creating
        #   duplicate commitments. The request ID must be a valid UUID with the exception
        #   that zero UUID is not supported (00000000-0000-0000-0000-000000000000).
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::MigrationcenterV1alpha1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::MigrationcenterV1alpha1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_location_source(name, request_id: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1alpha1/{+name}', options)
          command.response_representation = Google::Apis::MigrationcenterV1alpha1::Operation::Representation
          command.response_class = Google::Apis::MigrationcenterV1alpha1::Operation
          command.params['name'] = name unless name.nil?
          command.query['requestId'] = request_id unless request_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets the details of a source.
        # @param [String] name
        #   Required. Name of the resource.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::MigrationcenterV1alpha1::Source] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::MigrationcenterV1alpha1::Source]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_source(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1alpha1/{+name}', options)
          command.response_representation = Google::Apis::MigrationcenterV1alpha1::Source::Representation
          command.response_class = Google::Apis::MigrationcenterV1alpha1::Source
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists all the sources in a given project and location.
        # @param [String] parent
        #   Required. Parent value for `ListSourcesRequest`.
        # @param [String] filter
        #   Filtering results.
        # @param [String] order_by
        #   Field to sort by. See https://google.aip.dev/132#ordering for more details.
        # @param [Fixnum] page_size
        #   Requested page size. The server may return fewer items than requested. If
        #   unspecified, the server will pick an appropriate default value.
        # @param [String] page_token
        #   A token identifying a page of results that the server should return.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::MigrationcenterV1alpha1::ListSourcesResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::MigrationcenterV1alpha1::ListSourcesResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_sources(parent, filter: nil, order_by: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1alpha1/{+parent}/sources', options)
          command.response_representation = Google::Apis::MigrationcenterV1alpha1::ListSourcesResponse::Representation
          command.response_class = Google::Apis::MigrationcenterV1alpha1::ListSourcesResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['orderBy'] = order_by unless order_by.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates the parameters of a source.
        # @param [String] name
        #   Output only. The full name of the source.
        # @param [Google::Apis::MigrationcenterV1alpha1::Source] source_object
        # @param [String] request_id
        #   Optional. An optional request ID to identify requests. Specify a unique
        #   request ID so that if you must retry your request, the server will know to
        #   ignore the request if it has already been completed. The server will guarantee
        #   that for at least 60 minutes since the first request. For example, consider a
        #   situation where you make an initial request and the request times out. If you
        #   make the request again with the same request ID, the server can check if
        #   original operation with the same request ID was received, and if so, will
        #   ignore the second request. This prevents clients from accidentally creating
        #   duplicate commitments. The request ID must be a valid UUID with the exception
        #   that zero UUID is not supported (00000000-0000-0000-0000-000000000000).
        # @param [String] update_mask
        #   Required. Field mask is used to specify the fields to be overwritten in the `
        #   Source` resource by the update. The values specified in the `update_mask`
        #   field are relative to the resource, not the full request. A field will be
        #   overwritten if it is in the mask. A single * value in the mask lets you to
        #   overwrite all fields.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::MigrationcenterV1alpha1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::MigrationcenterV1alpha1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_project_location_source(name, source_object = nil, request_id: nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v1alpha1/{+name}', options)
          command.request_representation = Google::Apis::MigrationcenterV1alpha1::Source::Representation
          command.request_object = source_object
          command.response_representation = Google::Apis::MigrationcenterV1alpha1::Operation::Representation
          command.response_class = Google::Apis::MigrationcenterV1alpha1::Operation
          command.params['name'] = name unless name.nil?
          command.query['requestId'] = request_id unless request_id.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets the details of an error frame.
        # @param [String] name
        #   Required. The name of the frame to retrieve. Format: projects/`project`/
        #   locations/`location`/sources/`source`/errorFrames/`error_frame`
        # @param [String] view
        #   Optional. An optional view mode to control the level of details for the frame.
        #   The default is a basic frame view.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::MigrationcenterV1alpha1::ErrorFrame] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::MigrationcenterV1alpha1::ErrorFrame]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_source_error_frame(name, view: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1alpha1/{+name}', options)
          command.response_representation = Google::Apis::MigrationcenterV1alpha1::ErrorFrame::Representation
          command.response_class = Google::Apis::MigrationcenterV1alpha1::ErrorFrame
          command.params['name'] = name unless name.nil?
          command.query['view'] = view unless view.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists all error frames in a given source and location.
        # @param [String] parent
        #   Required. Parent value (the source) for `ListErrorFramesRequest`.
        # @param [Fixnum] page_size
        #   Requested page size. Server may return fewer items than requested. If
        #   unspecified, server will pick an appropriate default.
        # @param [String] page_token
        #   A token identifying a page of results the server should return.
        # @param [String] view
        #   Optional. An optional view mode to control the level of details of each error
        #   frame. The default is a BASIC frame view.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::MigrationcenterV1alpha1::ListErrorFramesResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::MigrationcenterV1alpha1::ListErrorFramesResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_source_error_frames(parent, page_size: nil, page_token: nil, view: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1alpha1/{+parent}/errorFrames', options)
          command.response_representation = Google::Apis::MigrationcenterV1alpha1::ListErrorFramesResponse::Representation
          command.response_class = Google::Apis::MigrationcenterV1alpha1::ListErrorFramesResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['view'] = view unless view.nil?
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
