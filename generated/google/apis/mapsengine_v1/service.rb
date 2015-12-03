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
    module MapsengineV1
      # Google Maps Engine API
      #
      # The Google Maps Engine API allows developers to store and query geospatial
      #  vector and raster data.
      #
      # @example
      #    require 'google/apis/mapsengine_v1'
      #
      #    Mapsengine = Google::Apis::MapsengineV1 # Alias the module
      #    service = Mapsengine::MapsEngineService.new
      #
      # @see https://developers.google.com/maps-engine/
      class MapsEngineService < Google::Apis::Core::BaseService
        # @return [String]
        #  API key. Your API key identifies your project and provides you with API access,
        #  quota, and reports. Required unless you provide an OAuth 2.0 token.
        attr_accessor :key

        # @return [String]
        #  Available to use for quota purposes for server-side applications. Can be any
        #  arbitrary string assigned to a user, but should not exceed 40 characters.
        #  Overrides userIp if both are provided.
        attr_accessor :quota_user

        # @return [String]
        #  IP address of the site where the request originates. Use this if you want to
        #  enforce per-user limits.
        attr_accessor :user_ip

        def initialize
          super('https://www.googleapis.com/', 'mapsengine/v1/')
        end
        
        # Return metadata for a particular asset.
        # @param [String] id
        #   The ID of the asset.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::MapsengineV1::Asset] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::MapsengineV1::Asset]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_asset(id, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          command =  make_simple_command(:get, 'assets/{id}', options)
          command.response_representation = Google::Apis::MapsengineV1::Asset::Representation
          command.response_class = Google::Apis::MapsengineV1::Asset
          command.params['id'] = id unless id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Return all assets readable by the current user.
        # @param [String] bbox
        #   A bounding box, expressed as "west,south,east,north". If set, only assets
        #   which intersect this bounding box will be returned.
        # @param [DateTime] created_after
        #   An RFC 3339 formatted date-time value (e.g. 1970-01-01T00:00:00Z). Returned
        #   assets will have been created at or after this time.
        # @param [DateTime] created_before
        #   An RFC 3339 formatted date-time value (e.g. 1970-01-01T00:00:00Z). Returned
        #   assets will have been created at or before this time.
        # @param [String] creator_email
        #   An email address representing a user. Returned assets that have been created
        #   by the user associated with the provided email address.
        # @param [Fixnum] max_results
        #   The maximum number of items to include in a single response page. The maximum
        #   supported value is 100.
        # @param [DateTime] modified_after
        #   An RFC 3339 formatted date-time value (e.g. 1970-01-01T00:00:00Z). Returned
        #   assets will have been modified at or after this time.
        # @param [DateTime] modified_before
        #   An RFC 3339 formatted date-time value (e.g. 1970-01-01T00:00:00Z). Returned
        #   assets will have been modified at or before this time.
        # @param [String] page_token
        #   The continuation token, used to page through large result sets. To get the
        #   next page of results, set this parameter to the value of nextPageToken from
        #   the previous response.
        # @param [String] project_id
        #   The ID of a Maps Engine project, used to filter the response. To list all
        #   available projects with their IDs, send a Projects: list request. You can also
        #   find your project ID as the value of the DashboardPlace:cid URL parameter when
        #   signed in to mapsengine.google.com.
        # @param [String] role
        #   The role parameter indicates that the response should only contain assets
        #   where the current user has the specified level of access.
        # @param [String] search
        #   An unstructured search string used to filter the set of results based on asset
        #   metadata.
        # @param [String] tags
        #   A comma separated list of tags. Returned assets will contain all the tags from
        #   the list.
        # @param [String] type
        #   A comma separated list of asset types. Returned assets will have one of the
        #   types from the provided list. Supported values are 'map', 'layer', '
        #   rasterCollection' and 'table'.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::MapsengineV1::ListAssetsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::MapsengineV1::ListAssetsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_assets(bbox: nil, created_after: nil, created_before: nil, creator_email: nil, max_results: nil, modified_after: nil, modified_before: nil, page_token: nil, project_id: nil, role: nil, search: nil, tags: nil, type: nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          command =  make_simple_command(:get, 'assets', options)
          command.response_representation = Google::Apis::MapsengineV1::ListAssetsResponse::Representation
          command.response_class = Google::Apis::MapsengineV1::ListAssetsResponse
          command.query['bbox'] = bbox unless bbox.nil?
          command.query['createdAfter'] = created_after unless created_after.nil?
          command.query['createdBefore'] = created_before unless created_before.nil?
          command.query['creatorEmail'] = creator_email unless creator_email.nil?
          command.query['maxResults'] = max_results unless max_results.nil?
          command.query['modifiedAfter'] = modified_after unless modified_after.nil?
          command.query['modifiedBefore'] = modified_before unless modified_before.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['projectId'] = project_id unless project_id.nil?
          command.query['role'] = role unless role.nil?
          command.query['search'] = search unless search.nil?
          command.query['tags'] = tags unless tags.nil?
          command.query['type'] = type unless type.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Return all parent ids of the specified asset.
        # @param [String] id
        #   The ID of the asset whose parents will be listed.
        # @param [Fixnum] max_results
        #   The maximum number of items to include in a single response page. The maximum
        #   supported value is 50.
        # @param [String] page_token
        #   The continuation token, used to page through large result sets. To get the
        #   next page of results, set this parameter to the value of nextPageToken from
        #   the previous response.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::MapsengineV1::ListParentsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::MapsengineV1::ListParentsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_asset_parents(id, max_results: nil, page_token: nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          command =  make_simple_command(:get, 'assets/{id}/parents', options)
          command.response_representation = Google::Apis::MapsengineV1::ListParentsResponse::Representation
          command.response_class = Google::Apis::MapsengineV1::ListParentsResponse
          command.params['id'] = id unless id.nil?
          command.query['maxResults'] = max_results unless max_results.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Return all of the permissions for the specified asset.
        # @param [String] id
        #   The ID of the asset whose permissions will be listed.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::MapsengineV1::ListPermissionsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::MapsengineV1::ListPermissionsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_asset_permissions(id, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          command =  make_simple_command(:get, 'assets/{id}/permissions', options)
          command.response_representation = Google::Apis::MapsengineV1::ListPermissionsResponse::Representation
          command.response_class = Google::Apis::MapsengineV1::ListPermissionsResponse
          command.params['id'] = id unless id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Cancel processing on a layer asset.
        # @param [String] id
        #   The ID of the layer.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::MapsengineV1::ProcessResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::MapsengineV1::ProcessResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def cancel_layer_processing(id, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          command =  make_simple_command(:post, 'layers/{id}/cancelProcessing', options)
          command.response_representation = Google::Apis::MapsengineV1::ProcessResponse::Representation
          command.response_class = Google::Apis::MapsengineV1::ProcessResponse
          command.params['id'] = id unless id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Create a layer asset.
        # @param [Google::Apis::MapsengineV1::Layer] layer_object
        # @param [Boolean] process
        #   Whether to queue the created layer for processing.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::MapsengineV1::Layer] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::MapsengineV1::Layer]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_layer(layer_object = nil, process: nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          command =  make_simple_command(:post, 'layers', options)
          command.request_representation = Google::Apis::MapsengineV1::Layer::Representation
          command.request_object = layer_object
          command.response_representation = Google::Apis::MapsengineV1::Layer::Representation
          command.response_class = Google::Apis::MapsengineV1::Layer
          command.query['process'] = process unless process.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Delete a layer.
        # @param [String] id
        #   The ID of the layer. Only the layer creator or project owner are permitted to
        #   delete. If the layer is published, or included in a map, the request will fail.
        #   Unpublish the layer, and remove it from all maps prior to deleting.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [NilClass] No result returned for this method
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [void]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_layer(id, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          command =  make_simple_command(:delete, 'layers/{id}', options)
          command.params['id'] = id unless id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Return metadata for a particular layer.
        # @param [String] id
        #   The ID of the layer.
        # @param [String] version
        #   Deprecated: The version parameter indicates which version of the layer should
        #   be returned. When version is set to published, the published version of the
        #   layer will be returned. Please use the layers.getPublished endpoint instead.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::MapsengineV1::Layer] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::MapsengineV1::Layer]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_layer(id, version: nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          command =  make_simple_command(:get, 'layers/{id}', options)
          command.response_representation = Google::Apis::MapsengineV1::Layer::Representation
          command.response_class = Google::Apis::MapsengineV1::Layer
          command.params['id'] = id unless id.nil?
          command.query['version'] = version unless version.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Return the published metadata for a particular layer.
        # @param [String] id
        #   The ID of the layer.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::MapsengineV1::PublishedLayer] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::MapsengineV1::PublishedLayer]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_published_layer(id, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          command =  make_simple_command(:get, 'layers/{id}/published', options)
          command.response_representation = Google::Apis::MapsengineV1::PublishedLayer::Representation
          command.response_class = Google::Apis::MapsengineV1::PublishedLayer
          command.params['id'] = id unless id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Return all layers readable by the current user.
        # @param [String] bbox
        #   A bounding box, expressed as "west,south,east,north". If set, only assets
        #   which intersect this bounding box will be returned.
        # @param [DateTime] created_after
        #   An RFC 3339 formatted date-time value (e.g. 1970-01-01T00:00:00Z). Returned
        #   assets will have been created at or after this time.
        # @param [DateTime] created_before
        #   An RFC 3339 formatted date-time value (e.g. 1970-01-01T00:00:00Z). Returned
        #   assets will have been created at or before this time.
        # @param [String] creator_email
        #   An email address representing a user. Returned assets that have been created
        #   by the user associated with the provided email address.
        # @param [Fixnum] max_results
        #   The maximum number of items to include in a single response page. The maximum
        #   supported value is 100.
        # @param [DateTime] modified_after
        #   An RFC 3339 formatted date-time value (e.g. 1970-01-01T00:00:00Z). Returned
        #   assets will have been modified at or after this time.
        # @param [DateTime] modified_before
        #   An RFC 3339 formatted date-time value (e.g. 1970-01-01T00:00:00Z). Returned
        #   assets will have been modified at or before this time.
        # @param [String] page_token
        #   The continuation token, used to page through large result sets. To get the
        #   next page of results, set this parameter to the value of nextPageToken from
        #   the previous response.
        # @param [String] processing_status
        # @param [String] project_id
        #   The ID of a Maps Engine project, used to filter the response. To list all
        #   available projects with their IDs, send a Projects: list request. You can also
        #   find your project ID as the value of the DashboardPlace:cid URL parameter when
        #   signed in to mapsengine.google.com.
        # @param [String] role
        #   The role parameter indicates that the response should only contain assets
        #   where the current user has the specified level of access.
        # @param [String] search
        #   An unstructured search string used to filter the set of results based on asset
        #   metadata.
        # @param [String] tags
        #   A comma separated list of tags. Returned assets will contain all the tags from
        #   the list.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::MapsengineV1::ListLayersResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::MapsengineV1::ListLayersResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_layers(bbox: nil, created_after: nil, created_before: nil, creator_email: nil, max_results: nil, modified_after: nil, modified_before: nil, page_token: nil, processing_status: nil, project_id: nil, role: nil, search: nil, tags: nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          command =  make_simple_command(:get, 'layers', options)
          command.response_representation = Google::Apis::MapsengineV1::ListLayersResponse::Representation
          command.response_class = Google::Apis::MapsengineV1::ListLayersResponse
          command.query['bbox'] = bbox unless bbox.nil?
          command.query['createdAfter'] = created_after unless created_after.nil?
          command.query['createdBefore'] = created_before unless created_before.nil?
          command.query['creatorEmail'] = creator_email unless creator_email.nil?
          command.query['maxResults'] = max_results unless max_results.nil?
          command.query['modifiedAfter'] = modified_after unless modified_after.nil?
          command.query['modifiedBefore'] = modified_before unless modified_before.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['processingStatus'] = processing_status unless processing_status.nil?
          command.query['projectId'] = project_id unless project_id.nil?
          command.query['role'] = role unless role.nil?
          command.query['search'] = search unless search.nil?
          command.query['tags'] = tags unless tags.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Return all published layers readable by the current user.
        # @param [Fixnum] max_results
        #   The maximum number of items to include in a single response page. The maximum
        #   supported value is 100.
        # @param [String] page_token
        #   The continuation token, used to page through large result sets. To get the
        #   next page of results, set this parameter to the value of nextPageToken from
        #   the previous response.
        # @param [String] project_id
        #   The ID of a Maps Engine project, used to filter the response. To list all
        #   available projects with their IDs, send a Projects: list request. You can also
        #   find your project ID as the value of the DashboardPlace:cid URL parameter when
        #   signed in to mapsengine.google.com.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::MapsengineV1::ListPublishedLayersResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::MapsengineV1::ListPublishedLayersResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_published_layers(max_results: nil, page_token: nil, project_id: nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          command =  make_simple_command(:get, 'layers/published', options)
          command.response_representation = Google::Apis::MapsengineV1::ListPublishedLayersResponse::Representation
          command.response_class = Google::Apis::MapsengineV1::ListPublishedLayersResponse
          command.query['maxResults'] = max_results unless max_results.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['projectId'] = project_id unless project_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Mutate a layer asset.
        # @param [String] id
        #   The ID of the layer.
        # @param [Google::Apis::MapsengineV1::Layer] layer_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [NilClass] No result returned for this method
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [void]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_layer(id, layer_object = nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          command =  make_simple_command(:patch, 'layers/{id}', options)
          command.request_representation = Google::Apis::MapsengineV1::Layer::Representation
          command.request_object = layer_object
          command.params['id'] = id unless id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Process a layer asset.
        # @param [String] id
        #   The ID of the layer.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::MapsengineV1::ProcessResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::MapsengineV1::ProcessResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def process_layer(id, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          command =  make_simple_command(:post, 'layers/{id}/process', options)
          command.response_representation = Google::Apis::MapsengineV1::ProcessResponse::Representation
          command.response_class = Google::Apis::MapsengineV1::ProcessResponse
          command.params['id'] = id unless id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Publish a layer asset.
        # @param [String] id
        #   The ID of the layer.
        # @param [Boolean] force
        #   If set to true, the API will allow publication of the layer even if it's out
        #   of date. If not true, you'll need to reprocess any out-of-date layer before
        #   publishing.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::MapsengineV1::PublishResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::MapsengineV1::PublishResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def publish_layer(id, force: nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          command =  make_simple_command(:post, 'layers/{id}/publish', options)
          command.response_representation = Google::Apis::MapsengineV1::PublishResponse::Representation
          command.response_class = Google::Apis::MapsengineV1::PublishResponse
          command.params['id'] = id unless id.nil?
          command.query['force'] = force unless force.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Unpublish a layer asset.
        # @param [String] id
        #   The ID of the layer.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::MapsengineV1::PublishResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::MapsengineV1::PublishResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def unpublish_layer(id, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          command =  make_simple_command(:post, 'layers/{id}/unpublish', options)
          command.response_representation = Google::Apis::MapsengineV1::PublishResponse::Representation
          command.response_class = Google::Apis::MapsengineV1::PublishResponse
          command.params['id'] = id unless id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Return all parent ids of the specified layer.
        # @param [String] id
        #   The ID of the layer whose parents will be listed.
        # @param [Fixnum] max_results
        #   The maximum number of items to include in a single response page. The maximum
        #   supported value is 50.
        # @param [String] page_token
        #   The continuation token, used to page through large result sets. To get the
        #   next page of results, set this parameter to the value of nextPageToken from
        #   the previous response.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::MapsengineV1::ListParentsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::MapsengineV1::ListParentsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_layer_parents(id, max_results: nil, page_token: nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          command =  make_simple_command(:get, 'layers/{id}/parents', options)
          command.response_representation = Google::Apis::MapsengineV1::ListParentsResponse::Representation
          command.response_class = Google::Apis::MapsengineV1::ListParentsResponse
          command.params['id'] = id unless id.nil?
          command.query['maxResults'] = max_results unless max_results.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Remove permission entries from an already existing asset.
        # @param [String] id
        #   The ID of the asset from which permissions will be removed.
        # @param [Google::Apis::MapsengineV1::BatchDeletePermissionsRequest] batch_delete_permissions_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::MapsengineV1::BatchDeletePermissionsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::MapsengineV1::BatchDeletePermissionsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def batch_delete_layer_permission(id, batch_delete_permissions_request_object = nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          command =  make_simple_command(:post, 'layers/{id}/permissions/batchDelete', options)
          command.request_representation = Google::Apis::MapsengineV1::BatchDeletePermissionsRequest::Representation
          command.request_object = batch_delete_permissions_request_object
          command.response_representation = Google::Apis::MapsengineV1::BatchDeletePermissionsResponse::Representation
          command.response_class = Google::Apis::MapsengineV1::BatchDeletePermissionsResponse
          command.params['id'] = id unless id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Add or update permission entries to an already existing asset.
        # An asset can hold up to 20 different permission entries. Each batchInsert
        # request is atomic.
        # @param [String] id
        #   The ID of the asset to which permissions will be added.
        # @param [Google::Apis::MapsengineV1::BatchUpdatePermissionsRequest] batch_update_permissions_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::MapsengineV1::BatchUpdatePermissionsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::MapsengineV1::BatchUpdatePermissionsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def batch_update_layer_permission(id, batch_update_permissions_request_object = nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          command =  make_simple_command(:post, 'layers/{id}/permissions/batchUpdate', options)
          command.request_representation = Google::Apis::MapsengineV1::BatchUpdatePermissionsRequest::Representation
          command.request_object = batch_update_permissions_request_object
          command.response_representation = Google::Apis::MapsengineV1::BatchUpdatePermissionsResponse::Representation
          command.response_class = Google::Apis::MapsengineV1::BatchUpdatePermissionsResponse
          command.params['id'] = id unless id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Return all of the permissions for the specified asset.
        # @param [String] id
        #   The ID of the asset whose permissions will be listed.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::MapsengineV1::ListPermissionsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::MapsengineV1::ListPermissionsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_layer_permissions(id, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          command =  make_simple_command(:get, 'layers/{id}/permissions', options)
          command.response_representation = Google::Apis::MapsengineV1::ListPermissionsResponse::Representation
          command.response_class = Google::Apis::MapsengineV1::ListPermissionsResponse
          command.params['id'] = id unless id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Create a map asset.
        # @param [Google::Apis::MapsengineV1::Map] map_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::MapsengineV1::Map] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::MapsengineV1::Map]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_map(map_object = nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          command =  make_simple_command(:post, 'maps', options)
          command.request_representation = Google::Apis::MapsengineV1::Map::Representation
          command.request_object = map_object
          command.response_representation = Google::Apis::MapsengineV1::Map::Representation
          command.response_class = Google::Apis::MapsengineV1::Map
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Delete a map.
        # @param [String] id
        #   The ID of the map. Only the map creator or project owner are permitted to
        #   delete. If the map is published the request will fail. Unpublish the map prior
        #   to deleting.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [NilClass] No result returned for this method
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [void]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_map(id, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          command =  make_simple_command(:delete, 'maps/{id}', options)
          command.params['id'] = id unless id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Return metadata for a particular map.
        # @param [String] id
        #   The ID of the map.
        # @param [String] version
        #   Deprecated: The version parameter indicates which version of the map should be
        #   returned. When version is set to published, the published version of the map
        #   will be returned. Please use the maps.getPublished endpoint instead.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::MapsengineV1::Map] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::MapsengineV1::Map]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_map(id, version: nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          command =  make_simple_command(:get, 'maps/{id}', options)
          command.response_representation = Google::Apis::MapsengineV1::Map::Representation
          command.response_class = Google::Apis::MapsengineV1::Map
          command.params['id'] = id unless id.nil?
          command.query['version'] = version unless version.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Return the published metadata for a particular map.
        # @param [String] id
        #   The ID of the map.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::MapsengineV1::PublishedMap] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::MapsengineV1::PublishedMap]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_published_map(id, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          command =  make_simple_command(:get, 'maps/{id}/published', options)
          command.response_representation = Google::Apis::MapsengineV1::PublishedMap::Representation
          command.response_class = Google::Apis::MapsengineV1::PublishedMap
          command.params['id'] = id unless id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Return all maps readable by the current user.
        # @param [String] bbox
        #   A bounding box, expressed as "west,south,east,north". If set, only assets
        #   which intersect this bounding box will be returned.
        # @param [DateTime] created_after
        #   An RFC 3339 formatted date-time value (e.g. 1970-01-01T00:00:00Z). Returned
        #   assets will have been created at or after this time.
        # @param [DateTime] created_before
        #   An RFC 3339 formatted date-time value (e.g. 1970-01-01T00:00:00Z). Returned
        #   assets will have been created at or before this time.
        # @param [String] creator_email
        #   An email address representing a user. Returned assets that have been created
        #   by the user associated with the provided email address.
        # @param [Fixnum] max_results
        #   The maximum number of items to include in a single response page. The maximum
        #   supported value is 100.
        # @param [DateTime] modified_after
        #   An RFC 3339 formatted date-time value (e.g. 1970-01-01T00:00:00Z). Returned
        #   assets will have been modified at or after this time.
        # @param [DateTime] modified_before
        #   An RFC 3339 formatted date-time value (e.g. 1970-01-01T00:00:00Z). Returned
        #   assets will have been modified at or before this time.
        # @param [String] page_token
        #   The continuation token, used to page through large result sets. To get the
        #   next page of results, set this parameter to the value of nextPageToken from
        #   the previous response.
        # @param [String] processing_status
        # @param [String] project_id
        #   The ID of a Maps Engine project, used to filter the response. To list all
        #   available projects with their IDs, send a Projects: list request. You can also
        #   find your project ID as the value of the DashboardPlace:cid URL parameter when
        #   signed in to mapsengine.google.com.
        # @param [String] role
        #   The role parameter indicates that the response should only contain assets
        #   where the current user has the specified level of access.
        # @param [String] search
        #   An unstructured search string used to filter the set of results based on asset
        #   metadata.
        # @param [String] tags
        #   A comma separated list of tags. Returned assets will contain all the tags from
        #   the list.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::MapsengineV1::ListMapsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::MapsengineV1::ListMapsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_maps(bbox: nil, created_after: nil, created_before: nil, creator_email: nil, max_results: nil, modified_after: nil, modified_before: nil, page_token: nil, processing_status: nil, project_id: nil, role: nil, search: nil, tags: nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          command =  make_simple_command(:get, 'maps', options)
          command.response_representation = Google::Apis::MapsengineV1::ListMapsResponse::Representation
          command.response_class = Google::Apis::MapsengineV1::ListMapsResponse
          command.query['bbox'] = bbox unless bbox.nil?
          command.query['createdAfter'] = created_after unless created_after.nil?
          command.query['createdBefore'] = created_before unless created_before.nil?
          command.query['creatorEmail'] = creator_email unless creator_email.nil?
          command.query['maxResults'] = max_results unless max_results.nil?
          command.query['modifiedAfter'] = modified_after unless modified_after.nil?
          command.query['modifiedBefore'] = modified_before unless modified_before.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['processingStatus'] = processing_status unless processing_status.nil?
          command.query['projectId'] = project_id unless project_id.nil?
          command.query['role'] = role unless role.nil?
          command.query['search'] = search unless search.nil?
          command.query['tags'] = tags unless tags.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Return all published maps readable by the current user.
        # @param [Fixnum] max_results
        #   The maximum number of items to include in a single response page. The maximum
        #   supported value is 100.
        # @param [String] page_token
        #   The continuation token, used to page through large result sets. To get the
        #   next page of results, set this parameter to the value of nextPageToken from
        #   the previous response.
        # @param [String] project_id
        #   The ID of a Maps Engine project, used to filter the response. To list all
        #   available projects with their IDs, send a Projects: list request. You can also
        #   find your project ID as the value of the DashboardPlace:cid URL parameter when
        #   signed in to mapsengine.google.com.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::MapsengineV1::ListPublishedMapsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::MapsengineV1::ListPublishedMapsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_map_published(max_results: nil, page_token: nil, project_id: nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          command =  make_simple_command(:get, 'maps/published', options)
          command.response_representation = Google::Apis::MapsengineV1::ListPublishedMapsResponse::Representation
          command.response_class = Google::Apis::MapsengineV1::ListPublishedMapsResponse
          command.query['maxResults'] = max_results unless max_results.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['projectId'] = project_id unless project_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Mutate a map asset.
        # @param [String] id
        #   The ID of the map.
        # @param [Google::Apis::MapsengineV1::Map] map_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [NilClass] No result returned for this method
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [void]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_map(id, map_object = nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          command =  make_simple_command(:patch, 'maps/{id}', options)
          command.request_representation = Google::Apis::MapsengineV1::Map::Representation
          command.request_object = map_object
          command.params['id'] = id unless id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Publish a map asset.
        # @param [String] id
        #   The ID of the map.
        # @param [Boolean] force
        #   If set to true, the API will allow publication of the map even if it's out of
        #   date. If false, the map must have a processingStatus of complete before
        #   publishing.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::MapsengineV1::PublishResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::MapsengineV1::PublishResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def publish_map(id, force: nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          command =  make_simple_command(:post, 'maps/{id}/publish', options)
          command.response_representation = Google::Apis::MapsengineV1::PublishResponse::Representation
          command.response_class = Google::Apis::MapsengineV1::PublishResponse
          command.params['id'] = id unless id.nil?
          command.query['force'] = force unless force.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Unpublish a map asset.
        # @param [String] id
        #   The ID of the map.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::MapsengineV1::PublishResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::MapsengineV1::PublishResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def unpublish_map(id, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          command =  make_simple_command(:post, 'maps/{id}/unpublish', options)
          command.response_representation = Google::Apis::MapsengineV1::PublishResponse::Representation
          command.response_class = Google::Apis::MapsengineV1::PublishResponse
          command.params['id'] = id unless id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Remove permission entries from an already existing asset.
        # @param [String] id
        #   The ID of the asset from which permissions will be removed.
        # @param [Google::Apis::MapsengineV1::BatchDeletePermissionsRequest] batch_delete_permissions_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::MapsengineV1::BatchDeletePermissionsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::MapsengineV1::BatchDeletePermissionsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def batch_delete_map_permission(id, batch_delete_permissions_request_object = nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          command =  make_simple_command(:post, 'maps/{id}/permissions/batchDelete', options)
          command.request_representation = Google::Apis::MapsengineV1::BatchDeletePermissionsRequest::Representation
          command.request_object = batch_delete_permissions_request_object
          command.response_representation = Google::Apis::MapsengineV1::BatchDeletePermissionsResponse::Representation
          command.response_class = Google::Apis::MapsengineV1::BatchDeletePermissionsResponse
          command.params['id'] = id unless id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Add or update permission entries to an already existing asset.
        # An asset can hold up to 20 different permission entries. Each batchInsert
        # request is atomic.
        # @param [String] id
        #   The ID of the asset to which permissions will be added.
        # @param [Google::Apis::MapsengineV1::BatchUpdatePermissionsRequest] batch_update_permissions_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::MapsengineV1::BatchUpdatePermissionsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::MapsengineV1::BatchUpdatePermissionsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def batch_update_map_permission(id, batch_update_permissions_request_object = nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          command =  make_simple_command(:post, 'maps/{id}/permissions/batchUpdate', options)
          command.request_representation = Google::Apis::MapsengineV1::BatchUpdatePermissionsRequest::Representation
          command.request_object = batch_update_permissions_request_object
          command.response_representation = Google::Apis::MapsengineV1::BatchUpdatePermissionsResponse::Representation
          command.response_class = Google::Apis::MapsengineV1::BatchUpdatePermissionsResponse
          command.params['id'] = id unless id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Return all of the permissions for the specified asset.
        # @param [String] id
        #   The ID of the asset whose permissions will be listed.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::MapsengineV1::ListPermissionsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::MapsengineV1::ListPermissionsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_map_permissions(id, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          command =  make_simple_command(:get, 'maps/{id}/permissions', options)
          command.response_representation = Google::Apis::MapsengineV1::ListPermissionsResponse::Representation
          command.response_class = Google::Apis::MapsengineV1::ListPermissionsResponse
          command.params['id'] = id unless id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Return all projects readable by the current user.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::MapsengineV1::ListProjectsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::MapsengineV1::ListProjectsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_projects(fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          command =  make_simple_command(:get, 'projects', options)
          command.response_representation = Google::Apis::MapsengineV1::ListProjectsResponse::Representation
          command.response_class = Google::Apis::MapsengineV1::ListProjectsResponse
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Create an icon.
        # @param [String] project_id
        #   The ID of the project.
        # @param [Google::Apis::MapsengineV1::Icon] icon_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [IO, String] upload_source
        #   IO stream or filename containing content to upload
        # @param [String] content_type
        #   Content type of the uploaded content.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::MapsengineV1::Icon] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::MapsengineV1::Icon]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_icon(project_id, icon_object = nil, fields: nil, quota_user: nil, user_ip: nil, upload_source: nil, content_type: nil, options: nil, &block)
          if upload_source.nil?
            command =  make_simple_command(:post, 'projects/{projectId}/icons', options)
          else
            command = make_upload_command(:post, 'projects/{projectId}/icons', options)
            command.upload_source = upload_source
            command.upload_content_type = content_type
          end
          command.request_representation = Google::Apis::MapsengineV1::Icon::Representation
          command.request_object = icon_object
          command.response_representation = Google::Apis::MapsengineV1::Icon::Representation
          command.response_class = Google::Apis::MapsengineV1::Icon
          command.params['projectId'] = project_id unless project_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Return an icon or its associated metadata
        # @param [String] project_id
        #   The ID of the project.
        # @param [String] id
        #   The ID of the icon.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [IO, String] download_dest
        #   IO stream or filename to receive content download
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::MapsengineV1::Icon] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::MapsengineV1::Icon]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_icon(project_id, id, fields: nil, quota_user: nil, user_ip: nil, download_dest: nil, options: nil, &block)
          if download_dest.nil?
            command =  make_simple_command(:get, 'projects/{projectId}/icons/{id}', options)
          else
            command = make_download_command(:get, 'projects/{projectId}/icons/{id}', options)
            command.download_dest = download_dest
          end
          command.response_representation = Google::Apis::MapsengineV1::Icon::Representation
          command.response_class = Google::Apis::MapsengineV1::Icon
          command.params['projectId'] = project_id unless project_id.nil?
          command.params['id'] = id unless id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Return all icons in the current project
        # @param [String] project_id
        #   The ID of the project.
        # @param [Fixnum] max_results
        #   The maximum number of items to include in a single response page. The maximum
        #   supported value is 50.
        # @param [String] page_token
        #   The continuation token, used to page through large result sets. To get the
        #   next page of results, set this parameter to the value of nextPageToken from
        #   the previous response.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::MapsengineV1::ListIconsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::MapsengineV1::ListIconsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_icons(project_id, max_results: nil, page_token: nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          command =  make_simple_command(:get, 'projects/{projectId}/icons', options)
          command.response_representation = Google::Apis::MapsengineV1::ListIconsResponse::Representation
          command.response_class = Google::Apis::MapsengineV1::ListIconsResponse
          command.params['projectId'] = project_id unless project_id.nil?
          command.query['maxResults'] = max_results unless max_results.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Cancel processing on a raster collection asset.
        # @param [String] id
        #   The ID of the raster collection.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::MapsengineV1::ProcessResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::MapsengineV1::ProcessResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def cancel_raster_collection_processing(id, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          command =  make_simple_command(:post, 'rasterCollections/{id}/cancelProcessing', options)
          command.response_representation = Google::Apis::MapsengineV1::ProcessResponse::Representation
          command.response_class = Google::Apis::MapsengineV1::ProcessResponse
          command.params['id'] = id unless id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Create a raster collection asset.
        # @param [Google::Apis::MapsengineV1::RasterCollection] raster_collection_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::MapsengineV1::RasterCollection] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::MapsengineV1::RasterCollection]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_raster_collection(raster_collection_object = nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          command =  make_simple_command(:post, 'rasterCollections', options)
          command.request_representation = Google::Apis::MapsengineV1::RasterCollection::Representation
          command.request_object = raster_collection_object
          command.response_representation = Google::Apis::MapsengineV1::RasterCollection::Representation
          command.response_class = Google::Apis::MapsengineV1::RasterCollection
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Delete a raster collection.
        # @param [String] id
        #   The ID of the raster collection. Only the raster collection creator or project
        #   owner are permitted to delete. If the rastor collection is included in a layer,
        #   the request will fail. Remove the raster collection from all layers prior to
        #   deleting.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [NilClass] No result returned for this method
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [void]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_raster_collection(id, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          command =  make_simple_command(:delete, 'rasterCollections/{id}', options)
          command.params['id'] = id unless id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Return metadata for a particular raster collection.
        # @param [String] id
        #   The ID of the raster collection.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::MapsengineV1::RasterCollection] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::MapsengineV1::RasterCollection]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_raster_collection(id, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          command =  make_simple_command(:get, 'rasterCollections/{id}', options)
          command.response_representation = Google::Apis::MapsengineV1::RasterCollection::Representation
          command.response_class = Google::Apis::MapsengineV1::RasterCollection
          command.params['id'] = id unless id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Return all raster collections readable by the current user.
        # @param [String] bbox
        #   A bounding box, expressed as "west,south,east,north". If set, only assets
        #   which intersect this bounding box will be returned.
        # @param [DateTime] created_after
        #   An RFC 3339 formatted date-time value (e.g. 1970-01-01T00:00:00Z). Returned
        #   assets will have been created at or after this time.
        # @param [DateTime] created_before
        #   An RFC 3339 formatted date-time value (e.g. 1970-01-01T00:00:00Z). Returned
        #   assets will have been created at or before this time.
        # @param [String] creator_email
        #   An email address representing a user. Returned assets that have been created
        #   by the user associated with the provided email address.
        # @param [Fixnum] max_results
        #   The maximum number of items to include in a single response page. The maximum
        #   supported value is 100.
        # @param [DateTime] modified_after
        #   An RFC 3339 formatted date-time value (e.g. 1970-01-01T00:00:00Z). Returned
        #   assets will have been modified at or after this time.
        # @param [DateTime] modified_before
        #   An RFC 3339 formatted date-time value (e.g. 1970-01-01T00:00:00Z). Returned
        #   assets will have been modified at or before this time.
        # @param [String] page_token
        #   The continuation token, used to page through large result sets. To get the
        #   next page of results, set this parameter to the value of nextPageToken from
        #   the previous response.
        # @param [String] processing_status
        # @param [String] project_id
        #   The ID of a Maps Engine project, used to filter the response. To list all
        #   available projects with their IDs, send a Projects: list request. You can also
        #   find your project ID as the value of the DashboardPlace:cid URL parameter when
        #   signed in to mapsengine.google.com.
        # @param [String] role
        #   The role parameter indicates that the response should only contain assets
        #   where the current user has the specified level of access.
        # @param [String] search
        #   An unstructured search string used to filter the set of results based on asset
        #   metadata.
        # @param [String] tags
        #   A comma separated list of tags. Returned assets will contain all the tags from
        #   the list.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::MapsengineV1::ListRasterCollectionsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::MapsengineV1::ListRasterCollectionsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_raster_collections(bbox: nil, created_after: nil, created_before: nil, creator_email: nil, max_results: nil, modified_after: nil, modified_before: nil, page_token: nil, processing_status: nil, project_id: nil, role: nil, search: nil, tags: nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          command =  make_simple_command(:get, 'rasterCollections', options)
          command.response_representation = Google::Apis::MapsengineV1::ListRasterCollectionsResponse::Representation
          command.response_class = Google::Apis::MapsengineV1::ListRasterCollectionsResponse
          command.query['bbox'] = bbox unless bbox.nil?
          command.query['createdAfter'] = created_after unless created_after.nil?
          command.query['createdBefore'] = created_before unless created_before.nil?
          command.query['creatorEmail'] = creator_email unless creator_email.nil?
          command.query['maxResults'] = max_results unless max_results.nil?
          command.query['modifiedAfter'] = modified_after unless modified_after.nil?
          command.query['modifiedBefore'] = modified_before unless modified_before.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['processingStatus'] = processing_status unless processing_status.nil?
          command.query['projectId'] = project_id unless project_id.nil?
          command.query['role'] = role unless role.nil?
          command.query['search'] = search unless search.nil?
          command.query['tags'] = tags unless tags.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Mutate a raster collection asset.
        # @param [String] id
        #   The ID of the raster collection.
        # @param [Google::Apis::MapsengineV1::RasterCollection] raster_collection_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [NilClass] No result returned for this method
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [void]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_raster_collection(id, raster_collection_object = nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          command =  make_simple_command(:patch, 'rasterCollections/{id}', options)
          command.request_representation = Google::Apis::MapsengineV1::RasterCollection::Representation
          command.request_object = raster_collection_object
          command.params['id'] = id unless id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Process a raster collection asset.
        # @param [String] id
        #   The ID of the raster collection.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::MapsengineV1::ProcessResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::MapsengineV1::ProcessResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def process_raster_collection(id, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          command =  make_simple_command(:post, 'rasterCollections/{id}/process', options)
          command.response_representation = Google::Apis::MapsengineV1::ProcessResponse::Representation
          command.response_class = Google::Apis::MapsengineV1::ProcessResponse
          command.params['id'] = id unless id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Return all parent ids of the specified raster collection.
        # @param [String] id
        #   The ID of the raster collection whose parents will be listed.
        # @param [Fixnum] max_results
        #   The maximum number of items to include in a single response page. The maximum
        #   supported value is 50.
        # @param [String] page_token
        #   The continuation token, used to page through large result sets. To get the
        #   next page of results, set this parameter to the value of nextPageToken from
        #   the previous response.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::MapsengineV1::ListParentsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::MapsengineV1::ListParentsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_raster_collection_parents(id, max_results: nil, page_token: nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          command =  make_simple_command(:get, 'rasterCollections/{id}/parents', options)
          command.response_representation = Google::Apis::MapsengineV1::ListParentsResponse::Representation
          command.response_class = Google::Apis::MapsengineV1::ListParentsResponse
          command.params['id'] = id unless id.nil?
          command.query['maxResults'] = max_results unless max_results.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Remove permission entries from an already existing asset.
        # @param [String] id
        #   The ID of the asset from which permissions will be removed.
        # @param [Google::Apis::MapsengineV1::BatchDeletePermissionsRequest] batch_delete_permissions_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::MapsengineV1::BatchDeletePermissionsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::MapsengineV1::BatchDeletePermissionsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def batch_delete_raster_collection_permission(id, batch_delete_permissions_request_object = nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          command =  make_simple_command(:post, 'rasterCollections/{id}/permissions/batchDelete', options)
          command.request_representation = Google::Apis::MapsengineV1::BatchDeletePermissionsRequest::Representation
          command.request_object = batch_delete_permissions_request_object
          command.response_representation = Google::Apis::MapsengineV1::BatchDeletePermissionsResponse::Representation
          command.response_class = Google::Apis::MapsengineV1::BatchDeletePermissionsResponse
          command.params['id'] = id unless id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Add or update permission entries to an already existing asset.
        # An asset can hold up to 20 different permission entries. Each batchInsert
        # request is atomic.
        # @param [String] id
        #   The ID of the asset to which permissions will be added.
        # @param [Google::Apis::MapsengineV1::BatchUpdatePermissionsRequest] batch_update_permissions_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::MapsengineV1::BatchUpdatePermissionsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::MapsengineV1::BatchUpdatePermissionsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def batch_update_raster_collection_permission(id, batch_update_permissions_request_object = nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          command =  make_simple_command(:post, 'rasterCollections/{id}/permissions/batchUpdate', options)
          command.request_representation = Google::Apis::MapsengineV1::BatchUpdatePermissionsRequest::Representation
          command.request_object = batch_update_permissions_request_object
          command.response_representation = Google::Apis::MapsengineV1::BatchUpdatePermissionsResponse::Representation
          command.response_class = Google::Apis::MapsengineV1::BatchUpdatePermissionsResponse
          command.params['id'] = id unless id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Return all of the permissions for the specified asset.
        # @param [String] id
        #   The ID of the asset whose permissions will be listed.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::MapsengineV1::ListPermissionsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::MapsengineV1::ListPermissionsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_raster_collection_permissions(id, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          command =  make_simple_command(:get, 'rasterCollections/{id}/permissions', options)
          command.response_representation = Google::Apis::MapsengineV1::ListPermissionsResponse::Representation
          command.response_class = Google::Apis::MapsengineV1::ListPermissionsResponse
          command.params['id'] = id unless id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Remove rasters from an existing raster collection.
        # Up to 50 rasters can be included in a single batchDelete request. Each
        # batchDelete request is atomic.
        # @param [String] id
        #   The ID of the raster collection to which these rasters belong.
        # @param [Google::Apis::MapsengineV1::BatchDeleteRasterCollectionsRasterRequest] batch_delete_raster_collections_raster_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::MapsengineV1::BatchDeleteRasterCollectionsRastersResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::MapsengineV1::BatchDeleteRasterCollectionsRastersResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def batch_delete_raster_collection_raster(id, batch_delete_raster_collections_raster_request_object = nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          command =  make_simple_command(:post, 'rasterCollections/{id}/rasters/batchDelete', options)
          command.request_representation = Google::Apis::MapsengineV1::BatchDeleteRasterCollectionsRasterRequest::Representation
          command.request_object = batch_delete_raster_collections_raster_request_object
          command.response_representation = Google::Apis::MapsengineV1::BatchDeleteRasterCollectionsRastersResponse::Representation
          command.response_class = Google::Apis::MapsengineV1::BatchDeleteRasterCollectionsRastersResponse
          command.params['id'] = id unless id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Add rasters to an existing raster collection. Rasters must be successfully
        # processed in order to be added to a raster collection.
        # Up to 50 rasters can be included in a single batchInsert request. Each
        # batchInsert request is atomic.
        # @param [String] id
        #   The ID of the raster collection to which these rasters belong.
        # @param [Google::Apis::MapsengineV1::BatchInsertRasterCollectionsRastersRequest] batch_insert_raster_collections_rasters_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::MapsengineV1::BatchInsertRasterCollectionsRastersResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::MapsengineV1::BatchInsertRasterCollectionsRastersResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def batch_insert_raster_collection_raster(id, batch_insert_raster_collections_rasters_request_object = nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          command =  make_simple_command(:post, 'rasterCollections/{id}/rasters/batchInsert', options)
          command.request_representation = Google::Apis::MapsengineV1::BatchInsertRasterCollectionsRastersRequest::Representation
          command.request_object = batch_insert_raster_collections_rasters_request_object
          command.response_representation = Google::Apis::MapsengineV1::BatchInsertRasterCollectionsRastersResponse::Representation
          command.response_class = Google::Apis::MapsengineV1::BatchInsertRasterCollectionsRastersResponse
          command.params['id'] = id unless id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Return all rasters within a raster collection.
        # @param [String] id
        #   The ID of the raster collection to which these rasters belong.
        # @param [String] bbox
        #   A bounding box, expressed as "west,south,east,north". If set, only assets
        #   which intersect this bounding box will be returned.
        # @param [DateTime] created_after
        #   An RFC 3339 formatted date-time value (e.g. 1970-01-01T00:00:00Z). Returned
        #   assets will have been created at or after this time.
        # @param [DateTime] created_before
        #   An RFC 3339 formatted date-time value (e.g. 1970-01-01T00:00:00Z). Returned
        #   assets will have been created at or before this time.
        # @param [String] creator_email
        #   An email address representing a user. Returned assets that have been created
        #   by the user associated with the provided email address.
        # @param [Fixnum] max_results
        #   The maximum number of items to include in a single response page. The maximum
        #   supported value is 100.
        # @param [DateTime] modified_after
        #   An RFC 3339 formatted date-time value (e.g. 1970-01-01T00:00:00Z). Returned
        #   assets will have been modified at or after this time.
        # @param [DateTime] modified_before
        #   An RFC 3339 formatted date-time value (e.g. 1970-01-01T00:00:00Z). Returned
        #   assets will have been modified at or before this time.
        # @param [String] page_token
        #   The continuation token, used to page through large result sets. To get the
        #   next page of results, set this parameter to the value of nextPageToken from
        #   the previous response.
        # @param [String] role
        #   The role parameter indicates that the response should only contain assets
        #   where the current user has the specified level of access.
        # @param [String] search
        #   An unstructured search string used to filter the set of results based on asset
        #   metadata.
        # @param [String] tags
        #   A comma separated list of tags. Returned assets will contain all the tags from
        #   the list.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::MapsengineV1::ListRasterCollectionsRastersResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::MapsengineV1::ListRasterCollectionsRastersResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_raster_collection_rasters(id, bbox: nil, created_after: nil, created_before: nil, creator_email: nil, max_results: nil, modified_after: nil, modified_before: nil, page_token: nil, role: nil, search: nil, tags: nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          command =  make_simple_command(:get, 'rasterCollections/{id}/rasters', options)
          command.response_representation = Google::Apis::MapsengineV1::ListRasterCollectionsRastersResponse::Representation
          command.response_class = Google::Apis::MapsengineV1::ListRasterCollectionsRastersResponse
          command.params['id'] = id unless id.nil?
          command.query['bbox'] = bbox unless bbox.nil?
          command.query['createdAfter'] = created_after unless created_after.nil?
          command.query['createdBefore'] = created_before unless created_before.nil?
          command.query['creatorEmail'] = creator_email unless creator_email.nil?
          command.query['maxResults'] = max_results unless max_results.nil?
          command.query['modifiedAfter'] = modified_after unless modified_after.nil?
          command.query['modifiedBefore'] = modified_before unless modified_before.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['role'] = role unless role.nil?
          command.query['search'] = search unless search.nil?
          command.query['tags'] = tags unless tags.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Delete a raster.
        # @param [String] id
        #   The ID of the raster. Only the raster creator or project owner are permitted
        #   to delete. If the raster is included in a layer or mosaic, the request will
        #   fail. Remove it from all parents prior to deleting.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [NilClass] No result returned for this method
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [void]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_raster(id, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          command =  make_simple_command(:delete, 'rasters/{id}', options)
          command.params['id'] = id unless id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Return metadata for a single raster.
        # @param [String] id
        #   The ID of the raster.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::MapsengineV1::Raster] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::MapsengineV1::Raster]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_raster(id, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          command =  make_simple_command(:get, 'rasters/{id}', options)
          command.response_representation = Google::Apis::MapsengineV1::Raster::Representation
          command.response_class = Google::Apis::MapsengineV1::Raster
          command.params['id'] = id unless id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Return all rasters readable by the current user.
        # @param [String] project_id
        #   The ID of a Maps Engine project, used to filter the response. To list all
        #   available projects with their IDs, send a Projects: list request. You can also
        #   find your project ID as the value of the DashboardPlace:cid URL parameter when
        #   signed in to mapsengine.google.com.
        # @param [String] bbox
        #   A bounding box, expressed as "west,south,east,north". If set, only assets
        #   which intersect this bounding box will be returned.
        # @param [DateTime] created_after
        #   An RFC 3339 formatted date-time value (e.g. 1970-01-01T00:00:00Z). Returned
        #   assets will have been created at or after this time.
        # @param [DateTime] created_before
        #   An RFC 3339 formatted date-time value (e.g. 1970-01-01T00:00:00Z). Returned
        #   assets will have been created at or before this time.
        # @param [String] creator_email
        #   An email address representing a user. Returned assets that have been created
        #   by the user associated with the provided email address.
        # @param [Fixnum] max_results
        #   The maximum number of items to include in a single response page. The maximum
        #   supported value is 100.
        # @param [DateTime] modified_after
        #   An RFC 3339 formatted date-time value (e.g. 1970-01-01T00:00:00Z). Returned
        #   assets will have been modified at or after this time.
        # @param [DateTime] modified_before
        #   An RFC 3339 formatted date-time value (e.g. 1970-01-01T00:00:00Z). Returned
        #   assets will have been modified at or before this time.
        # @param [String] page_token
        #   The continuation token, used to page through large result sets. To get the
        #   next page of results, set this parameter to the value of nextPageToken from
        #   the previous response.
        # @param [String] processing_status
        # @param [String] role
        #   The role parameter indicates that the response should only contain assets
        #   where the current user has the specified level of access.
        # @param [String] search
        #   An unstructured search string used to filter the set of results based on asset
        #   metadata.
        # @param [String] tags
        #   A comma separated list of tags. Returned assets will contain all the tags from
        #   the list.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::MapsengineV1::ListRastersResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::MapsengineV1::ListRastersResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_rasters(project_id, bbox: nil, created_after: nil, created_before: nil, creator_email: nil, max_results: nil, modified_after: nil, modified_before: nil, page_token: nil, processing_status: nil, role: nil, search: nil, tags: nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          command =  make_simple_command(:get, 'rasters', options)
          command.response_representation = Google::Apis::MapsengineV1::ListRastersResponse::Representation
          command.response_class = Google::Apis::MapsengineV1::ListRastersResponse
          command.query['bbox'] = bbox unless bbox.nil?
          command.query['createdAfter'] = created_after unless created_after.nil?
          command.query['createdBefore'] = created_before unless created_before.nil?
          command.query['creatorEmail'] = creator_email unless creator_email.nil?
          command.query['maxResults'] = max_results unless max_results.nil?
          command.query['modifiedAfter'] = modified_after unless modified_after.nil?
          command.query['modifiedBefore'] = modified_before unless modified_before.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['processingStatus'] = processing_status unless processing_status.nil?
          command.query['projectId'] = project_id unless project_id.nil?
          command.query['role'] = role unless role.nil?
          command.query['search'] = search unless search.nil?
          command.query['tags'] = tags unless tags.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Mutate a raster asset.
        # @param [String] id
        #   The ID of the raster.
        # @param [Google::Apis::MapsengineV1::Raster] raster_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [NilClass] No result returned for this method
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [void]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_raster(id, raster_object = nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          command =  make_simple_command(:patch, 'rasters/{id}', options)
          command.request_representation = Google::Apis::MapsengineV1::Raster::Representation
          command.request_object = raster_object
          command.params['id'] = id unless id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Process a raster asset.
        # @param [String] id
        #   The ID of the raster.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::MapsengineV1::ProcessResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::MapsengineV1::ProcessResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def process_raster(id, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          command =  make_simple_command(:post, 'rasters/{id}/process', options)
          command.response_representation = Google::Apis::MapsengineV1::ProcessResponse::Representation
          command.response_class = Google::Apis::MapsengineV1::ProcessResponse
          command.params['id'] = id unless id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Create a skeleton raster asset for upload.
        # @param [Google::Apis::MapsengineV1::Raster] raster_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::MapsengineV1::Raster] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::MapsengineV1::Raster]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def upload_raster(raster_object = nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          command =  make_simple_command(:post, 'rasters/upload', options)
          command.request_representation = Google::Apis::MapsengineV1::Raster::Representation
          command.request_object = raster_object
          command.response_representation = Google::Apis::MapsengineV1::Raster::Representation
          command.response_class = Google::Apis::MapsengineV1::Raster
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Upload a file to a raster asset.
        # @param [String] id
        #   The ID of the raster asset.
        # @param [String] filename
        #   The file name of this uploaded file.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [IO, String] upload_source
        #   IO stream or filename containing content to upload
        # @param [String] content_type
        #   Content type of the uploaded content.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [NilClass] No result returned for this method
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [void]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def insert_raster_file(id, filename, fields: nil, quota_user: nil, user_ip: nil, upload_source: nil, content_type: nil, options: nil, &block)
          if upload_source.nil?
            command =  make_simple_command(:post, 'rasters/{id}/files', options)
          else
            command = make_upload_command(:post, 'rasters/{id}/files', options)
            command.upload_source = upload_source
            command.upload_content_type = content_type
          end
          command.params['id'] = id unless id.nil?
          command.query['filename'] = filename unless filename.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Return all parent ids of the specified rasters.
        # @param [String] id
        #   The ID of the rasters whose parents will be listed.
        # @param [Fixnum] max_results
        #   The maximum number of items to include in a single response page. The maximum
        #   supported value is 50.
        # @param [String] page_token
        #   The continuation token, used to page through large result sets. To get the
        #   next page of results, set this parameter to the value of nextPageToken from
        #   the previous response.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::MapsengineV1::ListParentsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::MapsengineV1::ListParentsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_raster_parents(id, max_results: nil, page_token: nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          command =  make_simple_command(:get, 'rasters/{id}/parents', options)
          command.response_representation = Google::Apis::MapsengineV1::ListParentsResponse::Representation
          command.response_class = Google::Apis::MapsengineV1::ListParentsResponse
          command.params['id'] = id unless id.nil?
          command.query['maxResults'] = max_results unless max_results.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Remove permission entries from an already existing asset.
        # @param [String] id
        #   The ID of the asset from which permissions will be removed.
        # @param [Google::Apis::MapsengineV1::BatchDeletePermissionsRequest] batch_delete_permissions_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::MapsengineV1::BatchDeletePermissionsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::MapsengineV1::BatchDeletePermissionsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def batch_delete_raster_permission(id, batch_delete_permissions_request_object = nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          command =  make_simple_command(:post, 'rasters/{id}/permissions/batchDelete', options)
          command.request_representation = Google::Apis::MapsengineV1::BatchDeletePermissionsRequest::Representation
          command.request_object = batch_delete_permissions_request_object
          command.response_representation = Google::Apis::MapsengineV1::BatchDeletePermissionsResponse::Representation
          command.response_class = Google::Apis::MapsengineV1::BatchDeletePermissionsResponse
          command.params['id'] = id unless id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Add or update permission entries to an already existing asset.
        # An asset can hold up to 20 different permission entries. Each batchInsert
        # request is atomic.
        # @param [String] id
        #   The ID of the asset to which permissions will be added.
        # @param [Google::Apis::MapsengineV1::BatchUpdatePermissionsRequest] batch_update_permissions_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::MapsengineV1::BatchUpdatePermissionsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::MapsengineV1::BatchUpdatePermissionsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def batch_update_raster_permission(id, batch_update_permissions_request_object = nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          command =  make_simple_command(:post, 'rasters/{id}/permissions/batchUpdate', options)
          command.request_representation = Google::Apis::MapsengineV1::BatchUpdatePermissionsRequest::Representation
          command.request_object = batch_update_permissions_request_object
          command.response_representation = Google::Apis::MapsengineV1::BatchUpdatePermissionsResponse::Representation
          command.response_class = Google::Apis::MapsengineV1::BatchUpdatePermissionsResponse
          command.params['id'] = id unless id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Return all of the permissions for the specified asset.
        # @param [String] id
        #   The ID of the asset whose permissions will be listed.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::MapsengineV1::ListPermissionsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::MapsengineV1::ListPermissionsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_raster_permissions(id, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          command =  make_simple_command(:get, 'rasters/{id}/permissions', options)
          command.response_representation = Google::Apis::MapsengineV1::ListPermissionsResponse::Representation
          command.response_class = Google::Apis::MapsengineV1::ListPermissionsResponse
          command.params['id'] = id unless id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Create a table asset.
        # @param [Google::Apis::MapsengineV1::Table] table_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::MapsengineV1::Table] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::MapsengineV1::Table]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_table(table_object = nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          command =  make_simple_command(:post, 'tables', options)
          command.request_representation = Google::Apis::MapsengineV1::Table::Representation
          command.request_object = table_object
          command.response_representation = Google::Apis::MapsengineV1::Table::Representation
          command.response_class = Google::Apis::MapsengineV1::Table
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Delete a table.
        # @param [String] id
        #   The ID of the table. Only the table creator or project owner are permitted to
        #   delete. If the table is included in a layer, the request will fail. Remove it
        #   from all layers prior to deleting.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [NilClass] No result returned for this method
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [void]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_table(id, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          command =  make_simple_command(:delete, 'tables/{id}', options)
          command.params['id'] = id unless id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Return metadata for a particular table, including the schema.
        # @param [String] id
        #   The ID of the table.
        # @param [String] version
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::MapsengineV1::Table] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::MapsengineV1::Table]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_table(id, version: nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          command =  make_simple_command(:get, 'tables/{id}', options)
          command.response_representation = Google::Apis::MapsengineV1::Table::Representation
          command.response_class = Google::Apis::MapsengineV1::Table
          command.params['id'] = id unless id.nil?
          command.query['version'] = version unless version.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Return all tables readable by the current user.
        # @param [String] bbox
        #   A bounding box, expressed as "west,south,east,north". If set, only assets
        #   which intersect this bounding box will be returned.
        # @param [DateTime] created_after
        #   An RFC 3339 formatted date-time value (e.g. 1970-01-01T00:00:00Z). Returned
        #   assets will have been created at or after this time.
        # @param [DateTime] created_before
        #   An RFC 3339 formatted date-time value (e.g. 1970-01-01T00:00:00Z). Returned
        #   assets will have been created at or before this time.
        # @param [String] creator_email
        #   An email address representing a user. Returned assets that have been created
        #   by the user associated with the provided email address.
        # @param [Fixnum] max_results
        #   The maximum number of items to include in a single response page. The maximum
        #   supported value is 100.
        # @param [DateTime] modified_after
        #   An RFC 3339 formatted date-time value (e.g. 1970-01-01T00:00:00Z). Returned
        #   assets will have been modified at or after this time.
        # @param [DateTime] modified_before
        #   An RFC 3339 formatted date-time value (e.g. 1970-01-01T00:00:00Z). Returned
        #   assets will have been modified at or before this time.
        # @param [String] page_token
        #   The continuation token, used to page through large result sets. To get the
        #   next page of results, set this parameter to the value of nextPageToken from
        #   the previous response.
        # @param [String] processing_status
        # @param [String] project_id
        #   The ID of a Maps Engine project, used to filter the response. To list all
        #   available projects with their IDs, send a Projects: list request. You can also
        #   find your project ID as the value of the DashboardPlace:cid URL parameter when
        #   signed in to mapsengine.google.com.
        # @param [String] role
        #   The role parameter indicates that the response should only contain assets
        #   where the current user has the specified level of access.
        # @param [String] search
        #   An unstructured search string used to filter the set of results based on asset
        #   metadata.
        # @param [String] tags
        #   A comma separated list of tags. Returned assets will contain all the tags from
        #   the list.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::MapsengineV1::ListTablesResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::MapsengineV1::ListTablesResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_tables(bbox: nil, created_after: nil, created_before: nil, creator_email: nil, max_results: nil, modified_after: nil, modified_before: nil, page_token: nil, processing_status: nil, project_id: nil, role: nil, search: nil, tags: nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          command =  make_simple_command(:get, 'tables', options)
          command.response_representation = Google::Apis::MapsengineV1::ListTablesResponse::Representation
          command.response_class = Google::Apis::MapsengineV1::ListTablesResponse
          command.query['bbox'] = bbox unless bbox.nil?
          command.query['createdAfter'] = created_after unless created_after.nil?
          command.query['createdBefore'] = created_before unless created_before.nil?
          command.query['creatorEmail'] = creator_email unless creator_email.nil?
          command.query['maxResults'] = max_results unless max_results.nil?
          command.query['modifiedAfter'] = modified_after unless modified_after.nil?
          command.query['modifiedBefore'] = modified_before unless modified_before.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['processingStatus'] = processing_status unless processing_status.nil?
          command.query['projectId'] = project_id unless project_id.nil?
          command.query['role'] = role unless role.nil?
          command.query['search'] = search unless search.nil?
          command.query['tags'] = tags unless tags.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Mutate a table asset.
        # @param [String] id
        #   The ID of the table.
        # @param [Google::Apis::MapsengineV1::Table] table_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [NilClass] No result returned for this method
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [void]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_table(id, table_object = nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          command =  make_simple_command(:patch, 'tables/{id}', options)
          command.request_representation = Google::Apis::MapsengineV1::Table::Representation
          command.request_object = table_object
          command.params['id'] = id unless id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Process a table asset.
        # @param [String] id
        #   The ID of the table.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::MapsengineV1::ProcessResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::MapsengineV1::ProcessResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def process_table(id, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          command =  make_simple_command(:post, 'tables/{id}/process', options)
          command.response_representation = Google::Apis::MapsengineV1::ProcessResponse::Representation
          command.response_class = Google::Apis::MapsengineV1::ProcessResponse
          command.params['id'] = id unless id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Create a placeholder table asset to which table files can be uploaded.
        # Once the placeholder has been created, files are uploaded to the https://www.
        # googleapis.com/upload/mapsengine/v1/tables/table_id/files endpoint.
        # See Table Upload in the Developer's Guide or Table.files: insert in the
        # reference documentation for more information.
        # @param [Google::Apis::MapsengineV1::Table] table_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::MapsengineV1::Table] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::MapsengineV1::Table]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def upload_table(table_object = nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          command =  make_simple_command(:post, 'tables/upload', options)
          command.request_representation = Google::Apis::MapsengineV1::Table::Representation
          command.request_object = table_object
          command.response_representation = Google::Apis::MapsengineV1::Table::Representation
          command.response_class = Google::Apis::MapsengineV1::Table
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Delete all features matching the given IDs.
        # @param [String] id
        #   The ID of the table that contains the features to be deleted.
        # @param [Google::Apis::MapsengineV1::BatchDeleteFeaturesRequest] batch_delete_features_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [NilClass] No result returned for this method
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [void]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def batch_delete_table_feature(id, batch_delete_features_request_object = nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          command =  make_simple_command(:post, 'tables/{id}/features/batchDelete', options)
          command.request_representation = Google::Apis::MapsengineV1::BatchDeleteFeaturesRequest::Representation
          command.request_object = batch_delete_features_request_object
          command.params['id'] = id unless id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Append features to an existing table.
        # A single batchInsert request can create:
        # - Up to 50 features.
        # - A combined total of 10 000 vertices.
        # Feature limits are documented in the Supported data formats and limits article
        # of the Google Maps Engine help center. Note that free and paid accounts have
        # different limits.
        # For more information about inserting features, read Creating features in the
        # Google Maps Engine developer's guide.
        # @param [String] id
        #   The ID of the table to append the features to.
        # @param [Google::Apis::MapsengineV1::BatchInsertFeaturesRequest] batch_insert_features_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [NilClass] No result returned for this method
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [void]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def batch_insert_table_feature(id, batch_insert_features_request_object = nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          command =  make_simple_command(:post, 'tables/{id}/features/batchInsert', options)
          command.request_representation = Google::Apis::MapsengineV1::BatchInsertFeaturesRequest::Representation
          command.request_object = batch_insert_features_request_object
          command.params['id'] = id unless id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Update the supplied features.
        # A single batchPatch request can update:
        # - Up to 50 features.
        # - A combined total of 10 000 vertices.
        # Feature limits are documented in the Supported data formats and limits article
        # of the Google Maps Engine help center. Note that free and paid accounts have
        # different limits.
        # Feature updates use HTTP PATCH semantics:
        # - A supplied value replaces an existing value (if any) in that field.
        # - Omitted fields remain unchanged.
        # - Complex values in geometries and properties must be replaced as atomic units.
        # For example, providing just the coordinates of a geometry is not allowed; the
        # complete geometry, including type, must be supplied.
        # - Setting a property's value to null deletes that property.
        # For more information about updating features, read Updating features in the
        # Google Maps Engine developer's guide.
        # @param [String] id
        #   The ID of the table containing the features to be patched.
        # @param [Google::Apis::MapsengineV1::BatchPatchFeaturesRequest] batch_patch_features_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [NilClass] No result returned for this method
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [void]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def batch_patch_table_feature(id, batch_patch_features_request_object = nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          command =  make_simple_command(:post, 'tables/{id}/features/batchPatch', options)
          command.request_representation = Google::Apis::MapsengineV1::BatchPatchFeaturesRequest::Representation
          command.request_object = batch_patch_features_request_object
          command.params['id'] = id unless id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Return a single feature, given its ID.
        # @param [String] table_id
        #   The ID of the table.
        # @param [String] id
        #   The ID of the feature to get.
        # @param [String] select
        #   A SQL-like projection clause used to specify returned properties. If this
        #   parameter is not included, all properties are returned.
        # @param [String] version
        #   The table version to access. See Accessing Public Data for information.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::MapsengineV1::Feature] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::MapsengineV1::Feature]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_table_feature(table_id, id, select: nil, version: nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          command =  make_simple_command(:get, 'tables/{tableId}/features/{id}', options)
          command.response_representation = Google::Apis::MapsengineV1::Feature::Representation
          command.response_class = Google::Apis::MapsengineV1::Feature
          command.params['tableId'] = table_id unless table_id.nil?
          command.params['id'] = id unless id.nil?
          command.query['select'] = select unless select.nil?
          command.query['version'] = version unless version.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Return all features readable by the current user.
        # @param [String] id
        #   The ID of the table to which these features belong.
        # @param [String] include
        #   A comma separated list of optional data to include. Optional data available:
        #   schema.
        # @param [String] intersects
        #   A geometry literal that specifies the spatial restriction of the query.
        # @param [Fixnum] limit
        #   The total number of features to return from the query, irrespective of the
        #   number of pages.
        # @param [Fixnum] max_results
        #   The maximum number of items to include in the response, used for paging. The
        #   maximum supported value is 1000.
        # @param [String] order_by
        #   An SQL-like order by clause used to sort results. If this parameter is not
        #   included, the order of features is undefined.
        # @param [String] page_token
        #   The continuation token, used to page through large result sets. To get the
        #   next page of results, set this parameter to the value of nextPageToken from
        #   the previous response.
        # @param [String] select
        #   A SQL-like projection clause used to specify returned properties. If this
        #   parameter is not included, all properties are returned.
        # @param [String] version
        #   The table version to access. See Accessing Public Data for information.
        # @param [String] where
        #   An SQL-like predicate used to filter results.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::MapsengineV1::ListFeaturesResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::MapsengineV1::ListFeaturesResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_table_features(id, include: nil, intersects: nil, limit: nil, max_results: nil, order_by: nil, page_token: nil, select: nil, version: nil, where: nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          command =  make_simple_command(:get, 'tables/{id}/features', options)
          command.response_representation = Google::Apis::MapsengineV1::ListFeaturesResponse::Representation
          command.response_class = Google::Apis::MapsengineV1::ListFeaturesResponse
          command.params['id'] = id unless id.nil?
          command.query['include'] = include unless include.nil?
          command.query['intersects'] = intersects unless intersects.nil?
          command.query['limit'] = limit unless limit.nil?
          command.query['maxResults'] = max_results unless max_results.nil?
          command.query['orderBy'] = order_by unless order_by.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['select'] = select unless select.nil?
          command.query['version'] = version unless version.nil?
          command.query['where'] = where unless where.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Upload a file to a placeholder table asset. See Table Upload in the Developer'
        # s Guide for more information.
        # Supported file types are listed in the Supported data formats and limits
        # article of the Google Maps Engine help center.
        # @param [String] id
        #   The ID of the table asset.
        # @param [String] filename
        #   The file name of this uploaded file.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [IO, String] upload_source
        #   IO stream or filename containing content to upload
        # @param [String] content_type
        #   Content type of the uploaded content.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [NilClass] No result returned for this method
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [void]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def insert_table_file(id, filename, fields: nil, quota_user: nil, user_ip: nil, upload_source: nil, content_type: nil, options: nil, &block)
          if upload_source.nil?
            command =  make_simple_command(:post, 'tables/{id}/files', options)
          else
            command = make_upload_command(:post, 'tables/{id}/files', options)
            command.upload_source = upload_source
            command.upload_content_type = content_type
          end
          command.params['id'] = id unless id.nil?
          command.query['filename'] = filename unless filename.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Return all parent ids of the specified table.
        # @param [String] id
        #   The ID of the table whose parents will be listed.
        # @param [Fixnum] max_results
        #   The maximum number of items to include in a single response page. The maximum
        #   supported value is 50.
        # @param [String] page_token
        #   The continuation token, used to page through large result sets. To get the
        #   next page of results, set this parameter to the value of nextPageToken from
        #   the previous response.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::MapsengineV1::ListParentsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::MapsengineV1::ListParentsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_table_parents(id, max_results: nil, page_token: nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          command =  make_simple_command(:get, 'tables/{id}/parents', options)
          command.response_representation = Google::Apis::MapsengineV1::ListParentsResponse::Representation
          command.response_class = Google::Apis::MapsengineV1::ListParentsResponse
          command.params['id'] = id unless id.nil?
          command.query['maxResults'] = max_results unless max_results.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Remove permission entries from an already existing asset.
        # @param [String] id
        #   The ID of the asset from which permissions will be removed.
        # @param [Google::Apis::MapsengineV1::BatchDeletePermissionsRequest] batch_delete_permissions_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::MapsengineV1::BatchDeletePermissionsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::MapsengineV1::BatchDeletePermissionsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def batch_delete_table_permission(id, batch_delete_permissions_request_object = nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          command =  make_simple_command(:post, 'tables/{id}/permissions/batchDelete', options)
          command.request_representation = Google::Apis::MapsengineV1::BatchDeletePermissionsRequest::Representation
          command.request_object = batch_delete_permissions_request_object
          command.response_representation = Google::Apis::MapsengineV1::BatchDeletePermissionsResponse::Representation
          command.response_class = Google::Apis::MapsengineV1::BatchDeletePermissionsResponse
          command.params['id'] = id unless id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Add or update permission entries to an already existing asset.
        # An asset can hold up to 20 different permission entries. Each batchInsert
        # request is atomic.
        # @param [String] id
        #   The ID of the asset to which permissions will be added.
        # @param [Google::Apis::MapsengineV1::BatchUpdatePermissionsRequest] batch_update_permissions_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::MapsengineV1::BatchUpdatePermissionsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::MapsengineV1::BatchUpdatePermissionsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def batch_update_table_permission(id, batch_update_permissions_request_object = nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          command =  make_simple_command(:post, 'tables/{id}/permissions/batchUpdate', options)
          command.request_representation = Google::Apis::MapsengineV1::BatchUpdatePermissionsRequest::Representation
          command.request_object = batch_update_permissions_request_object
          command.response_representation = Google::Apis::MapsengineV1::BatchUpdatePermissionsResponse::Representation
          command.response_class = Google::Apis::MapsengineV1::BatchUpdatePermissionsResponse
          command.params['id'] = id unless id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Return all of the permissions for the specified asset.
        # @param [String] id
        #   The ID of the asset whose permissions will be listed.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::MapsengineV1::ListPermissionsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::MapsengineV1::ListPermissionsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_table_permissions(id, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          command =  make_simple_command(:get, 'tables/{id}/permissions', options)
          command.response_representation = Google::Apis::MapsengineV1::ListPermissionsResponse::Representation
          command.response_class = Google::Apis::MapsengineV1::ListPermissionsResponse
          command.params['id'] = id unless id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end

        protected

        def apply_command_defaults(command)
          command.query['key'] = key unless key.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
        end
      end
    end
  end
end
