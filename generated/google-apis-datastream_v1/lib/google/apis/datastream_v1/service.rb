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
    module DatastreamV1
      # Datastream API
      #
      # 
      #
      # @example
      #    require 'google/apis/datastream_v1'
      #
      #    Datastream = Google::Apis::DatastreamV1 # Alias the module
      #    service = Datastream::DatastreamService.new
      #
      # @see https://cloud.google.com/datastream/
      class DatastreamService < Google::Apis::Core::BaseService
        # @return [String]
        #  API key. Your API key identifies your project and provides you with API access,
        #  quota, and reports. Required unless you provide an OAuth 2.0 token.
        attr_accessor :key

        # @return [String]
        #  Available to use for quota purposes for server-side applications. Can be any
        #  arbitrary string assigned to a user, but should not exceed 40 characters.
        attr_accessor :quota_user

        def initialize
          super('https://datastream.googleapis.com/', '',
                client_name: 'google-apis-datastream_v1',
                client_version: Google::Apis::DatastreamV1::GEM_VERSION)
          @batch_path = 'batch'
        end
        
        # The FetchStaticIps API call exposes the static IP addresses used by Datastream.
        # @param [String] name
        #   Required. The resource name for the location for which static IPs should be
        #   returned. Must be in the format `projects/*/locations/*`.
        # @param [Fixnum] page_size
        #   Maximum number of Ips to return, will likely not be specified.
        # @param [String] page_token
        #   A page token, received from a previous `ListStaticIps` call. will likely not
        #   be specified.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DatastreamV1::FetchStaticIpsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DatastreamV1::FetchStaticIpsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def fetch_project_location_static_ips(name, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}:fetchStaticIps', options)
          command.response_representation = Google::Apis::DatastreamV1::FetchStaticIpsResponse::Representation
          command.response_class = Google::Apis::DatastreamV1::FetchStaticIpsResponse
          command.params['name'] = name unless name.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
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
        # @yieldparam result [Google::Apis::DatastreamV1::Location] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DatastreamV1::Location]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}', options)
          command.response_representation = Google::Apis::DatastreamV1::Location::Representation
          command.response_class = Google::Apis::DatastreamV1::Location
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
        # @yieldparam result [Google::Apis::DatastreamV1::ListLocationsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DatastreamV1::ListLocationsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_locations(name, filter: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}/locations', options)
          command.response_representation = Google::Apis::DatastreamV1::ListLocationsResponse::Representation
          command.response_class = Google::Apis::DatastreamV1::ListLocationsResponse
          command.params['name'] = name unless name.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Use this method to create a connection profile in a project and location.
        # @param [String] parent
        #   Required. The parent that owns the collection of ConnectionProfiles.
        # @param [Google::Apis::DatastreamV1::ConnectionProfile] connection_profile_object
        # @param [String] connection_profile_id
        #   Required. The connection profile identifier.
        # @param [Boolean] force
        #   Optional. Create the connection profile without validating it.
        # @param [String] request_id
        #   Optional. A request ID to identify requests. Specify a unique request ID so
        #   that if you must retry your request, the server will know to ignore the
        #   request if it has already been completed. The server will guarantee that for
        #   at least 60 minutes since the first request. For example, consider a situation
        #   where you make an initial request and the request times out. If you make the
        #   request again with the same request ID, the server can check if original
        #   operation with the same request ID was received, and if so, will ignore the
        #   second request. This prevents clients from accidentally creating duplicate
        #   commitments. The request ID must be a valid UUID with the exception that zero
        #   UUID is not supported (00000000-0000-0000-0000-000000000000).
        # @param [Boolean] validate_only
        #   Optional. Only validate the connection profile, but don't create any resources.
        #   The default is false.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DatastreamV1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DatastreamV1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_location_connection_profile(parent, connection_profile_object = nil, connection_profile_id: nil, force: nil, request_id: nil, validate_only: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+parent}/connectionProfiles', options)
          command.request_representation = Google::Apis::DatastreamV1::ConnectionProfile::Representation
          command.request_object = connection_profile_object
          command.response_representation = Google::Apis::DatastreamV1::Operation::Representation
          command.response_class = Google::Apis::DatastreamV1::Operation
          command.params['parent'] = parent unless parent.nil?
          command.query['connectionProfileId'] = connection_profile_id unless connection_profile_id.nil?
          command.query['force'] = force unless force.nil?
          command.query['requestId'] = request_id unless request_id.nil?
          command.query['validateOnly'] = validate_only unless validate_only.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Use this method to delete a connection profile.
        # @param [String] name
        #   Required. The name of the connection profile resource to delete.
        # @param [String] request_id
        #   Optional. A request ID to identify requests. Specify a unique request ID so
        #   that if you must retry your request, the server will know to ignore the
        #   request if it has already been completed. The server will guarantee that for
        #   at least 60 minutes after the first request. For example, consider a situation
        #   where you make an initial request and the request times out. If you make the
        #   request again with the same request ID, the server can check if original
        #   operation with the same request ID was received, and if so, will ignore the
        #   second request. This prevents clients from accidentally creating duplicate
        #   commitments. The request ID must be a valid UUID with the exception that zero
        #   UUID is not supported (00000000-0000-0000-0000-000000000000).
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DatastreamV1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DatastreamV1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_location_connection_profile(name, request_id: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1/{+name}', options)
          command.response_representation = Google::Apis::DatastreamV1::Operation::Representation
          command.response_class = Google::Apis::DatastreamV1::Operation
          command.params['name'] = name unless name.nil?
          command.query['requestId'] = request_id unless request_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Use this method to discover a connection profile. The discover API call
        # exposes the data objects and metadata belonging to the profile. Typically, a
        # request returns children data objects of a parent data object that's
        # optionally supplied in the request.
        # @param [String] parent
        #   Required. The parent resource of the connection profile type. Must be in the
        #   format `projects/*/locations/*`.
        # @param [Google::Apis::DatastreamV1::DiscoverConnectionProfileRequest] discover_connection_profile_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DatastreamV1::DiscoverConnectionProfileResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DatastreamV1::DiscoverConnectionProfileResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def discover_connection_profile(parent, discover_connection_profile_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+parent}/connectionProfiles:discover', options)
          command.request_representation = Google::Apis::DatastreamV1::DiscoverConnectionProfileRequest::Representation
          command.request_object = discover_connection_profile_request_object
          command.response_representation = Google::Apis::DatastreamV1::DiscoverConnectionProfileResponse::Representation
          command.response_class = Google::Apis::DatastreamV1::DiscoverConnectionProfileResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Use this method to get details about a connection profile.
        # @param [String] name
        #   Required. The name of the connection profile resource to get.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DatastreamV1::ConnectionProfile] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DatastreamV1::ConnectionProfile]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_connection_profile(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}', options)
          command.response_representation = Google::Apis::DatastreamV1::ConnectionProfile::Representation
          command.response_class = Google::Apis::DatastreamV1::ConnectionProfile
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Use this method to list connection profiles created in a project and location.
        # @param [String] parent
        #   Required. The parent that owns the collection of connection profiles.
        # @param [String] filter
        #   Filter request.
        # @param [String] order_by
        #   Order by fields for the result.
        # @param [Fixnum] page_size
        #   Maximum number of connection profiles to return. If unspecified, at most 50
        #   connection profiles will be returned. The maximum value is 1000; values above
        #   1000 will be coerced to 1000.
        # @param [String] page_token
        #   Page token received from a previous `ListConnectionProfiles` call. Provide
        #   this to retrieve the subsequent page. When paginating, all other parameters
        #   provided to `ListConnectionProfiles` must match the call that provided the
        #   page token.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DatastreamV1::ListConnectionProfilesResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DatastreamV1::ListConnectionProfilesResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_connection_profiles(parent, filter: nil, order_by: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+parent}/connectionProfiles', options)
          command.response_representation = Google::Apis::DatastreamV1::ListConnectionProfilesResponse::Representation
          command.response_class = Google::Apis::DatastreamV1::ListConnectionProfilesResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['orderBy'] = order_by unless order_by.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Use this method to update the parameters of a connection profile.
        # @param [String] name
        #   Output only. The resource's name.
        # @param [Google::Apis::DatastreamV1::ConnectionProfile] connection_profile_object
        # @param [Boolean] force
        #   Optional. Update the connection profile without validating it.
        # @param [String] request_id
        #   Optional. A request ID to identify requests. Specify a unique request ID so
        #   that if you must retry your request, the server will know to ignore the
        #   request if it has already been completed. The server will guarantee that for
        #   at least 60 minutes since the first request. For example, consider a situation
        #   where you make an initial request and the request times out. If you make the
        #   request again with the same request ID, the server can check if original
        #   operation with the same request ID was received, and if so, will ignore the
        #   second request. This prevents clients from accidentally creating duplicate
        #   commitments. The request ID must be a valid UUID with the exception that zero
        #   UUID is not supported (00000000-0000-0000-0000-000000000000).
        # @param [String] update_mask
        #   Optional. Field mask is used to specify the fields to be overwritten in the
        #   ConnectionProfile resource by the update. The fields specified in the
        #   update_mask are relative to the resource, not the full request. A field will
        #   be overwritten if it is in the mask. If the user does not provide a mask then
        #   all fields will be overwritten.
        # @param [Boolean] validate_only
        #   Optional. Only validate the connection profile, but don't update any resources.
        #   The default is false.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DatastreamV1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DatastreamV1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_project_location_connection_profile(name, connection_profile_object = nil, force: nil, request_id: nil, update_mask: nil, validate_only: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v1/{+name}', options)
          command.request_representation = Google::Apis::DatastreamV1::ConnectionProfile::Representation
          command.request_object = connection_profile_object
          command.response_representation = Google::Apis::DatastreamV1::Operation::Representation
          command.response_class = Google::Apis::DatastreamV1::Operation
          command.params['name'] = name unless name.nil?
          command.query['force'] = force unless force.nil?
          command.query['requestId'] = request_id unless request_id.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['validateOnly'] = validate_only unless validate_only.nil?
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
        # @param [Google::Apis::DatastreamV1::CancelOperationRequest] cancel_operation_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DatastreamV1::Empty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DatastreamV1::Empty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def cancel_operation(name, cancel_operation_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+name}:cancel', options)
          command.request_representation = Google::Apis::DatastreamV1::CancelOperationRequest::Representation
          command.request_object = cancel_operation_request_object
          command.response_representation = Google::Apis::DatastreamV1::Empty::Representation
          command.response_class = Google::Apis::DatastreamV1::Empty
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
        # @yieldparam result [Google::Apis::DatastreamV1::Empty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DatastreamV1::Empty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_location_operation(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1/{+name}', options)
          command.response_representation = Google::Apis::DatastreamV1::Empty::Representation
          command.response_class = Google::Apis::DatastreamV1::Empty
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
        # @yieldparam result [Google::Apis::DatastreamV1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DatastreamV1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_operation(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}', options)
          command.response_representation = Google::Apis::DatastreamV1::Operation::Representation
          command.response_class = Google::Apis::DatastreamV1::Operation
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
        # @yieldparam result [Google::Apis::DatastreamV1::ListOperationsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DatastreamV1::ListOperationsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_operations(name, filter: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}/operations', options)
          command.response_representation = Google::Apis::DatastreamV1::ListOperationsResponse::Representation
          command.response_class = Google::Apis::DatastreamV1::ListOperationsResponse
          command.params['name'] = name unless name.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Use this method to create a private connectivity configuration.
        # @param [String] parent
        #   Required. The parent that owns the collection of PrivateConnections.
        # @param [Google::Apis::DatastreamV1::PrivateConnection] private_connection_object
        # @param [Boolean] force
        #   Optional. If set to true, will skip validations.
        # @param [String] private_connection_id
        #   Required. The private connectivity identifier.
        # @param [String] request_id
        #   Optional. A request ID to identify requests. Specify a unique request ID so
        #   that if you must retry your request, the server will know to ignore the
        #   request if it has already been completed. The server will guarantee that for
        #   at least 60 minutes since the first request. For example, consider a situation
        #   where you make an initial request and the request times out. If you make the
        #   request again with the same request ID, the server can check if original
        #   operation with the same request ID was received, and if so, will ignore the
        #   second request. This prevents clients from accidentally creating duplicate
        #   commitments. The request ID must be a valid UUID with the exception that zero
        #   UUID is not supported (00000000-0000-0000-0000-000000000000).
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DatastreamV1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DatastreamV1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_location_private_connection(parent, private_connection_object = nil, force: nil, private_connection_id: nil, request_id: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+parent}/privateConnections', options)
          command.request_representation = Google::Apis::DatastreamV1::PrivateConnection::Representation
          command.request_object = private_connection_object
          command.response_representation = Google::Apis::DatastreamV1::Operation::Representation
          command.response_class = Google::Apis::DatastreamV1::Operation
          command.params['parent'] = parent unless parent.nil?
          command.query['force'] = force unless force.nil?
          command.query['privateConnectionId'] = private_connection_id unless private_connection_id.nil?
          command.query['requestId'] = request_id unless request_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Use this method to delete a private connectivity configuration.
        # @param [String] name
        #   Required. The name of the private connectivity configuration to delete.
        # @param [Boolean] force
        #   Optional. If set to true, any child routes that belong to this
        #   PrivateConnection will also be deleted.
        # @param [String] request_id
        #   Optional. A request ID to identify requests. Specify a unique request ID so
        #   that if you must retry your request, the server will know to ignore the
        #   request if it has already been completed. The server will guarantee that for
        #   at least 60 minutes after the first request. For example, consider a situation
        #   where you make an initial request and the request times out. If you make the
        #   request again with the same request ID, the server can check if original
        #   operation with the same request ID was received, and if so, will ignore the
        #   second request. This prevents clients from accidentally creating duplicate
        #   commitments. The request ID must be a valid UUID with the exception that zero
        #   UUID is not supported (00000000-0000-0000-0000-000000000000).
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DatastreamV1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DatastreamV1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_location_private_connection(name, force: nil, request_id: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1/{+name}', options)
          command.response_representation = Google::Apis::DatastreamV1::Operation::Representation
          command.response_class = Google::Apis::DatastreamV1::Operation
          command.params['name'] = name unless name.nil?
          command.query['force'] = force unless force.nil?
          command.query['requestId'] = request_id unless request_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Use this method to get details about a private connectivity configuration.
        # @param [String] name
        #   Required. The name of the private connectivity configuration to get.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DatastreamV1::PrivateConnection] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DatastreamV1::PrivateConnection]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_private_connection(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}', options)
          command.response_representation = Google::Apis::DatastreamV1::PrivateConnection::Representation
          command.response_class = Google::Apis::DatastreamV1::PrivateConnection
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Use this method to list private connectivity configurations in a project and
        # location.
        # @param [String] parent
        #   Required. The parent that owns the collection of private connectivity
        #   configurations.
        # @param [String] filter
        #   Filter request.
        # @param [String] order_by
        #   Order by fields for the result.
        # @param [Fixnum] page_size
        #   Maximum number of private connectivity configurations to return. If
        #   unspecified, at most 50 private connectivity configurations that will be
        #   returned. The maximum value is 1000; values above 1000 will be coerced to 1000.
        # @param [String] page_token
        #   Page token received from a previous `ListPrivateConnections` call. Provide
        #   this to retrieve the subsequent page. When paginating, all other parameters
        #   provided to `ListPrivateConnections` must match the call that provided the
        #   page token.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DatastreamV1::ListPrivateConnectionsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DatastreamV1::ListPrivateConnectionsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_private_connections(parent, filter: nil, order_by: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+parent}/privateConnections', options)
          command.response_representation = Google::Apis::DatastreamV1::ListPrivateConnectionsResponse::Representation
          command.response_class = Google::Apis::DatastreamV1::ListPrivateConnectionsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['orderBy'] = order_by unless order_by.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Use this method to create a route for a private connectivity configuration in
        # a project and location.
        # @param [String] parent
        #   Required. The parent that owns the collection of Routes.
        # @param [Google::Apis::DatastreamV1::Route] route_object
        # @param [String] request_id
        #   Optional. A request ID to identify requests. Specify a unique request ID so
        #   that if you must retry your request, the server will know to ignore the
        #   request if it has already been completed. The server will guarantee that for
        #   at least 60 minutes since the first request. For example, consider a situation
        #   where you make an initial request and the request times out. If you make the
        #   request again with the same request ID, the server can check if original
        #   operation with the same request ID was received, and if so, will ignore the
        #   second request. This prevents clients from accidentally creating duplicate
        #   commitments. The request ID must be a valid UUID with the exception that zero
        #   UUID is not supported (00000000-0000-0000-0000-000000000000).
        # @param [String] route_id
        #   Required. The Route identifier.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DatastreamV1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DatastreamV1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_location_private_connection_route(parent, route_object = nil, request_id: nil, route_id: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+parent}/routes', options)
          command.request_representation = Google::Apis::DatastreamV1::Route::Representation
          command.request_object = route_object
          command.response_representation = Google::Apis::DatastreamV1::Operation::Representation
          command.response_class = Google::Apis::DatastreamV1::Operation
          command.params['parent'] = parent unless parent.nil?
          command.query['requestId'] = request_id unless request_id.nil?
          command.query['routeId'] = route_id unless route_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Use this method to delete a route.
        # @param [String] name
        #   Required. The name of the Route resource to delete.
        # @param [String] request_id
        #   Optional. A request ID to identify requests. Specify a unique request ID so
        #   that if you must retry your request, the server will know to ignore the
        #   request if it has already been completed. The server will guarantee that for
        #   at least 60 minutes after the first request. For example, consider a situation
        #   where you make an initial request and the request times out. If you make the
        #   request again with the same request ID, the server can check if original
        #   operation with the same request ID was received, and if so, will ignore the
        #   second request. This prevents clients from accidentally creating duplicate
        #   commitments. The request ID must be a valid UUID with the exception that zero
        #   UUID is not supported (00000000-0000-0000-0000-000000000000).
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DatastreamV1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DatastreamV1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_location_private_connection_route(name, request_id: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1/{+name}', options)
          command.response_representation = Google::Apis::DatastreamV1::Operation::Representation
          command.response_class = Google::Apis::DatastreamV1::Operation
          command.params['name'] = name unless name.nil?
          command.query['requestId'] = request_id unless request_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Use this method to get details about a route.
        # @param [String] name
        #   Required. The name of the Route resource to get.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DatastreamV1::Route] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DatastreamV1::Route]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_private_connection_route(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}', options)
          command.response_representation = Google::Apis::DatastreamV1::Route::Representation
          command.response_class = Google::Apis::DatastreamV1::Route
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Use this method to list routes created for a private connectivity
        # configuration in a project and location.
        # @param [String] parent
        #   Required. The parent that owns the collection of Routess.
        # @param [String] filter
        #   Filter request.
        # @param [String] order_by
        #   Order by fields for the result.
        # @param [Fixnum] page_size
        #   Maximum number of Routes to return. The service may return fewer than this
        #   value. If unspecified, at most 50 Routes will be returned. The maximum value
        #   is 1000; values above 1000 will be coerced to 1000.
        # @param [String] page_token
        #   Page token received from a previous `ListRoutes` call. Provide this to
        #   retrieve the subsequent page. When paginating, all other parameters provided
        #   to `ListRoutes` must match the call that provided the page token.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DatastreamV1::ListRoutesResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DatastreamV1::ListRoutesResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_private_connection_routes(parent, filter: nil, order_by: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+parent}/routes', options)
          command.response_representation = Google::Apis::DatastreamV1::ListRoutesResponse::Representation
          command.response_class = Google::Apis::DatastreamV1::ListRoutesResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['orderBy'] = order_by unless order_by.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Use this method to create a stream.
        # @param [String] parent
        #   Required. The parent that owns the collection of streams.
        # @param [Google::Apis::DatastreamV1::Stream] stream_object
        # @param [Boolean] force
        #   Optional. Create the stream without validating it.
        # @param [String] request_id
        #   Optional. A request ID to identify requests. Specify a unique request ID so
        #   that if you must retry your request, the server will know to ignore the
        #   request if it has already been completed. The server will guarantee that for
        #   at least 60 minutes since the first request. For example, consider a situation
        #   where you make an initial request and the request times out. If you make the
        #   request again with the same request ID, the server can check if original
        #   operation with the same request ID was received, and if so, will ignore the
        #   second request. This prevents clients from accidentally creating duplicate
        #   commitments. The request ID must be a valid UUID with the exception that zero
        #   UUID is not supported (00000000-0000-0000-0000-000000000000).
        # @param [String] stream_id
        #   Required. The stream identifier.
        # @param [Boolean] validate_only
        #   Optional. Only validate the stream, but don't create any resources. The
        #   default is false.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DatastreamV1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DatastreamV1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_location_stream(parent, stream_object = nil, force: nil, request_id: nil, stream_id: nil, validate_only: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+parent}/streams', options)
          command.request_representation = Google::Apis::DatastreamV1::Stream::Representation
          command.request_object = stream_object
          command.response_representation = Google::Apis::DatastreamV1::Operation::Representation
          command.response_class = Google::Apis::DatastreamV1::Operation
          command.params['parent'] = parent unless parent.nil?
          command.query['force'] = force unless force.nil?
          command.query['requestId'] = request_id unless request_id.nil?
          command.query['streamId'] = stream_id unless stream_id.nil?
          command.query['validateOnly'] = validate_only unless validate_only.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Use this method to delete a stream.
        # @param [String] name
        #   Required. The name of the stream resource to delete.
        # @param [String] request_id
        #   Optional. A request ID to identify requests. Specify a unique request ID so
        #   that if you must retry your request, the server will know to ignore the
        #   request if it has already been completed. The server will guarantee that for
        #   at least 60 minutes after the first request. For example, consider a situation
        #   where you make an initial request and the request times out. If you make the
        #   request again with the same request ID, the server can check if original
        #   operation with the same request ID was received, and if so, will ignore the
        #   second request. This prevents clients from accidentally creating duplicate
        #   commitments. The request ID must be a valid UUID with the exception that zero
        #   UUID is not supported (00000000-0000-0000-0000-000000000000).
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DatastreamV1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DatastreamV1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_location_stream(name, request_id: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1/{+name}', options)
          command.response_representation = Google::Apis::DatastreamV1::Operation::Representation
          command.response_class = Google::Apis::DatastreamV1::Operation
          command.params['name'] = name unless name.nil?
          command.query['requestId'] = request_id unless request_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Use this method to get details about a stream.
        # @param [String] name
        #   Required. The name of the stream resource to get.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DatastreamV1::Stream] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DatastreamV1::Stream]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_stream(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}', options)
          command.response_representation = Google::Apis::DatastreamV1::Stream::Representation
          command.response_class = Google::Apis::DatastreamV1::Stream
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Use this method to list streams in a project and location.
        # @param [String] parent
        #   Required. The parent that owns the collection of streams.
        # @param [String] filter
        #   Filter request.
        # @param [String] order_by
        #   Order by fields for the result.
        # @param [Fixnum] page_size
        #   Maximum number of streams to return. If unspecified, at most 50 streams will
        #   be returned. The maximum value is 1000; values above 1000 will be coerced to
        #   1000.
        # @param [String] page_token
        #   Page token received from a previous `ListStreams` call. Provide this to
        #   retrieve the subsequent page. When paginating, all other parameters provided
        #   to `ListStreams` must match the call that provided the page token.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DatastreamV1::ListStreamsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DatastreamV1::ListStreamsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_streams(parent, filter: nil, order_by: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+parent}/streams', options)
          command.response_representation = Google::Apis::DatastreamV1::ListStreamsResponse::Representation
          command.response_class = Google::Apis::DatastreamV1::ListStreamsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['orderBy'] = order_by unless order_by.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Use this method to update the configuration of a stream.
        # @param [String] name
        #   Output only. The stream's name.
        # @param [Google::Apis::DatastreamV1::Stream] stream_object
        # @param [Boolean] force
        #   Optional. Update the stream without validating it.
        # @param [String] request_id
        #   Optional. A request ID to identify requests. Specify a unique request ID so
        #   that if you must retry your request, the server will know to ignore the
        #   request if it has already been completed. The server will guarantee that for
        #   at least 60 minutes since the first request. For example, consider a situation
        #   where you make an initial request and the request times out. If you make the
        #   request again with the same request ID, the server can check if original
        #   operation with the same request ID was received, and if so, will ignore the
        #   second request. This prevents clients from accidentally creating duplicate
        #   commitments. The request ID must be a valid UUID with the exception that zero
        #   UUID is not supported (00000000-0000-0000-0000-000000000000).
        # @param [String] update_mask
        #   Optional. Field mask is used to specify the fields to be overwritten in the
        #   stream resource by the update. The fields specified in the update_mask are
        #   relative to the resource, not the full request. A field will be overwritten if
        #   it is in the mask. If the user does not provide a mask then all fields will be
        #   overwritten.
        # @param [Boolean] validate_only
        #   Optional. Only validate the stream with the changes, without actually updating
        #   it. The default is false.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DatastreamV1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DatastreamV1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_project_location_stream(name, stream_object = nil, force: nil, request_id: nil, update_mask: nil, validate_only: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v1/{+name}', options)
          command.request_representation = Google::Apis::DatastreamV1::Stream::Representation
          command.request_object = stream_object
          command.response_representation = Google::Apis::DatastreamV1::Operation::Representation
          command.response_class = Google::Apis::DatastreamV1::Operation
          command.params['name'] = name unless name.nil?
          command.query['force'] = force unless force.nil?
          command.query['requestId'] = request_id unless request_id.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['validateOnly'] = validate_only unless validate_only.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Use this method to get details about a stream object.
        # @param [String] name
        #   Required. The name of the stream object resource to get.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DatastreamV1::StreamObject] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DatastreamV1::StreamObject]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_stream_object(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}', options)
          command.response_representation = Google::Apis::DatastreamV1::StreamObject::Representation
          command.response_class = Google::Apis::DatastreamV1::StreamObject
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Use this method to list the objects of a specific stream.
        # @param [String] parent
        #   Required. The parent stream that owns the collection of objects.
        # @param [Fixnum] page_size
        #   Maximum number of objects to return. Default is 50. The maximum value is 1000;
        #   values above 1000 will be coerced to 1000.
        # @param [String] page_token
        #   Page token received from a previous `ListStreamObjectsRequest` call. Provide
        #   this to retrieve the subsequent page. When paginating, all other parameters
        #   provided to `ListStreamObjectsRequest` must match the call that provided the
        #   page token.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DatastreamV1::ListStreamObjectsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DatastreamV1::ListStreamObjectsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_stream_objects(parent, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+parent}/objects', options)
          command.response_representation = Google::Apis::DatastreamV1::ListStreamObjectsResponse::Representation
          command.response_class = Google::Apis::DatastreamV1::ListStreamObjectsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Use this method to look up a stream object by its source object identifier.
        # @param [String] parent
        #   Required. The parent stream that owns the collection of objects.
        # @param [Google::Apis::DatastreamV1::LookupStreamObjectRequest] lookup_stream_object_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DatastreamV1::StreamObject] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DatastreamV1::StreamObject]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def lookup_stream_object(parent, lookup_stream_object_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+parent}/objects:lookup', options)
          command.request_representation = Google::Apis::DatastreamV1::LookupStreamObjectRequest::Representation
          command.request_object = lookup_stream_object_request_object
          command.response_representation = Google::Apis::DatastreamV1::StreamObject::Representation
          command.response_class = Google::Apis::DatastreamV1::StreamObject
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Use this method to start a backfill job for the specified stream object.
        # @param [String] object
        #   Required. The name of the stream object resource to start a backfill job for.
        # @param [Google::Apis::DatastreamV1::StartBackfillJobRequest] start_backfill_job_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DatastreamV1::StartBackfillJobResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DatastreamV1::StartBackfillJobResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def start_object_backfill_job(object, start_backfill_job_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+object}:startBackfillJob', options)
          command.request_representation = Google::Apis::DatastreamV1::StartBackfillJobRequest::Representation
          command.request_object = start_backfill_job_request_object
          command.response_representation = Google::Apis::DatastreamV1::StartBackfillJobResponse::Representation
          command.response_class = Google::Apis::DatastreamV1::StartBackfillJobResponse
          command.params['object'] = object unless object.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Use this method to stop a backfill job for the specified stream object.
        # @param [String] object
        #   Required. The name of the stream object resource to stop the backfill job for.
        # @param [Google::Apis::DatastreamV1::StopBackfillJobRequest] stop_backfill_job_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DatastreamV1::StopBackfillJobResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DatastreamV1::StopBackfillJobResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def stop_object_backfill_job(object, stop_backfill_job_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+object}:stopBackfillJob', options)
          command.request_representation = Google::Apis::DatastreamV1::StopBackfillJobRequest::Representation
          command.request_object = stop_backfill_job_request_object
          command.response_representation = Google::Apis::DatastreamV1::StopBackfillJobResponse::Representation
          command.response_class = Google::Apis::DatastreamV1::StopBackfillJobResponse
          command.params['object'] = object unless object.nil?
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
