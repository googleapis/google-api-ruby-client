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
        
        # Return a list of effective tags for the given Google Cloud resource, as
        # specified in `parent`.
        # @param [Fixnum] page_size
        #   Optional. The maximum number of effective tags to return in the response. The
        #   server allows a maximum of 300 effective tags to return in a single page. If
        #   unspecified, the server will use 100 as the default.
        # @param [String] page_token
        #   Optional. A pagination token returned from a previous call to `
        #   ListEffectiveTags` that indicates from where this listing should continue.
        # @param [String] parent
        #   Required. The full resource name of a resource for which you want to list the
        #   effective tags. E.g. "//cloudresourcemanager.googleapis.com/projects/123"
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::CloudresourcemanagerV3::ListEffectiveTagsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::CloudresourcemanagerV3::ListEffectiveTagsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_effective_tags(page_size: nil, page_token: nil, parent: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v3/effectiveTags', options)
          command.response_representation = Google::Apis::CloudresourcemanagerV3::ListEffectiveTagsResponse::Representation
          command.response_class = Google::Apis::CloudresourcemanagerV3::ListEffectiveTagsResponse
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a folder in the resource hierarchy. Returns an `Operation` which can
        # be used to track the progress of the folder creation workflow. Upon success,
        # the `Operation.response` field will be populated with the created Folder. In
        # order to succeed, the addition of this new folder must not violate the folder
        # naming, height, or fanout constraints. + The folder's `display_name` must be
        # distinct from all other folders that share its parent. + The addition of the
        # folder must not cause the active folder hierarchy to exceed a height of 10.
        # Note, the full active + deleted folder hierarchy is allowed to reach a height
        # of 20; this provides additional headroom when moving folders that contain
        # deleted folders. + The addition of the folder must not cause the total number
        # of folders under its parent to exceed 300. If the operation fails due to a
        # folder constraint violation, some errors may be returned by the `CreateFolder`
        # request, with status code `FAILED_PRECONDITION` and an error description.
        # Other folder constraint violations will be communicated in the `Operation`,
        # with the specific `PreconditionFailure` returned in the details list in the `
        # Operation.error` field. The caller must have `resourcemanager.folders.create`
        # permission on the identified parent.
        # @param [Google::Apis::CloudresourcemanagerV3::Folder] folder_object
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
        def create_folder(folder_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v3/folders', options)
          command.request_representation = Google::Apis::CloudresourcemanagerV3::Folder::Representation
          command.request_object = folder_object
          command.response_representation = Google::Apis::CloudresourcemanagerV3::Operation::Representation
          command.response_class = Google::Apis::CloudresourcemanagerV3::Operation
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Requests deletion of a folder. The folder is moved into the DELETE_REQUESTED
        # state immediately, and is deleted approximately 30 days later. This method may
        # only be called on an empty folder, where a folder is empty if it doesn't
        # contain any folders or projects in the ACTIVE state. If called on a folder in
        # DELETE_REQUESTED state the operation will result in a no-op success. The
        # caller must have `resourcemanager.folders.delete` permission on the identified
        # folder.
        # @param [String] name
        #   Required. The resource name of the folder to be deleted. Must be of the form `
        #   folders/`folder_id``.
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
        def delete_folder(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v3/{+name}', options)
          command.response_representation = Google::Apis::CloudresourcemanagerV3::Operation::Representation
          command.response_class = Google::Apis::CloudresourcemanagerV3::Operation
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Retrieves a folder identified by the supplied resource name. Valid folder
        # resource names have the format `folders/`folder_id`` (for example, `folders/
        # 1234`). The caller must have `resourcemanager.folders.get` permission on the
        # identified folder.
        # @param [String] name
        #   Required. The resource name of the folder to retrieve. Must be of the form `
        #   folders/`folder_id``.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::CloudresourcemanagerV3::Folder] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::CloudresourcemanagerV3::Folder]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_folder(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v3/{+name}', options)
          command.response_representation = Google::Apis::CloudresourcemanagerV3::Folder::Representation
          command.response_class = Google::Apis::CloudresourcemanagerV3::Folder
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets the access control policy for a folder. The returned policy may be empty
        # if no such policy or resource exists. The `resource` field should be the
        # folder's resource name, for example: "folders/1234". The caller must have `
        # resourcemanager.folders.getIamPolicy` permission on the identified folder.
        # @param [String] resource
        #   REQUIRED: The resource for which the policy is being requested. See [Resource
        #   names](https://cloud.google.com/apis/design/resource_names) for the
        #   appropriate value for this field.
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
        def get_folder_iam_policy(resource, get_iam_policy_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
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
        
        # Lists the folders that are direct descendants of supplied parent resource. `
        # list()` provides a strongly consistent view of the folders underneath the
        # specified parent resource. `list()` returns folders sorted based upon the (
        # ascending) lexical ordering of their display_name. The caller must have `
        # resourcemanager.folders.list` permission on the identified parent.
        # @param [Fixnum] page_size
        #   Optional. The maximum number of folders to return in the response. The server
        #   can return fewer folders than requested. If unspecified, server picks an
        #   appropriate default.
        # @param [String] page_token
        #   Optional. A pagination token returned from a previous call to `ListFolders`
        #   that indicates where this listing should continue from.
        # @param [String] parent
        #   Required. The name of the parent resource whose folders are being listed. Only
        #   children of this parent resource are listed; descendants are not listed. If
        #   the parent is a folder, use the value `folders/`folder_id``. If the parent is
        #   an organization, use the value `organizations/`org_id``. Access to this method
        #   is controlled by checking the `resourcemanager.folders.list` permission on the
        #   `parent`.
        # @param [Boolean] show_deleted
        #   Optional. Controls whether folders in the DELETE_REQUESTED state should be
        #   returned. Defaults to false.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::CloudresourcemanagerV3::ListFoldersResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::CloudresourcemanagerV3::ListFoldersResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_folders(page_size: nil, page_token: nil, parent: nil, show_deleted: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v3/folders', options)
          command.response_representation = Google::Apis::CloudresourcemanagerV3::ListFoldersResponse::Representation
          command.response_class = Google::Apis::CloudresourcemanagerV3::ListFoldersResponse
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['parent'] = parent unless parent.nil?
          command.query['showDeleted'] = show_deleted unless show_deleted.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Moves a folder under a new resource parent. Returns an `Operation` which can
        # be used to track the progress of the folder move workflow. Upon success, the `
        # Operation.response` field will be populated with the moved folder. Upon
        # failure, a `FolderOperationError` categorizing the failure cause will be
        # returned - if the failure occurs synchronously then the `FolderOperationError`
        # will be returned in the `Status.details` field. If it occurs asynchronously,
        # then the FolderOperation will be returned in the `Operation.error` field. In
        # addition, the `Operation.metadata` field will be populated with a `
        # FolderOperation` message as an aid to stateless clients. Folder moves will be
        # rejected if they violate either the naming, height, or fanout constraints
        # described in the CreateFolder documentation. The caller must have `
        # resourcemanager.folders.move` permission on the folder's current and proposed
        # new parent.
        # @param [String] name
        #   Required. The resource name of the Folder to move. Must be of the form folders/
        #   `folder_id`
        # @param [Google::Apis::CloudresourcemanagerV3::MoveFolderRequest] move_folder_request_object
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
        def move_folder(name, move_folder_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v3/{+name}:move', options)
          command.request_representation = Google::Apis::CloudresourcemanagerV3::MoveFolderRequest::Representation
          command.request_object = move_folder_request_object
          command.response_representation = Google::Apis::CloudresourcemanagerV3::Operation::Representation
          command.response_class = Google::Apis::CloudresourcemanagerV3::Operation
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates a folder, changing its `display_name`. Changes to the folder `
        # display_name` will be rejected if they violate either the `display_name`
        # formatting rules or the naming constraints described in the CreateFolder
        # documentation. The folder's `display_name` must start and end with a letter or
        # digit, may contain letters, digits, spaces, hyphens and underscores and can be
        # between 3 and 30 characters. This is captured by the regular expression: `\p`L`
        # \p`N``1,28`[\p`L`\p`N`]`. The caller must have `resourcemanager.folders.update`
        # permission on the identified folder. If the update fails due to the unique
        # name constraint then a `PreconditionFailure` explaining this violation will be
        # returned in the Status.details field.
        # @param [String] name
        #   Output only. The resource name of the folder. Its format is `folders/`
        #   folder_id``, for example: "folders/1234".
        # @param [Google::Apis::CloudresourcemanagerV3::Folder] folder_object
        # @param [String] update_mask
        #   Required. Fields to be updated. Only the `display_name` can be updated.
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
        def patch_folder(name, folder_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v3/{+name}', options)
          command.request_representation = Google::Apis::CloudresourcemanagerV3::Folder::Representation
          command.request_object = folder_object
          command.response_representation = Google::Apis::CloudresourcemanagerV3::Operation::Representation
          command.response_class = Google::Apis::CloudresourcemanagerV3::Operation
          command.params['name'] = name unless name.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Search for folders that match specific filter criteria. `search()` provides an
        # eventually consistent view of the folders a user has access to which meet the
        # specified filter criteria. This will only return folders on which the caller
        # has the permission `resourcemanager.folders.get`.
        # @param [Fixnum] page_size
        #   Optional. The maximum number of folders to return in the response. The server
        #   can return fewer folders than requested. If unspecified, server picks an
        #   appropriate default.
        # @param [String] page_token
        #   Optional. A pagination token returned from a previous call to `SearchFolders`
        #   that indicates from where search should continue.
        # @param [String] query
        #   Optional. Search criteria used to select the folders to return. If no search
        #   criteria is specified then all accessible folders will be returned. Query
        #   expressions can be used to restrict results based upon displayName, state and
        #   parent, where the operators `=` (`:`) `NOT`, `AND` and `OR` can be used along
        #   with the suffix wildcard symbol `*`. The `displayName` field in a query
        #   expression should use escaped quotes for values that include whitespace to
        #   prevent unexpected behavior. ``` | Field | Description | |---------------------
        #   ----|----------------------------------------| | displayName | Filters by
        #   displayName. | | parent | Filters by parent (for example: folders/123). | |
        #   state, lifecycleState | Filters by state. | ``` Some example queries are: *
        #   Query `displayName=Test*` returns Folder resources whose display name starts
        #   with "Test". * Query `state=ACTIVE` returns Folder resources with `state` set
        #   to `ACTIVE`. * Query `parent=folders/123` returns Folder resources that have `
        #   folders/123` as a parent resource. * Query `parent=folders/123 AND state=
        #   ACTIVE` returns active Folder resources that have `folders/123` as a parent
        #   resource. * Query `displayName=\\"Test String\\"` returns Folder resources
        #   with display names that include both "Test" and "String".
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::CloudresourcemanagerV3::SearchFoldersResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::CloudresourcemanagerV3::SearchFoldersResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def search_folders(page_size: nil, page_token: nil, query: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v3/folders:search', options)
          command.response_representation = Google::Apis::CloudresourcemanagerV3::SearchFoldersResponse::Representation
          command.response_class = Google::Apis::CloudresourcemanagerV3::SearchFoldersResponse
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['query'] = query unless query.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Sets the access control policy on a folder, replacing any existing policy. The
        # `resource` field should be the folder's resource name, for example: "folders/
        # 1234". The caller must have `resourcemanager.folders.setIamPolicy` permission
        # on the identified folder.
        # @param [String] resource
        #   REQUIRED: The resource for which the policy is being specified. See [Resource
        #   names](https://cloud.google.com/apis/design/resource_names) for the
        #   appropriate value for this field.
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
        def set_folder_iam_policy(resource, set_iam_policy_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
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
        
        # Returns permissions that a caller has on the specified folder. The `resource`
        # field should be the folder's resource name, for example: "folders/1234". There
        # are no permissions required for making this API call.
        # @param [String] resource
        #   REQUIRED: The resource for which the policy detail is being requested. See [
        #   Resource names](https://cloud.google.com/apis/design/resource_names) for the
        #   appropriate value for this field.
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
        def test_folder_iam_permissions(resource, test_iam_permissions_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
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
        
        # Cancels the deletion request for a folder. This method may be called on a
        # folder in any state. If the folder is in the ACTIVE state the result will be a
        # no-op success. In order to succeed, the folder's parent must be in the ACTIVE
        # state. In addition, reintroducing the folder into the tree must not violate
        # folder naming, height, and fanout constraints described in the CreateFolder
        # documentation. The caller must have `resourcemanager.folders.undelete`
        # permission on the identified folder.
        # @param [String] name
        #   Required. The resource name of the folder to undelete. Must be of the form `
        #   folders/`folder_id``.
        # @param [Google::Apis::CloudresourcemanagerV3::UndeleteFolderRequest] undelete_folder_request_object
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
        def undelete_folder(name, undelete_folder_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v3/{+name}:undelete', options)
          command.request_representation = Google::Apis::CloudresourcemanagerV3::UndeleteFolderRequest::Representation
          command.request_object = undelete_folder_request_object
          command.response_representation = Google::Apis::CloudresourcemanagerV3::Operation::Representation
          command.response_class = Google::Apis::CloudresourcemanagerV3::Operation
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
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
        #   The server can return fewer liens than requested. If unspecified, server picks
        #   an appropriate default.
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
        
        # Fetches an organization resource identified by the specified resource name.
        # @param [String] name
        #   Required. The resource name of the Organization to fetch. This is the
        #   organization's relative path in the API, formatted as "organizations/[
        #   organizationId]". For example, "organizations/1234".
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::CloudresourcemanagerV3::Organization] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::CloudresourcemanagerV3::Organization]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_organization(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v3/{+name}', options)
          command.response_representation = Google::Apis::CloudresourcemanagerV3::Organization::Representation
          command.response_class = Google::Apis::CloudresourcemanagerV3::Organization
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets the access control policy for an organization resource. The policy may be
        # empty if no such policy or resource exists. The `resource` field should be the
        # organization's resource name, for example: "organizations/123". Authorization
        # requires the IAM permission `resourcemanager.organizations.getIamPolicy` on
        # the specified organization.
        # @param [String] resource
        #   REQUIRED: The resource for which the policy is being requested. See [Resource
        #   names](https://cloud.google.com/apis/design/resource_names) for the
        #   appropriate value for this field.
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
        def get_organization_iam_policy(resource, get_iam_policy_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
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
        
        # Searches organization resources that are visible to the user and satisfy the
        # specified filter. This method returns organizations in an unspecified order.
        # New organizations do not necessarily appear at the end of the results, and may
        # take a small amount of time to appear. Search will only return organizations
        # on which the user has the permission `resourcemanager.organizations.get`
        # @param [Fixnum] page_size
        #   Optional. The maximum number of organizations to return in the response. The
        #   server can return fewer organizations than requested. If unspecified, server
        #   picks an appropriate default.
        # @param [String] page_token
        #   Optional. A pagination token returned from a previous call to `
        #   SearchOrganizations` that indicates from where listing should continue.
        # @param [String] query
        #   Optional. An optional query string used to filter the Organizations to return
        #   in the response. Query rules are case-insensitive. ``` | Field | Description |
        #   |------------------|--------------------------------------------| |
        #   directoryCustomerId, owner.directoryCustomerId | Filters by directory customer
        #   id. | | domain | Filters by domain. | ``` Organizations may be queried by `
        #   directoryCustomerId` or by `domain`, where the domain is a G Suite domain, for
        #   example: * Query `directorycustomerid:123456789` returns Organization
        #   resources with `owner.directory_customer_id` equal to `123456789`. * Query `
        #   domain:google.com` returns Organization resources corresponding to the domain `
        #   google.com`.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::CloudresourcemanagerV3::SearchOrganizationsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::CloudresourcemanagerV3::SearchOrganizationsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def search_organizations(page_size: nil, page_token: nil, query: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v3/organizations:search', options)
          command.response_representation = Google::Apis::CloudresourcemanagerV3::SearchOrganizationsResponse::Representation
          command.response_class = Google::Apis::CloudresourcemanagerV3::SearchOrganizationsResponse
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['query'] = query unless query.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Sets the access control policy on an organization resource. Replaces any
        # existing policy. The `resource` field should be the organization's resource
        # name, for example: "organizations/123". Authorization requires the IAM
        # permission `resourcemanager.organizations.setIamPolicy` on the specified
        # organization.
        # @param [String] resource
        #   REQUIRED: The resource for which the policy is being specified. See [Resource
        #   names](https://cloud.google.com/apis/design/resource_names) for the
        #   appropriate value for this field.
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
        def set_organization_iam_policy(resource, set_iam_policy_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
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
        
        # Returns the permissions that a caller has on the specified organization. The `
        # resource` field should be the organization's resource name, for example: "
        # organizations/123". There are no permissions required for making this API call.
        # @param [String] resource
        #   REQUIRED: The resource for which the policy detail is being requested. See [
        #   Resource names](https://cloud.google.com/apis/design/resource_names) for the
        #   appropriate value for this field.
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
        def test_organization_iam_permissions(resource, test_iam_permissions_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
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
        
        # Request that a new project be created. The result is an `Operation` which can
        # be used to track the creation process. This process usually takes a few
        # seconds, but can sometimes take much longer. The tracking `Operation` is
        # automatically deleted after a few hours, so there is no need to call `
        # DeleteOperation`.
        # @param [Google::Apis::CloudresourcemanagerV3::Project] project_object
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
        def create_project(project_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v3/projects', options)
          command.request_representation = Google::Apis::CloudresourcemanagerV3::Project::Representation
          command.request_object = project_object
          command.response_representation = Google::Apis::CloudresourcemanagerV3::Operation::Representation
          command.response_class = Google::Apis::CloudresourcemanagerV3::Operation
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Marks the project identified by the specified `name` (for example, `projects/
        # 415104041262`) for deletion. This method will only affect the project if it
        # has a lifecycle state of ACTIVE. This method changes the Project's lifecycle
        # state from ACTIVE to DELETE_REQUESTED. The deletion starts at an unspecified
        # time, at which point the Project is no longer accessible. Until the deletion
        # completes, you can check the lifecycle state checked by retrieving the project
        # with GetProject, and the project remains visible to ListProjects. However, you
        # cannot update the project. After the deletion completes, the project is not
        # retrievable by the GetProject, ListProjects, and SearchProjects methods. This
        # method behaves idempotently, such that deleting a `DELETE_REQUESTED` project
        # will not cause an error, but also won't do anything. The caller must have `
        # resourcemanager.projects.delete` permissions for this project.
        # @param [String] name
        #   Required. The name of the Project (for example, `projects/415104041262`).
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
        def delete_project(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v3/{+name}', options)
          command.response_representation = Google::Apis::CloudresourcemanagerV3::Operation::Representation
          command.response_class = Google::Apis::CloudresourcemanagerV3::Operation
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Retrieves the project identified by the specified `name` (for example, `
        # projects/415104041262`). The caller must have `resourcemanager.projects.get`
        # permission for this project.
        # @param [String] name
        #   Required. The name of the project (for example, `projects/415104041262`).
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::CloudresourcemanagerV3::Project] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::CloudresourcemanagerV3::Project]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v3/{+name}', options)
          command.response_representation = Google::Apis::CloudresourcemanagerV3::Project::Representation
          command.response_class = Google::Apis::CloudresourcemanagerV3::Project
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Returns the IAM access control policy for the specified project, in the format
        # `projects/`ProjectIdOrNumber`` e.g. projects/123. Permission is denied if the
        # policy or the resource do not exist.
        # @param [String] resource
        #   REQUIRED: The resource for which the policy is being requested. See [Resource
        #   names](https://cloud.google.com/apis/design/resource_names) for the
        #   appropriate value for this field.
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
        def get_project_iam_policy(resource, get_iam_policy_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
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
        
        # Lists projects that are direct children of the specified folder or
        # organization resource. `list()` provides a strongly consistent view of the
        # projects underneath the specified parent resource. `list()` returns projects
        # sorted based upon the (ascending) lexical ordering of their `display_name`.
        # The caller must have `resourcemanager.projects.list` permission on the
        # identified parent.
        # @param [Fixnum] page_size
        #   Optional. The maximum number of projects to return in the response. The server
        #   can return fewer projects than requested. If unspecified, server picks an
        #   appropriate default.
        # @param [String] page_token
        #   Optional. A pagination token returned from a previous call to ListProjects
        #   that indicates from where listing should continue.
        # @param [String] parent
        #   Required. The name of the parent resource whose projects are being listed.
        #   Only children of this parent resource are listed; descendants are not listed.
        #   If the parent is a folder, use the value `folders/`folder_id``. If the parent
        #   is an organization, use the value `organizations/`org_id``.
        # @param [Boolean] show_deleted
        #   Optional. Indicate that projects in the `DELETE_REQUESTED` state should also
        #   be returned. Normally only `ACTIVE` projects are returned.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::CloudresourcemanagerV3::ListProjectsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::CloudresourcemanagerV3::ListProjectsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_projects(page_size: nil, page_token: nil, parent: nil, show_deleted: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v3/projects', options)
          command.response_representation = Google::Apis::CloudresourcemanagerV3::ListProjectsResponse::Representation
          command.response_class = Google::Apis::CloudresourcemanagerV3::ListProjectsResponse
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['parent'] = parent unless parent.nil?
          command.query['showDeleted'] = show_deleted unless show_deleted.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Move a project to another place in your resource hierarchy, under a new
        # resource parent. Returns an operation which can be used to track the process
        # of the project move workflow. Upon success, the `Operation.response` field
        # will be populated with the moved project. The caller must have `
        # resourcemanager.projects.move` permission on the project, on the project's
        # current and proposed new parent. If project has no current parent, or it
        # currently does not have an associated organization resource, you will also
        # need the `resourcemanager.projects.setIamPolicy` permission in the project.
        # @param [String] name
        #   Required. The name of the project to move.
        # @param [Google::Apis::CloudresourcemanagerV3::MoveProjectRequest] move_project_request_object
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
        def move_project(name, move_project_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v3/{+name}:move', options)
          command.request_representation = Google::Apis::CloudresourcemanagerV3::MoveProjectRequest::Representation
          command.request_object = move_project_request_object
          command.response_representation = Google::Apis::CloudresourcemanagerV3::Operation::Representation
          command.response_class = Google::Apis::CloudresourcemanagerV3::Operation
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates the `display_name` and labels of the project identified by the
        # specified `name` (for example, `projects/415104041262`). Deleting all labels
        # requires an update mask for labels field. The caller must have `
        # resourcemanager.projects.update` permission for this project.
        # @param [String] name
        #   Output only. The unique resource name of the project. It is an int64 generated
        #   number prefixed by "projects/". Example: `projects/415104041262`
        # @param [Google::Apis::CloudresourcemanagerV3::Project] project_object
        # @param [String] update_mask
        #   Optional. An update mask to selectively update fields.
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
        def patch_project(name, project_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v3/{+name}', options)
          command.request_representation = Google::Apis::CloudresourcemanagerV3::Project::Representation
          command.request_object = project_object
          command.response_representation = Google::Apis::CloudresourcemanagerV3::Operation::Representation
          command.response_class = Google::Apis::CloudresourcemanagerV3::Operation
          command.params['name'] = name unless name.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Search for projects that the caller has both `resourcemanager.projects.get`
        # permission on, and also satisfy the specified query. This method returns
        # projects in an unspecified order. This method is eventually consistent with
        # project mutations; this means that a newly created project may not appear in
        # the results or recent updates to an existing project may not be reflected in
        # the results. To retrieve the latest state of a project, use the GetProject
        # method.
        # @param [Fixnum] page_size
        #   Optional. The maximum number of projects to return in the response. The server
        #   can return fewer projects than requested. If unspecified, server picks an
        #   appropriate default.
        # @param [String] page_token
        #   Optional. A pagination token returned from a previous call to ListProjects
        #   that indicates from where listing should continue.
        # @param [String] query
        #   Optional. A query string for searching for projects that the caller has `
        #   resourcemanager.projects.get` permission to. If multiple fields are included
        #   in the query, then it will return results that match any of the fields. Some
        #   eligible fields are: ``` | Field | Description | |-------------------------|---
        #   -------------------------------------------| | displayName, name | Filters by
        #   displayName. | | parent | Project's parent (for example: folders/123,
        #   organizations/*). Prefer parent field over parent.type and parent.id.| |
        #   parent.type | Parent's type: `folder` or `organization`. | | parent.id |
        #   Parent's id number (for example: 123) | | id, projectId | Filters by projectId.
        #   | | state, lifecycleState | Filters by state. | | labels | Filters by label
        #   name or value. | | labels.\ (where *key* is the name of a label) | Filters by
        #   label name.| ``` Search expressions are case insensitive. Some examples
        #   queries: ``` | Query | Description | |------------------|----------------------
        #   -------------------------------| | name:how* | The project's name starts with "
        #   how". | | name:Howl | The project's name is `Howl` or `howl`. | | name:HOWL |
        #   Equivalent to above. | | NAME:howl | Equivalent to above. | | labels.color:* |
        #   The project has the label `color`. | | labels.color:red | The project's label `
        #   color` has the value `red`. | | labels.color:red labels.size:big | The project'
        #   s label `color` has the value `red` or its label `size` has the value `big`. |
        #   ``` If no query is specified, the call will return projects for which the user
        #   has the `resourcemanager.projects.get` permission.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::CloudresourcemanagerV3::SearchProjectsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::CloudresourcemanagerV3::SearchProjectsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def search_projects(page_size: nil, page_token: nil, query: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v3/projects:search', options)
          command.response_representation = Google::Apis::CloudresourcemanagerV3::SearchProjectsResponse::Representation
          command.response_class = Google::Apis::CloudresourcemanagerV3::SearchProjectsResponse
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['query'] = query unless query.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Sets the IAM access control policy for the specified project, in the format `
        # projects/`ProjectIdOrNumber`` e.g. projects/123. CAUTION: This method will
        # replace the existing policy, and cannot be used to append additional IAM
        # settings. Note: Removing service accounts from policies or changing their
        # roles can render services completely inoperable. It is important to understand
        # how the service account is being used before removing or updating its roles.
        # The following constraints apply when using `setIamPolicy()`: + Project does
        # not support `allUsers` and `allAuthenticatedUsers` as `members` in a `Binding`
        # of a `Policy`. + The owner role can be granted to a `user`, `serviceAccount`,
        # or a group that is part of an organization. For example, group@
        # myownpersonaldomain.com could be added as an owner to a project in the
        # myownpersonaldomain.com organization, but not the examplepetstore.com
        # organization. + Service accounts can be made owners of a project directly
        # without any restrictions. However, to be added as an owner, a user must be
        # invited using the Cloud Platform console and must accept the invitation. + A
        # user cannot be granted the owner role using `setIamPolicy()`. The user must be
        # granted the owner role using the Cloud Platform Console and must explicitly
        # accept the invitation. + Invitations to grant the owner role cannot be sent
        # using `setIamPolicy()`; they must be sent only using the Cloud Platform
        # Console. + If the project is not part of an organization, there must be at
        # least one owner who has accepted the Terms of Service (ToS) agreement in the
        # policy. Calling `setIamPolicy()` to remove the last ToS-accepted owner from
        # the policy will fail. This restriction also applies to legacy projects that no
        # longer have owners who have accepted the ToS. Edits to IAM policies will be
        # rejected until the lack of a ToS-accepting owner is rectified. If the project
        # is part of an organization, you can remove all owners, potentially making the
        # organization inaccessible.
        # @param [String] resource
        #   REQUIRED: The resource for which the policy is being specified. See [Resource
        #   names](https://cloud.google.com/apis/design/resource_names) for the
        #   appropriate value for this field.
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
        def set_project_iam_policy(resource, set_iam_policy_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
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
        
        # Returns permissions that a caller has on the specified project, in the format `
        # projects/`ProjectIdOrNumber`` e.g. projects/123..
        # @param [String] resource
        #   REQUIRED: The resource for which the policy detail is being requested. See [
        #   Resource names](https://cloud.google.com/apis/design/resource_names) for the
        #   appropriate value for this field.
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
        def test_project_iam_permissions(resource, test_iam_permissions_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
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
        
        # Restores the project identified by the specified `name` (for example, `
        # projects/415104041262`). You can only use this method for a project that has a
        # lifecycle state of DELETE_REQUESTED. After deletion starts, the project cannot
        # be restored. The caller must have `resourcemanager.projects.undelete`
        # permission for this project.
        # @param [String] name
        #   Required. The name of the project (for example, `projects/415104041262`).
        #   Required.
        # @param [Google::Apis::CloudresourcemanagerV3::UndeleteProjectRequest] undelete_project_request_object
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
        def undelete_project(name, undelete_project_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v3/{+name}:undelete', options)
          command.request_representation = Google::Apis::CloudresourcemanagerV3::UndeleteProjectRequest::Representation
          command.request_object = undelete_project_request_object
          command.response_representation = Google::Apis::CloudresourcemanagerV3::Operation::Representation
          command.response_class = Google::Apis::CloudresourcemanagerV3::Operation
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a TagBinding between a TagValue and a Google Cloud resource.
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
        
        # Lists the TagBindings for the given Google Cloud resource, as specified with `
        # parent`. NOTE: The `parent` field is expected to be a full resource name:
        # https://cloud.google.com/apis/design/resource_names#full_resource_name
        # @param [Fixnum] page_size
        #   Optional. The maximum number of TagBindings to return in the response. The
        #   server allows a maximum of 300 TagBindings to return. If unspecified, the
        #   server will use 100 as the default.
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
        # error. A maximum of 1000 TagKeys can exist under a parent at any given time.
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
        #   REQUIRED: The resource for which the policy is being requested. See [Resource
        #   names](https://cloud.google.com/apis/design/resource_names) for the
        #   appropriate value for this field.
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
        
        # Retrieves a TagKey by its namespaced name. This method will return `
        # PERMISSION_DENIED` if the key does not exist or the user does not have
        # permission to view it.
        # @param [String] name
        #   Required. A namespaced tag key name in the format ``parentId`/`tagKeyShort``,
        #   such as `42/foo` for a key with short name "foo" under the organization with
        #   ID 42 or `r2-d2/bar` for a key with short name "bar" under the project `r2-d2`.
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
        def get_tag_key_namespaced(name: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v3/tagKeys/namespaced', options)
          command.response_representation = Google::Apis::CloudresourcemanagerV3::TagKey::Representation
          command.response_class = Google::Apis::CloudresourcemanagerV3::TagKey
          command.query['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists all TagKeys for a parent resource.
        # @param [Fixnum] page_size
        #   Optional. The maximum number of TagKeys to return in the response. The server
        #   allows a maximum of 300 TagKeys to return. If unspecified, the server will use
        #   100 as the default.
        # @param [String] page_token
        #   Optional. A pagination token returned from a previous call to `ListTagKey`
        #   that indicates where this listing should continue from.
        # @param [String] parent
        #   Required. The resource name of the TagKey's parent. Must be of the form `
        #   organizations/`org_id`` or `projects/`project_id`` or `projects/`
        #   project_number``
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
        #   REQUIRED: The resource for which the policy is being specified. See [Resource
        #   names](https://cloud.google.com/apis/design/resource_names) for the
        #   appropriate value for this field.
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
        #   REQUIRED: The resource for which the policy detail is being requested. See [
        #   Resource names](https://cloud.google.com/apis/design/resource_names) for the
        #   appropriate value for this field.
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
        # second request will receive an error. A maximum of 1000 TagValues can exist
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
        
        # Retrieves a TagValue. This method will return `PERMISSION_DENIED` if the value
        # does not exist or the user does not have permission to view it.
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
        #   REQUIRED: The resource for which the policy is being requested. See [Resource
        #   names](https://cloud.google.com/apis/design/resource_names) for the
        #   appropriate value for this field.
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
        
        # Retrieves a TagValue by its namespaced name. This method will return `
        # PERMISSION_DENIED` if the value does not exist or the user does not have
        # permission to view it.
        # @param [String] name
        #   Required. A namespaced tag value name in the following format: ``parentId`/`
        #   tagKeyShort`/`tagValueShort`` Examples: - `42/foo/abc` for a value with short
        #   name "abc" under the key with short name "foo" under the organization with ID
        #   42 - `r2-d2/bar/xyz` for a value with short name "xyz" under the key with
        #   short name "bar" under the project with ID "r2-d2"
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
        def get_tag_value_namespaced(name: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v3/tagValues/namespaced', options)
          command.response_representation = Google::Apis::CloudresourcemanagerV3::TagValue::Representation
          command.response_class = Google::Apis::CloudresourcemanagerV3::TagValue
          command.query['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists all TagValues for a specific TagKey.
        # @param [Fixnum] page_size
        #   Optional. The maximum number of TagValues to return in the response. The
        #   server allows a maximum of 300 TagValues to return. If unspecified, the server
        #   will use 100 as the default.
        # @param [String] page_token
        #   Optional. A pagination token returned from a previous call to `ListTagValues`
        #   that indicates where this listing should continue from.
        # @param [String] parent
        #   Required.
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
        #   REQUIRED: The resource for which the policy is being specified. See [Resource
        #   names](https://cloud.google.com/apis/design/resource_names) for the
        #   appropriate value for this field.
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
        #   REQUIRED: The resource for which the policy detail is being requested. See [
        #   Resource names](https://cloud.google.com/apis/design/resource_names) for the
        #   appropriate value for this field.
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
        
        # Creates a TagHold. Returns ALREADY_EXISTS if a TagHold with the same resource
        # and origin exists under the same TagValue.
        # @param [String] parent
        #   Required. The resource name of the TagHold's parent TagValue. Must be of the
        #   form: `tagValues/`tag-value-id``.
        # @param [Google::Apis::CloudresourcemanagerV3::TagHold] tag_hold_object
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
        def create_tag_value_tag_hold(parent, tag_hold_object = nil, validate_only: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v3/{+parent}/tagHolds', options)
          command.request_representation = Google::Apis::CloudresourcemanagerV3::TagHold::Representation
          command.request_object = tag_hold_object
          command.response_representation = Google::Apis::CloudresourcemanagerV3::Operation::Representation
          command.response_class = Google::Apis::CloudresourcemanagerV3::Operation
          command.params['parent'] = parent unless parent.nil?
          command.query['validateOnly'] = validate_only unless validate_only.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes a TagHold.
        # @param [String] name
        #   Required. The resource name of the TagHold to delete. Must be of the form: `
        #   tagValues/`tag-value-id`/tagHolds/`tag-hold-id``.
        # @param [Boolean] validate_only
        #   Optional. Set to true to perform the validations necessary for deleting the
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
        def delete_tag_value_tag_hold(name, validate_only: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v3/{+name}', options)
          command.response_representation = Google::Apis::CloudresourcemanagerV3::Operation::Representation
          command.response_class = Google::Apis::CloudresourcemanagerV3::Operation
          command.params['name'] = name unless name.nil?
          command.query['validateOnly'] = validate_only unless validate_only.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists TagHolds under a TagValue.
        # @param [String] parent
        #   Required. The resource name of the parent TagValue. Must be of the form: `
        #   tagValues/`tag-value-id``.
        # @param [String] filter
        #   Optional. Criteria used to select a subset of TagHolds parented by the
        #   TagValue to return. This field follows the syntax defined by aip.dev/160; the `
        #   holder` and `origin` fields are supported for filtering. Currently only `AND`
        #   syntax is supported. Some example queries are: * `holder = //compute.
        #   googleapis.com/compute/projects/myproject/regions/us-east-1/
        #   instanceGroupManagers/instance-group` * `origin = 35678234` * `holder = //
        #   compute.googleapis.com/compute/projects/myproject/regions/us-east-1/
        #   instanceGroupManagers/instance-group AND origin = 35678234`
        # @param [Fixnum] page_size
        #   Optional. The maximum number of TagHolds to return in the response. The server
        #   allows a maximum of 300 TagHolds to return. If unspecified, the server will
        #   use 100 as the default.
        # @param [String] page_token
        #   Optional. A pagination token returned from a previous call to `ListTagHolds`
        #   that indicates where this listing should continue from.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::CloudresourcemanagerV3::ListTagHoldsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::CloudresourcemanagerV3::ListTagHoldsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_tag_value_tag_holds(parent, filter: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v3/{+parent}/tagHolds', options)
          command.response_representation = Google::Apis::CloudresourcemanagerV3::ListTagHoldsResponse::Representation
          command.response_class = Google::Apis::CloudresourcemanagerV3::ListTagHoldsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
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
