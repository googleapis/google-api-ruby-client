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
    module ResourceviewsV1beta1
      # Resource Views API
      #
      # The Resource View API allows users to create and manage logical sets of Google
      #  Compute Engine instances.
      #
      # @example
      #    require 'google/apis/resourceviews_v1beta1'
      #
      #    Resourceviews = Google::Apis::ResourceviewsV1beta1 # Alias the module
      #    service = Resourceviews::ResourceviewsService.new
      #
      # @see https://developers.google.com/compute/
      class ResourceviewsService < Google::Apis::Core::BaseService
        # @return [String]
        #  API key. Your API key identifies your project and provides you with API access,
        #  quota, and reports. Required unless you provide an OAuth 2.0 token.
        attr_accessor :key

        # @return [String]
        #  An opaque string that represents a user for quota purposes. Must not exceed 40
        #  characters.
        attr_accessor :quota_user

        # @return [String]
        #  Deprecated. Please use quotaUser instead.
        attr_accessor :user_ip

        def initialize
          super('https://www.googleapis.com/', 'resourceviews/v1beta1/projects/')
          @batch_path = 'batch/resourceviews/v1beta1'
        end
        
        # Add resources to the view.
        # @param [String] project_name
        #   The project name of the resource view.
        # @param [String] region
        #   The region name of the resource view.
        # @param [String] resource_view_name
        #   The name of the resource view.
        # @param [Google::Apis::ResourceviewsV1beta1::RegionViewsAddResourcesRequest] region_views_add_resources_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   An opaque string that represents a user for quota purposes. Must not exceed 40
        #   characters.
        # @param [String] user_ip
        #   Deprecated. Please use quotaUser instead.
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
        def addresources_region_view(project_name, region, resource_view_name, region_views_add_resources_request_object = nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          command =  make_simple_command(:post, '{projectName}/regions/{region}/resourceViews/{resourceViewName}/addResources', options)
          command.request_representation = Google::Apis::ResourceviewsV1beta1::RegionViewsAddResourcesRequest::Representation
          command.request_object = region_views_add_resources_request_object
          command.params['projectName'] = project_name unless project_name.nil?
          command.params['region'] = region unless region.nil?
          command.params['resourceViewName'] = resource_view_name unless resource_view_name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Delete a resource view.
        # @param [String] project_name
        #   The project name of the resource view.
        # @param [String] region
        #   The region name of the resource view.
        # @param [String] resource_view_name
        #   The name of the resource view.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   An opaque string that represents a user for quota purposes. Must not exceed 40
        #   characters.
        # @param [String] user_ip
        #   Deprecated. Please use quotaUser instead.
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
        def delete_region_view(project_name, region, resource_view_name, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          command =  make_simple_command(:delete, '{projectName}/regions/{region}/resourceViews/{resourceViewName}', options)
          command.params['projectName'] = project_name unless project_name.nil?
          command.params['region'] = region unless region.nil?
          command.params['resourceViewName'] = resource_view_name unless resource_view_name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Get the information of a resource view.
        # @param [String] project_name
        #   The project name of the resource view.
        # @param [String] region
        #   The region name of the resource view.
        # @param [String] resource_view_name
        #   The name of the resource view.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   An opaque string that represents a user for quota purposes. Must not exceed 40
        #   characters.
        # @param [String] user_ip
        #   Deprecated. Please use quotaUser instead.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ResourceviewsV1beta1::ResourceView] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ResourceviewsV1beta1::ResourceView]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_region_view(project_name, region, resource_view_name, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          command =  make_simple_command(:get, '{projectName}/regions/{region}/resourceViews/{resourceViewName}', options)
          command.response_representation = Google::Apis::ResourceviewsV1beta1::ResourceView::Representation
          command.response_class = Google::Apis::ResourceviewsV1beta1::ResourceView
          command.params['projectName'] = project_name unless project_name.nil?
          command.params['region'] = region unless region.nil?
          command.params['resourceViewName'] = resource_view_name unless resource_view_name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Create a resource view.
        # @param [String] project_name
        #   The project name of the resource view.
        # @param [String] region
        #   The region name of the resource view.
        # @param [Google::Apis::ResourceviewsV1beta1::ResourceView] resource_view_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   An opaque string that represents a user for quota purposes. Must not exceed 40
        #   characters.
        # @param [String] user_ip
        #   Deprecated. Please use quotaUser instead.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ResourceviewsV1beta1::RegionViewsInsertResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ResourceviewsV1beta1::RegionViewsInsertResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def insert_region_view(project_name, region, resource_view_object = nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          command =  make_simple_command(:post, '{projectName}/regions/{region}/resourceViews', options)
          command.request_representation = Google::Apis::ResourceviewsV1beta1::ResourceView::Representation
          command.request_object = resource_view_object
          command.response_representation = Google::Apis::ResourceviewsV1beta1::RegionViewsInsertResponse::Representation
          command.response_class = Google::Apis::ResourceviewsV1beta1::RegionViewsInsertResponse
          command.params['projectName'] = project_name unless project_name.nil?
          command.params['region'] = region unless region.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # List resource views.
        # @param [String] project_name
        #   The project name of the resource view.
        # @param [String] region
        #   The region name of the resource view.
        # @param [Fixnum] max_results
        #   Maximum count of results to be returned. Acceptable values are 0 to 5000,
        #   inclusive. (Default: 5000)
        # @param [String] page_token
        #   Specifies a nextPageToken returned by a previous list request. This token can
        #   be used to request the next page of results from a previous list request.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   An opaque string that represents a user for quota purposes. Must not exceed 40
        #   characters.
        # @param [String] user_ip
        #   Deprecated. Please use quotaUser instead.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ResourceviewsV1beta1::RegionViewsListResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ResourceviewsV1beta1::RegionViewsListResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_region_views(project_name, region, max_results: nil, page_token: nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          command =  make_simple_command(:get, '{projectName}/regions/{region}/resourceViews', options)
          command.response_representation = Google::Apis::ResourceviewsV1beta1::RegionViewsListResponse::Representation
          command.response_class = Google::Apis::ResourceviewsV1beta1::RegionViewsListResponse
          command.params['projectName'] = project_name unless project_name.nil?
          command.params['region'] = region unless region.nil?
          command.query['maxResults'] = max_results unless max_results.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # List the resources in the view.
        # @param [String] project_name
        #   The project name of the resource view.
        # @param [String] region
        #   The region name of the resource view.
        # @param [String] resource_view_name
        #   The name of the resource view.
        # @param [Fixnum] max_results
        #   Maximum count of results to be returned. Acceptable values are 0 to 5000,
        #   inclusive. (Default: 5000)
        # @param [String] page_token
        #   Specifies a nextPageToken returned by a previous list request. This token can
        #   be used to request the next page of results from a previous list request.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   An opaque string that represents a user for quota purposes. Must not exceed 40
        #   characters.
        # @param [String] user_ip
        #   Deprecated. Please use quotaUser instead.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ResourceviewsV1beta1::RegionViewsListResourcesResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ResourceviewsV1beta1::RegionViewsListResourcesResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def listresources_region_view(project_name, region, resource_view_name, max_results: nil, page_token: nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          command =  make_simple_command(:post, '{projectName}/regions/{region}/resourceViews/{resourceViewName}/resources', options)
          command.response_representation = Google::Apis::ResourceviewsV1beta1::RegionViewsListResourcesResponse::Representation
          command.response_class = Google::Apis::ResourceviewsV1beta1::RegionViewsListResourcesResponse
          command.params['projectName'] = project_name unless project_name.nil?
          command.params['region'] = region unless region.nil?
          command.params['resourceViewName'] = resource_view_name unless resource_view_name.nil?
          command.query['maxResults'] = max_results unless max_results.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Remove resources from the view.
        # @param [String] project_name
        #   The project name of the resource view.
        # @param [String] region
        #   The region name of the resource view.
        # @param [String] resource_view_name
        #   The name of the resource view.
        # @param [Google::Apis::ResourceviewsV1beta1::RegionViewsRemoveResourcesRequest] region_views_remove_resources_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   An opaque string that represents a user for quota purposes. Must not exceed 40
        #   characters.
        # @param [String] user_ip
        #   Deprecated. Please use quotaUser instead.
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
        def removeresources_region_view(project_name, region, resource_view_name, region_views_remove_resources_request_object = nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          command =  make_simple_command(:post, '{projectName}/regions/{region}/resourceViews/{resourceViewName}/removeResources', options)
          command.request_representation = Google::Apis::ResourceviewsV1beta1::RegionViewsRemoveResourcesRequest::Representation
          command.request_object = region_views_remove_resources_request_object
          command.params['projectName'] = project_name unless project_name.nil?
          command.params['region'] = region unless region.nil?
          command.params['resourceViewName'] = resource_view_name unless resource_view_name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Add resources to the view.
        # @param [String] project_name
        #   The project name of the resource view.
        # @param [String] zone
        #   The zone name of the resource view.
        # @param [String] resource_view_name
        #   The name of the resource view.
        # @param [Google::Apis::ResourceviewsV1beta1::ZoneViewsAddResourcesRequest] zone_views_add_resources_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   An opaque string that represents a user for quota purposes. Must not exceed 40
        #   characters.
        # @param [String] user_ip
        #   Deprecated. Please use quotaUser instead.
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
        def addresources_zone_view(project_name, zone, resource_view_name, zone_views_add_resources_request_object = nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          command =  make_simple_command(:post, '{projectName}/zones/{zone}/resourceViews/{resourceViewName}/addResources', options)
          command.request_representation = Google::Apis::ResourceviewsV1beta1::ZoneViewsAddResourcesRequest::Representation
          command.request_object = zone_views_add_resources_request_object
          command.params['projectName'] = project_name unless project_name.nil?
          command.params['zone'] = zone unless zone.nil?
          command.params['resourceViewName'] = resource_view_name unless resource_view_name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Delete a resource view.
        # @param [String] project_name
        #   The project name of the resource view.
        # @param [String] zone
        #   The zone name of the resource view.
        # @param [String] resource_view_name
        #   The name of the resource view.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   An opaque string that represents a user for quota purposes. Must not exceed 40
        #   characters.
        # @param [String] user_ip
        #   Deprecated. Please use quotaUser instead.
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
        def delete_zone_view(project_name, zone, resource_view_name, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          command =  make_simple_command(:delete, '{projectName}/zones/{zone}/resourceViews/{resourceViewName}', options)
          command.params['projectName'] = project_name unless project_name.nil?
          command.params['zone'] = zone unless zone.nil?
          command.params['resourceViewName'] = resource_view_name unless resource_view_name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Get the information of a zonal resource view.
        # @param [String] project_name
        #   The project name of the resource view.
        # @param [String] zone
        #   The zone name of the resource view.
        # @param [String] resource_view_name
        #   The name of the resource view.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   An opaque string that represents a user for quota purposes. Must not exceed 40
        #   characters.
        # @param [String] user_ip
        #   Deprecated. Please use quotaUser instead.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ResourceviewsV1beta1::ResourceView] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ResourceviewsV1beta1::ResourceView]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_zone_view(project_name, zone, resource_view_name, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          command =  make_simple_command(:get, '{projectName}/zones/{zone}/resourceViews/{resourceViewName}', options)
          command.response_representation = Google::Apis::ResourceviewsV1beta1::ResourceView::Representation
          command.response_class = Google::Apis::ResourceviewsV1beta1::ResourceView
          command.params['projectName'] = project_name unless project_name.nil?
          command.params['zone'] = zone unless zone.nil?
          command.params['resourceViewName'] = resource_view_name unless resource_view_name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Create a resource view.
        # @param [String] project_name
        #   The project name of the resource view.
        # @param [String] zone
        #   The zone name of the resource view.
        # @param [Google::Apis::ResourceviewsV1beta1::ResourceView] resource_view_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   An opaque string that represents a user for quota purposes. Must not exceed 40
        #   characters.
        # @param [String] user_ip
        #   Deprecated. Please use quotaUser instead.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ResourceviewsV1beta1::ZoneViewsInsertResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ResourceviewsV1beta1::ZoneViewsInsertResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def insert_zone_view(project_name, zone, resource_view_object = nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          command =  make_simple_command(:post, '{projectName}/zones/{zone}/resourceViews', options)
          command.request_representation = Google::Apis::ResourceviewsV1beta1::ResourceView::Representation
          command.request_object = resource_view_object
          command.response_representation = Google::Apis::ResourceviewsV1beta1::ZoneViewsInsertResponse::Representation
          command.response_class = Google::Apis::ResourceviewsV1beta1::ZoneViewsInsertResponse
          command.params['projectName'] = project_name unless project_name.nil?
          command.params['zone'] = zone unless zone.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # List resource views.
        # @param [String] project_name
        #   The project name of the resource view.
        # @param [String] zone
        #   The zone name of the resource view.
        # @param [Fixnum] max_results
        #   Maximum count of results to be returned. Acceptable values are 0 to 5000,
        #   inclusive. (Default: 5000)
        # @param [String] page_token
        #   Specifies a nextPageToken returned by a previous list request. This token can
        #   be used to request the next page of results from a previous list request.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   An opaque string that represents a user for quota purposes. Must not exceed 40
        #   characters.
        # @param [String] user_ip
        #   Deprecated. Please use quotaUser instead.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ResourceviewsV1beta1::ZoneViewsListResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ResourceviewsV1beta1::ZoneViewsListResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_zone_views(project_name, zone, max_results: nil, page_token: nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          command =  make_simple_command(:get, '{projectName}/zones/{zone}/resourceViews', options)
          command.response_representation = Google::Apis::ResourceviewsV1beta1::ZoneViewsListResponse::Representation
          command.response_class = Google::Apis::ResourceviewsV1beta1::ZoneViewsListResponse
          command.params['projectName'] = project_name unless project_name.nil?
          command.params['zone'] = zone unless zone.nil?
          command.query['maxResults'] = max_results unless max_results.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # List the resources of the resource view.
        # @param [String] project_name
        #   The project name of the resource view.
        # @param [String] zone
        #   The zone name of the resource view.
        # @param [String] resource_view_name
        #   The name of the resource view.
        # @param [Fixnum] max_results
        #   Maximum count of results to be returned. Acceptable values are 0 to 5000,
        #   inclusive. (Default: 5000)
        # @param [String] page_token
        #   Specifies a nextPageToken returned by a previous list request. This token can
        #   be used to request the next page of results from a previous list request.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   An opaque string that represents a user for quota purposes. Must not exceed 40
        #   characters.
        # @param [String] user_ip
        #   Deprecated. Please use quotaUser instead.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ResourceviewsV1beta1::ZoneViewsListResourcesResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ResourceviewsV1beta1::ZoneViewsListResourcesResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def listresources_zone_view(project_name, zone, resource_view_name, max_results: nil, page_token: nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          command =  make_simple_command(:post, '{projectName}/zones/{zone}/resourceViews/{resourceViewName}/resources', options)
          command.response_representation = Google::Apis::ResourceviewsV1beta1::ZoneViewsListResourcesResponse::Representation
          command.response_class = Google::Apis::ResourceviewsV1beta1::ZoneViewsListResourcesResponse
          command.params['projectName'] = project_name unless project_name.nil?
          command.params['zone'] = zone unless zone.nil?
          command.params['resourceViewName'] = resource_view_name unless resource_view_name.nil?
          command.query['maxResults'] = max_results unless max_results.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Remove resources from the view.
        # @param [String] project_name
        #   The project name of the resource view.
        # @param [String] zone
        #   The zone name of the resource view.
        # @param [String] resource_view_name
        #   The name of the resource view.
        # @param [Google::Apis::ResourceviewsV1beta1::ZoneViewsRemoveResourcesRequest] zone_views_remove_resources_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   An opaque string that represents a user for quota purposes. Must not exceed 40
        #   characters.
        # @param [String] user_ip
        #   Deprecated. Please use quotaUser instead.
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
        def removeresources_zone_view(project_name, zone, resource_view_name, zone_views_remove_resources_request_object = nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          command =  make_simple_command(:post, '{projectName}/zones/{zone}/resourceViews/{resourceViewName}/removeResources', options)
          command.request_representation = Google::Apis::ResourceviewsV1beta1::ZoneViewsRemoveResourcesRequest::Representation
          command.request_object = zone_views_remove_resources_request_object
          command.params['projectName'] = project_name unless project_name.nil?
          command.params['zone'] = zone unless zone.nil?
          command.params['resourceViewName'] = resource_view_name unless resource_view_name.nil?
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
