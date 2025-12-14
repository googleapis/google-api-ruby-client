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
    module SaasservicemgmtV1beta1
      # SaaS Runtime API
      #
      # Model, deploy, and operate your SaaS at scale.
      #
      # @example
      #    require 'google/apis/saasservicemgmt_v1beta1'
      #
      #    Saasservicemgmt = Google::Apis::SaasservicemgmtV1beta1 # Alias the module
      #    service = Saasservicemgmt::SaaSServiceManagementService.new
      #
      # @see https://cloud.google.com/saas-runtime/docs
      class SaaSServiceManagementService < Google::Apis::Core::BaseService
        DEFAULT_ENDPOINT_TEMPLATE = "https://saasservicemgmt.$UNIVERSE_DOMAIN$/"

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
                client_name: 'google-apis-saasservicemgmt_v1beta1',
                client_version: Google::Apis::SaasservicemgmtV1beta1::GEM_VERSION)
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
        # @yieldparam result [Google::Apis::SaasservicemgmtV1beta1::GoogleCloudLocationLocation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::SaasservicemgmtV1beta1::GoogleCloudLocationLocation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta1/{+name}', options)
          command.response_representation = Google::Apis::SaasservicemgmtV1beta1::GoogleCloudLocationLocation::Representation
          command.response_class = Google::Apis::SaasservicemgmtV1beta1::GoogleCloudLocationLocation
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists information about the supported locations for this service.
        # @param [String] name
        #   The resource that owns the locations collection, if applicable.
        # @param [Array<String>, String] extra_location_types
        #   Optional. Do not use this field. It is unsupported and is ignored unless
        #   explicitly documented otherwise. This is primarily for internal usage.
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
        # @yieldparam result [Google::Apis::SaasservicemgmtV1beta1::ListLocationsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::SaasservicemgmtV1beta1::ListLocationsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_locations(name, extra_location_types: nil, filter: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta1/{+name}/locations', options)
          command.response_representation = Google::Apis::SaasservicemgmtV1beta1::ListLocationsResponse::Representation
          command.response_class = Google::Apis::SaasservicemgmtV1beta1::ListLocationsResponse
          command.params['name'] = name unless name.nil?
          command.query['extraLocationTypes'] = extra_location_types unless extra_location_types.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Create a new release.
        # @param [String] parent
        #   Required. The parent of the release.
        # @param [Google::Apis::SaasservicemgmtV1beta1::Release] release_object
        # @param [String] release_id
        #   Required. The ID value for the new release.
        # @param [String] request_id
        #   An optional request ID to identify requests. Specify a unique request ID so
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
        #   If "validate_only" is set to true, the service will try to validate that this
        #   request would succeed, but will not actually make changes.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::SaasservicemgmtV1beta1::Release] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::SaasservicemgmtV1beta1::Release]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_location_release(parent, release_object = nil, release_id: nil, request_id: nil, validate_only: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1beta1/{+parent}/releases', options)
          command.request_representation = Google::Apis::SaasservicemgmtV1beta1::Release::Representation
          command.request_object = release_object
          command.response_representation = Google::Apis::SaasservicemgmtV1beta1::Release::Representation
          command.response_class = Google::Apis::SaasservicemgmtV1beta1::Release
          command.params['parent'] = parent unless parent.nil?
          command.query['releaseId'] = release_id unless release_id.nil?
          command.query['requestId'] = request_id unless request_id.nil?
          command.query['validateOnly'] = validate_only unless validate_only.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Delete a single release.
        # @param [String] name
        #   Required. The resource name of the resource within a service.
        # @param [String] etag
        #   The etag known to the client for the expected state of the release. This is
        #   used with state-changing methods to prevent accidental overwrites when
        #   multiple user agents might be acting in parallel on the same resource. An etag
        #   wildcard provide optimistic concurrency based on the expected existence of the
        #   release. The Any wildcard (`*`) requires that the resource must already exists,
        #   and the Not Any wildcard (`!*`) requires that it must not.
        # @param [String] request_id
        #   An optional request ID to identify requests. Specify a unique request ID so
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
        #   If "validate_only" is set to true, the service will try to validate that this
        #   request would succeed, but will not actually make changes.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::SaasservicemgmtV1beta1::Empty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::SaasservicemgmtV1beta1::Empty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_location_release(name, etag: nil, request_id: nil, validate_only: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1beta1/{+name}', options)
          command.response_representation = Google::Apis::SaasservicemgmtV1beta1::Empty::Representation
          command.response_class = Google::Apis::SaasservicemgmtV1beta1::Empty
          command.params['name'] = name unless name.nil?
          command.query['etag'] = etag unless etag.nil?
          command.query['requestId'] = request_id unless request_id.nil?
          command.query['validateOnly'] = validate_only unless validate_only.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Retrieve a single release.
        # @param [String] name
        #   Required. The resource name of the resource within a service.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::SaasservicemgmtV1beta1::Release] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::SaasservicemgmtV1beta1::Release]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_release(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta1/{+name}', options)
          command.response_representation = Google::Apis::SaasservicemgmtV1beta1::Release::Representation
          command.response_class = Google::Apis::SaasservicemgmtV1beta1::Release
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Retrieve a collection of releases.
        # @param [String] parent
        #   Required. The parent of the release.
        # @param [String] filter
        #   Filter the list as specified in https://google.aip.dev/160.
        # @param [String] order_by
        #   Order results as specified in https://google.aip.dev/132.
        # @param [Fixnum] page_size
        #   The maximum number of releases to send per page.
        # @param [String] page_token
        #   The page token: If the next_page_token from a previous response is provided,
        #   this request will send the subsequent page.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::SaasservicemgmtV1beta1::ListReleasesResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::SaasservicemgmtV1beta1::ListReleasesResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_releases(parent, filter: nil, order_by: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta1/{+parent}/releases', options)
          command.response_representation = Google::Apis::SaasservicemgmtV1beta1::ListReleasesResponse::Representation
          command.response_class = Google::Apis::SaasservicemgmtV1beta1::ListReleasesResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['orderBy'] = order_by unless order_by.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Update a single release.
        # @param [String] name
        #   Identifier. The resource name (full URI of the resource) following the
        #   standard naming scheme: "projects/`project`/locations/`location`/releases/`
        #   release`"
        # @param [Google::Apis::SaasservicemgmtV1beta1::Release] release_object
        # @param [String] request_id
        #   An optional request ID to identify requests. Specify a unique request ID so
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
        #   Field mask is used to specify the fields to be overwritten in the Release
        #   resource by the update. The fields specified in the update_mask are relative
        #   to the resource, not the full request. A field will be overwritten if it is in
        #   the mask. If the user does not provide a mask then all fields in the Release
        #   will be overwritten.
        # @param [Boolean] validate_only
        #   If "validate_only" is set to true, the service will try to validate that this
        #   request would succeed, but will not actually make changes.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::SaasservicemgmtV1beta1::Release] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::SaasservicemgmtV1beta1::Release]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_project_location_release(name, release_object = nil, request_id: nil, update_mask: nil, validate_only: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v1beta1/{+name}', options)
          command.request_representation = Google::Apis::SaasservicemgmtV1beta1::Release::Representation
          command.request_object = release_object
          command.response_representation = Google::Apis::SaasservicemgmtV1beta1::Release::Representation
          command.response_class = Google::Apis::SaasservicemgmtV1beta1::Release
          command.params['name'] = name unless name.nil?
          command.query['requestId'] = request_id unless request_id.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['validateOnly'] = validate_only unless validate_only.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Create a new rollout kind.
        # @param [String] parent
        #   Required. The parent of the rollout kind.
        # @param [Google::Apis::SaasservicemgmtV1beta1::RolloutKind] rollout_kind_object
        # @param [String] request_id
        #   An optional request ID to identify requests. Specify a unique request ID so
        #   that if you must retry your request, the server will know to ignore the
        #   request if it has already been completed. The server will guarantee that for
        #   at least 60 minutes since the first request. For example, consider a situation
        #   where you make an initial request and the request times out. If you make the
        #   request again with the same request ID, the server can check if original
        #   operation with the same request ID was received, and if so, will ignore the
        #   second request. This prevents clients from accidentally creating duplicate
        #   commitments. The request ID must be a valid UUID with the exception that zero
        #   UUID is not supported (00000000-0000-0000-0000-000000000000).
        # @param [String] rollout_kind_id
        #   Required. The ID value for the new rollout kind.
        # @param [Boolean] validate_only
        #   If "validate_only" is set to true, the service will try to validate that this
        #   request would succeed, but will not actually make changes.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::SaasservicemgmtV1beta1::RolloutKind] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::SaasservicemgmtV1beta1::RolloutKind]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_location_rollout_kind(parent, rollout_kind_object = nil, request_id: nil, rollout_kind_id: nil, validate_only: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1beta1/{+parent}/rolloutKinds', options)
          command.request_representation = Google::Apis::SaasservicemgmtV1beta1::RolloutKind::Representation
          command.request_object = rollout_kind_object
          command.response_representation = Google::Apis::SaasservicemgmtV1beta1::RolloutKind::Representation
          command.response_class = Google::Apis::SaasservicemgmtV1beta1::RolloutKind
          command.params['parent'] = parent unless parent.nil?
          command.query['requestId'] = request_id unless request_id.nil?
          command.query['rolloutKindId'] = rollout_kind_id unless rollout_kind_id.nil?
          command.query['validateOnly'] = validate_only unless validate_only.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Delete a single rollout kind.
        # @param [String] name
        #   Required. The resource name of the resource within a service.
        # @param [String] etag
        #   The etag known to the client for the expected state of the rollout kind. This
        #   is used with state-changing methods to prevent accidental overwrites when
        #   multiple user agents might be acting in parallel on the same resource. An etag
        #   wildcard provide optimistic concurrency based on the expected existence of the
        #   rollout kind. The Any wildcard (`*`) requires that the resource must already
        #   exists, and the Not Any wildcard (`!*`) requires that it must not.
        # @param [String] request_id
        #   An optional request ID to identify requests. Specify a unique request ID so
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
        #   If "validate_only" is set to true, the service will try to validate that this
        #   request would succeed, but will not actually make changes.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::SaasservicemgmtV1beta1::Empty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::SaasservicemgmtV1beta1::Empty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_location_rollout_kind(name, etag: nil, request_id: nil, validate_only: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1beta1/{+name}', options)
          command.response_representation = Google::Apis::SaasservicemgmtV1beta1::Empty::Representation
          command.response_class = Google::Apis::SaasservicemgmtV1beta1::Empty
          command.params['name'] = name unless name.nil?
          command.query['etag'] = etag unless etag.nil?
          command.query['requestId'] = request_id unless request_id.nil?
          command.query['validateOnly'] = validate_only unless validate_only.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Retrieve a single rollout kind.
        # @param [String] name
        #   Required. The resource name of the resource within a service.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::SaasservicemgmtV1beta1::RolloutKind] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::SaasservicemgmtV1beta1::RolloutKind]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_rollout_kind(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta1/{+name}', options)
          command.response_representation = Google::Apis::SaasservicemgmtV1beta1::RolloutKind::Representation
          command.response_class = Google::Apis::SaasservicemgmtV1beta1::RolloutKind
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Retrieve a collection of rollout kinds.
        # @param [String] parent
        #   Required. The parent of the rollout kind.
        # @param [String] filter
        #   Filter the list as specified in https://google.aip.dev/160.
        # @param [String] order_by
        #   Order results as specified in https://google.aip.dev/132.
        # @param [Fixnum] page_size
        #   The maximum number of rollout kinds to send per page.
        # @param [String] page_token
        #   The page token: If the next_page_token from a previous response is provided,
        #   this request will send the subsequent page.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::SaasservicemgmtV1beta1::ListRolloutKindsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::SaasservicemgmtV1beta1::ListRolloutKindsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_rollout_kinds(parent, filter: nil, order_by: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta1/{+parent}/rolloutKinds', options)
          command.response_representation = Google::Apis::SaasservicemgmtV1beta1::ListRolloutKindsResponse::Representation
          command.response_class = Google::Apis::SaasservicemgmtV1beta1::ListRolloutKindsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['orderBy'] = order_by unless order_by.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Update a single rollout kind.
        # @param [String] name
        #   Identifier. The resource name (full URI of the resource) following the
        #   standard naming scheme: "projects/`project`/locations/`location`/rolloutKinds/`
        #   rollout_kind_id`"
        # @param [Google::Apis::SaasservicemgmtV1beta1::RolloutKind] rollout_kind_object
        # @param [String] request_id
        #   An optional request ID to identify requests. Specify a unique request ID so
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
        #   Field mask is used to specify the fields to be overwritten in the RolloutKind
        #   resource by the update. The fields specified in the update_mask are relative
        #   to the resource, not the full request. A field will be overwritten if it is in
        #   the mask. If the user does not provide a mask then all fields in the
        #   RolloutKind will be overwritten.
        # @param [Boolean] validate_only
        #   If "validate_only" is set to true, the service will try to validate that this
        #   request would succeed, but will not actually make changes.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::SaasservicemgmtV1beta1::RolloutKind] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::SaasservicemgmtV1beta1::RolloutKind]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_project_location_rollout_kind(name, rollout_kind_object = nil, request_id: nil, update_mask: nil, validate_only: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v1beta1/{+name}', options)
          command.request_representation = Google::Apis::SaasservicemgmtV1beta1::RolloutKind::Representation
          command.request_object = rollout_kind_object
          command.response_representation = Google::Apis::SaasservicemgmtV1beta1::RolloutKind::Representation
          command.response_class = Google::Apis::SaasservicemgmtV1beta1::RolloutKind
          command.params['name'] = name unless name.nil?
          command.query['requestId'] = request_id unless request_id.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['validateOnly'] = validate_only unless validate_only.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Create a new rollout.
        # @param [String] parent
        #   Required. The parent of the rollout.
        # @param [Google::Apis::SaasservicemgmtV1beta1::Rollout] rollout_object
        # @param [String] request_id
        #   An optional request ID to identify requests. Specify a unique request ID so
        #   that if you must retry your request, the server will know to ignore the
        #   request if it has already been completed. The server will guarantee that for
        #   at least 60 minutes since the first request. For example, consider a situation
        #   where you make an initial request and the request times out. If you make the
        #   request again with the same request ID, the server can check if original
        #   operation with the same request ID was received, and if so, will ignore the
        #   second request. This prevents clients from accidentally creating duplicate
        #   commitments. The request ID must be a valid UUID with the exception that zero
        #   UUID is not supported (00000000-0000-0000-0000-000000000000).
        # @param [String] rollout_id
        #   Required. The ID value for the new rollout.
        # @param [Boolean] validate_only
        #   If "validate_only" is set to true, the service will try to validate that this
        #   request would succeed, but will not actually make changes.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::SaasservicemgmtV1beta1::Rollout] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::SaasservicemgmtV1beta1::Rollout]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_location_rollout(parent, rollout_object = nil, request_id: nil, rollout_id: nil, validate_only: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1beta1/{+parent}/rollouts', options)
          command.request_representation = Google::Apis::SaasservicemgmtV1beta1::Rollout::Representation
          command.request_object = rollout_object
          command.response_representation = Google::Apis::SaasservicemgmtV1beta1::Rollout::Representation
          command.response_class = Google::Apis::SaasservicemgmtV1beta1::Rollout
          command.params['parent'] = parent unless parent.nil?
          command.query['requestId'] = request_id unless request_id.nil?
          command.query['rolloutId'] = rollout_id unless rollout_id.nil?
          command.query['validateOnly'] = validate_only unless validate_only.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Delete a single rollout.
        # @param [String] name
        #   Required. The resource name of the resource within a service.
        # @param [String] etag
        #   The etag known to the client for the expected state of the rollout. This is
        #   used with state-changing methods to prevent accidental overwrites when
        #   multiple user agents might be acting in parallel on the same resource. An etag
        #   wildcard provide optimistic concurrency based on the expected existence of the
        #   rollout. The Any wildcard (`*`) requires that the resource must already exists,
        #   and the Not Any wildcard (`!*`) requires that it must not.
        # @param [String] request_id
        #   An optional request ID to identify requests. Specify a unique request ID so
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
        #   If "validate_only" is set to true, the service will try to validate that this
        #   request would succeed, but will not actually make changes.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::SaasservicemgmtV1beta1::Empty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::SaasservicemgmtV1beta1::Empty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_location_rollout(name, etag: nil, request_id: nil, validate_only: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1beta1/{+name}', options)
          command.response_representation = Google::Apis::SaasservicemgmtV1beta1::Empty::Representation
          command.response_class = Google::Apis::SaasservicemgmtV1beta1::Empty
          command.params['name'] = name unless name.nil?
          command.query['etag'] = etag unless etag.nil?
          command.query['requestId'] = request_id unless request_id.nil?
          command.query['validateOnly'] = validate_only unless validate_only.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Retrieve a single rollout.
        # @param [String] name
        #   Required. The resource name of the resource within a service.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::SaasservicemgmtV1beta1::Rollout] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::SaasservicemgmtV1beta1::Rollout]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_rollout(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta1/{+name}', options)
          command.response_representation = Google::Apis::SaasservicemgmtV1beta1::Rollout::Representation
          command.response_class = Google::Apis::SaasservicemgmtV1beta1::Rollout
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Retrieve a collection of rollouts.
        # @param [String] parent
        #   Required. The parent of the rollout.
        # @param [String] filter
        #   Filter the list as specified in https://google.aip.dev/160.
        # @param [String] order_by
        #   Order results as specified in https://google.aip.dev/132.
        # @param [Fixnum] page_size
        #   The maximum number of rollouts to send per page.
        # @param [String] page_token
        #   The page token: If the next_page_token from a previous response is provided,
        #   this request will send the subsequent page.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::SaasservicemgmtV1beta1::ListRolloutsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::SaasservicemgmtV1beta1::ListRolloutsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_rollouts(parent, filter: nil, order_by: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta1/{+parent}/rollouts', options)
          command.response_representation = Google::Apis::SaasservicemgmtV1beta1::ListRolloutsResponse::Representation
          command.response_class = Google::Apis::SaasservicemgmtV1beta1::ListRolloutsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['orderBy'] = order_by unless order_by.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Update a single rollout.
        # @param [String] name
        #   Identifier. The resource name (full URI of the resource) following the
        #   standard naming scheme: "projects/`project`/locations/`location`/rollout/`
        #   rollout_id`"
        # @param [Google::Apis::SaasservicemgmtV1beta1::Rollout] rollout_object
        # @param [String] request_id
        #   An optional request ID to identify requests. Specify a unique request ID so
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
        #   Field mask is used to specify the fields to be overwritten in the Rollout
        #   resource by the update. The fields specified in the update_mask are relative
        #   to the resource, not the full request. A field will be overwritten if it is in
        #   the mask. If the user does not provide a mask then all fields in the Rollout
        #   will be overwritten.
        # @param [Boolean] validate_only
        #   If "validate_only" is set to true, the service will try to validate that this
        #   request would succeed, but will not actually make changes.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::SaasservicemgmtV1beta1::Rollout] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::SaasservicemgmtV1beta1::Rollout]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_project_location_rollout(name, rollout_object = nil, request_id: nil, update_mask: nil, validate_only: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v1beta1/{+name}', options)
          command.request_representation = Google::Apis::SaasservicemgmtV1beta1::Rollout::Representation
          command.request_object = rollout_object
          command.response_representation = Google::Apis::SaasservicemgmtV1beta1::Rollout::Representation
          command.response_class = Google::Apis::SaasservicemgmtV1beta1::Rollout
          command.params['name'] = name unless name.nil?
          command.query['requestId'] = request_id unless request_id.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['validateOnly'] = validate_only unless validate_only.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Create a new saas.
        # @param [String] parent
        #   Required. The parent of the saas.
        # @param [Google::Apis::SaasservicemgmtV1beta1::Saas] saas_object
        # @param [String] request_id
        #   An optional request ID to identify requests. Specify a unique request ID so
        #   that if you must retry your request, the server will know to ignore the
        #   request if it has already been completed. The server will guarantee that for
        #   at least 60 minutes since the first request. For example, consider a situation
        #   where you make an initial request and the request times out. If you make the
        #   request again with the same request ID, the server can check if original
        #   operation with the same request ID was received, and if so, will ignore the
        #   second request. This prevents clients from accidentally creating duplicate
        #   commitments. The request ID must be a valid UUID with the exception that zero
        #   UUID is not supported (00000000-0000-0000-0000-000000000000).
        # @param [String] saas_id
        #   Required. The ID value for the new saas.
        # @param [Boolean] validate_only
        #   If "validate_only" is set to true, the service will try to validate that this
        #   request would succeed, but will not actually make changes.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::SaasservicemgmtV1beta1::Saas] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::SaasservicemgmtV1beta1::Saas]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_location_saa(parent, saas_object = nil, request_id: nil, saas_id: nil, validate_only: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1beta1/{+parent}/saas', options)
          command.request_representation = Google::Apis::SaasservicemgmtV1beta1::Saas::Representation
          command.request_object = saas_object
          command.response_representation = Google::Apis::SaasservicemgmtV1beta1::Saas::Representation
          command.response_class = Google::Apis::SaasservicemgmtV1beta1::Saas
          command.params['parent'] = parent unless parent.nil?
          command.query['requestId'] = request_id unless request_id.nil?
          command.query['saasId'] = saas_id unless saas_id.nil?
          command.query['validateOnly'] = validate_only unless validate_only.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Delete a single saas.
        # @param [String] name
        #   Required. The resource name of the resource within a service.
        # @param [String] etag
        #   The etag known to the client for the expected state of the saas. This is used
        #   with state-changing methods to prevent accidental overwrites when multiple
        #   user agents might be acting in parallel on the same resource. An etag wildcard
        #   provide optimistic concurrency based on the expected existence of the saas.
        #   The Any wildcard (`*`) requires that the resource must already exists, and the
        #   Not Any wildcard (`!*`) requires that it must not.
        # @param [String] request_id
        #   An optional request ID to identify requests. Specify a unique request ID so
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
        #   If "validate_only" is set to true, the service will try to validate that this
        #   request would succeed, but will not actually make changes.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::SaasservicemgmtV1beta1::Empty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::SaasservicemgmtV1beta1::Empty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_location_saa(name, etag: nil, request_id: nil, validate_only: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1beta1/{+name}', options)
          command.response_representation = Google::Apis::SaasservicemgmtV1beta1::Empty::Representation
          command.response_class = Google::Apis::SaasservicemgmtV1beta1::Empty
          command.params['name'] = name unless name.nil?
          command.query['etag'] = etag unless etag.nil?
          command.query['requestId'] = request_id unless request_id.nil?
          command.query['validateOnly'] = validate_only unless validate_only.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Retrieve a single saas.
        # @param [String] name
        #   Required. The resource name of the resource within a service.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::SaasservicemgmtV1beta1::Saas] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::SaasservicemgmtV1beta1::Saas]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_saa(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta1/{+name}', options)
          command.response_representation = Google::Apis::SaasservicemgmtV1beta1::Saas::Representation
          command.response_class = Google::Apis::SaasservicemgmtV1beta1::Saas
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Retrieve a collection of saas.
        # @param [String] parent
        #   Required. The parent of the saas.
        # @param [String] filter
        #   Filter the list as specified in https://google.aip.dev/160.
        # @param [String] order_by
        #   Order results as specified in https://google.aip.dev/132.
        # @param [Fixnum] page_size
        #   The maximum number of saas to send per page.
        # @param [String] page_token
        #   The page token: If the next_page_token from a previous response is provided,
        #   this request will send the subsequent page.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::SaasservicemgmtV1beta1::ListSaasResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::SaasservicemgmtV1beta1::ListSaasResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_saas(parent, filter: nil, order_by: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta1/{+parent}/saas', options)
          command.response_representation = Google::Apis::SaasservicemgmtV1beta1::ListSaasResponse::Representation
          command.response_class = Google::Apis::SaasservicemgmtV1beta1::ListSaasResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['orderBy'] = order_by unless order_by.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Update a single saas.
        # @param [String] name
        #   Identifier. The resource name (full URI of the resource) following the
        #   standard naming scheme: "projects/`project`/locations/`location`/saas/`saas`"
        # @param [Google::Apis::SaasservicemgmtV1beta1::Saas] saas_object
        # @param [String] request_id
        #   An optional request ID to identify requests. Specify a unique request ID so
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
        #   Field mask is used to specify the fields to be overwritten in the Saas
        #   resource by the update. The fields specified in the update_mask are relative
        #   to the resource, not the full request. A field will be overwritten if it is in
        #   the mask. If the user does not provide a mask then all fields in the Saas will
        #   be overwritten.
        # @param [Boolean] validate_only
        #   If "validate_only" is set to true, the service will try to validate that this
        #   request would succeed, but will not actually make changes.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::SaasservicemgmtV1beta1::Saas] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::SaasservicemgmtV1beta1::Saas]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_project_location_saa(name, saas_object = nil, request_id: nil, update_mask: nil, validate_only: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v1beta1/{+name}', options)
          command.request_representation = Google::Apis::SaasservicemgmtV1beta1::Saas::Representation
          command.request_object = saas_object
          command.response_representation = Google::Apis::SaasservicemgmtV1beta1::Saas::Representation
          command.response_class = Google::Apis::SaasservicemgmtV1beta1::Saas
          command.params['name'] = name unless name.nil?
          command.query['requestId'] = request_id unless request_id.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['validateOnly'] = validate_only unless validate_only.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Create a new tenant.
        # @param [String] parent
        #   Required. The parent of the tenant.
        # @param [Google::Apis::SaasservicemgmtV1beta1::Tenant] tenant_object
        # @param [String] request_id
        #   An optional request ID to identify requests. Specify a unique request ID so
        #   that if you must retry your request, the server will know to ignore the
        #   request if it has already been completed. The server will guarantee that for
        #   at least 60 minutes since the first request. For example, consider a situation
        #   where you make an initial request and the request times out. If you make the
        #   request again with the same request ID, the server can check if original
        #   operation with the same request ID was received, and if so, will ignore the
        #   second request. This prevents clients from accidentally creating duplicate
        #   commitments. The request ID must be a valid UUID with the exception that zero
        #   UUID is not supported (00000000-0000-0000-0000-000000000000).
        # @param [String] tenant_id
        #   Required. The ID value for the new tenant.
        # @param [Boolean] validate_only
        #   If "validate_only" is set to true, the service will try to validate that this
        #   request would succeed, but will not actually make changes.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::SaasservicemgmtV1beta1::Tenant] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::SaasservicemgmtV1beta1::Tenant]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_location_tenant(parent, tenant_object = nil, request_id: nil, tenant_id: nil, validate_only: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1beta1/{+parent}/tenants', options)
          command.request_representation = Google::Apis::SaasservicemgmtV1beta1::Tenant::Representation
          command.request_object = tenant_object
          command.response_representation = Google::Apis::SaasservicemgmtV1beta1::Tenant::Representation
          command.response_class = Google::Apis::SaasservicemgmtV1beta1::Tenant
          command.params['parent'] = parent unless parent.nil?
          command.query['requestId'] = request_id unless request_id.nil?
          command.query['tenantId'] = tenant_id unless tenant_id.nil?
          command.query['validateOnly'] = validate_only unless validate_only.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Delete a single tenant.
        # @param [String] name
        #   Required. The resource name of the resource within a service.
        # @param [String] etag
        #   The etag known to the client for the expected state of the tenant. This is
        #   used with state-changing methods to prevent accidental overwrites when
        #   multiple user agents might be acting in parallel on the same resource. An etag
        #   wildcard provide optimistic concurrency based on the expected existence of the
        #   tenant. The Any wildcard (`*`) requires that the resource must already exists,
        #   and the Not Any wildcard (`!*`) requires that it must not.
        # @param [String] request_id
        #   An optional request ID to identify requests. Specify a unique request ID so
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
        #   If "validate_only" is set to true, the service will try to validate that this
        #   request would succeed, but will not actually make changes.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::SaasservicemgmtV1beta1::Empty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::SaasservicemgmtV1beta1::Empty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_location_tenant(name, etag: nil, request_id: nil, validate_only: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1beta1/{+name}', options)
          command.response_representation = Google::Apis::SaasservicemgmtV1beta1::Empty::Representation
          command.response_class = Google::Apis::SaasservicemgmtV1beta1::Empty
          command.params['name'] = name unless name.nil?
          command.query['etag'] = etag unless etag.nil?
          command.query['requestId'] = request_id unless request_id.nil?
          command.query['validateOnly'] = validate_only unless validate_only.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Retrieve a single tenant.
        # @param [String] name
        #   Required. The resource name of the resource within a service.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::SaasservicemgmtV1beta1::Tenant] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::SaasservicemgmtV1beta1::Tenant]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_tenant(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta1/{+name}', options)
          command.response_representation = Google::Apis::SaasservicemgmtV1beta1::Tenant::Representation
          command.response_class = Google::Apis::SaasservicemgmtV1beta1::Tenant
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Retrieve a collection of tenants.
        # @param [String] parent
        #   Required. The parent of the tenant.
        # @param [String] filter
        #   Filter the list as specified in https://google.aip.dev/160.
        # @param [String] order_by
        #   Order results as specified in https://google.aip.dev/132.
        # @param [Fixnum] page_size
        #   The maximum number of tenants to send per page.
        # @param [String] page_token
        #   The page token: If the next_page_token from a previous response is provided,
        #   this request will send the subsequent page.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::SaasservicemgmtV1beta1::ListTenantsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::SaasservicemgmtV1beta1::ListTenantsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_tenants(parent, filter: nil, order_by: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta1/{+parent}/tenants', options)
          command.response_representation = Google::Apis::SaasservicemgmtV1beta1::ListTenantsResponse::Representation
          command.response_class = Google::Apis::SaasservicemgmtV1beta1::ListTenantsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['orderBy'] = order_by unless order_by.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Update a single tenant.
        # @param [String] name
        #   Identifier. The resource name (full URI of the resource) following the
        #   standard naming scheme: "projects/`project`/locations/`location`/tenants/`
        #   tenant`"
        # @param [Google::Apis::SaasservicemgmtV1beta1::Tenant] tenant_object
        # @param [String] request_id
        #   An optional request ID to identify requests. Specify a unique request ID so
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
        #   Field mask is used to specify the fields to be overwritten in the Tenant
        #   resource by the update. The fields specified in the update_mask are relative
        #   to the resource, not the full request. A field will be overwritten if it is in
        #   the mask. If the user does not provide a mask then all fields in the Tenant
        #   will be overwritten.
        # @param [Boolean] validate_only
        #   If "validate_only" is set to true, the service will try to validate that this
        #   request would succeed, but will not actually make changes.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::SaasservicemgmtV1beta1::Tenant] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::SaasservicemgmtV1beta1::Tenant]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_project_location_tenant(name, tenant_object = nil, request_id: nil, update_mask: nil, validate_only: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v1beta1/{+name}', options)
          command.request_representation = Google::Apis::SaasservicemgmtV1beta1::Tenant::Representation
          command.request_object = tenant_object
          command.response_representation = Google::Apis::SaasservicemgmtV1beta1::Tenant::Representation
          command.response_class = Google::Apis::SaasservicemgmtV1beta1::Tenant
          command.params['name'] = name unless name.nil?
          command.query['requestId'] = request_id unless request_id.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['validateOnly'] = validate_only unless validate_only.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Create a new unit kind.
        # @param [String] parent
        #   Required. The parent of the unit kind.
        # @param [Google::Apis::SaasservicemgmtV1beta1::UnitKind] unit_kind_object
        # @param [String] request_id
        #   An optional request ID to identify requests. Specify a unique request ID so
        #   that if you must retry your request, the server will know to ignore the
        #   request if it has already been completed. The server will guarantee that for
        #   at least 60 minutes since the first request. For example, consider a situation
        #   where you make an initial request and the request times out. If you make the
        #   request again with the same request ID, the server can check if original
        #   operation with the same request ID was received, and if so, will ignore the
        #   second request. This prevents clients from accidentally creating duplicate
        #   commitments. The request ID must be a valid UUID with the exception that zero
        #   UUID is not supported (00000000-0000-0000-0000-000000000000).
        # @param [String] unit_kind_id
        #   Required. The ID value for the new unit kind.
        # @param [Boolean] validate_only
        #   If "validate_only" is set to true, the service will try to validate that this
        #   request would succeed, but will not actually make changes.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::SaasservicemgmtV1beta1::UnitKind] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::SaasservicemgmtV1beta1::UnitKind]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_location_unit_kind(parent, unit_kind_object = nil, request_id: nil, unit_kind_id: nil, validate_only: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1beta1/{+parent}/unitKinds', options)
          command.request_representation = Google::Apis::SaasservicemgmtV1beta1::UnitKind::Representation
          command.request_object = unit_kind_object
          command.response_representation = Google::Apis::SaasservicemgmtV1beta1::UnitKind::Representation
          command.response_class = Google::Apis::SaasservicemgmtV1beta1::UnitKind
          command.params['parent'] = parent unless parent.nil?
          command.query['requestId'] = request_id unless request_id.nil?
          command.query['unitKindId'] = unit_kind_id unless unit_kind_id.nil?
          command.query['validateOnly'] = validate_only unless validate_only.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Delete a single unit kind.
        # @param [String] name
        #   Required. The resource name of the resource within a service.
        # @param [String] etag
        #   The etag known to the client for the expected state of the unit kind. This is
        #   used with state-changing methods to prevent accidental overwrites when
        #   multiple user agents might be acting in parallel on the same resource. An etag
        #   wildcard provide optimistic concurrency based on the expected existence of the
        #   unit kind. The Any wildcard (`*`) requires that the resource must already
        #   exists, and the Not Any wildcard (`!*`) requires that it must not.
        # @param [String] request_id
        #   An optional request ID to identify requests. Specify a unique request ID so
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
        #   If "validate_only" is set to true, the service will try to validate that this
        #   request would succeed, but will not actually make changes.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::SaasservicemgmtV1beta1::Empty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::SaasservicemgmtV1beta1::Empty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_location_unit_kind(name, etag: nil, request_id: nil, validate_only: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1beta1/{+name}', options)
          command.response_representation = Google::Apis::SaasservicemgmtV1beta1::Empty::Representation
          command.response_class = Google::Apis::SaasservicemgmtV1beta1::Empty
          command.params['name'] = name unless name.nil?
          command.query['etag'] = etag unless etag.nil?
          command.query['requestId'] = request_id unless request_id.nil?
          command.query['validateOnly'] = validate_only unless validate_only.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Retrieve a single unit kind.
        # @param [String] name
        #   Required. The resource name of the resource within a service.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::SaasservicemgmtV1beta1::UnitKind] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::SaasservicemgmtV1beta1::UnitKind]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_unit_kind(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta1/{+name}', options)
          command.response_representation = Google::Apis::SaasservicemgmtV1beta1::UnitKind::Representation
          command.response_class = Google::Apis::SaasservicemgmtV1beta1::UnitKind
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Retrieve a collection of unit kinds.
        # @param [String] parent
        #   Required. The parent of the unit kind.
        # @param [String] filter
        #   Filter the list as specified in https://google.aip.dev/160.
        # @param [String] order_by
        #   Order results as specified in https://google.aip.dev/132.
        # @param [Fixnum] page_size
        #   The maximum number of unit kinds to send per page.
        # @param [String] page_token
        #   The page token: If the next_page_token from a previous response is provided,
        #   this request will send the subsequent page.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::SaasservicemgmtV1beta1::ListUnitKindsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::SaasservicemgmtV1beta1::ListUnitKindsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_unit_kinds(parent, filter: nil, order_by: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta1/{+parent}/unitKinds', options)
          command.response_representation = Google::Apis::SaasservicemgmtV1beta1::ListUnitKindsResponse::Representation
          command.response_class = Google::Apis::SaasservicemgmtV1beta1::ListUnitKindsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['orderBy'] = order_by unless order_by.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Update a single unit kind.
        # @param [String] name
        #   Identifier. The resource name (full URI of the resource) following the
        #   standard naming scheme: "projects/`project`/locations/`location`/unitKinds/`
        #   unitKind`"
        # @param [Google::Apis::SaasservicemgmtV1beta1::UnitKind] unit_kind_object
        # @param [String] request_id
        #   An optional request ID to identify requests. Specify a unique request ID so
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
        #   Field mask is used to specify the fields to be overwritten in the UnitKind
        #   resource by the update. The fields specified in the update_mask are relative
        #   to the resource, not the full request. A field will be overwritten if it is in
        #   the mask. If the user does not provide a mask then all fields in the UnitKind
        #   will be overwritten.
        # @param [Boolean] validate_only
        #   If "validate_only" is set to true, the service will try to validate that this
        #   request would succeed, but will not actually make changes.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::SaasservicemgmtV1beta1::UnitKind] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::SaasservicemgmtV1beta1::UnitKind]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_project_location_unit_kind(name, unit_kind_object = nil, request_id: nil, update_mask: nil, validate_only: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v1beta1/{+name}', options)
          command.request_representation = Google::Apis::SaasservicemgmtV1beta1::UnitKind::Representation
          command.request_object = unit_kind_object
          command.response_representation = Google::Apis::SaasservicemgmtV1beta1::UnitKind::Representation
          command.response_class = Google::Apis::SaasservicemgmtV1beta1::UnitKind
          command.params['name'] = name unless name.nil?
          command.query['requestId'] = request_id unless request_id.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['validateOnly'] = validate_only unless validate_only.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Create a new unit operation.
        # @param [String] parent
        #   Required. The parent of the unit operation.
        # @param [Google::Apis::SaasservicemgmtV1beta1::UnitOperation] unit_operation_object
        # @param [String] request_id
        #   An optional request ID to identify requests. Specify a unique request ID so
        #   that if you must retry your request, the server will know to ignore the
        #   request if it has already been completed. The server will guarantee that for
        #   at least 60 minutes since the first request. For example, consider a situation
        #   where you make an initial request and the request times out. If you make the
        #   request again with the same request ID, the server can check if original
        #   operation with the same request ID was received, and if so, will ignore the
        #   second request. This prevents clients from accidentally creating duplicate
        #   commitments. The request ID must be a valid UUID with the exception that zero
        #   UUID is not supported (00000000-0000-0000-0000-000000000000).
        # @param [String] unit_operation_id
        #   Required. The ID value for the new unit operation.
        # @param [Boolean] validate_only
        #   If "validate_only" is set to true, the service will try to validate that this
        #   request would succeed, but will not actually make changes.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::SaasservicemgmtV1beta1::UnitOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::SaasservicemgmtV1beta1::UnitOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_location_unit_operation(parent, unit_operation_object = nil, request_id: nil, unit_operation_id: nil, validate_only: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1beta1/{+parent}/unitOperations', options)
          command.request_representation = Google::Apis::SaasservicemgmtV1beta1::UnitOperation::Representation
          command.request_object = unit_operation_object
          command.response_representation = Google::Apis::SaasservicemgmtV1beta1::UnitOperation::Representation
          command.response_class = Google::Apis::SaasservicemgmtV1beta1::UnitOperation
          command.params['parent'] = parent unless parent.nil?
          command.query['requestId'] = request_id unless request_id.nil?
          command.query['unitOperationId'] = unit_operation_id unless unit_operation_id.nil?
          command.query['validateOnly'] = validate_only unless validate_only.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Delete a single unit operation.
        # @param [String] name
        #   Required. The resource name of the resource within a service.
        # @param [String] etag
        #   The etag known to the client for the expected state of the unit operation.
        #   This is used with state-changing methods to prevent accidental overwrites when
        #   multiple user agents might be acting in parallel on the same resource. An etag
        #   wildcard provide optimistic concurrency based on the expected existence of the
        #   unit operation. The Any wildcard (`*`) requires that the resource must already
        #   exists, and the Not Any wildcard (`!*`) requires that it must not.
        # @param [String] request_id
        #   An optional request ID to identify requests. Specify a unique request ID so
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
        #   If "validate_only" is set to true, the service will try to validate that this
        #   request would succeed, but will not actually make changes.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::SaasservicemgmtV1beta1::Empty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::SaasservicemgmtV1beta1::Empty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_location_unit_operation(name, etag: nil, request_id: nil, validate_only: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1beta1/{+name}', options)
          command.response_representation = Google::Apis::SaasservicemgmtV1beta1::Empty::Representation
          command.response_class = Google::Apis::SaasservicemgmtV1beta1::Empty
          command.params['name'] = name unless name.nil?
          command.query['etag'] = etag unless etag.nil?
          command.query['requestId'] = request_id unless request_id.nil?
          command.query['validateOnly'] = validate_only unless validate_only.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Retrieve a single unit operation.
        # @param [String] name
        #   Required. The resource name of the resource within a service.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::SaasservicemgmtV1beta1::UnitOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::SaasservicemgmtV1beta1::UnitOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_unit_operation(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta1/{+name}', options)
          command.response_representation = Google::Apis::SaasservicemgmtV1beta1::UnitOperation::Representation
          command.response_class = Google::Apis::SaasservicemgmtV1beta1::UnitOperation
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Retrieve a collection of unit operations.
        # @param [String] parent
        #   Required. The parent of the unit operation.
        # @param [String] filter
        #   Filter the list as specified in https://google.aip.dev/160.
        # @param [String] order_by
        #   Order results as specified in https://google.aip.dev/132.
        # @param [Fixnum] page_size
        #   The maximum number of unit operations to send per page.
        # @param [String] page_token
        #   The page token: If the next_page_token from a previous response is provided,
        #   this request will send the subsequent page.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::SaasservicemgmtV1beta1::ListUnitOperationsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::SaasservicemgmtV1beta1::ListUnitOperationsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_unit_operations(parent, filter: nil, order_by: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta1/{+parent}/unitOperations', options)
          command.response_representation = Google::Apis::SaasservicemgmtV1beta1::ListUnitOperationsResponse::Representation
          command.response_class = Google::Apis::SaasservicemgmtV1beta1::ListUnitOperationsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['orderBy'] = order_by unless order_by.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Update a single unit operation.
        # @param [String] name
        #   Identifier. The resource name (full URI of the resource) following the
        #   standard naming scheme: "projects/`project`/locations/`location`/
        #   unitOperations/`unitOperation`"
        # @param [Google::Apis::SaasservicemgmtV1beta1::UnitOperation] unit_operation_object
        # @param [String] request_id
        #   An optional request ID to identify requests. Specify a unique request ID so
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
        #   Field mask is used to specify the fields to be overwritten in the
        #   UnitOperation resource by the update. The fields specified in the update_mask
        #   are relative to the resource, not the full request. A field will be
        #   overwritten if it is in the mask. If the user does not provide a mask then all
        #   fields in the UnitOperation will be overwritten.
        # @param [Boolean] validate_only
        #   If "validate_only" is set to true, the service will try to validate that this
        #   request would succeed, but will not actually make changes.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::SaasservicemgmtV1beta1::UnitOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::SaasservicemgmtV1beta1::UnitOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_project_location_unit_operation(name, unit_operation_object = nil, request_id: nil, update_mask: nil, validate_only: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v1beta1/{+name}', options)
          command.request_representation = Google::Apis::SaasservicemgmtV1beta1::UnitOperation::Representation
          command.request_object = unit_operation_object
          command.response_representation = Google::Apis::SaasservicemgmtV1beta1::UnitOperation::Representation
          command.response_class = Google::Apis::SaasservicemgmtV1beta1::UnitOperation
          command.params['name'] = name unless name.nil?
          command.query['requestId'] = request_id unless request_id.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['validateOnly'] = validate_only unless validate_only.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Create a new unit.
        # @param [String] parent
        #   Required. The parent of the unit.
        # @param [Google::Apis::SaasservicemgmtV1beta1::Unit] unit_object
        # @param [String] request_id
        #   An optional request ID to identify requests. Specify a unique request ID so
        #   that if you must retry your request, the server will know to ignore the
        #   request if it has already been completed. The server will guarantee that for
        #   at least 60 minutes since the first request. For example, consider a situation
        #   where you make an initial request and the request times out. If you make the
        #   request again with the same request ID, the server can check if original
        #   operation with the same request ID was received, and if so, will ignore the
        #   second request. This prevents clients from accidentally creating duplicate
        #   commitments. The request ID must be a valid UUID with the exception that zero
        #   UUID is not supported (00000000-0000-0000-0000-000000000000).
        # @param [String] unit_id
        #   Required. The ID value for the new unit.
        # @param [Boolean] validate_only
        #   If "validate_only" is set to true, the service will try to validate that this
        #   request would succeed, but will not actually make changes.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::SaasservicemgmtV1beta1::Unit] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::SaasservicemgmtV1beta1::Unit]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_location_unit(parent, unit_object = nil, request_id: nil, unit_id: nil, validate_only: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1beta1/{+parent}/units', options)
          command.request_representation = Google::Apis::SaasservicemgmtV1beta1::Unit::Representation
          command.request_object = unit_object
          command.response_representation = Google::Apis::SaasservicemgmtV1beta1::Unit::Representation
          command.response_class = Google::Apis::SaasservicemgmtV1beta1::Unit
          command.params['parent'] = parent unless parent.nil?
          command.query['requestId'] = request_id unless request_id.nil?
          command.query['unitId'] = unit_id unless unit_id.nil?
          command.query['validateOnly'] = validate_only unless validate_only.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Delete a single unit.
        # @param [String] name
        #   Required. The resource name of the resource within a service.
        # @param [String] etag
        #   The etag known to the client for the expected state of the unit. This is used
        #   with state-changing methods to prevent accidental overwrites when multiple
        #   user agents might be acting in parallel on the same resource. An etag wildcard
        #   provide optimistic concurrency based on the expected existence of the unit.
        #   The Any wildcard (`*`) requires that the resource must already exists, and the
        #   Not Any wildcard (`!*`) requires that it must not.
        # @param [String] request_id
        #   An optional request ID to identify requests. Specify a unique request ID so
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
        #   If "validate_only" is set to true, the service will try to validate that this
        #   request would succeed, but will not actually make changes.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::SaasservicemgmtV1beta1::Empty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::SaasservicemgmtV1beta1::Empty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_location_unit(name, etag: nil, request_id: nil, validate_only: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1beta1/{+name}', options)
          command.response_representation = Google::Apis::SaasservicemgmtV1beta1::Empty::Representation
          command.response_class = Google::Apis::SaasservicemgmtV1beta1::Empty
          command.params['name'] = name unless name.nil?
          command.query['etag'] = etag unless etag.nil?
          command.query['requestId'] = request_id unless request_id.nil?
          command.query['validateOnly'] = validate_only unless validate_only.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Retrieve a single unit.
        # @param [String] name
        #   Required. The resource name of the resource within a service.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::SaasservicemgmtV1beta1::Unit] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::SaasservicemgmtV1beta1::Unit]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_unit(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta1/{+name}', options)
          command.response_representation = Google::Apis::SaasservicemgmtV1beta1::Unit::Representation
          command.response_class = Google::Apis::SaasservicemgmtV1beta1::Unit
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Retrieve a collection of units.
        # @param [String] parent
        #   Required. The parent of the unit.
        # @param [String] filter
        #   Filter the list as specified in https://google.aip.dev/160.
        # @param [String] order_by
        #   Order results as specified in https://google.aip.dev/132.
        # @param [Fixnum] page_size
        #   The maximum number of units to send per page.
        # @param [String] page_token
        #   The page token: If the next_page_token from a previous response is provided,
        #   this request will send the subsequent page.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::SaasservicemgmtV1beta1::ListUnitsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::SaasservicemgmtV1beta1::ListUnitsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_units(parent, filter: nil, order_by: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta1/{+parent}/units', options)
          command.response_representation = Google::Apis::SaasservicemgmtV1beta1::ListUnitsResponse::Representation
          command.response_class = Google::Apis::SaasservicemgmtV1beta1::ListUnitsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['orderBy'] = order_by unless order_by.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Update a single unit.
        # @param [String] name
        #   Identifier. The resource name (full URI of the resource) following the
        #   standard naming scheme: "projects/`project`/locations/`location`/units/`unit`"
        # @param [Google::Apis::SaasservicemgmtV1beta1::Unit] unit_object
        # @param [String] request_id
        #   An optional request ID to identify requests. Specify a unique request ID so
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
        #   Field mask is used to specify the fields to be overwritten in the Unit
        #   resource by the update. The fields specified in the update_mask are relative
        #   to the resource, not the full request. A field will be overwritten if it is in
        #   the mask. If the user does not provide a mask then all fields in the Unit will
        #   be overwritten.
        # @param [Boolean] validate_only
        #   If "validate_only" is set to true, the service will try to validate that this
        #   request would succeed, but will not actually make changes.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::SaasservicemgmtV1beta1::Unit] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::SaasservicemgmtV1beta1::Unit]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_project_location_unit(name, unit_object = nil, request_id: nil, update_mask: nil, validate_only: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v1beta1/{+name}', options)
          command.request_representation = Google::Apis::SaasservicemgmtV1beta1::Unit::Representation
          command.request_object = unit_object
          command.response_representation = Google::Apis::SaasservicemgmtV1beta1::Unit::Representation
          command.response_class = Google::Apis::SaasservicemgmtV1beta1::Unit
          command.params['name'] = name unless name.nil?
          command.query['requestId'] = request_id unless request_id.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['validateOnly'] = validate_only unless validate_only.nil?
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
