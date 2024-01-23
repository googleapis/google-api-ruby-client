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
    module ApikeysV2
      # API Keys API
      #
      # Manages the API keys associated with developer projects.
      #
      # @example
      #    require 'google/apis/apikeys_v2'
      #
      #    Apikeys = Google::Apis::ApikeysV2 # Alias the module
      #    service = Apikeys::ApiKeysServiceService.new
      #
      # @see https://cloud.google.com/api-keys/docs
      class ApiKeysServiceService < Google::Apis::Core::BaseService
        DEFAULT_ENDPOINT_TEMPLATE = "https://apikeys.$UNIVERSE_DOMAIN$/"

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
                client_name: 'google-apis-apikeys_v2',
                client_version: Google::Apis::ApikeysV2::GEM_VERSION)
          @batch_path = 'batch'
        end
        
        # Find the parent project and resource name of the API key that matches the key
        # string in the request. If the API key has been purged, resource name will not
        # be set. The service account must have the `apikeys.keys.lookup` permission on
        # the parent project.
        # @param [String] key_string
        #   Required. Finds the project that owns the key string value.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ApikeysV2::V2LookupKeyResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ApikeysV2::V2LookupKeyResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def lookup_key_key(key_string: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2/keys:lookupKey', options)
          command.response_representation = Google::Apis::ApikeysV2::V2LookupKeyResponse::Representation
          command.response_class = Google::Apis::ApikeysV2::V2LookupKeyResponse
          command.query['keyString'] = key_string unless key_string.nil?
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
        # @yieldparam result [Google::Apis::ApikeysV2::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ApikeysV2::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_operation(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2/{+name}', options)
          command.response_representation = Google::Apis::ApikeysV2::Operation::Representation
          command.response_class = Google::Apis::ApikeysV2::Operation
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a new API key. NOTE: Key is a global resource; hence the only
        # supported value for location is `global`.
        # @param [String] parent
        #   Required. The project in which the API key is created.
        # @param [Google::Apis::ApikeysV2::V2Key] v2_key_object
        # @param [String] key_id
        #   User specified key id (optional). If specified, it will become the final
        #   component of the key resource name. The id must be unique within the project,
        #   must conform with RFC-1034, is restricted to lower-cased letters, and has a
        #   maximum length of 63 characters. In another word, the id must match the
        #   regular expression: `[a-z]([a-z0-9-]`0,61`[a-z0-9])?`. The id must NOT be a
        #   UUID-like string.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ApikeysV2::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ApikeysV2::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_location_key(parent, v2_key_object = nil, key_id: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v2/{+parent}/keys', options)
          command.request_representation = Google::Apis::ApikeysV2::V2Key::Representation
          command.request_object = v2_key_object
          command.response_representation = Google::Apis::ApikeysV2::Operation::Representation
          command.response_class = Google::Apis::ApikeysV2::Operation
          command.params['parent'] = parent unless parent.nil?
          command.query['keyId'] = key_id unless key_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes an API key. Deleted key can be retrieved within 30 days of deletion.
        # Afterward, key will be purged from the project. NOTE: Key is a global resource;
        # hence the only supported value for location is `global`.
        # @param [String] name
        #   Required. The resource name of the API key to be deleted.
        # @param [String] etag
        #   Optional. The etag known to the client for the expected state of the key. This
        #   is to be used for optimistic concurrency.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ApikeysV2::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ApikeysV2::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_location_key(name, etag: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v2/{+name}', options)
          command.response_representation = Google::Apis::ApikeysV2::Operation::Representation
          command.response_class = Google::Apis::ApikeysV2::Operation
          command.params['name'] = name unless name.nil?
          command.query['etag'] = etag unless etag.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets the metadata for an API key. The key string of the API key isn't included
        # in the response. NOTE: Key is a global resource; hence the only supported
        # value for location is `global`.
        # @param [String] name
        #   Required. The resource name of the API key to get.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ApikeysV2::V2Key] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ApikeysV2::V2Key]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_key(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2/{+name}', options)
          command.response_representation = Google::Apis::ApikeysV2::V2Key::Representation
          command.response_class = Google::Apis::ApikeysV2::V2Key
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Get the key string for an API key. NOTE: Key is a global resource; hence the
        # only supported value for location is `global`.
        # @param [String] name
        #   Required. The resource name of the API key to be retrieved.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ApikeysV2::V2GetKeyStringResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ApikeysV2::V2GetKeyStringResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_key_key_string(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2/{+name}/keyString', options)
          command.response_representation = Google::Apis::ApikeysV2::V2GetKeyStringResponse::Representation
          command.response_class = Google::Apis::ApikeysV2::V2GetKeyStringResponse
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists the API keys owned by a project. The key string of the API key isn't
        # included in the response. NOTE: Key is a global resource; hence the only
        # supported value for location is `global`.
        # @param [String] parent
        #   Required. Lists all API keys associated with this project.
        # @param [Fixnum] page_size
        #   Optional. Specifies the maximum number of results to be returned at a time.
        # @param [String] page_token
        #   Optional. Requests a specific page of results.
        # @param [Boolean] show_deleted
        #   Optional. Indicate that keys deleted in the past 30 days should also be
        #   returned.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ApikeysV2::V2ListKeysResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ApikeysV2::V2ListKeysResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_keys(parent, page_size: nil, page_token: nil, show_deleted: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2/{+parent}/keys', options)
          command.response_representation = Google::Apis::ApikeysV2::V2ListKeysResponse::Representation
          command.response_class = Google::Apis::ApikeysV2::V2ListKeysResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['showDeleted'] = show_deleted unless show_deleted.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Patches the modifiable fields of an API key. The key string of the API key isn'
        # t included in the response. NOTE: Key is a global resource; hence the only
        # supported value for location is `global`.
        # @param [String] name
        #   Output only. The resource name of the key. The `name` has the form: `projects//
        #   locations/global/keys/`. For example: `projects/123456867718/locations/global/
        #   keys/b7ff1f9f-8275-410a-94dd-3855ee9b5dd2` NOTE: Key is a global resource;
        #   hence the only supported value for location is `global`.
        # @param [Google::Apis::ApikeysV2::V2Key] v2_key_object
        # @param [String] update_mask
        #   The field mask specifies which fields to be updated as part of this request.
        #   All other fields are ignored. Mutable fields are: `display_name`, `
        #   restrictions`, and `annotations`. If an update mask is not provided, the
        #   service treats it as an implied mask equivalent to all allowed fields that are
        #   set on the wire. If the field mask has a special value "*", the service treats
        #   it equivalent to replace all allowed mutable fields.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ApikeysV2::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ApikeysV2::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_project_location_key(name, v2_key_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v2/{+name}', options)
          command.request_representation = Google::Apis::ApikeysV2::V2Key::Representation
          command.request_object = v2_key_object
          command.response_representation = Google::Apis::ApikeysV2::Operation::Representation
          command.response_class = Google::Apis::ApikeysV2::Operation
          command.params['name'] = name unless name.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Undeletes an API key which was deleted within 30 days. NOTE: Key is a global
        # resource; hence the only supported value for location is `global`.
        # @param [String] name
        #   Required. The resource name of the API key to be undeleted.
        # @param [Google::Apis::ApikeysV2::V2UndeleteKeyRequest] v2_undelete_key_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ApikeysV2::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ApikeysV2::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def undelete_project_location_key(name, v2_undelete_key_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v2/{+name}:undelete', options)
          command.request_representation = Google::Apis::ApikeysV2::V2UndeleteKeyRequest::Representation
          command.request_object = v2_undelete_key_request_object
          command.response_representation = Google::Apis::ApikeysV2::Operation::Representation
          command.response_class = Google::Apis::ApikeysV2::Operation
          command.params['name'] = name unless name.nil?
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
