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
    module RedisV1
      # Google Cloud Memorystore for Redis API
      #
      # Creates and manages Redis instances on the Google Cloud Platform.
      #
      # @example
      #    require 'google/apis/redis_v1'
      #
      #    Redis = Google::Apis::RedisV1 # Alias the module
      #    service = Redis::CloudRedisService.new
      #
      # @see https://cloud.google.com/memorystore/docs/redis/
      class CloudRedisService < Google::Apis::Core::BaseService
        DEFAULT_ENDPOINT_TEMPLATE = "https://redis.$UNIVERSE_DOMAIN$/"

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
                client_name: 'google-apis-redis_v1',
                client_version: Google::Apis::RedisV1::GEM_VERSION)
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
        # @yieldparam result [Google::Apis::RedisV1::Location] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::RedisV1::Location]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}', options)
          command.response_representation = Google::Apis::RedisV1::Location::Representation
          command.response_class = Google::Apis::RedisV1::Location
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets the details of regional certificate authority information for Redis
        # cluster.
        # @param [String] name
        #   Required. Regional certificate authority resource name using the form: `
        #   projects/`project_id`/locations/`location_id`/
        #   sharedRegionalCertificateAuthority` where `location_id` refers to a Google
        #   Cloud region.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::RedisV1::SharedRegionalCertificateAuthority] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::RedisV1::SharedRegionalCertificateAuthority]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_shared_regional_certificate_authority(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}', options)
          command.response_representation = Google::Apis::RedisV1::SharedRegionalCertificateAuthority::Representation
          command.response_class = Google::Apis::RedisV1::SharedRegionalCertificateAuthority
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists information about the supported locations for this service. This method
        # lists locations based on the resource scope provided in the [
        # ListLocationsRequest.name] field: * **Global locations**: If `name` is empty,
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
        # @yieldparam result [Google::Apis::RedisV1::ListLocationsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::RedisV1::ListLocationsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_locations(name, extra_location_types: nil, filter: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}/locations', options)
          command.response_representation = Google::Apis::RedisV1::ListLocationsResponse::Representation
          command.response_class = Google::Apis::RedisV1::ListLocationsResponse
          command.params['name'] = name unless name.nil?
          command.query['extraLocationTypes'] = extra_location_types unless extra_location_types.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates an ACL Policy. The creation is executed synchronously and the policy
        # is available for use immediately after the RPC returns.
        # @param [String] parent
        #   Required. The resource name of the cluster location using the form: `projects/`
        #   project_id`/locations/`location_id`` where `location_id` refers to a Google
        #   Cloud region.
        # @param [Google::Apis::RedisV1::AclPolicy] acl_policy_object
        # @param [String] acl_policy_id
        #   Required. The logical name of the ACL Policy in the customer project with the
        #   following restrictions: * Must contain only lowercase letters, numbers, and
        #   hyphens. * Must start with a letter. * Must be between 1-63 characters. * Must
        #   end with a number or a letter. * Must be unique within the customer project /
        #   location
        # @param [String] request_id
        #   Optional. Idempotent request UUID. .
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::RedisV1::AclPolicy] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::RedisV1::AclPolicy]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_location_acl_policy(parent, acl_policy_object = nil, acl_policy_id: nil, request_id: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+parent}/aclPolicies', options)
          command.request_representation = Google::Apis::RedisV1::AclPolicy::Representation
          command.request_object = acl_policy_object
          command.response_representation = Google::Apis::RedisV1::AclPolicy::Representation
          command.response_class = Google::Apis::RedisV1::AclPolicy
          command.params['parent'] = parent unless parent.nil?
          command.query['aclPolicyId'] = acl_policy_id unless acl_policy_id.nil?
          command.query['requestId'] = request_id unless request_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes a specific Acl Policy. This action will delete the Acl Policy and all
        # the rules associated with it. An ACL policy cannot be deleted if it is
        # attached to a cluster.
        # @param [String] name
        #   Required. Redis ACL Policy resource name using the form: `projects/`project_id`
        #   /locations/`location_id`/aclPolicies/`acl_policy_id`` where `location_id`
        #   refers to a GCP region.
        # @param [String] etag
        #   Optional. Etag of the ACL policy. If this is different from the server's etag,
        #   the request will fail with an ABORTED error.
        # @param [String] request_id
        #   Optional. Idempotent request UUID.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::RedisV1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::RedisV1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_location_acl_policy(name, etag: nil, request_id: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1/{+name}', options)
          command.response_representation = Google::Apis::RedisV1::Operation::Representation
          command.response_class = Google::Apis::RedisV1::Operation
          command.params['name'] = name unless name.nil?
          command.query['etag'] = etag unless etag.nil?
          command.query['requestId'] = request_id unless request_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets the details of a specific Redis Cluster ACL Policy.
        # @param [String] name
        #   Required. Redis ACL Policy resource name using the form: `projects/`project_id`
        #   /locations/`location_id`/aclPolicies/`acl_policy_id`` where `location_id`
        #   refers to a GCP region.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::RedisV1::AclPolicy] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::RedisV1::AclPolicy]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_acl_policy(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}', options)
          command.response_representation = Google::Apis::RedisV1::AclPolicy::Representation
          command.response_class = Google::Apis::RedisV1::AclPolicy
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists all ACL Policies owned by a project in either the specified location (
        # region) or all locations. The location should have the following format: * `
        # projects/`project_id`/locations/`location_id`` If `location_id` is specified
        # as `-` (wildcard), then all regions available to the project are queried, and
        # the results are aggregated.
        # @param [String] parent
        #   Required. The resource name of the cluster location using the form: `projects/`
        #   project_id`/locations/`location_id`` where `location_id` refers to a Google
        #   Cloud region.
        # @param [Fixnum] page_size
        #   Optional. The maximum number of items to return. If not specified, a default
        #   value of 1000 will be used by the service. Regardless of the page_size value,
        #   the response may include a partial list and a caller should only rely on
        #   response's `next_page_token` to determine if there are more ACL policies left
        #   to be queried. The maximum value is 1000; values above 1000 will be coerced to
        #   1000.
        # @param [String] page_token
        #   Optional. The `next_page_token` value returned from a previous `
        #   ListAclPolicies` request, if any.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::RedisV1::ListAclPoliciesResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::RedisV1::ListAclPoliciesResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_acl_policies(parent, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+parent}/aclPolicies', options)
          command.response_representation = Google::Apis::RedisV1::ListAclPoliciesResponse::Representation
          command.response_class = Google::Apis::RedisV1::ListAclPoliciesResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates the ACL policy. The operation applies the updated ACL policy to all of
        # the linked clusters. If Memorystore can apply the policy to all clusters, then
        # the operation returns a SUCCESS status. If Memorystore can't apply the policy
        # to all clusters, then to ensure eventual consistency, Memorystore uses
        # reconciliation to apply the policy to the failed clusters. Completed
        # longrunning.Operation will contain the new ACL Policy object in the response
        # field.
        # @param [String] name
        #   Identifier. Full resource path of the ACL policy.
        # @param [Google::Apis::RedisV1::AclPolicy] acl_policy_object
        # @param [String] request_id
        #   Optional. Idempotent request UUID.
        # @param [String] update_mask
        #   Optional. Mask of fields to be updated. At least one path must be supplied in
        #   this field. The elements of the repeated paths field may only include these
        #   fields from `AclPolicy`: * `rules`
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::RedisV1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::RedisV1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_project_location_acl_policy(name, acl_policy_object = nil, request_id: nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v1/{+name}', options)
          command.request_representation = Google::Apis::RedisV1::AclPolicy::Representation
          command.request_object = acl_policy_object
          command.response_representation = Google::Apis::RedisV1::Operation::Representation
          command.response_class = Google::Apis::RedisV1::Operation
          command.params['name'] = name unless name.nil?
          command.query['requestId'] = request_id unless request_id.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Get a backup collection.
        # @param [String] name
        #   Required. Redis backupCollection resource name using the form: `projects/`
        #   project_id`/locations/`location_id`/backupCollections/`backup_collection_id``
        #   where `location_id` refers to a Google Cloud region.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::RedisV1::BackupCollection] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::RedisV1::BackupCollection]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_backup_collection(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}', options)
          command.response_representation = Google::Apis::RedisV1::BackupCollection::Representation
          command.response_class = Google::Apis::RedisV1::BackupCollection
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists all backup collections owned by a consumer project in either the
        # specified location (region) or all locations. If `location_id` is specified as
        # `-` (wildcard), then all regions available to the project are queried, and the
        # results are aggregated.
        # @param [String] parent
        #   Required. The resource name of the backupCollection location using the form: `
        #   projects/`project_id`/locations/`location_id`` where `location_id` refers to a
        #   Google Cloud region.
        # @param [Fixnum] page_size
        #   Optional. The maximum number of items to return. If not specified, a default
        #   value of 1000 will be used by the service. Regardless of the page_size value,
        #   the response may include a partial list and a caller should only rely on
        #   response's `next_page_token` to determine if there are more clusters left to
        #   be queried.
        # @param [String] page_token
        #   Optional. The `next_page_token` value returned from a previous [
        #   ListBackupCollections] request, if any.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::RedisV1::ListBackupCollectionsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::RedisV1::ListBackupCollectionsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_backup_collections(parent, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+parent}/backupCollections', options)
          command.response_representation = Google::Apis::RedisV1::ListBackupCollectionsResponse::Representation
          command.response_class = Google::Apis::RedisV1::ListBackupCollectionsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes a specific backup.
        # @param [String] name
        #   Required. Redis backup resource name using the form: `projects/`project_id`/
        #   locations/`location_id`/backupCollections/`backup_collection_id`/backups/`
        #   backup_id``
        # @param [String] request_id
        #   Optional. Idempotent request UUID.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::RedisV1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::RedisV1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_location_backup_collection_backup(name, request_id: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1/{+name}', options)
          command.response_representation = Google::Apis::RedisV1::Operation::Representation
          command.response_class = Google::Apis::RedisV1::Operation
          command.params['name'] = name unless name.nil?
          command.query['requestId'] = request_id unless request_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Exports a specific backup to a customer target Cloud Storage URI.
        # @param [String] name
        #   Required. Redis backup resource name using the form: `projects/`project_id`/
        #   locations/`location_id`/backupCollections/`backup_collection_id`/backups/`
        #   backup_id``
        # @param [Google::Apis::RedisV1::ExportBackupRequest] export_backup_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::RedisV1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::RedisV1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def export_backup(name, export_backup_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+name}:export', options)
          command.request_representation = Google::Apis::RedisV1::ExportBackupRequest::Representation
          command.request_object = export_backup_request_object
          command.response_representation = Google::Apis::RedisV1::Operation::Representation
          command.response_class = Google::Apis::RedisV1::Operation
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets the details of a specific backup.
        # @param [String] name
        #   Required. Redis backup resource name using the form: `projects/`project_id`/
        #   locations/`location_id`/backupCollections/`backup_collection_id`/backups/`
        #   backup_id``
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::RedisV1::Backup] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::RedisV1::Backup]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_backup_collection_backup(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}', options)
          command.response_representation = Google::Apis::RedisV1::Backup::Representation
          command.response_class = Google::Apis::RedisV1::Backup
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists all backups owned by a backup collection.
        # @param [String] parent
        #   Required. The resource name of the backupCollection using the form: `projects/`
        #   project_id`/locations/`location_id`/backupCollections/`backup_collection_id``
        # @param [Fixnum] page_size
        #   Optional. The maximum number of items to return. If not specified, a default
        #   value of 1000 will be used by the service. Regardless of the page_size value,
        #   the response may include a partial list and a caller should only rely on
        #   response's `next_page_token` to determine if there are more clusters left to
        #   be queried.
        # @param [String] page_token
        #   Optional. The `next_page_token` value returned from a previous [
        #   ListBackupCollections] request, if any.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::RedisV1::ListBackupsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::RedisV1::ListBackupsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_backup_collection_backups(parent, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+parent}/backups', options)
          command.response_representation = Google::Apis::RedisV1::ListBackupsResponse::Representation
          command.response_class = Google::Apis::RedisV1::ListBackupsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Adds a token auth user for a token based auth enabled cluster.
        # @param [String] cluster
        #   Required. The cluster resource that this token auth user will be added for.
        #   Format: projects/`project`/locations/`location`/clusters/`cluster`
        # @param [Google::Apis::RedisV1::AddTokenAuthUserRequest] add_token_auth_user_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::RedisV1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::RedisV1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def add_cluster_token_auth_user(cluster, add_token_auth_user_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+cluster}:addTokenAuthUser', options)
          command.request_representation = Google::Apis::RedisV1::AddTokenAuthUserRequest::Representation
          command.request_object = add_token_auth_user_request_object
          command.response_representation = Google::Apis::RedisV1::Operation::Representation
          command.response_class = Google::Apis::RedisV1::Operation
          command.params['cluster'] = cluster unless cluster.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Backup Redis Cluster. If this is the first time a backup is being created, a
        # backup collection will be created at the backend, and this backup belongs to
        # this collection. Both collection and backup will have a resource name. Backup
        # will be executed for each shard. A replica (primary if nonHA) will be selected
        # to perform the execution. Backup call will be rejected if there is an ongoing
        # backup or update operation. Be aware that during preview, if the cluster's
        # internal software version is too old, critical update will be performed before
        # actual backup. Once the internal software version is updated to the minimum
        # version required by the backup feature, subsequent backups will not require
        # critical update. After preview, there will be no critical update needed for
        # backup.
        # @param [String] name
        #   Required. Redis cluster resource name using the form: `projects/`project_id`/
        #   locations/`location_id`/clusters/`cluster_id`` where `location_id` refers to a
        #   Google Cloud region.
        # @param [Google::Apis::RedisV1::BackupClusterRequest] backup_cluster_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::RedisV1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::RedisV1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def backup_cluster(name, backup_cluster_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+name}:backup', options)
          command.request_representation = Google::Apis::RedisV1::BackupClusterRequest::Representation
          command.request_object = backup_cluster_request_object
          command.response_representation = Google::Apis::RedisV1::Operation::Representation
          command.response_class = Google::Apis::RedisV1::Operation
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a Redis cluster based on the specified properties. The creation is
        # executed asynchronously and callers may check the returned operation to track
        # its progress. Once the operation is completed the Redis cluster will be fully
        # functional. The completed longrunning.Operation will contain the new cluster
        # object in the response field. The returned operation is automatically deleted
        # after a few hours, so there is no need to call DeleteOperation.
        # @param [String] parent
        #   Required. The resource name of the cluster location using the form: `projects/`
        #   project_id`/locations/`location_id`` where `location_id` refers to a Google
        #   Cloud region.
        # @param [Google::Apis::RedisV1::Cluster] cluster_object
        # @param [String] cluster_id
        #   Required. The logical name of the Redis cluster in the customer project with
        #   the following restrictions: * Must contain only lowercase letters, numbers,
        #   and hyphens. * Must start with a letter. * Must be between 1-63 characters. *
        #   Must end with a number or a letter. * Must be unique within the customer
        #   project / location
        # @param [String] request_id
        #   Optional. Idempotent request UUID.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::RedisV1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::RedisV1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_location_cluster(parent, cluster_object = nil, cluster_id: nil, request_id: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+parent}/clusters', options)
          command.request_representation = Google::Apis::RedisV1::Cluster::Representation
          command.request_object = cluster_object
          command.response_representation = Google::Apis::RedisV1::Operation::Representation
          command.response_class = Google::Apis::RedisV1::Operation
          command.params['parent'] = parent unless parent.nil?
          command.query['clusterId'] = cluster_id unless cluster_id.nil?
          command.query['requestId'] = request_id unless request_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes a specific Redis cluster. Cluster stops serving and data is deleted.
        # @param [String] name
        #   Required. Redis cluster resource name using the form: `projects/`project_id`/
        #   locations/`location_id`/clusters/`cluster_id`` where `location_id` refers to a
        #   Google Cloud region.
        # @param [String] request_id
        #   Optional. Idempotent request UUID.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::RedisV1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::RedisV1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_location_cluster(name, request_id: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1/{+name}', options)
          command.response_representation = Google::Apis::RedisV1::Operation::Representation
          command.response_class = Google::Apis::RedisV1::Operation
          command.params['name'] = name unless name.nil?
          command.query['requestId'] = request_id unless request_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets the details of a specific Redis cluster.
        # @param [String] name
        #   Required. Redis cluster resource name using the form: `projects/`project_id`/
        #   locations/`location_id`/clusters/`cluster_id`` where `location_id` refers to a
        #   Google Cloud region.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::RedisV1::Cluster] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::RedisV1::Cluster]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_cluster(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}', options)
          command.response_representation = Google::Apis::RedisV1::Cluster::Representation
          command.response_class = Google::Apis::RedisV1::Cluster
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets the details of certificate authority information for Redis cluster.
        # @param [String] name
        #   Required. Redis cluster certificate authority resource name using the form: `
        #   projects/`project_id`/locations/`location_id`/clusters/`cluster_id`/
        #   certificateAuthority` where `location_id` refers to a Google Cloud region.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::RedisV1::CertificateAuthority] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::RedisV1::CertificateAuthority]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_cluster_certificate_authority(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}', options)
          command.response_representation = Google::Apis::RedisV1::CertificateAuthority::Representation
          command.response_class = Google::Apis::RedisV1::CertificateAuthority
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists all Redis clusters owned by a project in either the specified location (
        # region) or all locations. The location should have the following format: * `
        # projects/`project_id`/locations/`location_id`` If `location_id` is specified
        # as `-` (wildcard), then all regions available to the project are queried, and
        # the results are aggregated.
        # @param [String] parent
        #   Required. The resource name of the cluster location using the form: `projects/`
        #   project_id`/locations/`location_id`` where `location_id` refers to a Google
        #   Cloud region.
        # @param [Fixnum] page_size
        #   The maximum number of items to return. If not specified, a default value of
        #   1000 will be used by the service. Regardless of the page_size value, the
        #   response may include a partial list and a caller should only rely on response'
        #   s `next_page_token` to determine if there are more clusters left to be queried.
        # @param [String] page_token
        #   The `next_page_token` value returned from a previous `ListClusters` request,
        #   if any.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::RedisV1::ListClustersResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::RedisV1::ListClustersResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_clusters(parent, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+parent}/clusters', options)
          command.response_representation = Google::Apis::RedisV1::ListClustersResponse::Representation
          command.response_class = Google::Apis::RedisV1::ListClustersResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates the metadata and configuration of a specific Redis cluster. Completed
        # longrunning.Operation will contain the new cluster object in the response
        # field. The returned operation is automatically deleted after a few hours, so
        # there is no need to call DeleteOperation.
        # @param [String] name
        #   Required. Identifier. Unique name of the resource in this scope including
        #   project and location using the form: `projects/`project_id`/locations/`
        #   location_id`/clusters/`cluster_id``
        # @param [Google::Apis::RedisV1::Cluster] cluster_object
        # @param [String] request_id
        #   Optional. Idempotent request UUID.
        # @param [String] update_mask
        #   Required. Mask of fields to update. At least one path must be supplied in this
        #   field. The elements of the repeated paths field may only include these fields
        #   from Cluster: * `size_gb` * `replica_count` * `cluster_endpoints`
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::RedisV1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::RedisV1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_project_location_cluster(name, cluster_object = nil, request_id: nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v1/{+name}', options)
          command.request_representation = Google::Apis::RedisV1::Cluster::Representation
          command.request_object = cluster_object
          command.response_representation = Google::Apis::RedisV1::Operation::Representation
          command.response_class = Google::Apis::RedisV1::Operation
          command.params['name'] = name unless name.nil?
          command.query['requestId'] = request_id unless request_id.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Reschedules upcoming maintenance event.
        # @param [String] name
        #   Required. Redis Cluster instance resource name using the form: `projects/`
        #   project_id`/locations/`location_id`/clusters/`cluster_id`` where `location_id`
        #   refers to a Google Cloud region.
        # @param [Google::Apis::RedisV1::RescheduleClusterMaintenanceRequest] reschedule_cluster_maintenance_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::RedisV1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::RedisV1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def reschedule_cluster_maintenance(name, reschedule_cluster_maintenance_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+name}:rescheduleClusterMaintenance', options)
          command.request_representation = Google::Apis::RedisV1::RescheduleClusterMaintenanceRequest::Representation
          command.request_object = reschedule_cluster_maintenance_request_object
          command.response_representation = Google::Apis::RedisV1::Operation::Representation
          command.response_class = Google::Apis::RedisV1::Operation
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Adds a auth token for a user of a token based auth enabled cluster.
        # @param [String] token_auth_user
        #   Required. The name of the token auth user resource that this auth token will
        #   be added for. Format: projects/`project`/locations/`location`/clusters/`
        #   cluster`/tokenAuthUsers/`token_auth_user`
        # @param [Google::Apis::RedisV1::AddAuthTokenRequest] add_auth_token_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::RedisV1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::RedisV1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def add_token_auth_user_auth_token(token_auth_user, add_auth_token_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+tokenAuthUser}:addAuthToken', options)
          command.request_representation = Google::Apis::RedisV1::AddAuthTokenRequest::Representation
          command.request_object = add_auth_token_request_object
          command.response_representation = Google::Apis::RedisV1::Operation::Representation
          command.response_class = Google::Apis::RedisV1::Operation
          command.params['tokenAuthUser'] = token_auth_user unless token_auth_user.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes a token auth user for a token based auth enabled cluster.
        # @param [String] name
        #   Required. The name of the token auth user to delete. Format: projects/`project`
        #   /locations/`location`/clusters/`cluster`/tokenAuthUsers/`token_auth_user`
        # @param [Boolean] force
        #   Optional. If set to true, any child auth tokens of this user will also be
        #   deleted. Otherwise, the request will only work if the user has no auth tokens.
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
        # @yieldparam result [Google::Apis::RedisV1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::RedisV1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_location_cluster_token_auth_user(name, force: nil, request_id: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1/{+name}', options)
          command.response_representation = Google::Apis::RedisV1::Operation::Representation
          command.response_class = Google::Apis::RedisV1::Operation
          command.params['name'] = name unless name.nil?
          command.query['force'] = force unless force.nil?
          command.query['requestId'] = request_id unless request_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets a specific token auth user for a basic auth enabled cluster.
        # @param [String] name
        #   Required. The name of token auth user for a token based auth enabled cluster.
        #   Format: projects/`project`/locations/`location`/clusters/`cluster`/
        #   tokenAuthUsers/`token_auth_user`
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::RedisV1::TokenAuthUser] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::RedisV1::TokenAuthUser]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_cluster_token_auth_user(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}', options)
          command.response_representation = Google::Apis::RedisV1::TokenAuthUser::Representation
          command.response_class = Google::Apis::RedisV1::TokenAuthUser
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists all the token auth users for a token based auth enabled cluster.
        # @param [String] parent
        #   Required. The parent resource that this token based auth user will be listed
        #   for. Format: projects/`project`/locations/`location`/clusters/`cluster`
        # @param [String] filter
        #   Optional. Expression for filtering results.
        # @param [String] order_by
        #   Optional. Sort results by a defined order.
        # @param [Fixnum] page_size
        #   Optional. The maximum number of items to return. If not specified, a default
        #   value of 1000 will be used by the service. Regardless of the page_size value,
        #   the response may include a partial list and a caller should only rely on
        #   response's The maximum value is 1000; values above 1000 will be coerced to
        #   1000. `next_page_token` to determine if there are more clusters left to be
        #   queried.
        # @param [String] page_token
        #   Optional. The `next_page_token` value returned from a previous [
        #   ListTokenAuthUsers] request, if any.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::RedisV1::ListTokenAuthUsersResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::RedisV1::ListTokenAuthUsersResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_cluster_token_auth_users(parent, filter: nil, order_by: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+parent}/tokenAuthUsers', options)
          command.response_representation = Google::Apis::RedisV1::ListTokenAuthUsersResponse::Representation
          command.response_class = Google::Apis::RedisV1::ListTokenAuthUsersResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['orderBy'] = order_by unless order_by.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Removes a auth token for a user of a token based auth enabled instance.
        # @param [String] name
        #   Required. The name of the token auth user resource that this auth token will
        #   be deleted from. Format: projects/`project`/locations/`location`/clusters/`
        #   cluster`/tokenAuthUsers/`token_auth_user`/authTokens/`auth_token`
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::RedisV1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::RedisV1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_location_cluster_token_auth_user_auth_token(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1/{+name}', options)
          command.response_representation = Google::Apis::RedisV1::Operation::Representation
          command.response_class = Google::Apis::RedisV1::Operation
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets a specific auth token for a specific token auth user.
        # @param [String] name
        #   Required. The name of auth token for a token based auth enabled cluster.
        #   Format: projects/`project`/locations/`location`/clusters/`cluster`/
        #   tokenAuthUsers/`token_auth_user`/authTokens/`auth_token`
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::RedisV1::AuthToken] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::RedisV1::AuthToken]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_cluster_token_auth_user_auth_token(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}', options)
          command.response_representation = Google::Apis::RedisV1::AuthToken::Representation
          command.response_class = Google::Apis::RedisV1::AuthToken
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists all the auth tokens for a specific token auth user.
        # @param [String] parent
        #   Required. The parent resource that this auth token will be listed for. Format:
        #   projects/`project`/locations/`location`/clusters/`cluster`/tokenAuthUsers/`
        #   token_auth_user`
        # @param [String] filter
        #   Optional. Expression for filtering results.
        # @param [String] order_by
        #   Optional. Sort results by a defined order.
        # @param [Fixnum] page_size
        #   Optional. The maximum number of items to return. The maximum value is 1000;
        #   values above 1000 will be coerced to 1000. If not specified, a default value
        #   of 1000 will be used by the service. Regardless of the page_size value, the
        #   response may include a partial list and a caller should only rely on response'
        #   s `next_page_token` to determine if there are more clusters left to be queried.
        # @param [String] page_token
        #   Optional. The `next_page_token` value returned from a previous [
        #   ListTokenAuthUsers] request, if any.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::RedisV1::ListAuthTokensResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::RedisV1::ListAuthTokensResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_cluster_token_auth_user_auth_tokens(parent, filter: nil, order_by: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+parent}/authTokens', options)
          command.response_representation = Google::Apis::RedisV1::ListAuthTokensResponse::Representation
          command.response_class = Google::Apis::RedisV1::ListAuthTokensResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['orderBy'] = order_by unless order_by.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a Redis instance based on the specified tier and memory size. By
        # default, the instance is accessible from the project's [default network](https:
        # //cloud.google.com/vpc/docs/vpc). The creation is executed asynchronously and
        # callers may check the returned operation to track its progress. Once the
        # operation is completed the Redis instance will be fully functional. Completed
        # longrunning.Operation will contain the new instance object in the response
        # field. The returned operation is automatically deleted after a few hours, so
        # there is no need to call DeleteOperation.
        # @param [String] parent
        #   Required. The resource name of the instance location using the form: `projects/
        #   `project_id`/locations/`location_id`` where `location_id` refers to a GCP
        #   region.
        # @param [Google::Apis::RedisV1::Instance] instance_object
        # @param [String] instance_id
        #   Required. The logical name of the Redis instance in the customer project with
        #   the following restrictions: * Must contain only lowercase letters, numbers,
        #   and hyphens. * Must start with a letter. * Must be between 1-40 characters. *
        #   Must end with a number or a letter. * Must be unique within the customer
        #   project / location
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::RedisV1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::RedisV1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_location_instance(parent, instance_object = nil, instance_id: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+parent}/instances', options)
          command.request_representation = Google::Apis::RedisV1::Instance::Representation
          command.request_object = instance_object
          command.response_representation = Google::Apis::RedisV1::Operation::Representation
          command.response_class = Google::Apis::RedisV1::Operation
          command.params['parent'] = parent unless parent.nil?
          command.query['instanceId'] = instance_id unless instance_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes a specific Redis instance. Instance stops serving and data is deleted.
        # @param [String] name
        #   Required. Redis instance resource name using the form: `projects/`project_id`/
        #   locations/`location_id`/instances/`instance_id`` where `location_id` refers to
        #   a GCP region.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::RedisV1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::RedisV1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_location_instance(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1/{+name}', options)
          command.response_representation = Google::Apis::RedisV1::Operation::Representation
          command.response_class = Google::Apis::RedisV1::Operation
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Export Redis instance data into a Redis RDB format file in Cloud Storage.
        # Redis will continue serving during this operation. The returned operation is
        # automatically deleted after a few hours, so there is no need to call
        # DeleteOperation.
        # @param [String] name
        #   Required. Redis instance resource name using the form: `projects/`project_id`/
        #   locations/`location_id`/instances/`instance_id`` where `location_id` refers to
        #   a GCP region.
        # @param [Google::Apis::RedisV1::ExportInstanceRequest] export_instance_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::RedisV1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::RedisV1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def export_instance(name, export_instance_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+name}:export', options)
          command.request_representation = Google::Apis::RedisV1::ExportInstanceRequest::Representation
          command.request_object = export_instance_request_object
          command.response_representation = Google::Apis::RedisV1::Operation::Representation
          command.response_class = Google::Apis::RedisV1::Operation
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Initiates a failover of the primary node to current replica node for a
        # specific STANDARD tier Cloud Memorystore for Redis instance.
        # @param [String] name
        #   Required. Redis instance resource name using the form: `projects/`project_id`/
        #   locations/`location_id`/instances/`instance_id`` where `location_id` refers to
        #   a GCP region.
        # @param [Google::Apis::RedisV1::FailoverInstanceRequest] failover_instance_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::RedisV1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::RedisV1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def failover_instance(name, failover_instance_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+name}:failover', options)
          command.request_representation = Google::Apis::RedisV1::FailoverInstanceRequest::Representation
          command.request_object = failover_instance_request_object
          command.response_representation = Google::Apis::RedisV1::Operation::Representation
          command.response_class = Google::Apis::RedisV1::Operation
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets the details of a specific Redis instance.
        # @param [String] name
        #   Required. Redis instance resource name using the form: `projects/`project_id`/
        #   locations/`location_id`/instances/`instance_id`` where `location_id` refers to
        #   a GCP region.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::RedisV1::Instance] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::RedisV1::Instance]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_instance(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}', options)
          command.response_representation = Google::Apis::RedisV1::Instance::Representation
          command.response_class = Google::Apis::RedisV1::Instance
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets the AUTH string for a Redis instance. If AUTH is not enabled for the
        # instance the response will be empty. This information is not included in the
        # details returned to GetInstance.
        # @param [String] name
        #   Required. Redis instance resource name using the form: `projects/`project_id`/
        #   locations/`location_id`/instances/`instance_id`` where `location_id` refers to
        #   a GCP region.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::RedisV1::InstanceAuthString] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::RedisV1::InstanceAuthString]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_instance_auth_string(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}/authString', options)
          command.response_representation = Google::Apis::RedisV1::InstanceAuthString::Representation
          command.response_class = Google::Apis::RedisV1::InstanceAuthString
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Import a Redis RDB snapshot file from Cloud Storage into a Redis instance.
        # Redis may stop serving during this operation. Instance state will be IMPORTING
        # for entire operation. When complete, the instance will contain only data from
        # the imported file. The returned operation is automatically deleted after a few
        # hours, so there is no need to call DeleteOperation.
        # @param [String] name
        #   Required. Redis instance resource name using the form: `projects/`project_id`/
        #   locations/`location_id`/instances/`instance_id`` where `location_id` refers to
        #   a GCP region.
        # @param [Google::Apis::RedisV1::ImportInstanceRequest] import_instance_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::RedisV1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::RedisV1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def import_instance(name, import_instance_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+name}:import', options)
          command.request_representation = Google::Apis::RedisV1::ImportInstanceRequest::Representation
          command.request_object = import_instance_request_object
          command.response_representation = Google::Apis::RedisV1::Operation::Representation
          command.response_class = Google::Apis::RedisV1::Operation
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists all Redis instances owned by a project in either the specified location (
        # region) or all locations. The location should have the following format: * `
        # projects/`project_id`/locations/`location_id`` If `location_id` is specified
        # as `-` (wildcard), then all regions available to the project are queried, and
        # the results are aggregated.
        # @param [String] parent
        #   Required. The resource name of the instance location using the form: `projects/
        #   `project_id`/locations/`location_id`` where `location_id` refers to a GCP
        #   region.
        # @param [Fixnum] page_size
        #   The maximum number of items to return. If not specified, a default value of
        #   1000 will be used by the service. Regardless of the page_size value, the
        #   response may include a partial list and a caller should only rely on response'
        #   s `next_page_token` to determine if there are more instances left to be
        #   queried.
        # @param [String] page_token
        #   The `next_page_token` value returned from a previous ListInstances request, if
        #   any.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::RedisV1::ListInstancesResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::RedisV1::ListInstancesResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_instances(parent, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+parent}/instances', options)
          command.response_representation = Google::Apis::RedisV1::ListInstancesResponse::Representation
          command.response_class = Google::Apis::RedisV1::ListInstancesResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates the metadata and configuration of a specific Redis instance. Completed
        # longrunning.Operation will contain the new instance object in the response
        # field. The returned operation is automatically deleted after a few hours, so
        # there is no need to call DeleteOperation.
        # @param [String] name
        #   Required. Unique name of the resource in this scope including project and
        #   location using the form: `projects/`project_id`/locations/`location_id`/
        #   instances/`instance_id`` Note: Redis instances are managed and addressed at
        #   regional level so location_id here refers to a GCP region; however, users may
        #   choose which specific zone (or collection of zones for cross-zone instances)
        #   an instance should be provisioned in. Refer to location_id and
        #   alternative_location_id fields for more details.
        # @param [Google::Apis::RedisV1::Instance] instance_object
        # @param [String] update_mask
        #   Required. Mask of fields to update. At least one path must be supplied in this
        #   field. The elements of the repeated paths field may only include these fields
        #   from Instance: * `displayName` * `labels` * `memorySizeGb` * `redisConfig` * `
        #   replica_count`
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::RedisV1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::RedisV1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_project_location_instance(name, instance_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v1/{+name}', options)
          command.request_representation = Google::Apis::RedisV1::Instance::Representation
          command.request_object = instance_object
          command.response_representation = Google::Apis::RedisV1::Operation::Representation
          command.response_class = Google::Apis::RedisV1::Operation
          command.params['name'] = name unless name.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Reschedule maintenance for a given instance in a given project and location.
        # @param [String] name
        #   Required. Redis instance resource name using the form: `projects/`project_id`/
        #   locations/`location_id`/instances/`instance_id`` where `location_id` refers to
        #   a GCP region.
        # @param [Google::Apis::RedisV1::RescheduleMaintenanceRequest] reschedule_maintenance_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::RedisV1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::RedisV1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def reschedule_instance_maintenance(name, reschedule_maintenance_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+name}:rescheduleMaintenance', options)
          command.request_representation = Google::Apis::RedisV1::RescheduleMaintenanceRequest::Representation
          command.request_object = reschedule_maintenance_request_object
          command.response_representation = Google::Apis::RedisV1::Operation::Representation
          command.response_class = Google::Apis::RedisV1::Operation
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Upgrades Redis instance to the newer Redis version specified in the request.
        # @param [String] name
        #   Required. Redis instance resource name using the form: `projects/`project_id`/
        #   locations/`location_id`/instances/`instance_id`` where `location_id` refers to
        #   a GCP region.
        # @param [Google::Apis::RedisV1::UpgradeInstanceRequest] upgrade_instance_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::RedisV1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::RedisV1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def upgrade_instance(name, upgrade_instance_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+name}:upgrade', options)
          command.request_representation = Google::Apis::RedisV1::UpgradeInstanceRequest::Representation
          command.request_object = upgrade_instance_request_object
          command.response_representation = Google::Apis::RedisV1::Operation::Representation
          command.response_class = Google::Apis::RedisV1::Operation
          command.params['name'] = name unless name.nil?
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
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::RedisV1::Empty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::RedisV1::Empty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def cancel_project_location_operation(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+name}:cancel', options)
          command.response_representation = Google::Apis::RedisV1::Empty::Representation
          command.response_class = Google::Apis::RedisV1::Empty
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
        # @yieldparam result [Google::Apis::RedisV1::Empty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::RedisV1::Empty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_location_operation(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1/{+name}', options)
          command.response_representation = Google::Apis::RedisV1::Empty::Representation
          command.response_class = Google::Apis::RedisV1::Empty
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
        # @yieldparam result [Google::Apis::RedisV1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::RedisV1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_operation(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}', options)
          command.response_representation = Google::Apis::RedisV1::Operation::Representation
          command.response_class = Google::Apis::RedisV1::Operation
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
        # @yieldparam result [Google::Apis::RedisV1::ListOperationsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::RedisV1::ListOperationsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_operations(name, filter: nil, page_size: nil, page_token: nil, return_partial_success: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}/operations', options)
          command.response_representation = Google::Apis::RedisV1::ListOperationsResponse::Representation
          command.response_class = Google::Apis::RedisV1::ListOperationsResponse
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
