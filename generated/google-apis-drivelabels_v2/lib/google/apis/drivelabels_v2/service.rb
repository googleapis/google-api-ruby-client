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
    module DrivelabelsV2
      # Drive Labels API
      #
      # An API for managing Drive Labels
      #
      # @example
      #    require 'google/apis/drivelabels_v2'
      #
      #    Drivelabels = Google::Apis::DrivelabelsV2 # Alias the module
      #    service = Drivelabels::DriveLabelsService.new
      #
      # @see https://developers.google.com/drive/labels
      class DriveLabelsService < Google::Apis::Core::BaseService
        # @return [String]
        #  API key. Your API key identifies your project and provides you with API access,
        #  quota, and reports. Required unless you provide an OAuth 2.0 token.
        attr_accessor :key

        # @return [String]
        #  Available to use for quota purposes for server-side applications. Can be any
        #  arbitrary string assigned to a user, but should not exceed 40 characters.
        attr_accessor :quota_user

        def initialize
          super('https://drivelabels.googleapis.com/', '',
                client_name: 'google-apis-drivelabels_v2',
                client_version: Google::Apis::DrivelabelsV2::GEM_VERSION)
          @batch_path = 'batch'
        end
        
        # Creates a new Label.
        # @param [Google::Apis::DrivelabelsV2::GoogleAppsDriveLabelsV2Label] google_apps_drive_labels_v2_label_object
        # @param [String] language_code
        #   The BCP-47 language code to use for evaluating localized Field labels in
        #   response. When not specified, values in the default configured language will
        #   be used.
        # @param [Boolean] use_admin_access
        #   Set to `true` in order to use the user's admin privileges. The server will
        #   verify the user is an admin before allowing access.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DrivelabelsV2::GoogleAppsDriveLabelsV2Label] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DrivelabelsV2::GoogleAppsDriveLabelsV2Label]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_label(google_apps_drive_labels_v2_label_object = nil, language_code: nil, use_admin_access: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v2/labels', options)
          command.request_representation = Google::Apis::DrivelabelsV2::GoogleAppsDriveLabelsV2Label::Representation
          command.request_object = google_apps_drive_labels_v2_label_object
          command.response_representation = Google::Apis::DrivelabelsV2::GoogleAppsDriveLabelsV2Label::Representation
          command.response_class = Google::Apis::DrivelabelsV2::GoogleAppsDriveLabelsV2Label
          command.query['languageCode'] = language_code unless language_code.nil?
          command.query['useAdminAccess'] = use_admin_access unless use_admin_access.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Permanently deletes a Label and related metadata on Drive Items. Once deleted,
        # the Label and related Drive item metadata will be deleted. Only draft Labels,
        # and disabled Labels may be deleted.
        # @param [String] name
        #   Required. Label resource name.
        # @param [Boolean] use_admin_access
        #   Set to `true` in order to use the user's admin credentials. The server will
        #   verify the user is an admin for the Label before allowing access.
        # @param [String] write_control_required_revision_id
        #   The revision_id of the label that the write request will be applied to. If
        #   this is not the latest revision of the label, the request will not be
        #   processed and will return a 400 Bad Request error.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DrivelabelsV2::GoogleProtobufEmpty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DrivelabelsV2::GoogleProtobufEmpty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_label(name, use_admin_access: nil, write_control_required_revision_id: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v2/{+name}', options)
          command.response_representation = Google::Apis::DrivelabelsV2::GoogleProtobufEmpty::Representation
          command.response_class = Google::Apis::DrivelabelsV2::GoogleProtobufEmpty
          command.params['name'] = name unless name.nil?
          command.query['useAdminAccess'] = use_admin_access unless use_admin_access.nil?
          command.query['writeControl.requiredRevisionId'] = write_control_required_revision_id unless write_control_required_revision_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates a single Label by applying a set of update requests resulting in a new
        # draft revision. The batch update is all-or-nothing: If any of the update
        # requests are invalid, no changes are applied. The resulting draft revision
        # must be published before the changes may be used with Drive Items.
        # @param [String] name
        #   Required. The resource name of the Label to update.
        # @param [Google::Apis::DrivelabelsV2::GoogleAppsDriveLabelsV2DeltaUpdateLabelRequest] google_apps_drive_labels_v2_delta_update_label_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DrivelabelsV2::GoogleAppsDriveLabelsV2DeltaUpdateLabelResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DrivelabelsV2::GoogleAppsDriveLabelsV2DeltaUpdateLabelResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delta_label(name, google_apps_drive_labels_v2_delta_update_label_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v2/{+name}:delta', options)
          command.request_representation = Google::Apis::DrivelabelsV2::GoogleAppsDriveLabelsV2DeltaUpdateLabelRequest::Representation
          command.request_object = google_apps_drive_labels_v2_delta_update_label_request_object
          command.response_representation = Google::Apis::DrivelabelsV2::GoogleAppsDriveLabelsV2DeltaUpdateLabelResponse::Representation
          command.response_class = Google::Apis::DrivelabelsV2::GoogleAppsDriveLabelsV2DeltaUpdateLabelResponse
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Disable a published Label. Disabling a Label will result in a new disabled
        # published revision based on the current published revision. If there is a
        # draft revision, a new disabled draft revision will be created based on the
        # latest draft revision. Older draft revisions will be deleted. Once disabled, a
        # label may be deleted with `DeleteLabel`.
        # @param [String] name
        #   Required. Label resource name.
        # @param [Google::Apis::DrivelabelsV2::GoogleAppsDriveLabelsV2DisableLabelRequest] google_apps_drive_labels_v2_disable_label_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DrivelabelsV2::GoogleAppsDriveLabelsV2Label] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DrivelabelsV2::GoogleAppsDriveLabelsV2Label]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def disable_label(name, google_apps_drive_labels_v2_disable_label_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v2/{+name}:disable', options)
          command.request_representation = Google::Apis::DrivelabelsV2::GoogleAppsDriveLabelsV2DisableLabelRequest::Representation
          command.request_object = google_apps_drive_labels_v2_disable_label_request_object
          command.response_representation = Google::Apis::DrivelabelsV2::GoogleAppsDriveLabelsV2Label::Representation
          command.response_class = Google::Apis::DrivelabelsV2::GoogleAppsDriveLabelsV2Label
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Enable a disabled Label and restore it to its published state. This will
        # result in a new published revision based on the current disabled published
        # revision. If there is an existing disabled draft revision, a new revision will
        # be created based on that draft and will be enabled.
        # @param [String] name
        #   Required. Label resource name.
        # @param [Google::Apis::DrivelabelsV2::GoogleAppsDriveLabelsV2EnableLabelRequest] google_apps_drive_labels_v2_enable_label_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DrivelabelsV2::GoogleAppsDriveLabelsV2Label] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DrivelabelsV2::GoogleAppsDriveLabelsV2Label]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def enable_label(name, google_apps_drive_labels_v2_enable_label_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v2/{+name}:enable', options)
          command.request_representation = Google::Apis::DrivelabelsV2::GoogleAppsDriveLabelsV2EnableLabelRequest::Representation
          command.request_object = google_apps_drive_labels_v2_enable_label_request_object
          command.response_representation = Google::Apis::DrivelabelsV2::GoogleAppsDriveLabelsV2Label::Representation
          command.response_class = Google::Apis::DrivelabelsV2::GoogleAppsDriveLabelsV2Label
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Get a label by its resource name. Resource name may be any of: * `labels/`id``
        # - See `labels/`id`@latest` * `labels/`id`@latest` - Gets the latest revision
        # of the label. * `labels/`id`@published` - Gets the current published revision
        # of the label. * `labels/`id`@`revision_id`` - Gets the label at the specified
        # revision ID.
        # @param [String] name
        #   Required. Label resource name. May be any of: * `labels/`id`` (equivalent to
        #   labels/`id`@latest) * `labels/`id`@latest` * `labels/`id`@published` * `labels/
        #   `id`@`revision_id``
        # @param [String] language_code
        #   The BCP-47 language code to use for evaluating localized field labels. When
        #   not specified, values in the default configured language are used.
        # @param [Boolean] use_admin_access
        #   Set to `true` in order to use the user's admin credentials. The server
        #   verifies that the user is an admin for the label before allowing access.
        # @param [String] view
        #   When specified, only certain fields belonging to the indicated view are
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
        # @yieldparam result [Google::Apis::DrivelabelsV2::GoogleAppsDriveLabelsV2Label] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DrivelabelsV2::GoogleAppsDriveLabelsV2Label]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_label(name, language_code: nil, use_admin_access: nil, view: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2/{+name}', options)
          command.response_representation = Google::Apis::DrivelabelsV2::GoogleAppsDriveLabelsV2Label::Representation
          command.response_class = Google::Apis::DrivelabelsV2::GoogleAppsDriveLabelsV2Label
          command.params['name'] = name unless name.nil?
          command.query['languageCode'] = language_code unless language_code.nil?
          command.query['useAdminAccess'] = use_admin_access unless use_admin_access.nil?
          command.query['view'] = view unless view.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # List labels.
        # @param [String] language_code
        #   The BCP-47 language code to use for evaluating localized field labels. When
        #   not specified, values in the default configured language are used.
        # @param [String] minimum_role
        #   Specifies the level of access the user must have on the returned Labels. The
        #   minimum role a user must have on a label. Defaults to `READER`.
        # @param [Fixnum] page_size
        #   Maximum number of labels to return per page. Default: 50. Max: 200.
        # @param [String] page_token
        #   The token of the page to return.
        # @param [Boolean] published_only
        #   Whether to include only published labels in the results. * When `true`, only
        #   the current published label revisions are returned. Disabled labels are
        #   included. Returned label resource names reference the published revision (`
        #   labels/`id`/`revision_id``). * When `false`, the current label revisions are
        #   returned, which might not be published. Returned label resource names don't
        #   reference a specific revision (`labels/`id``).
        # @param [Boolean] use_admin_access
        #   Set to `true` in order to use the user's admin credentials. This will return
        #   all Labels within the customer.
        # @param [String] view
        #   When specified, only certain fields belonging to the indicated view are
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
        # @yieldparam result [Google::Apis::DrivelabelsV2::GoogleAppsDriveLabelsV2ListLabelsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DrivelabelsV2::GoogleAppsDriveLabelsV2ListLabelsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_labels(language_code: nil, minimum_role: nil, page_size: nil, page_token: nil, published_only: nil, use_admin_access: nil, view: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2/labels', options)
          command.response_representation = Google::Apis::DrivelabelsV2::GoogleAppsDriveLabelsV2ListLabelsResponse::Representation
          command.response_class = Google::Apis::DrivelabelsV2::GoogleAppsDriveLabelsV2ListLabelsResponse
          command.query['languageCode'] = language_code unless language_code.nil?
          command.query['minimumRole'] = minimum_role unless minimum_role.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['publishedOnly'] = published_only unless published_only.nil?
          command.query['useAdminAccess'] = use_admin_access unless use_admin_access.nil?
          command.query['view'] = view unless view.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Publish all draft changes to the Label. Once published, the Label may not
        # return to its draft state. See `google.apps.drive.labels.v2.Lifecycle` for
        # more information. Publishing a Label will result in a new published revision.
        # All previous draft revisions will be deleted. Previous published revisions
        # will be kept but are subject to automated deletion as needed. Once published,
        # some changes are no longer permitted. Generally, any change that would
        # invalidate or cause new restrictions on existing metadata related to the Label
        # will be rejected. For example, the following changes to a Label will be
        # rejected after the Label is published: * The label cannot be directly deleted.
        # It must be disabled first, then deleted. * Field.FieldType cannot be changed. *
        # Changes to Field validation options cannot reject something that was
        # previously accepted. * Reducing the max entries.
        # @param [String] name
        #   Required. Label resource name.
        # @param [Google::Apis::DrivelabelsV2::GoogleAppsDriveLabelsV2PublishLabelRequest] google_apps_drive_labels_v2_publish_label_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DrivelabelsV2::GoogleAppsDriveLabelsV2Label] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DrivelabelsV2::GoogleAppsDriveLabelsV2Label]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def publish_label(name, google_apps_drive_labels_v2_publish_label_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v2/{+name}:publish', options)
          command.request_representation = Google::Apis::DrivelabelsV2::GoogleAppsDriveLabelsV2PublishLabelRequest::Representation
          command.request_object = google_apps_drive_labels_v2_publish_label_request_object
          command.response_representation = Google::Apis::DrivelabelsV2::GoogleAppsDriveLabelsV2Label::Representation
          command.response_class = Google::Apis::DrivelabelsV2::GoogleAppsDriveLabelsV2Label
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates a Label's `CopyMode`. Changes to this policy are not revisioned, do
        # not require publishing, and take effect immediately.
        # @param [String] name
        #   Required. The resource name of the Label to update.
        # @param [Google::Apis::DrivelabelsV2::GoogleAppsDriveLabelsV2UpdateLabelCopyModeRequest] google_apps_drive_labels_v2_update_label_copy_mode_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DrivelabelsV2::GoogleAppsDriveLabelsV2Label] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DrivelabelsV2::GoogleAppsDriveLabelsV2Label]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def update_label_label_copy_mode(name, google_apps_drive_labels_v2_update_label_copy_mode_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v2/{+name}:updateLabelCopyMode', options)
          command.request_representation = Google::Apis::DrivelabelsV2::GoogleAppsDriveLabelsV2UpdateLabelCopyModeRequest::Representation
          command.request_object = google_apps_drive_labels_v2_update_label_copy_mode_request_object
          command.response_representation = Google::Apis::DrivelabelsV2::GoogleAppsDriveLabelsV2Label::Representation
          command.response_class = Google::Apis::DrivelabelsV2::GoogleAppsDriveLabelsV2Label
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates a Label's permissions. If a permission for the indicated principal
        # doesn't exist, a new Label Permission is created, otherwise the existing
        # permission is updated. Permissions affect the Label resource as a whole, are
        # not revisioned, and do not require publishing.
        # @param [String] parent
        #   Required. The parent Label resource name.
        # @param [Google::Apis::DrivelabelsV2::GoogleAppsDriveLabelsV2LabelPermission] google_apps_drive_labels_v2_label_permission_object
        # @param [Boolean] use_admin_access
        #   Set to `true` in order to use the user's admin credentials. The server will
        #   verify the user is an admin for the Label before allowing access.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DrivelabelsV2::GoogleAppsDriveLabelsV2LabelPermission] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DrivelabelsV2::GoogleAppsDriveLabelsV2LabelPermission]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def update_label_permissions(parent, google_apps_drive_labels_v2_label_permission_object = nil, use_admin_access: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v2/{+parent}/permissions', options)
          command.request_representation = Google::Apis::DrivelabelsV2::GoogleAppsDriveLabelsV2LabelPermission::Representation
          command.request_object = google_apps_drive_labels_v2_label_permission_object
          command.response_representation = Google::Apis::DrivelabelsV2::GoogleAppsDriveLabelsV2LabelPermission::Representation
          command.response_class = Google::Apis::DrivelabelsV2::GoogleAppsDriveLabelsV2LabelPermission
          command.params['parent'] = parent unless parent.nil?
          command.query['useAdminAccess'] = use_admin_access unless use_admin_access.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists the LabelLocks on a Label.
        # @param [String] parent
        #   Required. Label on which Locks are applied. Format: labels/`label`
        # @param [Fixnum] page_size
        #   Maximum number of Locks to return per page. Default: 100. Max: 200.
        # @param [String] page_token
        #   The token of the page to return.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DrivelabelsV2::GoogleAppsDriveLabelsV2ListLabelLocksResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DrivelabelsV2::GoogleAppsDriveLabelsV2ListLabelLocksResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_label_locks(parent, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2/{+parent}/locks', options)
          command.response_representation = Google::Apis::DrivelabelsV2::GoogleAppsDriveLabelsV2ListLabelLocksResponse::Representation
          command.response_class = Google::Apis::DrivelabelsV2::GoogleAppsDriveLabelsV2ListLabelLocksResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes Label permissions. Permissions affect the Label resource as a whole,
        # are not revisioned, and do not require publishing.
        # @param [String] parent
        #   Required. The parent Label resource name shared by all permissions being
        #   deleted. Format: labels/`label` If this is set, the parent field in the
        #   UpdateLabelPermissionRequest messages must either be empty or match this field.
        # @param [Google::Apis::DrivelabelsV2::GoogleAppsDriveLabelsV2BatchDeleteLabelPermissionsRequest] google_apps_drive_labels_v2_batch_delete_label_permissions_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DrivelabelsV2::GoogleProtobufEmpty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DrivelabelsV2::GoogleProtobufEmpty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def batch_label_permission_delete(parent, google_apps_drive_labels_v2_batch_delete_label_permissions_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v2/{+parent}/permissions:batchDelete', options)
          command.request_representation = Google::Apis::DrivelabelsV2::GoogleAppsDriveLabelsV2BatchDeleteLabelPermissionsRequest::Representation
          command.request_object = google_apps_drive_labels_v2_batch_delete_label_permissions_request_object
          command.response_representation = Google::Apis::DrivelabelsV2::GoogleProtobufEmpty::Representation
          command.response_class = Google::Apis::DrivelabelsV2::GoogleProtobufEmpty
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates Label permissions. If a permission for the indicated principal doesn't
        # exist, a new Label Permission is created, otherwise the existing permission is
        # updated. Permissions affect the Label resource as a whole, are not revisioned,
        # and do not require publishing.
        # @param [String] parent
        #   Required. The parent Label resource name shared by all permissions being
        #   updated. Format: labels/`label` If this is set, the parent field in the
        #   UpdateLabelPermissionRequest messages must either be empty or match this field.
        # @param [Google::Apis::DrivelabelsV2::GoogleAppsDriveLabelsV2BatchUpdateLabelPermissionsRequest] google_apps_drive_labels_v2_batch_update_label_permissions_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DrivelabelsV2::GoogleAppsDriveLabelsV2BatchUpdateLabelPermissionsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DrivelabelsV2::GoogleAppsDriveLabelsV2BatchUpdateLabelPermissionsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def batch_label_permission_update(parent, google_apps_drive_labels_v2_batch_update_label_permissions_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v2/{+parent}/permissions:batchUpdate', options)
          command.request_representation = Google::Apis::DrivelabelsV2::GoogleAppsDriveLabelsV2BatchUpdateLabelPermissionsRequest::Representation
          command.request_object = google_apps_drive_labels_v2_batch_update_label_permissions_request_object
          command.response_representation = Google::Apis::DrivelabelsV2::GoogleAppsDriveLabelsV2BatchUpdateLabelPermissionsResponse::Representation
          command.response_class = Google::Apis::DrivelabelsV2::GoogleAppsDriveLabelsV2BatchUpdateLabelPermissionsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates a Label's permissions. If a permission for the indicated principal
        # doesn't exist, a new Label Permission is created, otherwise the existing
        # permission is updated. Permissions affect the Label resource as a whole, are
        # not revisioned, and do not require publishing.
        # @param [String] parent
        #   Required. The parent Label resource name on the Label Permission is created.
        #   Format: labels/`label`
        # @param [Google::Apis::DrivelabelsV2::GoogleAppsDriveLabelsV2LabelPermission] google_apps_drive_labels_v2_label_permission_object
        # @param [Boolean] use_admin_access
        #   Set to `true` in order to use the user's admin credentials. The server will
        #   verify the user is an admin for the Label before allowing access.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DrivelabelsV2::GoogleAppsDriveLabelsV2LabelPermission] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DrivelabelsV2::GoogleAppsDriveLabelsV2LabelPermission]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_label_permission(parent, google_apps_drive_labels_v2_label_permission_object = nil, use_admin_access: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v2/{+parent}/permissions', options)
          command.request_representation = Google::Apis::DrivelabelsV2::GoogleAppsDriveLabelsV2LabelPermission::Representation
          command.request_object = google_apps_drive_labels_v2_label_permission_object
          command.response_representation = Google::Apis::DrivelabelsV2::GoogleAppsDriveLabelsV2LabelPermission::Representation
          command.response_class = Google::Apis::DrivelabelsV2::GoogleAppsDriveLabelsV2LabelPermission
          command.params['parent'] = parent unless parent.nil?
          command.query['useAdminAccess'] = use_admin_access unless use_admin_access.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes a Label's permission. Permissions affect the Label resource as a whole,
        # are not revisioned, and do not require publishing.
        # @param [String] name
        #   Required. Label Permission resource name.
        # @param [Boolean] use_admin_access
        #   Set to `true` in order to use the user's admin credentials. The server will
        #   verify the user is an admin for the Label before allowing access.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DrivelabelsV2::GoogleProtobufEmpty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DrivelabelsV2::GoogleProtobufEmpty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_label_permission(name, use_admin_access: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v2/{+name}', options)
          command.response_representation = Google::Apis::DrivelabelsV2::GoogleProtobufEmpty::Representation
          command.response_class = Google::Apis::DrivelabelsV2::GoogleProtobufEmpty
          command.params['name'] = name unless name.nil?
          command.query['useAdminAccess'] = use_admin_access unless use_admin_access.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists a Label's permissions.
        # @param [String] parent
        #   Required. The parent Label resource name on which Label Permission are listed.
        #   Format: labels/`label`
        # @param [Fixnum] page_size
        #   Maximum number of permissions to return per page. Default: 50. Max: 200.
        # @param [String] page_token
        #   The token of the page to return.
        # @param [Boolean] use_admin_access
        #   Set to `true` in order to use the user's admin credentials. The server will
        #   verify the user is an admin for the Label before allowing access.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DrivelabelsV2::GoogleAppsDriveLabelsV2ListLabelPermissionsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DrivelabelsV2::GoogleAppsDriveLabelsV2ListLabelPermissionsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_label_permissions(parent, page_size: nil, page_token: nil, use_admin_access: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2/{+parent}/permissions', options)
          command.response_representation = Google::Apis::DrivelabelsV2::GoogleAppsDriveLabelsV2ListLabelPermissionsResponse::Representation
          command.response_class = Google::Apis::DrivelabelsV2::GoogleAppsDriveLabelsV2ListLabelPermissionsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['useAdminAccess'] = use_admin_access unless use_admin_access.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates a Label's permissions. If a permission for the indicated principal
        # doesn't exist, a new Label Permission is created, otherwise the existing
        # permission is updated. Permissions affect the Label resource as a whole, are
        # not revisioned, and do not require publishing.
        # @param [String] parent
        #   Required. The parent Label resource name.
        # @param [Google::Apis::DrivelabelsV2::GoogleAppsDriveLabelsV2LabelPermission] google_apps_drive_labels_v2_label_permission_object
        # @param [Boolean] use_admin_access
        #   Set to `true` in order to use the user's admin credentials. The server will
        #   verify the user is an admin for the Label before allowing access.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DrivelabelsV2::GoogleAppsDriveLabelsV2LabelPermission] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DrivelabelsV2::GoogleAppsDriveLabelsV2LabelPermission]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def update_label_revision_permissions(parent, google_apps_drive_labels_v2_label_permission_object = nil, use_admin_access: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v2/{+parent}/permissions', options)
          command.request_representation = Google::Apis::DrivelabelsV2::GoogleAppsDriveLabelsV2LabelPermission::Representation
          command.request_object = google_apps_drive_labels_v2_label_permission_object
          command.response_representation = Google::Apis::DrivelabelsV2::GoogleAppsDriveLabelsV2LabelPermission::Representation
          command.response_class = Google::Apis::DrivelabelsV2::GoogleAppsDriveLabelsV2LabelPermission
          command.params['parent'] = parent unless parent.nil?
          command.query['useAdminAccess'] = use_admin_access unless use_admin_access.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists the LabelLocks on a Label.
        # @param [String] parent
        #   Required. Label on which Locks are applied. Format: labels/`label`
        # @param [Fixnum] page_size
        #   Maximum number of Locks to return per page. Default: 100. Max: 200.
        # @param [String] page_token
        #   The token of the page to return.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DrivelabelsV2::GoogleAppsDriveLabelsV2ListLabelLocksResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DrivelabelsV2::GoogleAppsDriveLabelsV2ListLabelLocksResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_label_revision_locks(parent, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2/{+parent}/locks', options)
          command.response_representation = Google::Apis::DrivelabelsV2::GoogleAppsDriveLabelsV2ListLabelLocksResponse::Representation
          command.response_class = Google::Apis::DrivelabelsV2::GoogleAppsDriveLabelsV2ListLabelLocksResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes Label permissions. Permissions affect the Label resource as a whole,
        # are not revisioned, and do not require publishing.
        # @param [String] parent
        #   Required. The parent Label resource name shared by all permissions being
        #   deleted. Format: labels/`label` If this is set, the parent field in the
        #   UpdateLabelPermissionRequest messages must either be empty or match this field.
        # @param [Google::Apis::DrivelabelsV2::GoogleAppsDriveLabelsV2BatchDeleteLabelPermissionsRequest] google_apps_drive_labels_v2_batch_delete_label_permissions_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DrivelabelsV2::GoogleProtobufEmpty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DrivelabelsV2::GoogleProtobufEmpty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def batch_label_revision_permission_delete(parent, google_apps_drive_labels_v2_batch_delete_label_permissions_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v2/{+parent}/permissions:batchDelete', options)
          command.request_representation = Google::Apis::DrivelabelsV2::GoogleAppsDriveLabelsV2BatchDeleteLabelPermissionsRequest::Representation
          command.request_object = google_apps_drive_labels_v2_batch_delete_label_permissions_request_object
          command.response_representation = Google::Apis::DrivelabelsV2::GoogleProtobufEmpty::Representation
          command.response_class = Google::Apis::DrivelabelsV2::GoogleProtobufEmpty
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates Label permissions. If a permission for the indicated principal doesn't
        # exist, a new Label Permission is created, otherwise the existing permission is
        # updated. Permissions affect the Label resource as a whole, are not revisioned,
        # and do not require publishing.
        # @param [String] parent
        #   Required. The parent Label resource name shared by all permissions being
        #   updated. Format: labels/`label` If this is set, the parent field in the
        #   UpdateLabelPermissionRequest messages must either be empty or match this field.
        # @param [Google::Apis::DrivelabelsV2::GoogleAppsDriveLabelsV2BatchUpdateLabelPermissionsRequest] google_apps_drive_labels_v2_batch_update_label_permissions_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DrivelabelsV2::GoogleAppsDriveLabelsV2BatchUpdateLabelPermissionsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DrivelabelsV2::GoogleAppsDriveLabelsV2BatchUpdateLabelPermissionsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def batch_label_revision_permission_update(parent, google_apps_drive_labels_v2_batch_update_label_permissions_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v2/{+parent}/permissions:batchUpdate', options)
          command.request_representation = Google::Apis::DrivelabelsV2::GoogleAppsDriveLabelsV2BatchUpdateLabelPermissionsRequest::Representation
          command.request_object = google_apps_drive_labels_v2_batch_update_label_permissions_request_object
          command.response_representation = Google::Apis::DrivelabelsV2::GoogleAppsDriveLabelsV2BatchUpdateLabelPermissionsResponse::Representation
          command.response_class = Google::Apis::DrivelabelsV2::GoogleAppsDriveLabelsV2BatchUpdateLabelPermissionsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates a Label's permissions. If a permission for the indicated principal
        # doesn't exist, a new Label Permission is created, otherwise the existing
        # permission is updated. Permissions affect the Label resource as a whole, are
        # not revisioned, and do not require publishing.
        # @param [String] parent
        #   Required. The parent Label resource name on the Label Permission is created.
        #   Format: labels/`label`
        # @param [Google::Apis::DrivelabelsV2::GoogleAppsDriveLabelsV2LabelPermission] google_apps_drive_labels_v2_label_permission_object
        # @param [Boolean] use_admin_access
        #   Set to `true` in order to use the user's admin credentials. The server will
        #   verify the user is an admin for the Label before allowing access.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DrivelabelsV2::GoogleAppsDriveLabelsV2LabelPermission] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DrivelabelsV2::GoogleAppsDriveLabelsV2LabelPermission]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_label_revision_permission(parent, google_apps_drive_labels_v2_label_permission_object = nil, use_admin_access: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v2/{+parent}/permissions', options)
          command.request_representation = Google::Apis::DrivelabelsV2::GoogleAppsDriveLabelsV2LabelPermission::Representation
          command.request_object = google_apps_drive_labels_v2_label_permission_object
          command.response_representation = Google::Apis::DrivelabelsV2::GoogleAppsDriveLabelsV2LabelPermission::Representation
          command.response_class = Google::Apis::DrivelabelsV2::GoogleAppsDriveLabelsV2LabelPermission
          command.params['parent'] = parent unless parent.nil?
          command.query['useAdminAccess'] = use_admin_access unless use_admin_access.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes a Label's permission. Permissions affect the Label resource as a whole,
        # are not revisioned, and do not require publishing.
        # @param [String] name
        #   Required. Label Permission resource name.
        # @param [Boolean] use_admin_access
        #   Set to `true` in order to use the user's admin credentials. The server will
        #   verify the user is an admin for the Label before allowing access.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DrivelabelsV2::GoogleProtobufEmpty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DrivelabelsV2::GoogleProtobufEmpty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_label_revision_permission(name, use_admin_access: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v2/{+name}', options)
          command.response_representation = Google::Apis::DrivelabelsV2::GoogleProtobufEmpty::Representation
          command.response_class = Google::Apis::DrivelabelsV2::GoogleProtobufEmpty
          command.params['name'] = name unless name.nil?
          command.query['useAdminAccess'] = use_admin_access unless use_admin_access.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists a Label's permissions.
        # @param [String] parent
        #   Required. The parent Label resource name on which Label Permission are listed.
        #   Format: labels/`label`
        # @param [Fixnum] page_size
        #   Maximum number of permissions to return per page. Default: 50. Max: 200.
        # @param [String] page_token
        #   The token of the page to return.
        # @param [Boolean] use_admin_access
        #   Set to `true` in order to use the user's admin credentials. The server will
        #   verify the user is an admin for the Label before allowing access.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DrivelabelsV2::GoogleAppsDriveLabelsV2ListLabelPermissionsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DrivelabelsV2::GoogleAppsDriveLabelsV2ListLabelPermissionsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_label_revision_permissions(parent, page_size: nil, page_token: nil, use_admin_access: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2/{+parent}/permissions', options)
          command.response_representation = Google::Apis::DrivelabelsV2::GoogleAppsDriveLabelsV2ListLabelPermissionsResponse::Representation
          command.response_class = Google::Apis::DrivelabelsV2::GoogleAppsDriveLabelsV2ListLabelPermissionsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['useAdminAccess'] = use_admin_access unless use_admin_access.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Get the constraints on the structure of a Label; such as, the maximum number
        # of Fields allowed and maximum length of the label title.
        # @param [String] name
        #   Required. Label revision resource name Must be: "limits/label"
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DrivelabelsV2::GoogleAppsDriveLabelsV2LabelLimits] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DrivelabelsV2::GoogleAppsDriveLabelsV2LabelLimits]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_limit_label(name: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2/limits/label', options)
          command.response_representation = Google::Apis::DrivelabelsV2::GoogleAppsDriveLabelsV2LabelLimits::Representation
          command.response_class = Google::Apis::DrivelabelsV2::GoogleAppsDriveLabelsV2LabelLimits
          command.query['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets the user capabilities.
        # @param [String] name
        #   Required. The resource name of the user. Only "users/me/capabilities" is
        #   supported.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DrivelabelsV2::GoogleAppsDriveLabelsV2UserCapabilities] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DrivelabelsV2::GoogleAppsDriveLabelsV2UserCapabilities]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_user_capabilities(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2/{+name}', options)
          command.response_representation = Google::Apis::DrivelabelsV2::GoogleAppsDriveLabelsV2UserCapabilities::Representation
          command.response_class = Google::Apis::DrivelabelsV2::GoogleAppsDriveLabelsV2UserCapabilities
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
