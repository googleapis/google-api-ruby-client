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
    module ResourcesettingsV1
      # Resource Settings API
      #
      # The Resource Settings API allows users to control and modify the behavior of
      #  their GCP resources (e.g., VM, firewall, Project, etc.) across the Cloud
      #  Resource Hierarchy.
      #
      # @example
      #    require 'google/apis/resourcesettings_v1'
      #
      #    Resourcesettings = Google::Apis::ResourcesettingsV1 # Alias the module
      #    service = Resourcesettings::ResourceSettingsService.new
      #
      # @see https://cloud.google.com/resource-manager/docs/resource-settings/overview
      class ResourceSettingsService < Google::Apis::Core::BaseService
        DEFAULT_ENDPOINT_TEMPLATE = "https://resourcesettings.$UNIVERSE_DOMAIN$/"

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
                client_name: 'google-apis-resourcesettings_v1',
                client_version: Google::Apis::ResourcesettingsV1::GEM_VERSION)
          @batch_path = 'batch'
        end
        
        # Returns a specified setting. Returns a `google.rpc.Status` with `google.rpc.
        # Code.NOT_FOUND` if the setting does not exist.
        # @param [String] name
        #   Required. The name of the setting to get. See Setting for naming requirements.
        # @param [String] view
        #   The SettingView for this request.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ResourcesettingsV1::GoogleCloudResourcesettingsV1Setting] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ResourcesettingsV1::GoogleCloudResourcesettingsV1Setting]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_folder_setting(name, view: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}', options)
          command.response_representation = Google::Apis::ResourcesettingsV1::GoogleCloudResourcesettingsV1Setting::Representation
          command.response_class = Google::Apis::ResourcesettingsV1::GoogleCloudResourcesettingsV1Setting
          command.params['name'] = name unless name.nil?
          command.query['view'] = view unless view.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists all the settings that are available on the Cloud resource `parent`.
        # @param [String] parent
        #   Required. The project, folder, or organization that is the parent resource for
        #   this setting. Must be in one of the following forms: * `projects/`
        #   project_number`` * `projects/`project_id`` * `folders/`folder_id`` * `
        #   organizations/`organization_id``
        # @param [Fixnum] page_size
        #   Unused. The size of the page to be returned.
        # @param [String] page_token
        #   Unused. A page token used to retrieve the next page.
        # @param [String] view
        #   The SettingView for this request.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ResourcesettingsV1::GoogleCloudResourcesettingsV1ListSettingsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ResourcesettingsV1::GoogleCloudResourcesettingsV1ListSettingsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_folder_settings(parent, page_size: nil, page_token: nil, view: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+parent}/settings', options)
          command.response_representation = Google::Apis::ResourcesettingsV1::GoogleCloudResourcesettingsV1ListSettingsResponse::Representation
          command.response_class = Google::Apis::ResourcesettingsV1::GoogleCloudResourcesettingsV1ListSettingsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['view'] = view unless view.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates a specified setting. Returns a `google.rpc.Status` with `google.rpc.
        # Code.NOT_FOUND` if the setting does not exist. Returns a `google.rpc.Status`
        # with `google.rpc.Code.FAILED_PRECONDITION` if the setting is flagged as read
        # only. Returns a `google.rpc.Status` with `google.rpc.Code.ABORTED` if the etag
        # supplied in the request does not match the persisted etag of the setting value.
        # On success, the response will contain only `name`, `local_value` and `etag`.
        # The `metadata` and `effective_value` cannot be updated through this API. Note:
        # the supplied setting will perform a full overwrite of the `local_value` field.
        # @param [String] name
        #   The resource name of the setting. Must be in one of the following forms: * `
        #   projects/`project_number`/settings/`setting_name`` * `folders/`folder_id`/
        #   settings/`setting_name`` * `organizations/`organization_id`/settings/`
        #   setting_name`` For example, "/projects/123/settings/gcp-enableMyFeature"
        # @param [Google::Apis::ResourcesettingsV1::GoogleCloudResourcesettingsV1Setting] google_cloud_resourcesettings_v1_setting_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ResourcesettingsV1::GoogleCloudResourcesettingsV1Setting] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ResourcesettingsV1::GoogleCloudResourcesettingsV1Setting]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_folder_setting(name, google_cloud_resourcesettings_v1_setting_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v1/{+name}', options)
          command.request_representation = Google::Apis::ResourcesettingsV1::GoogleCloudResourcesettingsV1Setting::Representation
          command.request_object = google_cloud_resourcesettings_v1_setting_object
          command.response_representation = Google::Apis::ResourcesettingsV1::GoogleCloudResourcesettingsV1Setting::Representation
          command.response_class = Google::Apis::ResourcesettingsV1::GoogleCloudResourcesettingsV1Setting
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Returns a specified setting. Returns a `google.rpc.Status` with `google.rpc.
        # Code.NOT_FOUND` if the setting does not exist.
        # @param [String] name
        #   Required. The name of the setting to get. See Setting for naming requirements.
        # @param [String] view
        #   The SettingView for this request.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ResourcesettingsV1::GoogleCloudResourcesettingsV1Setting] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ResourcesettingsV1::GoogleCloudResourcesettingsV1Setting]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_organization_setting(name, view: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}', options)
          command.response_representation = Google::Apis::ResourcesettingsV1::GoogleCloudResourcesettingsV1Setting::Representation
          command.response_class = Google::Apis::ResourcesettingsV1::GoogleCloudResourcesettingsV1Setting
          command.params['name'] = name unless name.nil?
          command.query['view'] = view unless view.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists all the settings that are available on the Cloud resource `parent`.
        # @param [String] parent
        #   Required. The project, folder, or organization that is the parent resource for
        #   this setting. Must be in one of the following forms: * `projects/`
        #   project_number`` * `projects/`project_id`` * `folders/`folder_id`` * `
        #   organizations/`organization_id``
        # @param [Fixnum] page_size
        #   Unused. The size of the page to be returned.
        # @param [String] page_token
        #   Unused. A page token used to retrieve the next page.
        # @param [String] view
        #   The SettingView for this request.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ResourcesettingsV1::GoogleCloudResourcesettingsV1ListSettingsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ResourcesettingsV1::GoogleCloudResourcesettingsV1ListSettingsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_organization_settings(parent, page_size: nil, page_token: nil, view: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+parent}/settings', options)
          command.response_representation = Google::Apis::ResourcesettingsV1::GoogleCloudResourcesettingsV1ListSettingsResponse::Representation
          command.response_class = Google::Apis::ResourcesettingsV1::GoogleCloudResourcesettingsV1ListSettingsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['view'] = view unless view.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates a specified setting. Returns a `google.rpc.Status` with `google.rpc.
        # Code.NOT_FOUND` if the setting does not exist. Returns a `google.rpc.Status`
        # with `google.rpc.Code.FAILED_PRECONDITION` if the setting is flagged as read
        # only. Returns a `google.rpc.Status` with `google.rpc.Code.ABORTED` if the etag
        # supplied in the request does not match the persisted etag of the setting value.
        # On success, the response will contain only `name`, `local_value` and `etag`.
        # The `metadata` and `effective_value` cannot be updated through this API. Note:
        # the supplied setting will perform a full overwrite of the `local_value` field.
        # @param [String] name
        #   The resource name of the setting. Must be in one of the following forms: * `
        #   projects/`project_number`/settings/`setting_name`` * `folders/`folder_id`/
        #   settings/`setting_name`` * `organizations/`organization_id`/settings/`
        #   setting_name`` For example, "/projects/123/settings/gcp-enableMyFeature"
        # @param [Google::Apis::ResourcesettingsV1::GoogleCloudResourcesettingsV1Setting] google_cloud_resourcesettings_v1_setting_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ResourcesettingsV1::GoogleCloudResourcesettingsV1Setting] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ResourcesettingsV1::GoogleCloudResourcesettingsV1Setting]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_organization_setting(name, google_cloud_resourcesettings_v1_setting_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v1/{+name}', options)
          command.request_representation = Google::Apis::ResourcesettingsV1::GoogleCloudResourcesettingsV1Setting::Representation
          command.request_object = google_cloud_resourcesettings_v1_setting_object
          command.response_representation = Google::Apis::ResourcesettingsV1::GoogleCloudResourcesettingsV1Setting::Representation
          command.response_class = Google::Apis::ResourcesettingsV1::GoogleCloudResourcesettingsV1Setting
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Returns a specified setting. Returns a `google.rpc.Status` with `google.rpc.
        # Code.NOT_FOUND` if the setting does not exist.
        # @param [String] name
        #   Required. The name of the setting to get. See Setting for naming requirements.
        # @param [String] view
        #   The SettingView for this request.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ResourcesettingsV1::GoogleCloudResourcesettingsV1Setting] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ResourcesettingsV1::GoogleCloudResourcesettingsV1Setting]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_setting(name, view: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}', options)
          command.response_representation = Google::Apis::ResourcesettingsV1::GoogleCloudResourcesettingsV1Setting::Representation
          command.response_class = Google::Apis::ResourcesettingsV1::GoogleCloudResourcesettingsV1Setting
          command.params['name'] = name unless name.nil?
          command.query['view'] = view unless view.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists all the settings that are available on the Cloud resource `parent`.
        # @param [String] parent
        #   Required. The project, folder, or organization that is the parent resource for
        #   this setting. Must be in one of the following forms: * `projects/`
        #   project_number`` * `projects/`project_id`` * `folders/`folder_id`` * `
        #   organizations/`organization_id``
        # @param [Fixnum] page_size
        #   Unused. The size of the page to be returned.
        # @param [String] page_token
        #   Unused. A page token used to retrieve the next page.
        # @param [String] view
        #   The SettingView for this request.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ResourcesettingsV1::GoogleCloudResourcesettingsV1ListSettingsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ResourcesettingsV1::GoogleCloudResourcesettingsV1ListSettingsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_settings(parent, page_size: nil, page_token: nil, view: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+parent}/settings', options)
          command.response_representation = Google::Apis::ResourcesettingsV1::GoogleCloudResourcesettingsV1ListSettingsResponse::Representation
          command.response_class = Google::Apis::ResourcesettingsV1::GoogleCloudResourcesettingsV1ListSettingsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['view'] = view unless view.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates a specified setting. Returns a `google.rpc.Status` with `google.rpc.
        # Code.NOT_FOUND` if the setting does not exist. Returns a `google.rpc.Status`
        # with `google.rpc.Code.FAILED_PRECONDITION` if the setting is flagged as read
        # only. Returns a `google.rpc.Status` with `google.rpc.Code.ABORTED` if the etag
        # supplied in the request does not match the persisted etag of the setting value.
        # On success, the response will contain only `name`, `local_value` and `etag`.
        # The `metadata` and `effective_value` cannot be updated through this API. Note:
        # the supplied setting will perform a full overwrite of the `local_value` field.
        # @param [String] name
        #   The resource name of the setting. Must be in one of the following forms: * `
        #   projects/`project_number`/settings/`setting_name`` * `folders/`folder_id`/
        #   settings/`setting_name`` * `organizations/`organization_id`/settings/`
        #   setting_name`` For example, "/projects/123/settings/gcp-enableMyFeature"
        # @param [Google::Apis::ResourcesettingsV1::GoogleCloudResourcesettingsV1Setting] google_cloud_resourcesettings_v1_setting_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ResourcesettingsV1::GoogleCloudResourcesettingsV1Setting] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ResourcesettingsV1::GoogleCloudResourcesettingsV1Setting]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_project_setting(name, google_cloud_resourcesettings_v1_setting_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v1/{+name}', options)
          command.request_representation = Google::Apis::ResourcesettingsV1::GoogleCloudResourcesettingsV1Setting::Representation
          command.request_object = google_cloud_resourcesettings_v1_setting_object
          command.response_representation = Google::Apis::ResourcesettingsV1::GoogleCloudResourcesettingsV1Setting::Representation
          command.response_class = Google::Apis::ResourcesettingsV1::GoogleCloudResourcesettingsV1Setting
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
