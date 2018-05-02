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
    module ResourceviewsV1beta2
      # Google Compute Engine Instance Groups API
      #
      # The Resource View API allows users to create and manage logical sets of Google
      #  Compute Engine instances.
      #
      # @example
      #    require 'google/apis/resourceviews_v1beta2'
      #
      #    Resourceviews = Google::Apis::ResourceviewsV1beta2 # Alias the module
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
          super('https://www.googleapis.com/', 'resourceviews/v1beta2/projects/')
          @batch_path = 'batch/resourceviews/v1beta2'
        end
        
        # Retrieves the specified zone-specific operation resource.
        # @param [String] project
        #   Name of the project scoping this request.
        # @param [String] zone
        #   Name of the zone scoping this request.
        # @param [String] operation
        #   Name of the operation resource to return.
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
        # @yieldparam result [Google::Apis::ResourceviewsV1beta2::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ResourceviewsV1beta2::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_zone_operation(project, zone, operation, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          command =  make_simple_command(:get, '{project}/zones/{zone}/operations/{operation}', options)
          command.response_representation = Google::Apis::ResourceviewsV1beta2::Operation::Representation
          command.response_class = Google::Apis::ResourceviewsV1beta2::Operation
          command.params['project'] = project unless project.nil?
          command.params['zone'] = zone unless zone.nil?
          command.params['operation'] = operation unless operation.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Retrieves the list of operation resources contained within the specified zone.
        # @param [String] project
        #   Name of the project scoping this request.
        # @param [String] zone
        #   Name of the zone scoping this request.
        # @param [String] filter
        #   Optional. Filter expression for filtering listed resources.
        # @param [Fixnum] max_results
        #   Optional. Maximum count of results to be returned. Maximum value is 500 and
        #   default value is 500.
        # @param [String] page_token
        #   Optional. Tag returned by a previous list request truncated by maxResults.
        #   Used to continue a previous list request.
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
        # @yieldparam result [Google::Apis::ResourceviewsV1beta2::OperationList] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ResourceviewsV1beta2::OperationList]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_zone_operations(project, zone, filter: nil, max_results: nil, page_token: nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          command =  make_simple_command(:get, '{project}/zones/{zone}/operations', options)
          command.response_representation = Google::Apis::ResourceviewsV1beta2::OperationList::Representation
          command.response_class = Google::Apis::ResourceviewsV1beta2::OperationList
          command.params['project'] = project unless project.nil?
          command.params['zone'] = zone unless zone.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['maxResults'] = max_results unless max_results.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Add resources to the view.
        # @param [String] project
        #   The project name of the resource view.
        # @param [String] zone
        #   The zone name of the resource view.
        # @param [String] resource_view
        #   The name of the resource view.
        # @param [Google::Apis::ResourceviewsV1beta2::AddResourcesRequest] add_resources_request_object
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
        # @yieldparam result [Google::Apis::ResourceviewsV1beta2::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ResourceviewsV1beta2::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def add_zone_view_resources(project, zone, resource_view, add_resources_request_object = nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          command =  make_simple_command(:post, '{project}/zones/{zone}/resourceViews/{resourceView}/addResources', options)
          command.request_representation = Google::Apis::ResourceviewsV1beta2::AddResourcesRequest::Representation
          command.request_object = add_resources_request_object
          command.response_representation = Google::Apis::ResourceviewsV1beta2::Operation::Representation
          command.response_class = Google::Apis::ResourceviewsV1beta2::Operation
          command.params['project'] = project unless project.nil?
          command.params['zone'] = zone unless zone.nil?
          command.params['resourceView'] = resource_view unless resource_view.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Delete a resource view.
        # @param [String] project
        #   The project name of the resource view.
        # @param [String] zone
        #   The zone name of the resource view.
        # @param [String] resource_view
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
        # @yieldparam result [Google::Apis::ResourceviewsV1beta2::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ResourceviewsV1beta2::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_zone_view(project, zone, resource_view, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          command =  make_simple_command(:delete, '{project}/zones/{zone}/resourceViews/{resourceView}', options)
          command.response_representation = Google::Apis::ResourceviewsV1beta2::Operation::Representation
          command.response_class = Google::Apis::ResourceviewsV1beta2::Operation
          command.params['project'] = project unless project.nil?
          command.params['zone'] = zone unless zone.nil?
          command.params['resourceView'] = resource_view unless resource_view.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Get the information of a zonal resource view.
        # @param [String] project
        #   The project name of the resource view.
        # @param [String] zone
        #   The zone name of the resource view.
        # @param [String] resource_view
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
        # @yieldparam result [Google::Apis::ResourceviewsV1beta2::ResourceView] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ResourceviewsV1beta2::ResourceView]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_zone_view(project, zone, resource_view, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          command =  make_simple_command(:get, '{project}/zones/{zone}/resourceViews/{resourceView}', options)
          command.response_representation = Google::Apis::ResourceviewsV1beta2::ResourceView::Representation
          command.response_class = Google::Apis::ResourceviewsV1beta2::ResourceView
          command.params['project'] = project unless project.nil?
          command.params['zone'] = zone unless zone.nil?
          command.params['resourceView'] = resource_view unless resource_view.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Get the service information of a resource view or a resource.
        # @param [String] project
        #   The project name of the resource view.
        # @param [String] zone
        #   The zone name of the resource view.
        # @param [String] resource_view
        #   The name of the resource view.
        # @param [String] resource_name
        #   The name of the resource if user wants to get the service information of the
        #   resource.
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
        # @yieldparam result [Google::Apis::ResourceviewsV1beta2::GetServiceResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ResourceviewsV1beta2::GetServiceResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_zone_view_service(project, zone, resource_view, resource_name: nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          command =  make_simple_command(:post, '{project}/zones/{zone}/resourceViews/{resourceView}/getService', options)
          command.response_representation = Google::Apis::ResourceviewsV1beta2::GetServiceResponse::Representation
          command.response_class = Google::Apis::ResourceviewsV1beta2::GetServiceResponse
          command.params['project'] = project unless project.nil?
          command.params['zone'] = zone unless zone.nil?
          command.params['resourceView'] = resource_view unless resource_view.nil?
          command.query['resourceName'] = resource_name unless resource_name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Create a resource view.
        # @param [String] project
        #   The project name of the resource view.
        # @param [String] zone
        #   The zone name of the resource view.
        # @param [Google::Apis::ResourceviewsV1beta2::ResourceView] resource_view_object
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
        # @yieldparam result [Google::Apis::ResourceviewsV1beta2::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ResourceviewsV1beta2::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def insert_zone_view(project, zone, resource_view_object = nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          command =  make_simple_command(:post, '{project}/zones/{zone}/resourceViews', options)
          command.request_representation = Google::Apis::ResourceviewsV1beta2::ResourceView::Representation
          command.request_object = resource_view_object
          command.response_representation = Google::Apis::ResourceviewsV1beta2::Operation::Representation
          command.response_class = Google::Apis::ResourceviewsV1beta2::Operation
          command.params['project'] = project unless project.nil?
          command.params['zone'] = zone unless zone.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # List resource views.
        # @param [String] project
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
        # @yieldparam result [Google::Apis::ResourceviewsV1beta2::ZoneViewsList] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ResourceviewsV1beta2::ZoneViewsList]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_zone_views(project, zone, max_results: nil, page_token: nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          command =  make_simple_command(:get, '{project}/zones/{zone}/resourceViews', options)
          command.response_representation = Google::Apis::ResourceviewsV1beta2::ZoneViewsList::Representation
          command.response_class = Google::Apis::ResourceviewsV1beta2::ZoneViewsList
          command.params['project'] = project unless project.nil?
          command.params['zone'] = zone unless zone.nil?
          command.query['maxResults'] = max_results unless max_results.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # List the resources of the resource view.
        # @param [String] project
        #   The project name of the resource view.
        # @param [String] zone
        #   The zone name of the resource view.
        # @param [String] resource_view
        #   The name of the resource view.
        # @param [String] format
        #   The requested format of the return value. It can be URL or URL_PORT. A JSON
        #   object will be included in the response based on the format. The default
        #   format is NONE, which results in no JSON in the response.
        # @param [String] list_state
        #   The state of the instance to list. By default, it lists all instances.
        # @param [Fixnum] max_results
        #   Maximum count of results to be returned. Acceptable values are 0 to 5000,
        #   inclusive. (Default: 5000)
        # @param [String] page_token
        #   Specifies a nextPageToken returned by a previous list request. This token can
        #   be used to request the next page of results from a previous list request.
        # @param [String] service_name
        #   The service name to return in the response. It is optional and if it is not
        #   set, all the service end points will be returned.
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
        # @yieldparam result [Google::Apis::ResourceviewsV1beta2::ListResourcesResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ResourceviewsV1beta2::ListResourcesResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_zone_view_resources(project, zone, resource_view, format: nil, list_state: nil, max_results: nil, page_token: nil, service_name: nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          command =  make_simple_command(:get, '{project}/zones/{zone}/resourceViews/{resourceView}/resources', options)
          command.response_representation = Google::Apis::ResourceviewsV1beta2::ListResourcesResponse::Representation
          command.response_class = Google::Apis::ResourceviewsV1beta2::ListResourcesResponse
          command.params['project'] = project unless project.nil?
          command.params['zone'] = zone unless zone.nil?
          command.params['resourceView'] = resource_view unless resource_view.nil?
          command.query['format'] = format unless format.nil?
          command.query['listState'] = list_state unless list_state.nil?
          command.query['maxResults'] = max_results unless max_results.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['serviceName'] = service_name unless service_name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Remove resources from the view.
        # @param [String] project
        #   The project name of the resource view.
        # @param [String] zone
        #   The zone name of the resource view.
        # @param [String] resource_view
        #   The name of the resource view.
        # @param [Google::Apis::ResourceviewsV1beta2::RemoveResourcesRequest] remove_resources_request_object
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
        # @yieldparam result [Google::Apis::ResourceviewsV1beta2::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ResourceviewsV1beta2::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def remove_zone_view_resources(project, zone, resource_view, remove_resources_request_object = nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          command =  make_simple_command(:post, '{project}/zones/{zone}/resourceViews/{resourceView}/removeResources', options)
          command.request_representation = Google::Apis::ResourceviewsV1beta2::RemoveResourcesRequest::Representation
          command.request_object = remove_resources_request_object
          command.response_representation = Google::Apis::ResourceviewsV1beta2::Operation::Representation
          command.response_class = Google::Apis::ResourceviewsV1beta2::Operation
          command.params['project'] = project unless project.nil?
          command.params['zone'] = zone unless zone.nil?
          command.params['resourceView'] = resource_view unless resource_view.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Update the service information of a resource view or a resource.
        # @param [String] project
        #   The project name of the resource view.
        # @param [String] zone
        #   The zone name of the resource view.
        # @param [String] resource_view
        #   The name of the resource view.
        # @param [Google::Apis::ResourceviewsV1beta2::SetServiceRequest] set_service_request_object
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
        # @yieldparam result [Google::Apis::ResourceviewsV1beta2::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ResourceviewsV1beta2::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def set_zone_view_service(project, zone, resource_view, set_service_request_object = nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          command =  make_simple_command(:post, '{project}/zones/{zone}/resourceViews/{resourceView}/setService', options)
          command.request_representation = Google::Apis::ResourceviewsV1beta2::SetServiceRequest::Representation
          command.request_object = set_service_request_object
          command.response_representation = Google::Apis::ResourceviewsV1beta2::Operation::Representation
          command.response_class = Google::Apis::ResourceviewsV1beta2::Operation
          command.params['project'] = project unless project.nil?
          command.params['zone'] = zone unless zone.nil?
          command.params['resourceView'] = resource_view unless resource_view.nil?
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
