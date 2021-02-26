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
    module CloudresourcemanagerV3
      # Cloud Resource Manager API
      #
      # Creates, reads, and updates metadata for Google Cloud Platform resource
      #  containers.
      #
      # @example
      #    require 'google/apis/cloudresourcemanager_v3'
      #
      #    Cloudresourcemanager = Google::Apis::CloudresourcemanagerV3 # Alias the module
      #    service = Cloudresourcemanager::CloudResourceManagerService.new
      #
      # @see https://cloud.google.com/resource-manager
      class CloudResourceManagerService < Google::Apis::Core::BaseService
        # @return [String]
        #  API key. Your API key identifies your project and provides you with API access,
        #  quota, and reports. Required unless you provide an OAuth 2.0 token.
        attr_accessor :key

        # @return [String]
        #  Available to use for quota purposes for server-side applications. Can be any
        #  arbitrary string assigned to a user, but should not exceed 40 characters.
        attr_accessor :quota_user

        def initialize
          super('https://cloudresourcemanager.googleapis.com/', '',
                client_name: 'google-apis-cloudresourcemanager_v3',
                client_version: Google::Apis::CloudresourcemanagerV3::GEM_VERSION)
          @batch_path = 'batch'
        end
        
        # Create a Lien which applies to the resource denoted by the `parent` field.
        # Callers of this method will require permission on the `parent` resource. For
        # example, applying to `projects/1234` requires permission `resourcemanager.
        # projects.updateLiens`. NOTE: Some resources may limit the number of Liens
        # which may be applied.
        # @param [Google::Apis::CloudresourcemanagerV3::Lien] lien_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::CloudresourcemanagerV3::Lien] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::CloudresourcemanagerV3::Lien]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_lien(lien_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v3/liens', options)
          command.request_representation = Google::Apis::CloudresourcemanagerV3::Lien::Representation
          command.request_object = lien_object
          command.response_representation = Google::Apis::CloudresourcemanagerV3::Lien::Representation
          command.response_class = Google::Apis::CloudresourcemanagerV3::Lien
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Delete a Lien by `name`. Callers of this method will require permission on the
        # `parent` resource. For example, a Lien with a `parent` of `projects/1234`
        # requires permission `resourcemanager.projects.updateLiens`.
        # @param [String] name
        #   Required. The name/identifier of the Lien to delete.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::CloudresourcemanagerV3::Empty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::CloudresourcemanagerV3::Empty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_lien(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v3/{+name}', options)
          command.response_representation = Google::Apis::CloudresourcemanagerV3::Empty::Representation
          command.response_class = Google::Apis::CloudresourcemanagerV3::Empty
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Retrieve a Lien by `name`. Callers of this method will require permission on
        # the `parent` resource. For example, a Lien with a `parent` of `projects/1234`
        # requires permission `resourcemanager.projects.get`
        # @param [String] name
        #   Required. The name/identifier of the Lien.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::CloudresourcemanagerV3::Lien] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::CloudresourcemanagerV3::Lien]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_lien(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v3/{+name}', options)
          command.response_representation = Google::Apis::CloudresourcemanagerV3::Lien::Representation
          command.response_class = Google::Apis::CloudresourcemanagerV3::Lien
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # List all Liens applied to the `parent` resource. Callers of this method will
        # require permission on the `parent` resource. For example, a Lien with a `
        # parent` of `projects/1234` requires permission `resourcemanager.projects.get`.
        # @param [Fixnum] page_size
        #   The maximum number of items to return. This is a suggestion for the server.
        # @param [String] page_token
        #   The `next_page_token` value returned from a previous List request, if any.
        # @param [String] parent
        #   Required. The name of the resource to list all attached Liens. For example, `
        #   projects/1234`. (google.api.field_policy).resource_type annotation is not set
        #   since the parent depends on the meta api implementation. This field could be a
        #   project or other sub project resources.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::CloudresourcemanagerV3::ListLiensResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::CloudresourcemanagerV3::ListLiensResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_liens(page_size: nil, page_token: nil, parent: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v3/liens', options)
          command.response_representation = Google::Apis::CloudresourcemanagerV3::ListLiensResponse::Representation
          command.response_class = Google::Apis::CloudresourcemanagerV3::ListLiensResponse
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['parent'] = parent unless parent.nil?
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
        # @yieldparam result [Google::Apis::CloudresourcemanagerV3::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::CloudresourcemanagerV3::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_operation(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v3/{+name}', options)
          command.response_representation = Google::Apis::CloudresourcemanagerV3::Operation::Representation
          command.response_class = Google::Apis::CloudresourcemanagerV3::Operation
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a TagBinding between a TagValue and a cloud resource (currently
        # project, folder, or organization).
        # @param [Google::Apis::CloudresourcemanagerV3::TagBinding] tag_binding_object
        # @param [Boolean] validate_only
        #   Optional. Set to true to perform the validations necessary for creating the
        #   resource, but not actually perform the action.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::CloudresourcemanagerV3::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::CloudresourcemanagerV3::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_tag_binding(tag_binding_object = nil, validate_only: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v3/tagBindings', options)
          command.request_representation = Google::Apis::CloudresourcemanagerV3::TagBinding::Representation
          command.request_object = tag_binding_object
          command.response_representation = Google::Apis::CloudresourcemanagerV3::Operation::Representation
          command.response_class = Google::Apis::CloudresourcemanagerV3::Operation
          command.query['validateOnly'] = validate_only unless validate_only.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes a TagBinding.
        # @param [String] name
        #   Required. The name of the TagBinding. This is a String of the form: `
        #   tagBindings/`id`` (e.g. `tagBindings/%2F%2Fcloudresourcemanager.googleapis.com%
        #   2Fprojects%2F123/tagValues/456`).
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::CloudresourcemanagerV3::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::CloudresourcemanagerV3::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_tag_binding(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v3/{+name}', options)
          command.response_representation = Google::Apis::CloudresourcemanagerV3::Operation::Representation
          command.response_class = Google::Apis::CloudresourcemanagerV3::Operation
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists the TagBindings for the given cloud resource, as specified with `parent`.
        # NOTE: The `parent` field is expected to be a full resource name: https://
        # cloud.google.com/apis/design/resource_names#full_resource_name
        # @param [Fixnum] page_size
        #   Optional. The maximum number of TagBindings to return in the response. This is
        #   currently not used by the server and will return the full page even if a size
        #   is specified.
        # @param [String] page_token
        #   Optional. A pagination token returned from a previous call to `ListTagBindings`
        #   that indicates where this listing should continue from.
        # @param [String] parent
        #   Required. The full resource name of a resource for which you want to list
        #   existing TagBindings. E.g. "//cloudresourcemanager.googleapis.com/projects/123"
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::CloudresourcemanagerV3::ListTagBindingsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::CloudresourcemanagerV3::ListTagBindingsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_tag_bindings(page_size: nil, page_token: nil, parent: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v3/tagBindings', options)
          command.response_representation = Google::Apis::CloudresourcemanagerV3::ListTagBindingsResponse::Representation
          command.response_class = Google::Apis::CloudresourcemanagerV3::ListTagBindingsResponse
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a new TagKey. If another request with the same parameters is sent
        # while the original request is in process, the second request will receive an
        # error. A maximum of 300 TagKeys can exist under a parent at any given time.
        # @param [Google::Apis::CloudresourcemanagerV3::TagKey] tag_key_object
        # @param [Boolean] validate_only
        #   Optional. Set to true to perform validations necessary for creating the
        #   resource, but not actually perform the action.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::CloudresourcemanagerV3::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::CloudresourcemanagerV3::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_tag_key(tag_key_object = nil, validate_only: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v3/tagKeys', options)
          command.request_representation = Google::Apis::CloudresourcemanagerV3::TagKey::Representation
          command.request_object = tag_key_object
          command.response_representation = Google::Apis::CloudresourcemanagerV3::Operation::Representation
          command.response_class = Google::Apis::CloudresourcemanagerV3::Operation
          command.query['validateOnly'] = validate_only unless validate_only.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes a TagKey. The TagKey cannot be deleted if it has any child TagValues.
        # @param [String] name
        #   Required. The resource name of a TagKey to be deleted in the format `tagKeys/
        #   123`. The TagKey cannot be a parent of any existing TagValues or it will not
        #   be deleted successfully.
        # @param [String] etag
        #   Optional. The etag known to the client for the expected state of the TagKey.
        #   This is to be used for optimistic concurrency.
        # @param [Boolean] validate_only
        #   Optional. Set as true to perform validations necessary for deletion, but not
        #   actually perform the action.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::CloudresourcemanagerV3::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::CloudresourcemanagerV3::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_tag_key(name, etag: nil, validate_only: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v3/{+name}', options)
          command.response_representation = Google::Apis::CloudresourcemanagerV3::Operation::Representation
          command.response_class = Google::Apis::CloudresourcemanagerV3::Operation
          command.params['name'] = name unless name.nil?
          command.query['etag'] = etag unless etag.nil?
          command.query['validateOnly'] = validate_only unless validate_only.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Retrieves a TagKey. This method will return `PERMISSION_DENIED` if the key
        # does not exist or the user does not have permission to view it.
        # @param [String] name
        #   Required. A resource name in the format `tagKeys/`id``, such as `tagKeys/123`.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::CloudresourcemanagerV3::TagKey] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::CloudresourcemanagerV3::TagKey]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_tag_key(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v3/{+name}', options)
          command.response_representation = Google::Apis::CloudresourcemanagerV3::TagKey::Representation
          command.response_class = Google::Apis::CloudresourcemanagerV3::TagKey
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets the access control policy for a TagKey. The returned policy may be empty
        # if no such policy or resource exists. The `resource` field should be the
        # TagKey's resource name. For example, "tagKeys/1234". The caller must have `
        # cloudresourcemanager.googleapis.com/tagKeys.getIamPolicy` permission on the
        # specified TagKey.
        # @param [String] resource
        #   REQUIRED: The resource for which the policy is being requested. See the
        #   operation documentation for the appropriate value for this field.
        # @param [Google::Apis::CloudresourcemanagerV3::GetIamPolicyRequest] get_iam_policy_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::CloudresourcemanagerV3::Policy] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::CloudresourcemanagerV3::Policy]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_tag_key_iam_policy(resource, get_iam_policy_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v3/{+resource}:getIamPolicy', options)
          command.request_representation = Google::Apis::CloudresourcemanagerV3::GetIamPolicyRequest::Representation
          command.request_object = get_iam_policy_request_object
          command.response_representation = Google::Apis::CloudresourcemanagerV3::Policy::Representation
          command.response_class = Google::Apis::CloudresourcemanagerV3::Policy
          command.params['resource'] = resource unless resource.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists all TagKeys for a parent resource.
        # @param [Fixnum] page_size
        #   Optional. The maximum number of TagKeys to return in the response. This is
        #   currently not used by the server and will return the full page even if a size
        #   is specified currently.
        # @param [String] page_token
        #   Optional. A pagination token returned from a previous call to `ListTagKey`
        #   that indicates where this listing should continue from. This is currently not
        #   used by the server.
        # @param [String] parent
        #   Required. The resource name of the new TagKey's parent. Must be of the form `
        #   folders/`folder_id`` or `organizations/`org_id``.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::CloudresourcemanagerV3::ListTagKeysResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::CloudresourcemanagerV3::ListTagKeysResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_tag_keys(page_size: nil, page_token: nil, parent: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v3/tagKeys', options)
          command.response_representation = Google::Apis::CloudresourcemanagerV3::ListTagKeysResponse::Representation
          command.response_class = Google::Apis::CloudresourcemanagerV3::ListTagKeysResponse
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates the attributes of the TagKey resource.
        # @param [String] name
        #   Immutable. The resource name for a TagKey. Must be in the format `tagKeys/`
        #   tag_key_id``, where `tag_key_id` is the generated numeric id for the TagKey.
        # @param [Google::Apis::CloudresourcemanagerV3::TagKey] tag_key_object
        # @param [String] update_mask
        #   Fields to be updated. The mask may only contain `description` or `etag`. If
        #   omitted entirely, both `description` and `etag` are assumed to be significant.
        # @param [Boolean] validate_only
        #   Set as true to perform validations necessary for updating the resource, but
        #   not actually perform the action.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::CloudresourcemanagerV3::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::CloudresourcemanagerV3::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_tag_key(name, tag_key_object = nil, update_mask: nil, validate_only: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v3/{+name}', options)
          command.request_representation = Google::Apis::CloudresourcemanagerV3::TagKey::Representation
          command.request_object = tag_key_object
          command.response_representation = Google::Apis::CloudresourcemanagerV3::Operation::Representation
          command.response_class = Google::Apis::CloudresourcemanagerV3::Operation
          command.params['name'] = name unless name.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['validateOnly'] = validate_only unless validate_only.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Sets the access control policy on a TagKey, replacing any existing policy. The
        # `resource` field should be the TagKey's resource name. For example, "tagKeys/
        # 1234". The caller must have `resourcemanager.tagKeys.setIamPolicy` permission
        # on the identified tagValue.
        # @param [String] resource
        #   REQUIRED: The resource for which the policy is being specified. See the
        #   operation documentation for the appropriate value for this field.
        # @param [Google::Apis::CloudresourcemanagerV3::SetIamPolicyRequest] set_iam_policy_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::CloudresourcemanagerV3::Policy] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::CloudresourcemanagerV3::Policy]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def set_tag_key_iam_policy(resource, set_iam_policy_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v3/{+resource}:setIamPolicy', options)
          command.request_representation = Google::Apis::CloudresourcemanagerV3::SetIamPolicyRequest::Representation
          command.request_object = set_iam_policy_request_object
          command.response_representation = Google::Apis::CloudresourcemanagerV3::Policy::Representation
          command.response_class = Google::Apis::CloudresourcemanagerV3::Policy
          command.params['resource'] = resource unless resource.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Returns permissions that a caller has on the specified TagKey. The `resource`
        # field should be the TagKey's resource name. For example, "tagKeys/1234". There
        # are no permissions required for making this API call.
        # @param [String] resource
        #   REQUIRED: The resource for which the policy detail is being requested. See the
        #   operation documentation for the appropriate value for this field.
        # @param [Google::Apis::CloudresourcemanagerV3::TestIamPermissionsRequest] test_iam_permissions_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::CloudresourcemanagerV3::TestIamPermissionsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::CloudresourcemanagerV3::TestIamPermissionsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def test_tag_key_iam_permissions(resource, test_iam_permissions_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v3/{+resource}:testIamPermissions', options)
          command.request_representation = Google::Apis::CloudresourcemanagerV3::TestIamPermissionsRequest::Representation
          command.request_object = test_iam_permissions_request_object
          command.response_representation = Google::Apis::CloudresourcemanagerV3::TestIamPermissionsResponse::Representation
          command.response_class = Google::Apis::CloudresourcemanagerV3::TestIamPermissionsResponse
          command.params['resource'] = resource unless resource.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a TagValue as a child of the specified TagKey. If a another request
        # with the same parameters is sent while the original request is in process the
        # second request will receive an error. A maximum of 300 TagValues can exist
        # under a TagKey at any given time.
        # @param [Google::Apis::CloudresourcemanagerV3::TagValue] tag_value_object
        # @param [Boolean] validate_only
        #   Optional. Set as true to perform the validations necessary for creating the
        #   resource, but not actually perform the action.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::CloudresourcemanagerV3::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::CloudresourcemanagerV3::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_tag_value(tag_value_object = nil, validate_only: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v3/tagValues', options)
          command.request_representation = Google::Apis::CloudresourcemanagerV3::TagValue::Representation
          command.request_object = tag_value_object
          command.response_representation = Google::Apis::CloudresourcemanagerV3::Operation::Representation
          command.response_class = Google::Apis::CloudresourcemanagerV3::Operation
          command.query['validateOnly'] = validate_only unless validate_only.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes a TagValue. The TagValue cannot have any bindings when it is deleted.
        # @param [String] name
        #   Required. Resource name for TagValue to be deleted in the format tagValues/456.
        # @param [String] etag
        #   Optional. The etag known to the client for the expected state of the TagValue.
        #   This is to be used for optimistic concurrency.
        # @param [Boolean] validate_only
        #   Optional. Set as true to perform the validations necessary for deletion, but
        #   not actually perform the action.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::CloudresourcemanagerV3::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::CloudresourcemanagerV3::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_tag_value(name, etag: nil, validate_only: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v3/{+name}', options)
          command.response_representation = Google::Apis::CloudresourcemanagerV3::Operation::Representation
          command.response_class = Google::Apis::CloudresourcemanagerV3::Operation
          command.params['name'] = name unless name.nil?
          command.query['etag'] = etag unless etag.nil?
          command.query['validateOnly'] = validate_only unless validate_only.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Retrieves TagValue. If the TagValue or namespaced name does not exist, or if
        # the user does not have permission to view it, this method will return `
        # PERMISSION_DENIED`.
        # @param [String] name
        #   Required. Resource name for TagValue to be fetched in the format `tagValues/
        #   456`.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::CloudresourcemanagerV3::TagValue] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::CloudresourcemanagerV3::TagValue]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_tag_value(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v3/{+name}', options)
          command.response_representation = Google::Apis::CloudresourcemanagerV3::TagValue::Representation
          command.response_class = Google::Apis::CloudresourcemanagerV3::TagValue
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets the access control policy for a TagValue. The returned policy may be
        # empty if no such policy or resource exists. The `resource` field should be the
        # TagValue's resource name. For example: `tagValues/1234`. The caller must have
        # the `cloudresourcemanager.googleapis.com/tagValues.getIamPolicy` permission on
        # the identified TagValue to get the access control policy.
        # @param [String] resource
        #   REQUIRED: The resource for which the policy is being requested. See the
        #   operation documentation for the appropriate value for this field.
        # @param [Google::Apis::CloudresourcemanagerV3::GetIamPolicyRequest] get_iam_policy_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::CloudresourcemanagerV3::Policy] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::CloudresourcemanagerV3::Policy]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_tag_value_iam_policy(resource, get_iam_policy_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v3/{+resource}:getIamPolicy', options)
          command.request_representation = Google::Apis::CloudresourcemanagerV3::GetIamPolicyRequest::Representation
          command.request_object = get_iam_policy_request_object
          command.response_representation = Google::Apis::CloudresourcemanagerV3::Policy::Representation
          command.response_class = Google::Apis::CloudresourcemanagerV3::Policy
          command.params['resource'] = resource unless resource.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists all TagValues for a specific TagKey.
        # @param [Fixnum] page_size
        #   Optional. The maximum number of TagValues to return in the response. This is
        #   currently not used by the server and will return the full page even if a size
        #   is specified currently.
        # @param [String] page_token
        #   Optional. A pagination token returned from a previous call to `ListTagValues`
        #   that indicates where this listing should continue from. This is currently not
        #   used by the server.
        # @param [String] parent
        #   Required. Resource name for TagKey, parent of the TagValues to be listed, in
        #   the format `tagKeys/123`.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::CloudresourcemanagerV3::ListTagValuesResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::CloudresourcemanagerV3::ListTagValuesResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_tag_values(page_size: nil, page_token: nil, parent: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v3/tagValues', options)
          command.response_representation = Google::Apis::CloudresourcemanagerV3::ListTagValuesResponse::Representation
          command.response_class = Google::Apis::CloudresourcemanagerV3::ListTagValuesResponse
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates the attributes of the TagValue resource.
        # @param [String] name
        #   Immutable. Resource name for TagValue in the format `tagValues/456`.
        # @param [Google::Apis::CloudresourcemanagerV3::TagValue] tag_value_object
        # @param [String] update_mask
        #   Optional. Fields to be updated.
        # @param [Boolean] validate_only
        #   Optional. True to perform validations necessary for updating the resource, but
        #   not actually perform the action.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::CloudresourcemanagerV3::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::CloudresourcemanagerV3::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_tag_value(name, tag_value_object = nil, update_mask: nil, validate_only: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v3/{+name}', options)
          command.request_representation = Google::Apis::CloudresourcemanagerV3::TagValue::Representation
          command.request_object = tag_value_object
          command.response_representation = Google::Apis::CloudresourcemanagerV3::Operation::Representation
          command.response_class = Google::Apis::CloudresourcemanagerV3::Operation
          command.params['name'] = name unless name.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['validateOnly'] = validate_only unless validate_only.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Sets the access control policy on a TagValue, replacing any existing policy.
        # The `resource` field should be the TagValue's resource name. For example: `
        # tagValues/1234`. The caller must have `resourcemanager.tagValues.setIamPolicy`
        # permission on the identified tagValue.
        # @param [String] resource
        #   REQUIRED: The resource for which the policy is being specified. See the
        #   operation documentation for the appropriate value for this field.
        # @param [Google::Apis::CloudresourcemanagerV3::SetIamPolicyRequest] set_iam_policy_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::CloudresourcemanagerV3::Policy] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::CloudresourcemanagerV3::Policy]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def set_tag_value_iam_policy(resource, set_iam_policy_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v3/{+resource}:setIamPolicy', options)
          command.request_representation = Google::Apis::CloudresourcemanagerV3::SetIamPolicyRequest::Representation
          command.request_object = set_iam_policy_request_object
          command.response_representation = Google::Apis::CloudresourcemanagerV3::Policy::Representation
          command.response_class = Google::Apis::CloudresourcemanagerV3::Policy
          command.params['resource'] = resource unless resource.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Returns permissions that a caller has on the specified TagValue. The `resource`
        # field should be the TagValue's resource name. For example: `tagValues/1234`.
        # There are no permissions required for making this API call.
        # @param [String] resource
        #   REQUIRED: The resource for which the policy detail is being requested. See the
        #   operation documentation for the appropriate value for this field.
        # @param [Google::Apis::CloudresourcemanagerV3::TestIamPermissionsRequest] test_iam_permissions_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::CloudresourcemanagerV3::TestIamPermissionsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::CloudresourcemanagerV3::TestIamPermissionsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def test_tag_value_iam_permissions(resource, test_iam_permissions_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v3/{+resource}:testIamPermissions', options)
          command.request_representation = Google::Apis::CloudresourcemanagerV3::TestIamPermissionsRequest::Representation
          command.request_object = test_iam_permissions_request_object
          command.response_representation = Google::Apis::CloudresourcemanagerV3::TestIamPermissionsResponse::Representation
          command.response_class = Google::Apis::CloudresourcemanagerV3::TestIamPermissionsResponse
          command.params['resource'] = resource unless resource.nil?
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
