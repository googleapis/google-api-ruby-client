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
    module DeveloperconnectV1
      # Developer Connect API
      #
      # Connect third-party source code management to Google
      #
      # @example
      #    require 'google/apis/developerconnect_v1'
      #
      #    Developerconnect = Google::Apis::DeveloperconnectV1 # Alias the module
      #    service = Developerconnect::DeveloperConnectService.new
      #
      # @see http://cloud.google.com/developer-connect/docs/overview
      class DeveloperConnectService < Google::Apis::Core::BaseService
        DEFAULT_ENDPOINT_TEMPLATE = "https://developerconnect.$UNIVERSE_DOMAIN$/"

        # @return [String]
        #  API key. Your API key identifies your project and provides you with API access,
        #  quota, and reports. Required unless you provide an OAuth 2.0 token.
        attr_accessor :key

        # @return [String]
        #  Available to use for quota purposes for server-side applications. Can be any
        #  arbitrary string assigned to a user, but should not exceed 40 characters.
        attr_accessor :quota_user

        def initialize
          super(DEFAULT_ENDPOINT_TEMPLATE, '',
                client_name: 'google-apis-developerconnect_v1',
                client_version: Google::Apis::DeveloperconnectV1::GEM_VERSION)
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
        # @yieldparam result [Google::Apis::DeveloperconnectV1::Location] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DeveloperconnectV1::Location]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}', options)
          command.response_representation = Google::Apis::DeveloperconnectV1::Location::Representation
          command.response_class = Google::Apis::DeveloperconnectV1::Location
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists information about the supported locations for this service. This method
        # lists locations based on the resource scope provided in the
        # ListLocationsRequest.name field: * **Global locations**: If `name` is empty,
        # the method lists the public locations available to all projects. * **Project-
        # specific locations**: If `name` follows the format `projects/`project``, the
        # method lists locations visible to that specific project. This includes public,
        # private, or other project-specific locations enabled for the project. For gRPC
        # and client library implementations, the resource name is passed as the `name`
        # field. For direct service calls, the resource name is incorporated into the
        # request path based on the specific service implementation and version.
        # @param [String] name
        #   The resource that owns the locations collection, if applicable.
        # @param [Array<String>, String] extra_location_types
        #   Optional. Do not use this field unless explicitly documented otherwise. This
        #   is primarily for internal usage.
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
        # @yieldparam result [Google::Apis::DeveloperconnectV1::ListLocationsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DeveloperconnectV1::ListLocationsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_locations(name, extra_location_types: nil, filter: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}/locations', options)
          command.response_representation = Google::Apis::DeveloperconnectV1::ListLocationsResponse::Representation
          command.response_class = Google::Apis::DeveloperconnectV1::ListLocationsResponse
          command.params['name'] = name unless name.nil?
          command.query['extraLocationTypes'] = extra_location_types unless extra_location_types.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a new AccountConnector in a given project and location.
        # @param [String] parent
        #   Required. Location resource name as the account_connector’s parent.
        # @param [Google::Apis::DeveloperconnectV1::AccountConnector] account_connector_object
        # @param [String] account_connector_id
        #   Required. The ID to use for the AccountConnector, which will become the final
        #   component of the AccountConnector's resource name. Its format should adhere to
        #   https://google.aip.dev/122#resource-id-segments Names must be unique per-
        #   project per-location.
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
        # @param [Boolean] validate_only
        #   Optional. If set, validate the request, but do not actually post it.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DeveloperconnectV1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DeveloperconnectV1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_location_account_connector(parent, account_connector_object = nil, account_connector_id: nil, request_id: nil, validate_only: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+parent}/accountConnectors', options)
          command.request_representation = Google::Apis::DeveloperconnectV1::AccountConnector::Representation
          command.request_object = account_connector_object
          command.response_representation = Google::Apis::DeveloperconnectV1::Operation::Representation
          command.response_class = Google::Apis::DeveloperconnectV1::Operation
          command.params['parent'] = parent unless parent.nil?
          command.query['accountConnectorId'] = account_connector_id unless account_connector_id.nil?
          command.query['requestId'] = request_id unless request_id.nil?
          command.query['validateOnly'] = validate_only unless validate_only.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes a single AccountConnector.
        # @param [String] name
        #   Required. Name of the resource
        # @param [String] etag
        #   Optional. The current etag of the AccountConnectorn. If an etag is provided
        #   and does not match the current etag of the AccountConnector, deletion will be
        #   blocked and an ABORTED error will be returned.
        # @param [Boolean] force
        #   Optional. If set to true, any Users from this AccountConnector will also be
        #   deleted. (Otherwise, the request will only work if the AccountConnector has no
        #   Users.)
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
        # @param [Boolean] validate_only
        #   Optional. If set, validate the request, but do not actually post it.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DeveloperconnectV1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DeveloperconnectV1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_location_account_connector(name, etag: nil, force: nil, request_id: nil, validate_only: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1/{+name}', options)
          command.response_representation = Google::Apis::DeveloperconnectV1::Operation::Representation
          command.response_class = Google::Apis::DeveloperconnectV1::Operation
          command.params['name'] = name unless name.nil?
          command.query['etag'] = etag unless etag.nil?
          command.query['force'] = force unless force.nil?
          command.query['requestId'] = request_id unless request_id.nil?
          command.query['validateOnly'] = validate_only unless validate_only.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # FetchUserRepositories returns a list of UserRepos that are available for an
        # account connector resource.
        # @param [String] account_connector
        #   Required. The name of the Account Connector resource in the format: `projects/*
        #   /locations/*/accountConnectors/*`.
        # @param [Fixnum] page_size
        #   Optional. Number of results to return in the list. Defaults to 20.
        # @param [String] page_token
        #   Optional. Page start.
        # @param [String] repository
        #   Optional. The name of the repository. When specified, only the UserRepository
        #   with this name will be returned if the repository is accessible under this
        #   Account Connector for the calling user.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DeveloperconnectV1::FetchUserRepositoriesResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DeveloperconnectV1::FetchUserRepositoriesResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def fetch_project_location_account_connector_user_repositories(account_connector, page_size: nil, page_token: nil, repository: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+accountConnector}:fetchUserRepositories', options)
          command.response_representation = Google::Apis::DeveloperconnectV1::FetchUserRepositoriesResponse::Representation
          command.response_class = Google::Apis::DeveloperconnectV1::FetchUserRepositoriesResponse
          command.params['accountConnector'] = account_connector unless account_connector.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['repository'] = repository unless repository.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets details of a single AccountConnector.
        # @param [String] name
        #   Required. Name of the resource
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DeveloperconnectV1::AccountConnector] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DeveloperconnectV1::AccountConnector]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_account_connector(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}', options)
          command.response_representation = Google::Apis::DeveloperconnectV1::AccountConnector::Representation
          command.response_class = Google::Apis::DeveloperconnectV1::AccountConnector
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists AccountConnectors in a given project and location.
        # @param [String] parent
        #   Required. Parent value for ListAccountConnectorsRequest
        # @param [String] filter
        #   Optional. Filtering results.
        # @param [String] order_by
        #   Optional. Hint for how to order the results.
        # @param [Fixnum] page_size
        #   Optional. Requested page size. Server may return fewer items than requested.
        #   If unspecified, server will pick an appropriate default.
        # @param [String] page_token
        #   Optional. A token identifying a page of results the server should return.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DeveloperconnectV1::ListAccountConnectorsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DeveloperconnectV1::ListAccountConnectorsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_account_connectors(parent, filter: nil, order_by: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+parent}/accountConnectors', options)
          command.response_representation = Google::Apis::DeveloperconnectV1::ListAccountConnectorsResponse::Representation
          command.response_class = Google::Apis::DeveloperconnectV1::ListAccountConnectorsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['orderBy'] = order_by unless order_by.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates the parameters of a single AccountConnector.
        # @param [String] name
        #   Identifier. The resource name of the accountConnector, in the format `projects/
        #   `project`/locations/`location`/accountConnectors/`account_connector_id``.
        # @param [Google::Apis::DeveloperconnectV1::AccountConnector] account_connector_object
        # @param [Boolean] allow_missing
        #   Optional. If set to true, and the accountConnector is not found a new
        #   accountConnector will be created. In this situation `update_mask` is ignored.
        #   The creation will succeed only if the input accountConnector has all the
        #   necessary
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
        #   Optional. The list of fields to be updated.
        # @param [Boolean] validate_only
        #   Optional. If set, validate the request, but do not actually post it.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DeveloperconnectV1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DeveloperconnectV1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_project_location_account_connector(name, account_connector_object = nil, allow_missing: nil, request_id: nil, update_mask: nil, validate_only: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v1/{+name}', options)
          command.request_representation = Google::Apis::DeveloperconnectV1::AccountConnector::Representation
          command.request_object = account_connector_object
          command.response_representation = Google::Apis::DeveloperconnectV1::Operation::Representation
          command.response_class = Google::Apis::DeveloperconnectV1::Operation
          command.params['name'] = name unless name.nil?
          command.query['allowMissing'] = allow_missing unless allow_missing.nil?
          command.query['requestId'] = request_id unless request_id.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['validateOnly'] = validate_only unless validate_only.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes a single User.
        # @param [String] name
        #   Required. Name of the resource
        # @param [String] etag
        #   Optional. This checksum is computed by the server based on the value of other
        #   fields, and may be sent on update and delete requests to ensure the client has
        #   an up-to-date value before proceeding.
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
        # @param [Boolean] validate_only
        #   Optional. If set, validate the request, but do not actually post it.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DeveloperconnectV1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DeveloperconnectV1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_location_account_connector_user(name, etag: nil, request_id: nil, validate_only: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1/{+name}', options)
          command.response_representation = Google::Apis::DeveloperconnectV1::Operation::Representation
          command.response_class = Google::Apis::DeveloperconnectV1::Operation
          command.params['name'] = name unless name.nil?
          command.query['etag'] = etag unless etag.nil?
          command.query['requestId'] = request_id unless request_id.nil?
          command.query['validateOnly'] = validate_only unless validate_only.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Delete the User based on the user credentials.
        # @param [String] name
        #   Required. Name of the AccountConnector resource
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DeveloperconnectV1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DeveloperconnectV1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_location_account_connector_user_self(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1/{+name}/users:deleteSelf', options)
          command.response_representation = Google::Apis::DeveloperconnectV1::Operation::Representation
          command.response_class = Google::Apis::DeveloperconnectV1::Operation
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Fetches OAuth access token based on end user credentials.
        # @param [String] account_connector
        #   Required. The resource name of the AccountConnector in the format `projects/*/
        #   locations/*/accountConnectors/*`.
        # @param [Google::Apis::DeveloperconnectV1::FetchAccessTokenRequest] fetch_access_token_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DeveloperconnectV1::FetchAccessTokenResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DeveloperconnectV1::FetchAccessTokenResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def fetch_user_access_token(account_connector, fetch_access_token_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+accountConnector}/users:fetchAccessToken', options)
          command.request_representation = Google::Apis::DeveloperconnectV1::FetchAccessTokenRequest::Representation
          command.request_object = fetch_access_token_request_object
          command.response_representation = Google::Apis::DeveloperconnectV1::FetchAccessTokenResponse::Representation
          command.response_class = Google::Apis::DeveloperconnectV1::FetchAccessTokenResponse
          command.params['accountConnector'] = account_connector unless account_connector.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Fetch the User based on the user credentials.
        # @param [String] name
        #   Required. Name of the AccountConnector resource
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DeveloperconnectV1::User] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DeveloperconnectV1::User]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def fetch_project_location_account_connector_user_self(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}/users:fetchSelf', options)
          command.response_representation = Google::Apis::DeveloperconnectV1::User::Representation
          command.response_class = Google::Apis::DeveloperconnectV1::User
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Finishes OAuth flow for an account connector.
        # @param [String] account_connector
        #   Required. The resource name of the AccountConnector in the format `projects/*/
        #   locations/*/accountConnectors/*`.
        # @param [Array<String>, String] google_oauth_params_scopes
        #   Required. The scopes returned by Google OAuth flow.
        # @param [String] google_oauth_params_ticket
        #   Required. The ticket to be used for post processing the callback from Google
        #   OAuth flow.
        # @param [String] google_oauth_params_version_info
        #   Optional. The version info returned by Google OAuth flow.
        # @param [String] oauth_params_code
        #   Required. The code to be used for getting the token from SCM provider.
        # @param [String] oauth_params_ticket
        #   Required. The ticket to be used for post processing the callback from SCM
        #   provider.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DeveloperconnectV1::FinishOAuthResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DeveloperconnectV1::FinishOAuthResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def finish_project_location_account_connector_user_o_auth_flow(account_connector, google_oauth_params_scopes: nil, google_oauth_params_ticket: nil, google_oauth_params_version_info: nil, oauth_params_code: nil, oauth_params_ticket: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+accountConnector}/users:finishOAuthFlow', options)
          command.response_representation = Google::Apis::DeveloperconnectV1::FinishOAuthResponse::Representation
          command.response_class = Google::Apis::DeveloperconnectV1::FinishOAuthResponse
          command.params['accountConnector'] = account_connector unless account_connector.nil?
          command.query['googleOauthParams.scopes'] = google_oauth_params_scopes unless google_oauth_params_scopes.nil?
          command.query['googleOauthParams.ticket'] = google_oauth_params_ticket unless google_oauth_params_ticket.nil?
          command.query['googleOauthParams.versionInfo'] = google_oauth_params_version_info unless google_oauth_params_version_info.nil?
          command.query['oauthParams.code'] = oauth_params_code unless oauth_params_code.nil?
          command.query['oauthParams.ticket'] = oauth_params_ticket unless oauth_params_ticket.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists Users in a given project, location, and account_connector.
        # @param [String] parent
        #   Required. Parent value for ListUsersRequest
        # @param [String] filter
        #   Optional. Filtering results.
        # @param [String] order_by
        #   Optional. Hint for how to order the results.
        # @param [Fixnum] page_size
        #   Optional. Requested page size. Server may return fewer items than requested.
        #   If unspecified, server will pick an appropriate default.
        # @param [String] page_token
        #   Optional. A token identifying a page of results the server should return.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DeveloperconnectV1::ListUsersResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DeveloperconnectV1::ListUsersResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_account_connector_users(parent, filter: nil, order_by: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+parent}/users', options)
          command.response_representation = Google::Apis::DeveloperconnectV1::ListUsersResponse::Representation
          command.response_class = Google::Apis::DeveloperconnectV1::ListUsersResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['orderBy'] = order_by unless order_by.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Starts OAuth flow for an account connector.
        # @param [String] account_connector
        #   Required. The resource name of the AccountConnector in the format `projects/*/
        #   locations/*/accountConnectors/*`.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DeveloperconnectV1::StartOAuthResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DeveloperconnectV1::StartOAuthResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def start_project_location_account_connector_user_o_auth_flow(account_connector, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+accountConnector}/users:startOAuthFlow', options)
          command.response_representation = Google::Apis::DeveloperconnectV1::StartOAuthResponse::Representation
          command.response_class = Google::Apis::DeveloperconnectV1::StartOAuthResponse
          command.params['accountConnector'] = account_connector unless account_connector.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a new Connection in a given project and location.
        # @param [String] parent
        #   Required. Value for parent.
        # @param [Google::Apis::DeveloperconnectV1::Connection] connection_object
        # @param [String] connection_id
        #   Required. The ID to use for the connection, which becomes the final component
        #   of the connection's resource name.
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
        # @param [Boolean] validate_only
        #   Optional. If set, validate the request, but do not actually post it.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DeveloperconnectV1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DeveloperconnectV1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_location_connection(parent, connection_object = nil, connection_id: nil, request_id: nil, validate_only: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+parent}/connections', options)
          command.request_representation = Google::Apis::DeveloperconnectV1::Connection::Representation
          command.request_object = connection_object
          command.response_representation = Google::Apis::DeveloperconnectV1::Operation::Representation
          command.response_class = Google::Apis::DeveloperconnectV1::Operation
          command.params['parent'] = parent unless parent.nil?
          command.query['connectionId'] = connection_id unless connection_id.nil?
          command.query['requestId'] = request_id unless request_id.nil?
          command.query['validateOnly'] = validate_only unless validate_only.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes a single Connection.
        # @param [String] name
        #   Required. Name of the resource
        # @param [String] etag
        #   Optional. The current etag of the Connection. If an etag is provided and does
        #   not match the current etag of the Connection, deletion will be blocked and an
        #   ABORTED error will be returned.
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
        # @param [Boolean] validate_only
        #   Optional. If set, validate the request, but do not actually post it.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DeveloperconnectV1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DeveloperconnectV1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_location_connection(name, etag: nil, request_id: nil, validate_only: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1/{+name}', options)
          command.response_representation = Google::Apis::DeveloperconnectV1::Operation::Representation
          command.response_class = Google::Apis::DeveloperconnectV1::Operation
          command.params['name'] = name unless name.nil?
          command.query['etag'] = etag unless etag.nil?
          command.query['requestId'] = request_id unless request_id.nil?
          command.query['validateOnly'] = validate_only unless validate_only.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # FetchGitHubInstallations returns the list of GitHub Installations that are
        # available to be added to a Connection. For github.com, only installations
        # accessible to the authorizer token are returned. For GitHub Enterprise, all
        # installations are returned.
        # @param [String] connection
        #   Required. The resource name of the connection in the format `projects/*/
        #   locations/*/connections/*`.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DeveloperconnectV1::FetchGitHubInstallationsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DeveloperconnectV1::FetchGitHubInstallationsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def fetch_project_location_connection_git_hub_installations(connection, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+connection}:fetchGitHubInstallations', options)
          command.response_representation = Google::Apis::DeveloperconnectV1::FetchGitHubInstallationsResponse::Representation
          command.response_class = Google::Apis::DeveloperconnectV1::FetchGitHubInstallationsResponse
          command.params['connection'] = connection unless connection.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # FetchLinkableGitRepositories returns a list of git repositories from an SCM
        # that are available to be added to a Connection.
        # @param [String] connection
        #   Required. The name of the Connection. Format: `projects/*/locations/*/
        #   connections/*`.
        # @param [Fixnum] page_size
        #   Optional. Number of results to return in the list. Defaults to 20.
        # @param [String] page_token
        #   Optional. Page start.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DeveloperconnectV1::FetchLinkableGitRepositoriesResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DeveloperconnectV1::FetchLinkableGitRepositoriesResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def fetch_project_location_connection_linkable_git_repositories(connection, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+connection}:fetchLinkableGitRepositories', options)
          command.response_representation = Google::Apis::DeveloperconnectV1::FetchLinkableGitRepositoriesResponse::Representation
          command.response_class = Google::Apis::DeveloperconnectV1::FetchLinkableGitRepositoriesResponse
          command.params['connection'] = connection unless connection.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets details of a single Connection.
        # @param [String] name
        #   Required. Name of the resource
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DeveloperconnectV1::Connection] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DeveloperconnectV1::Connection]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_connection(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}', options)
          command.response_representation = Google::Apis::DeveloperconnectV1::Connection::Representation
          command.response_class = Google::Apis::DeveloperconnectV1::Connection
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists Connections in a given project and location.
        # @param [String] parent
        #   Required. Parent value for ListConnectionsRequest
        # @param [String] filter
        #   Optional. Filtering results.
        # @param [String] order_by
        #   Optional. Hint for how to order the results.
        # @param [Fixnum] page_size
        #   Optional. Requested page size. Server may return fewer items than requested.
        #   If unspecified, server will pick an appropriate default.
        # @param [String] page_token
        #   Optional. A token identifying a page of results the server should return.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DeveloperconnectV1::ListConnectionsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DeveloperconnectV1::ListConnectionsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_connections(parent, filter: nil, order_by: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+parent}/connections', options)
          command.response_representation = Google::Apis::DeveloperconnectV1::ListConnectionsResponse::Representation
          command.response_class = Google::Apis::DeveloperconnectV1::ListConnectionsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['orderBy'] = order_by unless order_by.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates the parameters of a single Connection.
        # @param [String] name
        #   Identifier. The resource name of the connection, in the format `projects/`
        #   project`/locations/`location`/connections/`connection_id``.
        # @param [Google::Apis::DeveloperconnectV1::Connection] connection_object
        # @param [Boolean] allow_missing
        #   Optional. If set to true, and the connection is not found a new connection
        #   will be created. In this situation `update_mask` is ignored. The creation will
        #   succeed only if the input connection has all the necessary information (e.g a
        #   github_config with both user_oauth_token and installation_id properties).
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
        #   Required. Field mask is used to specify the fields to be overwritten in the
        #   Connection resource by the update. The fields specified in the update_mask are
        #   relative to the resource, not the full request. A field will be overwritten if
        #   it is in the mask. If the user does not provide a mask then all fields will be
        #   overwritten.
        # @param [Boolean] validate_only
        #   Optional. If set, validate the request, but do not actually post it.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DeveloperconnectV1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DeveloperconnectV1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_project_location_connection(name, connection_object = nil, allow_missing: nil, request_id: nil, update_mask: nil, validate_only: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v1/{+name}', options)
          command.request_representation = Google::Apis::DeveloperconnectV1::Connection::Representation
          command.request_object = connection_object
          command.response_representation = Google::Apis::DeveloperconnectV1::Operation::Representation
          command.response_class = Google::Apis::DeveloperconnectV1::Operation
          command.params['name'] = name unless name.nil?
          command.query['allowMissing'] = allow_missing unless allow_missing.nil?
          command.query['requestId'] = request_id unless request_id.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['validateOnly'] = validate_only unless validate_only.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # ProcessGitHubEnterpriseWebhook is called by the external GitHub Enterprise
        # instances for notifying events.
        # @param [String] parent
        #   Required. Project and location where the webhook will be received. Format: `
        #   projects/*/locations/*`.
        # @param [Google::Apis::DeveloperconnectV1::ProcessGitHubEnterpriseWebhookRequest] process_git_hub_enterprise_webhook_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DeveloperconnectV1::Empty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DeveloperconnectV1::Empty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def process_connection_git_hub_enterprise_webhook(parent, process_git_hub_enterprise_webhook_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+parent}/connections:processGitHubEnterpriseWebhook', options)
          command.request_representation = Google::Apis::DeveloperconnectV1::ProcessGitHubEnterpriseWebhookRequest::Representation
          command.request_object = process_git_hub_enterprise_webhook_request_object
          command.response_representation = Google::Apis::DeveloperconnectV1::Empty::Representation
          command.response_class = Google::Apis::DeveloperconnectV1::Empty
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Add a comment to a Pull Request.
        # @param [String] name
        #   Required. The resource name of the GitRepositoryLink in the format `projects/*/
        #   locations/*/connections/*/gitRepositoryLinks/*`.
        # @param [Google::Apis::DeveloperconnectV1::AddGitRepositoryLinkPullRequestCommentRequest] add_git_repository_link_pull_request_comment_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DeveloperconnectV1::PullRequestComment] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DeveloperconnectV1::PullRequestComment]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def add_project_location_connection_git_repository_link_pull_request_comment(name, add_git_repository_link_pull_request_comment_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+name}:addPullRequestComment', options)
          command.request_representation = Google::Apis::DeveloperconnectV1::AddGitRepositoryLinkPullRequestCommentRequest::Representation
          command.request_object = add_git_repository_link_pull_request_comment_request_object
          command.response_representation = Google::Apis::DeveloperconnectV1::PullRequestComment::Representation
          command.response_class = Google::Apis::DeveloperconnectV1::PullRequestComment
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Add a review comment (inline on diff) to a Pull Request.
        # @param [String] name
        #   Required. The resource name of the GitRepositoryLink in the format `projects/*/
        #   locations/*/connections/*/gitRepositoryLinks/*`.
        # @param [Google::Apis::DeveloperconnectV1::AddGitRepositoryLinkPullRequestReviewCommentRequest] add_git_repository_link_pull_request_review_comment_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DeveloperconnectV1::PullRequestReviewComment] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DeveloperconnectV1::PullRequestReviewComment]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def add_project_location_connection_git_repository_link_pull_request_review_comment(name, add_git_repository_link_pull_request_review_comment_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+name}:addPullRequestReviewComment', options)
          command.request_representation = Google::Apis::DeveloperconnectV1::AddGitRepositoryLinkPullRequestReviewCommentRequest::Representation
          command.request_object = add_git_repository_link_pull_request_review_comment_request_object
          command.response_representation = Google::Apis::DeveloperconnectV1::PullRequestReviewComment::Representation
          command.response_class = Google::Apis::DeveloperconnectV1::PullRequestReviewComment
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a GitRepositoryLink. Upon linking a Git Repository, Developer Connect
        # will configure the Git Repository to send webhook events to Developer Connect.
        # Connections that use Firebase GitHub Application will have events forwarded to
        # the Firebase service. Connections that use Gemini Code Assist will have events
        # forwarded to Gemini Code Assist service. All other Connections will have
        # events forwarded to Cloud Build.
        # @param [String] parent
        #   Required. Value for parent.
        # @param [Google::Apis::DeveloperconnectV1::GitRepositoryLink] git_repository_link_object
        # @param [String] git_repository_link_id
        #   Required. The ID to use for the repository, which will become the final
        #   component of the repository's resource name. This ID should be unique in the
        #   connection. Allows alphanumeric characters and any of -._~%!$&'()*+,;=@.
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
        # @param [Boolean] validate_only
        #   Optional. If set, validate the request, but do not actually post it.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DeveloperconnectV1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DeveloperconnectV1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_location_connection_git_repository_link(parent, git_repository_link_object = nil, git_repository_link_id: nil, request_id: nil, validate_only: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+parent}/gitRepositoryLinks', options)
          command.request_representation = Google::Apis::DeveloperconnectV1::GitRepositoryLink::Representation
          command.request_object = git_repository_link_object
          command.response_representation = Google::Apis::DeveloperconnectV1::Operation::Representation
          command.response_class = Google::Apis::DeveloperconnectV1::Operation
          command.params['parent'] = parent unless parent.nil?
          command.query['gitRepositoryLinkId'] = git_repository_link_id unless git_repository_link_id.nil?
          command.query['requestId'] = request_id unless request_id.nil?
          command.query['validateOnly'] = validate_only unless validate_only.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes a single GitRepositoryLink.
        # @param [String] name
        #   Required. Name of the resource
        # @param [String] etag
        #   Optional. This checksum is computed by the server based on the value of other
        #   fields, and may be sent on update and delete requests to ensure the client has
        #   an up-to-date value before proceeding.
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
        # @param [Boolean] validate_only
        #   Optional. If set, validate the request, but do not actually post it.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DeveloperconnectV1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DeveloperconnectV1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_location_connection_git_repository_link(name, etag: nil, request_id: nil, validate_only: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1/{+name}', options)
          command.response_representation = Google::Apis::DeveloperconnectV1::Operation::Representation
          command.response_class = Google::Apis::DeveloperconnectV1::Operation
          command.params['name'] = name unless name.nil?
          command.query['etag'] = etag unless etag.nil?
          command.query['requestId'] = request_id unless request_id.nil?
          command.query['validateOnly'] = validate_only unless validate_only.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Diff commits for a GitRepositoryLink.
        # @param [String] name
        #   Required. The resource name of the GitRepositoryLink.
        # @param [String] base_sha
        #   Required. The base commit SHA or ref.
        # @param [String] head_sha
        #   Required. The head commit SHA or ref.
        # @param [Array<String>, String] path_filters
        #   Optional. Path patterns or exact paths to filter returned files. When `
        #   path_filters` is specified, `FileDiff.patch` is populated for all matching
        #   files (use `["**"]` to include patches for all changed files). When `
        #   path_filters` is omitted or empty, the full list of `FileDiff` is returned
        #   without patch diffs (`FileDiff.patch` is empty).
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DeveloperconnectV1::DiffGitRepositoryLinkCommitResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DeveloperconnectV1::DiffGitRepositoryLinkCommitResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def diff_project_location_connection_git_repository_link_commit(name, base_sha: nil, head_sha: nil, path_filters: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}:diffCommit', options)
          command.response_representation = Google::Apis::DeveloperconnectV1::DiffGitRepositoryLinkCommitResponse::Representation
          command.response_class = Google::Apis::DeveloperconnectV1::DiffGitRepositoryLinkCommitResponse
          command.params['name'] = name unless name.nil?
          command.query['baseSha'] = base_sha unless base_sha.nil?
          command.query['headSha'] = head_sha unless head_sha.nil?
          command.query['pathFilters'] = path_filters unless path_filters.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Fetch Commit details from a Git repository link.
        # @param [String] name
        #   Required. The resource name of the GitRepositoryLink in the format `projects/*/
        #   locations/*/connections/*/gitRepositoryLinks/*`.
        # @param [String] commit_sha
        #   Required. The commit SHA, or symbolic revision (for example, branch name, tag,
        #   or Git reference).
        # @param [Array<String>, String] path_filters
        #   Optional. Path patterns or exact paths to filter returned files (only
        #   applicable in `FULL` view). When `path_filters` is specified, `FileDiff.patch`
        #   is populated for all matching files (use `["**"]` to include patches for all
        #   changed files). When `path_filters` is omitted or empty, the full list of `
        #   FileDiff` is returned without patch diffs (`FileDiff.patch` is empty).
        # @param [String] view
        #   Optional. The level of commit details to return in the response. Defaults to `
        #   FULL` if unspecified. In `FULL` view, `files` metadata (paths and statuses)
        #   are returned; `path_filters` must also be specified to populate line patch
        #   hunks.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DeveloperconnectV1::FetchGitRepositoryLinkCommitResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DeveloperconnectV1::FetchGitRepositoryLinkCommitResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def fetch_project_location_connection_git_repository_link_commit(name, commit_sha: nil, path_filters: nil, view: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}:fetchCommit', options)
          command.response_representation = Google::Apis::DeveloperconnectV1::FetchGitRepositoryLinkCommitResponse::Representation
          command.response_class = Google::Apis::DeveloperconnectV1::FetchGitRepositoryLinkCommitResponse
          command.params['name'] = name unless name.nil?
          command.query['commitSha'] = commit_sha unless commit_sha.nil?
          command.query['pathFilters'] = path_filters unless path_filters.nil?
          command.query['view'] = view unless view.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Fetch a list of Commits from a Git repository link.
        # @param [String] name
        #   Required. The resource name of the GitRepositoryLink in the format `projects/*/
        #   locations/*/connections/*/gitRepositoryLinks/*`.
        # @param [Fixnum] page_size
        #   Optional. Number of results to return in the list. Default is 50. Max is 100.
        # @param [String] page_token
        #   Optional. A page token, received from a previous `
        #   FetchGitRepositoryLinkCommitList` call. Provide this to retrieve the
        #   subsequent page. When paginating, all other parameters provided to `
        #   FetchGitRepositoryLinkCommitList` must match the call that provided the page
        #   token.
        # @param [String] ref
        #   Optional. The commit SHA, or symbolic revision (for example, branch name, tag,
        #   or Git reference) from which to start listing commits.
        # @param [String] view
        #   Optional. The level of commit details to return in the response. Only `BASIC`
        #   is supported; `FULL` returns `INVALID_ARGUMENT`. Defaults to `BASIC` if
        #   unspecified. Use `FetchGitRepositoryLinkCommit` to get file diffs for a single
        #   commit.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DeveloperconnectV1::FetchGitRepositoryLinkCommitListResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DeveloperconnectV1::FetchGitRepositoryLinkCommitListResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def fetch_project_location_connection_git_repository_link_commit_list(name, page_size: nil, page_token: nil, ref: nil, view: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}:fetchCommitList', options)
          command.response_representation = Google::Apis::DeveloperconnectV1::FetchGitRepositoryLinkCommitListResponse::Representation
          command.response_class = Google::Apis::DeveloperconnectV1::FetchGitRepositoryLinkCommitListResponse
          command.params['name'] = name unless name.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['ref'] = ref unless ref.nil?
          command.query['view'] = view unless view.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Fetches blame information for a file or line range in a file.
        # @param [String] name
        #   Required. The resource name of the GitRepositoryLink in the format `projects/*/
        #   locations/*/connections/*/gitRepositoryLinks/*`.
        # @param [Fixnum] first_line
        #   Optional. The 1-indexed starting line number of the range to blame (inclusive).
        #   If not specified, blame begins at line 1.
        # @param [Fixnum] last_line
        #   Optional. The 1-indexed ending line number of the range to blame (inclusive).
        #   If not specified, blame extends to the end of the file.
        # @param [String] path
        #   Required. The file path within the repository.
        # @param [String] ref
        #   Required. The SCM commit SHA, or symbolic revision (for example, branch name,
        #   tag) from which to fetch the blame.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DeveloperconnectV1::FetchGitRepositoryLinkFileBlameResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DeveloperconnectV1::FetchGitRepositoryLinkFileBlameResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def fetch_project_location_connection_git_repository_link_file_blame(name, first_line: nil, last_line: nil, path: nil, ref: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}:fetchFileBlame', options)
          command.response_representation = Google::Apis::DeveloperconnectV1::FetchGitRepositoryLinkFileBlameResponse::Representation
          command.response_class = Google::Apis::DeveloperconnectV1::FetchGitRepositoryLinkFileBlameResponse
          command.params['name'] = name unless name.nil?
          command.query['firstLine'] = first_line unless first_line.nil?
          command.query['lastLine'] = last_line unless last_line.nil?
          command.query['path'] = path unless path.nil?
          command.query['ref'] = ref unless ref.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Fetch the list of branches or tags for a given repository.
        # @param [String] git_repository_link
        #   Required. The resource name of GitRepositoryLink in the format `projects/*/
        #   locations/*/connections/*/gitRepositoryLinks/*`.
        # @param [Fixnum] page_size
        #   Optional. Number of results to return in the list. Default to 20.
        # @param [String] page_token
        #   Optional. Page start.
        # @param [String] ref_type
        #   Required. Type of refs to fetch.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DeveloperconnectV1::FetchGitRefsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DeveloperconnectV1::FetchGitRefsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def fetch_project_location_connection_git_repository_link_git_refs(git_repository_link, page_size: nil, page_token: nil, ref_type: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+gitRepositoryLink}:fetchGitRefs', options)
          command.response_representation = Google::Apis::DeveloperconnectV1::FetchGitRefsResponse::Representation
          command.response_class = Google::Apis::DeveloperconnectV1::FetchGitRefsResponse
          command.params['gitRepositoryLink'] = git_repository_link unless git_repository_link.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['refType'] = ref_type unless ref_type.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Fetch Pull Request details from a Git repository link.
        # @param [String] name
        #   Required. The resource name of the GitRepositoryLink in the format `projects/*/
        #   locations/*/connections/*/gitRepositoryLinks/*`.
        # @param [String] pull_request_id
        #   Required. The ID of the Pull Request.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DeveloperconnectV1::PullRequest] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DeveloperconnectV1::PullRequest]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def fetch_project_location_connection_git_repository_link_pull_request(name, pull_request_id: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}:fetchPullRequest', options)
          command.response_representation = Google::Apis::DeveloperconnectV1::PullRequest::Representation
          command.response_class = Google::Apis::DeveloperconnectV1::PullRequest
          command.params['name'] = name unless name.nil?
          command.query['pullRequestId'] = pull_request_id unless pull_request_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Fetches a list of Pull Requests from the remote repository.
        # @param [String] name
        #   Required. The GitRepositoryLink resource name in the format `projects/*/
        #   locations/*/connections/*/gitRepositoryLinks/*`.
        # @param [String] filter
        #   Optional. A filter expression that filters the pull requests returned in the
        #   response. Only a single equality comparison on `state` is supported, for
        #   example `state = "OPEN"`. Supported values are `OPEN`, `CLOSED`, and `MERGED`.
        #   `DECLINED` is only supported for SCM providers that support declining pull
        #   requests, and returns `INVALID_ARGUMENT` for GitHub, GitHub Enterprise, GitLab,
        #   and GitLab Enterprise. Other values or expressions return `INVALID_ARGUMENT`.
        #   Defaults to `state = "OPEN"` if unspecified.
        # @param [Fixnum] page_size
        #   Optional. Number of results to return in the list. Default is 20. Max is 100.
        #   A page may contain fewer than `page_size` results even when more results are
        #   available; use `next_page_token` to check for more pages.
        # @param [String] page_token
        #   Optional. A page token, received from a previous `
        #   FetchGitRepositoryLinkPullRequestList` call. Provide this to retrieve the
        #   subsequent page.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DeveloperconnectV1::FetchGitRepositoryLinkPullRequestListResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DeveloperconnectV1::FetchGitRepositoryLinkPullRequestListResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def fetch_project_location_connection_git_repository_link_pull_request_list(name, filter: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}:fetchPullRequestList', options)
          command.response_representation = Google::Apis::DeveloperconnectV1::FetchGitRepositoryLinkPullRequestListResponse::Representation
          command.response_class = Google::Apis::DeveloperconnectV1::FetchGitRepositoryLinkPullRequestListResponse
          command.params['name'] = name unless name.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Fetches read token of a given gitRepositoryLink.
        # @param [String] git_repository_link
        #   Required. The resource name of the gitRepositoryLink in the format `projects/*/
        #   locations/*/connections/*/gitRepositoryLinks/*`.
        # @param [Google::Apis::DeveloperconnectV1::FetchReadTokenRequest] fetch_read_token_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DeveloperconnectV1::FetchReadTokenResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DeveloperconnectV1::FetchReadTokenResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def fetch_git_repository_link_read_token(git_repository_link, fetch_read_token_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+gitRepositoryLink}:fetchReadToken', options)
          command.request_representation = Google::Apis::DeveloperconnectV1::FetchReadTokenRequest::Representation
          command.request_object = fetch_read_token_request_object
          command.response_representation = Google::Apis::DeveloperconnectV1::FetchReadTokenResponse::Representation
          command.response_class = Google::Apis::DeveloperconnectV1::FetchReadTokenResponse
          command.params['gitRepositoryLink'] = git_repository_link unless git_repository_link.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Fetches read/write token of a given gitRepositoryLink.
        # @param [String] git_repository_link
        #   Required. The resource name of the gitRepositoryLink in the format `projects/*/
        #   locations/*/connections/*/gitRepositoryLinks/*`.
        # @param [Google::Apis::DeveloperconnectV1::FetchReadWriteTokenRequest] fetch_read_write_token_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DeveloperconnectV1::FetchReadWriteTokenResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DeveloperconnectV1::FetchReadWriteTokenResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def fetch_git_repository_link_read_write_token(git_repository_link, fetch_read_write_token_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+gitRepositoryLink}:fetchReadWriteToken', options)
          command.request_representation = Google::Apis::DeveloperconnectV1::FetchReadWriteTokenRequest::Representation
          command.request_object = fetch_read_write_token_request_object
          command.response_representation = Google::Apis::DeveloperconnectV1::FetchReadWriteTokenResponse::Representation
          command.response_class = Google::Apis::DeveloperconnectV1::FetchReadWriteTokenResponse
          command.params['gitRepositoryLink'] = git_repository_link unless git_repository_link.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets details of a single GitRepositoryLink.
        # @param [String] name
        #   Required. Name of the resource
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DeveloperconnectV1::GitRepositoryLink] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DeveloperconnectV1::GitRepositoryLink]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_connection_git_repository_link(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}', options)
          command.response_representation = Google::Apis::DeveloperconnectV1::GitRepositoryLink::Representation
          command.response_class = Google::Apis::DeveloperconnectV1::GitRepositoryLink
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists GitRepositoryLinks in a given project, location, and connection.
        # @param [String] parent
        #   Required. Parent value for ListGitRepositoryLinksRequest.
        # @param [String] filter
        #   Optional. Filtering results.
        # @param [String] order_by
        #   Optional. Hint for how to order the results.
        # @param [Fixnum] page_size
        #   Optional. Requested page size. Server may return fewer items than requested.
        #   If unspecified, server will pick an appropriate default.
        # @param [String] page_token
        #   Optional. A token identifying a page of results the server should return.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DeveloperconnectV1::ListGitRepositoryLinksResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DeveloperconnectV1::ListGitRepositoryLinksResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_connection_git_repository_links(parent, filter: nil, order_by: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+parent}/gitRepositoryLinks', options)
          command.response_representation = Google::Apis::DeveloperconnectV1::ListGitRepositoryLinksResponse::Representation
          command.response_class = Google::Apis::DeveloperconnectV1::ListGitRepositoryLinksResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['orderBy'] = order_by unless order_by.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Modifies a Pull Request in the remote SCM repository associated with a
        # GitRepositoryLink.
        # @param [String] name
        #   Required. The GitRepositoryLink resource name in the format `projects/*/
        #   locations/*/connections/*/gitRepositoryLinks/*`.
        # @param [Google::Apis::DeveloperconnectV1::ModifyGitRepositoryLinkPullRequestRequest] modify_git_repository_link_pull_request_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DeveloperconnectV1::PullRequest] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DeveloperconnectV1::PullRequest]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def modify_project_location_connection_git_repository_link_pull_request(name, modify_git_repository_link_pull_request_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+name}:modifyPullRequest', options)
          command.request_representation = Google::Apis::DeveloperconnectV1::ModifyGitRepositoryLinkPullRequestRequest::Representation
          command.request_object = modify_git_repository_link_pull_request_request_object
          command.response_representation = Google::Apis::DeveloperconnectV1::PullRequest::Representation
          command.response_class = Google::Apis::DeveloperconnectV1::PullRequest
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Opens a Pull Request in the remote SCM repository associated with a
        # GitRepositoryLink.
        # @param [String] name
        #   Required. The GitRepositoryLink resource name in the format `projects/*/
        #   locations/*/connections/*/gitRepositoryLinks/*`.
        # @param [Google::Apis::DeveloperconnectV1::OpenGitRepositoryLinkPullRequestRequest] open_git_repository_link_pull_request_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DeveloperconnectV1::PullRequest] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DeveloperconnectV1::PullRequest]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def open_project_location_connection_git_repository_link_pull_request(name, open_git_repository_link_pull_request_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+name}:openPullRequest', options)
          command.request_representation = Google::Apis::DeveloperconnectV1::OpenGitRepositoryLinkPullRequestRequest::Representation
          command.request_object = open_git_repository_link_pull_request_request_object
          command.response_representation = Google::Apis::DeveloperconnectV1::PullRequest::Representation
          command.response_class = Google::Apis::DeveloperconnectV1::PullRequest
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # ProcessBitbucketCloudWebhook is called by the external Bitbucket Cloud
        # instances for notifying events.
        # @param [String] name
        #   Required. The GitRepositoryLink where the webhook will be received. Format: `
        #   projects/*/locations/*/connections/*/gitRepositoryLinks/*`.
        # @param [Google::Apis::DeveloperconnectV1::ProcessBitbucketCloudWebhookRequest] process_bitbucket_cloud_webhook_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DeveloperconnectV1::Empty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DeveloperconnectV1::Empty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def process_git_repository_link_bitbucket_cloud_webhook(name, process_bitbucket_cloud_webhook_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+name}:processBitbucketCloudWebhook', options)
          command.request_representation = Google::Apis::DeveloperconnectV1::ProcessBitbucketCloudWebhookRequest::Representation
          command.request_object = process_bitbucket_cloud_webhook_request_object
          command.response_representation = Google::Apis::DeveloperconnectV1::Empty::Representation
          command.response_class = Google::Apis::DeveloperconnectV1::Empty
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # ProcessBitbucketDataCenterWebhook is called by the external Bitbucket Data
        # Center instances for notifying events.
        # @param [String] name
        #   Required. The GitRepositoryLink where the webhook will be received. Format: `
        #   projects/*/locations/*/connections/*/gitRepositoryLinks/*`.
        # @param [Google::Apis::DeveloperconnectV1::ProcessBitbucketDataCenterWebhookRequest] process_bitbucket_data_center_webhook_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DeveloperconnectV1::Empty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DeveloperconnectV1::Empty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def process_git_repository_link_bitbucket_data_center_webhook(name, process_bitbucket_data_center_webhook_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+name}:processBitbucketDataCenterWebhook', options)
          command.request_representation = Google::Apis::DeveloperconnectV1::ProcessBitbucketDataCenterWebhookRequest::Representation
          command.request_object = process_bitbucket_data_center_webhook_request_object
          command.response_representation = Google::Apis::DeveloperconnectV1::Empty::Representation
          command.response_class = Google::Apis::DeveloperconnectV1::Empty
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # ProcessGitLabEnterpriseWebhook is called by the external GitLab Enterprise
        # instances for notifying events.
        # @param [String] name
        #   Required. The GitRepositoryLink resource where the webhook will be received.
        #   Format: `projects/*/locations/*/connections/*/gitRepositoryLinks/*`.
        # @param [Google::Apis::DeveloperconnectV1::ProcessGitLabEnterpriseWebhookRequest] process_git_lab_enterprise_webhook_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DeveloperconnectV1::Empty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DeveloperconnectV1::Empty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def process_git_repository_link_git_lab_enterprise_webhook(name, process_git_lab_enterprise_webhook_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+name}:processGitLabEnterpriseWebhook', options)
          command.request_representation = Google::Apis::DeveloperconnectV1::ProcessGitLabEnterpriseWebhookRequest::Representation
          command.request_object = process_git_lab_enterprise_webhook_request_object
          command.response_representation = Google::Apis::DeveloperconnectV1::Empty::Representation
          command.response_class = Google::Apis::DeveloperconnectV1::Empty
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # ProcessGitLabWebhook is called by the GitLab.com for notifying events.
        # @param [String] name
        #   Required. The GitRepositoryLink resource where the webhook will be received.
        #   Format: `projects/*/locations/*/connections/*/gitRepositoryLinks/*`.
        # @param [Google::Apis::DeveloperconnectV1::ProcessGitLabWebhookRequest] process_git_lab_webhook_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DeveloperconnectV1::Empty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DeveloperconnectV1::Empty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def process_git_repository_link_git_lab_webhook(name, process_git_lab_webhook_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+name}:processGitLabWebhook', options)
          command.request_representation = Google::Apis::DeveloperconnectV1::ProcessGitLabWebhookRequest::Representation
          command.request_object = process_git_lab_webhook_request_object
          command.response_representation = Google::Apis::DeveloperconnectV1::Empty::Representation
          command.response_class = Google::Apis::DeveloperconnectV1::Empty
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a new InsightsConfig in a given project and location.
        # @param [String] parent
        #   Required. Value for parent.
        # @param [Google::Apis::DeveloperconnectV1::InsightsConfig] insights_config_object
        # @param [String] insights_config_id
        #   Required. ID of the requesting InsightsConfig.
        # @param [Boolean] validate_only
        #   Optional. If set, validate the request, but do not actually post it.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DeveloperconnectV1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DeveloperconnectV1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_location_insights_config(parent, insights_config_object = nil, insights_config_id: nil, validate_only: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+parent}/insightsConfigs', options)
          command.request_representation = Google::Apis::DeveloperconnectV1::InsightsConfig::Representation
          command.request_object = insights_config_object
          command.response_representation = Google::Apis::DeveloperconnectV1::Operation::Representation
          command.response_class = Google::Apis::DeveloperconnectV1::Operation
          command.params['parent'] = parent unless parent.nil?
          command.query['insightsConfigId'] = insights_config_id unless insights_config_id.nil?
          command.query['validateOnly'] = validate_only unless validate_only.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes a single Insight.
        # @param [String] name
        #   Required. Value for parent.
        # @param [String] etag
        #   Optional. This checksum is computed by the server based on the value of other
        #   fields, and may be sent on update and delete requests to ensure the client has
        #   an up-to-date value before proceeding.
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
        # @param [Boolean] validate_only
        #   Optional. If set, validate the request, but do not actually post it.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DeveloperconnectV1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DeveloperconnectV1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_location_insights_config(name, etag: nil, request_id: nil, validate_only: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1/{+name}', options)
          command.response_representation = Google::Apis::DeveloperconnectV1::Operation::Representation
          command.response_class = Google::Apis::DeveloperconnectV1::Operation
          command.params['name'] = name unless name.nil?
          command.query['etag'] = etag unless etag.nil?
          command.query['requestId'] = request_id unless request_id.nil?
          command.query['validateOnly'] = validate_only unless validate_only.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets details of a single Insight.
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
        # @yieldparam result [Google::Apis::DeveloperconnectV1::InsightsConfig] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DeveloperconnectV1::InsightsConfig]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_insights_config(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}', options)
          command.response_representation = Google::Apis::DeveloperconnectV1::InsightsConfig::Representation
          command.response_class = Google::Apis::DeveloperconnectV1::InsightsConfig
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists InsightsConfigs in a given project and location.
        # @param [String] parent
        #   Required. Parent value for ListInsightsConfigsRequest.
        # @param [String] filter
        #   Optional. Filtering results. See https://google.aip.dev/160 for more details.
        #   Filter string, adhering to the rules in https://google.aip.dev/160. List only
        #   InsightsConfigs matching the filter. If filter is empty, all InsightsConfigs
        #   are listed.
        # @param [String] order_by
        #   Optional. Hint for how to order the results.
        # @param [Fixnum] page_size
        #   Optional. Requested page size. Server may return fewer items than requested.
        #   If unspecified, server will pick an appropriate default.
        # @param [String] page_token
        #   Optional. A token identifying a page of results the server should return.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DeveloperconnectV1::ListInsightsConfigsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DeveloperconnectV1::ListInsightsConfigsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_insights_configs(parent, filter: nil, order_by: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+parent}/insightsConfigs', options)
          command.response_representation = Google::Apis::DeveloperconnectV1::ListInsightsConfigsResponse::Representation
          command.response_class = Google::Apis::DeveloperconnectV1::ListInsightsConfigsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['orderBy'] = order_by unless order_by.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates the parameters of a single InsightsConfig.
        # @param [String] name
        #   Identifier. The name of the InsightsConfig. Format: projects/`project`/
        #   locations/`location`/insightsConfigs/`insightsConfig`
        # @param [Google::Apis::DeveloperconnectV1::InsightsConfig] insights_config_object
        # @param [Boolean] allow_missing
        #   Optional. If set to true, and the insightsConfig is not found a new
        #   insightsConfig will be created. In this situation `update_mask` is ignored.
        #   The creation will succeed only if the input insightsConfig has all the
        #   necessary information (e.g a github_config with both user_oauth_token and
        #   installation_id properties).
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
        # @param [Boolean] validate_only
        #   Optional. If set, validate the request, but do not actually post it.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DeveloperconnectV1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DeveloperconnectV1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_project_location_insights_config(name, insights_config_object = nil, allow_missing: nil, request_id: nil, validate_only: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v1/{+name}', options)
          command.request_representation = Google::Apis::DeveloperconnectV1::InsightsConfig::Representation
          command.request_object = insights_config_object
          command.response_representation = Google::Apis::DeveloperconnectV1::Operation::Representation
          command.response_class = Google::Apis::DeveloperconnectV1::Operation
          command.params['name'] = name unless name.nil?
          command.query['allowMissing'] = allow_missing unless allow_missing.nil?
          command.query['requestId'] = request_id unless request_id.nil?
          command.query['validateOnly'] = validate_only unless validate_only.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets a single Deployment Event.
        # @param [String] name
        #   Required. The name of the deployment event to retrieve. Format: projects/`
        #   project`/locations/`location`/insightsConfigs/`insights_config`/
        #   deploymentEvents/`uuid`
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DeveloperconnectV1::DeploymentEvent] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DeveloperconnectV1::DeploymentEvent]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_insights_config_deployment_event(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}', options)
          command.response_representation = Google::Apis::DeveloperconnectV1::DeploymentEvent::Representation
          command.response_class = Google::Apis::DeveloperconnectV1::DeploymentEvent
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists Deployment Events in a given insights config.
        # @param [String] parent
        #   Required. The parent insights config that owns this collection of deployment
        #   events. Format: projects/`project`/locations/`location`/insightsConfigs/`
        #   insights_config`
        # @param [String] filter
        #   Optional. Filter expression that matches a subset of the DeploymentEvents.
        #   https://google.aip.dev/160.
        # @param [String] order_by
        #   Optional. Field to use to order the list of DeploymentEvents. Expects AIP-132
        #   format "field_name asc" or "field_name desc", e.g. "deploy_time desc"
        #   Supported fields for ordering are: deploy_time, update_time. Currently, only
        #   sorting by a single field is supported. If this field is not provided, the
        #   list will be sorted by "deploy_time desc". For more details on the ordering
        #   syntax, see https://google.aip.dev/132#ordering.
        # @param [Fixnum] page_size
        #   Optional. The maximum number of deployment events to return. The service may
        #   return fewer than this value. If unspecified, at most 50 deployment events
        #   will be returned. The maximum value is 1000; values above 1000 will be coerced
        #   to 1000.
        # @param [String] page_token
        #   Optional. A page token, received from a previous `ListDeploymentEvents` call.
        #   Provide this to retrieve the subsequent page. When paginating, all other
        #   parameters provided to `ListDeploymentEvents` must match the call that
        #   provided the page token.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DeveloperconnectV1::ListDeploymentEventsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DeveloperconnectV1::ListDeploymentEventsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_insights_config_deployment_events(parent, filter: nil, order_by: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+parent}/deploymentEvents', options)
          command.response_representation = Google::Apis::DeveloperconnectV1::ListDeploymentEventsResponse::Representation
          command.response_class = Google::Apis::DeveloperconnectV1::ListDeploymentEventsResponse
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
        # an operation with an Operation.error value with a google.rpc.Status.code of `1`
        # , corresponding to `Code.CANCELLED`.
        # @param [String] name
        #   The name of the operation resource to be cancelled.
        # @param [Google::Apis::DeveloperconnectV1::CancelOperationRequest] cancel_operation_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DeveloperconnectV1::Empty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DeveloperconnectV1::Empty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def cancel_operation(name, cancel_operation_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+name}:cancel', options)
          command.request_representation = Google::Apis::DeveloperconnectV1::CancelOperationRequest::Representation
          command.request_object = cancel_operation_request_object
          command.response_representation = Google::Apis::DeveloperconnectV1::Empty::Representation
          command.response_class = Google::Apis::DeveloperconnectV1::Empty
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
        # @yieldparam result [Google::Apis::DeveloperconnectV1::Empty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DeveloperconnectV1::Empty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_location_operation(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1/{+name}', options)
          command.response_representation = Google::Apis::DeveloperconnectV1::Empty::Representation
          command.response_class = Google::Apis::DeveloperconnectV1::Empty
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
        # @yieldparam result [Google::Apis::DeveloperconnectV1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DeveloperconnectV1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_operation(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}', options)
          command.response_representation = Google::Apis::DeveloperconnectV1::Operation::Representation
          command.response_class = Google::Apis::DeveloperconnectV1::Operation
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
        # @param [Boolean] return_partial_success
        #   When set to `true`, operations that are reachable are returned as normal, and
        #   those that are unreachable are returned in the ListOperationsResponse.
        #   unreachable field. This can only be `true` when reading across collections.
        #   For example, when `parent` is set to `"projects/example/locations/-"`. This
        #   field is not supported by default and will result in an `UNIMPLEMENTED` error
        #   if set unless explicitly documented otherwise in service or product specific
        #   documentation.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DeveloperconnectV1::ListOperationsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DeveloperconnectV1::ListOperationsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_operations(name, filter: nil, page_size: nil, page_token: nil, return_partial_success: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}/operations', options)
          command.response_representation = Google::Apis::DeveloperconnectV1::ListOperationsResponse::Representation
          command.response_class = Google::Apis::DeveloperconnectV1::ListOperationsResponse
          command.params['name'] = name unless name.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['returnPartialSuccess'] = return_partial_success unless return_partial_success.nil?
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
