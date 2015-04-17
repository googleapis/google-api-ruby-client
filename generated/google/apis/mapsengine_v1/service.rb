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
        # @param [Google::Api::RequestOptions] options
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
          path = 'assets/{id}'
          command =  make_simple_command(:get, path, options)
          command.response_representation = Google::Apis::MapsengineV1::AssetRepresentation
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
        # @param [Google::Api::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::MapsengineV1::AssetsListResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::MapsengineV1::AssetsListResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_assets(bbox: nil, created_after: nil, created_before: nil, creator_email: nil, max_results: nil, modified_after: nil, modified_before: nil, page_token: nil, project_id: nil, role: nil, search: nil, tags: nil, type: nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = 'assets'
          command =  make_simple_command(:get, path, options)
          command.response_representation = Google::Apis::MapsengineV1::AssetsListResponseRepresentation
          command.response_class = Google::Apis::MapsengineV1::AssetsListResponse
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
        # @param [Google::Api::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::MapsengineV1::ParentsListResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::MapsengineV1::ParentsListResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_asset_parents(id, max_results: nil, page_token: nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = 'assets/{id}/parents'
          command =  make_simple_command(:get, path, options)
          command.response_representation = Google::Apis::MapsengineV1::ParentsListResponseRepresentation
          command.response_class = Google::Apis::MapsengineV1::ParentsListResponse
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
        # @param [Google::Api::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::MapsengineV1::PermissionsListResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::MapsengineV1::PermissionsListResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_asset_permissions(id, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = 'assets/{id}/permissions'
          command =  make_simple_command(:get, path, options)
          command.response_representation = Google::Apis::MapsengineV1::PermissionsListResponseRepresentation
          command.response_class = Google::Apis::MapsengineV1::PermissionsListResponse
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
        # @param [Google::Api::RequestOptions] options
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
        def cancel_processing(id, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = 'layers/{id}/cancelProcessing'
          command =  make_simple_command(:post, path, options)
          command.response_representation = Google::Apis::MapsengineV1::ProcessResponseRepresentation
          command.response_class = Google::Apis::MapsengineV1::ProcessResponse
          command.params['id'] = id unless id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        
        # Create a layer asset.
        # @param [Google::Apis::MapsengineV1::Layer] layer_obj
        #   
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
        # @param [Google::Api::RequestOptions] options
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
        def create_layer(layer_obj, process: nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = 'layers'
          command =  make_simple_command(:post, path, options)
          command.request_representation = Google::Apis::MapsengineV1::LayerRepresentation
          command.request_object = layer_obj
          command.response_representation = Google::Apis::MapsengineV1::LayerRepresentation
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
        # @param [Google::Api::RequestOptions] options
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
          path = 'layers/{id}'
          command =  make_simple_command(:delete, path, options)
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
        # @param [Google::Api::RequestOptions] options
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
          path = 'layers/{id}'
          command =  make_simple_command(:get, path, options)
          command.response_representation = Google::Apis::MapsengineV1::LayerRepresentation
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
        # @param [Google::Api::RequestOptions] options
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
        def get_published(id, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = 'layers/{id}/published'
          command =  make_simple_command(:get, path, options)
          command.response_representation = Google::Apis::MapsengineV1::PublishedLayerRepresentation
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
        #   
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
        # @param [Google::Api::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::MapsengineV1::LayersListResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::MapsengineV1::LayersListResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_layers(bbox: nil, created_after: nil, created_before: nil, creator_email: nil, max_results: nil, modified_after: nil, modified_before: nil, page_token: nil, processing_status: nil, project_id: nil, role: nil, search: nil, tags: nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = 'layers'
          command =  make_simple_command(:get, path, options)
          command.response_representation = Google::Apis::MapsengineV1::LayersListResponseRepresentation
          command.response_class = Google::Apis::MapsengineV1::LayersListResponse
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
        # @param [Google::Api::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::MapsengineV1::PublishedLayersListResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::MapsengineV1::PublishedLayersListResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_published(max_results: nil, page_token: nil, project_id: nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = 'layers/published'
          command =  make_simple_command(:get, path, options)
          command.response_representation = Google::Apis::MapsengineV1::PublishedLayersListResponseRepresentation
          command.response_class = Google::Apis::MapsengineV1::PublishedLayersListResponse
          command.query['maxResults'] = max_results unless max_results.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['projectId'] = project_id unless project_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        
        # Mutate a layer asset.
        # @param [Google::Apis::MapsengineV1::Layer] layer_obj
        #   
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
        # @param [Google::Api::RequestOptions] options
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
        def patch_layer(layer_obj, id, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = 'layers/{id}'
          command =  make_simple_command(:patch, path, options)
          command.request_representation = Google::Apis::MapsengineV1::LayerRepresentation
          command.request_object = layer_obj
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
        # @param [Google::Api::RequestOptions] options
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
          path = 'layers/{id}/process'
          command =  make_simple_command(:post, path, options)
          command.response_representation = Google::Apis::MapsengineV1::ProcessResponseRepresentation
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
        # @param [Google::Api::RequestOptions] options
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
          path = 'layers/{id}/publish'
          command =  make_simple_command(:post, path, options)
          command.response_representation = Google::Apis::MapsengineV1::PublishResponseRepresentation
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
        # @param [Google::Api::RequestOptions] options
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
          path = 'layers/{id}/unpublish'
          command =  make_simple_command(:post, path, options)
          command.response_representation = Google::Apis::MapsengineV1::PublishResponseRepresentation
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
        # @param [Google::Api::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::MapsengineV1::ParentsListResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::MapsengineV1::ParentsListResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_layer_parents(id, max_results: nil, page_token: nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = 'layers/{id}/parents'
          command =  make_simple_command(:get, path, options)
          command.response_representation = Google::Apis::MapsengineV1::ParentsListResponseRepresentation
          command.response_class = Google::Apis::MapsengineV1::ParentsListResponse
          command.params['id'] = id unless id.nil?
          command.query['maxResults'] = max_results unless max_results.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        
        
        # Remove permission entries from an already existing asset.
        # @param [Google::Apis::MapsengineV1::PermissionsBatchDeleteRequest] permissions_batch_delete_request_obj
        #   
        # @param [String] id
        #   The ID of the asset from which permissions will be removed.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Api::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::MapsengineV1::PermissionsBatchDeleteResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::MapsengineV1::PermissionsBatchDeleteResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def batch_delete(permissions_batch_delete_request_obj, id, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = 'layers/{id}/permissions/batchDelete'
          command =  make_simple_command(:post, path, options)
          command.request_representation = Google::Apis::MapsengineV1::PermissionsBatchDeleteRequestRepresentation
          command.request_object = permissions_batch_delete_request_obj
          command.response_representation = Google::Apis::MapsengineV1::PermissionsBatchDeleteResponseRepresentation
          command.response_class = Google::Apis::MapsengineV1::PermissionsBatchDeleteResponse
          command.params['id'] = id unless id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        
        # Add or update permission entries to an already existing asset.
        # An asset can hold up to 20 different permission entries. Each batchInsert
        # request is atomic.
        # @param [Google::Apis::MapsengineV1::PermissionsBatchUpdateRequest] permissions_batch_update_request_obj
        #   
        # @param [String] id
        #   The ID of the asset to which permissions will be added.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Api::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::MapsengineV1::PermissionsBatchUpdateResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::MapsengineV1::PermissionsBatchUpdateResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def batch_update(permissions_batch_update_request_obj, id, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = 'layers/{id}/permissions/batchUpdate'
          command =  make_simple_command(:post, path, options)
          command.request_representation = Google::Apis::MapsengineV1::PermissionsBatchUpdateRequestRepresentation
          command.request_object = permissions_batch_update_request_obj
          command.response_representation = Google::Apis::MapsengineV1::PermissionsBatchUpdateResponseRepresentation
          command.response_class = Google::Apis::MapsengineV1::PermissionsBatchUpdateResponse
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
        # @param [Google::Api::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::MapsengineV1::PermissionsListResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::MapsengineV1::PermissionsListResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_layer_permissions(id, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = 'layers/{id}/permissions'
          command =  make_simple_command(:get, path, options)
          command.response_representation = Google::Apis::MapsengineV1::PermissionsListResponseRepresentation
          command.response_class = Google::Apis::MapsengineV1::PermissionsListResponse
          command.params['id'] = id unless id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end

        # Create a map asset.
        # @param [Google::Apis::MapsengineV1::Map] map_obj
        #   
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Api::RequestOptions] options
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
        def create_map(map_obj, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = 'maps'
          command =  make_simple_command(:post, path, options)
          command.request_representation = Google::Apis::MapsengineV1::MapRepresentation
          command.request_object = map_obj
          command.response_representation = Google::Apis::MapsengineV1::MapRepresentation
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
        # @param [Google::Api::RequestOptions] options
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
          path = 'maps/{id}'
          command =  make_simple_command(:delete, path, options)
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
        # @param [Google::Api::RequestOptions] options
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
          path = 'maps/{id}'
          command =  make_simple_command(:get, path, options)
          command.response_representation = Google::Apis::MapsengineV1::MapRepresentation
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
        # @param [Google::Api::RequestOptions] options
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
        def get_published(id, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = 'maps/{id}/published'
          command =  make_simple_command(:get, path, options)
          command.response_representation = Google::Apis::MapsengineV1::PublishedMapRepresentation
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
        #   
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
        # @param [Google::Api::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::MapsengineV1::MapsListResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::MapsengineV1::MapsListResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_maps(bbox: nil, created_after: nil, created_before: nil, creator_email: nil, max_results: nil, modified_after: nil, modified_before: nil, page_token: nil, processing_status: nil, project_id: nil, role: nil, search: nil, tags: nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = 'maps'
          command =  make_simple_command(:get, path, options)
          command.response_representation = Google::Apis::MapsengineV1::MapsListResponseRepresentation
          command.response_class = Google::Apis::MapsengineV1::MapsListResponse
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
        # @param [Google::Api::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::MapsengineV1::PublishedMapsListResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::MapsengineV1::PublishedMapsListResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_published(max_results: nil, page_token: nil, project_id: nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = 'maps/published'
          command =  make_simple_command(:get, path, options)
          command.response_representation = Google::Apis::MapsengineV1::PublishedMapsListResponseRepresentation
          command.response_class = Google::Apis::MapsengineV1::PublishedMapsListResponse
          command.query['maxResults'] = max_results unless max_results.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['projectId'] = project_id unless project_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        
        # Mutate a map asset.
        # @param [Google::Apis::MapsengineV1::Map] map_obj
        #   
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
        # @param [Google::Api::RequestOptions] options
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
        def patch_map(map_obj, id, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = 'maps/{id}'
          command =  make_simple_command(:patch, path, options)
          command.request_representation = Google::Apis::MapsengineV1::MapRepresentation
          command.request_object = map_obj
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
        # @param [Google::Api::RequestOptions] options
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
          path = 'maps/{id}/publish'
          command =  make_simple_command(:post, path, options)
          command.response_representation = Google::Apis::MapsengineV1::PublishResponseRepresentation
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
        # @param [Google::Api::RequestOptions] options
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
          path = 'maps/{id}/unpublish'
          command =  make_simple_command(:post, path, options)
          command.response_representation = Google::Apis::MapsengineV1::PublishResponseRepresentation
          command.response_class = Google::Apis::MapsengineV1::PublishResponse
          command.params['id'] = id unless id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        
        # Remove permission entries from an already existing asset.
        # @param [Google::Apis::MapsengineV1::PermissionsBatchDeleteRequest] permissions_batch_delete_request_obj
        #   
        # @param [String] id
        #   The ID of the asset from which permissions will be removed.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Api::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::MapsengineV1::PermissionsBatchDeleteResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::MapsengineV1::PermissionsBatchDeleteResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def batch_delete(permissions_batch_delete_request_obj, id, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = 'maps/{id}/permissions/batchDelete'
          command =  make_simple_command(:post, path, options)
          command.request_representation = Google::Apis::MapsengineV1::PermissionsBatchDeleteRequestRepresentation
          command.request_object = permissions_batch_delete_request_obj
          command.response_representation = Google::Apis::MapsengineV1::PermissionsBatchDeleteResponseRepresentation
          command.response_class = Google::Apis::MapsengineV1::PermissionsBatchDeleteResponse
          command.params['id'] = id unless id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        
        # Add or update permission entries to an already existing asset.
        # An asset can hold up to 20 different permission entries. Each batchInsert
        # request is atomic.
        # @param [Google::Apis::MapsengineV1::PermissionsBatchUpdateRequest] permissions_batch_update_request_obj
        #   
        # @param [String] id
        #   The ID of the asset to which permissions will be added.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Api::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::MapsengineV1::PermissionsBatchUpdateResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::MapsengineV1::PermissionsBatchUpdateResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def batch_update(permissions_batch_update_request_obj, id, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = 'maps/{id}/permissions/batchUpdate'
          command =  make_simple_command(:post, path, options)
          command.request_representation = Google::Apis::MapsengineV1::PermissionsBatchUpdateRequestRepresentation
          command.request_object = permissions_batch_update_request_obj
          command.response_representation = Google::Apis::MapsengineV1::PermissionsBatchUpdateResponseRepresentation
          command.response_class = Google::Apis::MapsengineV1::PermissionsBatchUpdateResponse
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
        # @param [Google::Api::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::MapsengineV1::PermissionsListResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::MapsengineV1::PermissionsListResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_map_permissions(id, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = 'maps/{id}/permissions'
          command =  make_simple_command(:get, path, options)
          command.response_representation = Google::Apis::MapsengineV1::PermissionsListResponseRepresentation
          command.response_class = Google::Apis::MapsengineV1::PermissionsListResponse
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
        # @param [Google::Api::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::MapsengineV1::ProjectsListResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::MapsengineV1::ProjectsListResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_projects(fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = 'projects'
          command =  make_simple_command(:get, path, options)
          command.response_representation = Google::Apis::MapsengineV1::ProjectsListResponseRepresentation
          command.response_class = Google::Apis::MapsengineV1::ProjectsListResponse
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        
        # Create an icon.
        # @param [Google::Apis::MapsengineV1::Icon] icon_obj
        #   
        # @param [String] project_id
        #   The ID of the project.
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
        # @param [Google::Api::RequestOptions] options
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
        def create_project_icon(icon_obj, project_id, fields: nil, quota_user: nil, user_ip: nil, upload_source: nil, content_type: nil, options: nil, &block)
          path = 'projects/{projectId}/icons'
          if upload_source.nil?
            command =  make_simple_command(:post, path, options)
          else
            command = make_upload_command(:post, path, options)
            command.upload_source = upload_source
            command.upload_content_type = content_type
          end
          command.request_representation = Google::Apis::MapsengineV1::IconRepresentation
          command.request_object = icon_obj
          command.response_representation = Google::Apis::MapsengineV1::IconRepresentation
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
        # @param [Google::Api::RequestOptions] options
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
          path = 'projects/{projectId}/icons/{id}'
          if download_dest.nil?
            command =  make_simple_command(:get, path, options)
          else
            command = make_download_command(:get, path, options)
            command.download_dest = download_dest
          end
          command.response_representation = Google::Apis::MapsengineV1::IconRepresentation
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
        # @param [Google::Api::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::MapsengineV1::IconsListResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::MapsengineV1::IconsListResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_icons(project_id, max_results: nil, page_token: nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = 'projects/{projectId}/icons'
          command =  make_simple_command(:get, path, options)
          command.response_representation = Google::Apis::MapsengineV1::IconsListResponseRepresentation
          command.response_class = Google::Apis::MapsengineV1::IconsListResponse
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
        # @param [Google::Api::RequestOptions] options
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
        def cancel_processing(id, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = 'rasterCollections/{id}/cancelProcessing'
          command =  make_simple_command(:post, path, options)
          command.response_representation = Google::Apis::MapsengineV1::ProcessResponseRepresentation
          command.response_class = Google::Apis::MapsengineV1::ProcessResponse
          command.params['id'] = id unless id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        
        # Create a raster collection asset.
        # @param [Google::Apis::MapsengineV1::RasterCollection] raster_collection_obj
        #   
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Api::RequestOptions] options
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
        def create_raster_collection(raster_collection_obj, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = 'rasterCollections'
          command =  make_simple_command(:post, path, options)
          command.request_representation = Google::Apis::MapsengineV1::RasterCollectionRepresentation
          command.request_object = raster_collection_obj
          command.response_representation = Google::Apis::MapsengineV1::RasterCollectionRepresentation
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
        # @param [Google::Api::RequestOptions] options
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
          path = 'rasterCollections/{id}'
          command =  make_simple_command(:delete, path, options)
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
        # @param [Google::Api::RequestOptions] options
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
          path = 'rasterCollections/{id}'
          command =  make_simple_command(:get, path, options)
          command.response_representation = Google::Apis::MapsengineV1::RasterCollectionRepresentation
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
        #   
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
        # @param [Google::Api::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::MapsengineV1::RasterCollectionsListResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::MapsengineV1::RasterCollectionsListResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_raster_collections(bbox: nil, created_after: nil, created_before: nil, creator_email: nil, max_results: nil, modified_after: nil, modified_before: nil, page_token: nil, processing_status: nil, project_id: nil, role: nil, search: nil, tags: nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = 'rasterCollections'
          command =  make_simple_command(:get, path, options)
          command.response_representation = Google::Apis::MapsengineV1::RasterCollectionsListResponseRepresentation
          command.response_class = Google::Apis::MapsengineV1::RasterCollectionsListResponse
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
        # @param [Google::Apis::MapsengineV1::RasterCollection] raster_collection_obj
        #   
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
        # @param [Google::Api::RequestOptions] options
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
        def patch_raster_collection(raster_collection_obj, id, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = 'rasterCollections/{id}'
          command =  make_simple_command(:patch, path, options)
          command.request_representation = Google::Apis::MapsengineV1::RasterCollectionRepresentation
          command.request_object = raster_collection_obj
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
        # @param [Google::Api::RequestOptions] options
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
          path = 'rasterCollections/{id}/process'
          command =  make_simple_command(:post, path, options)
          command.response_representation = Google::Apis::MapsengineV1::ProcessResponseRepresentation
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
        # @param [Google::Api::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::MapsengineV1::ParentsListResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::MapsengineV1::ParentsListResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_raster_collection_parents(id, max_results: nil, page_token: nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = 'rasterCollections/{id}/parents'
          command =  make_simple_command(:get, path, options)
          command.response_representation = Google::Apis::MapsengineV1::ParentsListResponseRepresentation
          command.response_class = Google::Apis::MapsengineV1::ParentsListResponse
          command.params['id'] = id unless id.nil?
          command.query['maxResults'] = max_results unless max_results.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        
        
        # Remove permission entries from an already existing asset.
        # @param [Google::Apis::MapsengineV1::PermissionsBatchDeleteRequest] permissions_batch_delete_request_obj
        #   
        # @param [String] id
        #   The ID of the asset from which permissions will be removed.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Api::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::MapsengineV1::PermissionsBatchDeleteResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::MapsengineV1::PermissionsBatchDeleteResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def batch_delete(permissions_batch_delete_request_obj, id, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = 'rasterCollections/{id}/permissions/batchDelete'
          command =  make_simple_command(:post, path, options)
          command.request_representation = Google::Apis::MapsengineV1::PermissionsBatchDeleteRequestRepresentation
          command.request_object = permissions_batch_delete_request_obj
          command.response_representation = Google::Apis::MapsengineV1::PermissionsBatchDeleteResponseRepresentation
          command.response_class = Google::Apis::MapsengineV1::PermissionsBatchDeleteResponse
          command.params['id'] = id unless id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        
        # Add or update permission entries to an already existing asset.
        # An asset can hold up to 20 different permission entries. Each batchInsert
        # request is atomic.
        # @param [Google::Apis::MapsengineV1::PermissionsBatchUpdateRequest] permissions_batch_update_request_obj
        #   
        # @param [String] id
        #   The ID of the asset to which permissions will be added.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Api::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::MapsengineV1::PermissionsBatchUpdateResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::MapsengineV1::PermissionsBatchUpdateResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def batch_update(permissions_batch_update_request_obj, id, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = 'rasterCollections/{id}/permissions/batchUpdate'
          command =  make_simple_command(:post, path, options)
          command.request_representation = Google::Apis::MapsengineV1::PermissionsBatchUpdateRequestRepresentation
          command.request_object = permissions_batch_update_request_obj
          command.response_representation = Google::Apis::MapsengineV1::PermissionsBatchUpdateResponseRepresentation
          command.response_class = Google::Apis::MapsengineV1::PermissionsBatchUpdateResponse
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
        # @param [Google::Api::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::MapsengineV1::PermissionsListResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::MapsengineV1::PermissionsListResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_raster_collection_permissions(id, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = 'rasterCollections/{id}/permissions'
          command =  make_simple_command(:get, path, options)
          command.response_representation = Google::Apis::MapsengineV1::PermissionsListResponseRepresentation
          command.response_class = Google::Apis::MapsengineV1::PermissionsListResponse
          command.params['id'] = id unless id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        
        
        # Remove rasters from an existing raster collection.
        # Up to 50 rasters can be included in a single batchDelete request. Each
        # batchDelete request is atomic.
        # @param [Google::Apis::MapsengineV1::RasterCollectionsRasterBatchDeleteRequest] raster_collections_raster_batch_delete_request_obj
        #   
        # @param [String] id
        #   The ID of the raster collection to which these rasters belong.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Api::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::MapsengineV1::RasterCollectionsRastersBatchDeleteResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::MapsengineV1::RasterCollectionsRastersBatchDeleteResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def batch_delete(raster_collections_raster_batch_delete_request_obj, id, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = 'rasterCollections/{id}/rasters/batchDelete'
          command =  make_simple_command(:post, path, options)
          command.request_representation = Google::Apis::MapsengineV1::RasterCollectionsRasterBatchDeleteRequestRepresentation
          command.request_object = raster_collections_raster_batch_delete_request_obj
          command.response_representation = Google::Apis::MapsengineV1::RasterCollectionsRastersBatchDeleteResponseRepresentation
          command.response_class = Google::Apis::MapsengineV1::RasterCollectionsRastersBatchDeleteResponse
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
        # @param [Google::Apis::MapsengineV1::RasterCollectionsRastersBatchInsertRequest] raster_collections_rasters_batch_insert_request_obj
        #   
        # @param [String] id
        #   The ID of the raster collection to which these rasters belong.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Api::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::MapsengineV1::RasterCollectionsRastersBatchInsertResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::MapsengineV1::RasterCollectionsRastersBatchInsertResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def batch_insert(raster_collections_rasters_batch_insert_request_obj, id, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = 'rasterCollections/{id}/rasters/batchInsert'
          command =  make_simple_command(:post, path, options)
          command.request_representation = Google::Apis::MapsengineV1::RasterCollectionsRastersBatchInsertRequestRepresentation
          command.request_object = raster_collections_rasters_batch_insert_request_obj
          command.response_representation = Google::Apis::MapsengineV1::RasterCollectionsRastersBatchInsertResponseRepresentation
          command.response_class = Google::Apis::MapsengineV1::RasterCollectionsRastersBatchInsertResponse
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
        # @param [Google::Api::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::MapsengineV1::RasterCollectionsRastersListResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::MapsengineV1::RasterCollectionsRastersListResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_raster_collection_rasters(id, bbox: nil, created_after: nil, created_before: nil, creator_email: nil, max_results: nil, modified_after: nil, modified_before: nil, page_token: nil, role: nil, search: nil, tags: nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = 'rasterCollections/{id}/rasters'
          command =  make_simple_command(:get, path, options)
          command.response_representation = Google::Apis::MapsengineV1::RasterCollectionsRastersListResponseRepresentation
          command.response_class = Google::Apis::MapsengineV1::RasterCollectionsRastersListResponse
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
        # @param [Google::Api::RequestOptions] options
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
          path = 'rasters/{id}'
          command =  make_simple_command(:delete, path, options)
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
        # @param [Google::Api::RequestOptions] options
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
          path = 'rasters/{id}'
          command =  make_simple_command(:get, path, options)
          command.response_representation = Google::Apis::MapsengineV1::RasterRepresentation
          command.response_class = Google::Apis::MapsengineV1::Raster
          command.params['id'] = id unless id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        
        # Return all rasters readable by the current user.
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
        #   
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
        # @param [Google::Api::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::MapsengineV1::RastersListResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::MapsengineV1::RastersListResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_rasters(bbox: nil, created_after: nil, created_before: nil, creator_email: nil, max_results: nil, modified_after: nil, modified_before: nil, page_token: nil, processing_status: nil, project_id: nil, role: nil, search: nil, tags: nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = 'rasters'
          command =  make_simple_command(:get, path, options)
          command.response_representation = Google::Apis::MapsengineV1::RastersListResponseRepresentation
          command.response_class = Google::Apis::MapsengineV1::RastersListResponse
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
        # @param [Google::Apis::MapsengineV1::Raster] raster_obj
        #   
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
        # @param [Google::Api::RequestOptions] options
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
        def patch_raster(raster_obj, id, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = 'rasters/{id}'
          command =  make_simple_command(:patch, path, options)
          command.request_representation = Google::Apis::MapsengineV1::RasterRepresentation
          command.request_object = raster_obj
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
        # @param [Google::Api::RequestOptions] options
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
          path = 'rasters/{id}/process'
          command =  make_simple_command(:post, path, options)
          command.response_representation = Google::Apis::MapsengineV1::ProcessResponseRepresentation
          command.response_class = Google::Apis::MapsengineV1::ProcessResponse
          command.params['id'] = id unless id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        
        # Create a skeleton raster asset for upload.
        # @param [Google::Apis::MapsengineV1::Raster] raster_obj
        #   
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Api::RequestOptions] options
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
        def upload_raster(raster_obj, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = 'rasters/upload'
          command =  make_simple_command(:post, path, options)
          command.request_representation = Google::Apis::MapsengineV1::RasterRepresentation
          command.request_object = raster_obj
          command.response_representation = Google::Apis::MapsengineV1::RasterRepresentation
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
        # @param [Google::Api::RequestOptions] options
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
        def insert_raster_file(id, filename: nil, fields: nil, quota_user: nil, user_ip: nil, upload_source: nil, content_type: nil, options: nil, &block)
          path = 'rasters/{id}/files'
          if upload_source.nil?
            command =  make_simple_command(:post, path, options)
          else
            command = make_upload_command(:post, path, options)
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
        # @param [Google::Api::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::MapsengineV1::ParentsListResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::MapsengineV1::ParentsListResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_raster_parents(id, max_results: nil, page_token: nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = 'rasters/{id}/parents'
          command =  make_simple_command(:get, path, options)
          command.response_representation = Google::Apis::MapsengineV1::ParentsListResponseRepresentation
          command.response_class = Google::Apis::MapsengineV1::ParentsListResponse
          command.params['id'] = id unless id.nil?
          command.query['maxResults'] = max_results unless max_results.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        
        
        # Remove permission entries from an already existing asset.
        # @param [Google::Apis::MapsengineV1::PermissionsBatchDeleteRequest] permissions_batch_delete_request_obj
        #   
        # @param [String] id
        #   The ID of the asset from which permissions will be removed.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Api::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::MapsengineV1::PermissionsBatchDeleteResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::MapsengineV1::PermissionsBatchDeleteResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def batch_delete(permissions_batch_delete_request_obj, id, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = 'rasters/{id}/permissions/batchDelete'
          command =  make_simple_command(:post, path, options)
          command.request_representation = Google::Apis::MapsengineV1::PermissionsBatchDeleteRequestRepresentation
          command.request_object = permissions_batch_delete_request_obj
          command.response_representation = Google::Apis::MapsengineV1::PermissionsBatchDeleteResponseRepresentation
          command.response_class = Google::Apis::MapsengineV1::PermissionsBatchDeleteResponse
          command.params['id'] = id unless id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        
        # Add or update permission entries to an already existing asset.
        # An asset can hold up to 20 different permission entries. Each batchInsert
        # request is atomic.
        # @param [Google::Apis::MapsengineV1::PermissionsBatchUpdateRequest] permissions_batch_update_request_obj
        #   
        # @param [String] id
        #   The ID of the asset to which permissions will be added.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Api::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::MapsengineV1::PermissionsBatchUpdateResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::MapsengineV1::PermissionsBatchUpdateResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def batch_update(permissions_batch_update_request_obj, id, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = 'rasters/{id}/permissions/batchUpdate'
          command =  make_simple_command(:post, path, options)
          command.request_representation = Google::Apis::MapsengineV1::PermissionsBatchUpdateRequestRepresentation
          command.request_object = permissions_batch_update_request_obj
          command.response_representation = Google::Apis::MapsengineV1::PermissionsBatchUpdateResponseRepresentation
          command.response_class = Google::Apis::MapsengineV1::PermissionsBatchUpdateResponse
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
        # @param [Google::Api::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::MapsengineV1::PermissionsListResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::MapsengineV1::PermissionsListResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_raster_permissions(id, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = 'rasters/{id}/permissions'
          command =  make_simple_command(:get, path, options)
          command.response_representation = Google::Apis::MapsengineV1::PermissionsListResponseRepresentation
          command.response_class = Google::Apis::MapsengineV1::PermissionsListResponse
          command.params['id'] = id unless id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end

        # Create a table asset.
        # @param [Google::Apis::MapsengineV1::Table] table_obj
        #   
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Api::RequestOptions] options
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
        def create_table(table_obj, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = 'tables'
          command =  make_simple_command(:post, path, options)
          command.request_representation = Google::Apis::MapsengineV1::TableRepresentation
          command.request_object = table_obj
          command.response_representation = Google::Apis::MapsengineV1::TableRepresentation
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
        # @param [Google::Api::RequestOptions] options
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
          path = 'tables/{id}'
          command =  make_simple_command(:delete, path, options)
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
        #   
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Api::RequestOptions] options
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
          path = 'tables/{id}'
          command =  make_simple_command(:get, path, options)
          command.response_representation = Google::Apis::MapsengineV1::TableRepresentation
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
        #   
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
        # @param [Google::Api::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::MapsengineV1::TablesListResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::MapsengineV1::TablesListResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_tables(bbox: nil, created_after: nil, created_before: nil, creator_email: nil, max_results: nil, modified_after: nil, modified_before: nil, page_token: nil, processing_status: nil, project_id: nil, role: nil, search: nil, tags: nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = 'tables'
          command =  make_simple_command(:get, path, options)
          command.response_representation = Google::Apis::MapsengineV1::TablesListResponseRepresentation
          command.response_class = Google::Apis::MapsengineV1::TablesListResponse
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
        # @param [Google::Apis::MapsengineV1::Table] table_obj
        #   
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
        # @param [Google::Api::RequestOptions] options
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
        def patch_table(table_obj, id, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = 'tables/{id}'
          command =  make_simple_command(:patch, path, options)
          command.request_representation = Google::Apis::MapsengineV1::TableRepresentation
          command.request_object = table_obj
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
        # @param [Google::Api::RequestOptions] options
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
          path = 'tables/{id}/process'
          command =  make_simple_command(:post, path, options)
          command.response_representation = Google::Apis::MapsengineV1::ProcessResponseRepresentation
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
        # @param [Google::Apis::MapsengineV1::Table] table_obj
        #   
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Api::RequestOptions] options
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
        def upload_table(table_obj, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = 'tables/upload'
          command =  make_simple_command(:post, path, options)
          command.request_representation = Google::Apis::MapsengineV1::TableRepresentation
          command.request_object = table_obj
          command.response_representation = Google::Apis::MapsengineV1::TableRepresentation
          command.response_class = Google::Apis::MapsengineV1::Table
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        
        # Delete all features matching the given IDs.
        # @param [Google::Apis::MapsengineV1::FeaturesBatchDeleteRequest] features_batch_delete_request_obj
        #   
        # @param [String] id
        #   The ID of the table that contains the features to be deleted.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Api::RequestOptions] options
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
        def batch_delete(features_batch_delete_request_obj, id, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = 'tables/{id}/features/batchDelete'
          command =  make_simple_command(:post, path, options)
          command.request_representation = Google::Apis::MapsengineV1::FeaturesBatchDeleteRequestRepresentation
          command.request_object = features_batch_delete_request_obj
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
        # @param [Google::Apis::MapsengineV1::FeaturesBatchInsertRequest] features_batch_insert_request_obj
        #   
        # @param [String] id
        #   The ID of the table to append the features to.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Api::RequestOptions] options
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
        def batch_insert(features_batch_insert_request_obj, id, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = 'tables/{id}/features/batchInsert'
          command =  make_simple_command(:post, path, options)
          command.request_representation = Google::Apis::MapsengineV1::FeaturesBatchInsertRequestRepresentation
          command.request_object = features_batch_insert_request_obj
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
        # @param [Google::Apis::MapsengineV1::FeaturesBatchPatchRequest] features_batch_patch_request_obj
        #   
        # @param [String] id
        #   The ID of the table containing the features to be patched.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Api::RequestOptions] options
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
        def batch_patch(features_batch_patch_request_obj, id, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = 'tables/{id}/features/batchPatch'
          command =  make_simple_command(:post, path, options)
          command.request_representation = Google::Apis::MapsengineV1::FeaturesBatchPatchRequestRepresentation
          command.request_object = features_batch_patch_request_obj
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
        # @param [Google::Api::RequestOptions] options
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
          path = 'tables/{tableId}/features/{id}'
          command =  make_simple_command(:get, path, options)
          command.response_representation = Google::Apis::MapsengineV1::FeatureRepresentation
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
        # @param [Google::Api::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::MapsengineV1::FeaturesListResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::MapsengineV1::FeaturesListResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_table_features(id, include: nil, intersects: nil, limit: nil, max_results: nil, order_by: nil, page_token: nil, select: nil, version: nil, where: nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = 'tables/{id}/features'
          command =  make_simple_command(:get, path, options)
          command.response_representation = Google::Apis::MapsengineV1::FeaturesListResponseRepresentation
          command.response_class = Google::Apis::MapsengineV1::FeaturesListResponse
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
        # @param [Google::Api::RequestOptions] options
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
        def insert_table_file(id, filename: nil, fields: nil, quota_user: nil, user_ip: nil, upload_source: nil, content_type: nil, options: nil, &block)
          path = 'tables/{id}/files'
          if upload_source.nil?
            command =  make_simple_command(:post, path, options)
          else
            command = make_upload_command(:post, path, options)
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
        # @param [Google::Api::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::MapsengineV1::ParentsListResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::MapsengineV1::ParentsListResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_table_parents(id, max_results: nil, page_token: nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = 'tables/{id}/parents'
          command =  make_simple_command(:get, path, options)
          command.response_representation = Google::Apis::MapsengineV1::ParentsListResponseRepresentation
          command.response_class = Google::Apis::MapsengineV1::ParentsListResponse
          command.params['id'] = id unless id.nil?
          command.query['maxResults'] = max_results unless max_results.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        
        
        # Remove permission entries from an already existing asset.
        # @param [Google::Apis::MapsengineV1::PermissionsBatchDeleteRequest] permissions_batch_delete_request_obj
        #   
        # @param [String] id
        #   The ID of the asset from which permissions will be removed.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Api::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::MapsengineV1::PermissionsBatchDeleteResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::MapsengineV1::PermissionsBatchDeleteResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def batch_delete(permissions_batch_delete_request_obj, id, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = 'tables/{id}/permissions/batchDelete'
          command =  make_simple_command(:post, path, options)
          command.request_representation = Google::Apis::MapsengineV1::PermissionsBatchDeleteRequestRepresentation
          command.request_object = permissions_batch_delete_request_obj
          command.response_representation = Google::Apis::MapsengineV1::PermissionsBatchDeleteResponseRepresentation
          command.response_class = Google::Apis::MapsengineV1::PermissionsBatchDeleteResponse
          command.params['id'] = id unless id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        
        # Add or update permission entries to an already existing asset.
        # An asset can hold up to 20 different permission entries. Each batchInsert
        # request is atomic.
        # @param [Google::Apis::MapsengineV1::PermissionsBatchUpdateRequest] permissions_batch_update_request_obj
        #   
        # @param [String] id
        #   The ID of the asset to which permissions will be added.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Api::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::MapsengineV1::PermissionsBatchUpdateResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::MapsengineV1::PermissionsBatchUpdateResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def batch_update(permissions_batch_update_request_obj, id, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = 'tables/{id}/permissions/batchUpdate'
          command =  make_simple_command(:post, path, options)
          command.request_representation = Google::Apis::MapsengineV1::PermissionsBatchUpdateRequestRepresentation
          command.request_object = permissions_batch_update_request_obj
          command.response_representation = Google::Apis::MapsengineV1::PermissionsBatchUpdateResponseRepresentation
          command.response_class = Google::Apis::MapsengineV1::PermissionsBatchUpdateResponse
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
        # @param [Google::Api::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::MapsengineV1::PermissionsListResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::MapsengineV1::PermissionsListResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_table_permissions(id, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = 'tables/{id}/permissions'
          command =  make_simple_command(:get, path, options)
          command.response_representation = Google::Apis::MapsengineV1::PermissionsListResponseRepresentation
          command.response_class = Google::Apis::MapsengineV1::PermissionsListResponse
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
