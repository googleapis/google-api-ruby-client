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
    module CloudassetV1p7beta1
      # Cloud Asset API
      #
      # The cloud asset API manages the history and inventory of cloud resources.
      #
      # @example
      #    require 'google/apis/cloudasset_v1p7beta1'
      #
      #    Cloudasset = Google::Apis::CloudassetV1p7beta1 # Alias the module
      #    service = Cloudasset::CloudAssetService.new
      #
      # @see https://cloud.google.com/asset-inventory/docs/quickstart
      class CloudAssetService < Google::Apis::Core::BaseService
        # @return [String]
        #  API key. Your API key identifies your project and provides you with API access,
        #  quota, and reports. Required unless you provide an OAuth 2.0 token.
        attr_accessor :key

        # @return [String]
        #  Available to use for quota purposes for server-side applications. Can be any
        #  arbitrary string assigned to a user, but should not exceed 40 characters.
        attr_accessor :quota_user

        def initialize
          super('https://cloudasset.googleapis.com/', '',
                client_name: 'google-apis-cloudasset_v1p7beta1',
                client_version: Google::Apis::CloudassetV1p7beta1::GEM_VERSION)
          @batch_path = 'batch'
        end
        
        # Lists asset updates within a time window and returns paged results in response.
        # @param [String] parent
        #   Required. Name of the organization or project the assets belong to. Format: "
        #   organizations/[organization-number]" (such as "organizations/123"), "projects/[
        #   project-number]" (such as "projects/my-project-id"), or "projects/[project-id]"
        #   (such as "projects/12345").
        # @param [Array<String>, String] asset_names
        #   A list of the full names of the assets to list the updates for. See: https://
        #   cloud.google.com/asset-inventory/docs/resource-name-format Example: `//compute.
        #   googleapis.com/projects/my_project_123/zones/zone1/instances/instance1`. If
        #   specified, only assets in the list will be returned. At most one of
        #   asset_types and asset_names should be specified. If neither is specified, all
        #   assets under the parent will be returned.
        # @param [Array<String>, String] asset_types
        #   A list of asset types to list the updates for. For example: "compute.
        #   googleapis.com/Disk". Regular expression is also supported. For example: * "
        #   compute.googleapis.com.*" snapshots resources whose asset type starts with "
        #   compute.googleapis.com". * ".*Instance" snapshots resources whose asset type
        #   ends with "Instance". * ".*Instance.*" snapshots resources whose asset type
        #   contains "Instance". See [RE2](https://github.com/google/re2/wiki/Syntax) for
        #   all supported regular expression syntax. If the regular expression does not
        #   match any supported asset type, an INVALID_ARGUMENT error will be returned. If
        #   specified, only matching assets will be returned. At most one of asset_types
        #   and asset_names should be specified. If neither is specified, all assets under
        #   the parent will be returned.
        # @param [String] content_type
        #   Asset content type. If not specified, no content but the asset name will be
        #   returned.
        # @param [Fixnum] page_size
        #   The maximum number of assets to be returned in a single response. Default is
        #   100, minimum is 1, and maximum is 1000.
        # @param [String] page_token
        #   The `next_page_token` returned from the previous `ListAssetsResponse`, or
        #   unspecified for the first `ListAssetsRequest`. It is a continuation of a prior
        #   `ListAssets` call, and the API should return the next page of assets.
        # @param [String] update_time_window_time_window_end_time
        #   End time of the time window (inclusive). If not specified, the current
        #   timestamp is used instead.
        # @param [String] update_time_window_time_window_start_time
        #   Start time of the time window (exclusive).
        # @param [String] update_time_window_type
        #   The type of the time in time_window.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::CloudassetV1p7beta1::ListAssetUpdatesResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::CloudassetV1p7beta1::ListAssetUpdatesResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_asset_updates(parent, asset_names: nil, asset_types: nil, content_type: nil, page_size: nil, page_token: nil, update_time_window_time_window_end_time: nil, update_time_window_time_window_start_time: nil, update_time_window_type: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1p7beta1/{+parent}/assetUpdates', options)
          command.response_representation = Google::Apis::CloudassetV1p7beta1::ListAssetUpdatesResponse::Representation
          command.response_class = Google::Apis::CloudassetV1p7beta1::ListAssetUpdatesResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['assetNames'] = asset_names unless asset_names.nil?
          command.query['assetTypes'] = asset_types unless asset_types.nil?
          command.query['contentType'] = content_type unless content_type.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['updateTimeWindow.timeWindow.endTime'] = update_time_window_time_window_end_time unless update_time_window_time_window_end_time.nil?
          command.query['updateTimeWindow.timeWindow.startTime'] = update_time_window_time_window_start_time unless update_time_window_time_window_start_time.nil?
          command.query['updateTimeWindow.type'] = update_time_window_type unless update_time_window_type.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets details about an inventory setting.
        # @param [String] name
        #   Required. The name of the [InventorySettings] which has the format of:
        #   projects/`PROJECT_NUMBER`/inventorySettings folders/`FOLDER_NUMBER`/
        #   inventorySettings organizations/`ORGANIZATION_NUMBER`/inventorySettings
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::CloudassetV1p7beta1::InventorySettings] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::CloudassetV1p7beta1::InventorySettings]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_folder_inventory_settings(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1p7beta1/{+name}', options)
          command.response_representation = Google::Apis::CloudassetV1p7beta1::InventorySettings::Representation
          command.response_class = Google::Apis::CloudassetV1p7beta1::InventorySettings
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates an export setting.
        # @param [String] parent
        #   Required. Name of the inventory settings where this export setting should be
        #   created in. The format will be: projects/`PROJECT_NUMBER`/inventorySettings
        #   folders/`FOLDER_NUMBER`/inventorySettings organizations/`ORGANIZATION_NUMBER`/
        #   inventorySettings Currently a maximum of 100 export setting can be created
        #   under each [InventorySettings].
        # @param [Google::Apis::CloudassetV1p7beta1::CreateExportSettingRequest] create_export_setting_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::CloudassetV1p7beta1::ExportSetting] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::CloudassetV1p7beta1::ExportSetting]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_folder_inventory_setting_export_setting(parent, create_export_setting_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1p7beta1/{+parent}/exportSettings', options)
          command.request_representation = Google::Apis::CloudassetV1p7beta1::CreateExportSettingRequest::Representation
          command.request_object = create_export_setting_request_object
          command.response_representation = Google::Apis::CloudassetV1p7beta1::ExportSetting::Representation
          command.response_class = Google::Apis::CloudassetV1p7beta1::ExportSetting
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes an export setting.
        # @param [String] name
        #   Required. The name of the export setting and it must be in the format of:
        #   projects/`PROJECT_NUMBER`/inventorySettings/exportSettings/`EXPORT_SETTING_ID`
        #   folders/`FOLDER_NUMBER`/inventorySettings/exportSettings/`EXPORT_SETTING_ID`
        #   organizations/`ORGANIZATION_NUMBER`/inventorySettings/exportSettings/`
        #   EXPORT_SETTING_ID`
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::CloudassetV1p7beta1::Empty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::CloudassetV1p7beta1::Empty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_folder_inventory_setting_export_setting(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1p7beta1/{+name}', options)
          command.response_representation = Google::Apis::CloudassetV1p7beta1::Empty::Representation
          command.response_class = Google::Apis::CloudassetV1p7beta1::Empty
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets details about an export setting.
        # @param [String] name
        #   Required. The name of the [ExportSetting] and it must be in the format of:
        #   projects/`PROJECT_NUMBER`/inventorySettings/exportSettings/`EXPORT_SETTING_ID`
        #   folders/`FOLDER_NUMBER`/inventorySettings/exportSettings/`EXPORT_SETTING_ID`
        #   organizations/`ORGANIZATION_NUMBER`/inventorySettings/exportSettings/`
        #   EXPORT_SETTING_ID`
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::CloudassetV1p7beta1::ExportSetting] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::CloudassetV1p7beta1::ExportSetting]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_folder_inventory_setting_export_setting(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1p7beta1/{+name}', options)
          command.response_representation = Google::Apis::CloudassetV1p7beta1::ExportSetting::Representation
          command.response_class = Google::Apis::CloudassetV1p7beta1::ExportSetting
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists all export settings under a [InventorySettings].
        # @param [String] parent
        #   Required. The parent [InventorySettings] whose export settings are to be
        #   listed.
        # @param [Fixnum] page_size
        #   The maximum number of export settings to return. The service may return fewer
        #   than this value. If unspecified, at most 100 export settings will be returned.
        #   The maximum value is 100, as currently only a maximum of 100 export settings
        #   can be created under each parent.
        # @param [String] page_token
        #   A page token, received from a previous `ListExportSettings` call. Provide this
        #   to retrieve the subsequent page. When paginating, all other parameters
        #   provided to `ListExportSettings` must match the call that provided the page
        #   token.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::CloudassetV1p7beta1::ListExportSettingsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::CloudassetV1p7beta1::ListExportSettingsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_folder_inventory_setting_export_settings(parent, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1p7beta1/{+parent}/exportSettings', options)
          command.response_representation = Google::Apis::CloudassetV1p7beta1::ListExportSettingsResponse::Representation
          command.response_class = Google::Apis::CloudassetV1p7beta1::ListExportSettingsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates an export setting.
        # @param [String] name
        #   The format will be: organizations/`ORGANIZATION_NUMBER`/inventorySettings/
        #   exportSettings/`exportSetting` or folders/`FOLDER_NUMBER`/inventorySettings/
        #   exportSettings/`exportSetting` or projects/`PROJECT_NUMBER`/inventorySettings/
        #   exportSettings/`exportSetting`
        # @param [Google::Apis::CloudassetV1p7beta1::ExportSetting] export_setting_object
        # @param [String] update_mask
        #   Required. Only updates the `export_setting` fields indicated by this mask. The
        #   field mask must not be empty, and it must not contain fields that are
        #   immutable or only set by the server.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::CloudassetV1p7beta1::ExportSetting] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::CloudassetV1p7beta1::ExportSetting]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_folder_inventory_setting_export_setting(name, export_setting_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v1p7beta1/{+name}', options)
          command.request_representation = Google::Apis::CloudassetV1p7beta1::ExportSetting::Representation
          command.request_object = export_setting_object
          command.response_representation = Google::Apis::CloudassetV1p7beta1::ExportSetting::Representation
          command.response_class = Google::Apis::CloudassetV1p7beta1::ExportSetting
          command.params['name'] = name unless name.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets details about an inventory setting.
        # @param [String] name
        #   Required. The name of the [InventorySettings] which has the format of:
        #   projects/`PROJECT_NUMBER`/inventorySettings folders/`FOLDER_NUMBER`/
        #   inventorySettings organizations/`ORGANIZATION_NUMBER`/inventorySettings
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::CloudassetV1p7beta1::InventorySettings] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::CloudassetV1p7beta1::InventorySettings]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_organization_inventory_settings(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1p7beta1/{+name}', options)
          command.response_representation = Google::Apis::CloudassetV1p7beta1::InventorySettings::Representation
          command.response_class = Google::Apis::CloudassetV1p7beta1::InventorySettings
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates an export setting.
        # @param [String] parent
        #   Required. Name of the inventory settings where this export setting should be
        #   created in. The format will be: projects/`PROJECT_NUMBER`/inventorySettings
        #   folders/`FOLDER_NUMBER`/inventorySettings organizations/`ORGANIZATION_NUMBER`/
        #   inventorySettings Currently a maximum of 100 export setting can be created
        #   under each [InventorySettings].
        # @param [Google::Apis::CloudassetV1p7beta1::CreateExportSettingRequest] create_export_setting_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::CloudassetV1p7beta1::ExportSetting] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::CloudassetV1p7beta1::ExportSetting]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_organization_inventory_setting_export_setting(parent, create_export_setting_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1p7beta1/{+parent}/exportSettings', options)
          command.request_representation = Google::Apis::CloudassetV1p7beta1::CreateExportSettingRequest::Representation
          command.request_object = create_export_setting_request_object
          command.response_representation = Google::Apis::CloudassetV1p7beta1::ExportSetting::Representation
          command.response_class = Google::Apis::CloudassetV1p7beta1::ExportSetting
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes an export setting.
        # @param [String] name
        #   Required. The name of the export setting and it must be in the format of:
        #   projects/`PROJECT_NUMBER`/inventorySettings/exportSettings/`EXPORT_SETTING_ID`
        #   folders/`FOLDER_NUMBER`/inventorySettings/exportSettings/`EXPORT_SETTING_ID`
        #   organizations/`ORGANIZATION_NUMBER`/inventorySettings/exportSettings/`
        #   EXPORT_SETTING_ID`
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::CloudassetV1p7beta1::Empty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::CloudassetV1p7beta1::Empty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_organization_inventory_setting_export_setting(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1p7beta1/{+name}', options)
          command.response_representation = Google::Apis::CloudassetV1p7beta1::Empty::Representation
          command.response_class = Google::Apis::CloudassetV1p7beta1::Empty
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets details about an export setting.
        # @param [String] name
        #   Required. The name of the [ExportSetting] and it must be in the format of:
        #   projects/`PROJECT_NUMBER`/inventorySettings/exportSettings/`EXPORT_SETTING_ID`
        #   folders/`FOLDER_NUMBER`/inventorySettings/exportSettings/`EXPORT_SETTING_ID`
        #   organizations/`ORGANIZATION_NUMBER`/inventorySettings/exportSettings/`
        #   EXPORT_SETTING_ID`
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::CloudassetV1p7beta1::ExportSetting] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::CloudassetV1p7beta1::ExportSetting]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_organization_inventory_setting_export_setting(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1p7beta1/{+name}', options)
          command.response_representation = Google::Apis::CloudassetV1p7beta1::ExportSetting::Representation
          command.response_class = Google::Apis::CloudassetV1p7beta1::ExportSetting
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists all export settings under a [InventorySettings].
        # @param [String] parent
        #   Required. The parent [InventorySettings] whose export settings are to be
        #   listed.
        # @param [Fixnum] page_size
        #   The maximum number of export settings to return. The service may return fewer
        #   than this value. If unspecified, at most 100 export settings will be returned.
        #   The maximum value is 100, as currently only a maximum of 100 export settings
        #   can be created under each parent.
        # @param [String] page_token
        #   A page token, received from a previous `ListExportSettings` call. Provide this
        #   to retrieve the subsequent page. When paginating, all other parameters
        #   provided to `ListExportSettings` must match the call that provided the page
        #   token.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::CloudassetV1p7beta1::ListExportSettingsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::CloudassetV1p7beta1::ListExportSettingsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_organization_inventory_setting_export_settings(parent, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1p7beta1/{+parent}/exportSettings', options)
          command.response_representation = Google::Apis::CloudassetV1p7beta1::ListExportSettingsResponse::Representation
          command.response_class = Google::Apis::CloudassetV1p7beta1::ListExportSettingsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates an export setting.
        # @param [String] name
        #   The format will be: organizations/`ORGANIZATION_NUMBER`/inventorySettings/
        #   exportSettings/`exportSetting` or folders/`FOLDER_NUMBER`/inventorySettings/
        #   exportSettings/`exportSetting` or projects/`PROJECT_NUMBER`/inventorySettings/
        #   exportSettings/`exportSetting`
        # @param [Google::Apis::CloudassetV1p7beta1::ExportSetting] export_setting_object
        # @param [String] update_mask
        #   Required. Only updates the `export_setting` fields indicated by this mask. The
        #   field mask must not be empty, and it must not contain fields that are
        #   immutable or only set by the server.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::CloudassetV1p7beta1::ExportSetting] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::CloudassetV1p7beta1::ExportSetting]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_organization_inventory_setting_export_setting(name, export_setting_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v1p7beta1/{+name}', options)
          command.request_representation = Google::Apis::CloudassetV1p7beta1::ExportSetting::Representation
          command.request_object = export_setting_object
          command.response_representation = Google::Apis::CloudassetV1p7beta1::ExportSetting::Representation
          command.response_class = Google::Apis::CloudassetV1p7beta1::ExportSetting
          command.params['name'] = name unless name.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets details about an inventory setting.
        # @param [String] name
        #   Required. The name of the [InventorySettings] which has the format of:
        #   projects/`PROJECT_NUMBER`/inventorySettings folders/`FOLDER_NUMBER`/
        #   inventorySettings organizations/`ORGANIZATION_NUMBER`/inventorySettings
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::CloudassetV1p7beta1::InventorySettings] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::CloudassetV1p7beta1::InventorySettings]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_inventory_settings(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1p7beta1/{+name}', options)
          command.response_representation = Google::Apis::CloudassetV1p7beta1::InventorySettings::Representation
          command.response_class = Google::Apis::CloudassetV1p7beta1::InventorySettings
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates an export setting.
        # @param [String] parent
        #   Required. Name of the inventory settings where this export setting should be
        #   created in. The format will be: projects/`PROJECT_NUMBER`/inventorySettings
        #   folders/`FOLDER_NUMBER`/inventorySettings organizations/`ORGANIZATION_NUMBER`/
        #   inventorySettings Currently a maximum of 100 export setting can be created
        #   under each [InventorySettings].
        # @param [Google::Apis::CloudassetV1p7beta1::CreateExportSettingRequest] create_export_setting_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::CloudassetV1p7beta1::ExportSetting] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::CloudassetV1p7beta1::ExportSetting]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_inventory_setting_export_setting(parent, create_export_setting_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1p7beta1/{+parent}/exportSettings', options)
          command.request_representation = Google::Apis::CloudassetV1p7beta1::CreateExportSettingRequest::Representation
          command.request_object = create_export_setting_request_object
          command.response_representation = Google::Apis::CloudassetV1p7beta1::ExportSetting::Representation
          command.response_class = Google::Apis::CloudassetV1p7beta1::ExportSetting
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes an export setting.
        # @param [String] name
        #   Required. The name of the export setting and it must be in the format of:
        #   projects/`PROJECT_NUMBER`/inventorySettings/exportSettings/`EXPORT_SETTING_ID`
        #   folders/`FOLDER_NUMBER`/inventorySettings/exportSettings/`EXPORT_SETTING_ID`
        #   organizations/`ORGANIZATION_NUMBER`/inventorySettings/exportSettings/`
        #   EXPORT_SETTING_ID`
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::CloudassetV1p7beta1::Empty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::CloudassetV1p7beta1::Empty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_inventory_setting_export_setting(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1p7beta1/{+name}', options)
          command.response_representation = Google::Apis::CloudassetV1p7beta1::Empty::Representation
          command.response_class = Google::Apis::CloudassetV1p7beta1::Empty
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets details about an export setting.
        # @param [String] name
        #   Required. The name of the [ExportSetting] and it must be in the format of:
        #   projects/`PROJECT_NUMBER`/inventorySettings/exportSettings/`EXPORT_SETTING_ID`
        #   folders/`FOLDER_NUMBER`/inventorySettings/exportSettings/`EXPORT_SETTING_ID`
        #   organizations/`ORGANIZATION_NUMBER`/inventorySettings/exportSettings/`
        #   EXPORT_SETTING_ID`
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::CloudassetV1p7beta1::ExportSetting] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::CloudassetV1p7beta1::ExportSetting]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_inventory_setting_export_setting(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1p7beta1/{+name}', options)
          command.response_representation = Google::Apis::CloudassetV1p7beta1::ExportSetting::Representation
          command.response_class = Google::Apis::CloudassetV1p7beta1::ExportSetting
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists all export settings under a [InventorySettings].
        # @param [String] parent
        #   Required. The parent [InventorySettings] whose export settings are to be
        #   listed.
        # @param [Fixnum] page_size
        #   The maximum number of export settings to return. The service may return fewer
        #   than this value. If unspecified, at most 100 export settings will be returned.
        #   The maximum value is 100, as currently only a maximum of 100 export settings
        #   can be created under each parent.
        # @param [String] page_token
        #   A page token, received from a previous `ListExportSettings` call. Provide this
        #   to retrieve the subsequent page. When paginating, all other parameters
        #   provided to `ListExportSettings` must match the call that provided the page
        #   token.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::CloudassetV1p7beta1::ListExportSettingsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::CloudassetV1p7beta1::ListExportSettingsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_inventory_setting_export_settings(parent, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1p7beta1/{+parent}/exportSettings', options)
          command.response_representation = Google::Apis::CloudassetV1p7beta1::ListExportSettingsResponse::Representation
          command.response_class = Google::Apis::CloudassetV1p7beta1::ListExportSettingsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates an export setting.
        # @param [String] name
        #   The format will be: organizations/`ORGANIZATION_NUMBER`/inventorySettings/
        #   exportSettings/`exportSetting` or folders/`FOLDER_NUMBER`/inventorySettings/
        #   exportSettings/`exportSetting` or projects/`PROJECT_NUMBER`/inventorySettings/
        #   exportSettings/`exportSetting`
        # @param [Google::Apis::CloudassetV1p7beta1::ExportSetting] export_setting_object
        # @param [String] update_mask
        #   Required. Only updates the `export_setting` fields indicated by this mask. The
        #   field mask must not be empty, and it must not contain fields that are
        #   immutable or only set by the server.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::CloudassetV1p7beta1::ExportSetting] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::CloudassetV1p7beta1::ExportSetting]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_project_inventory_setting_export_setting(name, export_setting_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v1p7beta1/{+name}', options)
          command.request_representation = Google::Apis::CloudassetV1p7beta1::ExportSetting::Representation
          command.request_object = export_setting_object
          command.response_representation = Google::Apis::CloudassetV1p7beta1::ExportSetting::Representation
          command.response_class = Google::Apis::CloudassetV1p7beta1::ExportSetting
          command.params['name'] = name unless name.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Exports asset updates within a time window to a given Cloud Storage location/
        # BigQuery table. For Cloud Storage location destinations, the output format is
        # newline-delimited JSON. Each line represents a google.cloud.asset.v1p7beta1.
        # Asset in the JSON format; for BigQuery table destinations, the output table
        # stores the fields in asset proto as columns. This API implements the google.
        # longrunning.Operation API , which allows you to keep track of the export. We
        # recommend intervals of at least 2 seconds with exponential retry to poll the
        # export operation result. For regular-size resource parent, the export
        # operation usually finishes within 5 minutes.
        # @param [String] parent
        #   Required. The relative name of the root asset. This can only be an
        #   organization number (such as "organizations/123"), a project ID (such as "
        #   projects/my-project-id"), or a project number (such as "projects/12345"), or a
        #   folder number (such as "folders/123").
        # @param [Google::Apis::CloudassetV1p7beta1::ExportAssetUpdatesRequest] export_asset_updates_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::CloudassetV1p7beta1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::CloudassetV1p7beta1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def export_asset_updates(parent, export_asset_updates_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1p7beta1/{+parent}:exportAssetUpdates', options)
          command.request_representation = Google::Apis::CloudassetV1p7beta1::ExportAssetUpdatesRequest::Representation
          command.request_object = export_asset_updates_request_object
          command.response_representation = Google::Apis::CloudassetV1p7beta1::Operation::Representation
          command.response_class = Google::Apis::CloudassetV1p7beta1::Operation
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Exports assets with time and resource types to a given Cloud Storage location/
        # BigQuery table. For Cloud Storage location destinations, the output format is
        # newline-delimited JSON. Each line represents a google.cloud.asset.v1p7beta1.
        # Asset in the JSON format; for BigQuery table destinations, the output table
        # stores the fields in asset proto as columns. This API implements the google.
        # longrunning.Operation API , which allows you to keep track of the export. We
        # recommend intervals of at least 2 seconds with exponential retry to poll the
        # export operation result. For regular-size resource parent, the export
        # operation usually finishes within 5 minutes.
        # @param [String] parent
        #   Required. The relative name of the root asset. This can only be an
        #   organization number (such as "organizations/123"), a project ID (such as "
        #   projects/my-project-id"), or a project number (such as "projects/12345"), or a
        #   folder number (such as "folders/123").
        # @param [Google::Apis::CloudassetV1p7beta1::ExportAssetsRequest] export_assets_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::CloudassetV1p7beta1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::CloudassetV1p7beta1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def export_assets(parent, export_assets_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1p7beta1/{+parent}:exportAssets', options)
          command.request_representation = Google::Apis::CloudassetV1p7beta1::ExportAssetsRequest::Representation
          command.request_object = export_assets_request_object
          command.response_representation = Google::Apis::CloudassetV1p7beta1::Operation::Representation
          command.response_class = Google::Apis::CloudassetV1p7beta1::Operation
          command.params['parent'] = parent unless parent.nil?
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
